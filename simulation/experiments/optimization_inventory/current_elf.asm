
/Users/stpntrsvv/OrangeDCrush20/simulation/experiments/architecture_decision/condensed_release_96.elf:	file format elf32-littlearm

Disassembly of section .text:

00000408 <Reset>:
     408: b5b0         	push	{r4, r5, r7, lr}
     40a: af02         	add	r7, sp, #0x8
     40c: f5ad 6d60    	sub.w	sp, sp, #0xe00
     410: f244 503c    	movw	r0, #0x453c
     414: f241 0304    	movw	r3, #0x1004
     418: f6c5 0002    	movt	r0, #0x5802
     41c: f2ce 0300    	movt	r3, #0xe000
     420: f64f 72fc    	movw	r2, #0xfffc
     424: eefe 9a00    	vmov.f32	s19, #-5.000000e-01
     428: 6801         	ldr	r1, [r0]
     42a: f2c2 0200    	movt	r2, #0x2000
     42e: f441 4180    	orr	r1, r1, #0x4000
     432: 6001         	str	r1, [r0]
     434: f64e 51fc    	movw	r1, #0xedfc
     438: 6800         	ldr	r0, [r0]
     43a: f2ce 0100    	movt	r1, #0xe000
     43e: eef7 fa00    	vmov.f32	s31, #1.000000e+00
     442: eef6 ea00    	vmov.f32	s29, #5.000000e-01
     446: f241 0a00    	movw	r10, #0x1000
     44a: 6808         	ldr	r0, [r1]
     44c: f50d 66fa    	add.w	r6, sp, #0x7d0
     450: f040 7080    	orr	r0, r0, #0x1000000
     454: 6008         	str	r0, [r1]
     456: 2100         	movs	r1, #0x0
     458: 6019         	str	r1, [r3]
     45a: f853 0c04    	ldr	r0, [r3, #-4]
     45e: f24e 0b98    	movw	r11, #0xe098
     462: f040 0001    	orr	r0, r0, #0x1
     466: f843 0c04    	str	r0, [r3, #-4]
     46a: f244 5050    	movw	r0, #0x4550
     46e: f20d 79ac    	addw	r9, sp, #0x7ac
     472: f2c5 3054    	movt	r0, #0x5354
     476: f842 0c0c    	str	r0, [r2, #-12]
     47a: f50d 6089    	add.w	r0, sp, #0x448
     47e: f2c2 0a00    	movt	r10, #0x2000
     482: 6011         	str	r1, [r2]
     484: f100 02e0    	add.w	r2, r0, #0xe0
     488: 9212         	str	r2, [sp, #0x48]
     48a: 1d32         	adds	r2, r6, #0x4
     48c: f8cd 241c    	str.w	r2, [sp, #0x41c]
     490: f60d 32b4    	addw	r2, sp, #0xbb4
     494: eddf dadd    	vldr	s27, [pc, #884]         @ 0x80c <Reset+0x404>
     498: f60d 4828    	addw	r8, sp, #0xc28
     49c: f2c0 0b00    	movt	r11, #0x0
     4a0: 2500         	movs	r5, #0x0
     4a2: f106 0364    	add.w	r3, r6, #0x64
     4a6: 93c4         	str	r3, [sp, #0x310]
     4a8: f102 0327    	add.w	r3, r2, #0x27
     4ac: 9304         	str	r3, [sp, #0x10]
     4ae: f102 0309    	add.w	r3, r2, #0x9
     4b2: 9301         	str	r3, [sp, #0x4]
     4b4: 3224         	adds	r2, #0x24
     4b6: 922b         	str	r2, [sp, #0xac]
     4b8: f108 029c    	add.w	r2, r8, #0x9c
     4bc: 9203         	str	r2, [sp, #0xc]
     4be: f108 0224    	add.w	r2, r8, #0x24
     4c2: 9200         	str	r2, [sp]
     4c4: f108 0290    	add.w	r2, r8, #0x90
     4c8: 922a         	str	r2, [sp, #0xa8]
     4ca: e041         	b	0x550 <Reset+0x148>     @ imm = #0x82
     4cc: bf00         	nop
     4ce: bf00         	nop
     4d0: f241 0a00    	movw	r10, #0x1000
     4d4: f44f 4268    	mov.w	r2, #0xe800
     4d8: f2c2 0a00    	movt	r10, #0x2000
     4dc: 9b56         	ldr	r3, [sp, #0x158]
     4de: eb0a 11c5    	add.w	r1, r10, r5, lsl #7
     4e2: 3501         	adds	r5, #0x1
     4e4: f501 4068    	add.w	r0, r1, #0xe800
     4e8: 2d03         	cmp	r5, #0x3
     4ea: 508b         	str	r3, [r1, r2]
     4ec: 9957         	ldr	r1, [sp, #0x15c]
     4ee: 6041         	str	r1, [r0, #0x4]
     4f0: 995a         	ldr	r1, [sp, #0x168]
     4f2: 6081         	str	r1, [r0, #0x8]
     4f4: 60c4         	str	r4, [r0, #0xc]
     4f6: 995b         	ldr	r1, [sp, #0x16c]
     4f8: 6101         	str	r1, [r0, #0x10]
     4fa: 995c         	ldr	r1, [sp, #0x170]
     4fc: 6141         	str	r1, [r0, #0x14]
     4fe: f04f 0100    	mov.w	r1, #0x0
     502: 6181         	str	r1, [r0, #0x18]
     504: 9a02         	ldr	r2, [sp, #0x8]
     506: 61c2         	str	r2, [r0, #0x1c]
     508: 9a5d         	ldr	r2, [sp, #0x174]
     50a: 6202         	str	r2, [r0, #0x20]
     50c: 9a5e         	ldr	r2, [sp, #0x178]
     50e: 6242         	str	r2, [r0, #0x24]
     510: 9a5f         	ldr	r2, [sp, #0x17c]
     512: 6282         	str	r2, [r0, #0x28]
     514: 62c1         	str	r1, [r0, #0x2c]
     516: 6301         	str	r1, [r0, #0x30]
     518: 6341         	str	r1, [r0, #0x34]
     51a: 6381         	str	r1, [r0, #0x38]
     51c: 63c1         	str	r1, [r0, #0x3c]
     51e: 6401         	str	r1, [r0, #0x40]
     520: 6441         	str	r1, [r0, #0x44]
     522: 9a64         	ldr	r2, [sp, #0x190]
     524: 6482         	str	r2, [r0, #0x48]
     526: 9a63         	ldr	r2, [sp, #0x18c]
     528: 64c2         	str	r2, [r0, #0x4c]
     52a: 9a62         	ldr	r2, [sp, #0x188]
     52c: 6502         	str	r2, [r0, #0x50]
     52e: 9a61         	ldr	r2, [sp, #0x184]
     530: 6542         	str	r2, [r0, #0x54]
     532: 9a60         	ldr	r2, [sp, #0x180]
     534: 6582         	str	r2, [r0, #0x58]
     536: 65c1         	str	r1, [r0, #0x5c]
     538: 6601         	str	r1, [r0, #0x60]
     53a: 6641         	str	r1, [r0, #0x64]
     53c: 6681         	str	r1, [r0, #0x68]
     53e: 9a58         	ldr	r2, [sp, #0x160]
     540: 66c2         	str	r2, [r0, #0x6c]
     542: 9a59         	ldr	r2, [sp, #0x164]
     544: 6702         	str	r2, [r0, #0x70]
     546: 6741         	str	r1, [r0, #0x74]
     548: f50d 6089    	add.w	r0, sp, #0x448
     54c: f007 8098    	beq.w	0x7680 <Reset+0x7278>   @ imm = #0x7130
     550: f8cd 1444    	str.w	r1, [sp, #0x444]
     554: f8cd 1440    	str.w	r1, [sp, #0x440]
     558: f8cd 143c    	str.w	r1, [sp, #0x43c]
     55c: f8cd 1438    	str.w	r1, [sp, #0x438]
     560: f8cd 1434    	str.w	r1, [sp, #0x434]
     564: f8cd 1430    	str.w	r1, [sp, #0x430]
     568: f8cd 142c    	str.w	r1, [sp, #0x42c]
     56c: f44f 71e2    	mov.w	r1, #0x1c4
     570: f00d fab3    	bl	0xdada <__aeabi_memclr4> @ imm = #0xd566
     574: f50d 6e80    	add.w	lr, sp, #0x400
     578: eef0 8a6d    	vmov.f32	s17, s27
     57c: eeb0 ea6d    	vmov.f32	s28, s27
     580: eef0 ba6d    	vmov.f32	s23, s27
     584: edce da0a    	vstr	s27, [lr, #40]
     588: f50d 6e80    	add.w	lr, sp, #0x400
     58c: eef0 aa6d    	vmov.f32	s21, s27
     590: eef0 4a6d    	vmov.f32	s9, s27
     594: edce da09    	vstr	s27, [lr, #36]
     598: f50d 6e80    	add.w	lr, sp, #0x400
     59c: eef0 3a6d    	vmov.f32	s7, s27
     5a0: eef0 2a6d    	vmov.f32	s5, s27
     5a4: edce da08    	vstr	s27, [lr, #32]
     5a8: f50d 6e80    	add.w	lr, sp, #0x400
     5ac: eef0 1a6d    	vmov.f32	s3, s27
     5b0: eef0 0a6d    	vmov.f32	s1, s27
     5b4: edce da06    	vstr	s27, [lr, #24]
     5b8: f50d 6e80    	add.w	lr, sp, #0x400
     5bc: eef0 7a6d    	vmov.f32	s15, s27
     5c0: eeb0 9a6d    	vmov.f32	s18, s27
     5c4: edce da05    	vstr	s27, [lr, #20]
     5c8: f50d 6e80    	add.w	lr, sp, #0x400
     5cc: eeb0 fa6d    	vmov.f32	s30, s27
     5d0: eef0 ca6d    	vmov.f32	s25, s27
     5d4: edce da03    	vstr	s27, [lr, #12]
     5d8: f50d 6e80    	add.w	lr, sp, #0x400
     5dc: eeb0 da6d    	vmov.f32	s26, s27
     5e0: eeb0 ca6d    	vmov.f32	s24, s27
     5e4: eeb0 ba6d    	vmov.f32	s22, s27
     5e8: eeb0 aa6d    	vmov.f32	s20, s27
     5ec: edce da02    	vstr	s27, [lr, #8]
     5f0: f50d 6e80    	add.w	lr, sp, #0x400
     5f4: f04f 0c01    	mov.w	r12, #0x1
     5f8: 2300         	movs	r3, #0x0
     5fa: eb0a 3045    	add.w	r0, r10, r5, lsl #13
     5fe: 904f         	str	r0, [sp, #0x13c]
     600: 2000         	movs	r0, #0x0
     602: 9002         	str	r0, [sp, #0x8]
     604: e9cd 005e    	strd	r0, r0, [sp, #376]
     608: e9cd 005c    	strd	r0, r0, [sp, #368]
     60c: 9064         	str	r0, [sp, #0x190]
     60e: e9cd 0062    	strd	r0, r0, [sp, #392]
     612: e9cd 0060    	strd	r0, r0, [sp, #384]
     616: e9cd 005a    	strd	r0, r0, [sp, #360]
     61a: edcd da6c    	vstr	s27, [sp, #432]
     61e: edcd da6d    	vstr	s27, [sp, #436]
     622: edcd da6e    	vstr	s27, [sp, #440]
     626: edcd da6f    	vstr	s27, [sp, #444]
     62a: edcd da70    	vstr	s27, [sp, #448]
     62e: edcd da71    	vstr	s27, [sp, #452]
     632: edcd da72    	vstr	s27, [sp, #456]
     636: edcd da73    	vstr	s27, [sp, #460]
     63a: edcd da74    	vstr	s27, [sp, #464]
     63e: edcd da75    	vstr	s27, [sp, #468]
     642: edcd da76    	vstr	s27, [sp, #472]
     646: edcd da77    	vstr	s27, [sp, #476]
     64a: edcd da78    	vstr	s27, [sp, #480]
     64e: edcd da79    	vstr	s27, [sp, #484]
     652: edcd da7a    	vstr	s27, [sp, #488]
     656: edcd da7b    	vstr	s27, [sp, #492]
     65a: edcd da7c    	vstr	s27, [sp, #496]
     65e: edcd da7d    	vstr	s27, [sp, #500]
     662: edcd da7e    	vstr	s27, [sp, #504]
     666: edcd da7f    	vstr	s27, [sp, #508]
     66a: edcd da80    	vstr	s27, [sp, #512]
     66e: edcd da81    	vstr	s27, [sp, #516]
     672: edcd da82    	vstr	s27, [sp, #520]
     676: edcd da83    	vstr	s27, [sp, #524]
     67a: edcd da84    	vstr	s27, [sp, #528]
     67e: edcd da85    	vstr	s27, [sp, #532]
     682: edcd da86    	vstr	s27, [sp, #536]
     686: edcd da87    	vstr	s27, [sp, #540]
     68a: edce da00    	vstr	s27, [lr]
     68e: edcd dafe    	vstr	s27, [sp, #1016]
     692: edcd dafd    	vstr	s27, [sp, #1012]
     696: edcd dafa    	vstr	s27, [sp, #1000]
     69a: edcd daf8    	vstr	s27, [sp, #992]
     69e: e9cd 0058    	strd	r0, r0, [sp, #352]
     6a2: e9cd 0056    	strd	r0, r0, [sp, #344]
     6a6: e9cd 004d    	strd	r0, r0, [sp, #308]
     6aa: e9cd 00f6    	strd	r0, r0, [sp, #984]
     6ae: 9550         	str	r5, [sp, #0x140]
     6b0: e068         	b	0x784 <Reset+0x37c>     @ imm = #0xd0
     6b2: bf00         	nop
     6b4: bf00         	nop
     6b6: bf00         	nop
     6b8: f50d 66fa    	add.w	r6, sp, #0x7d0
     6bc: f8dd 4410    	ldr.w	r4, [sp, #0x410]
     6c0: f8dd b3d4    	ldr.w	r11, [sp, #0x3d4]
     6c4: e9dd 8ac7    	ldrd	r8, r10, [sp, #796]
     6c8: 9b4f         	ldr	r3, [sp, #0x13c]
     6ca: ee1e 1a10    	vmov	r1, s28
     6ce: eb03 02c0    	add.w	r2, r3, r0, lsl #3
     6d2: f843 1030    	str.w	r1, [r3, r0, lsl #3]
     6d6: 1c43         	adds	r3, r0, #0x1
     6d8: f8c2 a004    	str.w	r10, [r2, #0x4]
     6dc: f5b3 6f80    	cmp.w	r3, #0x400
     6e0: f88d e7e5    	strb.w	lr, [sp, #0x7e5]
     6e4: f50d 6e80    	add.w	lr, sp, #0x400
     6e8: edc9 aa0c    	vstr	s21, [r9, #48]
     6ec: f8dd 140c    	ldr.w	r1, [sp, #0x40c]
     6f0: ed89 9a0d    	vstr	s18, [r9, #52]
     6f4: eef0 aa67    	vmov.f32	s21, s15
     6f8: ed89 ea09    	vstr	s28, [r9, #36]
     6fc: eef0 7a47    	vmov.f32	s15, s14
     700: f8cd a7d4    	str.w	r10, [sp, #0x7d4]
     704: eeb0 9a46    	vmov.f32	s18, s12
     708: f88d b7d8    	strb.w	r11, [sp, #0x7d8]
     70c: f24e 0b98    	movw	r11, #0xe098
     710: f88d 87d9    	strb.w	r8, [sp, #0x7d9]
     714: f2c0 0b00    	movt	r11, #0x0
     718: f88d 17e4    	strb.w	r1, [sp, #0x7e4]
     71c: f60d 4828    	addw	r8, sp, #0xc28
     720: ed8e 5a0a    	vstr	s10, [lr, #40]
     724: f50d 6e80    	add.w	lr, sp, #0x400
     728: eddd cadc    	vldr	s25, [sp, #880]
     72c: 9d50         	ldr	r5, [sp, #0x140]
     72e: 94f6         	str	r4, [sp, #0x3d8]
     730: ed8e 4a09    	vstr	s8, [lr, #36]
     734: f50d 6e80    	add.w	lr, sp, #0x400
     738: ed8d 8afd    	vstr	s16, [sp, #1012]
     73c: ed8e 3a08    	vstr	s6, [lr, #32]
     740: f50d 6e80    	add.w	lr, sp, #0x400
     744: edcd 6afa    	vstr	s13, [sp, #1000]
     748: ed8e 2a06    	vstr	s4, [lr, #24]
     74c: f50d 6e80    	add.w	lr, sp, #0x400
     750: edcd 5af8    	vstr	s11, [sp, #992]
     754: ed8e 1a05    	vstr	s2, [lr, #20]
     758: f50d 6e80    	add.w	lr, sp, #0x400
     75c: ed8e 0a03    	vstr	s0, [lr, #12]
     760: f50d 6e80    	add.w	lr, sp, #0x400
     764: ed9d 0ac9    	vldr	s0, [sp, #804]
     768: ed8e 0a02    	vstr	s0, [lr, #8]
     76c: f50d 6e80    	add.w	lr, sp, #0x400
     770: ed9d 0add    	vldr	s0, [sp, #884]
     774: ed8e 0a00    	vstr	s0, [lr]
     778: ed9d 0ade    	vldr	s0, [sp, #888]
     77c: ed8d 0afe    	vstr	s0, [sp, #1016]
     780: f43f aea6    	beq.w	0x4d0 <Reset+0xc8>      @ imm = #-0x2b4
     784: f64a 21ab    	movw	r1, #0xaaab
     788: f103 0060    	add.w	r0, r3, #0x60
     78c: f6ca 21aa    	movt	r1, #0xaaaa
     790: ed9f 1adf    	vldr	s2, [pc, #892]          @ 0xb10 <Reset+0x708>
     794: fba0 1201    	umull	r1, r2, r0, r1
     798: ea4f 2112    	lsr.w	r1, r2, #0x8
     79c: eb01 0141    	add.w	r1, r1, r1, lsl #1
     7a0: eba0 10c1    	sub.w	r0, r0, r1, lsl #7
     7a4: f246 610d    	movw	r1, #0x660d
     7a8: ee00 0a10    	vmov	s0, r0
     7ac: f24f 305f    	movw	r0, #0xf35f
     7b0: f2c0 0119    	movt	r1, #0x19
     7b4: f6c3 406e    	movt	r0, #0x3c6e
     7b8: fb0c 0c01    	mla	r12, r12, r1, r0
     7bc: eeb8 0a40    	vcvt.f32.u32	s0, s0
     7c0: e9cd 3cda    	strd	r3, r12, [sp, #872]
     7c4: ee80 0a01    	vdiv.f32	s0, s0, s2
     7c8: b175         	cbz	r5, 0x7e8 <Reset+0x3e0> @ imm = #0x1c
     7ca: 2d01         	cmp	r5, #0x1
     7cc: f60d 1014    	addw	r0, sp, #0x914
     7d0: d11e         	bne	0x810 <Reset+0x408>     @ imm = #0x3c
     7d2: ee30 0a29    	vadd.f32	s0, s0, s19
     7d6: eeb9 1a00    	vmov.f32	s2, #-4.000000e+00
     7da: eeb0 8a6f    	vmov.f32	s16, s31
     7de: eeb0 0ac0    	vabs.f32	s0, s0
     7e2: ee00 8a01    	vmla.f32	s16, s0, s2
     7e6: e01f         	b	0x828 <Reset+0x420>     @ imm = #0x3e
     7e8: ee30 0a29    	vadd.f32	s0, s0, s19
     7ec: eeb9 2a00    	vmov.f32	s4, #-4.000000e+00
     7f0: eeb0 1a6f    	vmov.f32	s2, s31
     7f4: f60d 1014    	addw	r0, sp, #0x914
     7f8: eeb0 0ac0    	vabs.f32	s0, s0
     7fc: ee00 1a02    	vmla.f32	s2, s0, s4
     800: ed9f 0af5    	vldr	s0, [pc, #980]          @ 0xbd8 <Reset+0x7d0>
     804: ee21 8a00    	vmul.f32	s16, s2, s0
     808: e00e         	b	0x828 <Reset+0x420>     @ imm = #0x1c
     80a: bf00         	nop
     80c: 00 00 00 00  	.word	0x00000000
     810: ee00 ca10    	vmov	s0, r12
     814: ed9f 1af1    	vldr	s2, [pc, #964]          @ 0xbdc <Reset+0x7d4>
     818: eeb8 0ac0    	vcvt.f32.s32	s0, s0
     81c: ee20 0a01    	vmul.f32	s0, s0, s2
     820: eeb5 1a00    	vmov.f32	s2, #2.500000e-01
     824: ee20 8a01    	vmul.f32	s16, s0, s2
     828: ed9d 1a6c    	vldr	s2, [sp, #432]
     82c: ed9d 2a6d    	vldr	s4, [sp, #436]
     830: ed9d 3a6e    	vldr	s6, [sp, #440]
     834: ed9d 4a6f    	vldr	s8, [sp, #444]
     838: ed9d 5a70    	vldr	s10, [sp, #448]
     83c: ed9d 6a71    	vldr	s12, [sp, #452]
     840: f50d 6e80    	add.w	lr, sp, #0x400
     844: ee3b 0aab    	vadd.f32	s0, s23, s23
     848: ee01 0a6e    	vmls.f32	s0, s2, s29
     84c: edcd 1ae2    	vstr	s3, [sp, #904]
     850: ee3a 1aaa    	vadd.f32	s2, s21, s21
     854: edcd 0ae1    	vstr	s1, [sp, #900]
     858: ee02 1a6e    	vmls.f32	s2, s4, s29
     85c: ed9d 7a72    	vldr	s14, [sp, #456]
     860: ee34 2aa4    	vadd.f32	s4, s9, s9
     864: edcd 2ae5    	vstr	s5, [sp, #916]
     868: ee03 2a6e    	vmls.f32	s4, s6, s29
     86c: edcd 3ae6    	vstr	s7, [sp, #920]
     870: ee33 3aa3    	vadd.f32	s6, s7, s7
     874: eddd 3a76    	vldr	s7, [sp, #472]
     878: ee04 3a6e    	vmls.f32	s6, s8, s29
     87c: edcd 4ae8    	vstr	s9, [sp, #928]
     880: ee32 4aa2    	vadd.f32	s8, s5, s5
     884: eddd 2a75    	vldr	s5, [sp, #468]
     888: ee05 4a6e    	vmls.f32	s8, s10, s29
     88c: eddd 4a77    	vldr	s9, [sp, #476]
     890: ee31 5aa1    	vadd.f32	s10, s3, s3
     894: eddd 1a74    	vldr	s3, [sp, #464]
     898: ee06 5a6e    	vmls.f32	s10, s12, s29
     89c: eddd 5a78    	vldr	s11, [sp, #480]
     8a0: ee30 6aa0    	vadd.f32	s12, s1, s1
     8a4: eddd 0a73    	vldr	s1, [sp, #460]
     8a8: ee07 6a6e    	vmls.f32	s12, s14, s29
     8ac: f241 0104    	movw	r1, #0x1004
     8b0: ee37 7aa7    	vadd.f32	s14, s15, s15
     8b4: f2ce 0100    	movt	r1, #0xe000
     8b8: ee00 7aee    	vmls.f32	s14, s1, s29
     8bc: edcd 7ae0    	vstr	s15, [sp, #896]
     8c0: ee79 0a09    	vadd.f32	s1, s18, s18
     8c4: ed8d 9adf    	vstr	s18, [sp, #892]
     8c8: ee41 0aee    	vmls.f32	s1, s3, s29
     8cc: edde 1a0a    	vldr	s3, [lr, #40]
     8d0: f50d 6e80    	add.w	lr, sp, #0x400
     8d4: ee71 1aa1    	vadd.f32	s3, s3, s3
     8d8: ee42 1aee    	vmls.f32	s3, s5, s29
     8dc: eddd 6a79    	vldr	s13, [sp, #484]
     8e0: edde 2a09    	vldr	s5, [lr, #36]
     8e4: f50d 6e80    	add.w	lr, sp, #0x400
     8e8: ee72 2aa2    	vadd.f32	s5, s5, s5
     8ec: ee43 2aee    	vmls.f32	s5, s7, s29
     8f0: edde 3a08    	vldr	s7, [lr, #32]
     8f4: f50d 6e80    	add.w	lr, sp, #0x400
     8f8: ee73 3aa3    	vadd.f32	s7, s7, s7
     8fc: ee44 3aee    	vmls.f32	s7, s9, s29
     900: edde 4a06    	vldr	s9, [lr, #24]
     904: f50d 6e80    	add.w	lr, sp, #0x400
     908: ee74 4aa4    	vadd.f32	s9, s9, s9
     90c: ee45 4aee    	vmls.f32	s9, s11, s29
     910: edde 5a05    	vldr	s11, [lr, #20]
     914: f50d 6e80    	add.w	lr, sp, #0x400
     918: ee75 5aa5    	vadd.f32	s11, s11, s11
     91c: ee46 5aee    	vmls.f32	s11, s13, s29
     920: edde 6a03    	vldr	s13, [lr, #12]
     924: 6809         	ldr	r1, [r1]
     926: 91c6         	str	r1, [sp, #0x318]
     928: eddd 7a7a    	vldr	s15, [sp, #488]
     92c: ed8d 8aea    	vstr	s16, [sp, #936]
     930: f50d 6e80    	add.w	lr, sp, #0x400
     934: ed89 8a5a    	vstr	s16, [r9, #360]
     938: ee76 6aa6    	vadd.f32	s13, s13, s13
     93c: ed07 1a3b    	vstr	s2, [r7, #-236]
     940: ed9d 1a7c    	vldr	s2, [sp, #496]
     944: ed07 0a3c    	vstr	s0, [r7, #-240]
     948: ee3c 0aac    	vadd.f32	s0, s25, s25
     94c: ed07 2a3a    	vstr	s4, [r7, #-232]
     950: ee01 0a6e    	vmls.f32	s0, s2, s29
     954: ed9d 2a7d    	vldr	s4, [sp, #500]
     958: ee3d 1a0d    	vadd.f32	s2, s26, s26
     95c: ed07 3a39    	vstr	s6, [r7, #-228]
     960: ee02 1a6e    	vmls.f32	s2, s4, s29
     964: ed9e 2a02    	vldr	s4, [lr, #8]
     968: ed9d 3a7e    	vldr	s6, [sp, #504]
     96c: ee32 2a02    	vadd.f32	s4, s4, s4
     970: ed07 0a2c    	vstr	s0, [r7, #-176]
     974: ed9d 0afd    	vldr	s0, [sp, #1012]
     978: ee03 2a6e    	vmls.f32	s4, s6, s29
     97c: ed8d cade    	vstr	s24, [sp, #888]
     980: ee3c 3a0c    	vadd.f32	s6, s24, s24
     984: f50d 6e80    	add.w	lr, sp, #0x400
     988: ee30 ca00    	vadd.f32	s24, s0, s0
     98c: ed9d 0a84    	vldr	s0, [sp, #528]
     990: ee00 ca6e    	vmls.f32	s24, s0, s29
     994: ed9d 0afa    	vldr	s0, [sp, #1000]
     998: ed8d daf2    	vstr	s26, [sp, #968]
     99c: ee3a da0a    	vadd.f32	s26, s20, s20
     9a0: ed07 4a38    	vstr	s8, [r7, #-224]
     9a4: ed9d 4a7f    	vldr	s8, [sp, #508]
     9a8: ed07 5a37    	vstr	s10, [r7, #-220]
     9ac: ed9d 5a80    	vldr	s10, [sp, #512]
     9b0: ed8d aadc    	vstr	s20, [sp, #880]
     9b4: ee30 aa00    	vadd.f32	s20, s0, s0
     9b8: ed9d 0a85    	vldr	s0, [sp, #532]
     9bc: ed07 6a36    	vstr	s12, [r7, #-216]
     9c0: ee04 3a6e    	vmls.f32	s6, s8, s29
     9c4: ed9d 6a81    	vldr	s12, [sp, #516]
     9c8: ee3b 4a0b    	vadd.f32	s8, s22, s22
     9cc: ed07 7a35    	vstr	s14, [r7, #-212]
     9d0: ee05 4a6e    	vmls.f32	s8, s10, s29
     9d4: ed9e 5a00    	vldr	s10, [lr]
     9d8: ee00 aa6e    	vmls.f32	s20, s0, s29
     9dc: ed9d 0af8    	vldr	s0, [sp, #992]
     9e0: ed8d badd    	vstr	s22, [sp, #884]
     9e4: ee35 5a05    	vadd.f32	s10, s10, s10
     9e8: ee06 5a6e    	vmls.f32	s10, s12, s29
     9ec: ed9d 6afe    	vldr	s12, [sp, #1016]
     9f0: ed9d 7a82    	vldr	s14, [sp, #520]
     9f4: ee30 ba00    	vadd.f32	s22, s0, s0
     9f8: ed9d 0a86    	vldr	s0, [sp, #536]
     9fc: ed9d 8a7b    	vldr	s16, [sp, #492]
     a00: ee36 6a06    	vadd.f32	s12, s12, s12
     a04: 4630         	mov	r0, r6
     a06: ee07 6a6e    	vmls.f32	s12, s14, s29
     a0a: ed9d 7a83    	vldr	s14, [sp, #524]
     a0e: ee00 ba6e    	vmls.f32	s22, s0, s29
     a12: ed9d 0a87    	vldr	s0, [sp, #540]
     a16: ee47 6aee    	vmls.f32	s13, s15, s29
     a1a: f1a7 01f0    	sub.w	r1, r7, #0xf0
     a1e: ee7f 7a0f    	vadd.f32	s15, s30, s30
     a22: ed47 0a34    	vstr	s1, [r7, #-208]
     a26: ee48 7a6e    	vmls.f32	s15, s16, s29
     a2a: ed99 8a5a    	vldr	s16, [r9, #360]
     a2e: ee07 da6e    	vmls.f32	s26, s14, s29
     a32: ed47 1a33    	vstr	s3, [r7, #-204]
     a36: ee38 9aa8    	vadd.f32	s18, s17, s17
     a3a: ed47 2a32    	vstr	s5, [r7, #-200]
     a3e: ee00 9a6e    	vmls.f32	s18, s0, s29
     a42: eeb0 0a48    	vmov.f32	s0, s16
     a46: ed47 3a31    	vstr	s7, [r7, #-196]
     a4a: ed47 4a30    	vstr	s9, [r7, #-192]
     a4e: ed47 5a2f    	vstr	s11, [r7, #-188]
     a52: ed47 6a2e    	vstr	s13, [r7, #-184]
     a56: ed47 7a2d    	vstr	s15, [r7, #-180]
     a5a: ed07 1a2b    	vstr	s2, [r7, #-172]
     a5e: ed07 2a2a    	vstr	s4, [r7, #-168]
     a62: ed07 3a29    	vstr	s6, [r7, #-164]
     a66: ed07 4a28    	vstr	s8, [r7, #-160]
     a6a: ed07 5a27    	vstr	s10, [r7, #-156]
     a6e: ed07 6a26    	vstr	s12, [r7, #-152]
     a72: ed07 da25    	vstr	s26, [r7, #-148]
     a76: ed07 ca24    	vstr	s24, [r7, #-144]
     a7a: ed07 aa23    	vstr	s20, [r7, #-140]
     a7e: ed07 ba22    	vstr	s22, [r7, #-136]
     a82: ed07 9a21    	vstr	s18, [r7, #-132]
     a86: f00b fc43    	bl	0xc310 <orange_dsp::generated_condensed::origin> @ imm = #0xb886
     a8a: f60d 24d4    	addw	r4, sp, #0xad4
     a8e: f20d 412c    	addw	r1, sp, #0x42c
     a92: 4620         	mov	r0, r4
     a94: f50d 6e00    	add.w	lr, sp, #0x800
     a98: c94c         	ldm	r1!, {r2, r3, r6}
     a9a: c04c         	stm	r0!, {r2, r3, r6}
     a9c: e891 006c    	ldm.w	r1, {r2, r3, r5, r6}
     aa0: c06c         	stm	r0!, {r2, r3, r5, r6}
     aa2: f50d 66fa    	add.w	r6, sp, #0x7d0
     aa6: 4640         	mov	r0, r8
     aa8: 4621         	mov	r1, r4
     aaa: 4632         	mov	r2, r6
     aac: ed8e eabc    	vstr	s28, [lr, #752]
     ab0: 2500         	movs	r5, #0x0
     ab2: f8cd 5a04    	str.w	r5, [sp, #0xa04]
     ab6: f8cd 5a00    	str.w	r5, [sp, #0xa00]
     aba: f8cd 59fc    	str.w	r5, [sp, #0x9fc]
     abe: f8cd 59f8    	str.w	r5, [sp, #0x9f8]
     ac2: f8cd 59f4    	str.w	r5, [sp, #0x9f4]
     ac6: f006 fec7    	bl	0x7858 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>> @ imm = #0x6d8e
     aca: f89d 0c2d    	ldrb.w	r0, [sp, #0xc2d]
     ace: ed8d eaf1    	vstr	s28, [sp, #964]
     ad2: f89d ac2c    	ldrb.w	r10, [sp, #0xc2c]
     ad6: b1f8         	cbz	r0, 0xb18 <Reset+0x710> @ imm = #0x3e
     ad8: f50d 6e40    	add.w	lr, sp, #0xc00
     adc: ed8d 8af0    	vstr	s16, [sp, #960]
     ae0: eeb0 8a68    	vmov.f32	s16, s17
     ae4: eef0 8a6c    	vmov.f32	s17, s25
     ae8: ed9e 0a0a    	vldr	s0, [lr, #40]
     aec: eef0 ca4f    	vmov.f32	s25, s30
     af0: eeb4 0a40    	vcmp.f32	s0, s0
     af4: 98f6         	ldr	r0, [sp, #0x3d8]
     af6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     afa: f8cd 0410    	str.w	r0, [sp, #0x410]
     afe: fe1d 0a80    	vselvs.f32	s0, s27, s0
     b02: eeb5 0a40    	vcmp.f32	s0, #0
     b06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b0a: fe70 9a2d    	vselgt.f32	s19, s0, s27
     b0e: e032         	b	0xb76 <Reset+0x76e>     @ imm = #0x64
     b10: 00 00 c0 43  	.word	0x43c00000
     b14: 00 bf 00 bf  	.word	0xbf00bf00
     b18: 4640         	mov	r0, r8
     b1a: 4621         	mov	r1, r4
     b1c: 4632         	mov	r2, r6
     b1e: f8cd 5ad4    	str.w	r5, [sp, #0xad4]
     b22: f006 fe99    	bl	0x7858 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>> @ imm = #0x6d32
     b26: f50d 6e40    	add.w	lr, sp, #0xc00
     b2a: 98f6         	ldr	r0, [sp, #0x3d8]
     b2c: 1c42         	adds	r2, r0, #0x1
     b2e: f04f 30ff    	mov.w	r0, #0xffffffff
     b32: ed9e 0a0a    	vldr	s0, [lr, #40]
     b36: bf28         	it	hs
     b38: 4602         	movhs	r2, r0
     b3a: eeb4 0a40    	vcmp.f32	s0, s0
     b3e: f89d 0c2c    	ldrb.w	r0, [sp, #0xc2c]
     b42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b46: f89d 1c2d    	ldrb.w	r1, [sp, #0xc2d]
     b4a: 4482         	add	r10, r0
     b4c: fe1d 1a80    	vselvs.f32	s2, s27, s0
     b50: f8cd 2410    	str.w	r2, [sp, #0x410]
     b54: eeb5 1a40    	vcmp.f32	s2, #0
     b58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     b5c: fe71 9a2d    	vselgt.f32	s19, s2, s27
     b60: 2900         	cmp	r1, #0x0
     b62: f000 8119    	beq.w	0xd98 <Reset+0x990>     @ imm = #0x232
     b66: ed8d 8af0    	vstr	s16, [sp, #960]
     b6a: eeb0 8a68    	vmov.f32	s16, s17
     b6e: eef0 8a6c    	vmov.f32	s17, s25
     b72: eef0 ca4f    	vmov.f32	s25, s30
     b76: ed99 eb0b    	vldr	d14, [r9, #44]
     b7a: eeb0 2a4d    	vmov.f32	s4, s26
     b7e: f60d 24d4    	addw	r4, sp, #0xad4
     b82: ed99 fb19    	vldr	d15, [r9, #100]
     b86: eeb0 0b4e    	vmov.f64	d0, d14
     b8a: f60d 15f4    	addw	r5, sp, #0x9f4
     b8e: eeb0 1b4f    	vmov.f64	d1, d15
     b92: 4640         	mov	r0, r8
     b94: 4621         	mov	r1, r4
     b96: 462a         	mov	r2, r5
     b98: f007 f95e    	bl	0x7e58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>> @ imm = #0x72bc
     b9c: f89d 0c2d    	ldrb.w	r0, [sp, #0xc2d]
     ba0: f89d 1c2c    	ldrb.w	r1, [sp, #0xc2c]
     ba4: 448a         	add	r10, r1
     ba6: b1d8         	cbz	r0, 0xbe0 <Reset+0x7d8> @ imm = #0x36
     ba8: f50d 6e40    	add.w	lr, sp, #0xc00
     bac: eef4 9a69    	vcmp.f32	s19, s19
     bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     bb4: ed9e 0a0a    	vldr	s0, [lr, #40]
     bb8: fe10 1a29    	vselvs.f32	s2, s0, s19
     bbc: eeb4 0a40    	vcmp.f32	s0, s0
     bc0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     bc4: fe11 0a00    	vselvs.f32	s0, s2, s0
     bc8: eeb4 1a40    	vcmp.f32	s2, s0
     bcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     bd0: fe31 da00    	vselgt.f32	s26, s2, s0
     bd4: e039         	b	0xc4a <Reset+0x842>     @ imm = #0x72
     bd6: bf00         	nop
     bd8: cd cc cc 3d  	.word	0x3dcccccd
     bdc: 00 00 00 30  	.word	0x30000000
     be0: eeb0 0b4e    	vmov.f64	d0, d14
     be4: 2000         	movs	r0, #0x0
     be6: eeb0 1b4f    	vmov.f64	d1, d15
     bea: f8cd 0ad8    	str.w	r0, [sp, #0xad8]
     bee: eeb0 2a4d    	vmov.f32	s4, s26
     bf2: 4640         	mov	r0, r8
     bf4: 4621         	mov	r1, r4
     bf6: 462a         	mov	r2, r5
     bf8: f007 f92e    	bl	0x7e58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>> @ imm = #0x725c
     bfc: f8dd 1410    	ldr.w	r1, [sp, #0x410]
     c00: f04f 30ff    	mov.w	r0, #0xffffffff
     c04: 3101         	adds	r1, #0x1
     c06: f50d 6e40    	add.w	lr, sp, #0xc00
     c0a: bf28         	it	hs
     c0c: 4601         	movhs	r1, r0
     c0e: eef4 9a69    	vcmp.f32	s19, s19
     c12: ed9e 0a0a    	vldr	s0, [lr, #40]
     c16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     c1a: eeb4 0a40    	vcmp.f32	s0, s0
     c1e: f8cd 1410    	str.w	r1, [sp, #0x410]
     c22: fe10 1a29    	vselvs.f32	s2, s0, s19
     c26: f89d 0c2c    	ldrb.w	r0, [sp, #0xc2c]
     c2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     c2e: f89d 1c2d    	ldrb.w	r1, [sp, #0xc2d]
     c32: 4482         	add	r10, r0
     c34: fe11 2a00    	vselvs.f32	s4, s2, s0
     c38: eeb4 1a42    	vcmp.f32	s2, s4
     c3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     c40: fe31 da02    	vselgt.f32	s26, s2, s4
     c44: 2900         	cmp	r1, #0x0
     c46: f000 8193    	beq.w	0xf70 <Reset+0xb68>     @ imm = #0x326
     c4a: eeb0 0a4c    	vmov.f32	s0, s24
     c4e: f60d 24d4    	addw	r4, sp, #0xad4
     c52: f60d 15f4    	addw	r5, sp, #0x9f4
     c56: 4640         	mov	r0, r8
     c58: 4621         	mov	r1, r4
     c5a: 4632         	mov	r2, r6
     c5c: 462b         	mov	r3, r5
     c5e: eebe ea00    	vmov.f32	s28, #-5.000000e-01
     c62: eef7 fa00    	vmov.f32	s31, #1.000000e+00
     c66: eef6 ea00    	vmov.f32	s29, #5.000000e-01
     c6a: eef1 9a04    	vmov.f32	s19, #5.000000e+00
     c6e: eeb0 fa6c    	vmov.f32	s30, s25
     c72: f007 fcf5    	bl	0x8660 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>> @ imm = #0x79ea
     c76: f89d 0c2d    	ldrb.w	r0, [sp, #0xc2d]
     c7a: eef0 ca68    	vmov.f32	s25, s17
     c7e: f89d 1c2c    	ldrb.w	r1, [sp, #0xc2c]
     c82: 2801         	cmp	r0, #0x1
     c84: 448a         	add	r10, r1
     c86: d11b         	bne	0xcc0 <Reset+0x8b8>     @ imm = #0x36
     c88: f50d 6e40    	add.w	lr, sp, #0xc00
     c8c: eeb4 da4d    	vcmp.f32	s26, s26
     c90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     c94: ed9e 0a0a    	vldr	s0, [lr, #40]
     c98: eef0 8a48    	vmov.f32	s17, s16
     c9c: fe10 1a0d    	vselvs.f32	s2, s0, s26
     ca0: ed9d daf2    	vldr	s26, [sp, #968]
     ca4: eeb4 0a40    	vcmp.f32	s0, s0
     ca8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     cac: fe11 0a00    	vselvs.f32	s0, s2, s0
     cb0: eeb4 1a40    	vcmp.f32	s2, s0
     cb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     cb8: fe31 ca00    	vselgt.f32	s24, s2, s0
     cbc: e038         	b	0xd30 <Reset+0x928>     @ imm = #0x70
     cbe: bf00         	nop
     cc0: eeb0 0a4c    	vmov.f32	s0, s24
     cc4: 2000         	movs	r0, #0x0
     cc6: f8cd 0adc    	str.w	r0, [sp, #0xadc]
     cca: 4621         	mov	r1, r4
     ccc: f8cd 0ae0    	str.w	r0, [sp, #0xae0]
     cd0: 4640         	mov	r0, r8
     cd2: 4632         	mov	r2, r6
     cd4: 462b         	mov	r3, r5
     cd6: f007 fcc3    	bl	0x8660 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>> @ imm = #0x7986
     cda: f8dd 1410    	ldr.w	r1, [sp, #0x410]
     cde: f04f 30ff    	mov.w	r0, #0xffffffff
     ce2: 3101         	adds	r1, #0x1
     ce4: f50d 6e40    	add.w	lr, sp, #0xc00
     ce8: bf28         	it	hs
     cea: 4601         	movhs	r1, r0
     cec: eeb4 da4d    	vcmp.f32	s26, s26
     cf0: ed9e 0a0a    	vldr	s0, [lr, #40]
     cf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     cf8: eeb4 0a40    	vcmp.f32	s0, s0
     cfc: f8cd 1410    	str.w	r1, [sp, #0x410]
     d00: fe10 1a0d    	vselvs.f32	s2, s0, s26
     d04: f89d 0c2c    	ldrb.w	r0, [sp, #0xc2c]
     d08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d0c: f89d 1c2d    	ldrb.w	r1, [sp, #0xc2d]
     d10: eef0 8a48    	vmov.f32	s17, s16
     d14: fe11 2a00    	vselvs.f32	s4, s2, s0
     d18: 4482         	add	r10, r0
     d1a: eeb4 1a42    	vcmp.f32	s2, s4
     d1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d22: fe31 ca02    	vselgt.f32	s24, s2, s4
     d26: 2900         	cmp	r1, #0x0
     d28: f000 845a    	beq.w	0x15e0 <Reset+0x11d8>   @ imm = #0x8b4
     d2c: ed9d daf2    	vldr	s26, [sp, #968]
     d30: eeb0 0a4a    	vmov.f32	s0, s20
     d34: eef0 0a4b    	vmov.f32	s1, s22
     d38: f60d 24d4    	addw	r4, sp, #0xad4
     d3c: f60d 15f4    	addw	r5, sp, #0x9f4
     d40: 4640         	mov	r0, r8
     d42: 4621         	mov	r1, r4
     d44: 4632         	mov	r2, r6
     d46: 462b         	mov	r3, r5
     d48: f008 fb6a    	bl	0x9420 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>> @ imm = #0x86d4
     d4c: f89d 0c2d    	ldrb.w	r0, [sp, #0xc2d]
     d50: ed9d 8af0    	vldr	s16, [sp, #960]
     d54: f89d 1c2c    	ldrb.w	r1, [sp, #0xc2c]
     d58: 2801         	cmp	r0, #0x1
     d5a: 448a         	add	r10, r1
     d5c: f040 8094    	bne.w	0xe88 <Reset+0xa80>     @ imm = #0x128
     d60: f50d 6e40    	add.w	lr, sp, #0xc00
     d64: eeb4 ca4c    	vcmp.f32	s24, s24
     d68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d6c: ed9e 0a0a    	vldr	s0, [lr, #40]
     d70: edcd aac7    	vstr	s21, [sp, #796]
     d74: fe10 1a0c    	vselvs.f32	s2, s0, s24
     d78: edcd bac8    	vstr	s23, [sp, #800]
     d7c: eeb4 0a40    	vcmp.f32	s0, s0
     d80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d84: fe11 0a00    	vselvs.f32	s0, s2, s0
     d88: eeb4 1a40    	vcmp.f32	s2, s0
     d8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     d90: fe31 ca00    	vselgt.f32	s24, s2, s0
     d94: e0b4         	b	0xf00 <Reset+0xaf8>     @ imm = #0x168
     d96: bf00         	nop
     d98: f50d 6e80    	add.w	lr, sp, #0x400
     d9c: ed9d 2add    	vldr	s4, [sp, #884]
     da0: ed8d 2af0    	vstr	s4, [sp, #960]
     da4: ed9d 2ade    	vldr	s4, [sp, #888]
     da8: ed9e aa00    	vldr	s20, [lr]
     dac: f50d 6e80    	add.w	lr, sp, #0x400
     db0: ed8d 2aef    	vstr	s4, [sp, #956]
     db4: eeb0 1a4f    	vmov.f32	s2, s30
     db8: ed9e 2a02    	vldr	s4, [lr, #8]
     dbc: f50d 6e80    	add.w	lr, sp, #0x400
     dc0: ed8d 1aed    	vstr	s2, [sp, #948]
     dc4: ee10 0a10    	vmov	r0, s0
     dc8: ed9e 1a03    	vldr	s2, [lr, #12]
     dcc: f50d 6e80    	add.w	lr, sp, #0x400
     dd0: ed8d 1ad9    	vstr	s2, [sp, #868]
     dd4: eeb0 fa6a    	vmov.f32	s30, s21
     dd8: ed9e 1a05    	vldr	s2, [lr, #20]
     ddc: f50d 6e80    	add.w	lr, sp, #0x400
     de0: ed8d 1ad8    	vstr	s2, [sp, #864]
     de4: eeb0 da6c    	vmov.f32	s26, s25
     de8: ed9e 1a06    	vldr	s2, [lr, #24]
     dec: f50d 6e80    	add.w	lr, sp, #0x400
     df0: ed8d 1ad7    	vstr	s2, [sp, #860]
     df4: eebe ea00    	vmov.f32	s28, #-5.000000e-01
     df8: ed9e 1a08    	vldr	s2, [lr, #32]
     dfc: f50d 6e80    	add.w	lr, sp, #0x400
     e00: ed8d 1ad6    	vstr	s2, [sp, #856]
     e04: 2100         	movs	r1, #0x0
     e06: ed9e 1a09    	vldr	s2, [lr, #36]
     e0a: f50d 6e80    	add.w	lr, sp, #0x400
     e0e: ed9d 0af8    	vldr	s0, [sp, #992]
     e12: ed8d 0acb    	vstr	s0, [sp, #812]
     e16: ed9d 0afa    	vldr	s0, [sp, #1000]
     e1a: ed8d 0aca    	vstr	s0, [sp, #808]
     e1e: eeb0 0a6b    	vmov.f32	s0, s23
     e22: eddd aafd    	vldr	s21, [sp, #1012]
     e26: eddd badc    	vldr	s23, [sp, #880]
     e2a: edcd 8acc    	vstr	s17, [sp, #816]
     e2e: ed9d 8afe    	vldr	s16, [sp, #1016]
     e32: ed8d 2ac9    	vstr	s4, [sp, #804]
     e36: ed9d 2af2    	vldr	s4, [sp, #968]
     e3a: ed8d 2aee    	vstr	s4, [sp, #952]
     e3e: ed8d 1ad5    	vstr	s2, [sp, #852]
     e42: ed9e 1a0a    	vldr	s2, [lr, #40]
     e46: ed8d 1ad4    	vstr	s2, [sp, #848]
     e4a: ed9d 1adf    	vldr	s2, [sp, #892]
     e4e: ed8d 1ad3    	vstr	s2, [sp, #844]
     e52: ed9d 1ae0    	vldr	s2, [sp, #896]
     e56: ed8d 1ad2    	vstr	s2, [sp, #840]
     e5a: ed9d 1ae1    	vldr	s2, [sp, #900]
     e5e: ed8d 1ad1    	vstr	s2, [sp, #836]
     e62: ed9d 1ae2    	vldr	s2, [sp, #904]
     e66: ed8d 1ad0    	vstr	s2, [sp, #832]
     e6a: ed9d 1ae5    	vldr	s2, [sp, #916]
     e6e: ed8d 1acf    	vstr	s2, [sp, #828]
     e72: ed9d 1ae6    	vldr	s2, [sp, #920]
     e76: ed8d 1ace    	vstr	s2, [sp, #824]
     e7a: ed9d 1ae8    	vldr	s2, [sp, #928]
     e7e: ed8d 1acd    	vstr	s2, [sp, #820]
     e82: ed8d 0aec    	vstr	s0, [sp, #944]
     e86: e0ec         	b	0x1062 <Reset+0xc5a>    @ imm = #0x1d8
     e88: eeb0 0a4a    	vmov.f32	s0, s20
     e8c: eef0 0a4b    	vmov.f32	s1, s22
     e90: 2000         	movs	r0, #0x0
     e92: f8cd 0ae4    	str.w	r0, [sp, #0xae4]
     e96: f8cd 0ae8    	str.w	r0, [sp, #0xae8]
     e9a: 4621         	mov	r1, r4
     e9c: f8cd 0aec    	str.w	r0, [sp, #0xaec]
     ea0: 4640         	mov	r0, r8
     ea2: 4632         	mov	r2, r6
     ea4: 462b         	mov	r3, r5
     ea6: f008 fabb    	bl	0x9420 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>> @ imm = #0x8576
     eaa: f8dd 1410    	ldr.w	r1, [sp, #0x410]
     eae: f04f 30ff    	mov.w	r0, #0xffffffff
     eb2: 3101         	adds	r1, #0x1
     eb4: f50d 6e40    	add.w	lr, sp, #0xc00
     eb8: bf28         	it	hs
     eba: 4601         	movhs	r1, r0
     ebc: eeb4 ca4c    	vcmp.f32	s24, s24
     ec0: ed9e 0a0a    	vldr	s0, [lr, #40]
     ec4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ec8: eeb4 0a40    	vcmp.f32	s0, s0
     ecc: f8cd 1410    	str.w	r1, [sp, #0x410]
     ed0: fe10 1a0c    	vselvs.f32	s2, s0, s24
     ed4: f89d 0c2c    	ldrb.w	r0, [sp, #0xc2c]
     ed8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     edc: f89d 1c2d    	ldrb.w	r1, [sp, #0xc2d]
     ee0: 4482         	add	r10, r0
     ee2: fe11 2a00    	vselvs.f32	s4, s2, s0
     ee6: eeb4 1a42    	vcmp.f32	s2, s4
     eea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     eee: fe31 ca02    	vselgt.f32	s24, s2, s4
     ef2: 2900         	cmp	r1, #0x0
     ef4: f000 83a4    	beq.w	0x1640 <Reset+0x1238>   @ imm = #0x748
     ef8: edcd aac7    	vstr	s21, [sp, #796]
     efc: edcd bac8    	vstr	s23, [sp, #800]
     f00: ed99 ab17    	vldr	d10, [r9, #92]
     f04: eeb0 2a49    	vmov.f32	s4, s18
     f08: f60d 24d4    	addw	r4, sp, #0xad4
     f0c: ed99 bb21    	vldr	d11, [r9, #132]
     f10: eeb0 0b4a    	vmov.f64	d0, d10
     f14: f60d 15f4    	addw	r5, sp, #0x9f4
     f18: eeb0 1b4b    	vmov.f64	d1, d11
     f1c: 4640         	mov	r0, r8
     f1e: 4621         	mov	r1, r4
     f20: 462a         	mov	r2, r5
     f22: f009 fc35    	bl	0xa790 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>> @ imm = #0x986a
     f26: f89d 0c2d    	ldrb.w	r0, [sp, #0xc2d]
     f2a: f89d 1c2c    	ldrb.w	r1, [sp, #0xc2c]
     f2e: 2800         	cmp	r0, #0x0
     f30: 448a         	add	r10, r1
     f32: f000 809d    	beq.w	0x1070 <Reset+0xc68>    @ imm = #0x13a
     f36: f50d 6e40    	add.w	lr, sp, #0xc00
     f3a: eeb4 ca4c    	vcmp.f32	s24, s24
     f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f42: ed9e 0a0a    	vldr	s0, [lr, #40]
     f46: edcd cac3    	vstr	s25, [sp, #780]
     f4a: fe10 1a0c    	vselvs.f32	s2, s0, s24
     f4e: ed8d fac5    	vstr	s30, [sp, #788]
     f52: eeb4 0a40    	vcmp.f32	s0, s0
     f56: f8cd a3d4    	str.w	r10, [sp, #0x3d4]
     f5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f5e: fe11 0a00    	vselvs.f32	s0, s2, s0
     f62: eeb4 1a40    	vcmp.f32	s2, s0
     f66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     f6a: fe31 9a00    	vselgt.f32	s18, s2, s0
     f6e: e0ba         	b	0x10e6 <Reset+0xcde>    @ imm = #0x174
     f70: f50d 6e80    	add.w	lr, sp, #0x400
     f74: ed9d 1add    	vldr	s2, [sp, #884]
     f78: ed8d 1af0    	vstr	s2, [sp, #960]
     f7c: ed9d 1ade    	vldr	s2, [sp, #888]
     f80: ed9e aa00    	vldr	s20, [lr]
     f84: f50d 6e80    	add.w	lr, sp, #0x400
     f88: ed8d 1aef    	vstr	s2, [sp, #956]
     f8c: ee10 0a10    	vmov	r0, s0
     f90: ed9e 1a02    	vldr	s2, [lr, #8]
     f94: f50d 6e80    	add.w	lr, sp, #0x400
     f98: ed8d 1ac9    	vstr	s2, [sp, #804]
     f9c: ed9d 1af2    	vldr	s2, [sp, #968]
     fa0: ed8d 1aee    	vstr	s2, [sp, #952]
     fa4: ed9e 1a03    	vldr	s2, [lr, #12]
     fa8: f50d 6e80    	add.w	lr, sp, #0x400
     fac: ed8d 1ad9    	vstr	s2, [sp, #868]
     fb0: ed9d 0af8    	vldr	s0, [sp, #992]
     fb4: ed8d 0acb    	vstr	s0, [sp, #812]
     fb8: ed9e 1a05    	vldr	s2, [lr, #20]
     fbc: f50d 6e80    	add.w	lr, sp, #0x400
     fc0: ed8d 1ad8    	vstr	s2, [sp, #864]
     fc4: ed9d 0afa    	vldr	s0, [sp, #1000]
     fc8: ed9e 1a06    	vldr	s2, [lr, #24]
     fcc: f50d 6e80    	add.w	lr, sp, #0x400
     fd0: ed8d 1ad7    	vstr	s2, [sp, #860]
     fd4: 2100         	movs	r1, #0x0
     fd6: ed9e 1a08    	vldr	s2, [lr, #32]
     fda: f50d 6e80    	add.w	lr, sp, #0x400
     fde: ed8d 1ad6    	vstr	s2, [sp, #856]
     fe2: eeb0 fa6a    	vmov.f32	s30, s21
     fe6: ed9e 1a09    	vldr	s2, [lr, #36]
     fea: f50d 6e80    	add.w	lr, sp, #0x400
     fee: ed8d 0aca    	vstr	s0, [sp, #808]
     ff2: eeb0 0a6b    	vmov.f32	s0, s23
     ff6: ed8d 8acc    	vstr	s16, [sp, #816]
     ffa: eddd aafd    	vldr	s21, [sp, #1012]
     ffe: eddd badc    	vldr	s23, [sp, #880]
    1002: eeb0 da68    	vmov.f32	s26, s17
    1006: ed9d 8afe    	vldr	s16, [sp, #1016]
    100a: edcd caed    	vstr	s25, [sp, #948]
    100e: ed8d 1ad5    	vstr	s2, [sp, #852]
    1012: ed9e 1a0a    	vldr	s2, [lr, #40]
    1016: ed8d 1ad4    	vstr	s2, [sp, #848]
    101a: ed9d 1adf    	vldr	s2, [sp, #892]
    101e: ed8d 1ad3    	vstr	s2, [sp, #844]
    1022: ed9d 1ae0    	vldr	s2, [sp, #896]
    1026: ed8d 1ad2    	vstr	s2, [sp, #840]
    102a: ed9d 1ae1    	vldr	s2, [sp, #900]
    102e: ed8d 1ad1    	vstr	s2, [sp, #836]
    1032: ed9d 1ae2    	vldr	s2, [sp, #904]
    1036: ed8d 1ad0    	vstr	s2, [sp, #832]
    103a: ed9d 1ae5    	vldr	s2, [sp, #916]
    103e: ed8d 1acf    	vstr	s2, [sp, #828]
    1042: ed9d 1ae6    	vldr	s2, [sp, #920]
    1046: ed8d 1ace    	vstr	s2, [sp, #824]
    104a: ed9d 1ae8    	vldr	s2, [sp, #928]
    104e: ed8d 1acd    	vstr	s2, [sp, #820]
    1052: eebe ea00    	vmov.f32	s28, #-5.000000e-01
    1056: ed8d 0aec    	vstr	s0, [sp, #944]
    105a: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    105e: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    1062: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    1066: eef1 9a04    	vmov.f32	s19, #5.000000e+00
    106a: e3d0         	b	0x180e <Reset+0x1406>   @ imm = #0x7a0
    106c: bf00         	nop
    106e: bf00         	nop
    1070: eeb0 0b4a    	vmov.f64	d0, d10
    1074: 2000         	movs	r0, #0x0
    1076: eeb0 1b4b    	vmov.f64	d1, d11
    107a: f8cd 0af0    	str.w	r0, [sp, #0xaf0]
    107e: eeb0 2a49    	vmov.f32	s4, s18
    1082: 4640         	mov	r0, r8
    1084: 4621         	mov	r1, r4
    1086: 462a         	mov	r2, r5
    1088: f009 fb82    	bl	0xa790 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>> @ imm = #0x9704
    108c: f8dd 1410    	ldr.w	r1, [sp, #0x410]
    1090: f04f 30ff    	mov.w	r0, #0xffffffff
    1094: 3101         	adds	r1, #0x1
    1096: f50d 6e40    	add.w	lr, sp, #0xc00
    109a: bf28         	it	hs
    109c: 4601         	movhs	r1, r0
    109e: eeb4 ca4c    	vcmp.f32	s24, s24
    10a2: ed9e 0a0a    	vldr	s0, [lr, #40]
    10a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10aa: eeb4 0a40    	vcmp.f32	s0, s0
    10ae: f8cd 1410    	str.w	r1, [sp, #0x410]
    10b2: fe10 1a0c    	vselvs.f32	s2, s0, s24
    10b6: f89d 0c2c    	ldrb.w	r0, [sp, #0xc2c]
    10ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10be: f89d 1c2d    	ldrb.w	r1, [sp, #0xc2d]
    10c2: 4482         	add	r10, r0
    10c4: fe11 2a00    	vselvs.f32	s4, s2, s0
    10c8: eeb4 1a42    	vcmp.f32	s2, s4
    10cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    10d0: fe31 9a02    	vselgt.f32	s18, s2, s4
    10d4: 2900         	cmp	r1, #0x0
    10d6: f000 8327    	beq.w	0x1728 <Reset+0x1320>   @ imm = #0x64e
    10da: edcd cac3    	vstr	s25, [sp, #780]
    10de: ed8d fac5    	vstr	s30, [sp, #788]
    10e2: f8cd a3d4    	str.w	r10, [sp, #0x3d4]
    10e6: eeb0 0a48    	vmov.f32	s0, s16
    10ea: 4640         	mov	r0, r8
    10ec: f1a7 01f0    	sub.w	r1, r7, #0xf0
    10f0: f60d 22d4    	addw	r2, sp, #0xad4
    10f4: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    10f8: f00b fbe2    	bl	0xc8c0 <orange_dsp::generated_condensed::update> @ imm = #0xb7c4
    10fc: f50d 6540    	add.w	r5, sp, #0xc00
    1100: f50d 6e40    	add.w	lr, sp, #0xc00
    1104: f50d 6440    	add.w	r4, sp, #0xc00
    1108: ed95 5a13    	vldr	s10, [r5, #76]
    110c: f50d 6540    	add.w	r5, sp, #0xc00
    1110: ed9e fa0b    	vldr	s30, [lr, #44]
    1114: f50d 6e40    	add.w	lr, sp, #0xc00
    1118: ed95 4a14    	vldr	s8, [r5, #80]
    111c: f50d 6540    	add.w	r5, sp, #0xc00
    1120: edde 4a0c    	vldr	s9, [lr, #48]
    1124: f50d 6e40    	add.w	lr, sp, #0xc00
    1128: ed95 3a15    	vldr	s6, [r5, #84]
    112c: f50d 6540    	add.w	r5, sp, #0xc00
    1130: edde 3a0d    	vldr	s7, [lr, #52]
    1134: f50d 6e40    	add.w	lr, sp, #0xc00
    1138: ed95 2a16    	vldr	s4, [r5, #88]
    113c: ee1f 6a10    	vmov	r6, s30
    1140: ee12 5a10    	vmov	r5, s4
    1144: edde 2a0e    	vldr	s5, [lr, #56]
    1148: f50d 6e40    	add.w	lr, sp, #0xc00
    114c: ee14 0a90    	vmov	r0, s9
    1150: 95ee         	str	r5, [sp, #0x3b8]
    1152: f50d 6540    	add.w	r5, sp, #0xc00
    1156: edde 1a0f    	vldr	s3, [lr, #60]
    115a: f50d 6e40    	add.w	lr, sp, #0xc00
    115e: ed95 1a17    	vldr	s2, [r5, #92]
    1162: f026 4600    	bic	r6, r6, #0x80000000
    1166: ee11 5a10    	vmov	r5, s2
    116a: edde 0a10    	vldr	s1, [lr, #64]
    116e: f50d 6e40    	add.w	lr, sp, #0xc00
    1172: f1b6 4fff    	cmp.w	r6, #0x7f800000
    1176: 95ef         	str	r5, [sp, #0x3bc]
    1178: f50d 6540    	add.w	r5, sp, #0xc00
    117c: f04f 0600    	mov.w	r6, #0x0
    1180: ed9e 7a11    	vldr	s14, [lr, #68]
    1184: ed95 0a18    	vldr	s0, [r5, #96]
    1188: f020 4000    	bic	r0, r0, #0x80000000
    118c: ee10 8a10    	vmov	r8, s0
    1190: ed94 6a12    	vldr	s12, [r4, #72]
    1194: ee13 1a90    	vmov	r1, s7
    1198: ee12 3a90    	vmov	r3, s5
    119c: f8cd 83c0    	str.w	r8, [sp, #0x3c0]
    11a0: ee11 2a90    	vmov	r2, s3
    11a4: bfa8         	it	ge
    11a6: 2601         	movge	r6, #0x1
    11a8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    11ac: f04f 0000    	mov.w	r0, #0x0
    11b0: 96d9         	str	r6, [sp, #0x364]
    11b2: ee10 ca90    	vmov	r12, s1
    11b6: bfa8         	it	ge
    11b8: 2001         	movge	r0, #0x1
    11ba: ee17 ea10    	vmov	lr, s14
    11be: ee16 4a10    	vmov	r4, s12
    11c2: 90d8         	str	r0, [sp, #0x360]
    11c4: f021 4000    	bic	r0, r1, #0x80000000
    11c8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    11cc: f04f 0000    	mov.w	r0, #0x0
    11d0: bfa8         	it	ge
    11d2: 2001         	movge	r0, #0x1
    11d4: ee15 9a10    	vmov	r9, s10
    11d8: ee14 aa10    	vmov	r10, s8
    11dc: 90d7         	str	r0, [sp, #0x35c]
    11de: f023 4000    	bic	r0, r3, #0x80000000
    11e2: f1b0 4fff    	cmp.w	r0, #0x7f800000
    11e6: f04f 0000    	mov.w	r0, #0x0
    11ea: bfa8         	it	ge
    11ec: 2001         	movge	r0, #0x1
    11ee: ee13 ba10    	vmov	r11, s6
    11f2: 2600         	movs	r6, #0x0
    11f4: 90d6         	str	r0, [sp, #0x358]
    11f6: f022 4000    	bic	r0, r2, #0x80000000
    11fa: f1b0 4fff    	cmp.w	r0, #0x7f800000
    11fe: f04f 0000    	mov.w	r0, #0x0
    1202: bfa8         	it	ge
    1204: 2001         	movge	r0, #0x1
    1206: f20d 75ac    	addw	r5, sp, #0x7ac
    120a: f04f 0800    	mov.w	r8, #0x0
    120e: 90d5         	str	r0, [sp, #0x354]
    1210: f02c 4000    	bic	r0, r12, #0x80000000
    1214: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1218: f04f 0000    	mov.w	r0, #0x0
    121c: bfa8         	it	ge
    121e: 2001         	movge	r0, #0x1
    1220: f04f 0c00    	mov.w	r12, #0x0
    1224: 90d4         	str	r0, [sp, #0x350]
    1226: f02e 4000    	bic	r0, lr, #0x80000000
    122a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    122e: f04f 0000    	mov.w	r0, #0x0
    1232: bfa8         	it	ge
    1234: 2001         	movge	r0, #0x1
    1236: f50d 6e40    	add.w	lr, sp, #0xc00
    123a: 90d3         	str	r0, [sp, #0x34c]
    123c: f024 4000    	bic	r0, r4, #0x80000000
    1240: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1244: f04f 0000    	mov.w	r0, #0x0
    1248: bfa8         	it	ge
    124a: 2001         	movge	r0, #0x1
    124c: 90d2         	str	r0, [sp, #0x348]
    124e: f029 4000    	bic	r0, r9, #0x80000000
    1252: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1256: f04f 0000    	mov.w	r0, #0x0
    125a: bfa8         	it	ge
    125c: 2001         	movge	r0, #0x1
    125e: f04f 0900    	mov.w	r9, #0x0
    1262: 90d1         	str	r0, [sp, #0x344]
    1264: f02a 4000    	bic	r0, r10, #0x80000000
    1268: f1b0 4fff    	cmp.w	r0, #0x7f800000
    126c: f04f 0000    	mov.w	r0, #0x0
    1270: bfa8         	it	ge
    1272: 2001         	movge	r0, #0x1
    1274: f04f 0a00    	mov.w	r10, #0x0
    1278: 90d0         	str	r0, [sp, #0x340]
    127a: f02b 4000    	bic	r0, r11, #0x80000000
    127e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1282: f04f 0000    	mov.w	r0, #0x0
    1286: bfa8         	it	ge
    1288: 2001         	movge	r0, #0x1
    128a: 90cf         	str	r0, [sp, #0x33c]
    128c: 98ee         	ldr	r0, [sp, #0x3b8]
    128e: f020 4000    	bic	r0, r0, #0x80000000
    1292: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1296: f04f 0000    	mov.w	r0, #0x0
    129a: bfa8         	it	ge
    129c: 2001         	movge	r0, #0x1
    129e: 90ce         	str	r0, [sp, #0x338]
    12a0: 98ef         	ldr	r0, [sp, #0x3bc]
    12a2: f020 4000    	bic	r0, r0, #0x80000000
    12a6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    12aa: f04f 0000    	mov.w	r0, #0x0
    12ae: bfa8         	it	ge
    12b0: 2001         	movge	r0, #0x1
    12b2: edde 5a19    	vldr	s11, [lr, #100]
    12b6: edcd 5aed    	vstr	s11, [sp, #948]
    12ba: 90cd         	str	r0, [sp, #0x334]
    12bc: 98f0         	ldr	r0, [sp, #0x3c0]
    12be: f020 4000    	bic	r0, r0, #0x80000000
    12c2: ee15 1a90    	vmov	r1, s11
    12c6: f1b0 4fff    	cmp.w	r0, #0x7f800000
    12ca: f04f 0000    	mov.w	r0, #0x0
    12ce: bfa8         	it	ge
    12d0: 2001         	movge	r0, #0x1
    12d2: f50d 6e40    	add.w	lr, sp, #0xc00
    12d6: 90cc         	str	r0, [sp, #0x330]
    12d8: f021 4000    	bic	r0, r1, #0x80000000
    12dc: ed9e da1a    	vldr	s26, [lr, #104]
    12e0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    12e4: ee1d 1a10    	vmov	r1, s26
    12e8: f04f 0000    	mov.w	r0, #0x0
    12ec: bfa8         	it	ge
    12ee: 2001         	movge	r0, #0x1
    12f0: f50d 6e40    	add.w	lr, sp, #0xc00
    12f4: 90cb         	str	r0, [sp, #0x32c]
    12f6: f021 4000    	bic	r0, r1, #0x80000000
    12fa: edde 5a1b    	vldr	s11, [lr, #108]
    12fe: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1302: ee15 1a90    	vmov	r1, s11
    1306: f04f 0000    	mov.w	r0, #0x0
    130a: edcd 5aee    	vstr	s11, [sp, #952]
    130e: f50d 6e40    	add.w	lr, sp, #0xc00
    1312: bfa8         	it	ge
    1314: 2001         	movge	r0, #0x1
    1316: ed9e ca1c    	vldr	s24, [lr, #112]
    131a: f50d 6e40    	add.w	lr, sp, #0xc00
    131e: 90ca         	str	r0, [sp, #0x328]
    1320: f021 4000    	bic	r0, r1, #0x80000000
    1324: ee1c 1a10    	vmov	r1, s24
    1328: f1b0 4fff    	cmp.w	r0, #0x7f800000
    132c: f04f 0000    	mov.w	r0, #0x0
    1330: bfa8         	it	ge
    1332: 2001         	movge	r0, #0x1
    1334: edde 5a1d    	vldr	s11, [lr, #116]
    1338: f50d 6e40    	add.w	lr, sp, #0xc00
    133c: 90c9         	str	r0, [sp, #0x324]
    133e: f021 4000    	bic	r0, r1, #0x80000000
    1342: ee15 1a90    	vmov	r1, s11
    1346: edcd 5aef    	vstr	s11, [sp, #956]
    134a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    134e: bfa8         	it	ge
    1350: f04f 0901    	movge.w	r9, #0x1
    1354: edde 5a1e    	vldr	s11, [lr, #120]
    1358: f021 4000    	bic	r0, r1, #0x80000000
    135c: ee15 1a90    	vmov	r1, s11
    1360: f50d 6e40    	add.w	lr, sp, #0xc00
    1364: edcd 5af0    	vstr	s11, [sp, #960]
    1368: f1b0 4fff    	cmp.w	r0, #0x7f800000
    136c: bfa8         	it	ge
    136e: f04f 0a01    	movge.w	r10, #0x1
    1372: ed9e aa1f    	vldr	s20, [lr, #124]
    1376: f021 4000    	bic	r0, r1, #0x80000000
    137a: ee1a 1a10    	vmov	r1, s20
    137e: f50d 6e40    	add.w	lr, sp, #0xc00
    1382: f1b0 4fff    	cmp.w	r0, #0x7f800000
    1386: bfa8         	it	ge
    1388: 2601         	movge	r6, #0x1
    138a: ed9e 8a20    	vldr	s16, [lr, #128]
    138e: f021 4000    	bic	r0, r1, #0x80000000
    1392: ee18 1a10    	vmov	r1, s16
    1396: f1b0 4fff    	cmp.w	r0, #0x7f800000
    139a: bfa8         	it	ge
    139c: f04f 0801    	movge.w	r8, #0x1
    13a0: edd5 ba92    	vldr	s23, [r5, #584]
    13a4: f04f 0e00    	mov.w	lr, #0x0
    13a8: f021 4000    	bic	r0, r1, #0x80000000
    13ac: ee1b 1a90    	vmov	r1, s23
    13b0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    13b4: f04f 0000    	mov.w	r0, #0x0
    13b8: bfa8         	it	ge
    13ba: 2001         	movge	r0, #0x1
    13bc: f021 4100    	bic	r1, r1, #0x80000000
    13c0: edd5 aa93    	vldr	s21, [r5, #588]
    13c4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    13c8: f04f 0100    	mov.w	r1, #0x0
    13cc: ee1a 2a90    	vmov	r2, s21
    13d0: bfa8         	it	ge
    13d2: 2101         	movge	r1, #0x1
    13d4: edd5 7a94    	vldr	s15, [r5, #592]
    13d8: ee17 3a90    	vmov	r3, s15
    13dc: f022 4200    	bic	r2, r2, #0x80000000
    13e0: f1b2 4fff    	cmp.w	r2, #0x7f800000
    13e4: bfa8         	it	ge
    13e6: f04f 0e01    	movge.w	lr, #0x1
    13ea: f023 4200    	bic	r2, r3, #0x80000000
    13ee: edd5 6a95    	vldr	s13, [r5, #596]
    13f2: edd5 5a96    	vldr	s11, [r5, #600]
    13f6: f50d 6540    	add.w	r5, sp, #0xc00
    13fa: f1b2 4fff    	cmp.w	r2, #0x7f800000
    13fe: ee16 3a90    	vmov	r3, s13
    1402: f04f 0200    	mov.w	r2, #0x0
    1406: ee15 4a90    	vmov	r4, s11
    140a: bfa8         	it	ge
    140c: 2201         	movge	r2, #0x1
    140e: edd5 ca0a    	vldr	s25, [r5, #40]
    1412: f023 4300    	bic	r3, r3, #0x80000000
    1416: ee1c 5a90    	vmov	r5, s25
    141a: f1b3 4fff    	cmp.w	r3, #0x7f800000
    141e: f024 4400    	bic	r4, r4, #0x80000000
    1422: f04f 0300    	mov.w	r3, #0x0
    1426: edcd caec    	vstr	s25, [sp, #944]
    142a: bfa8         	it	ge
    142c: 2301         	movge	r3, #0x1
    142e: f1b4 4fff    	cmp.w	r4, #0x7f800000
    1432: f025 4400    	bic	r4, r5, #0x80000000
    1436: bfa8         	it	ge
    1438: f04f 0c01    	movge.w	r12, #0x1
    143c: f1b4 4fff    	cmp.w	r4, #0x7f800000
    1440: da4a         	bge	0x14d8 <Reset+0x10d0>   @ imm = #0x94
    1442: 9cd9         	ldr	r4, [sp, #0x364]
    1444: 2c00         	cmp	r4, #0x0
    1446: bf04         	itt	eq
    1448: 9cd8         	ldreq	r4, [sp, #0x360]
    144a: 2c00         	cmpeq	r4, #0x0
    144c: d144         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x88
    144e: 9cd7         	ldr	r4, [sp, #0x35c]
    1450: 2c00         	cmp	r4, #0x0
    1452: bf04         	itt	eq
    1454: 9cd6         	ldreq	r4, [sp, #0x358]
    1456: 2c00         	cmpeq	r4, #0x0
    1458: d13e         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x7c
    145a: 9cd5         	ldr	r4, [sp, #0x354]
    145c: 2c00         	cmp	r4, #0x0
    145e: bf04         	itt	eq
    1460: 9cd4         	ldreq	r4, [sp, #0x350]
    1462: 2c00         	cmpeq	r4, #0x0
    1464: d138         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x70
    1466: 9cd3         	ldr	r4, [sp, #0x34c]
    1468: 2c00         	cmp	r4, #0x0
    146a: bf04         	itt	eq
    146c: 9cd2         	ldreq	r4, [sp, #0x348]
    146e: 2c00         	cmpeq	r4, #0x0
    1470: d132         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x64
    1472: 9cd1         	ldr	r4, [sp, #0x344]
    1474: 2c00         	cmp	r4, #0x0
    1476: bf04         	itt	eq
    1478: 9cd0         	ldreq	r4, [sp, #0x340]
    147a: 2c00         	cmpeq	r4, #0x0
    147c: d12c         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x58
    147e: 9ccf         	ldr	r4, [sp, #0x33c]
    1480: 2c00         	cmp	r4, #0x0
    1482: bf04         	itt	eq
    1484: 9cce         	ldreq	r4, [sp, #0x338]
    1486: 2c00         	cmpeq	r4, #0x0
    1488: d126         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x4c
    148a: 9ccd         	ldr	r4, [sp, #0x334]
    148c: 2c00         	cmp	r4, #0x0
    148e: bf04         	itt	eq
    1490: 9ccc         	ldreq	r4, [sp, #0x330]
    1492: 2c00         	cmpeq	r4, #0x0
    1494: d120         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x40
    1496: 9ccb         	ldr	r4, [sp, #0x32c]
    1498: 2c00         	cmp	r4, #0x0
    149a: bf04         	itt	eq
    149c: 9cca         	ldreq	r4, [sp, #0x328]
    149e: 2c00         	cmpeq	r4, #0x0
    14a0: d11a         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x34
    14a2: 9cc9         	ldr	r4, [sp, #0x324]
    14a4: 2c00         	cmp	r4, #0x0
    14a6: bf08         	it	eq
    14a8: f1b9 0f00    	cmpeq.w	r9, #0x0
    14ac: d114         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x28
    14ae: f1ba 0f00    	cmp.w	r10, #0x0
    14b2: bf08         	it	eq
    14b4: 2e00         	cmpeq	r6, #0x0
    14b6: d10f         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x1e
    14b8: f1b8 0f00    	cmp.w	r8, #0x0
    14bc: bf08         	it	eq
    14be: 2800         	cmpeq	r0, #0x0
    14c0: d10a         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0x14
    14c2: 2900         	cmp	r1, #0x0
    14c4: bf08         	it	eq
    14c6: f1be 0f00    	cmpeq.w	lr, #0x0
    14ca: d105         	bne	0x14d8 <Reset+0x10d0>   @ imm = #0xa
    14cc: 2a00         	cmp	r2, #0x0
    14ce: bf08         	it	eq
    14d0: 2b00         	cmpeq	r3, #0x0
    14d2: f006 8019    	beq.w	0x7508 <Reset+0x7100>   @ imm = #0x6032
    14d6: bf00         	nop
    14d8: f50d 6e80    	add.w	lr, sp, #0x400
    14dc: ed9d 0af8    	vldr	s0, [sp, #992]
    14e0: ed8d 0acb    	vstr	s0, [sp, #812]
    14e4: ed9d 0afa    	vldr	s0, [sp, #1000]
    14e8: ed9e aa00    	vldr	s20, [lr]
    14ec: f50d 6e80    	add.w	lr, sp, #0x400
    14f0: ed8d 0aca    	vstr	s0, [sp, #808]
    14f4: ed9d 0add    	vldr	s0, [sp, #884]
    14f8: ed8d 0af0    	vstr	s0, [sp, #960]
    14fc: ed9d 0ade    	vldr	s0, [sp, #888]
    1500: ed8d 0aef    	vstr	s0, [sp, #956]
    1504: ed9e 0a02    	vldr	s0, [lr, #8]
    1508: f50d 6e80    	add.w	lr, sp, #0x400
    150c: ed8d 0ac9    	vstr	s0, [sp, #804]
    1510: ed9d 0af2    	vldr	s0, [sp, #968]
    1514: ed8d 0aee    	vstr	s0, [sp, #952]
    1518: ed9d 0ac5    	vldr	s0, [sp, #788]
    151c: ed8d 0aed    	vstr	s0, [sp, #948]
    1520: ed9e 0a03    	vldr	s0, [lr, #12]
    1524: f50d 6e80    	add.w	lr, sp, #0x400
    1528: ed8d 0ad9    	vstr	s0, [sp, #868]
    152c: f04f 40ff    	mov.w	r0, #0x7f800000
    1530: ed9e 0a05    	vldr	s0, [lr, #20]
    1534: f50d 6e80    	add.w	lr, sp, #0x400
    1538: ed8d 0ad8    	vstr	s0, [sp, #864]
    153c: 2100         	movs	r1, #0x0
    153e: ed9e 0a06    	vldr	s0, [lr, #24]
    1542: f50d 6e80    	add.w	lr, sp, #0x400
    1546: ed8d 0ad7    	vstr	s0, [sp, #860]
    154a: eddd aafd    	vldr	s21, [sp, #1012]
    154e: ed9e 0a08    	vldr	s0, [lr, #32]
    1552: f50d 6e80    	add.w	lr, sp, #0x400
    1556: ed8d 0ad6    	vstr	s0, [sp, #856]
    155a: eddd badc    	vldr	s23, [sp, #880]
    155e: ed9e 0a09    	vldr	s0, [lr, #36]
    1562: f50d 6e80    	add.w	lr, sp, #0x400
    1566: edcd 8acc    	vstr	s17, [sp, #816]
    156a: ed9d 8afe    	vldr	s16, [sp, #1016]
    156e: ed9d dac3    	vldr	s26, [sp, #780]
    1572: ed8d 0ad5    	vstr	s0, [sp, #852]
    1576: ed9e 0a0a    	vldr	s0, [lr, #40]
    157a: ed8d 0ad4    	vstr	s0, [sp, #848]
    157e: ed9d 0adf    	vldr	s0, [sp, #892]
    1582: ed8d 0ad3    	vstr	s0, [sp, #844]
    1586: ed9d 0ae0    	vldr	s0, [sp, #896]
    158a: ed8d 0ad2    	vstr	s0, [sp, #840]
    158e: ed9d 0ae1    	vldr	s0, [sp, #900]
    1592: ed8d 0ad1    	vstr	s0, [sp, #836]
    1596: ed9d 0ae2    	vldr	s0, [sp, #904]
    159a: ed8d 0ad0    	vstr	s0, [sp, #832]
    159e: ed9d 0ae5    	vldr	s0, [sp, #916]
    15a2: ed8d 0acf    	vstr	s0, [sp, #828]
    15a6: ed9d 0ae6    	vldr	s0, [sp, #920]
    15aa: ed8d 0ace    	vstr	s0, [sp, #824]
    15ae: ed9d 0ae8    	vldr	s0, [sp, #928]
    15b2: ed8d 0acd    	vstr	s0, [sp, #820]
    15b6: ed9d fac7    	vldr	s30, [sp, #796]
    15ba: ed9d 0ac8    	vldr	s0, [sp, #800]
    15be: ed8d 0aec    	vstr	s0, [sp, #944]
    15c2: f24e 0b98    	movw	r11, #0xe098
    15c6: f20d 79ac    	addw	r9, sp, #0x7ac
    15ca: f60d 4828    	addw	r8, sp, #0xc28
    15ce: f50d 64c2    	add.w	r4, sp, #0x610
    15d2: f8dd a3d4    	ldr.w	r10, [sp, #0x3d4]
    15d6: f2c0 0b00    	movt	r11, #0x0
    15da: e11a         	b	0x1812 <Reset+0x140a>   @ imm = #0x234
    15dc: bf00         	nop
    15de: bf00         	nop
    15e0: f50d 6e80    	add.w	lr, sp, #0x400
    15e4: ee10 0a10    	vmov	r0, s0
    15e8: 2100         	movs	r1, #0x0
    15ea: edcd 8acc    	vstr	s17, [sp, #816]
    15ee: ed9e aa00    	vldr	s20, [lr]
    15f2: f50d 6e80    	add.w	lr, sp, #0x400
    15f6: ed9d 0af8    	vldr	s0, [sp, #992]
    15fa: ed8d 0acb    	vstr	s0, [sp, #812]
    15fe: ed9d 0afa    	vldr	s0, [sp, #1000]
    1602: ed8d 0aca    	vstr	s0, [sp, #808]
    1606: eeb0 0a6b    	vmov.f32	s0, s23
    160a: eeb0 1a4f    	vmov.f32	s2, s30
    160e: eeb0 fa6a    	vmov.f32	s30, s21
    1612: eddd aafd    	vldr	s21, [sp, #1012]
    1616: eddd badc    	vldr	s23, [sp, #880]
    161a: ed9d 2add    	vldr	s4, [sp, #884]
    161e: ed9d 8afe    	vldr	s16, [sp, #1016]
    1622: ed8d 2af0    	vstr	s4, [sp, #960]
    1626: ed9d 2ade    	vldr	s4, [sp, #888]
    162a: ed8d 2aef    	vstr	s4, [sp, #956]
    162e: ed9e 2a02    	vldr	s4, [lr, #8]
    1632: ed8d 2ac9    	vstr	s4, [sp, #804]
    1636: ed9d 2af2    	vldr	s4, [sp, #968]
    163a: ed8d 2aee    	vstr	s4, [sp, #952]
    163e: e02c         	b	0x169a <Reset+0x1292>   @ imm = #0x58
    1640: f50d 6e80    	add.w	lr, sp, #0x400
    1644: ee10 0a10    	vmov	r0, s0
    1648: ed9d 0af8    	vldr	s0, [sp, #992]
    164c: ed8d 0acb    	vstr	s0, [sp, #812]
    1650: ed9d 0afa    	vldr	s0, [sp, #1000]
    1654: ed8d 0aca    	vstr	s0, [sp, #808]
    1658: eeb0 0a6b    	vmov.f32	s0, s23
    165c: eeb0 1a4f    	vmov.f32	s2, s30
    1660: eeb0 fa6a    	vmov.f32	s30, s21
    1664: ed9e aa00    	vldr	s20, [lr]
    1668: f50d 6e80    	add.w	lr, sp, #0x400
    166c: 2100         	movs	r1, #0x0
    166e: eddd aafd    	vldr	s21, [sp, #1012]
    1672: eddd badc    	vldr	s23, [sp, #880]
    1676: ed9d 8afe    	vldr	s16, [sp, #1016]
    167a: edcd 8acc    	vstr	s17, [sp, #816]
    167e: ed9d 2add    	vldr	s4, [sp, #884]
    1682: ed8d 2af0    	vstr	s4, [sp, #960]
    1686: ed9d 2ade    	vldr	s4, [sp, #888]
    168a: ed8d 2aef    	vstr	s4, [sp, #956]
    168e: ed9e 2a02    	vldr	s4, [lr, #8]
    1692: ed8d 2ac9    	vstr	s4, [sp, #804]
    1696: ed8d daee    	vstr	s26, [sp, #952]
    169a: f50d 6e80    	add.w	lr, sp, #0x400
    169e: ed8d 1aed    	vstr	s2, [sp, #948]
    16a2: eeb0 da6c    	vmov.f32	s26, s25
    16a6: ed9e 1a03    	vldr	s2, [lr, #12]
    16aa: f50d 6e80    	add.w	lr, sp, #0x400
    16ae: ed8d 1ad9    	vstr	s2, [sp, #868]
    16b2: ed9e 1a05    	vldr	s2, [lr, #20]
    16b6: f50d 6e80    	add.w	lr, sp, #0x400
    16ba: ed8d 1ad8    	vstr	s2, [sp, #864]
    16be: ed9e 1a06    	vldr	s2, [lr, #24]
    16c2: f50d 6e80    	add.w	lr, sp, #0x400
    16c6: ed8d 1ad7    	vstr	s2, [sp, #860]
    16ca: ed9e 1a08    	vldr	s2, [lr, #32]
    16ce: f50d 6e80    	add.w	lr, sp, #0x400
    16d2: ed8d 1ad6    	vstr	s2, [sp, #856]
    16d6: ed9e 1a09    	vldr	s2, [lr, #36]
    16da: f50d 6e80    	add.w	lr, sp, #0x400
    16de: ed8d 1ad5    	vstr	s2, [sp, #852]
    16e2: ed9e 1a0a    	vldr	s2, [lr, #40]
    16e6: ed8d 1ad4    	vstr	s2, [sp, #848]
    16ea: ed9d 1adf    	vldr	s2, [sp, #892]
    16ee: ed8d 1ad3    	vstr	s2, [sp, #844]
    16f2: ed9d 1ae0    	vldr	s2, [sp, #896]
    16f6: ed8d 1ad2    	vstr	s2, [sp, #840]
    16fa: ed9d 1ae1    	vldr	s2, [sp, #900]
    16fe: ed8d 1ad1    	vstr	s2, [sp, #836]
    1702: ed9d 1ae2    	vldr	s2, [sp, #904]
    1706: ed8d 1ad0    	vstr	s2, [sp, #832]
    170a: ed9d 1ae5    	vldr	s2, [sp, #916]
    170e: ed8d 1acf    	vstr	s2, [sp, #828]
    1712: ed9d 1ae6    	vldr	s2, [sp, #920]
    1716: ed8d 1ace    	vstr	s2, [sp, #824]
    171a: ed9d 1ae8    	vldr	s2, [sp, #928]
    171e: ed8d 1acd    	vstr	s2, [sp, #820]
    1722: e070         	b	0x1806 <Reset+0x13fe>   @ imm = #0xe0
    1724: bf00         	nop
    1726: bf00         	nop
    1728: f50d 6e80    	add.w	lr, sp, #0x400
    172c: ee10 0a10    	vmov	r0, s0
    1730: ed9d 0af8    	vldr	s0, [sp, #992]
    1734: ed8d 0acb    	vstr	s0, [sp, #812]
    1738: ed9e aa00    	vldr	s20, [lr]
    173c: f50d 6e80    	add.w	lr, sp, #0x400
    1740: ed9d 0afa    	vldr	s0, [sp, #1000]
    1744: ed8d 0aca    	vstr	s0, [sp, #808]
    1748: ed9d 0add    	vldr	s0, [sp, #884]
    174c: ed8d 0af0    	vstr	s0, [sp, #960]
    1750: ed9d 0ade    	vldr	s0, [sp, #888]
    1754: ed8d 0aef    	vstr	s0, [sp, #956]
    1758: ed9e 0a02    	vldr	s0, [lr, #8]
    175c: f50d 6e80    	add.w	lr, sp, #0x400
    1760: ed8d 0ac9    	vstr	s0, [sp, #804]
    1764: 2100         	movs	r1, #0x0
    1766: ed9e 0a03    	vldr	s0, [lr, #12]
    176a: f50d 6e80    	add.w	lr, sp, #0x400
    176e: ed8d 0ad9    	vstr	s0, [sp, #868]
    1772: eddd aafd    	vldr	s21, [sp, #1012]
    1776: ed9e 0a05    	vldr	s0, [lr, #20]
    177a: f50d 6e80    	add.w	lr, sp, #0x400
    177e: ed8d 0ad8    	vstr	s0, [sp, #864]
    1782: eddd badc    	vldr	s23, [sp, #880]
    1786: ed9e 0a06    	vldr	s0, [lr, #24]
    178a: f50d 6e80    	add.w	lr, sp, #0x400
    178e: ed8d 0ad7    	vstr	s0, [sp, #860]
    1792: ed9d 8afe    	vldr	s16, [sp, #1016]
    1796: ed9e 0a08    	vldr	s0, [lr, #32]
    179a: f50d 6e80    	add.w	lr, sp, #0x400
    179e: ed8d 0ad6    	vstr	s0, [sp, #856]
    17a2: ed9e 0a09    	vldr	s0, [lr, #36]
    17a6: f50d 6e80    	add.w	lr, sp, #0x400
    17aa: edcd 8acc    	vstr	s17, [sp, #816]
    17ae: ed8d daee    	vstr	s26, [sp, #952]
    17b2: eeb0 da6c    	vmov.f32	s26, s25
    17b6: ed8d faed    	vstr	s30, [sp, #948]
    17ba: ed9d fac7    	vldr	s30, [sp, #796]
    17be: ed8d 0ad5    	vstr	s0, [sp, #852]
    17c2: ed9e 0a0a    	vldr	s0, [lr, #40]
    17c6: ed8d 0ad4    	vstr	s0, [sp, #848]
    17ca: ed9d 0adf    	vldr	s0, [sp, #892]
    17ce: ed8d 0ad3    	vstr	s0, [sp, #844]
    17d2: ed9d 0ae0    	vldr	s0, [sp, #896]
    17d6: ed8d 0ad2    	vstr	s0, [sp, #840]
    17da: ed9d 0ae1    	vldr	s0, [sp, #900]
    17de: ed8d 0ad1    	vstr	s0, [sp, #836]
    17e2: ed9d 0ae2    	vldr	s0, [sp, #904]
    17e6: ed8d 0ad0    	vstr	s0, [sp, #832]
    17ea: ed9d 0ae5    	vldr	s0, [sp, #916]
    17ee: ed8d 0acf    	vstr	s0, [sp, #828]
    17f2: ed9d 0ae6    	vldr	s0, [sp, #920]
    17f6: ed8d 0ace    	vstr	s0, [sp, #824]
    17fa: ed9d 0ae8    	vldr	s0, [sp, #928]
    17fe: ed8d 0acd    	vstr	s0, [sp, #820]
    1802: ed9d 0ac8    	vldr	s0, [sp, #800]
    1806: ed8d 0aec    	vstr	s0, [sp, #944]
    180a: eebf ba00    	vmov.f32	s22, #-1.000000e+00
    180e: f50d 64c2    	add.w	r4, sp, #0x610
    1812: e9cd 10c7    	strd	r1, r0, [sp, #796]
    1816: f241 0004    	movw	r0, #0x1004
    181a: f50d 6e80    	add.w	lr, sp, #0x400
    181e: f2ce 0000    	movt	r0, #0xe000
    1822: 21e0         	movs	r1, #0xe0
    1824: 6800         	ldr	r0, [r0]
    1826: 90c5         	str	r0, [sp, #0x314]
    1828: ed9d 0aea    	vldr	s0, [sp, #936]
    182c: ed8e 0a83    	vstr	s0, [lr, #524]
    1830: f50d 6e80    	add.w	lr, sp, #0x400
    1834: f20d 600c    	addw	r0, sp, #0x60c
    1838: 4620         	mov	r0, r4
    183a: ed9e 0a83    	vldr	s0, [lr, #524]
    183e: f50d 6e80    	add.w	lr, sp, #0x400
    1842: ed8e 0a06    	vstr	s0, [lr, #24]
    1846: f00c f948    	bl	0xdada <__aeabi_memclr4> @ imm = #0xc290
    184a: f50d 6589    	add.w	r5, sp, #0x448
    184e: 22e0         	movs	r2, #0xe0
    1850: f50d 60de    	add.w	r0, sp, #0x6f0
    1854: 4629         	mov	r1, r5
    1856: f00b ffa7    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0xbf4e
    185a: 98f7         	ldr	r0, [sp, #0x3dc]
    185c: ed9f ca42    	vldr	s24, [pc, #264]         @ 0x1968 <Reset+0x1560>
    1860: 2800         	cmp	r0, #0x0
    1862: f000 8085    	beq.w	0x1970 <Reset+0x1568>   @ imm = #0x10a
    1866: 2000         	movs	r0, #0x0
    1868: f50d 61de    	add.w	r1, sp, #0x6f0
    186c: bf00         	nop
    186e: bf00         	nop
    1870: 182e         	adds	r6, r5, r0
    1872: 1822         	adds	r2, r4, r0
    1874: 180b         	adds	r3, r1, r0
    1876: 3020         	adds	r0, #0x20
    1878: ed96 0a00    	vldr	s0, [r6]
    187c: ed96 2a01    	vldr	s4, [r6, #4]
    1880: ee30 0a00    	vadd.f32	s0, s0, s0
    1884: ed96 1a38    	vldr	s2, [r6, #224]
    1888: ee32 2a02    	vadd.f32	s4, s4, s4
    188c: ed96 4a39    	vldr	s8, [r6, #228]
    1890: ed96 6a04    	vldr	s12, [r6, #16]
    1894: ed96 7a06    	vldr	s14, [r6, #24]
    1898: ee30 3a41    	vsub.f32	s6, s0, s2
    189c: 28e0         	cmp	r0, #0xe0
    189e: ee01 0a6e    	vmls.f32	s0, s2, s29
    18a2: ed96 1a02    	vldr	s2, [r6, #8]
    18a6: ee32 5a44    	vsub.f32	s10, s4, s8
    18aa: ed83 3a00    	vstr	s6, [r3]
    18ae: ee04 2a6e    	vmls.f32	s4, s8, s29
    18b2: ed96 3a3a    	vldr	s6, [r6, #232]
    18b6: ed83 5a01    	vstr	s10, [r3, #4]
    18ba: ee36 5a06    	vadd.f32	s10, s12, s12
    18be: ed82 0a00    	vstr	s0, [r2]
    18c2: ee31 0a01    	vadd.f32	s0, s2, s2
    18c6: ed96 1a03    	vldr	s2, [r6, #12]
    18ca: ed96 6a3c    	vldr	s12, [r6, #240]
    18ce: ee31 1a01    	vadd.f32	s2, s2, s2
    18d2: ed82 2a01    	vstr	s4, [r2, #4]
    18d6: ee30 2a43    	vsub.f32	s4, s0, s6
    18da: ee03 0a6e    	vmls.f32	s0, s6, s29
    18de: ed96 3a3b    	vldr	s6, [r6, #236]
    18e2: ee31 4a43    	vsub.f32	s8, s2, s6
    18e6: ed83 2a02    	vstr	s4, [r3, #8]
    18ea: ee03 1a6e    	vmls.f32	s2, s6, s29
    18ee: ed96 3a05    	vldr	s6, [r6, #20]
    18f2: ee33 3a03    	vadd.f32	s6, s6, s6
    18f6: ed83 4a03    	vstr	s8, [r3, #12]
    18fa: ed82 0a02    	vstr	s0, [r2, #8]
    18fe: ee35 0a46    	vsub.f32	s0, s10, s12
    1902: ee06 5a6e    	vmls.f32	s10, s12, s29
    1906: ed96 6a3d    	vldr	s12, [r6, #244]
    190a: ee73 0a46    	vsub.f32	s1, s6, s12
    190e: ed82 1a03    	vstr	s2, [r2, #12]
    1912: ee06 3a6e    	vmls.f32	s6, s12, s29
    1916: ed96 6a07    	vldr	s12, [r6, #28]
    191a: ee37 2a07    	vadd.f32	s4, s14, s14
    191e: ed96 4a3e    	vldr	s8, [r6, #248]
    1922: ee36 1a06    	vadd.f32	s2, s12, s12
    1926: ed83 0a04    	vstr	s0, [r3, #16]
    192a: ed96 0a3f    	vldr	s0, [r6, #252]
    192e: ed82 5a04    	vstr	s10, [r2, #16]
    1932: eeb0 6a42    	vmov.f32	s12, s4
    1936: ee04 6a6e    	vmls.f32	s12, s8, s29
    193a: eeb0 5a41    	vmov.f32	s10, s2
    193e: ee00 5a6e    	vmls.f32	s10, s0, s29
    1942: ee32 2a44    	vsub.f32	s4, s4, s8
    1946: ed82 3a05    	vstr	s6, [r2, #20]
    194a: ee31 0a40    	vsub.f32	s0, s2, s0
    194e: edc3 0a05    	vstr	s1, [r3, #20]
    1952: ed82 6a06    	vstr	s12, [r2, #24]
    1956: ed83 2a06    	vstr	s4, [r3, #24]
    195a: ed82 5a07    	vstr	s10, [r2, #28]
    195e: ed83 0a07    	vstr	s0, [r3, #28]
    1962: d185         	bne	0x1870 <Reset+0x1468>   @ imm = #-0xf6
    1964: e00b         	b	0x197e <Reset+0x1576>   @ imm = #0x16
    1966: bf00         	nop
    1968: 0a d7 23 3d  	.word	0x3d23d70a
    196c: 00 bf 00 bf  	.word	0xbf00bf00
    1970: 22e0         	movs	r2, #0xe0
    1972: 4620         	mov	r0, r4
    1974: 4629         	mov	r1, r5
    1976: f00b ff17    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0xbe2e
    197a: f50d 61de    	add.w	r1, sp, #0x6f0
    197e: f50d 6e80    	add.w	lr, sp, #0x400
    1982: ed9f 7ae2    	vldr	s14, [pc, #904]         @ 0x1d0c <Reset+0x1904>
    1986: eddf 0ae2    	vldr	s1, [pc, #904]          @ 0x1d10 <Reset+0x1908>
    198a: eefa 4a0e    	vmov.f32	s9, #-1.500000e+01
    198e: ed9e 0acf    	vldr	s0, [lr, #828]
    1992: f50d 6e80    	add.w	lr, sp, #0x400
    1996: eddf 1adf    	vldr	s3, [pc, #892]          @ 0x1d14 <Reset+0x190c>
    199a: f240 1555    	movw	r5, #0x155
    199e: ed9e 1ad0    	vldr	s2, [lr, #832]
    19a2: eddf 2add    	vldr	s5, [pc, #884]          @ 0x1d18 <Reset+0x1910>
    19a6: ee30 0a41    	vsub.f32	s0, s0, s2
    19aa: eddf 3adc    	vldr	s7, [pc, #880]          @ 0x1d1c <Reset+0x1914>
    19ae: eddf 5adc    	vldr	s11, [pc, #880]         @ 0x1d20 <Reset+0x1918>
    19b2: f50d 6e80    	add.w	lr, sp, #0x400
    19b6: f2c0 0508    	movt	r5, #0x8
    19ba: ee80 0a07    	vdiv.f32	s0, s0, s14
    19be: eef4 0a40    	vcmp.f32	s1, s0
    19c2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19c6: fe30 0a80    	vselgt.f32	s0, s1, s0
    19ca: eeb4 0a61    	vcmp.f32	s0, s3
    19ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19d2: fe31 1a80    	vselgt.f32	s2, s3, s0
    19d6: ee21 0a22    	vmul.f32	s0, s2, s5
    19da: ee30 2a0e    	vadd.f32	s4, s0, s28
    19de: eeb5 0a40    	vcmp.f32	s0, #0
    19e2: ee30 3a2e    	vadd.f32	s6, s0, s29
    19e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    19ea: eebd 2ac2    	vcvt.s32.f32	s4, s4
    19ee: eebd 3ac3    	vcvt.s32.f32	s6, s6
    19f2: ee12 0a10    	vmov	r0, s4
    19f6: eeb0 2a41    	vmov.f32	s4, s2
    19fa: ee13 2a10    	vmov	r2, s6
    19fe: bfa8         	it	ge
    1a00: 4610         	movge	r0, r2
    1a02: ee00 0a10    	vmov	s0, r0
    1a06: eeb8 0ac0    	vcvt.f32.s32	s0, s0
    1a0a: ee00 2a63    	vmls.f32	s4, s0, s7
    1a0e: ee22 0a2e    	vmul.f32	s0, s4, s29
    1a12: eeb4 ba40    	vcmp.f32	s22, s0
    1a16: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a1a: fe3b 0a00    	vselgt.f32	s0, s22, s0
    1a1e: eeb4 0a65    	vcmp.f32	s0, s11
    1a22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a26: eeb4 1a61    	vcmp.f32	s2, s3
    1a2a: eeb1 1a41    	vneg.f32	s2, s2
    1a2e: fe35 0a80    	vselgt.f32	s0, s11, s0
    1a32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a36: fe30 1a81    	vselgt.f32	s2, s1, s2
    1a3a: eeb4 1a61    	vcmp.f32	s2, s3
    1a3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a42: fe31 1a81    	vselgt.f32	s2, s3, s2
    1a46: ee21 2a22    	vmul.f32	s4, s2, s5
    1a4a: ee32 3a0e    	vadd.f32	s6, s4, s28
    1a4e: eeb5 2a40    	vcmp.f32	s4, #0
    1a52: ee32 4a2e    	vadd.f32	s8, s4, s29
    1a56: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a5a: eebd 3ac3    	vcvt.s32.f32	s6, s6
    1a5e: eebd 4ac4    	vcvt.s32.f32	s8, s8
    1a62: ee13 2a10    	vmov	r2, s6
    1a66: ee14 3a10    	vmov	r3, s8
    1a6a: bfa8         	it	ge
    1a6c: 461a         	movge	r2, r3
    1a6e: ee02 2a10    	vmov	s4, r2
    1a72: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    1a76: ee02 1a63    	vmls.f32	s2, s4, s7
    1a7a: ed9e 2ad6    	vldr	s4, [lr, #856]
    1a7e: ee32 3a24    	vadd.f32	s6, s4, s9
    1a82: f50d 6e80    	add.w	lr, sp, #0x400
    1a86: ee34 2ac2    	vsub.f32	s4, s9, s4
    1a8a: ee83 3a07    	vdiv.f32	s6, s6, s14
    1a8e: ee82 2a07    	vdiv.f32	s4, s4, s14
    1a92: ee21 1a2e    	vmul.f32	s2, s2, s29
    1a96: eeb4 ba41    	vcmp.f32	s22, s2
    1a9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1a9e: fe3b 1a01    	vselgt.f32	s2, s22, s2
    1aa2: eeb4 1a65    	vcmp.f32	s2, s11
    1aa6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1aaa: eef4 0a43    	vcmp.f32	s1, s6
    1aae: fe35 1a81    	vselgt.f32	s2, s11, s2
    1ab2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ab6: fe30 3a83    	vselgt.f32	s6, s1, s6
    1aba: eeb4 3a61    	vcmp.f32	s6, s3
    1abe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ac2: fe31 3a83    	vselgt.f32	s6, s3, s6
    1ac6: ee23 4a22    	vmul.f32	s8, s6, s5
    1aca: ee34 5a0e    	vadd.f32	s10, s8, s28
    1ace: eeb5 4a40    	vcmp.f32	s8, #0
    1ad2: ee34 6a2e    	vadd.f32	s12, s8, s29
    1ad6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ada: eebd 5ac5    	vcvt.s32.f32	s10, s10
    1ade: eebd 6ac6    	vcvt.s32.f32	s12, s12
    1ae2: ee15 ca10    	vmov	r12, s10
    1ae6: ee16 3a10    	vmov	r3, s12
    1aea: bfa8         	it	ge
    1aec: 469c         	movge	r12, r3
    1aee: ee04 ca10    	vmov	s8, r12
    1af2: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    1af6: ee04 3a63    	vmls.f32	s6, s8, s7
    1afa: ee23 3a2e    	vmul.f32	s6, s6, s29
    1afe: eeb4 ba43    	vcmp.f32	s22, s6
    1b02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b06: fe3b 3a03    	vselgt.f32	s6, s22, s6
    1b0a: eeb4 3a65    	vcmp.f32	s6, s11
    1b0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b12: eef4 0a42    	vcmp.f32	s1, s4
    1b16: fe35 3a83    	vselgt.f32	s6, s11, s6
    1b1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b1e: fe30 2a82    	vselgt.f32	s4, s1, s4
    1b22: eeb4 2a61    	vcmp.f32	s4, s3
    1b26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b2a: fe31 2a82    	vselgt.f32	s4, s3, s4
    1b2e: ee22 4a22    	vmul.f32	s8, s4, s5
    1b32: ee34 5a0e    	vadd.f32	s10, s8, s28
    1b36: eeb5 4a40    	vcmp.f32	s8, #0
    1b3a: ee34 6a2e    	vadd.f32	s12, s8, s29
    1b3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1b42: eebd 5ac5    	vcvt.s32.f32	s10, s10
    1b46: eebd 6ac6    	vcvt.s32.f32	s12, s12
    1b4a: ee15 3a10    	vmov	r3, s10
    1b4e: ee16 6a10    	vmov	r6, s12
    1b52: bfa8         	it	ge
    1b54: 4633         	movge	r3, r6
    1b56: 2600         	movs	r6, #0x0
    1b58: f8cd 67d0    	str.w	r6, [sp, #0x7d0]
    1b5c: ee04 3a10    	vmov	s8, r3
    1b60: f244 4608    	movw	r6, #0x4408
    1b64: f6c4 0600    	movt	r6, #0x4800
    1b68: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    1b6c: f846 5c08    	str	r5, [r6, #-8]
    1b70: ee04 2a63    	vmls.f32	s4, s8, s7
    1b74: ed9f 4adb    	vldr	s8, [pc, #876]          @ 0x1ee4 <Reset+0x1adc>
    1b78: ee20 0a04    	vmul.f32	s0, s0, s8
    1b7c: ee21 1a04    	vmul.f32	s2, s2, s8
    1b80: ee23 3a04    	vmul.f32	s6, s6, s8
    1b84: eebd 0ac0    	vcvt.s32.f32	s0, s0
    1b88: ed06 0a01    	vstr	s0, [r6, #-4]
    1b8c: eebd 0ac1    	vcvt.s32.f32	s0, s2
    1b90: ee22 2a2e    	vmul.f32	s4, s4, s29
    1b94: edd6 3a00    	vldr	s7, [r6]
    1b98: edd6 4a00    	vldr	s9, [r6]
    1b9c: f846 5c08    	str	r5, [r6, #-8]
    1ba0: ed06 0a01    	vstr	s0, [r6, #-4]
    1ba4: eebd 0ac3    	vcvt.s32.f32	s0, s6
    1ba8: eeb4 ba42    	vcmp.f32	s22, s4
    1bac: edd6 1a00    	vldr	s3, [r6]
    1bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bb4: edd6 2a00    	vldr	s5, [r6]
    1bb8: f846 5c08    	str	r5, [r6, #-8]
    1bbc: fe3b 2a02    	vselgt.f32	s4, s22, s4
    1bc0: ed06 0a01    	vstr	s0, [r6, #-4]
    1bc4: ed96 6a00    	vldr	s12, [r6]
    1bc8: edd6 0a00    	vldr	s1, [r6]
    1bcc: f846 5c08    	str	r5, [r6, #-8]
    1bd0: f04f 557e    	mov.w	r5, #0x3f800000
    1bd4: eeb4 2a65    	vcmp.f32	s4, s11
    1bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1bdc: fe35 1a82    	vselgt.f32	s2, s11, s4
    1be0: ee21 1a04    	vmul.f32	s2, s2, s8
    1be4: eeb0 4a6d    	vmov.f32	s8, s27
    1be8: eebd 0ac1    	vcvt.s32.f32	s0, s2
    1bec: ed06 0a01    	vstr	s0, [r6, #-4]
    1bf0: ed96 5a00    	vldr	s10, [r6]
    1bf4: ed96 7a00    	vldr	s14, [r6]
    1bf8: ed9e 1ad7    	vldr	s2, [lr, #860]
    1bfc: f50d 6e80    	add.w	lr, sp, #0x400
    1c00: ed9e 2ae4    	vldr	s4, [lr, #912]
    1c04: eeb4 2a41    	vcmp.f32	s4, s2
    1c08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c0c: fe21 0a02    	vselge.f32	s0, s2, s4
    1c10: ee3e 3ac0    	vsub.f32	s6, s29, s0
    1c14: eeb8 0a00    	vmov.f32	s0, #-2.000000e+00
    1c18: eeb4 3a40    	vcmp.f32	s6, s0
    1c1c: ed9f 0ad7    	vldr	s0, [pc, #860]          @ 0x1f7c <Reset+0x1b74>
    1c20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c24: d923         	bls	0x1c6e <Reset+0x1866>   @ imm = #0x46
    1c26: eeb4 3a43    	vcmp.f32	s6, s6
    1c2a: eeb0 4a6d    	vmov.f32	s8, s27
    1c2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c32: a63c         	adr	r6, #240 <Reset+0x186a>
    1c34: fe1d 0a83    	vselvs.f32	s0, s27, s6
    1c38: eeb5 0a40    	vcmp.f32	s0, #0
    1c3c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c40: bfb8         	it	lt
    1c42: eeb0 4a40    	vmovlt.f32	s8, s0
    1c46: eeb0 0a6f    	vmov.f32	s0, s31
    1c4a: eeb5 3a40    	vcmp.f32	s6, #0
    1c4e: ee04 0a2e    	vmla.f32	s0, s8, s29
    1c52: ed9f 4acb    	vldr	s8, [pc, #812]          @ 0x1f80 <Reset+0x1b78>
    1c56: ed9f 3ac9    	vldr	s6, [pc, #804]          @ 0x1f7c <Reset+0x1b74>
    1c5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c5e: bf48         	it	mi
    1c60: 3604         	addmi	r6, #0x4
    1c62: ee20 0a04    	vmul.f32	s0, s0, s8
    1c66: ed96 4a00    	vldr	s8, [r6]
    1c6a: fe80 0a03    	vmaxnm.f32	s0, s0, s6
    1c6e: ee31 3a42    	vsub.f32	s6, s2, s4
    1c72: f50d 6e80    	add.w	lr, sp, #0x400
    1c76: eeb4 2a41    	vcmp.f32	s4, s2
    1c7a: ed8d 3afa    	vstr	s6, [sp, #1000]
    1c7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1c82: ee23 1a04    	vmul.f32	s2, s6, s8
    1c86: eef0 ca6d    	vmov.f32	s25, s27
    1c8a: eef0 6a6d    	vmov.f32	s13, s27
    1c8e: eeb0 3a6d    	vmov.f32	s6, s27
    1c92: eeb0 4a6d    	vmov.f32	s8, s27
    1c96: fe2d 2a81    	vselge.f32	s4, s27, s2
    1c9a: ed8e 2a03    	vstr	s4, [lr, #12]
    1c9e: f50d 6e80    	add.w	lr, sp, #0x400
    1ca2: fe21 1a2d    	vselge.f32	s2, s2, s27
    1ca6: edde eaea    	vldr	s29, [lr, #936]
    1caa: ed8d 1af8    	vstr	s2, [sp, #992]
    1cae: eef5 ea40    	vcmp.f32	s29, #0
    1cb2: eeb0 1a6d    	vmov.f32	s2, s27
    1cb6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cba: bf48         	it	mi
    1cbc: eeb0 1a4b    	vmovmi.f32	s2, s22
    1cc0: eeb0 2aee    	vabs.f32	s4, s29
    1cc4: fe3f 1a81    	vselgt.f32	s2, s31, s2
    1cc8: eeb4 2a4c    	vcmp.f32	s4, s24
    1ccc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cd0: f280 807c    	bge.w	0x1dcc <Reset+0x19c4>   @ imm = #0xf8
    1cd4: ed9f 3acf    	vldr	s6, [pc, #828]          @ 0x2014 <Reset+0x1c0c>
    1cd8: eeb0 4a6d    	vmov.f32	s8, s27
    1cdc: eeb4 2a43    	vcmp.f32	s4, s6
    1ce0: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    1ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1ce8: d92e         	bls	0x1d48 <Reset+0x1940>   @ imm = #0x5c
    1cea: ed9f 3acb    	vldr	s6, [pc, #812]          @ 0x2018 <Reset+0x1c10>
    1cee: eeb4 2a43    	vcmp.f32	s4, s6
    1cf2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1cf6: d91b         	bls	0x1d30 <Reset+0x1928>   @ imm = #0x36
    1cf8: ed9f 3ac8    	vldr	s6, [pc, #800]          @ 0x201c <Reset+0x1c14>
    1cfc: ee32 2a03    	vadd.f32	s4, s4, s6
    1d00: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    1d04: ed9f 4aea    	vldr	s8, [pc, #936]          @ 0x20b0 <Reset+0x1ca8>
    1d08: e01a         	b	0x1d40 <Reset+0x1938>   @ imm = #0x34
    1d0a: bf00         	nop
    1d0c: f5 4a 39 3d  	.word	0x3d394af5
    1d10: 00 00 a0 c2  	.word	0xc2a00000
    1d14: 00 00 a0 42  	.word	0x42a00000
    1d18: 3b aa b8 3f  	.word	0x3fb8aa3b
    1d1c: 18 72 31 3f  	.word	0x3f317218
    1d20: fe ff 7f 3f  	.word	0x3f7ffffe
    1d24: 00 00 00 00  	.word	0x00000000
    1d28: 2b 18 15 3b  	.word	0x3b15182b
    1d2c: 00 bf 00 bf  	.word	0xbf00bf00
    1d30: ed9f 3ae0    	vldr	s6, [pc, #896]          @ 0x20b4 <Reset+0x1cac>
    1d34: ee32 2a03    	vadd.f32	s4, s4, s6
    1d38: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    1d3c: ed9f 4ade    	vldr	s8, [pc, #888]          @ 0x20b8 <Reset+0x1cb0>
    1d40: ee02 3a04    	vmla.f32	s6, s4, s8
    1d44: ee21 4a04    	vmul.f32	s8, s2, s8
    1d48: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    1d4c: eef1 6a44    	vneg.f32	s13, s8
    1d50: ee31 1a43    	vsub.f32	s2, s2, s6
    1d54: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    1d58: eeb5 1a40    	vcmp.f32	s2, #0
    1d5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d60: d92e         	bls	0x1dc0 <Reset+0x19b8>   @ imm = #0x5c
    1d62: ed99 2a03    	vldr	s4, [r9, #12]
    1d66: eef0 5a6f    	vmov.f32	s11, s31
    1d6a: ee82 3a01    	vdiv.f32	s6, s4, s2
    1d6e: ee23 3a03    	vmul.f32	s6, s6, s6
    1d72: ee23 3a03    	vmul.f32	s6, s6, s6
    1d76: ee23 3a03    	vmul.f32	s6, s6, s6
    1d7a: ee23 3a03    	vmul.f32	s6, s6, s6
    1d7e: ee33 4a2f    	vadd.f32	s8, s6, s31
    1d82: eeb4 4a6f    	vcmp.f32	s8, s31
    1d86: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1d8a: d009         	beq	0x1da0 <Reset+0x1998>   @ imm = #0x12
    1d8c: eef0 5a44    	vmov.f32	s11, s8
    1d90: eef1 5ae5    	vsqrt.f32	s11, s11
    1d94: eef1 5ae5    	vsqrt.f32	s11, s11
    1d98: eef1 5ae5    	vsqrt.f32	s11, s11
    1d9c: eef1 5ae5    	vsqrt.f32	s11, s11
    1da0: eecf 5aa5    	vdiv.f32	s11, s31, s11
    1da4: ee22 3a03    	vmul.f32	s6, s4, s6
    1da8: ee85 4a84    	vdiv.f32	s8, s11, s8
    1dac: ee83 1a01    	vdiv.f32	s2, s6, s2
    1db0: ee22 3a25    	vmul.f32	s6, s4, s11
    1db4: ee61 ca04    	vmul.f32	s25, s2, s8
    1db8: e008         	b	0x1dcc <Reset+0x19c4>   @ imm = #0x10
    1dba: bf00         	nop
    1dbc: bf00         	nop
    1dbe: bf00         	nop
    1dc0: eef0 ca6d    	vmov.f32	s25, s27
    1dc4: eeb0 3a6d    	vmov.f32	s6, s27
    1dc8: eeb0 4a6d    	vmov.f32	s8, s27
    1dcc: f50d 6e80    	add.w	lr, sp, #0x400
    1dd0: ed99 1a00    	vldr	s2, [r9]
    1dd4: eeb5 1a40    	vcmp.f32	s2, #0
    1dd8: eeb0 2ac1    	vabs.f32	s4, s2
    1ddc: ed8e 3a09    	vstr	s6, [lr, #36]
    1de0: f50d 6e80    	add.w	lr, sp, #0x400
    1de4: edcd 6af5    	vstr	s13, [sp, #980]
    1de8: eef0 7a6d    	vmov.f32	s15, s27
    1dec: ed8e 4a0a    	vstr	s8, [lr, #40]
    1df0: f50d 6e80    	add.w	lr, sp, #0x400
    1df4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1df8: ed8e 1a02    	vstr	s2, [lr, #8]
    1dfc: eeb0 1a6d    	vmov.f32	s2, s27
    1e00: bf48         	it	mi
    1e02: eeb0 1a4b    	vmovmi.f32	s2, s22
    1e06: eef0 6a6d    	vmov.f32	s13, s27
    1e0a: eeb0 3a6d    	vmov.f32	s6, s27
    1e0e: fe3f 1a81    	vselgt.f32	s2, s31, s2
    1e12: eeb0 4a6d    	vmov.f32	s8, s27
    1e16: eeb4 2a4c    	vcmp.f32	s4, s24
    1e1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e1e: da69         	bge	0x1ef4 <Reset+0x1aec>   @ imm = #0xd2
    1e20: ed9f 3a7c    	vldr	s6, [pc, #496]          @ 0x2014 <Reset+0x1c0c>
    1e24: eeb0 4a6d    	vmov.f32	s8, s27
    1e28: eeb4 2a43    	vcmp.f32	s4, s6
    1e2c: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    1e30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e34: d91c         	bls	0x1e70 <Reset+0x1a68>   @ imm = #0x38
    1e36: ed9f 3a78    	vldr	s6, [pc, #480]          @ 0x2018 <Reset+0x1c10>
    1e3a: eeb4 2a43    	vcmp.f32	s4, s6
    1e3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e42: d909         	bls	0x1e58 <Reset+0x1a50>   @ imm = #0x12
    1e44: ed9f 3a99    	vldr	s6, [pc, #612]          @ 0x20ac <Reset+0x1ca4>
    1e48: ee32 2a03    	vadd.f32	s4, s4, s6
    1e4c: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    1e50: ed9f 4a97    	vldr	s8, [pc, #604]          @ 0x20b0 <Reset+0x1ca8>
    1e54: e008         	b	0x1e68 <Reset+0x1a60>   @ imm = #0x10
    1e56: bf00         	nop
    1e58: ed9f 3a96    	vldr	s6, [pc, #600]          @ 0x20b4 <Reset+0x1cac>
    1e5c: ee32 2a03    	vadd.f32	s4, s4, s6
    1e60: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    1e64: ed9f 4a94    	vldr	s8, [pc, #592]          @ 0x20b8 <Reset+0x1cb0>
    1e68: ee02 3a04    	vmla.f32	s6, s4, s8
    1e6c: ee21 4a04    	vmul.f32	s8, s2, s8
    1e70: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    1e74: eef1 6a44    	vneg.f32	s13, s8
    1e78: ee31 1a43    	vsub.f32	s2, s2, s6
    1e7c: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    1e80: eeb5 1a40    	vcmp.f32	s2, #0
    1e84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1e88: d92e         	bls	0x1ee8 <Reset+0x1ae0>   @ imm = #0x5c
    1e8a: ed99 2a04    	vldr	s4, [r9, #16]
    1e8e: eef0 7a6f    	vmov.f32	s15, s31
    1e92: ee82 3a01    	vdiv.f32	s6, s4, s2
    1e96: ee23 3a03    	vmul.f32	s6, s6, s6
    1e9a: ee23 3a03    	vmul.f32	s6, s6, s6
    1e9e: ee23 3a03    	vmul.f32	s6, s6, s6
    1ea2: ee23 3a03    	vmul.f32	s6, s6, s6
    1ea6: ee33 4a2f    	vadd.f32	s8, s6, s31
    1eaa: eeb4 4a6f    	vcmp.f32	s8, s31
    1eae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1eb2: d009         	beq	0x1ec8 <Reset+0x1ac0>   @ imm = #0x12
    1eb4: eef0 7a44    	vmov.f32	s15, s8
    1eb8: eef1 7ae7    	vsqrt.f32	s15, s15
    1ebc: eef1 7ae7    	vsqrt.f32	s15, s15
    1ec0: eef1 7ae7    	vsqrt.f32	s15, s15
    1ec4: eef1 7ae7    	vsqrt.f32	s15, s15
    1ec8: eecf 7aa7    	vdiv.f32	s15, s31, s15
    1ecc: ee22 3a03    	vmul.f32	s6, s4, s6
    1ed0: ee87 4a84    	vdiv.f32	s8, s15, s8
    1ed4: ee83 1a01    	vdiv.f32	s2, s6, s2
    1ed8: ee22 3a27    	vmul.f32	s6, s4, s15
    1edc: ee61 7a04    	vmul.f32	s15, s2, s8
    1ee0: e008         	b	0x1ef4 <Reset+0x1aec>   @ imm = #0x10
    1ee2: bf00         	nop
    1ee4: 00 00 00 4f  	.word	0x4f000000
    1ee8: eef0 7a6d    	vmov.f32	s15, s27
    1eec: eeb0 3a6d    	vmov.f32	s6, s27
    1ef0: eeb0 4a6d    	vmov.f32	s8, s27
    1ef4: f50d 6e80    	add.w	lr, sp, #0x400
    1ef8: ed99 1a01    	vldr	s2, [r9, #4]
    1efc: eeb5 1a40    	vcmp.f32	s2, #0
    1f00: eeb0 2ac1    	vabs.f32	s4, s2
    1f04: ed8e 3a05    	vstr	s6, [lr, #20]
    1f08: f50d 6e80    	add.w	lr, sp, #0x400
    1f0c: eeb0 1a6d    	vmov.f32	s2, s27
    1f10: ed8d aadd    	vstr	s20, [sp, #884]
    1f14: ed8e 4a08    	vstr	s8, [lr, #32]
    1f18: eeb0 aa6d    	vmov.f32	s20, s27
    1f1c: ed8d 8ade    	vstr	s16, [sp, #888]
    1f20: eeb0 9a6d    	vmov.f32	s18, s27
    1f24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f28: bf48         	it	mi
    1f2a: eeb0 1a4b    	vmovmi.f32	s2, s22
    1f2e: eeb0 3a6d    	vmov.f32	s6, s27
    1f32: eeb0 4a6d    	vmov.f32	s8, s27
    1f36: fe3f 1a81    	vselgt.f32	s2, s31, s2
    1f3a: eeb4 2a4c    	vcmp.f32	s4, s24
    1f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f42: da73         	bge	0x202c <Reset+0x1c24>   @ imm = #0xe6
    1f44: ed9f 3a33    	vldr	s6, [pc, #204]          @ 0x2014 <Reset+0x1c0c>
    1f48: eeb0 4a6d    	vmov.f32	s8, s27
    1f4c: eeb4 2a43    	vcmp.f32	s4, s6
    1f50: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    1f54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f58: d922         	bls	0x1fa0 <Reset+0x1b98>   @ imm = #0x44
    1f5a: ed9f 3a2f    	vldr	s6, [pc, #188]          @ 0x2018 <Reset+0x1c10>
    1f5e: eeb4 2a43    	vcmp.f32	s4, s6
    1f62: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1f66: d90f         	bls	0x1f88 <Reset+0x1b80>   @ imm = #0x1e
    1f68: ed9f 3a50    	vldr	s6, [pc, #320]          @ 0x20ac <Reset+0x1ca4>
    1f6c: ee32 2a03    	vadd.f32	s4, s4, s6
    1f70: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    1f74: ed9f 4a4e    	vldr	s8, [pc, #312]          @ 0x20b0 <Reset+0x1ca8>
    1f78: e00e         	b	0x1f98 <Reset+0x1b90>   @ imm = #0x1c
    1f7a: bf00         	nop
    1f7c: 95 bf d6 33  	.word	0x33d6bf95
    1f80: 2b 18 95 3b  	.word	0x3b95182b
    1f84: 00 bf 00 bf  	.word	0xbf00bf00
    1f88: ed9f 3a4a    	vldr	s6, [pc, #296]          @ 0x20b4 <Reset+0x1cac>
    1f8c: ee32 2a03    	vadd.f32	s4, s4, s6
    1f90: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    1f94: ed9f 4a48    	vldr	s8, [pc, #288]          @ 0x20b8 <Reset+0x1cb0>
    1f98: ee02 3a04    	vmla.f32	s6, s4, s8
    1f9c: ee21 4a04    	vmul.f32	s8, s2, s8
    1fa0: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    1fa4: eeb1 9a44    	vneg.f32	s18, s8
    1fa8: ee31 1a43    	vsub.f32	s2, s2, s6
    1fac: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    1fb0: eeb5 1a40    	vcmp.f32	s2, #0
    1fb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fb8: d932         	bls	0x2020 <Reset+0x1c18>   @ imm = #0x64
    1fba: ed99 2a05    	vldr	s4, [r9, #20]
    1fbe: eeb0 8a6f    	vmov.f32	s16, s31
    1fc2: ee82 3a01    	vdiv.f32	s6, s4, s2
    1fc6: ee23 3a03    	vmul.f32	s6, s6, s6
    1fca: ee23 3a03    	vmul.f32	s6, s6, s6
    1fce: ee23 3a03    	vmul.f32	s6, s6, s6
    1fd2: ee23 3a03    	vmul.f32	s6, s6, s6
    1fd6: ee33 4a2f    	vadd.f32	s8, s6, s31
    1fda: eeb4 4a6f    	vcmp.f32	s8, s31
    1fde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    1fe2: d009         	beq	0x1ff8 <Reset+0x1bf0>   @ imm = #0x12
    1fe4: eeb0 8a44    	vmov.f32	s16, s8
    1fe8: eeb1 8ac8    	vsqrt.f32	s16, s16
    1fec: eeb1 8ac8    	vsqrt.f32	s16, s16
    1ff0: eeb1 8ac8    	vsqrt.f32	s16, s16
    1ff4: eeb1 8ac8    	vsqrt.f32	s16, s16
    1ff8: ee8f 8a88    	vdiv.f32	s16, s31, s16
    1ffc: ee22 3a03    	vmul.f32	s6, s4, s6
    2000: ee88 4a04    	vdiv.f32	s8, s16, s8
    2004: ee83 1a01    	vdiv.f32	s2, s6, s2
    2008: ee22 3a08    	vmul.f32	s6, s4, s16
    200c: ee21 aa04    	vmul.f32	s20, s2, s8
    2010: e00c         	b	0x202c <Reset+0x1c24>   @ imm = #0x18
    2012: bf00         	nop
    2014: 7c f2 b0 3a  	.word	0x3ab0f27c
    2018: a6 9b c4 3b  	.word	0x3bc49ba6
    201c: a6 9b c4 bb  	.word	0xbbc49ba6
    2020: eeb0 aa6d    	vmov.f32	s20, s27
    2024: eeb0 3a6d    	vmov.f32	s6, s27
    2028: eeb0 4a6d    	vmov.f32	s8, s27
    202c: f50d 6e80    	add.w	lr, sp, #0x400
    2030: ed99 1a02    	vldr	s2, [r9, #8]
    2034: eeb5 1a40    	vcmp.f32	s2, #0
    2038: eeb0 2ac1    	vabs.f32	s4, s2
    203c: eeb0 1a6d    	vmov.f32	s2, s27
    2040: ed8d 3afe    	vstr	s6, [sp, #1016]
    2044: ed8e 4a00    	vstr	s8, [lr]
    2048: eeb0 3a6d    	vmov.f32	s6, s27
    204c: ed8d dadc    	vstr	s26, [sp, #880]
    2050: eeb0 da6d    	vmov.f32	s26, s27
    2054: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2058: bf48         	it	mi
    205a: eeb0 1a4b    	vmovmi.f32	s2, s22
    205e: eeb4 2a4c    	vcmp.f32	s4, s24
    2062: eeb0 ca6d    	vmov.f32	s24, s27
    2066: fe3f 1a81    	vselgt.f32	s2, s31, s2
    206a: eeb0 4a6d    	vmov.f32	s8, s27
    206e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2072: f280 808b    	bge.w	0x218c <Reset+0x1d84>   @ imm = #0x116
    2076: ed1f 3a19    	vldr	s6, [pc, #-100]         @ 0x2014 <Reset+0x1c0c>
    207a: eeb0 4a6d    	vmov.f32	s8, s27
    207e: eeb4 2a43    	vcmp.f32	s4, s6
    2082: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2086: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    208a: d925         	bls	0x20d8 <Reset+0x1cd0>   @ imm = #0x4a
    208c: ed1f 3a1e    	vldr	s6, [pc, #-120]         @ 0x2018 <Reset+0x1c10>
    2090: eeb4 2a43    	vcmp.f32	s4, s6
    2094: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2098: d912         	bls	0x20c0 <Reset+0x1cb8>   @ imm = #0x24
    209a: ed9f 3a04    	vldr	s6, [pc, #16]           @ 0x20ac <Reset+0x1ca4>
    209e: ee32 2a03    	vadd.f32	s4, s4, s6
    20a2: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    20a6: ed9f 4a02    	vldr	s8, [pc, #8]            @ 0x20b0 <Reset+0x1ca8>
    20aa: e011         	b	0x20d0 <Reset+0x1cc8>   @ imm = #0x22
    20ac: a6 9b c4 bb  	.word	0xbbc49ba6
    20b0: 79 78 b0 43  	.word	0x43b07879
    20b4: 7c f2 b0 ba  	.word	0xbab0f27c
    20b8: 53 4a a1 43  	.word	0x43a14a53
    20bc: 00 bf 00 bf  	.word	0xbf00bf00
    20c0: ed1f 3a04    	vldr	s6, [pc, #-16]          @ 0x20b4 <Reset+0x1cac>
    20c4: ee32 2a03    	vadd.f32	s4, s4, s6
    20c8: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    20cc: ed1f 4a06    	vldr	s8, [pc, #-24]          @ 0x20b8 <Reset+0x1cb0>
    20d0: ee02 3a04    	vmla.f32	s6, s4, s8
    20d4: ee21 4a04    	vmul.f32	s8, s2, s8
    20d8: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    20dc: eeb1 ca44    	vneg.f32	s24, s8
    20e0: ee31 1a43    	vsub.f32	s2, s2, s6
    20e4: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    20e8: eeb5 1a40    	vcmp.f32	s2, #0
    20ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    20f0: d946         	bls	0x2180 <Reset+0x1d78>   @ imm = #0x8c
    20f2: ed99 2a06    	vldr	s4, [r9, #24]
    20f6: eeb0 8a6f    	vmov.f32	s16, s31
    20fa: ee82 3a01    	vdiv.f32	s6, s4, s2
    20fe: ee23 3a03    	vmul.f32	s6, s6, s6
    2102: ee23 3a03    	vmul.f32	s6, s6, s6
    2106: ee23 3a03    	vmul.f32	s6, s6, s6
    210a: ee23 3a03    	vmul.f32	s6, s6, s6
    210e: ee33 4a2f    	vadd.f32	s8, s6, s31
    2112: eeb4 4a6f    	vcmp.f32	s8, s31
    2116: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    211a: d009         	beq	0x2130 <Reset+0x1d28>   @ imm = #0x12
    211c: eeb0 8a44    	vmov.f32	s16, s8
    2120: eeb1 8ac8    	vsqrt.f32	s16, s16
    2124: eeb1 8ac8    	vsqrt.f32	s16, s16
    2128: eeb1 8ac8    	vsqrt.f32	s16, s16
    212c: eeb1 8ac8    	vsqrt.f32	s16, s16
    2130: ee8f 8a88    	vdiv.f32	s16, s31, s16
    2134: ee22 3a03    	vmul.f32	s6, s4, s6
    2138: ee88 4a04    	vdiv.f32	s8, s16, s8
    213c: ee83 1a01    	vdiv.f32	s2, s6, s2
    2140: ee22 3a08    	vmul.f32	s6, s4, s16
    2144: ee21 da04    	vmul.f32	s26, s2, s8
    2148: e020         	b	0x218c <Reset+0x1d84>   @ imm = #0x40
    214a: bf00         	nop
    214c: 00 00 00 30  	.word	0x30000000
    2150: 00 00 70 42  	.word	0x42700000
    2154: 77 cc 2b 31  	.word	0x312bcc77
    2158: f5 4a 39 3d  	.word	0x3d394af5
    215c: 77 cc ab 31  	.word	0x31abcc77
    2160: 00 00 00 00  	.word	0x00000000
    2164: 00 00 c0 7f  	.word	0x7fc00000
    2168: 62 bf bf 4b  	.word	0x4bbfbf62
    216c: d2 53 fb 42  	.word	0x42fb53d2
    2170: 00 24 74 cb  	.word	0xcb742400
    2174: 00 a0 0c 48  	.word	0x480ca000
    2178: 00 80 bb 47  	.word	0x47bb8000
    217c: 00 24 74 4b  	.word	0x4b742400
    2180: eeb0 da6d    	vmov.f32	s26, s27
    2184: eeb0 3a6d    	vmov.f32	s6, s27
    2188: eeb0 4a6d    	vmov.f32	s8, s27
    218c: ed8d 3aea    	vstr	s6, [sp, #936]
    2190: eeb8 1ae4    	vcvt.f32.s32	s2, s9
    2194: ed8d 4af2    	vstr	s8, [sp, #968]
    2198: eeb8 2ae3    	vcvt.f32.s32	s4, s7
    219c: eeb8 3ae2    	vcvt.f32.s32	s6, s5
    21a0: ed5f 3a16    	vldr	s7, [pc, #-88]          @ 0x214c <Reset+0x1d44>
    21a4: eeb8 4ae1    	vcvt.f32.s32	s8, s3
    21a8: eb05 50c0    	add.w	r0, r5, r0, lsl #23
    21ac: ee21 1a23    	vmul.f32	s2, s2, s7
    21b0: ed8d fae1    	vstr	s30, [sp, #900]
    21b4: ee02 1a23    	vmla.f32	s2, s4, s7
    21b8: ee23 2a23    	vmul.f32	s4, s6, s7
    21bc: ee03 0a10    	vmov	s6, r0
    21c0: ee04 2a23    	vmla.f32	s4, s8, s7
    21c4: eb05 50c2    	add.w	r0, r5, r2, lsl #23
    21c8: ee04 0a10    	vmov	s8, r0
    21cc: eef8 0ae0    	vcvt.f32.s32	s1, s1
    21d0: eeb8 6ac6    	vcvt.f32.s32	s12, s12
    21d4: eeb8 5ac5    	vcvt.f32.s32	s10, s10
    21d8: ee31 1a01    	vadd.f32	s2, s2, s2
    21dc: ee60 0aa3    	vmul.f32	s1, s1, s7
    21e0: ee32 2a02    	vadd.f32	s4, s4, s4
    21e4: ee21 3a03    	vmul.f32	s6, s2, s6
    21e8: ed99 1a08    	vldr	s2, [r9, #32]
    21ec: ee46 0a23    	vmla.f32	s1, s12, s7
    21f0: ee22 2a04    	vmul.f32	s4, s4, s8
    21f4: eeb3 4a05    	vmov.f32	s8, #2.100000e+01
    21f8: eeb8 6ac7    	vcvt.f32.s32	s12, s14
    21fc: ee81 4a04    	vdiv.f32	s8, s2, s8
    2200: ee26 6a23    	vmul.f32	s12, s12, s7
    2204: ee05 6a23    	vmla.f32	s12, s10, s7
    2208: eeb0 5a6f    	vmov.f32	s10, s31
    220c: ee24 4a04    	vmul.f32	s8, s8, s8
    2210: ee33 8a42    	vsub.f32	s16, s6, s4
    2214: ee33 ba02    	vadd.f32	s22, s6, s4
    2218: eeb0 2a6f    	vmov.f32	s4, s31
    221c: ee24 4a04    	vmul.f32	s8, s8, s8
    2220: ee30 3aa0    	vadd.f32	s6, s1, s1
    2224: ee24 4a04    	vmul.f32	s8, s8, s8
    2228: ee04 5a04    	vmla.f32	s10, s8, s8
    222c: ee36 4a06    	vadd.f32	s8, s12, s12
    2230: ed99 6a07    	vldr	s12, [r9, #28]
    2234: eeb4 5a6f    	vcmp.f32	s10, s31
    2238: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    223c: d009         	beq	0x2252 <Reset+0x1e4a>   @ imm = #0x12
    223e: eeb0 2a45    	vmov.f32	s4, s10
    2242: eeb1 2ac2    	vsqrt.f32	s4, s4
    2246: eeb1 2ac2    	vsqrt.f32	s4, s4
    224a: eeb1 2ac2    	vsqrt.f32	s4, s4
    224e: eeb1 2ac2    	vsqrt.f32	s4, s4
    2252: eecf 0a82    	vdiv.f32	s1, s31, s4
    2256: eeb3 2a08    	vmov.f32	s4, #2.400000e+01
    225a: eb05 52c3    	add.w	r2, r5, r3, lsl #23
    225e: edcd aae0    	vstr	s21, [sp, #896]
    2262: ee0f 2a10    	vmov	s30, r2
    2266: eb05 50cc    	add.w	r0, r5, r12, lsl #23
    226a: ee21 7a20    	vmul.f32	s14, s2, s1
    226e: ee04 0a90    	vmov	s9, r0
    2272: edcd badf    	vstr	s23, [sp, #892]
    2276: ee24 4a0f    	vmul.f32	s8, s8, s30
    227a: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    227e: eeb0 1ac7    	vabs.f32	s2, s14
    2282: ee23 3a24    	vmul.f32	s6, s6, s9
    2286: eef0 4a6f    	vmov.f32	s9, s31
    228a: ee72 da41    	vsub.f32	s27, s4, s2
    228e: eeb2 1a00    	vmov.f32	s2, #8.000000e+00
    2292: fecd 3a81    	vmaxnm.f32	s7, s27, s2
    2296: ed1f 1a52    	vldr	s2, [pc, #-328]         @ 0x2150 <Reset+0x1d48>
    229a: ee81 2a23    	vdiv.f32	s4, s2, s7
    229e: eeb0 1ac6    	vabs.f32	s2, s12
    22a2: fec2 1a69    	vminnm.f32	s3, s4, s19
    22a6: ee81 1a21    	vdiv.f32	s2, s2, s3
    22aa: ee21 1a01    	vmul.f32	s2, s2, s2
    22ae: ee21 1a01    	vmul.f32	s2, s2, s2
    22b2: ee21 1a01    	vmul.f32	s2, s2, s2
    22b6: ee61 2a01    	vmul.f32	s5, s2, s2
    22ba: ee28 1a0f    	vmul.f32	s2, s16, s30
    22be: ee2b 8a0f    	vmul.f32	s16, s22, s30
    22c2: ee72 aaaf    	vadd.f32	s21, s5, s31
    22c6: eeb1 fa40    	vneg.f32	s30, s0
    22ca: eef4 aa6f    	vcmp.f32	s21, s31
    22ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    22d2: d009         	beq	0x22e8 <Reset+0x1ee0>   @ imm = #0x12
    22d4: eef0 4a6a    	vmov.f32	s9, s21
    22d8: eef1 4ae4    	vsqrt.f32	s9, s9
    22dc: eef1 4ae4    	vsqrt.f32	s9, s9
    22e0: eef1 4ae4    	vsqrt.f32	s9, s9
    22e4: eef1 4ae4    	vsqrt.f32	s9, s9
    22e8: ed1f ea66    	vldr	s28, [pc, #-408]        @ 0x2154 <Reset+0x1d4c>
    22ec: ee66 6aa7    	vmul.f32	s13, s13, s15
    22f0: ee64 8a0e    	vmul.f32	s17, s8, s28
    22f4: ed5f fa68    	vldr	s31, [pc, #-416]        @ 0x2158 <Reset+0x1d50>
    22f8: f50d 6e80    	add.w	lr, sp, #0x400
    22fc: edcd 6ae5    	vstr	s13, [sp, #916]
    2300: ee69 6a0a    	vmul.f32	s13, s18, s20
    2304: ed5f 5a6b    	vldr	s11, [pc, #-428]        @ 0x215c <Reset+0x1d54>
    2308: eec8 8aaf    	vdiv.f32	s17, s17, s31
    230c: edcd 6ae6    	vstr	s13, [sp, #920]
    2310: ee6c 6a0d    	vmul.f32	s13, s24, s26
    2314: edcd 8afd    	vstr	s17, [sp, #1012]
    2318: edde 8a03    	vldr	s17, [lr, #12]
    231c: f50d 6e80    	add.w	lr, sp, #0x400
    2320: edcd 6ae8    	vstr	s13, [sp, #928]
    2324: eddd 6af8    	vldr	s13, [sp, #992]
    2328: eeb4 2a69    	vcmp.f32	s4, s19
    232c: eebf 2a00    	vmov.f32	s4, #-1.000000e+00
    2330: ee3f fa68    	vsub.f32	s30, s30, s17
    2334: ee70 6a66    	vsub.f32	s13, s0, s13
    2338: ed8e fa03    	vstr	s30, [lr, #12]
    233c: ee28 8a25    	vmul.f32	s16, s16, s11
    2340: ed9d faf5    	vldr	s30, [sp, #980]
    2344: ee63 ba0e    	vmul.f32	s23, s6, s28
    2348: edcd 6af8    	vstr	s13, [sp, #992]
    234c: eddd 6afa    	vldr	s13, [sp, #1000]
    2350: ee2f fa2c    	vmul.f32	s30, s30, s25
    2354: ee66 ca80    	vmul.f32	s25, s13, s0
    2358: ed8d fae2    	vstr	s30, [sp, #904]
    235c: ee33 0a02    	vadd.f32	s0, s6, s4
    2360: ee34 2a02    	vadd.f32	s4, s8, s4
    2364: ee88 ba2f    	vdiv.f32	s22, s16, s31
    2368: ee8b 8aaf    	vdiv.f32	s16, s23, s31
    236c: ed5f fa84    	vldr	s31, [pc, #-528]        @ 0x2160 <Reset+0x1d58>
    2370: ee21 aa25    	vmul.f32	s20, s2, s11
    2374: ee20 da0e    	vmul.f32	s26, s0, s28
    2378: eeb0 0a6f    	vmov.f32	s0, s31
    237c: ee22 9a0e    	vmul.f32	s18, s4, s28
    2380: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2384: d525         	bpl	0x23d2 <Reset+0x1fca>   @ imm = #0x4a
    2386: eeb0 0a6f    	vmov.f32	s0, s31
    238a: eeb5 7a40    	vcmp.f32	s14, #0
    238e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2392: d01e         	beq	0x23d2 <Reset+0x1fca>   @ imm = #0x3c
    2394: eeb2 0a00    	vmov.f32	s0, #8.000000e+00
    2398: eef4 da40    	vcmp.f32	s27, s0
    239c: eeb0 0a6f    	vmov.f32	s0, s31
    23a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23a4: dd15         	ble	0x23d2 <Reset+0x1fca>   @ imm = #0x2a
    23a6: ee17 0a10    	vmov	r0, s14
    23aa: ed1f 1a97    	vldr	s2, [pc, #-604]         @ 0x2150 <Reset+0x1d48>
    23ae: eeb4 7a47    	vcmp.f32	s14, s14
    23b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23b6: f365 001e    	bfi	r0, r5, #0, #31
    23ba: ee00 0a10    	vmov	s0, r0
    23be: ee20 0a01    	vmul.f32	s0, s0, s2
    23c2: ed1f 1a98    	vldr	s2, [pc, #-608]         @ 0x2164 <Reset+0x1d5c>
    23c6: fe11 0a00    	vselvs.f32	s0, s2, s0
    23ca: ee23 1aa3    	vmul.f32	s2, s7, s7
    23ce: ee80 0a01    	vdiv.f32	s0, s0, s2
    23d2: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    23d6: ee82 3aa1    	vdiv.f32	s6, s5, s3
    23da: eeb1 4a62    	vneg.f32	s8, s5
    23de: eeb5 6a40    	vcmp.f32	s12, #0
    23e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    23e6: ee81 1a24    	vdiv.f32	s2, s2, s9
    23ea: f1a7 05f0    	sub.w	r5, r7, #0xf0
    23ee: ee84 4a06    	vdiv.f32	s8, s8, s12
    23f2: 4628         	mov	r0, r5
    23f4: 4622         	mov	r2, r4
    23f6: f8cd a3d4    	str.w	r10, [sp, #0x3d4]
    23fa: ee81 2a2a    	vdiv.f32	s4, s2, s21
    23fe: 460e         	mov	r6, r1
    2400: ee27 ca01    	vmul.f32	s24, s14, s2
    2404: ee23 3a02    	vmul.f32	s6, s6, s4
    2408: ee27 3a03    	vmul.f32	s6, s14, s6
    240c: ee03 1a00    	vmla.f32	s2, s6, s0
    2410: ee24 0a02    	vmul.f32	s0, s8, s4
    2414: ee80 2a85    	vdiv.f32	s4, s1, s10
    2418: fe0f 0a80    	vseleq.f32	s0, s31, s0
    241c: ee62 da01    	vmul.f32	s27, s4, s2
    2420: ee27 0a00    	vmul.f32	s0, s14, s0
    2424: ed8d 0afa    	vstr	s0, [sp, #1000]
    2428: f008 fd32    	bl	0xae90 <orange_dsp::generated_model::assemble_linear_kcl> @ imm = #0x8a64
    242c: f50d 6e80    	add.w	lr, sp, #0x400
    2430: ed17 2a23    	vldr	s4, [r7, #-140]
    2434: ed5f 4ab4    	vldr	s9, [pc, #-720]         @ 0x2168 <Reset+0x1d60>
    2438: ed99 5a03    	vldr	s10, [r9, #12]
    243c: ed9e 0abf    	vldr	s0, [lr, #764]
    2440: f50d 6e80    	add.w	lr, sp, #0x400
    2444: ed5f 5ab7    	vldr	s11, [pc, #-732]        @ 0x216c <Reset+0x1d64>
    2448: edd9 0a04    	vldr	s1, [r9, #16]
    244c: ed9e 1ac1    	vldr	s2, [lr, #772]
    2450: f50d 6e80    	add.w	lr, sp, #0x400
    2454: ee31 0a40    	vsub.f32	s0, s2, s0
    2458: ed5f 6abb    	vldr	s13, [pc, #-748]        @ 0x2170 <Reset+0x1d68>
    245c: ed9e 1ae7    	vldr	s2, [lr, #924]
    2460: f50d 6e80    	add.w	lr, sp, #0x400
    2464: ee31 3a02    	vadd.f32	s6, s2, s4
    2468: ed17 1a36    	vldr	s2, [r7, #-216]
    246c: ee20 2a24    	vmul.f32	s4, s0, s9
    2470: ed9e 0ae8    	vldr	s0, [lr, #928]
    2474: f50d 6e80    	add.w	lr, sp, #0x400
    2478: ee30 6a01    	vadd.f32	s12, s0, s2
    247c: ee3d 0a49    	vsub.f32	s0, s26, s18
    2480: ed17 1a35    	vldr	s2, [r7, #-212]
    2484: ed9e 4ae9    	vldr	s8, [lr, #932]
    2488: f50d 6e80    	add.w	lr, sp, #0x400
    248c: ee05 2a65    	vmls.f32	s4, s10, s11
    2490: ed5f 9ac8    	vldr	s19, [pc, #-800]        @ 0x2174 <Reset+0x1d6c>
    2494: ee34 4a01    	vadd.f32	s8, s8, s2
    2498: ed17 1a22    	vldr	s2, [r7, #-136]
    249c: ee31 0a00    	vadd.f32	s0, s2, s0
    24a0: ed9e 1ac8    	vldr	s2, [lr, #800]
    24a4: f50d 6e80    	add.w	lr, sp, #0x400
    24a8: ed5f aacd    	vldr	s21, [pc, #-820]        @ 0x2178 <Reset+0x1d70>
    24ac: ee25 5a29    	vmul.f32	s10, s10, s19
    24b0: ed5f 7ace    	vldr	s15, [pc, #-824]        @ 0x217c <Reset+0x1d74>
    24b4: ed9e 7aca    	vldr	s14, [lr, #808]
    24b8: f50d 6e80    	add.w	lr, sp, #0x400
    24bc: ee37 7a41    	vsub.f32	s14, s14, s2
    24c0: ed07 3a23    	vstr	s6, [r7, #-140]
    24c4: eef4 6a42    	vcmp.f32	s13, s4
    24c8: edde 1ab6    	vldr	s3, [lr, #728]
    24cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    24d0: ee27 7a24    	vmul.f32	s14, s14, s9
    24d4: f50d 6e80    	add.w	lr, sp, #0x400
    24d8: ee00 7ae5    	vmls.f32	s14, s1, s11
    24dc: ed07 6a36    	vstr	s12, [r7, #-216]
    24e0: fe36 2a82    	vselgt.f32	s4, s13, s4
    24e4: ed99 6a01    	vldr	s12, [r9, #4]
    24e8: ee01 5aea    	vmls.f32	s10, s3, s21
    24ec: edde 1ab7    	vldr	s3, [lr, #732]
    24f0: f50d 6e80    	add.w	lr, sp, #0x400
    24f4: ee60 0aa9    	vmul.f32	s1, s1, s19
    24f8: eeb4 2a67    	vcmp.f32	s4, s15
    24fc: ed07 4a35    	vstr	s8, [r7, #-212]
    2500: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2504: ee41 0aea    	vmls.f32	s1, s3, s21
    2508: edde 1acc    	vldr	s3, [lr, #816]
    250c: f50d 6e80    	add.w	lr, sp, #0x400
    2510: eef4 6a47    	vcmp.f32	s13, s14
    2514: fe37 2a82    	vselgt.f32	s4, s15, s4
    2518: ed07 0a22    	vstr	s0, [r7, #-136]
    251c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2520: edde 2ace    	vldr	s5, [lr, #824]
    2524: f50d 6e80    	add.w	lr, sp, #0x400
    2528: ee72 1ae1    	vsub.f32	s3, s5, s3
    252c: edd9 2a05    	vldr	s5, [r9, #20]
    2530: fe36 7a87    	vselgt.f32	s14, s13, s14
    2534: edde 3a02    	vldr	s7, [lr, #8]
    2538: f50d 6e80    	add.w	lr, sp, #0x400
    253c: ee35 5a42    	vsub.f32	s10, s10, s4
    2540: ee61 1aa4    	vmul.f32	s3, s3, s9
    2544: ed17 2a2f    	vldr	s4, [r7, #-188]
    2548: ee42 1ae5    	vmls.f32	s3, s5, s11
    254c: ed17 1a38    	vldr	s2, [r7, #-224]
    2550: eeb4 7a67    	vcmp.f32	s14, s15
    2554: ed07 5a0a    	vstr	s10, [r7, #-40]
    2558: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    255c: ee33 2a82    	vadd.f32	s4, s7, s4
    2560: edde 3ad5    	vldr	s7, [lr, #852]
    2564: f50d 6e80    	add.w	lr, sp, #0x400
    2568: ee3e 1a81    	vadd.f32	s2, s29, s2
    256c: fe37 7a87    	vselgt.f32	s14, s15, s14
    2570: ed07 1a38    	vstr	s2, [r7, #-224]
    2574: ed9e 3a06    	vldr	s6, [lr, #24]
    2578: eef4 6a61    	vcmp.f32	s13, s3
    257c: ee33 3ac3    	vsub.f32	s6, s7, s6
    2580: f50d 6e80    	add.w	lr, sp, #0x400
    2584: ed07 3a11    	vstr	s6, [r7, #-68]
    2588: ee30 3ac7    	vsub.f32	s6, s1, s14
    258c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2590: ed17 7a2b    	vldr	s14, [r7, #-172]
    2594: ed57 0a28    	vldr	s1, [r7, #-160]
    2598: ee36 4a07    	vadd.f32	s8, s12, s14
    259c: ed17 7a29    	vldr	s14, [r7, #-164]
    25a0: fe36 6aa1    	vselgt.f32	s12, s13, s3
    25a4: ed57 1a21    	vldr	s3, [r7, #-132]
    25a8: ee3a 7a07    	vadd.f32	s14, s20, s14
    25ac: ed99 ea08    	vldr	s28, [r9, #32]
    25b0: ed07 7a29    	vstr	s14, [r7, #-164]
    25b4: ee30 7aca    	vsub.f32	s14, s1, s20
    25b8: edde 0ab8    	vldr	s1, [lr, #736]
    25bc: ed07 7a28    	vstr	s14, [r7, #-160]
    25c0: ee22 7aa9    	vmul.f32	s14, s5, s19
    25c4: f50d 6e80    	add.w	lr, sp, #0x400
    25c8: ee00 7aea    	vmls.f32	s14, s1, s21
    25cc: ed57 2a14    	vldr	s5, [r7, #-80]
    25d0: eeb4 6a67    	vcmp.f32	s12, s15
    25d4: edde 0ad1    	vldr	s1, [lr, #836]
    25d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    25dc: ee3c 0aa1    	vadd.f32	s0, s25, s3
    25e0: f50d 6e80    	add.w	lr, sp, #0x400
    25e4: fe37 6a86    	vselgt.f32	s12, s15, s12
    25e8: ed07 0a21    	vstr	s0, [r7, #-132]
    25ec: ee32 0aec    	vsub.f32	s0, s5, s25
    25f0: edd9 1a06    	vldr	s3, [r9, #24]
    25f4: ed07 0a14    	vstr	s0, [r7, #-80]
    25f8: ee7f 0ae0    	vsub.f32	s1, s31, s1
    25fc: ee37 0a46    	vsub.f32	s0, s14, s12
    2600: ed9e 7ab9    	vldr	s14, [lr, #740]
    2604: f50d 6e80    	add.w	lr, sp, #0x400
    2608: ee21 6aa9    	vmul.f32	s12, s3, s19
    260c: ee07 6a6a    	vmls.f32	s12, s14, s21
    2610: ed07 2a2f    	vstr	s4, [r7, #-188]
    2614: ed9e 7ac0    	vldr	s14, [lr, #768]
    2618: f50d 6e80    	add.w	lr, sp, #0x400
    261c: ee60 0aa4    	vmul.f32	s1, s1, s9
    2620: ed9f 2a7d    	vldr	s4, [pc, #500]          @ 0x2818 <Reset+0x2410>
    2624: ed9e fa09    	vldr	s30, [lr, #36]
    2628: f50d 6e80    	add.w	lr, sp, #0x400
    262c: ee41 0ae5    	vmls.f32	s1, s3, s11
    2630: ed07 3a09    	vstr	s6, [r7, #-36]
    2634: ee37 1a4f    	vsub.f32	s2, s14, s30
    2638: ed17 3a26    	vldr	s6, [r7, #-152]
    263c: ed07 1a0e    	vstr	s2, [r7, #-56]
    2640: ed9e 1ada    	vldr	s2, [lr, #872]
    2644: f50d 6e80    	add.w	lr, sp, #0x400
    2648: ee2e 2a02    	vmul.f32	s4, s28, s4
    264c: ed07 4a2b    	vstr	s8, [r7, #-172]
    2650: eddd bafe    	vldr	s23, [sp, #1016]
    2654: ed9e 7adc    	vldr	s14, [lr, #880]
    2658: f50d 6e80    	add.w	lr, sp, #0x400
    265c: ee37 1a41    	vsub.f32	s2, s14, s2
    2660: ed07 0a08    	vstr	s0, [r7, #-32]
    2664: ed9e 7ac9    	vldr	s14, [lr, #804]
    2668: f50d 6e80    	add.w	lr, sp, #0x400
    266c: eef4 6a60    	vcmp.f32	s13, s1
    2670: eddd 8aea    	vldr	s17, [sp, #936]
    2674: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2678: edde ea05    	vldr	s29, [lr, #20]
    267c: f50d 6e80    	add.w	lr, sp, #0x400
    2680: ee37 5a6e    	vsub.f32	s10, s14, s29
    2684: f8dd 0708    	ldr.w	r0, [sp, #0x708]
    2688: fe36 7aa0    	vselgt.f32	s14, s13, s1
    268c: ed07 5a0d    	vstr	s10, [r7, #-52]
    2690: ed9f 5a62    	vldr	s10, [pc, #392]         @ 0x281c <Reset+0x2414>
    2694: f847 0c40    	str	r0, [r7, #-64]
    2698: ee01 2a05    	vmla.f32	s4, s2, s10
    269c: ed99 1a02    	vldr	s2, [r9, #8]
    26a0: eeb4 7a67    	vcmp.f32	s14, s15
    26a4: f8dd 070c    	ldr.w	r0, [sp, #0x70c]
    26a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26ac: ee31 1a03    	vadd.f32	s2, s2, s6
    26b0: ed9e 3acd    	vldr	s6, [lr, #820]
    26b4: fe37 4a87    	vselgt.f32	s8, s15, s14
    26b8: f50d 6e80    	add.w	lr, sp, #0x400
    26bc: ee33 3a6b    	vsub.f32	s6, s6, s23
    26c0: ed07 1a26    	vstr	s2, [r7, #-152]
    26c4: ed07 3a0c    	vstr	s6, [r7, #-48]
    26c8: ed9f 3a55    	vldr	s6, [pc, #340]          @ 0x2820 <Reset+0x2418>
    26cc: eeb4 3a42    	vcmp.f32	s6, s4
    26d0: f847 0c3c    	str	r0, [r7, #-60]
    26d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    26d8: ee36 0a44    	vsub.f32	s0, s12, s8
    26dc: ed9e 4abb    	vldr	s8, [lr, #748]
    26e0: f50d 6e80    	add.w	lr, sp, #0x400
    26e4: ed07 0a07    	vstr	s0, [r7, #-28]
    26e8: fe33 2a02    	vselgt.f32	s4, s6, s4
    26ec: 22e0         	movs	r2, #0xe0
    26ee: ee2e 3a29    	vmul.f32	s6, s28, s19
    26f2: 4640         	mov	r0, r8
    26f4: ee04 3a6a    	vmls.f32	s6, s8, s21
    26f8: ed9e 4ad2    	vldr	s8, [lr, #840]
    26fc: ee34 1a68    	vsub.f32	s2, s8, s17
    2700: f50d 6e80    	add.w	lr, sp, #0x400
    2704: ed07 1a0b    	vstr	s2, [r7, #-44]
    2708: ed9f 1a46    	vldr	s2, [pc, #280]          @ 0x2824 <Reset+0x241c>
    270c: eeb4 2a41    	vcmp.f32	s4, s2
    2710: edde aadb    	vldr	s21, [lr, #876]
    2714: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2718: 4629         	mov	r1, r5
    271a: fe31 0a02    	vselgt.f32	s0, s2, s4
    271e: ed99 1a07    	vldr	s2, [r9, #28]
    2722: ed17 2a1d    	vldr	s4, [r7, #-116]
    2726: ee31 1a02    	vadd.f32	s2, s2, s4
    272a: ed07 1a1d    	vstr	s2, [r7, #-116]
    272e: ee3a 1acc    	vsub.f32	s2, s21, s24
    2732: ee33 0a40    	vsub.f32	s0, s6, s0
    2736: ed07 1a06    	vstr	s2, [r7, #-24]
    273a: ed07 0a05    	vstr	s0, [r7, #-20]
    273e: f00b f833    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0xb066
    2742: 4640         	mov	r0, r8
    2744: f008 fff4    	bl	0xb730 <orange_dsp::physical_residual_norm> @ imm = #0x8fe8
    2748: 22e0         	movs	r2, #0xe0
    274a: 98c4         	ldr	r0, [sp, #0x310]
    274c: 4641         	mov	r1, r8
    274e: eef0 9a40    	vmov.f32	s19, s0
    2752: f00b f829    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0xb052
    2756: f50d 6e80    	add.w	lr, sp, #0x400
    275a: ed89 da18    	vstr	s26, [r9, #96]
    275e: eeb0 da6d    	vmov.f32	s26, s27
    2762: edc9 da20    	vstr	s27, [r9, #128]
    2766: ed9e 0a0a    	vldr	s0, [lr, #40]
    276a: f50d 6e80    	add.w	lr, sp, #0x400
    276e: ed89 0a0b    	vstr	s0, [r9, #44]
    2772: ed9d 0ae2    	vldr	s0, [sp, #904]
    2776: ed89 0a0c    	vstr	s0, [r9, #48]
    277a: ed9e 0a08    	vldr	s0, [lr, #32]
    277e: f50d 6e80    	add.w	lr, sp, #0x400
    2782: ed89 0a0e    	vstr	s0, [r9, #56]
    2786: ed9d 0ae5    	vldr	s0, [sp, #916]
    278a: ed89 0a0f    	vstr	s0, [r9, #60]
    278e: ed9e 0a00    	vldr	s0, [lr]
    2792: f50d 6e80    	add.w	lr, sp, #0x400
    2796: eef0 da6f    	vmov.f32	s27, s31
    279a: ed89 0a11    	vstr	s0, [r9, #68]
    279e: ed9d 0ae6    	vldr	s0, [sp, #920]
    27a2: ed89 0a12    	vstr	s0, [r9, #72]
    27a6: ed9d 0af2    	vldr	s0, [sp, #968]
    27aa: ed89 0a14    	vstr	s0, [r9, #80]
    27ae: ed9d 0ae8    	vldr	s0, [sp, #928]
    27b2: ed89 0a15    	vstr	s0, [r9, #84]
    27b6: ed9f 0a1c    	vldr	s0, [pc, #112]          @ 0x2828 <Reset+0x2420>
    27ba: ed89 fa0a    	vstr	s30, [r9, #40]
    27be: edc9 ba10    	vstr	s23, [r9, #64]
    27c2: eddd bafd    	vldr	s23, [sp, #1012]
    27c6: edc9 8a13    	vstr	s17, [r9, #76]
    27ca: eddd 8af8    	vldr	s17, [sp, #992]
    27ce: ed89 ca1f    	vstr	s24, [r9, #124]
    27d2: ed9d cafa    	vldr	s24, [sp, #1000]
    27d6: ed9e fa03    	vldr	s30, [lr, #12]
    27da: eef4 9a40    	vcmp.f32	s19, s0
    27de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    27e2: edc9 ea0d    	vstr	s29, [r9, #52]
    27e6: f04f 0001    	mov.w	r0, #0x1
    27ea: ed89 aa16    	vstr	s20, [r9, #88]
    27ee: ed89 9a19    	vstr	s18, [r9, #100]
    27f2: edc9 ca1c    	vstr	s25, [r9, #112]
    27f6: ed89 ba17    	vstr	s22, [r9, #92]
    27fa: ed89 8a1a    	vstr	s16, [r9, #104]
    27fe: edc9 ba1b    	vstr	s23, [r9, #108]
    2802: edc9 8a1d    	vstr	s17, [r9, #116]
    2806: ed89 fa1e    	vstr	s30, [r9, #120]
    280a: ed89 ca21    	vstr	s24, [r9, #132]
    280e: f8cd 07d0    	str.w	r0, [sp, #0x7d0]
    2812: f244 8509    	bls.w	0x7228 <Reset+0x6e20>   @ imm = #0x4a12
    2816: e009         	b	0x282c <Reset+0x2424>   @ imm = #0x12
    2818: f9 de 1d c4  	.word	0xc41ddef9
    281c: 59 e4 70 4c  	.word	0x4c70e459
    2820: 00 24 f4 ca  	.word	0xcaf42400
    2824: 00 24 f4 4a  	.word	0x4af42400
    2828: 17 b7 d1 38  	.word	0x38d1b717
    282c: f50d 6e80    	add.w	lr, sp, #0x400
    2830: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    2834: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    2838: 46c4         	mov	r12, r8
    283a: edce 9a05    	vstr	s19, [lr, #20]
    283e: eefe 9a00    	vmov.f32	s19, #-5.000000e-01
    2842: 2201         	movs	r2, #0x1
    2844: 2500         	movs	r5, #0x0
    2846: f04f 0801    	mov.w	r8, #0x1
    284a: 2400         	movs	r4, #0x0
    284c: f60d 1014    	addw	r0, sp, #0x914
    2850: f60d 1af4    	addw	r10, sp, #0x9f4
    2854: f8cd 240c    	str.w	r2, [sp, #0x40c]
    2858: 22e0         	movs	r2, #0xe0
    285a: 4631         	mov	r1, r6
    285c: 9428         	str	r4, [sp, #0xa0]
    285e: 956b         	str	r5, [sp, #0x1ac]
    2860: 4664         	mov	r4, r12
    2862: f00a ffa1    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0xaf42
    2866: ea5f 70c8    	lsls.w	r0, r8, #0x1f
    286a: f040 856c    	bne.w	0x3346 <Reset+0x2f3e>   @ imm = #0xad8
    286e: f50d 6e80    	add.w	lr, sp, #0x400
    2872: ed9f 7ae5    	vldr	s14, [pc, #916]         @ 0x2c08 <Reset+0x2800>
    2876: eddf 0ae5    	vldr	s1, [pc, #916]          @ 0x2c0c <Reset+0x2804>
    287a: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    287e: ed9e 0acf    	vldr	s0, [lr, #828]
    2882: f50d 6e80    	add.w	lr, sp, #0x400
    2886: eddf 1ae2    	vldr	s3, [pc, #904]          @ 0x2c10 <Reset+0x2808>
    288a: eefa 5a0e    	vmov.f32	s11, #-1.500000e+01
    288e: ed9e 1ad0    	vldr	s2, [lr, #832]
    2892: eddf 2ae0    	vldr	s5, [pc, #896]          @ 0x2c14 <Reset+0x280c>
    2896: ee30 0a41    	vsub.f32	s0, s0, s2
    289a: eddf 3adf    	vldr	s7, [pc, #892]          @ 0x2c18 <Reset+0x2810>
    289e: eddf 4adf    	vldr	s9, [pc, #892]          @ 0x2c1c <Reset+0x2814>
    28a2: f50d 6e80    	add.w	lr, sp, #0x400
    28a6: f240 1555    	movw	r5, #0x155
    28aa: eddf badd    	vldr	s23, [pc, #884]         @ 0x2c20 <Reset+0x2818>
    28ae: ee80 0a07    	vdiv.f32	s0, s0, s14
    28b2: f2c0 0508    	movt	r5, #0x8
    28b6: eef4 0a40    	vcmp.f32	s1, s0
    28ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28be: fe30 0a80    	vselgt.f32	s0, s1, s0
    28c2: eeb4 0a61    	vcmp.f32	s0, s3
    28c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28ca: fe31 1a80    	vselgt.f32	s2, s3, s0
    28ce: ee21 0a22    	vmul.f32	s0, s2, s5
    28d2: ee30 2a29    	vadd.f32	s4, s0, s19
    28d6: eeb5 0a40    	vcmp.f32	s0, #0
    28da: ee30 3a2e    	vadd.f32	s6, s0, s29
    28de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    28e2: eebd 2ac2    	vcvt.s32.f32	s4, s4
    28e6: eebd 3ac3    	vcvt.s32.f32	s6, s6
    28ea: ee12 0a10    	vmov	r0, s4
    28ee: eeb0 2a41    	vmov.f32	s4, s2
    28f2: ee13 1a10    	vmov	r1, s6
    28f6: bfa8         	it	ge
    28f8: 4608         	movge	r0, r1
    28fa: ee00 0a10    	vmov	s0, r0
    28fe: eeb8 0ac0    	vcvt.f32.s32	s0, s0
    2902: ee00 2a63    	vmls.f32	s4, s0, s7
    2906: ee22 0a2e    	vmul.f32	s0, s4, s29
    290a: eef4 7a40    	vcmp.f32	s15, s0
    290e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2912: fe37 0a80    	vselgt.f32	s0, s15, s0
    2916: eeb4 0a64    	vcmp.f32	s0, s9
    291a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    291e: eeb4 1a61    	vcmp.f32	s2, s3
    2922: eeb1 1a41    	vneg.f32	s2, s2
    2926: fe34 0a80    	vselgt.f32	s0, s9, s0
    292a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    292e: fe30 1a81    	vselgt.f32	s2, s1, s2
    2932: eeb4 1a61    	vcmp.f32	s2, s3
    2936: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    293a: fe31 1a81    	vselgt.f32	s2, s3, s2
    293e: ee21 2a22    	vmul.f32	s4, s2, s5
    2942: ee32 3a29    	vadd.f32	s6, s4, s19
    2946: eeb5 2a40    	vcmp.f32	s4, #0
    294a: ee32 4a2e    	vadd.f32	s8, s4, s29
    294e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2952: eebd 3ac3    	vcvt.s32.f32	s6, s6
    2956: eebd 4ac4    	vcvt.s32.f32	s8, s8
    295a: ee13 2a10    	vmov	r2, s6
    295e: ee14 1a10    	vmov	r1, s8
    2962: bfa8         	it	ge
    2964: 460a         	movge	r2, r1
    2966: ee02 2a10    	vmov	s4, r2
    296a: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    296e: ee02 1a63    	vmls.f32	s2, s4, s7
    2972: ed9e 2ad6    	vldr	s4, [lr, #856]
    2976: ee32 3a25    	vadd.f32	s6, s4, s11
    297a: f50d 6e80    	add.w	lr, sp, #0x400
    297e: ee35 2ac2    	vsub.f32	s4, s11, s4
    2982: ee83 3a07    	vdiv.f32	s6, s6, s14
    2986: ee82 2a07    	vdiv.f32	s4, s4, s14
    298a: ee21 1a2e    	vmul.f32	s2, s2, s29
    298e: eef4 7a41    	vcmp.f32	s15, s2
    2992: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2996: fe37 1a81    	vselgt.f32	s2, s15, s2
    299a: eeb4 1a64    	vcmp.f32	s2, s9
    299e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29a2: eef4 0a43    	vcmp.f32	s1, s6
    29a6: fe34 1a81    	vselgt.f32	s2, s9, s2
    29aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29ae: fe30 3a83    	vselgt.f32	s6, s1, s6
    29b2: eeb4 3a61    	vcmp.f32	s6, s3
    29b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29ba: fe31 3a83    	vselgt.f32	s6, s3, s6
    29be: ee23 4a22    	vmul.f32	s8, s6, s5
    29c2: ee34 5a29    	vadd.f32	s10, s8, s19
    29c6: eeb5 4a40    	vcmp.f32	s8, #0
    29ca: ee34 6a2e    	vadd.f32	s12, s8, s29
    29ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29d2: eebd 5ac5    	vcvt.s32.f32	s10, s10
    29d6: eebd 6ac6    	vcvt.s32.f32	s12, s12
    29da: ee15 1a10    	vmov	r1, s10
    29de: ee16 3a10    	vmov	r3, s12
    29e2: bfa8         	it	ge
    29e4: 4619         	movge	r1, r3
    29e6: ee04 1a10    	vmov	s8, r1
    29ea: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    29ee: ee04 3a63    	vmls.f32	s6, s8, s7
    29f2: ee23 3a2e    	vmul.f32	s6, s6, s29
    29f6: eef4 7a43    	vcmp.f32	s15, s6
    29fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    29fe: fe37 3a83    	vselgt.f32	s6, s15, s6
    2a02: eeb4 3a64    	vcmp.f32	s6, s9
    2a06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a0a: eef4 0a42    	vcmp.f32	s1, s4
    2a0e: fe34 3a83    	vselgt.f32	s6, s9, s6
    2a12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a16: fe30 2a82    	vselgt.f32	s4, s1, s4
    2a1a: eeb4 2a61    	vcmp.f32	s4, s3
    2a1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a22: fe31 2a82    	vselgt.f32	s4, s3, s4
    2a26: ee22 4a22    	vmul.f32	s8, s4, s5
    2a2a: ee34 5a29    	vadd.f32	s10, s8, s19
    2a2e: eeb5 4a40    	vcmp.f32	s8, #0
    2a32: ee34 6a2e    	vadd.f32	s12, s8, s29
    2a36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2a3a: eebd 5ac5    	vcvt.s32.f32	s10, s10
    2a3e: eebd 6ac6    	vcvt.s32.f32	s12, s12
    2a42: ee15 3a10    	vmov	r3, s10
    2a46: ee16 6a10    	vmov	r6, s12
    2a4a: bfa8         	it	ge
    2a4c: 4633         	movge	r3, r6
    2a4e: f244 4608    	movw	r6, #0x4408
    2a52: ee04 3a10    	vmov	s8, r3
    2a56: f6c4 0600    	movt	r6, #0x4800
    2a5a: f846 5c08    	str	r5, [r6, #-8]
    2a5e: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    2a62: ee04 2a63    	vmls.f32	s4, s8, s7
    2a66: ed9f 4adb    	vldr	s8, [pc, #876]          @ 0x2dd4 <Reset+0x29cc>
    2a6a: ee20 0a04    	vmul.f32	s0, s0, s8
    2a6e: ee21 1a04    	vmul.f32	s2, s2, s8
    2a72: ee23 3a04    	vmul.f32	s6, s6, s8
    2a76: eebd 0ac0    	vcvt.s32.f32	s0, s0
    2a7a: ed06 0a01    	vstr	s0, [r6, #-4]
    2a7e: eebd 0ac1    	vcvt.s32.f32	s0, s2
    2a82: ee22 2a2e    	vmul.f32	s4, s4, s29
    2a86: edd6 5a00    	vldr	s11, [r6]
    2a8a: edd6 6a00    	vldr	s13, [r6]
    2a8e: f846 5c08    	str	r5, [r6, #-8]
    2a92: ed06 0a01    	vstr	s0, [r6, #-4]
    2a96: eebd 0ac3    	vcvt.s32.f32	s0, s6
    2a9a: eef4 7a42    	vcmp.f32	s15, s4
    2a9e: edd6 3a00    	vldr	s7, [r6]
    2aa2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2aa6: fe37 2a82    	vselgt.f32	s4, s15, s4
    2aaa: eeb4 2a64    	vcmp.f32	s4, s9
    2aae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ab2: fe34 1a82    	vselgt.f32	s2, s9, s4
    2ab6: edd6 4a00    	vldr	s9, [r6]
    2aba: f846 5c08    	str	r5, [r6, #-8]
    2abe: ed06 0a01    	vstr	s0, [r6, #-4]
    2ac2: ee21 1a04    	vmul.f32	s2, s2, s8
    2ac6: edd6 0a00    	vldr	s1, [r6]
    2aca: edd6 2a00    	vldr	s5, [r6]
    2ace: f846 5c08    	str	r5, [r6, #-8]
    2ad2: eeb0 4a6d    	vmov.f32	s8, s27
    2ad6: eebd 0ac1    	vcvt.s32.f32	s0, s2
    2ada: ed06 0a01    	vstr	s0, [r6, #-4]
    2ade: ed96 7a00    	vldr	s14, [r6]
    2ae2: ed96 8a00    	vldr	s16, [r6]
    2ae6: ed9e 1ad7    	vldr	s2, [lr, #860]
    2aea: f50d 6e80    	add.w	lr, sp, #0x400
    2aee: ed9e 2ae4    	vldr	s4, [lr, #912]
    2af2: eeb4 2a41    	vcmp.f32	s4, s2
    2af6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2afa: fe21 0a02    	vselge.f32	s0, s2, s4
    2afe: ee3e 3ac0    	vsub.f32	s6, s29, s0
    2b02: eeb8 0a00    	vmov.f32	s0, #-2.000000e+00
    2b06: eeb4 3a40    	vcmp.f32	s6, s0
    2b0a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b0e: d923         	bls	0x2b58 <Reset+0x2750>   @ imm = #0x46
    2b10: eeb4 3a43    	vcmp.f32	s6, s6
    2b14: eeb0 4a6d    	vmov.f32	s8, s27
    2b18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b1c: a638         	adr	r6, #224 <Reset+0x2750>
    2b1e: fe1d 0a83    	vselvs.f32	s0, s27, s6
    2b22: eeb5 0a40    	vcmp.f32	s0, #0
    2b26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b2a: bfb8         	it	lt
    2b2c: eeb0 4a40    	vmovlt.f32	s8, s0
    2b30: eeb0 0a6f    	vmov.f32	s0, s31
    2b34: eeb5 3a40    	vcmp.f32	s6, #0
    2b38: ee04 0a2e    	vmla.f32	s0, s8, s29
    2b3c: ed9f 4aeb    	vldr	s8, [pc, #940]          @ 0x2eec <Reset+0x2ae4>
    2b40: ed9f 3a37    	vldr	s6, [pc, #220]          @ 0x2c20 <Reset+0x2818>
    2b44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b48: bf48         	it	mi
    2b4a: 3604         	addmi	r6, #0x4
    2b4c: ee20 0a04    	vmul.f32	s0, s0, s8
    2b50: ed96 4a00    	vldr	s8, [r6]
    2b54: fec0 ba03    	vmaxnm.f32	s23, s0, s6
    2b58: ee31 3a42    	vsub.f32	s6, s2, s4
    2b5c: f50d 6e80    	add.w	lr, sp, #0x400
    2b60: eeb4 2a41    	vcmp.f32	s4, s2
    2b64: eeb0 9a6d    	vmov.f32	s18, s27
    2b68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2b6c: ee23 1a04    	vmul.f32	s2, s6, s8
    2b70: ed8e 3a0a    	vstr	s6, [lr, #40]
    2b74: f50d 6e80    	add.w	lr, sp, #0x400
    2b78: eeb0 3a6d    	vmov.f32	s6, s27
    2b7c: eef0 1a6d    	vmov.f32	s3, s27
    2b80: eeb0 4a6d    	vmov.f32	s8, s27
    2b84: fe2d 2a81    	vselge.f32	s4, s27, s2
    2b88: ed9f 6ad9    	vldr	s12, [pc, #868]         @ 0x2ef0 <Reset+0x2ae8>
    2b8c: ed8e 2a08    	vstr	s4, [lr, #32]
    2b90: f50d 6e80    	add.w	lr, sp, #0x400
    2b94: fe21 1a2d    	vselge.f32	s2, s2, s27
    2b98: ed8e 1a09    	vstr	s2, [lr, #36]
    2b9c: f50d 6e80    	add.w	lr, sp, #0x400
    2ba0: ed9e 1aea    	vldr	s2, [lr, #936]
    2ba4: eeb5 1a40    	vcmp.f32	s2, #0
    2ba8: eeb0 2ac1    	vabs.f32	s4, s2
    2bac: eeb0 1a6d    	vmov.f32	s2, s27
    2bb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2bb4: bf48         	it	mi
    2bb6: eeb0 1a67    	vmovmi.f32	s2, s15
    2bba: eeb4 2a46    	vcmp.f32	s4, s12
    2bbe: fe3f 1a81    	vselgt.f32	s2, s31, s2
    2bc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2bc6: f280 807d    	bge.w	0x2cc4 <Reset+0x28bc>   @ imm = #0xfa
    2bca: ed9f 3aca    	vldr	s6, [pc, #808]          @ 0x2ef4 <Reset+0x2aec>
    2bce: eeb0 4a6d    	vmov.f32	s8, s27
    2bd2: eeb4 2a43    	vcmp.f32	s4, s6
    2bd6: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2bda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2bde: d92f         	bls	0x2c40 <Reset+0x2838>   @ imm = #0x5e
    2be0: ed9f 3aea    	vldr	s6, [pc, #936]          @ 0x2f8c <Reset+0x2b84>
    2be4: eeb4 2a43    	vcmp.f32	s4, s6
    2be8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2bec: d91c         	bls	0x2c28 <Reset+0x2820>   @ imm = #0x38
    2bee: ed9f 3ae8    	vldr	s6, [pc, #928]          @ 0x2f90 <Reset+0x2b88>
    2bf2: ee32 2a03    	vadd.f32	s4, s4, s6
    2bf6: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    2bfa: ed9f 4ae6    	vldr	s8, [pc, #920]          @ 0x2f94 <Reset+0x2b8c>
    2bfe: e01b         	b	0x2c38 <Reset+0x2830>   @ imm = #0x36
    2c00: 00 00 00 00  	.word	0x00000000
    2c04: 2b 18 15 3b  	.word	0x3b15182b
    2c08: f5 4a 39 3d  	.word	0x3d394af5
    2c0c: 00 00 a0 c2  	.word	0xc2a00000
    2c10: 00 00 a0 42  	.word	0x42a00000
    2c14: 3b aa b8 3f  	.word	0x3fb8aa3b
    2c18: 18 72 31 3f  	.word	0x3f317218
    2c1c: fe ff 7f 3f  	.word	0x3f7ffffe
    2c20: 95 bf d6 33  	.word	0x33d6bf95
    2c24: 00 bf 00 bf  	.word	0xbf00bf00
    2c28: ed9f 3adb    	vldr	s6, [pc, #876]          @ 0x2f98 <Reset+0x2b90>
    2c2c: ee32 2a03    	vadd.f32	s4, s4, s6
    2c30: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2c34: ed9f 4ad9    	vldr	s8, [pc, #868]          @ 0x2f9c <Reset+0x2b94>
    2c38: ee02 3a04    	vmla.f32	s6, s4, s8
    2c3c: ee21 4a04    	vmul.f32	s8, s2, s8
    2c40: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    2c44: eeb1 9a44    	vneg.f32	s18, s8
    2c48: ee31 1a43    	vsub.f32	s2, s2, s6
    2c4c: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    2c50: eeb5 1a40    	vcmp.f32	s2, #0
    2c54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c58: d92e         	bls	0x2cb8 <Reset+0x28b0>   @ imm = #0x5c
    2c5a: ed99 2a03    	vldr	s4, [r9, #12]
    2c5e: eeb0 5a6f    	vmov.f32	s10, s31
    2c62: ee82 3a01    	vdiv.f32	s6, s4, s2
    2c66: ee23 3a03    	vmul.f32	s6, s6, s6
    2c6a: ee23 3a03    	vmul.f32	s6, s6, s6
    2c6e: ee23 3a03    	vmul.f32	s6, s6, s6
    2c72: ee23 3a03    	vmul.f32	s6, s6, s6
    2c76: ee33 4a2f    	vadd.f32	s8, s6, s31
    2c7a: eeb4 4a6f    	vcmp.f32	s8, s31
    2c7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2c82: d009         	beq	0x2c98 <Reset+0x2890>   @ imm = #0x12
    2c84: eeb0 5a44    	vmov.f32	s10, s8
    2c88: eeb1 5ac5    	vsqrt.f32	s10, s10
    2c8c: eeb1 5ac5    	vsqrt.f32	s10, s10
    2c90: eeb1 5ac5    	vsqrt.f32	s10, s10
    2c94: eeb1 5ac5    	vsqrt.f32	s10, s10
    2c98: ee8f 5a85    	vdiv.f32	s10, s31, s10
    2c9c: ee22 3a03    	vmul.f32	s6, s4, s6
    2ca0: ee85 4a04    	vdiv.f32	s8, s10, s8
    2ca4: ee83 1a01    	vdiv.f32	s2, s6, s2
    2ca8: ee62 1a05    	vmul.f32	s3, s4, s10
    2cac: ee21 3a04    	vmul.f32	s6, s2, s8
    2cb0: e008         	b	0x2cc4 <Reset+0x28bc>   @ imm = #0x10
    2cb2: bf00         	nop
    2cb4: bf00         	nop
    2cb6: bf00         	nop
    2cb8: eef0 1a6d    	vmov.f32	s3, s27
    2cbc: eeb0 4a6d    	vmov.f32	s8, s27
    2cc0: eeb0 3a6d    	vmov.f32	s6, s27
    2cc4: f50d 6e80    	add.w	lr, sp, #0x400
    2cc8: ed99 1a00    	vldr	s2, [r9]
    2ccc: eeb5 1a40    	vcmp.f32	s2, #0
    2cd0: eeb0 2ac1    	vabs.f32	s4, s2
    2cd4: eeb0 1a6d    	vmov.f32	s2, s27
    2cd8: ed8d 3afe    	vstr	s6, [sp, #1016]
    2cdc: ed8e 4a02    	vstr	s8, [lr, #8]
    2ce0: eeb0 da6d    	vmov.f32	s26, s27
    2ce4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ce8: bf48         	it	mi
    2cea: eeb0 1a67    	vmovmi.f32	s2, s15
    2cee: eeb0 aa6d    	vmov.f32	s20, s27
    2cf2: eeb0 3a6d    	vmov.f32	s6, s27
    2cf6: fe3f 1a81    	vselgt.f32	s2, s31, s2
    2cfa: eeb0 4a6d    	vmov.f32	s8, s27
    2cfe: eeb4 2a46    	vcmp.f32	s4, s12
    2d02: f04f 567e    	mov.w	r6, #0x3f800000
    2d06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d0a: da6b         	bge	0x2de4 <Reset+0x29dc>   @ imm = #0xd6
    2d0c: ed9f 3a79    	vldr	s6, [pc, #484]          @ 0x2ef4 <Reset+0x2aec>
    2d10: eeb0 4a6d    	vmov.f32	s8, s27
    2d14: eeb4 2a43    	vcmp.f32	s4, s6
    2d18: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2d1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d20: d91e         	bls	0x2d60 <Reset+0x2958>   @ imm = #0x3c
    2d22: ed9f 3a9a    	vldr	s6, [pc, #616]          @ 0x2f8c <Reset+0x2b84>
    2d26: eeb4 2a43    	vcmp.f32	s4, s6
    2d2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d2e: d90b         	bls	0x2d48 <Reset+0x2940>   @ imm = #0x16
    2d30: ed9f 3a97    	vldr	s6, [pc, #604]          @ 0x2f90 <Reset+0x2b88>
    2d34: ee32 2a03    	vadd.f32	s4, s4, s6
    2d38: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    2d3c: ed9f 4a95    	vldr	s8, [pc, #596]          @ 0x2f94 <Reset+0x2b8c>
    2d40: e00a         	b	0x2d58 <Reset+0x2950>   @ imm = #0x14
    2d42: bf00         	nop
    2d44: bf00         	nop
    2d46: bf00         	nop
    2d48: ed9f 3a93    	vldr	s6, [pc, #588]          @ 0x2f98 <Reset+0x2b90>
    2d4c: ee32 2a03    	vadd.f32	s4, s4, s6
    2d50: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2d54: ed9f 4a91    	vldr	s8, [pc, #580]          @ 0x2f9c <Reset+0x2b94>
    2d58: ee02 3a04    	vmla.f32	s6, s4, s8
    2d5c: ee21 4a04    	vmul.f32	s8, s2, s8
    2d60: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    2d64: eeb1 aa44    	vneg.f32	s20, s8
    2d68: ee31 1a43    	vsub.f32	s2, s2, s6
    2d6c: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    2d70: eeb5 1a40    	vcmp.f32	s2, #0
    2d74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2d78: d92e         	bls	0x2dd8 <Reset+0x29d0>   @ imm = #0x5c
    2d7a: ed99 2a04    	vldr	s4, [r9, #16]
    2d7e: eeb0 5a6f    	vmov.f32	s10, s31
    2d82: ee82 3a01    	vdiv.f32	s6, s4, s2
    2d86: ee23 3a03    	vmul.f32	s6, s6, s6
    2d8a: ee23 3a03    	vmul.f32	s6, s6, s6
    2d8e: ee23 3a03    	vmul.f32	s6, s6, s6
    2d92: ee23 3a03    	vmul.f32	s6, s6, s6
    2d96: ee33 4a2f    	vadd.f32	s8, s6, s31
    2d9a: eeb4 4a6f    	vcmp.f32	s8, s31
    2d9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2da2: d009         	beq	0x2db8 <Reset+0x29b0>   @ imm = #0x12
    2da4: eeb0 5a44    	vmov.f32	s10, s8
    2da8: eeb1 5ac5    	vsqrt.f32	s10, s10
    2dac: eeb1 5ac5    	vsqrt.f32	s10, s10
    2db0: eeb1 5ac5    	vsqrt.f32	s10, s10
    2db4: eeb1 5ac5    	vsqrt.f32	s10, s10
    2db8: ee8f 5a85    	vdiv.f32	s10, s31, s10
    2dbc: ee22 3a03    	vmul.f32	s6, s4, s6
    2dc0: ee85 4a04    	vdiv.f32	s8, s10, s8
    2dc4: ee83 1a01    	vdiv.f32	s2, s6, s2
    2dc8: ee22 3a05    	vmul.f32	s6, s4, s10
    2dcc: ee21 da04    	vmul.f32	s26, s2, s8
    2dd0: e008         	b	0x2de4 <Reset+0x29dc>   @ imm = #0x10
    2dd2: bf00         	nop
    2dd4: 00 00 00 4f  	.word	0x4f000000
    2dd8: eeb0 da6d    	vmov.f32	s26, s27
    2ddc: eeb0 3a6d    	vmov.f32	s6, s27
    2de0: eeb0 4a6d    	vmov.f32	s8, s27
    2de4: ed99 1a01    	vldr	s2, [r9, #4]
    2de8: ed8d 3afa    	vstr	s6, [sp, #1000]
    2dec: eeb5 1a40    	vcmp.f32	s2, #0
    2df0: eeb0 2ac1    	vabs.f32	s4, s2
    2df4: eeb0 1a6d    	vmov.f32	s2, s27
    2df8: ed8d 4afd    	vstr	s8, [sp, #1012]
    2dfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e00: bf48         	it	mi
    2e02: eeb0 1a67    	vmovmi.f32	s2, s15
    2e06: eef0 ea6d    	vmov.f32	s29, s27
    2e0a: eeb0 ba6d    	vmov.f32	s22, s27
    2e0e: fe3f 1a81    	vselgt.f32	s2, s31, s2
    2e12: eeb0 3a6d    	vmov.f32	s6, s27
    2e16: eeb0 0a6d    	vmov.f32	s0, s27
    2e1a: eeb4 2a46    	vcmp.f32	s4, s12
    2e1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e22: da6f         	bge	0x2f04 <Reset+0x2afc>   @ imm = #0xde
    2e24: ed9f 3a33    	vldr	s6, [pc, #204]          @ 0x2ef4 <Reset+0x2aec>
    2e28: eeb0 4a6d    	vmov.f32	s8, s27
    2e2c: eeb4 2a43    	vcmp.f32	s4, s6
    2e30: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e38: d91e         	bls	0x2e78 <Reset+0x2a70>   @ imm = #0x3c
    2e3a: ed9f 3a54    	vldr	s6, [pc, #336]          @ 0x2f8c <Reset+0x2b84>
    2e3e: eeb4 2a43    	vcmp.f32	s4, s6
    2e42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e46: d90b         	bls	0x2e60 <Reset+0x2a58>   @ imm = #0x16
    2e48: ed9f 3a51    	vldr	s6, [pc, #324]          @ 0x2f90 <Reset+0x2b88>
    2e4c: ee32 2a03    	vadd.f32	s4, s4, s6
    2e50: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    2e54: ed9f 4a4f    	vldr	s8, [pc, #316]          @ 0x2f94 <Reset+0x2b8c>
    2e58: e00a         	b	0x2e70 <Reset+0x2a68>   @ imm = #0x14
    2e5a: bf00         	nop
    2e5c: bf00         	nop
    2e5e: bf00         	nop
    2e60: ed9f 3a4d    	vldr	s6, [pc, #308]          @ 0x2f98 <Reset+0x2b90>
    2e64: ee32 2a03    	vadd.f32	s4, s4, s6
    2e68: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    2e6c: ed9f 4a4b    	vldr	s8, [pc, #300]          @ 0x2f9c <Reset+0x2b94>
    2e70: ee02 3a04    	vmla.f32	s6, s4, s8
    2e74: ee21 4a04    	vmul.f32	s8, s2, s8
    2e78: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    2e7c: eeb1 ba44    	vneg.f32	s22, s8
    2e80: ee31 1a43    	vsub.f32	s2, s2, s6
    2e84: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    2e88: eeb5 1a40    	vcmp.f32	s2, #0
    2e8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2e90: d932         	bls	0x2ef8 <Reset+0x2af0>   @ imm = #0x64
    2e92: ed99 2a05    	vldr	s4, [r9, #20]
    2e96: eeb0 5a6f    	vmov.f32	s10, s31
    2e9a: ee82 3a01    	vdiv.f32	s6, s4, s2
    2e9e: ee23 3a03    	vmul.f32	s6, s6, s6
    2ea2: ee23 3a03    	vmul.f32	s6, s6, s6
    2ea6: ee23 3a03    	vmul.f32	s6, s6, s6
    2eaa: ee23 3a03    	vmul.f32	s6, s6, s6
    2eae: ee33 4a2f    	vadd.f32	s8, s6, s31
    2eb2: eeb4 4a6f    	vcmp.f32	s8, s31
    2eb6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2eba: d009         	beq	0x2ed0 <Reset+0x2ac8>   @ imm = #0x12
    2ebc: eeb0 5a44    	vmov.f32	s10, s8
    2ec0: eeb1 5ac5    	vsqrt.f32	s10, s10
    2ec4: eeb1 5ac5    	vsqrt.f32	s10, s10
    2ec8: eeb1 5ac5    	vsqrt.f32	s10, s10
    2ecc: eeb1 5ac5    	vsqrt.f32	s10, s10
    2ed0: ee8f 5a85    	vdiv.f32	s10, s31, s10
    2ed4: ee22 3a03    	vmul.f32	s6, s4, s6
    2ed8: ee85 0a04    	vdiv.f32	s0, s10, s8
    2edc: ee83 1a01    	vdiv.f32	s2, s6, s2
    2ee0: ee22 3a05    	vmul.f32	s6, s4, s10
    2ee4: ee61 ea00    	vmul.f32	s29, s2, s0
    2ee8: e00c         	b	0x2f04 <Reset+0x2afc>   @ imm = #0x18
    2eea: bf00         	nop
    2eec: 2b 18 95 3b  	.word	0x3b95182b
    2ef0: 0a d7 23 3d  	.word	0x3d23d70a
    2ef4: 7c f2 b0 3a  	.word	0x3ab0f27c
    2ef8: eef0 ea6d    	vmov.f32	s29, s27
    2efc: eeb0 3a6d    	vmov.f32	s6, s27
    2f00: eeb0 0a6d    	vmov.f32	s0, s27
    2f04: f50d 6e80    	add.w	lr, sp, #0x400
    2f08: ed99 1a02    	vldr	s2, [r9, #8]
    2f0c: eeb5 1a40    	vcmp.f32	s2, #0
    2f10: eeb0 4ac1    	vabs.f32	s8, s2
    2f14: eeb0 1a6d    	vmov.f32	s2, s27
    2f18: edcd eaea    	vstr	s29, [sp, #936]
    2f1c: ed8d 3af2    	vstr	s6, [sp, #968]
    2f20: ed1f 2a0d    	vldr	s4, [pc, #-52]          @ 0x2ef0 <Reset+0x2ae8>
    2f24: edce 1a00    	vstr	s3, [lr]
    2f28: eef0 1a6d    	vmov.f32	s3, s27
    2f2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f30: bf48         	it	mi
    2f32: eeb0 1a67    	vmovmi.f32	s2, s15
    2f36: eeb4 4a42    	vcmp.f32	s8, s4
    2f3a: eeb0 3a6d    	vmov.f32	s6, s27
    2f3e: fe3f 1a81    	vselgt.f32	s2, s31, s2
    2f42: eeb0 2a6d    	vmov.f32	s4, s27
    2f46: eef0 9a6f    	vmov.f32	s19, s31
    2f4a: eef0 fa6d    	vmov.f32	s31, s27
    2f4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f52: da73         	bge	0x303c <Reset+0x2c34>   @ imm = #0xe6
    2f54: ed1f 2a19    	vldr	s4, [pc, #-100]         @ 0x2ef4 <Reset+0x2aec>
    2f58: eeb0 3a6d    	vmov.f32	s6, s27
    2f5c: eeb4 4a42    	vcmp.f32	s8, s4
    2f60: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2f64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f68: d926         	bls	0x2fb8 <Reset+0x2bb0>   @ imm = #0x4c
    2f6a: ed9f 2a08    	vldr	s4, [pc, #32]           @ 0x2f8c <Reset+0x2b84>
    2f6e: eeb4 4a42    	vcmp.f32	s8, s4
    2f72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2f76: d913         	bls	0x2fa0 <Reset+0x2b98>   @ imm = #0x26
    2f78: ed9f 2a05    	vldr	s4, [pc, #20]           @ 0x2f90 <Reset+0x2b88>
    2f7c: ee34 3a02    	vadd.f32	s6, s8, s4
    2f80: eeb0 2a08    	vmov.f32	s4, #3.000000e+00
    2f84: ed9f 4a03    	vldr	s8, [pc, #12]           @ 0x2f94 <Reset+0x2b8c>
    2f88: e012         	b	0x2fb0 <Reset+0x2ba8>   @ imm = #0x24
    2f8a: bf00         	nop
    2f8c: a6 9b c4 3b  	.word	0x3bc49ba6
    2f90: a6 9b c4 bb  	.word	0xbbc49ba6
    2f94: 79 78 b0 43  	.word	0x43b07879
    2f98: 7c f2 b0 ba  	.word	0xbab0f27c
    2f9c: 53 4a a1 43  	.word	0x43a14a53
    2fa0: ed1f 2a03    	vldr	s4, [pc, #-12]          @ 0x2f98 <Reset+0x2b90>
    2fa4: ee34 3a02    	vadd.f32	s6, s8, s4
    2fa8: eeb7 2a08    	vmov.f32	s4, #1.500000e+00
    2fac: ed1f 4a05    	vldr	s8, [pc, #-20]          @ 0x2f9c <Reset+0x2b94>
    2fb0: ee03 2a04    	vmla.f32	s4, s6, s8
    2fb4: ee21 3a04    	vmul.f32	s6, s2, s8
    2fb8: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    2fbc: eeb1 3a43    	vneg.f32	s6, s6
    2fc0: ee31 1a42    	vsub.f32	s2, s2, s4
    2fc4: fe81 1a2d    	vmaxnm.f32	s2, s2, s27
    2fc8: eeb5 1a40    	vcmp.f32	s2, #0
    2fcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2fd0: d92e         	bls	0x3030 <Reset+0x2c28>   @ imm = #0x5c
    2fd2: ed99 2a06    	vldr	s4, [r9, #24]
    2fd6: eeb0 6a69    	vmov.f32	s12, s19
    2fda: ee82 4a01    	vdiv.f32	s8, s4, s2
    2fde: ee24 4a04    	vmul.f32	s8, s8, s8
    2fe2: ee24 4a04    	vmul.f32	s8, s8, s8
    2fe6: ee24 4a04    	vmul.f32	s8, s8, s8
    2fea: ee24 4a04    	vmul.f32	s8, s8, s8
    2fee: ee34 5a29    	vadd.f32	s10, s8, s19
    2ff2: eeb4 5a69    	vcmp.f32	s10, s19
    2ff6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    2ffa: d009         	beq	0x3010 <Reset+0x2c08>   @ imm = #0x12
    2ffc: eeb0 6a45    	vmov.f32	s12, s10
    3000: eeb1 6ac6    	vsqrt.f32	s12, s12
    3004: eeb1 6ac6    	vsqrt.f32	s12, s12
    3008: eeb1 6ac6    	vsqrt.f32	s12, s12
    300c: eeb1 6ac6    	vsqrt.f32	s12, s12
    3010: ee89 6a86    	vdiv.f32	s12, s19, s12
    3014: ee22 4a04    	vmul.f32	s8, s4, s8
    3018: eec6 fa05    	vdiv.f32	s31, s12, s10
    301c: ee84 1a01    	vdiv.f32	s2, s8, s2
    3020: ee22 2a06    	vmul.f32	s4, s4, s12
    3024: ee61 1a2f    	vmul.f32	s3, s2, s31
    3028: e008         	b	0x303c <Reset+0x2c34>   @ imm = #0x10
    302a: bf00         	nop
    302c: 00 00 00 30  	.word	0x30000000
    3030: eef0 1a6d    	vmov.f32	s3, s27
    3034: eeb0 2a6d    	vmov.f32	s4, s27
    3038: eef0 fa6d    	vmov.f32	s31, s27
    303c: eeb8 1ae6    	vcvt.f32.s32	s2, s13
    3040: eb06 50c0    	add.w	r0, r6, r0, lsl #23
    3044: eeb8 4ae5    	vcvt.f32.s32	s8, s11
    3048: ed5f 5a08    	vldr	s11, [pc, #-32]         @ 0x302c <Reset+0x2c24>
    304c: eeb8 5ae4    	vcvt.f32.s32	s10, s9
    3050: ed99 ea08    	vldr	s28, [r9, #32]
    3054: ee21 1a25    	vmul.f32	s2, s2, s11
    3058: ed8d 2ae8    	vstr	s4, [sp, #928]
    305c: ee04 1a25    	vmla.f32	s2, s8, s11
    3060: eeb0 2a4b    	vmov.f32	s4, s22
    3064: eeb8 6ae3    	vcvt.f32.s32	s12, s7
    3068: ed8d 0af8    	vstr	s0, [sp, #992]
    306c: ee25 4a25    	vmul.f32	s8, s10, s11
    3070: ee05 0a10    	vmov	s10, r0
    3074: eb06 50c2    	add.w	r0, r6, r2, lsl #23
    3078: eef8 0ae0    	vcvt.f32.s32	s1, s1
    307c: ee06 4a25    	vmla.f32	s8, s12, s11
    3080: ee06 0a10    	vmov	s12, r0
    3084: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    3088: eef0 8a4d    	vmov.f32	s17, s26
    308c: ee31 1a01    	vadd.f32	s2, s2, s2
    3090: eeb0 0a4a    	vmov.f32	s0, s20
    3094: ee21 1a05    	vmul.f32	s2, s2, s10
    3098: eeb3 5a05    	vmov.f32	s10, #2.100000e+01
    309c: ee34 4a04    	vadd.f32	s8, s8, s8
    30a0: ee8e 5a05    	vdiv.f32	s10, s28, s10
    30a4: ee24 4a06    	vmul.f32	s8, s8, s12
    30a8: eeb8 6ae2    	vcvt.f32.s32	s12, s5
    30ac: ee25 5a05    	vmul.f32	s10, s10, s10
    30b0: ee31 ba04    	vadd.f32	s22, s2, s8
    30b4: ee26 6a25    	vmul.f32	s12, s12, s11
    30b8: ee25 5a05    	vmul.f32	s10, s10, s10
    30bc: ee00 6aa5    	vmla.f32	s12, s1, s11
    30c0: eef8 0ac8    	vcvt.f32.s32	s1, s16
    30c4: ee25 5a05    	vmul.f32	s10, s10, s10
    30c8: ee31 8a44    	vsub.f32	s16, s2, s8
    30cc: eeb0 4a69    	vmov.f32	s8, s19
    30d0: ee60 0aa5    	vmul.f32	s1, s1, s11
    30d4: ee47 0a25    	vmla.f32	s1, s14, s11
    30d8: eeb0 7a69    	vmov.f32	s14, s19
    30dc: ee05 7a05    	vmla.f32	s14, s10, s10
    30e0: ee36 1a06    	vadd.f32	s2, s12, s12
    30e4: ee70 6aa0    	vadd.f32	s13, s1, s1
    30e8: edd9 0a07    	vldr	s1, [r9, #28]
    30ec: eeb4 7a69    	vcmp.f32	s14, s19
    30f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    30f4: d009         	beq	0x310a <Reset+0x2d02>   @ imm = #0x12
    30f6: eeb0 4a47    	vmov.f32	s8, s14
    30fa: eeb1 4ac4    	vsqrt.f32	s8, s8
    30fe: eeb1 4ac4    	vsqrt.f32	s8, s8
    3102: eeb1 4ac4    	vsqrt.f32	s8, s8
    3106: eeb1 4ac4    	vsqrt.f32	s8, s8
    310a: eec9 3a84    	vdiv.f32	s7, s19, s8
    310e: eeb3 5a08    	vmov.f32	s10, #2.400000e+01
    3112: eef1 aa04    	vmov.f32	s21, #5.000000e+00
    3116: eef0 5ae0    	vabs.f32	s11, s1
    311a: eb06 50c1    	add.w	r0, r6, r1, lsl #23
    311e: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    3122: ee6e 2a23    	vmul.f32	s5, s28, s7
    3126: eb06 51c3    	add.w	r1, r6, r3, lsl #23
    312a: ee0a 0a10    	vmov	s20, r0
    312e: ee0c 1a10    	vmov	s24, r1
    3132: eeb0 da49    	vmov.f32	s26, s18
    3136: eef0 da69    	vmov.f32	s27, s19
    313a: eeb0 4ae2    	vabs.f32	s8, s5
    313e: eef0 ea6b    	vmov.f32	s29, s23
    3142: ee21 1a0a    	vmul.f32	s2, s2, s20
    3146: ee26 aa8c    	vmul.f32	s20, s13, s24
    314a: ee35 6a44    	vsub.f32	s12, s10, s8
    314e: eeb2 4a00    	vmov.f32	s8, #8.000000e+00
    3152: ee28 ca0f    	vmul.f32	s24, s16, s30
    3156: ee2b 8a0f    	vmul.f32	s16, s22, s30
    315a: fe86 5a04    	vmaxnm.f32	s10, s12, s8
    315e: ed9f 4ad6    	vldr	s8, [pc, #856]          @ 0x34b8 <Reset+0x30b0>
    3162: eeb1 fa6b    	vneg.f32	s30, s23
    3166: ee84 4a05    	vdiv.f32	s8, s8, s10
    316a: fec4 4a6a    	vminnm.f32	s9, s8, s21
    316e: eec5 5aa4    	vdiv.f32	s11, s11, s9
    3172: ee65 5aa5    	vmul.f32	s11, s11, s11
    3176: ee65 5aa5    	vmul.f32	s11, s11, s11
    317a: ee65 5aa5    	vmul.f32	s11, s11, s11
    317e: ee65 5aa5    	vmul.f32	s11, s11, s11
    3182: ee75 6aa9    	vadd.f32	s13, s11, s19
    3186: eef4 6a69    	vcmp.f32	s13, s19
    318a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    318e: d009         	beq	0x31a4 <Reset+0x2d9c>   @ imm = #0x12
    3190: eef0 da66    	vmov.f32	s27, s13
    3194: eef1 daed    	vsqrt.f32	s27, s27
    3198: eef1 daed    	vsqrt.f32	s27, s27
    319c: eef1 daed    	vsqrt.f32	s27, s27
    31a0: eef1 daed    	vsqrt.f32	s27, s27
    31a4: ed9f 9ac5    	vldr	s18, [pc, #788]         @ 0x34bc <Reset+0x30b4>
    31a8: f50d 6e80    	add.w	lr, sp, #0x400
    31ac: eddf cac4    	vldr	s25, [pc, #784]         @ 0x34c0 <Reset+0x30b8>
    31b0: ee28 8a09    	vmul.f32	s16, s16, s18
    31b4: ee61 ba2c    	vmul.f32	s23, s2, s25
    31b8: eddf 7ac2    	vldr	s15, [pc, #776]         @ 0x34c4 <Reset+0x30bc>
    31bc: ee6a 9a2c    	vmul.f32	s19, s20, s25
    31c0: eeb4 4a6a    	vcmp.f32	s8, s21
    31c4: eebf 4a00    	vmov.f32	s8, #-1.000000e+00
    31c8: ee88 ba27    	vdiv.f32	s22, s16, s15
    31cc: ee8b 8aa7    	vdiv.f32	s16, s23, s15
    31d0: eec9 baa7    	vdiv.f32	s23, s19, s15
    31d4: edde 7a08    	vldr	s15, [lr, #32]
    31d8: f50d 6e80    	add.w	lr, sp, #0x400
    31dc: ee23 3a21    	vmul.f32	s6, s6, s3
    31e0: ee31 1a04    	vadd.f32	s2, s2, s8
    31e4: edde 1a09    	vldr	s3, [lr, #36]
    31e8: f50d 6e80    	add.w	lr, sp, #0x400
    31ec: ee3a 4a04    	vadd.f32	s8, s20, s8
    31f0: ed9f aab5    	vldr	s20, [pc, #724]         @ 0x34c8 <Reset+0x30c0>
    31f4: ee3f fa67    	vsub.f32	s30, s30, s15
    31f8: eddd 7afe    	vldr	s15, [sp, #1016]
    31fc: ee6d 9a27    	vmul.f32	s19, s26, s15
    3200: ee20 da28    	vmul.f32	s26, s0, s17
    3204: ed9d 0aea    	vldr	s0, [sp, #936]
    3208: ee7e 8ae1    	vsub.f32	s17, s29, s3
    320c: edde 1a0a    	vldr	s3, [lr, #40]
    3210: ee62 7a00    	vmul.f32	s15, s4, s0
    3214: ee21 0aae    	vmul.f32	s0, s3, s29
    3218: ee2c ca09    	vmul.f32	s24, s24, s18
    321c: ee61 1a2c    	vmul.f32	s3, s2, s25
    3220: ee24 1a2c    	vmul.f32	s2, s8, s25
    3224: eeb0 4a4a    	vmov.f32	s8, s20
    3228: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    322c: d525         	bpl	0x327a <Reset+0x2e72>   @ imm = #0x4a
    322e: eeb0 4a4a    	vmov.f32	s8, s20
    3232: eef5 2a40    	vcmp.f32	s5, #0
    3236: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    323a: d01e         	beq	0x327a <Reset+0x2e72>   @ imm = #0x3c
    323c: eeb2 4a00    	vmov.f32	s8, #8.000000e+00
    3240: eeb4 6a44    	vcmp.f32	s12, s8
    3244: eeb0 4a4a    	vmov.f32	s8, s20
    3248: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    324c: dd15         	ble	0x327a <Reset+0x2e72>   @ imm = #0x2a
    324e: ee12 0a90    	vmov	r0, s5
    3252: ed9f 6a99    	vldr	s12, [pc, #612]         @ 0x34b8 <Reset+0x30b0>
    3256: eef4 2a62    	vcmp.f32	s5, s5
    325a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    325e: f366 001e    	bfi	r0, r6, #0, #31
    3262: ee25 5a05    	vmul.f32	s10, s10, s10
    3266: ee04 0a10    	vmov	s8, r0
    326a: ee24 4a06    	vmul.f32	s8, s8, s12
    326e: ed9f 6a97    	vldr	s12, [pc, #604]         @ 0x34cc <Reset+0x30c4>
    3272: fe16 4a04    	vselvs.f32	s8, s12, s8
    3276: ee84 4a05    	vdiv.f32	s8, s8, s10
    327a: f50d 6e80    	add.w	lr, sp, #0x400
    327e: ed9d 6afa    	vldr	s12, [sp, #1000]
    3282: ed89 6a0d    	vstr	s12, [r9, #52]
    3286: ed9d 6afd    	vldr	s12, [sp, #1012]
    328a: ed9e 5a00    	vldr	s10, [lr]
    328e: f50d 6e80    	add.w	lr, sp, #0x400
    3292: ed89 5a0a    	vstr	s10, [r9, #40]
    3296: eec5 4aa4    	vdiv.f32	s9, s11, s9
    329a: ed9e 5a02    	vldr	s10, [lr, #8]
    329e: ed89 5a0b    	vstr	s10, [r9, #44]
    32a2: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    32a6: ed89 6a0e    	vstr	s12, [r9, #56]
    32aa: ed9d 2ae8    	vldr	s4, [sp, #928]
    32ae: ed89 2a13    	vstr	s4, [r9, #76]
    32b2: eeb1 2a65    	vneg.f32	s4, s11
    32b6: ed89 3a15    	vstr	s6, [r9, #84]
    32ba: ee85 5a2d    	vdiv.f32	s10, s10, s27
    32be: edc9 1a18    	vstr	s3, [r9, #96]
    32c2: ed89 1a19    	vstr	s2, [r9, #100]
    32c6: eef5 0a40    	vcmp.f32	s1, #0
    32ca: ee82 2a20    	vdiv.f32	s4, s4, s1
    32ce: ed89 0a1c    	vstr	s0, [r9, #112]
    32d2: ee85 6a26    	vdiv.f32	s12, s10, s13
    32d6: ed89 da0f    	vstr	s26, [r9, #60]
    32da: ee62 1a85    	vmul.f32	s3, s5, s10
    32de: ed89 ca16    	vstr	s24, [r9, #88]
    32e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    32e6: ee64 4a86    	vmul.f32	s9, s9, s12
    32ea: eef0 da4a    	vmov.f32	s27, s20
    32ee: ee22 1a06    	vmul.f32	s2, s4, s12
    32f2: edc9 9a0c    	vstr	s19, [r9, #48]
    32f6: ee83 0a87    	vdiv.f32	s0, s7, s14
    32fa: eddd 6af2    	vldr	s13, [sp, #968]
    32fe: ee22 3aa4    	vmul.f32	s6, s5, s9
    3302: edc9 6a10    	vstr	s13, [r9, #64]
    3306: fe0a 1a01    	vseleq.f32	s2, s20, s2
    330a: eddd 6af8    	vldr	s13, [sp, #992]
    330e: edc9 6a11    	vstr	s13, [r9, #68]
    3312: ee03 5a04    	vmla.f32	s10, s6, s8
    3316: edc9 7a12    	vstr	s15, [r9, #72]
    331a: ee22 ca81    	vmul.f32	s24, s5, s2
    331e: edc9 fa14    	vstr	s31, [r9, #80]
    3322: edc9 1a1f    	vstr	s3, [r9, #124]
    3326: ed89 ba17    	vstr	s22, [r9, #92]
    332a: ed89 8a1a    	vstr	s16, [r9, #104]
    332e: edc9 ba1b    	vstr	s23, [r9, #108]
    3332: ee20 da05    	vmul.f32	s26, s0, s10
    3336: edc9 8a1d    	vstr	s17, [r9, #116]
    333a: ed89 fa1e    	vstr	s30, [r9, #120]
    333e: ed89 da20    	vstr	s26, [r9, #128]
    3342: ed89 ca21    	vstr	s24, [r9, #132]
    3346: 212a         	movs	r1, #0x2a
    3348: f60d 30b4    	addw	r0, sp, #0xbb4
    334c: f00a fbc5    	bl	0xdada <__aeabi_memclr4> @ imm = #0xa78a
    3350: 21a8         	movs	r1, #0xa8
    3352: 4620         	mov	r0, r4
    3354: f00a fbc1    	bl	0xdada <__aeabi_memclr4> @ imm = #0xa782
    3358: eeb5 ba40    	vcmp.f32	s22, #0
    335c: 2312         	movs	r3, #0x12
    335e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3362: f04f 0000    	mov.w	r0, #0x0
    3366: f8ad 0d14    	strh.w	r0, [sp, #0xd14]
    336a: f8cd 0d10    	str.w	r0, [sp, #0xd10]
    336e: f8cd 0d0c    	str.w	r0, [sp, #0xd0c]
    3372: f8cd 0d08    	str.w	r0, [sp, #0xd08]
    3376: d010         	beq	0x339a <Reset+0x2f92>   @ imm = #0x20
    3378: f50d 6e40    	add.w	lr, sp, #0xc00
    337c: eeb1 0a4b    	vneg.f32	s0, s22
    3380: f640 2009    	movw	r0, #0xa09
    3384: f8ad 0bb4    	strh.w	r0, [sp, #0xbb4]
    3388: ed8e ba0a    	vstr	s22, [lr, #40]
    338c: f50d 6e40    	add.w	lr, sp, #0xc00
    3390: 2002         	movs	r0, #0x2
    3392: f88d 0d08    	strb.w	r0, [sp, #0xd08]
    3396: ed8e 0a0b    	vstr	s0, [lr, #44]
    339a: eeb5 8a40    	vcmp.f32	s16, #0
    339e: ed9f 2ae5    	vldr	s4, [pc, #916]          @ 0x3734 <Reset+0x332c>
    33a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33a6: ed9f 3ae4    	vldr	s6, [pc, #912]          @ 0x3738 <Reset+0x3330>
    33aa: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x373c <Reset+0x3334>
    33ae: d009         	beq	0x33c4 <Reset+0x2fbc>   @ imm = #0x12
    33b0: f50d 6e40    	add.w	lr, sp, #0xc00
    33b4: 200d         	movs	r0, #0xd
    33b6: f88d 0bb7    	strb.w	r0, [sp, #0xbb7]
    33ba: 2001         	movs	r0, #0x1
    33bc: ed8e 8a0d    	vstr	s16, [lr, #52]
    33c0: f88d 0d09    	strb.w	r0, [sp, #0xd09]
    33c4: eef5 ba40    	vcmp.f32	s23, #0
    33c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33cc: d00b         	beq	0x33e6 <Reset+0x2fde>   @ imm = #0x16
    33ce: f50d 6e40    	add.w	lr, sp, #0xc00
    33d2: eeb1 0a6b    	vneg.f32	s0, s23
    33d6: 200d         	movs	r0, #0xd
    33d8: f88d 0bba    	strb.w	r0, [sp, #0xbba]
    33dc: ed8e 0a10    	vstr	s0, [lr, #64]
    33e0: 2001         	movs	r0, #0x1
    33e2: f88d 0d0a    	strb.w	r0, [sp, #0xd0a]
    33e6: eef5 8a40    	vcmp.f32	s17, #0
    33ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    33ee: f001 816f    	beq.w	0x46d0 <Reset+0x42c8>   @ imm = #0x12de
    33f2: f50d 6e40    	add.w	lr, sp, #0xc00
    33f6: 200e         	movs	r0, #0xe
    33f8: f88d 0bbd    	strb.w	r0, [sp, #0xbbd]
    33fc: 2001         	movs	r0, #0x1
    33fe: edce 8a13    	vstr	s17, [lr, #76]
    3402: f88d 0d0b    	strb.w	r0, [sp, #0xd0b]
    3406: eeb5 fa40    	vcmp.f32	s30, #0
    340a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    340e: d009         	beq	0x3424 <Reset+0x301c>   @ imm = #0x12
    3410: 9900         	ldr	r1, [sp]
    3412: 9a01         	ldr	r2, [sp, #0x4]
    3414: eb01 0180    	add.w	r1, r1, r0, lsl #2
    3418: 5413         	strb	r3, [r2, r0]
    341a: 3001         	adds	r0, #0x1
    341c: f88d 0d0b    	strb.w	r0, [sp, #0xd0b]
    3420: ed81 fa00    	vstr	s30, [r1]
    3424: f04f 0c00    	mov.w	r12, #0x0
    3428: 2001         	movs	r0, #0x1
    342a: f8cd 09fc    	str.w	r0, [sp, #0x9fc]
    342e: 2105         	movs	r1, #0x5
    3430: f8cd 1a00    	str.w	r1, [sp, #0xa00]
    3434: 2203         	movs	r2, #0x3
    3436: f8cd 0a04    	str.w	r0, [sp, #0xa04]
    343a: 212e         	movs	r1, #0x2e
    343c: f8cd 2a08    	str.w	r2, [sp, #0xa08]
    3440: f8cd ca0c    	str.w	r12, [sp, #0xa0c]
    3444: f8cd 1a10    	str.w	r1, [sp, #0xa10]
    3448: 2132         	movs	r1, #0x32
    344a: f8cd 1a14    	str.w	r1, [sp, #0xa14]
    344e: 210e         	movs	r1, #0xe
    3450: f8cd 0a18    	str.w	r0, [sp, #0xa18]
    3454: f8cd 1a1c    	str.w	r1, [sp, #0xa1c]
    3458: 210c         	movs	r1, #0xc
    345a: f8cd 0a20    	str.w	r0, [sp, #0xa20]
    345e: f8cd 1a24    	str.w	r1, [sp, #0xa24]
    3462: 212f         	movs	r1, #0x2f
    3464: f8cd 0a28    	str.w	r0, [sp, #0xa28]
    3468: f8cd 1a2c    	str.w	r1, [sp, #0xa2c]
    346c: 2133         	movs	r1, #0x33
    346e: f8cd 1a30    	str.w	r1, [sp, #0xa30]
    3472: 2110         	movs	r1, #0x10
    3474: f8cd 0a34    	str.w	r0, [sp, #0xa34]
    3478: f8cd 3a38    	str.w	r3, [sp, #0xa38]
    347c: f8cd 0a3c    	str.w	r0, [sp, #0xa3c]
    3480: f8cd 1a40    	str.w	r1, [sp, #0xa40]
    3484: 2102         	movs	r1, #0x2
    3486: f8cd 1a44    	str.w	r1, [sp, #0xa44]
    348a: 2130         	movs	r1, #0x30
    348c: f8cd 1a48    	str.w	r1, [sp, #0xa48]
    3490: 2134         	movs	r1, #0x34
    3492: f8cd 1a4c    	str.w	r1, [sp, #0xa4c]
    3496: f8cd ca50    	str.w	r12, [sp, #0xa50]
    349a: f8cd 0a58    	str.w	r0, [sp, #0xa58]
    349e: 2015         	movs	r0, #0x15
    34a0: f8cd 0a5c    	str.w	r0, [sp, #0xa5c]
    34a4: 2031         	movs	r0, #0x31
    34a6: f8cd 2a60    	str.w	r2, [sp, #0xa60]
    34aa: f8cd 0a64    	str.w	r0, [sp, #0xa64]
    34ae: 2035         	movs	r0, #0x35
    34b0: f8cd 0a68    	str.w	r0, [sp, #0xa68]
    34b4: e012         	b	0x34dc <Reset+0x30d4>   @ imm = #0x24
    34b6: bf00         	nop
    34b8: 00 00 70 42  	.word	0x42700000
    34bc: 77 cc ab 31  	.word	0x31abcc77
    34c0: 77 cc 2b 31  	.word	0x312bcc77
    34c4: f5 4a 39 3d  	.word	0x3d394af5
    34c8: 00 00 00 00  	.word	0x00000000
    34cc: 00 00 c0 7f  	.word	0x7fc00000
    34d0: f10c 0c1c    	add.w	r12, r12, #0x1c
    34d4: f1bc 0f70    	cmp.w	r12, #0x70
    34d8: f000 81d2    	beq.w	0x3880 <Reset+0x3478>   @ imm = #0x3a4
    34dc: eb0a 060c    	add.w	r6, r10, r12
    34e0: f8d6 9008    	ldr.w	r9, [r6, #0x8]
    34e4: f1b9 0f02    	cmp.w	r9, #0x2
    34e8: f000 81ca    	beq.w	0x3880 <Reset+0x3478>   @ imm = #0x394
    34ec: f8d6 8018    	ldr.w	r8, [r6, #0x18]
    34f0: f1b8 0f04    	cmp.w	r8, #0x4
    34f4: f084 80f0    	bhs.w	0x76d8 <Reset+0x72d0>   @ imm = #0x41e0
    34f8: 6a34         	ldr	r4, [r6, #0x20]
    34fa: 2c37         	cmp	r4, #0x37
    34fc: f204 80dc    	bhi.w	0x76b8 <Reset+0x72b0>   @ imm = #0x41b8
    3500: eb08 0048    	add.w	r0, r8, r8, lsl #1
    3504: 68f1         	ldr	r1, [r6, #0xc]
    3506: f8cd 1420    	str.w	r1, [sp, #0x420]
    350a: 6931         	ldr	r1, [r6, #0x10]
    350c: f8cd 1428    	str.w	r1, [sp, #0x428]
    3510: f8dd 141c    	ldr.w	r1, [sp, #0x41c]
    3514: ea4f 0a48    	lsl.w	r10, r8, #0x1
    3518: f91b 3004    	ldrsb.w	r3, [r11, r4]
    351c: eb01 0280    	add.w	r2, r1, r0, lsl #2
    3520: 6970         	ldr	r0, [r6, #0x14]
    3522: f8d6 e01c    	ldr.w	lr, [r6, #0x1c]
    3526: f10a 0604    	add.w	r6, r10, #0x4
    352a: ed92 1a01    	vldr	s2, [r2, #4]
    352e: ed92 0a02    	vldr	s0, [r2, #8]
    3532: eeb5 1a40    	vcmp.f32	s2, #0
    3536: f8cd 0424    	str.w	r0, [sp, #0x424]
    353a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    353e: d026         	beq	0x358e <Reset+0x3186>   @ imm = #0x4c
    3540: f1b3 3fff    	cmp.w	r3, #0xffffffff
    3544: dd23         	ble	0x358e <Reset+0x3186>   @ imm = #0x46
    3546: f1ba 0f09    	cmp.w	r10, #0x9
    354a: f204 80bd    	bhi.w	0x76c8 <Reset+0x72c0>   @ imm = #0x417a
    354e: f60d 5008    	addw	r0, sp, #0xd08
    3552: 5d85         	ldrb	r5, [r0, r6]
    3554: 2d03         	cmp	r5, #0x3
    3556: f084 80a7    	bhs.w	0x76a8 <Reset+0x72a0>   @ imm = #0x414e
    355a: eb06 0246    	add.w	r2, r6, r6, lsl #1
    355e: 4619         	mov	r1, r3
    3560: f60d 33b4    	addw	r3, sp, #0xbb4
    3564: eeb1 1a41    	vneg.f32	s2, s2
    3568: eb03 0b02    	add.w	r11, r3, r2
    356c: f60d 4328    	addw	r3, sp, #0xc28
    3570: eb03 0282    	add.w	r2, r3, r2, lsl #2
    3574: 460b         	mov	r3, r1
    3576: eb02 0285    	add.w	r2, r2, r5, lsl #2
    357a: f80b 1005    	strb.w	r1, [r11, r5]
    357e: f24e 0b98    	movw	r11, #0xe098
    3582: f2c0 0b00    	movt	r11, #0x0
    3586: ed82 1a00    	vstr	s2, [r2]
    358a: 1c6a         	adds	r2, r5, #0x1
    358c: 5582         	strb	r2, [r0, r6]
    358e: f1be 0f37    	cmp.w	lr, #0x37
    3592: f204 80a9    	bhi.w	0x76e8 <Reset+0x72e0>   @ imm = #0x4152
    3596: eeb5 0a40    	vcmp.f32	s0, #0
    359a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    359e: d026         	beq	0x35ee <Reset+0x31e6>   @ imm = #0x4c
    35a0: f91b 200e    	ldrsb.w	r2, [r11, lr]
    35a4: f1b2 3fff    	cmp.w	r2, #0xffffffff
    35a8: dd21         	ble	0x35ee <Reset+0x31e6>   @ imm = #0x42
    35aa: f1ba 0f09    	cmp.w	r10, #0x9
    35ae: f204 808b    	bhi.w	0x76c8 <Reset+0x72c0>   @ imm = #0x4116
    35b2: f60d 5a08    	addw	r10, sp, #0xd08
    35b6: f81a 5006    	ldrb.w	r5, [r10, r6]
    35ba: 2d03         	cmp	r5, #0x3
    35bc: f084 8074    	bhs.w	0x76a8 <Reset+0x72a0>   @ imm = #0x40e8
    35c0: eb06 0146    	add.w	r1, r6, r6, lsl #1
    35c4: 4618         	mov	r0, r3
    35c6: f60d 33b4    	addw	r3, sp, #0xbb4
    35ca: eeb1 0a40    	vneg.f32	s0, s0
    35ce: eb03 0e01    	add.w	lr, r3, r1
    35d2: f60d 4328    	addw	r3, sp, #0xc28
    35d6: eb03 0181    	add.w	r1, r3, r1, lsl #2
    35da: 4603         	mov	r3, r0
    35dc: eb01 0185    	add.w	r1, r1, r5, lsl #2
    35e0: f80e 2005    	strb.w	r2, [lr, r5]
    35e4: ed81 0a00    	vstr	s0, [r1]
    35e8: 1c69         	adds	r1, r5, #0x1
    35ea: f80a 1006    	strb.w	r1, [r10, r6]
    35ee: eeb0 0a6d    	vmov.f32	s0, s27
    35f2: ea5f 75c9    	lsls.w	r5, r9, #0x1f
    35f6: f60d 1af4    	addw	r10, sp, #0x9f4
    35fa: f50d 62de    	add.w	r2, sp, #0x6f0
    35fe: f8dd 9424    	ldr.w	r9, [sp, #0x424]
    3602: d008         	beq	0x3616 <Reset+0x320e>   @ imm = #0x10
    3604: f8dd 0420    	ldr.w	r0, [sp, #0x420]
    3608: 2838         	cmp	r0, #0x38
    360a: f084 807d    	bhs.w	0x7708 <Reset+0x7300>   @ imm = #0x40fa
    360e: eb02 0180    	add.w	r1, r2, r0, lsl #2
    3612: ed91 0a00    	vldr	s0, [r1]
    3616: eeb0 1a6d    	vmov.f32	s2, s27
    361a: f8dd 0428    	ldr.w	r0, [sp, #0x428]
    361e: 07c1         	lsls	r1, r0, #0x1f
    3620: d007         	beq	0x3632 <Reset+0x322a>   @ imm = #0xe
    3622: f1b9 0f37    	cmp.w	r9, #0x37
    3626: f204 8077    	bhi.w	0x7718 <Reset+0x7310>   @ imm = #0x40ee
    362a: eb02 0189    	add.w	r1, r2, r9, lsl #2
    362e: ed91 1a00    	vldr	s2, [r1]
    3632: eb02 0184    	add.w	r1, r2, r4, lsl #2
    3636: ee30 0a41    	vsub.f32	s0, s0, s2
    363a: ed91 1a00    	vldr	s2, [r1]
    363e: ee21 1a04    	vmul.f32	s2, s2, s8
    3642: ee00 1a02    	vmla.f32	s2, s0, s4
    3646: eeb0 0ac1    	vabs.f32	s0, s2
    364a: eeb4 0a43    	vcmp.f32	s0, s6
    364e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    3652: f57f af3d    	bpl.w	0x34d0 <Reset+0x30c8>   @ imm = #-0x186
    3656: 2105         	movs	r1, #0x5
    3658: 4618         	mov	r0, r3
    365a: 2b00         	cmp	r3, #0x0
    365c: eb01 0348    	add.w	r3, r1, r8, lsl #1
    3660: f60d 4e28    	addw	lr, sp, #0xc28
    3664: f60d 5408    	addw	r4, sp, #0xd08
    3668: d416         	bmi	0x3698 <Reset+0x3290>   @ imm = #0x2c
    366a: 2b0d         	cmp	r3, #0xd
    366c: f204 8044    	bhi.w	0x76f8 <Reset+0x72f0>   @ imm = #0x4088
    3670: 5ce6         	ldrb	r6, [r4, r3]
    3672: 2e03         	cmp	r6, #0x3
    3674: f084 8058    	bhs.w	0x7728 <Reset+0x7320>   @ imm = #0x40b0
    3678: eb03 0143    	add.w	r1, r3, r3, lsl #1
    367c: f60d 32b4    	addw	r2, sp, #0xbb4
    3680: 440a         	add	r2, r1
    3682: eb0e 0181    	add.w	r1, lr, r1, lsl #2
    3686: 5590         	strb	r0, [r2, r6]
    3688: f245 30d2    	movw	r0, #0x53d2
    368c: f2c4 20fb    	movt	r0, #0x42fb
    3690: f841 0026    	str.w	r0, [r1, r6, lsl #2]
    3694: 1c71         	adds	r1, r6, #0x1
    3696: 54e1         	strb	r1, [r4, r3]
    3698: f8dd 0420    	ldr.w	r0, [sp, #0x420]
    369c: b1f5         	cbz	r5, 0x36dc <Reset+0x32d4> @ imm = #0x3c
    369e: 2837         	cmp	r0, #0x37
    36a0: f204 8052    	bhi.w	0x7748 <Reset+0x7340>   @ imm = #0x40a4
    36a4: f91b 2000    	ldrsb.w	r2, [r11, r0]
    36a8: f1b2 3fff    	cmp.w	r2, #0xffffffff
    36ac: dd16         	ble	0x36dc <Reset+0x32d4>   @ imm = #0x2c
    36ae: 2b0d         	cmp	r3, #0xd
    36b0: f204 8022    	bhi.w	0x76f8 <Reset+0x72f0>   @ imm = #0x4044
    36b4: 5ce6         	ldrb	r6, [r4, r3]
    36b6: 2e03         	cmp	r6, #0x3
    36b8: f084 8036    	bhs.w	0x7728 <Reset+0x7320>   @ imm = #0x406c
    36bc: eb03 0143    	add.w	r1, r3, r3, lsl #1
    36c0: f60d 35b4    	addw	r5, sp, #0xbb4
    36c4: 440d         	add	r5, r1
    36c6: f64b 7062    	movw	r0, #0xbf62
    36ca: eb0e 0181    	add.w	r1, lr, r1, lsl #2
    36ce: f6cc 30bf    	movt	r0, #0xcbbf
    36d2: 55aa         	strb	r2, [r5, r6]
    36d4: f841 0026    	str.w	r0, [r1, r6, lsl #2]
    36d8: 1c71         	adds	r1, r6, #0x1
    36da: 54e1         	strb	r1, [r4, r3]
    36dc: f8dd 0428    	ldr.w	r0, [sp, #0x428]
    36e0: 2801         	cmp	r0, #0x1
    36e2: f47f aef5    	bne.w	0x34d0 <Reset+0x30c8>   @ imm = #-0x216
    36e6: f1b9 0f37    	cmp.w	r9, #0x37
    36ea: f204 8035    	bhi.w	0x7758 <Reset+0x7350>   @ imm = #0x406a
    36ee: f91b 2009    	ldrsb.w	r2, [r11, r9]
    36f2: f1b2 3fff    	cmp.w	r2, #0xffffffff
    36f6: f77f aeeb    	ble.w	0x34d0 <Reset+0x30c8>   @ imm = #-0x22a
    36fa: 2b0d         	cmp	r3, #0xd
    36fc: f203 87fc    	bhi.w	0x76f8 <Reset+0x72f0>   @ imm = #0x3ff8
    3700: f60d 5408    	addw	r4, sp, #0xd08
    3704: 5ce0         	ldrb	r0, [r4, r3]
    3706: 2803         	cmp	r0, #0x3
    3708: f084 8016    	bhs.w	0x7738 <Reset+0x7330>   @ imm = #0x402c
    370c: eb03 0143    	add.w	r1, r3, r3, lsl #1
    3710: f60d 36b4    	addw	r6, sp, #0xbb4
    3714: 440e         	add	r6, r1
    3716: f60d 4528    	addw	r5, sp, #0xc28
    371a: eb05 0181    	add.w	r1, r5, r1, lsl #2
    371e: 5432         	strb	r2, [r6, r0]
    3720: f64b 7262    	movw	r2, #0xbf62
    3724: f6c4 32bf    	movt	r2, #0x4bbf
    3728: f841 2020    	str.w	r2, [r1, r0, lsl #2]
    372c: 3001         	adds	r0, #0x1
    372e: 54e0         	strb	r0, [r4, r3]
    3730: e6ce         	b	0x34d0 <Reset+0x30c8>   @ imm = #-0x264
    3732: bf00         	nop
    3734: 62 bf bf 4b  	.word	0x4bbfbf62
    3738: 00 24 74 4b  	.word	0x4b742400
    373c: d2 53 fb c2  	.word	0xc2fb53d2
    3740: 59 e4 70 4c  	.word	0x4c70e459
    3744: f9 de 1d c4  	.word	0xc41ddef9
    3748: 00 24 f4 4a  	.word	0x4af42400
    374c: 00 bf 00 bf  	.word	0xbf00bf00
    3750: c8 41 9b f0  	.word	0xf09b41c8
    3754: 63 9f da c0  	.word	0xc0da9f63
    3758: 1e e3 9b 1c  	.word	0x1c9be31e
    375c: 51 c3 da c0  	.word	0xc0dac351
    3760: 2b 9c ba d0  	.word	0xd0ba9c2b
    3764: a1 8f e2 bf  	.word	0xbfe28fa1
    3768: 0f 8e b3 99  	.word	0x99b38e0f
    376c: dd 38 b2 c0  	.word	0xc0b238dd
    3770: 53 ed 7a 35  	.word	0x357aed53
    3774: 70 8d f7 bf  	.word	0xbff78d70
    3778: 8d 0c d4 6e  	.word	0x6ed40c8d
    377c: bf 13 e1 3f  	.word	0x3fe113bf
    3780: 4e 3c f3 af  	.word	0xaff33c4e
    3784: 9e a8 b7 c0  	.word	0xc0b7a89e
    3788: c7 8f 63 f1  	.word	0xf1638fc7
    378c: e1 a6 b7 c0  	.word	0xc0b7a6e1
    3790: c3 08 fb 6f  	.word	0x6ffb08c3
    3794: 3c 9d d1 3f  	.word	0x3fd19d3c
    3798: 8a fa 4b ae  	.word	0xae4bfa8a
    379c: 9f 7e c0 3f  	.word	0x3fc07e9f
    37a0: c1 dd a2 ac  	.word	0xaca2ddc1
    37a4: 65 a0 da c0  	.word	0xc0daa065
    37a8: c7 41 9b f0  	.word	0xf09b41c7
    37ac: 63 9f da c0  	.word	0xc0da9f63
    37b0: b8 7c 71 81  	.word	0x81717cb8
    37b4: 55 90 e2 bf  	.word	0xbfe29055
    37b8: 51 5b 13 a1  	.word	0xa1135b51
    37bc: bf d4 a8 c0  	.word	0xc0a8d4bf
    37c0: 58 c8 51 b0  	.word	0xb051c858
    37c4: 31 c6 c5 c0  	.word	0xc0c5c631
    37c8: 4b b6 58 14  	.word	0x1458b64b
    37cc: 93 73 bf c0  	.word	0xc0bf7393
    37d0: 4f 5b 13 a1  	.word	0xa1135b4f
    37d4: bf d4 a8 c0  	.word	0xc0a8d4bf
    37d8: 6a 1f ff 99  	.word	0x99ff1f6a
    37dc: 27 ba c5 c0  	.word	0xc0c5ba27
    37e0: 5c aa ae 7b  	.word	0x7baeaa5c
    37e4: 04 d9 a8 c0  	.word	0xc0a8d904
    37e8: c0 fa dd 9b  	.word	0x9bddfac0
    37ec: 69 7d c0 bf  	.word	0xbfc07d69
    37f0: 98 27 ea c6  	.word	0xc6ea2798
    37f4: 93 12 26 bf  	.word	0xbf261293
    37f8: f0 ad 6f 88  	.word	0x886fadf0
    37fc: f8 86 d4 3f  	.word	0x3fd486f8
    3800: 92 50 91 a7  	.word	0xa7915092
    3804: 76 85 d4 bf  	.word	0xbfd48576
    3808: 8a b4 00 81  	.word	0x8100b48a
    380c: a5 40 09 c0  	.word	0xc00940a5
    3810: ff ff ff ff  	.word	0xffffffff
    3814: ff ff ef bf  	.word	0xbfefffff
    3818: b4 f4 ef 18  	.word	0x18eff4b4
    381c: 8c c7 7c c0  	.word	0xc07cc78c
    3820: 10 37 20 66  	.word	0x66203710
    3824: 78 c7 d3 bf  	.word	0xbfd3c778
    3828: e8 b2 05 18  	.word	0x1805b2e8
    382c: 9a 8f d8 3e  	.word	0x3ed88f9a
    3830: 8a 3e f3 0e  	.word	0x0ef33e8a
    3834: 0e d8 12 3f  	.word	0x3f12d80e
    3838: 4b b1 7a 7d  	.word	0x7d7ab14b
    383c: cb 90 ee 3e  	.word	0x3eee90cb
    3840: 92 4f 84 16  	.word	0x16844f92
    3844: 71 9f dc 3e  	.word	0x3edc9f71
    3848: 78 7e 63 05  	.word	0x05637e78
    384c: cf 75 ed be  	.word	0xbeed75cf
    3850: 51 a6 36 30  	.word	0x3036a651
    3854: d0 6e 95 3f  	.word	0x3f956ed0
    3858: 46 94 c9 4b  	.word	0x4bc99446
    385c: 49 dc 02 3f  	.word	0x3f02dc49
    3860: 15 f4 24 6e  	.word	0x6e24f415
    3864: 67 a9 65 c0  	.word	0xc065a967
    3868: 3a 89 66 ef  	.word	0xef66893a
    386c: 92 12 8d bf  	.word	0xbf8d1292
    3870: e9 2e 7e aa  	.word	0xaa7e2ee9
    3874: 77 80 a5 c0  	.word	0xc0a58077
    3878: 8a fa 4b ae  	.word	0xae4bfa8a
    387c: 9f 7e c0 3f  	.word	0x3fc07e9f
    3880: eeb5 da40    	vcmp.f32	s26, #0
    3884: f20d 79ac    	addw	r9, sp, #0x7ac
    3888: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    388c: e9dd 6203    	ldrd	r6, r2, [sp, #12]
    3890: d011         	beq	0x38b6 <Reset+0x34ae>   @ imm = #0x22
    3892: f89d 0d14    	ldrb.w	r0, [sp, #0xd14]
    3896: 2802         	cmp	r0, #0x2
    3898: f203 874e    	bhi.w	0x7738 <Reset+0x7330>   @ imm = #0x3e9c
    389c: 992a         	ldr	r1, [sp, #0xa8]
    389e: 9b2b         	ldr	r3, [sp, #0xac]
    38a0: eeb1 0a4d    	vneg.f32	s0, s26
    38a4: 251c         	movs	r5, #0x1c
    38a6: eb01 0180    	add.w	r1, r1, r0, lsl #2
    38aa: 541d         	strb	r5, [r3, r0]
    38ac: 3001         	adds	r0, #0x1
    38ae: f88d 0d14    	strb.w	r0, [sp, #0xd14]
    38b2: ed81 0a00    	vstr	s0, [r1]
    38b6: eeb5 ca40    	vcmp.f32	s24, #0
    38ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    38be: d011         	beq	0x38e4 <Reset+0x34dc>   @ imm = #0x22
    38c0: f89d 0d14    	ldrb.w	r0, [sp, #0xd14]
    38c4: 2802         	cmp	r0, #0x2
    38c6: f203 8737    	bhi.w	0x7738 <Reset+0x7330>   @ imm = #0x3e6e
    38ca: 992a         	ldr	r1, [sp, #0xa8]
    38cc: 9b2b         	ldr	r3, [sp, #0xac]
    38ce: eeb1 0a4c    	vneg.f32	s0, s24
    38d2: 251b         	movs	r5, #0x1b
    38d4: eb01 0180    	add.w	r1, r1, r0, lsl #2
    38d8: 541d         	strb	r5, [r3, r0]
    38da: 3001         	adds	r0, #0x1
    38dc: f88d 0d14    	strb.w	r0, [sp, #0xd14]
    38e0: ed81 0a00    	vstr	s0, [r1]
    38e4: f50d 6e80    	add.w	lr, sp, #0x400
    38e8: ed1f 2a6b    	vldr	s4, [pc, #-428]         @ 0x3740 <Reset+0x3338>
    38ec: f89d 5d15    	ldrb.w	r5, [sp, #0xd15]
    38f0: ed9e 0ada    	vldr	s0, [lr, #872]
    38f4: f50d 6e80    	add.w	lr, sp, #0x400
    38f8: ed9e 1adc    	vldr	s2, [lr, #880]
    38fc: ee31 0a40    	vsub.f32	s0, s2, s0
    3900: ed1f 1a70    	vldr	s2, [pc, #-448]         @ 0x3744 <Reset+0x333c>
    3904: ee2e 1a01    	vmul.f32	s2, s28, s2
    3908: ee00 1a02    	vmla.f32	s2, s0, s4
    390c: eeb0 0ac1    	vabs.f32	s0, s2
    3910: ed1f 1a73    	vldr	s2, [pc, #-460]         @ 0x3748 <Reset+0x3340>
    3914: eeb4 0a41    	vcmp.f32	s0, s2
    3918: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    391c: d525         	bpl	0x396a <Reset+0x3562>   @ imm = #0x4a
    391e: 2d03         	cmp	r5, #0x3
    3920: f083 86c2    	bhs.w	0x76a8 <Reset+0x72a0>   @ imm = #0x3d84
    3924: 201c         	movs	r0, #0x1c
    3926: 5550         	strb	r0, [r2, r5]
    3928: 2d02         	cmp	r5, #0x2
    392a: f64d 60f9    	movw	r0, #0xdef9
    392e: f105 0301    	add.w	r3, r5, #0x1
    3932: f2c4 401d    	movt	r0, #0x441d
    3936: f846 0025    	str.w	r0, [r6, r5, lsl #2]
    393a: f003 8715    	beq.w	0x7768 <Reset+0x7360>   @ imm = #0x3e2a
    393e: 2011         	movs	r0, #0x11
    3940: 54d0         	strb	r0, [r2, r3]
    3942: f24e 4059    	movw	r0, #0xe459
    3946: 2d00         	cmp	r5, #0x0
    3948: f6cc 4070    	movt	r0, #0xcc70
    394c: f846 0023    	str.w	r0, [r6, r3, lsl #2]
    3950: f105 0002    	add.w	r0, r5, #0x2
    3954: f043 86f0    	bne.w	0x7738 <Reset+0x7330>   @ imm = #0x3de0
    3958: 210f         	movs	r1, #0xf
    395a: 5411         	strb	r1, [r2, r0]
    395c: f24e 4159    	movw	r1, #0xe459
    3960: 2503         	movs	r5, #0x3
    3962: f6c4 4170    	movt	r1, #0x4c70
    3966: f846 1020    	str.w	r1, [r6, r0, lsl #2]
    396a: ed99 0a3c    	vldr	s0, [r9, #240]
    396e: f50d 6e80    	add.w	lr, sp, #0x400
    3972: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    3976: ed99 0a27    	vldr	s0, [r9, #156]
    397a: eeb7 7ac0    	vcvt.f64.f32	d7, s0
    397e: f89d 0bb4    	ldrb.w	r0, [sp, #0xbb4]
    3982: ed1f 0b8d    	vldr	d0, [pc, #-564]         @ 0x3750 <Reset+0x3348>
    3986: 9048         	str	r0, [sp, #0x120]
    3988: f89d 0bb5    	ldrb.w	r0, [sp, #0xbb5]
    398c: ee21 bb00    	vmul.f64	d11, d1, d0
    3990: 9029         	str	r0, [sp, #0xa4]
    3992: ed99 0a4d    	vldr	s0, [r9, #308]
    3996: f89d 0bb6    	ldrb.w	r0, [sp, #0xbb6]
    399a: eeb7 aac0    	vcvt.f64.f32	d10, s0
    399e: 9018         	str	r0, [sp, #0x60]
    39a0: ed1f 0b93    	vldr	d0, [pc, #-588]         @ 0x3758 <Reset+0x3350>
    39a4: f89d 0bb7    	ldrb.w	r0, [sp, #0xbb7]
    39a8: f89d bbc3    	ldrb.w	r11, [sp, #0xbc3]
    39ac: ee07 bb00    	vmla.f64	d11, d7, d0
    39b0: 9065         	str	r0, [sp, #0x194]
    39b2: f89d 0bb8    	ldrb.w	r0, [sp, #0xbb8]
    39b6: 956a         	str	r5, [sp, #0x1a8]
    39b8: ed1f 0b97    	vldr	d0, [pc, #-604]         @ 0x3760 <Reset+0x3358>
    39bc: 9030         	str	r0, [sp, #0xc0]
    39be: f89d 0bb9    	ldrb.w	r0, [sp, #0xbb9]
    39c2: ee0a bb00    	vmla.f64	d11, d10, d0
    39c6: 9013         	str	r0, [sp, #0x4c]
    39c8: ed99 0a32    	vldr	s0, [r9, #200]
    39cc: f89d 0bba    	ldrb.w	r0, [sp, #0xbba]
    39d0: eeb7 5ac0    	vcvt.f64.f32	d5, s0
    39d4: ed99 0a31    	vldr	s0, [r9, #196]
    39d8: eeb7 6ac0    	vcvt.f64.f32	d6, s0
    39dc: 9055         	str	r0, [sp, #0x154]
    39de: ed1f 0b9e    	vldr	d0, [pc, #-632]         @ 0x3768 <Reset+0x3360>
    39e2: f89d 0bbb    	ldrb.w	r0, [sp, #0xbbb]
    39e6: f89d 5d0c    	ldrb.w	r5, [sp, #0xd0c]
    39ea: ee25 2b00    	vmul.f64	d2, d5, d0
    39ee: 902f         	str	r0, [sp, #0xbc]
    39f0: ed99 0a52    	vldr	s0, [r9, #328]
    39f4: ed8e 0a08    	vstr	s0, [lr, #32]
    39f8: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    39fc: f50d 6e80    	add.w	lr, sp, #0x400
    3a00: ed1f 0ba5    	vldr	d0, [pc, #-660]         @ 0x3770 <Reset+0x3368>
    3a04: f89d 0bbc    	ldrb.w	r0, [sp, #0xbbc]
    3a08: f89d 1d08    	ldrb.w	r1, [sp, #0xd08]
    3a0c: ee06 2b00    	vmla.f64	d2, d6, d0
    3a10: 9011         	str	r0, [sp, #0x44]
    3a12: f89d 0bbd    	ldrb.w	r0, [sp, #0xbbd]
    3a16: f89d cd09    	ldrb.w	r12, [sp, #0xd09]
    3a1a: ed1f 0ba9    	vldr	d0, [pc, #-676]         @ 0x3778 <Reset+0x3370>
    3a1e: 903c         	str	r0, [sp, #0xf0]
    3a20: f89d 0bbe    	ldrb.w	r0, [sp, #0xbbe]
    3a24: ee04 2b40    	vmls.f64	d2, d4, d0
    3a28: 903a         	str	r0, [sp, #0xe8]
    3a2a: ed99 0a37    	vldr	s0, [r9, #220]
    3a2e: f89d 0bbf    	ldrb.w	r0, [sp, #0xbbf]
    3a32: eeb7 dac0    	vcvt.f64.f32	d13, s0
    3a36: ed99 0a2a    	vldr	s0, [r9, #168]
    3a3a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    3a3e: 901d         	str	r0, [sp, #0x74]
    3a40: ed1f 8bb1    	vldr	d8, [pc, #-708]         @ 0x3780 <Reset+0x3378>
    3a44: f89d 0bc0    	ldrb.w	r0, [sp, #0xbc0]
    3a48: f1bc 0f00    	cmp.w	r12, #0x0
    3a4c: ed1f 9bb2    	vldr	d9, [pc, #-712]         @ 0x3788 <Reset+0x3380>
    3a50: 9053         	str	r0, [sp, #0x14c]
    3a52: f89d 0bc1    	ldrb.w	r0, [sp, #0xbc1]
    3a56: ed8e 2b00    	vstr	d2, [lr]
    3a5a: f50d 6e80    	add.w	lr, sp, #0x400
    3a5e: 9051         	str	r0, [sp, #0x144]
    3a60: ee2d 2b08    	vmul.f64	d2, d13, d8
    3a64: f89d 0bc2    	ldrb.w	r0, [sp, #0xbc2]
    3a68: 902d         	str	r0, [sp, #0xb4]
    3a6a: f89d 0bc4    	ldrb.w	r0, [sp, #0xbc4]
    3a6e: ee00 2b09    	vmla.f64	d2, d0, d9
    3a72: 904c         	str	r0, [sp, #0x130]
    3a74: ed99 9a4e    	vldr	s18, [r9, #312]
    3a78: f89d 0bc5    	ldrb.w	r0, [sp, #0xbc5]
    3a7c: eeb7 cac9    	vcvt.f64.f32	d12, s18
    3a80: ed99 9a4f    	vldr	s18, [r9, #316]
    3a84: eeb7 eac9    	vcvt.f64.f32	d14, s18
    3a88: 902c         	str	r0, [sp, #0xb0]
    3a8a: ed1f 9bbf    	vldr	d9, [pc, #-764]         @ 0x3790 <Reset+0x3388>
    3a8e: f89d 0bc6    	ldrb.w	r0, [sp, #0xbc6]
    3a92: f89d 2d0b    	ldrb.w	r2, [sp, #0xd0b]
    3a96: ee0c 2b49    	vmls.f64	d2, d12, d9
    3a9a: f89d 3d10    	ldrb.w	r3, [sp, #0xd10]
    3a9e: f89d 6d11    	ldrb.w	r6, [sp, #0xd11]
    3aa2: ee0e 2b49    	vmls.f64	d2, d14, d9
    3aa6: f89d 8d12    	ldrb.w	r8, [sp, #0xd12]
    3aaa: f89d 4d13    	ldrb.w	r4, [sp, #0xd13]
    3aae: ed1f 9bc6    	vldr	d9, [pc, #-792]         @ 0x3798 <Reset+0x3390>
    3ab2: ee04 2b49    	vmls.f64	d2, d4, d9
    3ab6: ed1f 9bc6    	vldr	d9, [pc, #-792]         @ 0x37a0 <Reset+0x3398>
    3aba: eeb0 fb42    	vmov.f64	d15, d2
    3abe: ee21 2b09    	vmul.f64	d2, d1, d9
    3ac2: ed99 9a42    	vldr	s18, [r9, #264]
    3ac6: ed1f 1bc8    	vldr	d1, [pc, #-800]         @ 0x37a8 <Reset+0x33a0>
    3aca: ee07 2b01    	vmla.f64	d2, d7, d1
    3ace: ed99 7a4a    	vldr	s14, [r9, #296]
    3ad2: ed1f 1bc9    	vldr	d1, [pc, #-804]         @ 0x37b0 <Reset+0x33a8>
    3ad6: eeb7 7ac7    	vcvt.f64.f32	d7, s14
    3ada: ee0a 2b01    	vmla.f64	d2, d10, d1
    3ade: eeb7 aac9    	vcvt.f64.f32	d10, s18
    3ae2: ed1f 1bcb    	vldr	d1, [pc, #-812]         @ 0x37b8 <Reset+0x33b0>
    3ae6: ed8d 2bfe    	vstr	d2, [sp, #1016]
    3aea: ee27 2b01    	vmul.f64	d2, d7, d1
    3aee: ed1f 1bcc    	vldr	d1, [pc, #-816]         @ 0x37c0 <Reset+0x33b8>
    3af2: ee0a 2b01    	vmla.f64	d2, d10, d1
    3af6: ed1f 1bcc    	vldr	d1, [pc, #-816]         @ 0x37c8 <Reset+0x33c0>
    3afa: eeb0 3b42    	vmov.f64	d3, d2
    3afe: ed99 2a53    	vldr	s4, [r9, #332]
    3b02: ed8d 2ae5    	vstr	s4, [sp, #916]
    3b06: ee27 8b01    	vmul.f64	d8, d7, d1
    3b0a: ed99 7a4b    	vldr	s14, [r9, #300]
    3b0e: eeb7 9ac2    	vcvt.f64.f32	d9, s4
    3b12: ed1f 1bd1    	vldr	d1, [pc, #-836]         @ 0x37d0 <Reset+0x33c8>
    3b16: eeb7 7ac7    	vcvt.f64.f32	d7, s14
    3b1a: ee0a 8b01    	vmla.f64	d8, d10, d1
    3b1e: ed1f 1bd2    	vldr	d1, [pc, #-840]         @ 0x37d8 <Reset+0x33d0>
    3b22: ee07 3b01    	vmla.f64	d3, d7, d1
    3b26: ed1f 1bd2    	vldr	d1, [pc, #-840]         @ 0x37e0 <Reset+0x33d8>
    3b2a: ee07 8b01    	vmla.f64	d8, d7, d1
    3b2e: ed1f 1bd2    	vldr	d1, [pc, #-840]         @ 0x37e8 <Reset+0x33e0>
    3b32: ee20 7b01    	vmul.f64	d7, d0, d1
    3b36: ed1f 1bd2    	vldr	d1, [pc, #-840]         @ 0x37f0 <Reset+0x33e8>
    3b3a: ee06 7b01    	vmla.f64	d7, d6, d1
    3b3e: ed99 6a3d    	vldr	s12, [r9, #244]
    3b42: ed1f 1bf3    	vldr	d1, [pc, #-972]         @ 0x3778 <Reset+0x3370>
    3b46: eeb7 aac6    	vcvt.f64.f32	d10, s12
    3b4a: ee05 7b41    	vmls.f64	d7, d5, d1
    3b4e: ed99 5a33    	vldr	s10, [r9, #204]
    3b52: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    3b56: ed1f 2bd8    	vldr	d2, [pc, #-864]         @ 0x37f8 <Reset+0x33f0>
    3b5a: ee37 5b45    	vsub.f64	d5, d7, d5
    3b5e: ed1f 7bd8    	vldr	d7, [pc, #-864]         @ 0x3800 <Reset+0x33f8>
    3b62: ed1f 6bd7    	vldr	d6, [pc, #-860]         @ 0x3808 <Reset+0x3400>
    3b66: ed1f 1bd6    	vldr	d1, [pc, #-856]         @ 0x3810 <Reset+0x3408>
    3b6a: ee20 0b07    	vmul.f64	d0, d0, d7
    3b6e: ed99 7a38    	vldr	s14, [r9, #224]
    3b72: ee0d 0b42    	vmls.f64	d0, d13, d2
    3b76: eeb7 7ac7    	vcvt.f64.f32	d7, s14
    3b7a: ed8d 3bea    	vstr	d3, [sp, #936]
    3b7e: ee2a 3b06    	vmul.f64	d3, d10, d6
    3b82: ee09 3b01    	vmla.f64	d3, d9, d1
    3b86: ee09 fb42    	vmls.f64	d15, d9, d2
    3b8a: ed8d 3be2    	vstr	d3, [sp, #904]
    3b8e: ed1f 3bc6    	vldr	d3, [pc, #-792]         @ 0x3878 <Reset+0x3470>
    3b92: ed8d fbe8    	vstr	d15, [sp, #928]
    3b96: ee30 fb47    	vsub.f64	d15, d0, d7
    3b9a: ed99 0a40    	vldr	s0, [r9, #256]
    3b9e: edd9 0a3f    	vldr	s1, [r9, #252]
    3ba2: ee0d 5b43    	vmls.f64	d5, d13, d3
    3ba6: eeb7 dac0    	vcvt.f64.f32	d13, s0
    3baa: ee0a fb01    	vmla.f64	d15, d10, d1
    3bae: eeb7 0ae0    	vcvt.f64.f32	d0, s1
    3bb2: ed1f 1be7    	vldr	d1, [pc, #-924]         @ 0x3818 <Reset+0x3410>
    3bb6: ee2d 6b01    	vmul.f64	d6, d13, d1
    3bba: ed1f 1be7    	vldr	d1, [pc, #-924]         @ 0x3820 <Reset+0x3418>
    3bbe: ed1f 3be6    	vldr	d3, [pc, #-920]         @ 0x3828 <Reset+0x3420>
    3bc2: ee00 6b01    	vmla.f64	d6, d0, d1
    3bc6: ed1f 1be6    	vldr	d1, [pc, #-920]         @ 0x3830 <Reset+0x3428>
    3bca: ee0c 5b43    	vmls.f64	d5, d12, d3
    3bce: ed1f 2be6    	vldr	d2, [pc, #-920]         @ 0x3838 <Reset+0x3430>
    3bd2: ee0e 5b43    	vmls.f64	d5, d14, d3
    3bd6: ed99 3a3e    	vldr	s6, [r9, #248]
    3bda: ee04 5b01    	vmla.f64	d5, d4, d1
    3bde: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    3be2: ed1f 1be9    	vldr	d1, [pc, #-932]         @ 0x3840 <Reset+0x3438>
    3be6: ee0c fb42    	vmls.f64	d15, d12, d2
    3bea: ee09 5b41    	vmls.f64	d5, d9, d1
    3bee: ee0e fb42    	vmls.f64	d15, d14, d2
    3bf2: ee04 fb41    	vmls.f64	d15, d4, d1
    3bf6: ed1f 1bec    	vldr	d1, [pc, #-944]         @ 0x3848 <Reset+0x3440>
    3bfa: ee10 3b01    	vnmls.f64	d3, d0, d1
    3bfe: ed99 0a41    	vldr	s0, [r9, #260]
    3c02: edd9 0a24    	vldr	s1, [r9, #144]
    3c06: ed1f 1bee    	vldr	d1, [pc, #-952]         @ 0x3850 <Reset+0x3448>
    3c0a: ed1f 2bed    	vldr	d2, [pc, #-948]         @ 0x3858 <Reset+0x3450>
    3c0e: ee0d 3b41    	vmls.f64	d3, d13, d1
    3c12: eeb7 dac0    	vcvt.f64.f32	d13, s0
    3c16: ed99 0a4c    	vldr	s0, [r9, #304]
    3c1a: ee09 fb02    	vmla.f64	d15, d9, d2
    3c1e: eeb7 2ae0    	vcvt.f64.f32	d2, s1
    3c22: ed1f 9bf1    	vldr	d9, [pc, #-964]         @ 0x3860 <Reset+0x3458>
    3c26: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    3c2a: ed8d 5bbe    	vstr	d5, [sp, #760]
    3c2e: ee33 5b4d    	vsub.f64	d5, d3, d13
    3c32: ed99 3a23    	vldr	s6, [r9, #140]
    3c36: ed8d 2bb2    	vstr	d2, [sp, #712]
    3c3a: eeb7 4ac3    	vcvt.f64.f32	d4, s6
    3c3e: ee22 eb09    	vmul.f64	d14, d2, d9
    3c42: ed1f 2bf7    	vldr	d2, [pc, #-988]         @ 0x3868 <Reset+0x3460>
    3c46: ed1f 3bf6    	vldr	d3, [pc, #-984]         @ 0x3870 <Reset+0x3468>
    3c4a: ee00 5b02    	vmla.f64	d5, d0, d2
    3c4e: ed99 0a25    	vldr	s0, [r9, #148]
    3c52: ee04 eb03    	vmla.f64	d14, d4, d3
    3c56: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    3c5a: ed99 0a39    	vldr	s0, [r9, #228]
    3c5e: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    3c62: ed9f 0bf9    	vldr	d0, [pc, #996]          @ 0x4048 <Reset+0x3c40>
    3c66: ee03 eb00    	vmla.f64	d14, d3, d0
    3c6a: ed9f 0bf9    	vldr	d0, [pc, #996]          @ 0x4050 <Reset+0x3c48>
    3c6e: ee02 eb00    	vmla.f64	d14, d2, d0
    3c72: ed99 0a50    	vldr	s0, [r9, #320]
    3c76: ed8d 0ac3    	vstr	s0, [sp, #780]
    3c7a: ed8d 2bae    	vstr	d2, [sp, #696]
    3c7e: eeb7 2ac0    	vcvt.f64.f32	d2, s0
    3c82: ed99 0a58    	vldr	s0, [r9, #352]
    3c86: ed8d 3baa    	vstr	d3, [sp, #680]
    3c8a: ed8d 0ab9    	vstr	s0, [sp, #740]
    3c8e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    3c92: ed9f 3bf7    	vldr	d3, [pc, #988]          @ 0x4070 <Reset+0x3c68>
    3c96: ee02 eb03    	vmla.f64	d14, d2, d3
    3c9a: ee00 6b41    	vmls.f64	d6, d0, d1
    3c9e: ed9f 1bf6    	vldr	d1, [pc, #984]          @ 0x4078 <Reset+0x3c70>
    3ca2: ee00 5b01    	vmla.f64	d5, d0, d1
    3ca6: eeb7 0bce    	vcvt.f32.f64	s0, d14
    3caa: ed8e 0a09    	vstr	s0, [lr, #36]
    3cae: f50d 6e80    	add.w	lr, sp, #0x400
    3cb2: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    3cb6: ed8e 0a0a    	vstr	s0, [lr, #40]
    3cba: ed99 0a2d    	vldr	s0, [r9, #180]
    3cbe: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    3cc2: ed99 0a2c    	vldr	s0, [r9, #176]
    3cc6: ed9f 1bee    	vldr	d1, [pc, #952]          @ 0x4080 <Reset+0x3c78>
    3cca: f50d 6e80    	add.w	lr, sp, #0x400
    3cce: ed8d 4bac    	vstr	d4, [sp, #688]
    3cd2: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    3cd6: ed99 0a2e    	vldr	s0, [r9, #184]
    3cda: ee23 eb01    	vmul.f64	d14, d3, d1
    3cde: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    3ce2: ed9f 0be9    	vldr	d0, [pc, #932]          @ 0x4088 <Reset+0x3c80>
    3ce6: ee04 eb00    	vmla.f64	d14, d4, d0
    3cea: ed9f 0be9    	vldr	d0, [pc, #932]          @ 0x4090 <Reset+0x3c88>
    3cee: ee01 eb00    	vmla.f64	d14, d1, d0
    3cf2: ed99 0a36    	vldr	s0, [r9, #216]
    3cf6: eeb7 dac0    	vcvt.f64.f32	d13, s0
    3cfa: ed99 0a51    	vldr	s0, [r9, #324]
    3cfe: ed8d 0ac2    	vstr	s0, [sp, #776]
    3d02: eeb7 bac0    	vcvt.f64.f32	d11, s0
    3d06: ed9f 0be4    	vldr	d0, [pc, #912]          @ 0x4098 <Reset+0x3c90>
    3d0a: ee0d eb00    	vmla.f64	d14, d13, d0
    3d0e: ed9f 0be4    	vldr	d0, [pc, #912]          @ 0x40a0 <Reset+0x3c98>
    3d12: ee0b eb40    	vmls.f64	d14, d11, d0
    3d16: ed99 0a30    	vldr	s0, [r9, #192]
    3d1a: ed8d 1bf8    	vstr	d1, [sp, #992]
    3d1e: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    3d22: ed99 0a22    	vldr	s0, [r9, #136]
    3d26: ed8d 3bfa    	vstr	d3, [sp, #1000]
    3d2a: ed9f 3bdf    	vldr	d3, [pc, #892]          @ 0x40a8 <Reset+0x3ca0>
    3d2e: ed8d 4bf2    	vstr	d4, [sp, #968]
    3d32: eeb7 4ac0    	vcvt.f64.f32	d4, s0
    3d36: ed99 0a3a    	vldr	s0, [r9, #232]
    3d3a: ed8d 1ba8    	vstr	d1, [sp, #672]
    3d3e: ee21 3b03    	vmul.f64	d3, d1, d3
    3d42: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    3d46: ed9f 0bda    	vldr	d0, [pc, #872]          @ 0x40b0 <Reset+0x3ca8>
    3d4a: ee04 3b00    	vmla.f64	d3, d4, d0
    3d4e: ed9f 0bda    	vldr	d0, [pc, #872]          @ 0x40b8 <Reset+0x3cb0>
    3d52: ee01 3b00    	vmla.f64	d3, d1, d0
    3d56: ed9f 0bda    	vldr	d0, [pc, #872]          @ 0x40c0 <Reset+0x3cb8>
    3d5a: ee02 3b00    	vmla.f64	d3, d2, d0
    3d5e: eeb7 0bce    	vcvt.f32.f64	s0, d14
    3d62: ed8e 0a02    	vstr	s0, [lr, #8]
    3d66: f50d 6e80    	add.w	lr, sp, #0x400
    3d6a: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    3d6e: ed8d 0afd    	vstr	s0, [sp, #1012]
    3d72: ed99 0a34    	vldr	s0, [r9, #208]
    3d76: eeb7 aac0    	vcvt.f64.f32	d10, s0
    3d7a: ed99 0a2b    	vldr	s0, [r9, #172]
    3d7e: eeb7 9ac0    	vcvt.f64.f32	d9, s0
    3d82: ed9f 0bd1    	vldr	d0, [pc, #836]          @ 0x40c8 <Reset+0x3cc0>
    3d86: ed9f 3bd2    	vldr	d3, [pc, #840]          @ 0x40d0 <Reset+0x3cc8>
    3d8a: ee2a 0b00    	vmul.f64	d0, d10, d0
    3d8e: ee09 0b03    	vmla.f64	d0, d9, d3
    3d92: ed99 3a35    	vldr	s6, [r9, #212]
    3d96: ed8d 8be6    	vstr	d8, [sp, #920]
    3d9a: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    3d9e: ed99 3a43    	vldr	s6, [r9, #268]
    3da2: eeb7 cac3    	vcvt.f64.f32	d12, s6
    3da6: ed9f 3bcc    	vldr	d3, [pc, #816]          @ 0x40d8 <Reset+0x3cd0>
    3daa: ee08 0b03    	vmla.f64	d0, d8, d3
    3dae: ed9f 3bcc    	vldr	d3, [pc, #816]          @ 0x40e0 <Reset+0x3cd8>
    3db2: ee0c 0b03    	vmla.f64	d0, d12, d3
    3db6: ed99 3a44    	vldr	s6, [r9, #272]
    3dba: eeb7 7ac3    	vcvt.f64.f32	d7, s6
    3dbe: ed99 3a45    	vldr	s6, [r9, #276]
    3dc2: ed8d 6bb6    	vstr	d6, [sp, #728]
    3dc6: eeb7 6ac3    	vcvt.f64.f32	d6, s6
    3dca: ed9f 3bc7    	vldr	d3, [pc, #796]          @ 0x40e8 <Reset+0x3ce0>
    3dce: ee07 0b03    	vmla.f64	d0, d7, d3
    3dd2: ed9f 3bc7    	vldr	d3, [pc, #796]          @ 0x40f0 <Reset+0x3ce8>
    3dd6: ee06 0b03    	vmla.f64	d0, d6, d3
    3dda: ed99 3a46    	vldr	s6, [r9, #280]
    3dde: ed8d 5bba    	vstr	d5, [sp, #744]
    3de2: eeb7 5ac3    	vcvt.f64.f32	d5, s6
    3de6: ed99 3a47    	vldr	s6, [r9, #284]
    3dea: ed8d 4ba4    	vstr	d4, [sp, #656]
    3dee: eeb7 4ac3    	vcvt.f64.f32	d4, s6
    3df2: ed9f 3bc1    	vldr	d3, [pc, #772]          @ 0x40f8 <Reset+0x3cf0>
    3df6: ee05 0b03    	vmla.f64	d0, d5, d3
    3dfa: ed9f 3bc1    	vldr	d3, [pc, #772]          @ 0x4100 <Reset+0x3cf8>
    3dfe: ee04 0b03    	vmla.f64	d0, d4, d3
    3e02: ed99 3a48    	vldr	s6, [r9, #288]
    3e06: ed8d 2bb0    	vstr	d2, [sp, #704]
    3e0a: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    3e0e: ed99 3a49    	vldr	s6, [r9, #292]
    3e12: ed8d 1ba6    	vstr	d1, [sp, #664]
    3e16: eeb7 1ac3    	vcvt.f64.f32	d1, s6
    3e1a: ed9f 3bbb    	vldr	d3, [pc, #748]          @ 0x4108 <Reset+0x3d00>
    3e1e: ee02 0b03    	vmla.f64	d0, d2, d3
    3e22: ed9f 3bbb    	vldr	d3, [pc, #748]          @ 0x4110 <Reset+0x3d08>
    3e26: ee01 0b03    	vmla.f64	d0, d1, d3
    3e2a: ed9f 3bbb    	vldr	d3, [pc, #748]          @ 0x4118 <Reset+0x3d10>
    3e2e: ee0b 0b03    	vmla.f64	d0, d11, d3
    3e32: ed9e 3b00    	vldr	d3, [lr]
    3e36: f50d 6e80    	add.w	lr, sp, #0x400
    3e3a: eeb7 ebc3    	vcvt.f32.f64	s28, d3
    3e3e: ed8d eabd    	vstr	s28, [sp, #756]
    3e42: eef7 ebc0    	vcvt.f32.f64	s29, d0
    3e46: edcd ea69    	vstr	s29, [sp, #420]
    3e4a: ed9f 0bb5    	vldr	d0, [pc, #724]          @ 0x4120 <Reset+0x3d18>
    3e4e: ed9f 3bb6    	vldr	d3, [pc, #728]          @ 0x4128 <Reset+0x3d20>
    3e52: ee2a 0b00    	vmul.f64	d0, d10, d0
    3e56: ee09 0b03    	vmla.f64	d0, d9, d3
    3e5a: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4130 <Reset+0x3d28>
    3e5e: ee08 0b03    	vmla.f64	d0, d8, d3
    3e62: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4138 <Reset+0x3d30>
    3e66: ee0c 0b03    	vmla.f64	d0, d12, d3
    3e6a: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4140 <Reset+0x3d38>
    3e6e: ee07 0b03    	vmla.f64	d0, d7, d3
    3e72: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4148 <Reset+0x3d40>
    3e76: ee06 0b03    	vmla.f64	d0, d6, d3
    3e7a: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4150 <Reset+0x3d48>
    3e7e: ee05 0b03    	vmla.f64	d0, d5, d3
    3e82: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4158 <Reset+0x3d50>
    3e86: ee04 0b03    	vmla.f64	d0, d4, d3
    3e8a: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4160 <Reset+0x3d58>
    3e8e: ee02 0b03    	vmla.f64	d0, d2, d3
    3e92: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4168 <Reset+0x3d60>
    3e96: ee01 0b03    	vmla.f64	d0, d1, d3
    3e9a: ed9f 3bb5    	vldr	d3, [pc, #724]          @ 0x4170 <Reset+0x3d68>
    3e9e: ed8d 1b8c    	vstr	d1, [sp, #560]
    3ea2: ee0b 0b03    	vmla.f64	d0, d11, d3
    3ea6: ed9f 3bb4    	vldr	d3, [pc, #720]          @ 0x4178 <Reset+0x3d70>
    3eaa: ed9d 1bfa    	vldr	d1, [sp, #1000]
    3eae: ed8d 4b90    	vstr	d4, [sp, #576]
    3eb2: ee21 3b03    	vmul.f64	d3, d1, d3
    3eb6: ed9f 4bb2    	vldr	d4, [pc, #712]          @ 0x4180 <Reset+0x3d78>
    3eba: ed9d 1bf2    	vldr	d1, [sp, #968]
    3ebe: ee01 3b04    	vmla.f64	d3, d1, d4
    3ec2: ed9f 4bb1    	vldr	d4, [pc, #708]          @ 0x4188 <Reset+0x3d80>
    3ec6: ed9d 1bf8    	vldr	d1, [sp, #992]
    3eca: ee01 3b04    	vmla.f64	d3, d1, d4
    3ece: ed9f 4bb0    	vldr	d4, [pc, #704]          @ 0x4190 <Reset+0x3d88>
    3ed2: ee0d 3b04    	vmla.f64	d3, d13, d4
    3ed6: ed9f 4bb0    	vldr	d4, [pc, #704]          @ 0x4198 <Reset+0x3d90>
    3eda: ee0b 3b04    	vmla.f64	d3, d11, d4
    3ede: eef7 4bc0    	vcvt.f32.f64	s9, d0
    3ee2: ed99 0a57    	vldr	s0, [r9, #348]
    3ee6: edcd 4ac1    	vstr	s9, [sp, #772]
    3eea: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    3eee: ed8d 2b8e    	vstr	d2, [sp, #568]
    3ef2: ed9f 2bab    	vldr	d2, [pc, #684]          @ 0x41a0 <Reset+0x3d98>
    3ef6: ed9d 1be8    	vldr	d1, [sp, #928]
    3efa: ee20 0b02    	vmul.f64	d0, d0, d2
    3efe: ed9e 2a09    	vldr	s4, [lr, #36]
    3f02: f50d 6e00    	add.w	lr, sp, #0x800
    3f06: eeb7 4bc3    	vcvt.f32.f64	s8, d3
    3f0a: ed8e 2aed    	vstr	s4, [lr, #948]
    3f0e: f50d 6e00    	add.w	lr, sp, #0x800
    3f12: eeb7 3bc1    	vcvt.f32.f64	s6, d1
    3f16: ed9d 1ac3    	vldr	s2, [sp, #780]
    3f1a: 90c3         	str	r0, [sp, #0x30c]
    3f1c: eeb1 1a41    	vneg.f32	s2, s2
    3f20: f89d 0bc7    	ldrb.w	r0, [sp, #0xbc7]
    3f24: ed8e 1aee    	vstr	s2, [lr, #952]
    3f28: f50d 6e80    	add.w	lr, sp, #0x400
    3f2c: ed8d 1aa2    	vstr	s2, [sp, #648]
    3f30: ed9d 2ac2    	vldr	s4, [sp, #776]
    3f34: ed9e 1a08    	vldr	s2, [lr, #32]
    3f38: f50d 6e80    	add.w	lr, sp, #0x400
    3f3c: 9044         	str	r0, [sp, #0x110]
    3f3e: f89d 0bc8    	ldrb.w	r0, [sp, #0xbc8]
    3f42: ed8d 5b92    	vstr	d5, [sp, #584]
    3f46: ed9e 5a0a    	vldr	s10, [lr, #40]
    3f4a: f50d 6e00    	add.w	lr, sp, #0x800
    3f4e: 9024         	str	r0, [sp, #0x90]
    3f50: f89d 0bc9    	ldrb.w	r0, [sp, #0xbc9]
    3f54: 90e8         	str	r0, [sp, #0x3a0]
    3f56: f89d 0bca    	ldrb.w	r0, [sp, #0xbca]
    3f5a: ed8e 5aef    	vstr	s10, [lr, #956]
    3f5e: f50d 6e80    	add.w	lr, sp, #0x400
    3f62: 9042         	str	r0, [sp, #0x108]
    3f64: f89d 0bcb    	ldrb.w	r0, [sp, #0xbcb]
    3f68: 9023         	str	r0, [sp, #0x8c]
    3f6a: f89d 0bcc    	ldrb.w	r0, [sp, #0xbcc]
    3f6e: ed9e 5a02    	vldr	s10, [lr, #8]
    3f72: f50d 6e00    	add.w	lr, sp, #0x800
    3f76: 9041         	str	r0, [sp, #0x104]
    3f78: f89d 0bcd    	ldrb.w	r0, [sp, #0xbcd]
    3f7c: 9022         	str	r0, [sp, #0x88]
    3f7e: f89d 0bce    	ldrb.w	r0, [sp, #0xbce]
    3f82: ed8e 5af0    	vstr	s10, [lr, #960]
    3f86: f50d 6e00    	add.w	lr, sp, #0x800
    3f8a: 900d         	str	r0, [sp, #0x34]
    3f8c: f89d 0bcf    	ldrb.w	r0, [sp, #0xbcf]
    3f90: eeb1 2a42    	vneg.f32	s4, s4
    3f94: 903f         	str	r0, [sp, #0xfc]
    3f96: f89d 0bd0    	ldrb.w	r0, [sp, #0xbd0]
    3f9a: ed8e 2af1    	vstr	s4, [lr, #964]
    3f9e: f50d 6e00    	add.w	lr, sp, #0x800
    3fa2: 903d         	str	r0, [sp, #0xf4]
    3fa4: f89d 0bd1    	ldrb.w	r0, [sp, #0xbd1]
    3fa8: ed8d 2a68    	vstr	s4, [sp, #416]
    3fac: 901f         	str	r0, [sp, #0x7c]
    3fae: f89d 0bd2    	ldrb.w	r0, [sp, #0xbd2]
    3fb2: ed9d 2afd    	vldr	s4, [sp, #1012]
    3fb6: ed8e 2af2    	vstr	s4, [lr, #968]
    3fba: f50d 6e00    	add.w	lr, sp, #0x800
    3fbe: 9054         	str	r0, [sp, #0x150]
    3fc0: f89d 0bd3    	ldrb.w	r0, [sp, #0xbd3]
    3fc4: eeb1 1a41    	vneg.f32	s2, s2
    3fc8: 9038         	str	r0, [sp, #0xe0]
    3fca: f89d 0bd4    	ldrb.w	r0, [sp, #0xbd4]
    3fce: ed8e eaf3    	vstr	s28, [lr, #972]
    3fd2: f50d 6e00    	add.w	lr, sp, #0x800
    3fd6: 901b         	str	r0, [sp, #0x6c]
    3fd8: f89d 0bd5    	ldrb.w	r0, [sp, #0xbd5]
    3fdc: 9052         	str	r0, [sp, #0x148]
    3fde: f89d 0bd6    	ldrb.w	r0, [sp, #0xbd6]
    3fe2: ed8e 1af4    	vstr	s2, [lr, #976]
    3fe6: f50d 6e00    	add.w	lr, sp, #0x800
    3fea: 9036         	str	r0, [sp, #0xd8]
    3fec: f89d 0bd7    	ldrb.w	r0, [sp, #0xbd7]
    3ff0: 9019         	str	r0, [sp, #0x64]
    3ff2: f89d 0bd8    	ldrb.w	r0, [sp, #0xbd8]
    3ff6: edce eaf5    	vstr	s29, [lr, #980]
    3ffa: f50d 6e00    	add.w	lr, sp, #0x800
    3ffe: 9035         	str	r0, [sp, #0xd4]
    4000: f89d 0bd9    	ldrb.w	r0, [sp, #0xbd9]
    4004: 9017         	str	r0, [sp, #0x5c]
    4006: f89d 0bda    	ldrb.w	r0, [sp, #0xbda]
    400a: 9007         	str	r0, [sp, #0x1c]
    400c: f89d 0bdb    	ldrb.w	r0, [sp, #0xbdb]
    4010: edce 4af6    	vstr	s9, [lr, #984]
    4014: f50d 6e00    	add.w	lr, sp, #0x800
    4018: 9033         	str	r0, [sp, #0xcc]
    401a: f89d 0bdc    	ldrb.w	r0, [sp, #0xbdc]
    401e: 9031         	str	r0, [sp, #0xc4]
    4020: f89d 0bdd    	ldrb.w	r0, [sp, #0xbdd]
    4024: ed8e 4af7    	vstr	s8, [lr, #988]
    4028: f50d 6e80    	add.w	lr, sp, #0x400
    402c: ed8d 1a66    	vstr	s2, [sp, #408]
    4030: ed9d 1ae5    	vldr	s2, [sp, #916]
    4034: ed8e 3a00    	vstr	s6, [lr]
    4038: f50d 6e00    	add.w	lr, sp, #0x800
    403c: eeb1 1a41    	vneg.f32	s2, s2
    4040: ed9d 2ab9    	vldr	s4, [sp, #740]
    4044: f000 b808    	b.w	0x4058 <Reset+0x3c50>   @ imm = #0x10
    4048: 04 2c 46 08  	.word	0x08462c04
    404c: 24 83 a5 c0  	.word	0xc0a58324
    4050: c1 39 ce a6  	.word	0xa6ce39c1
    4054: 34 8a a0 c0  	.word	0xc0a08a34
    4058: ed8e 3af8    	vstr	s6, [lr, #992]
    405c: f50d 6e00    	add.w	lr, sp, #0x800
    4060: ed8d 1a4a    	vstr	s2, [sp, #296]
    4064: eeb1 2a42    	vneg.f32	s4, s4
    4068: f000 b8a0    	b.w	0x41ac <Reset+0x3da4>   @ imm = #0x140
    406c: bf00         	nop
    406e: bf00         	nop
    4070: 8b b4 78 c0  	.word	0xc078b48b
    4074: 51 32 9c bf  	.word	0xbf9c3251
    4078: 60 0f 0b b7  	.word	0xb70b0f60
    407c: d9 83 c5 3f  	.word	0x3fc583d9
    4080: b1 81 4e f6  	.word	0xf64e81b1
    4084: 3a c3 af c0  	.word	0xc0afc33a
    4088: 8f 41 60 34  	.word	0x3460418f
    408c: b2 2b b2 c0  	.word	0xc0b22bb2
    4090: 89 90 be c1  	.word	0xc1be9089
    4094: 8b 2d b2 c0  	.word	0xc0b22d8b
    4098: 98 a4 1a 99  	.word	0x991aa498
    409c: 66 9e af c0  	.word	0xc0af9e66
    40a0: a8 b7 6f 23  	.word	0x236fb7a8
    40a4: 61 7e da 3f  	.word	0x3fda7e61
    40a8: b5 fa 16 77  	.word	0x7716fab5
    40ac: ae ff aa c0  	.word	0xc0aaffae
    40b0: a3 c3 ee 3a  	.word	0x3aeec3a3
    40b4: 2d b5 f0 bf  	.word	0xbff0b52d
    40b8: b5 3a 58 93  	.word	0x93583ab5
    40bc: 58 da a9 c0  	.word	0xc0a9da58
    40c0: 90 ca 6a cb  	.word	0xcb6aca90
    40c4: 09 2c d5 bf  	.word	0xbfd52c09
    40c8: d8 88 63 19  	.word	0x196388d8
    40cc: fc c8 f0 c0  	.word	0xc0f0c8fc
    40d0: 69 dc 58 50  	.word	0x5058dc69
    40d4: e2 72 f8 bf  	.word	0xbff872e2
    40d8: 93 80 9e 88  	.word	0x889e8093
    40dc: 3c 72 94 c0  	.word	0xc094723c
    40e0: 79 14 be 1a  	.word	0x1abe1479
    40e4: 94 02 9c c0  	.word	0xc09c0294
    40e8: e1 08 4b de  	.word	0xde4b08e1
    40ec: 9b 3a b6 c0  	.word	0xc0b63a9b
    40f0: 79 34 23 c0  	.word	0xc0233479
    40f4: b0 08 9c c0  	.word	0xc09c08b0
    40f8: 0b 30 1c bb  	.word	0xbb1c300b
    40fc: aa 17 b6 c0  	.word	0xc0b617aa
    4100: 40 30 ce b7  	.word	0xb7ce3040
    4104: b6 d5 b5 c0  	.word	0xc0b5d5b6
    4108: 05 43 ad ea  	.word	0xeaad4305
    410c: 52 d8 cd c0  	.word	0xc0cdd852
    4110: fd 72 b2 65  	.word	0x65b272fd
    4114: f1 c4 f0 c0  	.word	0xc0f0c4f1
    4118: 48 4c e0 ff  	.word	0xffe04c48
    411c: 41 fb de bf  	.word	0xbfdefb41
    4120: 95 80 9e 88  	.word	0x889e8095
    4124: 3c 72 94 c0  	.word	0xc094723c
    4128: 85 88 f7 f6  	.word	0xf6f78885
    412c: fa 46 08 c0  	.word	0xc00846fa
    4130: 3b 9d 45 30  	.word	0x30459d3b
    4134: 85 4d a4 c0  	.word	0xc0a44d85
    4138: 76 f1 3f 9c  	.word	0x9c3ff176
    413c: 47 00 a4 c0  	.word	0xc0a40047
    4140: 65 ba 12 33  	.word	0x3312ba65
    4144: 40 93 7d c0  	.word	0xc07d9340
    4148: 90 96 e9 23  	.word	0x23e99690
    414c: 09 00 a4 c0  	.word	0xc0a40009
    4150: 1e 50 cb b5  	.word	0xb5cb501e
    4154: e0 8b 7d c0  	.word	0xc07d8be0
    4158: 36 79 c0 4e  	.word	0x4ec07936
    415c: a0 33 7d c0  	.word	0xc07d33a0
    4160: f3 92 35 b6  	.word	0xb63592f3
    4164: 73 07 a2 c0  	.word	0xc0a20773
    4168: dd 65 f0 9b  	.word	0x9bf065dd
    416c: 99 72 94 c0  	.word	0xc0947299
    4170: 66 8c 11 7f  	.word	0x7f118c66
    4174: 9f c3 ee bf  	.word	0xbfeec39f
    4178: e2 5a 37 be  	.word	0xbe375ae2
    417c: 52 38 b1 c0  	.word	0xc0b13852
    4180: 4a 48 8f 7a  	.word	0x7a8f484a
    4184: ac a0 af c0  	.word	0xc0afa0ac
    4188: 97 a4 1a 99  	.word	0x991aa497
    418c: 66 9e af c0  	.word	0xc0af9e66
    4190: 17 70 7f 38  	.word	0x387f7017
    4194: a2 43 b1 c0  	.word	0xc0b143a2
    4198: 0f 86 f1 f3  	.word	0xf3f1860f
    419c: a6 0a d7 bf  	.word	0xbfd70aa6
    41a0: 32 2e 91 5a  	.word	0x5a912e32
    41a4: 8a 20 dd be  	.word	0xbedd208a
    41a8: 00 00 00 00  	.word	0x00000000
    41ac: ed8e 1af9    	vstr	s2, [lr, #996]
    41b0: f50d 6e00    	add.w	lr, sp, #0x800
    41b4: ed9d 1be2    	vldr	d1, [sp, #904]
    41b8: ed8d 2a47    	vstr	s4, [sp, #284]
    41bc: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    41c0: 9014         	str	r0, [sp, #0x50]
    41c2: ed8d 1ab5    	vstr	s2, [sp, #724]
    41c6: f89d 0d0d    	ldrb.w	r0, [sp, #0xd0d]
    41ca: ed8e 1afb    	vstr	s2, [lr, #1004]
    41ce: f50d 6e00    	add.w	lr, sp, #0x800
    41d2: ed9d 1bb6    	vldr	d1, [sp, #728]
    41d6: ed8d 4ac2    	vstr	s8, [sp, #776]
    41da: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    41de: 94e2         	str	r4, [sp, #0x388]
    41e0: ed8e 1afc    	vstr	s2, [lr, #1008]
    41e4: f50d 6e00    	add.w	lr, sp, #0x800
    41e8: ed8d 1aa3    	vstr	s2, [sp, #652]
    41ec: 462c         	mov	r4, r5
    41ee: ed9d 1bea    	vldr	d1, [sp, #936]
    41f2: ed8e 2afd    	vstr	s4, [lr, #1012]
    41f6: f50d 6e00    	add.w	lr, sp, #0x800
    41fa: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    41fe: 91ea         	str	r1, [sp, #0x3a8]
    4200: ed8d 1a4b    	vstr	s2, [sp, #300]
    4204: f89d 1d0e    	ldrb.w	r1, [sp, #0xd0e]
    4208: ed8e 1afe    	vstr	s2, [lr, #1016]
    420c: f50d 6e00    	add.w	lr, sp, #0x800
    4210: ed9d 1be6    	vldr	d1, [sp, #920]
    4214: 91e6         	str	r1, [sp, #0x398]
    4216: f89d 1d0f    	ldrb.w	r1, [sp, #0xd0f]
    421a: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    421e: ed8d 1ab6    	vstr	s2, [sp, #728]
    4222: ed8e 1aff    	vstr	s2, [lr, #1020]
    4226: f50d 6e40    	add.w	lr, sp, #0xc00
    422a: ed9d 1bbe    	vldr	d1, [sp, #760]
    422e: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    4232: ed8e 1a02    	vstr	s2, [lr, #8]
    4236: f50d 6e80    	add.w	lr, sp, #0x400
    423a: ed8d 1ab9    	vstr	s2, [sp, #740]
    423e: eeb7 1bcf    	vcvt.f32.f64	s2, d15
    4242: ed8e 1a08    	vstr	s2, [lr, #32]
    4246: f50d 6e40    	add.w	lr, sp, #0xc00
    424a: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    424e: ed8e 1a03    	vstr	s2, [lr, #12]
    4252: f50d 6e40    	add.w	lr, sp, #0xc00
    4256: ed8d 0ae5    	vstr	s0, [sp, #916]
    425a: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    425e: ed8e 0a07    	vstr	s0, [lr, #28]
    4262: f50d 6e40    	add.w	lr, sp, #0xc00
    4266: ed9d 0bba    	vldr	d0, [sp, #744]
    426a: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    426e: ed8e 0a08    	vstr	s0, [lr, #32]
    4272: f50d 6e40    	add.w	lr, sp, #0xc00
    4276: ed8d 0aba    	vstr	s0, [sp, #744]
    427a: eef0 0a6f    	vmov.f32	s1, s31
    427e: ed9e 0a0a    	vldr	s0, [lr, #40]
    4282: f50d 6e40    	add.w	lr, sp, #0xc00
    4286: ed8d 0a46    	vstr	s0, [sp, #280]
    428a: ed9e 0a0b    	vldr	s0, [lr, #44]
    428e: f50d 6e40    	add.w	lr, sp, #0xc00
    4292: ed8d 0a27    	vstr	s0, [sp, #156]
    4296: ed9e 0a0c    	vldr	s0, [lr, #48]
    429a: f50d 6e40    	add.w	lr, sp, #0xc00
    429e: ed8d 0a10    	vstr	s0, [sp, #64]
    42a2: edde 1a0d    	vldr	s3, [lr, #52]
    42a6: f50d 6e40    	add.w	lr, sp, #0xc00
    42aa: ed8d 8b98    	vstr	d8, [sp, #608]
    42ae: ed9e 1a0e    	vldr	s2, [lr, #56]
    42b2: f50d 6e40    	add.w	lr, sp, #0xc00
    42b6: ed8d 7b96    	vstr	d7, [sp, #600]
    42ba: ed9e 0a0f    	vldr	s0, [lr, #60]
    42be: f50d 6e40    	add.w	lr, sp, #0xc00
    42c2: ed8d 6b94    	vstr	d6, [sp, #592]
    42c6: ed9e 8a10    	vldr	s16, [lr, #64]
    42ca: f50d 6e40    	add.w	lr, sp, #0xc00
    42ce: ed8d cb9a    	vstr	d12, [sp, #616]
    42d2: edde 7a11    	vldr	s15, [lr, #68]
    42d6: f50d 6e40    	add.w	lr, sp, #0xc00
    42da: ed8d bba0    	vstr	d11, [sp, #640]
    42de: edde 6a12    	vldr	s13, [lr, #72]
    42e2: f50d 6e40    	add.w	lr, sp, #0xc00
    42e6: ed1f ca50    	vldr	s24, [pc, #-320]        @ 0x41a8 <Reset+0x3da0>
    42ea: ed99 7a26    	vldr	s14, [r9, #152]
    42ee: ed9e 2a13    	vldr	s4, [lr, #76]
    42f2: f50d 6e40    	add.w	lr, sp, #0xc00
    42f6: ed8d 2a3b    	vstr	s4, [sp, #236]
    42fa: eeb0 4a4c    	vmov.f32	s8, s24
    42fe: ed9e 2a14    	vldr	s4, [lr, #80]
    4302: f50d 6e40    	add.w	lr, sp, #0xc00
    4306: ed8d 2a1e    	vstr	s4, [sp, #120]
    430a: ed99 6a54    	vldr	s12, [r9, #336]
    430e: ed9e 2a15    	vldr	s4, [lr, #84]
    4312: f50d 6e40    	add.w	lr, sp, #0xc00
    4316: ed8d 2a0a    	vstr	s4, [sp, #40]
    431a: ed9e 5a16    	vldr	s10, [lr, #88]
    431e: f50d 6e40    	add.w	lr, sp, #0xc00
    4322: ed8d 9b8a    	vstr	d9, [sp, #552]
    4326: edde ca17    	vldr	s25, [lr, #92]
    432a: f50d 6e40    	add.w	lr, sp, #0xc00
    432e: ed8d db9e    	vstr	d13, [sp, #632]
    4332: edde 4a18    	vldr	s9, [lr, #96]
    4336: f50d 6e40    	add.w	lr, sp, #0xc00
    433a: eefe 9a00    	vmov.f32	s19, #-5.000000e-01
    433e: eeb0 da4c    	vmov.f32	s26, s24
    4342: edde ba19    	vldr	s23, [lr, #100]
    4346: f50d 6e40    	add.w	lr, sp, #0xc00
    434a: eef0 da4c    	vmov.f32	s27, s24
    434e: ed9e 2a1a    	vldr	s4, [lr, #104]
    4352: f50d 6e40    	add.w	lr, sp, #0xc00
    4356: ed8d 2a2e    	vstr	s4, [sp, #184]
    435a: ed9e fa1b    	vldr	s30, [lr, #108]
    435e: f50d 6e40    	add.w	lr, sp, #0xc00
    4362: ed8d ab9c    	vstr	d10, [sp, #624]
    4366: ed9e 2a1c    	vldr	s4, [lr, #112]
    436a: f50d 6e40    	add.w	lr, sp, #0xc00
    436e: ed8d 2a45    	vstr	s4, [sp, #276]
    4372: ed9e 2a1d    	vldr	s4, [lr, #116]
    4376: f50d 6e40    	add.w	lr, sp, #0xc00
    437a: ed8d 2a26    	vstr	s4, [sp, #152]
    437e: ed9e 2a1e    	vldr	s4, [lr, #120]
    4382: f50d 6e40    	add.w	lr, sp, #0xc00
    4386: ed8d 2a0f    	vstr	s4, [sp, #60]
    438a: ed9e 2a1f    	vldr	s4, [lr, #124]
    438e: f50d 6e40    	add.w	lr, sp, #0xc00
    4392: ed8d 2a43    	vstr	s4, [sp, #268]
    4396: ed9e 2a20    	vldr	s4, [lr, #128]
    439a: f50d 6e40    	add.w	lr, sp, #0xc00
    439e: ed8d 2a25    	vstr	s4, [sp, #148]
    43a2: ed9e 2a21    	vldr	s4, [lr, #132]
    43a6: f50d 6e40    	add.w	lr, sp, #0xc00
    43aa: ed8d 2a0e    	vstr	s4, [sp, #56]
    43ae: ed9e 2a22    	vldr	s4, [lr, #136]
    43b2: f50d 6e40    	add.w	lr, sp, #0xc00
    43b6: ed8d 2a40    	vstr	s4, [sp, #256]
    43ba: ed9e 2a23    	vldr	s4, [lr, #140]
    43be: f50d 6e40    	add.w	lr, sp, #0xc00
    43c2: ed8d 2a20    	vstr	s4, [sp, #128]
    43c6: ed9e 2a24    	vldr	s4, [lr, #144]
    43ca: f50d 6e40    	add.w	lr, sp, #0xc00
    43ce: ed8d 2a0b    	vstr	s4, [sp, #44]
    43d2: ed9e 2a25    	vldr	s4, [lr, #148]
    43d6: f50d 6e40    	add.w	lr, sp, #0xc00
    43da: ed8d 2a3e    	vstr	s4, [sp, #248]
    43de: ed9e 2a26    	vldr	s4, [lr, #152]
    43e2: f50d 6e40    	add.w	lr, sp, #0xc00
    43e6: ed8d 2a21    	vstr	s4, [sp, #132]
    43ea: ed9e 2a27    	vldr	s4, [lr, #156]
    43ee: f50d 6e40    	add.w	lr, sp, #0xc00
    43f2: ed8d 2a0c    	vstr	s4, [sp, #48]
    43f6: ed9e 2a28    	vldr	s4, [lr, #160]
    43fa: f50d 6e40    	add.w	lr, sp, #0xc00
    43fe: ed8d 2a39    	vstr	s4, [sp, #228]
    4402: ed9e 2a29    	vldr	s4, [lr, #164]
    4406: f50d 6e40    	add.w	lr, sp, #0xc00
    440a: ed8d 2a1c    	vstr	s4, [sp, #112]
    440e: ed9e 2a2a    	vldr	s4, [lr, #168]
    4412: f50d 6e40    	add.w	lr, sp, #0xc00
    4416: ed8d 2a09    	vstr	s4, [sp, #36]
    441a: ed9e 2a2b    	vldr	s4, [lr, #172]
    441e: f50d 6e40    	add.w	lr, sp, #0xc00
    4422: ed8d 2a37    	vstr	s4, [sp, #220]
    4426: ed9e 2a2c    	vldr	s4, [lr, #176]
    442a: f50d 6e40    	add.w	lr, sp, #0xc00
    442e: ed8d 2a1a    	vstr	s4, [sp, #104]
    4432: ed9e 2a2d    	vldr	s4, [lr, #180]
    4436: f50d 6e40    	add.w	lr, sp, #0xc00
    443a: ed8d 2a08    	vstr	s4, [sp, #32]
    443e: ed9e 2a2e    	vldr	s4, [lr, #184]
    4442: f50d 6e40    	add.w	lr, sp, #0xc00
    4446: ed8d 2a34    	vstr	s4, [sp, #208]
    444a: ed9e 2a2f    	vldr	s4, [lr, #188]
    444e: f50d 6e40    	add.w	lr, sp, #0xc00
    4452: ed8d 2a15    	vstr	s4, [sp, #84]
    4456: ed9e 2a30    	vldr	s4, [lr, #192]
    445a: f50d 6e40    	add.w	lr, sp, #0xc00
    445e: ed8d 2a05    	vstr	s4, [sp, #20]
    4462: ed9e 2a31    	vldr	s4, [lr, #196]
    4466: f50d 6e40    	add.w	lr, sp, #0xc00
    446a: ed8d 2a32    	vstr	s4, [sp, #200]
    446e: ed9e 2a32    	vldr	s4, [lr, #200]
    4472: f50d 6e40    	add.w	lr, sp, #0xc00
    4476: ed8d 2a16    	vstr	s4, [sp, #88]
    447a: ed9e 2a33    	vldr	s4, [lr, #204]
    447e: ed8d 2a06    	vstr	s4, [sp, #24]
    4482: ed99 2a2f    	vldr	s4, [r9, #188]
    4486: ed8d 2a88    	vstr	s4, [sp, #544]
    448a: ed99 2a55    	vldr	s4, [r9, #340]
    448e: ed8d 2a89    	vstr	s4, [sp, #548]
    4492: ed9d 2bfe    	vldr	d2, [sp, #1016]
    4496: f89d ed0a    	ldrb.w	lr, [sp, #0xd0a]
    449a: 90fe         	str	r0, [sp, #0x3f8]
    449c: eeb7 bbc2    	vcvt.f32.f64	s22, d2
    44a0: 4658         	mov	r0, r11
    44a2: f89d bd14    	ldrb.w	r11, [sp, #0xd14]
    44a6: ed99 2a56    	vldr	s4, [r9, #344]
    44aa: f8cd b2f8    	str.w	r11, [sp, #0x2f8]
    44ae: ed8d 2a67    	vstr	s4, [sp, #412]
    44b2: ed99 2a59    	vldr	s4, [r9, #356]
    44b6: ed8d 2a49    	vstr	s4, [sp, #292]
    44ba: d04d         	beq	0x4558 <Reset+0x4150>   @ imm = #0x9a
    44bc: 9d65         	ldr	r5, [sp, #0x194]
    44be: 2d0d         	cmp	r5, #0xd
    44c0: f042 870a    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2e14
    44c4: ed9f 2ae3    	vldr	s4, [pc, #908]          @ 0x4854 <Reset+0x444c>
    44c8: eeb0 ca6d    	vmov.f32	s24, s27
    44cc: ee81 3a82    	vdiv.f32	s6, s3, s4
    44d0: ed9f 4ae1    	vldr	s8, [pc, #900]          @ 0x4858 <Reset+0x4450>
    44d4: ee3b 2a2d    	vadd.f32	s4, s22, s27
    44d8: f1bc 0f01    	cmp.w	r12, #0x1
    44dc: ee63 1a04    	vmul.f32	s3, s6, s8
    44e0: eeb0 4a6d    	vmov.f32	s8, s27
    44e4: ee03 ca02    	vmla.f32	s24, s6, s4
    44e8: ee03 4a2d    	vmla.f32	s8, s6, s27
    44ec: ee71 0aaf    	vadd.f32	s1, s3, s31
    44f0: ee3d dae1    	vsub.f32	s26, s27, s3
    44f4: d030         	beq	0x4558 <Reset+0x4150>   @ imm = #0x60
    44f6: 9d30         	ldr	r5, [sp, #0xc0]
    44f8: 2d0d         	cmp	r5, #0xd
    44fa: f042 86ed    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2dda
    44fe: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x4854 <Reset+0x444c>
    4502: f1bc 0f02    	cmp.w	r12, #0x2
    4506: ee81 1a03    	vdiv.f32	s2, s2, s6
    450a: ed9f 3ad3    	vldr	s6, [pc, #844]          @ 0x4858 <Reset+0x4450>
    450e: ee01 ca02    	vmla.f32	s24, s2, s4
    4512: ee21 3a03    	vmul.f32	s6, s2, s6
    4516: ee01 4a2d    	vmla.f32	s8, s2, s27
    451a: ee70 0a83    	vadd.f32	s1, s1, s6
    451e: ee3d da43    	vsub.f32	s26, s26, s6
    4522: d019         	beq	0x4558 <Reset+0x4150>   @ imm = #0x32
    4524: 9d13         	ldr	r5, [sp, #0x4c]
    4526: 2d0d         	cmp	r5, #0xd
    4528: f042 86d6    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2dac
    452c: f1bc 0f03    	cmp.w	r12, #0x3
    4530: f043 8122    	bne.w	0x7778 <Reset+0x7370>   @ imm = #0x3244
    4534: ed9f 1ac7    	vldr	s2, [pc, #796]          @ 0x4854 <Reset+0x444c>
    4538: ee80 0a01    	vdiv.f32	s0, s0, s2
    453c: ed9f 1ac6    	vldr	s2, [pc, #792]          @ 0x4858 <Reset+0x4450>
    4540: ee00 ca02    	vmla.f32	s24, s0, s4
    4544: ee20 1a01    	vmul.f32	s2, s0, s2
    4548: ee00 4a2d    	vmla.f32	s8, s0, s27
    454c: ee70 0a81    	vadd.f32	s1, s1, s2
    4550: ee3d da41    	vsub.f32	s26, s26, s2
    4554: bf00         	nop
    4556: bf00         	nop
    4558: eef0 5a6d    	vmov.f32	s11, s27
    455c: eeb0 0a6d    	vmov.f32	s0, s27
    4560: eeb0 2a6f    	vmov.f32	s4, s31
    4564: eef0 2a6d    	vmov.f32	s5, s27
    4568: f1be 0f00    	cmp.w	lr, #0x0
    456c: d04c         	beq	0x4608 <Reset+0x4200>   @ imm = #0x98
    456e: 9d55         	ldr	r5, [sp, #0x154]
    4570: 2d0d         	cmp	r5, #0xd
    4572: f042 86b1    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2d62
    4576: ed9f 0ab7    	vldr	s0, [pc, #732]          @ 0x4854 <Reset+0x444c>
    457a: ee3b 1a2d    	vadd.f32	s2, s22, s27
    457e: ee88 2a00    	vdiv.f32	s4, s16, s0
    4582: ed9f 0ab5    	vldr	s0, [pc, #724]          @ 0x4858 <Reset+0x4450>
    4586: eef0 5a6d    	vmov.f32	s11, s27
    458a: f1be 0f01    	cmp.w	lr, #0x1
    458e: ee42 5a01    	vmla.f32	s11, s4, s2
    4592: ee22 3a00    	vmul.f32	s6, s4, s0
    4596: eeb0 0a6d    	vmov.f32	s0, s27
    459a: ee02 0a2d    	vmla.f32	s0, s4, s27
    459e: ee73 2a2d    	vadd.f32	s5, s6, s27
    45a2: ee3f 2ac3    	vsub.f32	s4, s31, s6
    45a6: d02f         	beq	0x4608 <Reset+0x4200>   @ imm = #0x5e
    45a8: 9d2f         	ldr	r5, [sp, #0xbc]
    45aa: 2d0d         	cmp	r5, #0xd
    45ac: f042 8694    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2d28
    45b0: ed9f 3aa8    	vldr	s6, [pc, #672]          @ 0x4854 <Reset+0x444c>
    45b4: f1be 0f02    	cmp.w	lr, #0x2
    45b8: ee87 3a83    	vdiv.f32	s6, s15, s6
    45bc: eddf 1aa6    	vldr	s3, [pc, #664]          @ 0x4858 <Reset+0x4450>
    45c0: ee43 5a01    	vmla.f32	s11, s6, s2
    45c4: ee63 1a21    	vmul.f32	s3, s6, s3
    45c8: ee03 0a2d    	vmla.f32	s0, s6, s27
    45cc: ee72 2aa1    	vadd.f32	s5, s5, s3
    45d0: ee32 2a61    	vsub.f32	s4, s4, s3
    45d4: d018         	beq	0x4608 <Reset+0x4200>   @ imm = #0x30
    45d6: 9d11         	ldr	r5, [sp, #0x44]
    45d8: 2d0d         	cmp	r5, #0xd
    45da: f042 867d    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2cfa
    45de: f1be 0f03    	cmp.w	lr, #0x3
    45e2: f043 80e1    	bne.w	0x77a8 <Reset+0x73a0>   @ imm = #0x31c2
    45e6: ed9f 3a9b    	vldr	s6, [pc, #620]          @ 0x4854 <Reset+0x444c>
    45ea: ee86 3a83    	vdiv.f32	s6, s13, s6
    45ee: ee43 5a01    	vmla.f32	s11, s6, s2
    45f2: ed9f 1a99    	vldr	s2, [pc, #612]          @ 0x4858 <Reset+0x4450>
    45f6: ee23 1a01    	vmul.f32	s2, s6, s2
    45fa: ee03 0a2d    	vmla.f32	s0, s6, s27
    45fe: ee72 2a81    	vadd.f32	s5, s5, s2
    4602: ee32 2a41    	vsub.f32	s4, s4, s2
    4606: bf00         	nop
    4608: ed9f 1bb3    	vldr	d1, [pc, #716]          @ 0x48d8 <Reset+0x44d0>
    460c: 2c00         	cmp	r4, #0x0
    460e: ed9d 3ba4    	vldr	d3, [sp, #656]
    4612: ee23 1b01    	vmul.f64	d1, d3, d1
    4616: ed9f 3bb2    	vldr	d3, [pc, #712]          @ 0x48e0 <Reset+0x44d8>
    461a: ed9d 8bac    	vldr	d8, [sp, #688]
    461e: ee08 1b03    	vmla.f64	d1, d8, d3
    4622: ed9f 3bb1    	vldr	d3, [pc, #708]          @ 0x48e8 <Reset+0x44e0>
    4626: ed9d 8bb2    	vldr	d8, [sp, #712]
    462a: ee08 1b03    	vmla.f64	d1, d8, d3
    462e: ed9f 3bb0    	vldr	d3, [pc, #704]          @ 0x48f0 <Reset+0x44e8>
    4632: ed9d 8baa    	vldr	d8, [sp, #680]
    4636: ee08 1b03    	vmla.f64	d1, d8, d3
    463a: eeb7 3ac7    	vcvt.f64.f32	d3, s14
    463e: ed9d 7ba8    	vldr	d7, [sp, #672]
    4642: ee31 1b43    	vsub.f64	d1, d1, d3
    4646: ed9f 3bac    	vldr	d3, [pc, #688]          @ 0x48f8 <Reset+0x44f0>
    464a: ee07 1b03    	vmla.f64	d1, d7, d3
    464e: ed9f 3bac    	vldr	d3, [pc, #688]          @ 0x4900 <Reset+0x44f8>
    4652: ed9d 7bae    	vldr	d7, [sp, #696]
    4656: ee07 1b03    	vmla.f64	d1, d7, d3
    465a: ed9f 3bab    	vldr	d3, [pc, #684]          @ 0x4908 <Reset+0x4500>
    465e: ed9d 7ba6    	vldr	d7, [sp, #664]
    4662: ee07 1b03    	vmla.f64	d1, d7, d3
    4666: eeb7 3ac6    	vcvt.f64.f32	d3, s12
    466a: ed9f 6ba9    	vldr	d6, [pc, #676]          @ 0x4910 <Reset+0x4508>
    466e: ed9d 7bb0    	vldr	d7, [sp, #704]
    4672: ee07 1b06    	vmla.f64	d1, d7, d6
    4676: eef0 7a6d    	vmov.f32	s15, s27
    467a: eeb0 7a6d    	vmov.f32	s14, s27
    467e: ed9f 6ba6    	vldr	d6, [pc, #664]          @ 0x4918 <Reset+0x4510>
    4682: ee23 3b06    	vmul.f64	d3, d3, d6
    4686: eeb0 6a6d    	vmov.f32	s12, s27
    468a: eef0 6a6f    	vmov.f32	s13, s31
    468e: eef7 abc1    	vcvt.f32.f64	s21, d1
    4692: eeb7 8bc3    	vcvt.f32.f64	s16, d3
    4696: f000 8093    	beq.w	0x47c0 <Reset+0x43b8>   @ imm = #0x126
    469a: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    469e: ee38 3a2d    	vadd.f32	s6, s16, s27
    46a2: 9d53         	ldr	r5, [sp, #0x14c]
    46a4: 2d13         	cmp	r5, #0x13
    46a6: ee85 5a01    	vdiv.f32	s10, s10, s2
    46aa: ee3a 1aad    	vadd.f32	s2, s21, s27
    46ae: d01b         	beq	0x46e8 <Reset+0x42e0>   @ imm = #0x36
    46b0: 2d17         	cmp	r5, #0x17
    46b2: f042 8611    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2c22
    46b6: ee65 3a2d    	vmul.f32	s7, s10, s27
    46ba: ed9f 6ac5    	vldr	s12, [pc, #788]         @ 0x49d0 <Reset+0x45c8>
    46be: ee65 1a06    	vmul.f32	s3, s10, s12
    46c2: eef0 6a43    	vmov.f32	s13, s6
    46c6: eeb0 7a63    	vmov.f32	s14, s7
    46ca: e017         	b	0x46fc <Reset+0x42f4>   @ imm = #0x2e
    46cc: bf00         	nop
    46ce: bf00         	nop
    46d0: 2000         	movs	r0, #0x0
    46d2: eeb5 fa40    	vcmp.f32	s30, #0
    46d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    46da: f47e ae99    	bne.w	0x3410 <Reset+0x3008>   @ imm = #-0x12ce
    46de: f7fe bea1    	b.w	0x3424 <Reset+0x301c>   @ imm = #-0x12be
    46e2: bf00         	nop
    46e4: bf00         	nop
    46e6: bf00         	nop
    46e8: ee65 1a2d    	vmul.f32	s3, s10, s27
    46ec: ed9f 6ab9    	vldr	s12, [pc, #740]         @ 0x49d4 <Reset+0x45cc>
    46f0: ee65 3a06    	vmul.f32	s7, s10, s12
    46f4: eef0 6a41    	vmov.f32	s13, s2
    46f8: eeb0 7a61    	vmov.f32	s14, s3
    46fc: eeb0 6a6d    	vmov.f32	s12, s27
    4700: ee05 6a26    	vmla.f32	s12, s10, s13
    4704: ee37 7a2d    	vadd.f32	s14, s14, s27
    4708: 2c01         	cmp	r4, #0x1
    470a: ee73 6aaf    	vadd.f32	s13, s7, s31
    470e: 9d51         	ldr	r5, [sp, #0x144]
    4710: ee71 7aad    	vadd.f32	s15, s3, s27
    4714: d054         	beq	0x47c0 <Reset+0x43b8>   @ imm = #0xa8
    4716: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    471a: 2d17         	cmp	r5, #0x17
    471c: ee8c 5a85    	vdiv.f32	s10, s25, s10
    4720: d00e         	beq	0x4740 <Reset+0x4338>   @ imm = #0x1c
    4722: 2d13         	cmp	r5, #0x13
    4724: f042 85d8    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2bb0
    4728: ee65 1a2d    	vmul.f32	s3, s10, s27
    472c: eddf 3aa9    	vldr	s7, [pc, #676]          @ 0x49d4 <Reset+0x45cc>
    4730: ee65 3a23    	vmul.f32	s7, s10, s7
    4734: eeb0 aa41    	vmov.f32	s20, s2
    4738: eeb0 9a61    	vmov.f32	s18, s3
    473c: e00a         	b	0x4754 <Reset+0x434c>   @ imm = #0x14
    473e: bf00         	nop
    4740: ee65 3a2d    	vmul.f32	s7, s10, s27
    4744: eddf 1aa2    	vldr	s3, [pc, #648]          @ 0x49d0 <Reset+0x45c8>
    4748: ee65 1a21    	vmul.f32	s3, s10, s3
    474c: eeb0 aa43    	vmov.f32	s20, s6
    4750: eeb0 9a63    	vmov.f32	s18, s7
    4754: ee05 6a0a    	vmla.f32	s12, s10, s20
    4758: 2c02         	cmp	r4, #0x2
    475a: ee37 7a09    	vadd.f32	s14, s14, s18
    475e: 9d2d         	ldr	r5, [sp, #0xb4]
    4760: ee76 6aa3    	vadd.f32	s13, s13, s7
    4764: ee77 7aa1    	vadd.f32	s15, s15, s3
    4768: d02a         	beq	0x47c0 <Reset+0x43b8>   @ imm = #0x54
    476a: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    476e: 2d17         	cmp	r5, #0x17
    4770: ee84 5a85    	vdiv.f32	s10, s9, s10
    4774: d00c         	beq	0x4790 <Reset+0x4388>   @ imm = #0x18
    4776: 2d13         	cmp	r5, #0x13
    4778: f042 85ae    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2b5c
    477c: ee65 1a2d    	vmul.f32	s3, s10, s27
    4780: ed9f 3a94    	vldr	s6, [pc, #592]          @ 0x49d4 <Reset+0x45cc>
    4784: ee65 3a03    	vmul.f32	s7, s10, s6
    4788: eef0 4a61    	vmov.f32	s9, s3
    478c: e00a         	b	0x47a4 <Reset+0x439c>   @ imm = #0x14
    478e: bf00         	nop
    4790: ee65 3a2d    	vmul.f32	s7, s10, s27
    4794: ed9f 1a8e    	vldr	s2, [pc, #568]          @ 0x49d0 <Reset+0x45c8>
    4798: ee65 1a01    	vmul.f32	s3, s10, s2
    479c: eeb0 1a43    	vmov.f32	s2, s6
    47a0: eef0 4a63    	vmov.f32	s9, s7
    47a4: 2c03         	cmp	r4, #0x3
    47a6: f042 87ef    	bne.w	0x7788 <Reset+0x7380>   @ imm = #0x2fde
    47aa: ee05 6a01    	vmla.f32	s12, s10, s2
    47ae: ee37 7a24    	vadd.f32	s14, s14, s9
    47b2: ee76 6aa3    	vadd.f32	s13, s13, s7
    47b6: ee77 7aa1    	vadd.f32	s15, s15, s3
    47ba: bf00         	nop
    47bc: bf00         	nop
    47be: bf00         	nop
    47c0: eeb0 ea6f    	vmov.f32	s28, s31
    47c4: eef0 8a6d    	vmov.f32	s17, s27
    47c8: eef0 ea6d    	vmov.f32	s29, s27
    47cc: eef0 ca6d    	vmov.f32	s25, s27
    47d0: eef0 4a6d    	vmov.f32	s9, s27
    47d4: 9dfe         	ldr	r5, [sp, #0x3f8]
    47d6: 2d00         	cmp	r5, #0x0
    47d8: f000 811a    	beq.w	0x4a10 <Reset+0x4608>   @ imm = #0x234
    47dc: f50d 6e80    	add.w	lr, sp, #0x400
    47e0: ed9f 1aed    	vldr	s2, [pc, #948]          @ 0x4b98 <Reset+0x4790>
    47e4: eecb 1a81    	vdiv.f32	s3, s23, s2
    47e8: ed9e 1a09    	vldr	s2, [lr, #36]
    47ec: f50d 6e80    	add.w	lr, sp, #0x400
    47f0: ee31 1a2d    	vadd.f32	s2, s2, s27
    47f4: ed9e 3a0a    	vldr	s6, [lr, #40]
    47f8: ee38 5a2d    	vadd.f32	s10, s16, s27
    47fc: ee33 3a2d    	vadd.f32	s6, s6, s27
    4800: b370         	cbz	r0, 0x4860 <Reset+0x4458> @ imm = #0x5c
    4802: 2802         	cmp	r0, #0x2
    4804: d014         	beq	0x4830 <Reset+0x4428>   @ imm = #0x28
    4806: 2817         	cmp	r0, #0x17
    4808: f042 8566    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2acc
    480c: ee21 9aad    	vmul.f32	s18, s3, s27
    4810: eddf 3a6f    	vldr	s7, [pc, #444]          @ 0x49d0 <Reset+0x45c8>
    4814: eef0 ba4f    	vmov.f32	s23, s30
    4818: ee61 3aa3    	vmul.f32	s7, s3, s7
    481c: eeb0 ea45    	vmov.f32	s28, s10
    4820: eeb0 aa49    	vmov.f32	s20, s18
    4824: eef0 4a49    	vmov.f32	s9, s18
    4828: e028         	b	0x487c <Reset+0x4474>   @ imm = #0x50
    482a: bf00         	nop
    482c: bf00         	nop
    482e: bf00         	nop
    4830: eddf 3ada    	vldr	s7, [pc, #872]          @ 0x4b9c <Reset+0x4794>
    4834: eef0 ba4f    	vmov.f32	s23, s30
    4838: ee61 4aa3    	vmul.f32	s9, s3, s7
    483c: ed9f 9aec    	vldr	s18, [pc, #944]         @ 0x4bf0 <Reset+0x47e8>
    4840: ee61 3aad    	vmul.f32	s7, s3, s27
    4844: eeb0 ea43    	vmov.f32	s28, s6
    4848: ee21 aa89    	vmul.f32	s20, s3, s18
    484c: eeb0 9a63    	vmov.f32	s18, s7
    4850: e014         	b	0x487c <Reset+0x4474>   @ imm = #0x28
    4852: bf00         	nop
    4854: 6f 12 83 3a  	.word	0x3a83126f
    4858: ed 1f da 41  	.word	0x41da1fed
    485c: 00 bf 00 bf  	.word	0xbf00bf00
    4860: ee61 3aad    	vmul.f32	s7, s3, s27
    4864: eddf 4ae3    	vldr	s9, [pc, #908]          @ 0x4bf4 <Reset+0x47ec>
    4868: eef0 ba4f    	vmov.f32	s23, s30
    486c: ee21 9aa4    	vmul.f32	s18, s3, s9
    4870: eeb0 ea41    	vmov.f32	s28, s2
    4874: eeb0 aa63    	vmov.f32	s20, s7
    4878: eef0 4a63    	vmov.f32	s9, s7
    487c: eef0 8a6d    	vmov.f32	s17, s27
    4880: ee41 8a8e    	vmla.f32	s17, s3, s28
    4884: ee74 4aad    	vadd.f32	s9, s9, s27
    4888: 98fe         	ldr	r0, [sp, #0x3f8]
    488a: ee7a ca2d    	vadd.f32	s25, s20, s27
    488e: 2801         	cmp	r0, #0x1
    4890: ee79 ea2d    	vadd.f32	s29, s18, s27
    4894: 984c         	ldr	r0, [sp, #0x130]
    4896: ee33 eaaf    	vadd.f32	s28, s7, s31
    489a: f000 80b9    	beq.w	0x4a10 <Reset+0x4608>   @ imm = #0x172
    489e: eddf 1abe    	vldr	s3, [pc, #760]          @ 0x4b98 <Reset+0x4790>
    48a2: eddd 3a2e    	vldr	s7, [sp, #184]
    48a6: eec3 1aa1    	vdiv.f32	s3, s7, s3
    48aa: 2817         	cmp	r0, #0x17
    48ac: d048         	beq	0x4940 <Reset+0x4538>   @ imm = #0x90
    48ae: 2802         	cmp	r0, #0x2
    48b0: d036         	beq	0x4920 <Reset+0x4518>   @ imm = #0x6c
    48b2: 2800         	cmp	r0, #0x0
    48b4: f042 8510    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2a20
    48b8: ee61 3aad    	vmul.f32	s7, s3, s27
    48bc: ed9f 9acd    	vldr	s18, [pc, #820]         @ 0x4bf4 <Reset+0x47ec>
    48c0: ee21 9a89    	vmul.f32	s18, s3, s18
    48c4: eef0 9a41    	vmov.f32	s19, s2
    48c8: eeb0 aa63    	vmov.f32	s20, s7
    48cc: eeb0 fa63    	vmov.f32	s30, s7
    48d0: e042         	b	0x4958 <Reset+0x4550>   @ imm = #0x84
    48d2: bf00         	nop
    48d4: bf00         	nop
    48d6: bf00         	nop
    48d8: 37 6b c1 4e  	.word	0x4ec16b37
    48dc: 45 fe ef bf  	.word	0xbfeffe45
    48e0: 82 d4 3d bd  	.word	0xbd3dd482
    48e4: d0 2e 9c bf  	.word	0xbf9c2ed0
    48e8: 54 b7 86 c6  	.word	0xc686b754
    48ec: 78 64 5c bf  	.word	0xbf5c6478
    48f0: 8c b4 78 c0  	.word	0xc078b48c
    48f4: 51 32 9c bf  	.word	0xbf9c3251
    48f8: 8e ca 6a cb  	.word	0xcb6aca8e
    48fc: 09 2c d5 bf  	.word	0xbfd52c09
    4900: e4 88 60 a0  	.word	0xa06088e4
    4904: db ad 95 bf  	.word	0xbf95addb
    4908: 70 5b 6e fb  	.word	0xfb6e5b70
    490c: bd 2d d5 bf  	.word	0xbfd52dbd
    4910: b7 c5 da f1  	.word	0xf1dac5b7
    4914: 5b 15 14 3f  	.word	0x3f14155b
    4918: 32 2e 91 5a  	.word	0x5a912e32
    491c: 8a 20 dd be  	.word	0xbedd208a
    4920: eddf 3a9e    	vldr	s7, [pc, #632]          @ 0x4b9c <Reset+0x4794>
    4924: eef0 9a43    	vmov.f32	s19, s6
    4928: ee21 faa3    	vmul.f32	s30, s3, s7
    492c: ed9f 9ab0    	vldr	s18, [pc, #704]         @ 0x4bf0 <Reset+0x47e8>
    4930: ee61 3aad    	vmul.f32	s7, s3, s27
    4934: ee21 aa89    	vmul.f32	s20, s3, s18
    4938: eeb0 9a63    	vmov.f32	s18, s7
    493c: e00c         	b	0x4958 <Reset+0x4550>   @ imm = #0x18
    493e: bf00         	nop
    4940: ee21 9aad    	vmul.f32	s18, s3, s27
    4944: eddf 3a22    	vldr	s7, [pc, #136]          @ 0x49d0 <Reset+0x45c8>
    4948: ee61 3aa3    	vmul.f32	s7, s3, s7
    494c: eef0 9a45    	vmov.f32	s19, s10
    4950: eeb0 aa49    	vmov.f32	s20, s18
    4954: eeb0 fa49    	vmov.f32	s30, s18
    4958: ee41 8aa9    	vmla.f32	s17, s3, s19
    495c: 98fe         	ldr	r0, [sp, #0x3f8]
    495e: ee74 4a8f    	vadd.f32	s9, s9, s30
    4962: 2802         	cmp	r0, #0x2
    4964: ee7c ca8a    	vadd.f32	s25, s25, s20
    4968: 982c         	ldr	r0, [sp, #0xb0]
    496a: ee7e ea89    	vadd.f32	s29, s29, s18
    496e: ee3e ea23    	vadd.f32	s28, s28, s7
    4972: d105         	bne	0x4980 <Reset+0x4578>   @ imm = #0xa
    4974: eefe 9a00    	vmov.f32	s19, #-5.000000e-01
    4978: e04a         	b	0x4a10 <Reset+0x4608>   @ imm = #0x94
    497a: bf00         	nop
    497c: bf00         	nop
    497e: bf00         	nop
    4980: eddf 1a85    	vldr	s3, [pc, #532]          @ 0x4b98 <Reset+0x4790>
    4984: eefe 9a00    	vmov.f32	s19, #-5.000000e-01
    4988: eecb 1aa1    	vdiv.f32	s3, s23, s3
    498c: 2817         	cmp	r0, #0x17
    498e: d023         	beq	0x49d8 <Reset+0x45d0>   @ imm = #0x46
    4990: 2802         	cmp	r0, #0x2
    4992: d00d         	beq	0x49b0 <Reset+0x45a8>   @ imm = #0x1a
    4994: 2800         	cmp	r0, #0x0
    4996: f042 849f    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x293e
    499a: ee61 3aad    	vmul.f32	s7, s3, s27
    499e: ed9f 3a95    	vldr	s6, [pc, #596]          @ 0x4bf4 <Reset+0x47ec>
    49a2: ee21 9a83    	vmul.f32	s18, s3, s6
    49a6: eeb0 aa63    	vmov.f32	s20, s7
    49aa: eeb0 fa63    	vmov.f32	s30, s7
    49ae: e01f         	b	0x49f0 <Reset+0x45e8>   @ imm = #0x3e
    49b0: ee61 3aad    	vmul.f32	s7, s3, s27
    49b4: ed9f 1a79    	vldr	s2, [pc, #484]          @ 0x4b9c <Reset+0x4794>
    49b8: ee21 fa81    	vmul.f32	s30, s3, s2
    49bc: ed9f 1a8c    	vldr	s2, [pc, #560]          @ 0x4bf0 <Reset+0x47e8>
    49c0: ee21 aa81    	vmul.f32	s20, s3, s2
    49c4: eeb0 1a43    	vmov.f32	s2, s6
    49c8: eeb0 9a63    	vmov.f32	s18, s7
    49cc: e010         	b	0x49f0 <Reset+0x45e8>   @ imm = #0x20
    49ce: bf00         	nop
    49d0: e4 38 de 42  	.word	0x42de38e4
    49d4: 32 a0 96 ba  	.word	0xba96a032
    49d8: ee21 9aad    	vmul.f32	s18, s3, s27
    49dc: ed1f 1a04    	vldr	s2, [pc, #-16]          @ 0x49d0 <Reset+0x45c8>
    49e0: ee61 3a81    	vmul.f32	s7, s3, s2
    49e4: eeb0 1a45    	vmov.f32	s2, s10
    49e8: eeb0 aa49    	vmov.f32	s20, s18
    49ec: eeb0 fa49    	vmov.f32	s30, s18
    49f0: 98fe         	ldr	r0, [sp, #0x3f8]
    49f2: 2803         	cmp	r0, #0x3
    49f4: f042 86d0    	bne.w	0x7798 <Reset+0x7390>   @ imm = #0x2da0
    49f8: ee41 8a81    	vmla.f32	s17, s3, s2
    49fc: ee74 4a8f    	vadd.f32	s9, s9, s30
    4a00: ee7c ca8a    	vadd.f32	s25, s25, s20
    4a04: ee7e ea89    	vadd.f32	s29, s29, s18
    4a08: ee3e ea23    	vadd.f32	s28, s28, s7
    4a0c: bf00         	nop
    4a0e: bf00         	nop
    4a10: eeb0 3ae2    	vabs.f32	s6, s5
    4a14: eeb0 1ae0    	vabs.f32	s2, s1
    4a18: eeb4 3a41    	vcmp.f32	s6, s2
    4a1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a20: dd42         	ble	0x4aa8 <Reset+0x46a0>   @ imm = #0x84
    4a22: eef0 3a44    	vmov.f32	s7, s8
    4a26: eeb0 5a4d    	vmov.f32	s10, s26
    4a2a: eeb0 fa60    	vmov.f32	s30, s1
    4a2e: eeb0 aa4c    	vmov.f32	s20, s24
    4a32: eeb0 1ac7    	vabs.f32	s2, s14
    4a36: eeb4 1a43    	vcmp.f32	s2, s6
    4a3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a3e: dc4c         	bgt	0x4ada <Reset+0x46d2>   @ imm = #0x98
    4a40: eeb0 1a43    	vmov.f32	s2, s6
    4a44: eef0 1a67    	vmov.f32	s3, s15
    4a48: eef0 0a66    	vmov.f32	s1, s13
    4a4c: eeb0 4a47    	vmov.f32	s8, s14
    4a50: eeb0 9a47    	vmov.f32	s18, s14
    4a54: eeb0 ca46    	vmov.f32	s24, s12
    4a58: eef0 7a40    	vmov.f32	s15, s0
    4a5c: eef0 6a40    	vmov.f32	s13, s0
    4a60: eeb0 7a42    	vmov.f32	s14, s4
    4a64: eeb0 6a65    	vmov.f32	s12, s11
    4a68: eeb0 dae4    	vabs.f32	s26, s9
    4a6c: eeb4 da41    	vcmp.f32	s26, s2
    4a70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4a74: dc44         	bgt	0x4b00 <Reset+0x46f8>   @ imm = #0x88
    4a76: eeb0 da41    	vmov.f32	s26, s2
    4a7a: eeb0 0a4e    	vmov.f32	s0, s28
    4a7e: eeb0 2a6e    	vmov.f32	s4, s29
    4a82: eeb0 1a6c    	vmov.f32	s2, s25
    4a86: eef0 5a64    	vmov.f32	s11, s9
    4a8a: eeb0 3a68    	vmov.f32	s6, s17
    4a8e: eeb0 ea67    	vmov.f32	s28, s15
    4a92: eef0 ea66    	vmov.f32	s29, s13
    4a96: eef0 ca47    	vmov.f32	s25, s14
    4a9a: eef0 4a62    	vmov.f32	s9, s5
    4a9e: eef0 8a46    	vmov.f32	s17, s12
    4aa2: e037         	b	0x4b14 <Reset+0x470c>   @ imm = #0x6e
    4aa4: bf00         	nop
    4aa6: bf00         	nop
    4aa8: eeb0 3a41    	vmov.f32	s6, s2
    4aac: eef0 3a40    	vmov.f32	s7, s0
    4ab0: eeb0 5a42    	vmov.f32	s10, s4
    4ab4: eeb0 fa62    	vmov.f32	s30, s5
    4ab8: eeb0 aa65    	vmov.f32	s20, s11
    4abc: eeb0 0a44    	vmov.f32	s0, s8
    4ac0: eeb0 2a4d    	vmov.f32	s4, s26
    4ac4: eef0 2a60    	vmov.f32	s5, s1
    4ac8: eef0 5a4c    	vmov.f32	s11, s24
    4acc: eeb0 1ac7    	vabs.f32	s2, s14
    4ad0: eeb4 1a43    	vcmp.f32	s2, s6
    4ad4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4ad8: ddb2         	ble	0x4a40 <Reset+0x4638>   @ imm = #-0x9c
    4ada: eef0 1a40    	vmov.f32	s3, s0
    4ade: eef0 0a40    	vmov.f32	s1, s0
    4ae2: eeb0 4a42    	vmov.f32	s8, s4
    4ae6: eeb0 9a62    	vmov.f32	s18, s5
    4aea: eeb0 ca65    	vmov.f32	s24, s11
    4aee: eef0 2a47    	vmov.f32	s5, s14
    4af2: eeb0 dae4    	vabs.f32	s26, s9
    4af6: eeb4 da41    	vcmp.f32	s26, s2
    4afa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4afe: ddba         	ble	0x4a76 <Reset+0x466e>   @ imm = #-0x8c
    4b00: eeb0 0a67    	vmov.f32	s0, s15
    4b04: eeb0 2a66    	vmov.f32	s4, s13
    4b08: eeb0 1a47    	vmov.f32	s2, s14
    4b0c: eef0 5a62    	vmov.f32	s11, s5
    4b10: eeb0 3a46    	vmov.f32	s6, s12
    4b14: ed9f 6a5c    	vldr	s12, [pc, #368]         @ 0x4c88 <Reset+0x4880>
    4b18: eeb4 da46    	vcmp.f32	s26, s12
    4b1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b20: f002 83da    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x27b4
    4b24: f182 83d8    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x27b0
    4b28: e002         	b	0x4b30 <Reset+0x4728>   @ imm = #0x4
    4b2a: bf00         	nop
    4b2c: bf00         	nop
    4b2e: bf00         	nop
    4b30: ed9f 6a56    	vldr	s12, [pc, #344]         @ 0x4c8c <Reset+0x4884>
    4b34: eeb4 da46    	vcmp.f32	s26, s12
    4b38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b3c: f242 83cc    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2798
    4b40: ee8f 6a24    	vdiv.f32	s12, s30, s9
    4b44: eeb0 da63    	vmov.f32	s26, s7
    4b48: ee89 7a24    	vdiv.f32	s14, s18, s9
    4b4c: ee0c 5ac6    	vmls.f32	s10, s25, s12
    4b50: ee0c 4ac7    	vmls.f32	s8, s25, s14
    4b54: ee0e dac6    	vmls.f32	s26, s29, s12
    4b58: ee4e 3a46    	vmls.f32	s7, s28, s12
    4b5c: ee06 aa68    	vmls.f32	s20, s12, s17
    4b60: ee85 6aa4    	vdiv.f32	s12, s11, s9
    4b64: ee4e 0ac7    	vmls.f32	s1, s29, s14
    4b68: ee4e 1a47    	vmls.f32	s3, s28, s14
    4b6c: ee07 ca68    	vmls.f32	s24, s14, s17
    4b70: ee0c 1ac6    	vmls.f32	s2, s25, s12
    4b74: eef0 7ac4    	vabs.f32	s15, s8
    4b78: eeb0 7ac5    	vabs.f32	s14, s10
    4b7c: eef4 7a47    	vcmp.f32	s15, s14
    4b80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4b84: dd0c         	ble	0x4ba0 <Reset+0x4798>   @ imm = #0x18
    4b86: eef0 2a63    	vmov.f32	s5, s7
    4b8a: eeb0 7a4d    	vmov.f32	s14, s26
    4b8e: eef0 6a45    	vmov.f32	s13, s10
    4b92: eef0 5a4a    	vmov.f32	s11, s20
    4b96: e015         	b	0x4bc4 <Reset+0x47bc>   @ imm = #0x2a
    4b98: 00 24 74 4b  	.word	0x4b742400
    4b9c: af 17 da 41  	.word	0x41da17af
    4ba0: eef0 7a47    	vmov.f32	s15, s14
    4ba4: eef0 2a61    	vmov.f32	s5, s3
    4ba8: eeb0 7a60    	vmov.f32	s14, s1
    4bac: eef0 6a44    	vmov.f32	s13, s8
    4bb0: eef0 5a4c    	vmov.f32	s11, s24
    4bb4: eef0 1a63    	vmov.f32	s3, s7
    4bb8: eef0 0a4d    	vmov.f32	s1, s26
    4bbc: eeb0 4a45    	vmov.f32	s8, s10
    4bc0: eeb0 ca4a    	vmov.f32	s24, s20
    4bc4: ee0e 2ac6    	vmls.f32	s4, s29, s12
    4bc8: ee0e 0a46    	vmls.f32	s0, s28, s12
    4bcc: ee06 3a68    	vmls.f32	s6, s12, s17
    4bd0: eeb0 9ac1    	vabs.f32	s18, s2
    4bd4: eeb4 9a67    	vcmp.f32	s18, s15
    4bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4bdc: dd0c         	ble	0x4bf8 <Reset+0x47f0>   @ imm = #0x18
    4bde: eeb0 5a61    	vmov.f32	s10, s3
    4be2: eeb0 6a60    	vmov.f32	s12, s1
    4be6: eef0 7a44    	vmov.f32	s15, s8
    4bea: eef0 3a4c    	vmov.f32	s7, s24
    4bee: e015         	b	0x4c1c <Reset+0x4814>   @ imm = #0x2a
    4bf0: af 17 da c1  	.word	0xc1da17af
    4bf4: 65 79 d3 3e  	.word	0x3ed37965
    4bf8: eeb0 9a67    	vmov.f32	s18, s15
    4bfc: eeb0 5a40    	vmov.f32	s10, s0
    4c00: eeb0 6a42    	vmov.f32	s12, s4
    4c04: eef0 7a41    	vmov.f32	s15, s2
    4c08: eef0 3a43    	vmov.f32	s7, s6
    4c0c: eeb0 0a61    	vmov.f32	s0, s3
    4c10: eeb0 2a60    	vmov.f32	s4, s1
    4c14: eeb0 1a44    	vmov.f32	s2, s8
    4c18: eeb0 3a4c    	vmov.f32	s6, s24
    4c1c: ed9f 4a1a    	vldr	s8, [pc, #104]          @ 0x4c88 <Reset+0x4880>
    4c20: eeb4 9a44    	vcmp.f32	s18, s8
    4c24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c28: f002 8356    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x26ac
    4c2c: f182 8354    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x26a8
    4c30: e002         	b	0x4c38 <Reset+0x4830>   @ imm = #0x4
    4c32: bf00         	nop
    4c34: bf00         	nop
    4c36: bf00         	nop
    4c38: ed9f 4a14    	vldr	s8, [pc, #80]           @ 0x4c8c <Reset+0x4884>
    4c3c: eeb4 9a44    	vcmp.f32	s18, s8
    4c40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c44: f242 8348    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2690
    4c48: ee87 4a81    	vdiv.f32	s8, s15, s2
    4c4c: eec6 0a81    	vdiv.f32	s1, s13, s2
    4c50: ee02 6a44    	vmls.f32	s12, s4, s8
    4c54: ee02 7a60    	vmls.f32	s14, s4, s1
    4c58: ee40 2a60    	vmls.f32	s5, s0, s1
    4c5c: ee40 5ac3    	vmls.f32	s11, s1, s6
    4c60: ee00 5a44    	vmls.f32	s10, s0, s8
    4c64: ee44 3a43    	vmls.f32	s7, s8, s6
    4c68: eef0 1ac6    	vabs.f32	s3, s12
    4c6c: eeb0 4ac7    	vabs.f32	s8, s14
    4c70: eef4 1a44    	vcmp.f32	s3, s8
    4c74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4c78: dd0a         	ble	0x4c90 <Reset+0x4888>   @ imm = #0x14
    4c7a: eeb0 4a62    	vmov.f32	s8, s5
    4c7e: eef0 6a47    	vmov.f32	s13, s14
    4c82: eef0 0a65    	vmov.f32	s1, s11
    4c86: e011         	b	0x4cac <Reset+0x48a4>   @ imm = #0x22
    4c88: 00 00 80 7f  	.word	0x7f800000
    4c8c: 08 e5 3c 1e  	.word	0x1e3ce508
    4c90: eef0 1a44    	vmov.f32	s3, s8
    4c94: eeb0 4a45    	vmov.f32	s8, s10
    4c98: eef0 6a46    	vmov.f32	s13, s12
    4c9c: eef0 0a63    	vmov.f32	s1, s7
    4ca0: eeb0 5a62    	vmov.f32	s10, s5
    4ca4: eeb0 6a47    	vmov.f32	s12, s14
    4ca8: eef0 3a65    	vmov.f32	s7, s11
    4cac: ed1f 7a0a    	vldr	s14, [pc, #-40]         @ 0x4c88 <Reset+0x4880>
    4cb0: eef4 1a47    	vcmp.f32	s3, s14
    4cb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cb8: f002 830e    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x261c
    4cbc: f182 830c    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2618
    4cc0: e002         	b	0x4cc8 <Reset+0x48c0>   @ imm = #0x4
    4cc2: bf00         	nop
    4cc4: bf00         	nop
    4cc6: bf00         	nop
    4cc8: ed1f 7a10    	vldr	s14, [pc, #-64]         @ 0x4c8c <Reset+0x4884>
    4ccc: eef4 1a47    	vcmp.f32	s3, s14
    4cd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4cd4: f242 8300    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2600
    4cd8: ee86 7a86    	vdiv.f32	s14, s13, s12
    4cdc: ee05 4a47    	vmls.f32	s8, s10, s14
    4ce0: ee14 0a10    	vmov	r0, s8
    4ce4: f020 4000    	bic	r0, r0, #0x80000000
    4ce8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    4cec: f282 82f4    	bge.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x25e8
    4cf0: eef0 1ac4    	vabs.f32	s3, s8
    4cf4: ed5f 2a1b    	vldr	s5, [pc, #-108]         @ 0x4c8c <Reset+0x4884>
    4cf8: eef4 1a62    	vcmp.f32	s3, s5
    4cfc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    4d00: f242 82ea    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x25d4
    4d04: ee47 0a63    	vmls.f32	s1, s14, s7
    4d08: f50d 6e80    	add.w	lr, sp, #0x400
    4d0c: eef0 2a6d    	vmov.f32	s5, s27
    4d10: 98ea         	ldr	r0, [sp, #0x3a8]
    4d12: 2800         	cmp	r0, #0x0
    4d14: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    4d18: 9cc3         	ldr	r4, [sp, #0x30c]
    4d1a: ee80 4a84    	vdiv.f32	s8, s1, s8
    4d1e: eef0 0a6f    	vmov.f32	s1, s31
    4d22: ee45 3a44    	vmls.f32	s7, s10, s8
    4d26: ee83 5a86    	vdiv.f32	s10, s7, s12
    4d2a: ed9e 6a0a    	vldr	s12, [lr, #40]
    4d2e: f50d 6e80    	add.w	lr, sp, #0x400
    4d32: ee02 3a45    	vmls.f32	s6, s4, s10
    4d36: ed9f 2aee    	vldr	s4, [pc, #952]          @ 0x50f0 <Reset+0x4ce8>
    4d3a: ed9e 7a09    	vldr	s14, [lr, #36]
    4d3e: f50d 6e00    	add.w	lr, sp, #0x800
    4d42: ee00 3a44    	vmls.f32	s6, s0, s8
    4d46: ee83 0a01    	vdiv.f32	s0, s6, s2
    4d4a: ed9f 3aea    	vldr	s6, [pc, #936]          @ 0x50f4 <Reset+0x4cec>
    4d4e: ee4c 8ac0    	vmls.f32	s17, s25, s0
    4d52: ee20 0a02    	vmul.f32	s0, s0, s4
    4d56: ee4e 8ac5    	vmls.f32	s17, s29, s10
    4d5a: ee4e 8a44    	vmls.f32	s17, s28, s8
    4d5e: ee88 1aa4    	vdiv.f32	s2, s17, s9
    4d62: ee21 1a02    	vmul.f32	s2, s2, s4
    4d66: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    4d6a: ee25 2a02    	vmul.f32	s4, s10, s4
    4d6e: ed9f 5ae2    	vldr	s10, [pc, #904]         @ 0x50f8 <Reset+0x4cf0>
    4d72: ee01 6a43    	vmls.f32	s12, s2, s6
    4d76: ee01 ba45    	vmls.f32	s22, s2, s10
    4d7a: ed9f 1ae0    	vldr	s2, [pc, #896]          @ 0x50fc <Reset+0x4cf4>
    4d7e: ee02 7a01    	vmla.f32	s14, s4, s2
    4d82: ed9d 1aa2    	vldr	s2, [sp, #648]
    4d86: ee00 6a03    	vmla.f32	s12, s0, s6
    4d8a: ed9f 3add    	vldr	s6, [pc, #884]          @ 0x5100 <Reset+0x4cf8>
    4d8e: ee00 ba05    	vmla.f32	s22, s0, s10
    4d92: ed9f 0adc    	vldr	s0, [pc, #880]          @ 0x5104 <Reset+0x4cfc>
    4d96: ee24 0a00    	vmul.f32	s0, s8, s0
    4d9a: eeb0 4a6d    	vmov.f32	s8, s27
    4d9e: ed8e 7aed    	vstr	s14, [lr, #948]
    4da2: f50d 6e00    	add.w	lr, sp, #0x800
    4da6: ee31 1a42    	vsub.f32	s2, s2, s4
    4daa: ed8e 1aee    	vstr	s2, [lr, #952]
    4dae: ed9f 1ad6    	vldr	s2, [pc, #856]          @ 0x5108 <Reset+0x4d00>
    4db2: ee00 8a01    	vmla.f32	s16, s0, s2
    4db6: f50d 6e00    	add.w	lr, sp, #0x800
    4dba: ed9f 0ad4    	vldr	s0, [pc, #848]          @ 0x510c <Reset+0x4d04>
    4dbe: ed9d 1afd    	vldr	s2, [sp, #1012]
    4dc2: ee02 1a00    	vmla.f32	s2, s4, s0
    4dc6: ed8e 6aef    	vstr	s12, [lr, #956]
    4dca: ee42 aa03    	vmla.f32	s21, s4, s6
    4dce: f50d 6e00    	add.w	lr, sp, #0x800
    4dd2: eeb0 2a6d    	vmov.f32	s4, s27
    4dd6: ed8e bafa    	vstr	s22, [lr, #1000]
    4dda: f50d 6e40    	add.w	lr, sp, #0xc00
    4dde: edce aa00    	vstr	s21, [lr]
    4de2: f50d 6e40    	add.w	lr, sp, #0xc00
    4de6: eeb0 9a41    	vmov.f32	s18, s2
    4dea: ed8e 8a04    	vstr	s16, [lr, #16]
    4dee: f50d 6e00    	add.w	lr, sp, #0x800
    4df2: ed8e 1af2    	vstr	s2, [lr, #968]
    4df6: f000 8083    	beq.w	0x4f00 <Reset+0x4af8>   @ imm = #0x106
    4dfa: ed9d 0ac1    	vldr	s0, [sp, #772]
    4dfe: 9848         	ldr	r0, [sp, #0x120]
    4e00: ee30 1a2d    	vadd.f32	s2, s0, s27
    4e04: ed9d 0ac2    	vldr	s0, [sp, #776]
    4e08: ee30 0a2d    	vadd.f32	s0, s0, s27
    4e0c: 2809         	cmp	r0, #0x9
    4e0e: ed9f 3ae7    	vldr	s6, [pc, #924]          @ 0x51ac <Reset+0x4da4>
    4e12: eeb0 4a41    	vmov.f32	s8, s2
    4e16: ed9f 5ae6    	vldr	s10, [pc, #920]         @ 0x51b0 <Reset+0x4da8>
    4e1a: d00b         	beq	0x4e34 <Reset+0x4a2c>   @ imm = #0x16
    4e1c: 280a         	cmp	r0, #0xa
    4e1e: f042 825b    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x24b6
    4e22: eeb0 4a40    	vmov.f32	s8, s0
    4e26: ed9f 3ae3    	vldr	s6, [pc, #908]          @ 0x51b4 <Reset+0x4dac>
    4e2a: ed9f 5ae3    	vldr	s10, [pc, #908]         @ 0x51b8 <Reset+0x4db0>
    4e2e: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    4e32: 9cc3         	ldr	r4, [sp, #0x30c]
    4e34: ed9f 2aae    	vldr	s4, [pc, #696]          @ 0x50f0 <Reset+0x4ce8>
    4e38: ed9d 6a46    	vldr	s12, [sp, #280]
    4e3c: ee86 6a02    	vdiv.f32	s12, s12, s4
    4e40: eef0 2a6d    	vmov.f32	s5, s27
    4e44: eeb0 2a6d    	vmov.f32	s4, s27
    4e48: eef0 0a6f    	vmov.f32	s1, s31
    4e4c: 98ea         	ldr	r0, [sp, #0x3a8]
    4e4e: ee06 2a04    	vmla.f32	s4, s12, s8
    4e52: eeb0 4a6d    	vmov.f32	s8, s27
    4e56: ee46 0a03    	vmla.f32	s1, s12, s6
    4e5a: 2801         	cmp	r0, #0x1
    4e5c: ee06 4a05    	vmla.f32	s8, s12, s10
    4e60: ee46 2a2d    	vmla.f32	s5, s12, s27
    4e64: d04c         	beq	0x4f00 <Reset+0x4af8>   @ imm = #0x98
    4e66: eeb0 6a40    	vmov.f32	s12, s0
    4e6a: 9829         	ldr	r0, [sp, #0xa4]
    4e6c: 280a         	cmp	r0, #0xa
    4e6e: ed9f 3ad1    	vldr	s6, [pc, #836]          @ 0x51b4 <Reset+0x4dac>
    4e72: ed9f 5ad1    	vldr	s10, [pc, #836]         @ 0x51b8 <Reset+0x4db0>
    4e76: d00b         	beq	0x4e90 <Reset+0x4a88>   @ imm = #0x16
    4e78: 2809         	cmp	r0, #0x9
    4e7a: f042 822d    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x245a
    4e7e: eeb0 6a41    	vmov.f32	s12, s2
    4e82: ed9f 3aca    	vldr	s6, [pc, #808]          @ 0x51ac <Reset+0x4da4>
    4e86: ed9f 5aca    	vldr	s10, [pc, #808]         @ 0x51b0 <Reset+0x4da8>
    4e8a: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    4e8e: 9cc3         	ldr	r4, [sp, #0x30c]
    4e90: ed9f 7a97    	vldr	s14, [pc, #604]         @ 0x50f0 <Reset+0x4ce8>
    4e94: eddd 1a27    	vldr	s3, [sp, #156]
    4e98: ee81 7a87    	vdiv.f32	s14, s3, s14
    4e9c: 98ea         	ldr	r0, [sp, #0x3a8]
    4e9e: 2802         	cmp	r0, #0x2
    4ea0: ee07 2a06    	vmla.f32	s4, s14, s12
    4ea4: ee47 0a03    	vmla.f32	s1, s14, s6
    4ea8: ee07 4a05    	vmla.f32	s8, s14, s10
    4eac: ee47 2a2d    	vmla.f32	s5, s14, s27
    4eb0: d026         	beq	0x4f00 <Reset+0x4af8>   @ imm = #0x4c
    4eb2: 9818         	ldr	r0, [sp, #0x60]
    4eb4: ed9f 3abf    	vldr	s6, [pc, #764]          @ 0x51b4 <Reset+0x4dac>
    4eb8: 280a         	cmp	r0, #0xa
    4eba: ed9f 5abf    	vldr	s10, [pc, #764]         @ 0x51b8 <Reset+0x4db0>
    4ebe: d00c         	beq	0x4eda <Reset+0x4ad2>   @ imm = #0x18
    4ec0: 9818         	ldr	r0, [sp, #0x60]
    4ec2: 2809         	cmp	r0, #0x9
    4ec4: f042 8208    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2410
    4ec8: eeb0 0a41    	vmov.f32	s0, s2
    4ecc: ed9f 3ab7    	vldr	s6, [pc, #732]          @ 0x51ac <Reset+0x4da4>
    4ed0: ed9f 5ab7    	vldr	s10, [pc, #732]         @ 0x51b0 <Reset+0x4da8>
    4ed4: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    4ed8: 9cc3         	ldr	r4, [sp, #0x30c]
    4eda: 98ea         	ldr	r0, [sp, #0x3a8]
    4edc: 2803         	cmp	r0, #0x3
    4ede: f042 846b    	bne.w	0x77b8 <Reset+0x73b0>   @ imm = #0x28d6
    4ee2: ed9f 1a83    	vldr	s2, [pc, #524]          @ 0x50f0 <Reset+0x4ce8>
    4ee6: ed9d 6a10    	vldr	s12, [sp, #64]
    4eea: ee86 1a01    	vdiv.f32	s2, s12, s2
    4eee: ee01 2a00    	vmla.f32	s4, s2, s0
    4ef2: ee41 0a03    	vmla.f32	s1, s2, s6
    4ef6: ee01 4a05    	vmla.f32	s8, s2, s10
    4efa: ee41 2a2d    	vmla.f32	s5, s2, s27
    4efe: bf00         	nop
    4f00: ed9f 1bcb    	vldr	d1, [pc, #812]          @ 0x5230 <Reset+0x4e28>
    4f04: ed9d 0a88    	vldr	s0, [sp, #544]
    4f08: eeb0 7a6f    	vmov.f32	s14, s31
    4f0c: ed9d 3b8a    	vldr	d3, [sp, #552]
    4f10: f8dd c398    	ldr.w	r12, [sp, #0x398]
    4f14: ee23 1b01    	vmul.f64	d1, d3, d1
    4f18: f1bc 0f00    	cmp.w	r12, #0x0
    4f1c: ed9f 3bc6    	vldr	d3, [pc, #792]          @ 0x5238 <Reset+0x4e30>
    4f20: ed9d 5bf2    	vldr	d5, [sp, #968]
    4f24: ee05 1b03    	vmla.f64	d1, d5, d3
    4f28: ed9f 3bc5    	vldr	d3, [pc, #788]          @ 0x5240 <Reset+0x4e38>
    4f2c: ed9d 5bfa    	vldr	d5, [sp, #1000]
    4f30: ee05 1b03    	vmla.f64	d1, d5, d3
    4f34: ed9f 3bc4    	vldr	d3, [pc, #784]          @ 0x5248 <Reset+0x4e40>
    4f38: ed9d 5bf8    	vldr	d5, [sp, #992]
    4f3c: ee05 1b43    	vmls.f64	d1, d5, d3
    4f40: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    4f44: ed9d 0a89    	vldr	s0, [sp, #548]
    4f48: ed9d 5b9c    	vldr	d5, [sp, #624]
    4f4c: ee31 1b43    	vsub.f64	d1, d1, d3
    4f50: ed9f 3bbf    	vldr	d3, [pc, #764]          @ 0x5250 <Reset+0x4e48>
    4f54: ee05 1b03    	vmla.f64	d1, d5, d3
    4f58: ed9f 3bbf    	vldr	d3, [pc, #764]          @ 0x5258 <Reset+0x4e50>
    4f5c: ed9d 5b98    	vldr	d5, [sp, #608]
    4f60: ee05 1b03    	vmla.f64	d1, d5, d3
    4f64: ed9f 3bbe    	vldr	d3, [pc, #760]          @ 0x5260 <Reset+0x4e58>
    4f68: ed9d 5b9e    	vldr	d5, [sp, #632]
    4f6c: ee05 1b03    	vmla.f64	d1, d5, d3
    4f70: ed9f 3bbd    	vldr	d3, [pc, #756]          @ 0x5268 <Reset+0x4e60>
    4f74: ed9d 5b9a    	vldr	d5, [sp, #616]
    4f78: ee05 1b03    	vmla.f64	d1, d5, d3
    4f7c: ed9f 3bbc    	vldr	d3, [pc, #752]          @ 0x5270 <Reset+0x4e68>
    4f80: ed9d 5b96    	vldr	d5, [sp, #600]
    4f84: ee05 1b03    	vmla.f64	d1, d5, d3
    4f88: ed9f 3bbb    	vldr	d3, [pc, #748]          @ 0x5278 <Reset+0x4e70>
    4f8c: ed9d 5b94    	vldr	d5, [sp, #592]
    4f90: ee05 1b03    	vmla.f64	d1, d5, d3
    4f94: ed9f 3bba    	vldr	d3, [pc, #744]          @ 0x5280 <Reset+0x4e78>
    4f98: ed9d 5b92    	vldr	d5, [sp, #584]
    4f9c: ee05 1b03    	vmla.f64	d1, d5, d3
    4fa0: ed9f 3bb9    	vldr	d3, [pc, #740]          @ 0x5288 <Reset+0x4e80>
    4fa4: ed9d 5b90    	vldr	d5, [sp, #576]
    4fa8: ee05 1b03    	vmla.f64	d1, d5, d3
    4fac: ed9f 3bb8    	vldr	d3, [pc, #736]          @ 0x5290 <Reset+0x4e88>
    4fb0: ed9d 5b8e    	vldr	d5, [sp, #568]
    4fb4: ee05 1b03    	vmla.f64	d1, d5, d3
    4fb8: ed9f 3bb7    	vldr	d3, [pc, #732]          @ 0x5298 <Reset+0x4e90>
    4fbc: ed9d 5b8c    	vldr	d5, [sp, #560]
    4fc0: ee05 1b03    	vmla.f64	d1, d5, d3
    4fc4: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    4fc8: ed9f 5bb5    	vldr	d5, [pc, #724]          @ 0x52a0 <Reset+0x4e98>
    4fcc: ed9d 6ba0    	vldr	d6, [sp, #640]
    4fd0: ee06 1b05    	vmla.f64	d1, d6, d5
    4fd4: eeb0 6a6d    	vmov.f32	s12, s27
    4fd8: ed9f 5bb3    	vldr	d5, [pc, #716]          @ 0x52a8 <Reset+0x4ea0>
    4fdc: ee23 3b05    	vmul.f64	d3, d3, d5
    4fe0: eeb0 5a6d    	vmov.f32	s10, s27
    4fe4: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    4fe8: eeb7 1bc3    	vcvt.f32.f64	s2, d3
    4fec: eeb0 3a6d    	vmov.f32	s6, s27
    4ff0: f000 80a2    	beq.w	0x5138 <Reset+0x4d30>   @ imm = #0x144
    4ff4: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    4ff8: ed9d 5a45    	vldr	s10, [sp, #276]
    4ffc: ee70 1a2d    	vadd.f32	s3, s0, s27
    5000: 2c14         	cmp	r4, #0x14
    5002: ee71 3a2d    	vadd.f32	s7, s2, s27
    5006: ee85 6a03    	vdiv.f32	s12, s10, s6
    500a: d00d         	beq	0x5028 <Reset+0x4c20>   @ imm = #0x1a
    500c: 2c18         	cmp	r4, #0x18
    500e: f042 8163    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x22c6
    5012: ee26 7a2d    	vmul.f32	s14, s12, s27
    5016: eddf 5aec    	vldr	s11, [pc, #944]         @ 0x53c8 <Reset+0x4fc0>
    501a: eeb0 5a63    	vmov.f32	s10, s7
    501e: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    5022: eef0 4a47    	vmov.f32	s9, s14
    5026: e00b         	b	0x5040 <Reset+0x4c38>   @ imm = #0x16
    5028: ed9f 3ae8    	vldr	s6, [pc, #928]          @ 0x53cc <Reset+0x4fc4>
    502c: eef0 5a6d    	vmov.f32	s11, s27
    5030: ee66 4a03    	vmul.f32	s9, s12, s6
    5034: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x53d0 <Reset+0x4fc8>
    5038: ee26 7a03    	vmul.f32	s14, s12, s6
    503c: eeb0 5a61    	vmov.f32	s10, s3
    5040: eeb0 3a6d    	vmov.f32	s6, s27
    5044: ee06 3a05    	vmla.f32	s6, s12, s10
    5048: eeb0 5a6d    	vmov.f32	s10, s27
    504c: ee06 5a25    	vmla.f32	s10, s12, s11
    5050: ee34 6aad    	vadd.f32	s12, s9, s27
    5054: 9ce6         	ldr	r4, [sp, #0x398]
    5056: ee37 7a2f    	vadd.f32	s14, s14, s31
    505a: 2c01         	cmp	r4, #0x1
    505c: 9c44         	ldr	r4, [sp, #0x110]
    505e: d06b         	beq	0x5138 <Reset+0x4d30>   @ imm = #0xd6
    5060: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    5064: eddd 5a26    	vldr	s11, [sp, #152]
    5068: 2c18         	cmp	r4, #0x18
    506a: eec5 4aa4    	vdiv.f32	s9, s11, s9
    506e: d013         	beq	0x5098 <Reset+0x4c90>   @ imm = #0x26
    5070: 2c14         	cmp	r4, #0x14
    5072: f042 8131    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2262
    5076: eddf 5ad5    	vldr	s11, [pc, #852]         @ 0x53cc <Reset+0x4fc4>
    507a: eef0 7a6d    	vmov.f32	s15, s27
    507e: ee64 6aa5    	vmul.f32	s13, s9, s11
    5082: eddf 5ad3    	vldr	s11, [pc, #844]         @ 0x53d0 <Reset+0x4fc8>
    5086: ee64 5aa5    	vmul.f32	s11, s9, s11
    508a: eeb0 8a61    	vmov.f32	s16, s3
    508e: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    5092: e009         	b	0x50a8 <Reset+0x4ca0>   @ imm = #0x12
    5094: bf00         	nop
    5096: bf00         	nop
    5098: ee64 5aad    	vmul.f32	s11, s9, s27
    509c: eeb0 8a63    	vmov.f32	s16, s7
    50a0: eddf 7ac9    	vldr	s15, [pc, #804]         @ 0x53c8 <Reset+0x4fc0>
    50a4: eef0 6a65    	vmov.f32	s13, s11
    50a8: ee04 3a88    	vmla.f32	s6, s9, s16
    50ac: 9ce6         	ldr	r4, [sp, #0x398]
    50ae: ee04 5aa7    	vmla.f32	s10, s9, s15
    50b2: 2c02         	cmp	r4, #0x2
    50b4: ee36 6a26    	vadd.f32	s12, s12, s13
    50b8: 9c24         	ldr	r4, [sp, #0x90]
    50ba: ee37 7a25    	vadd.f32	s14, s14, s11
    50be: d03b         	beq	0x5138 <Reset+0x4d30>   @ imm = #0x76
    50c0: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    50c4: eddd 5a0f    	vldr	s11, [sp, #60]
    50c8: 2c18         	cmp	r4, #0x18
    50ca: eec5 4aa4    	vdiv.f32	s9, s11, s9
    50ce: d01f         	beq	0x5110 <Reset+0x4d08>   @ imm = #0x3e
    50d0: 2c14         	cmp	r4, #0x14
    50d2: f042 8101    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2202
    50d6: eddf 3abd    	vldr	s7, [pc, #756]          @ 0x53cc <Reset+0x4fc4>
    50da: eef0 7a6d    	vmov.f32	s15, s27
    50de: ee64 6aa3    	vmul.f32	s13, s9, s7
    50e2: eddf 3abb    	vldr	s7, [pc, #748]          @ 0x53d0 <Reset+0x4fc8>
    50e6: ee64 5aa3    	vmul.f32	s11, s9, s7
    50ea: f8dd b3a0    	ldr.w	r11, [sp, #0x3a0]
    50ee: e017         	b	0x5120 <Reset+0x4d18>   @ imm = #0x2e
    50f0: 6f 12 83 3a  	.word	0x3a83126f
    50f4: 20 fb d4 46  	.word	0x46d4fb20
    50f8: 2d 03 d5 46  	.word	0x46d5032d
    50fc: 8e 92 e1 bc  	.word	0xbce1928e
    5100: e0 aa a0 38  	.word	0x38a0aae0
    5104: 00 24 74 cb  	.word	0xcb742400
    5108: 53 04 e9 36  	.word	0x36e90453
    510c: 4e 60 a9 be  	.word	0xbea9604e
    5110: ee64 5aad    	vmul.f32	s11, s9, s27
    5114: eef0 1a63    	vmov.f32	s3, s7
    5118: eddf 7aab    	vldr	s15, [pc, #684]         @ 0x53c8 <Reset+0x4fc0>
    511c: eef0 6a65    	vmov.f32	s13, s11
    5120: 9ce6         	ldr	r4, [sp, #0x398]
    5122: 2c03         	cmp	r4, #0x3
    5124: f042 8350    	bne.w	0x77c8 <Reset+0x73c0>   @ imm = #0x26a0
    5128: ee04 3aa1    	vmla.f32	s6, s9, s3
    512c: ee04 5aa7    	vmla.f32	s10, s9, s15
    5130: ee36 6a26    	vadd.f32	s12, s12, s13
    5134: ee37 7a25    	vadd.f32	s14, s14, s11
    5138: eef0 4a6f    	vmov.f32	s9, s31
    513c: eef0 1a6d    	vmov.f32	s3, s27
    5140: eef0 5a6d    	vmov.f32	s11, s27
    5144: eef0 3a6d    	vmov.f32	s7, s27
    5148: 2900         	cmp	r1, #0x0
    514a: f000 8111    	beq.w	0x5370 <Reset+0x4f68>   @ imm = #0x222
    514e: f50d 6e80    	add.w	lr, sp, #0x400
    5152: eddf 1acb    	vldr	s3, [pc, #812]          @ 0x5480 <Reset+0x5078>
    5156: eddd 3a43    	vldr	s7, [sp, #268]
    515a: ee79 7a2d    	vadd.f32	s15, s18, s27
    515e: eec3 3aa1    	vdiv.f32	s7, s7, s3
    5162: edde 1a02    	vldr	s3, [lr, #8]
    5166: ee71 6aad    	vadd.f32	s13, s3, s27
    516a: f1bb 0f03    	cmp.w	r11, #0x3
    516e: ee31 8a2d    	vadd.f32	s16, s2, s27
    5172: d025         	beq	0x51c0 <Reset+0x4db8>   @ imm = #0x4a
    5174: f1bb 0f05    	cmp.w	r11, #0x5
    5178: d00e         	beq	0x5198 <Reset+0x4d90>   @ imm = #0x1c
    517a: f1bb 0f18    	cmp.w	r11, #0x18
    517e: f042 80ab    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x2156
    5182: ee63 5aad    	vmul.f32	s11, s7, s27
    5186: eddf 1a90    	vldr	s3, [pc, #576]          @ 0x53c8 <Reset+0x4fc0>
    518a: ee63 4aa1    	vmul.f32	s9, s7, s3
    518e: eeb0 aa48    	vmov.f32	s20, s16
    5192: eeb0 9a65    	vmov.f32	s18, s11
    5196: e01f         	b	0x51d8 <Reset+0x4dd0>   @ imm = #0x3e
    5198: ee63 4aad    	vmul.f32	s9, s7, s27
    519c: eeb0 aa67    	vmov.f32	s20, s15
    51a0: eef0 5a64    	vmov.f32	s11, s9
    51a4: eeb0 9a64    	vmov.f32	s18, s9
    51a8: e016         	b	0x51d8 <Reset+0x4dd0>   @ imm = #0x2c
    51aa: bf00         	nop
    51ac: 17 52 26 40  	.word	0x40265217
    51b0: 2c bb 66 41  	.word	0x4166bb2c
    51b4: a4 6d 8d c0  	.word	0xc08d6da4
    51b8: e4 cf ac 40  	.word	0x40accfe4
    51bc: 00 bf 00 bf  	.word	0xbf00bf00
    51c0: eddf 1ab0    	vldr	s3, [pc, #704]          @ 0x5484 <Reset+0x507c>
    51c4: ee63 4aad    	vmul.f32	s9, s7, s27
    51c8: ee23 9aa1    	vmul.f32	s18, s7, s3
    51cc: eddf 1aae    	vldr	s3, [pc, #696]          @ 0x5488 <Reset+0x5080>
    51d0: ee63 5aa1    	vmul.f32	s11, s7, s3
    51d4: eeb0 aa66    	vmov.f32	s20, s13
    51d8: eef0 1a6d    	vmov.f32	s3, s27
    51dc: ee43 1a8a    	vmla.f32	s3, s7, s20
    51e0: ee79 3a2d    	vadd.f32	s7, s18, s27
    51e4: 2901         	cmp	r1, #0x1
    51e6: ee75 5aad    	vadd.f32	s11, s11, s27
    51ea: ee74 4aaf    	vadd.f32	s9, s9, s31
    51ee: f000 80bf    	beq.w	0x5370 <Reset+0x4f68>   @ imm = #0x17e
    51f2: ed9f 9aa3    	vldr	s18, [pc, #652]         @ 0x5480 <Reset+0x5078>
    51f6: ed9d aa25    	vldr	s20, [sp, #148]
    51fa: ee8a 9a09    	vdiv.f32	s18, s20, s18
    51fe: 9842         	ldr	r0, [sp, #0x108]
    5200: 2818         	cmp	r0, #0x18
    5202: d061         	beq	0x52c8 <Reset+0x4ec0>   @ imm = #0xc2
    5204: 9842         	ldr	r0, [sp, #0x108]
    5206: 2805         	cmp	r0, #0x5
    5208: d052         	beq	0x52b0 <Reset+0x4ea8>   @ imm = #0xa4
    520a: 9842         	ldr	r0, [sp, #0x108]
    520c: 2803         	cmp	r0, #0x3
    520e: f042 8063    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x20c6
    5212: ed9f aa9c    	vldr	s20, [pc, #624]         @ 0x5484 <Reset+0x507c>
    5216: eeb0 da66    	vmov.f32	s26, s13
    521a: ee29 ca0a    	vmul.f32	s24, s18, s20
    521e: ed9f aa9a    	vldr	s20, [pc, #616]         @ 0x5488 <Reset+0x5080>
    5222: ee29 ba0a    	vmul.f32	s22, s18, s20
    5226: ee29 aa2d    	vmul.f32	s20, s18, s27
    522a: e057         	b	0x52dc <Reset+0x4ed4>   @ imm = #0xae
    522c: bf00         	nop
    522e: bf00         	nop
    5230: 4d 6e 4d 56  	.word	0x564d6e4d
    5234: a1 ff ef bf  	.word	0xbfefffa1
    5238: bd c3 e5 f3  	.word	0xf3e5c3bd
    523c: ae 7b da bf  	.word	0xbfda7bae
    5240: c6 de 14 b5  	.word	0xb514dec6
    5244: 7d 25 d7 bf  	.word	0xbfd7257d
    5248: a8 b7 6f 23  	.word	0x236fb7a8
    524c: 61 7e da 3f  	.word	0x3fda7e61
    5250: 47 4c e0 ff  	.word	0xffe04c47
    5254: 41 fb de bf  	.word	0xbfdefb41
    5258: 63 8c 11 7f  	.word	0x7f118c63
    525c: 9f c3 ee bf  	.word	0xbfeec39f
    5260: 10 86 f1 f3  	.word	0xf3f18610
    5264: a6 0a d7 bf  	.word	0xbfd70aa6
    5268: d5 da a2 46  	.word	0x46a2dad5
    526c: 95 4e ee bf  	.word	0xbfee4e95
    5270: 96 bf 2a 3b  	.word	0x3b2abf96
    5274: 3a 68 c6 bf  	.word	0xbfc6683a
    5278: ba de ff 9d  	.word	0x9dffdeba
    527c: 36 4e ee bf  	.word	0xbfee4e36
    5280: db cc 16 35  	.word	0x3516ccdb
    5284: a4 62 c6 bf  	.word	0xbfc662a4
    5288: a1 98 ad 76  	.word	0x76ad98a1
    528c: c7 1f c6 bf  	.word	0xbfc61fc7
    5290: 65 a9 8c 94  	.word	0x948ca965
    5294: a2 51 eb bf  	.word	0xbfeb51a2
    5298: 16 69 97 08  	.word	0x08976916
    529c: cf fb de bf  	.word	0xbfdefbcf
    52a0: d2 88 fd 72  	.word	0x72fd88d2
    52a4: 62 6a 11 3f  	.word	0x3f116a62
    52a8: 32 2e 91 5a  	.word	0x5a912e32
    52ac: 8a 20 dd be  	.word	0xbedd208a
    52b0: ee29 aa2d    	vmul.f32	s20, s18, s27
    52b4: eeb0 da67    	vmov.f32	s26, s15
    52b8: eeb0 ba4a    	vmov.f32	s22, s20
    52bc: eeb0 ca4a    	vmov.f32	s24, s20
    52c0: e00c         	b	0x52dc <Reset+0x4ed4>   @ imm = #0x18
    52c2: bf00         	nop
    52c4: bf00         	nop
    52c6: bf00         	nop
    52c8: ee29 ba2d    	vmul.f32	s22, s18, s27
    52cc: ed9f aa3e    	vldr	s20, [pc, #248]         @ 0x53c8 <Reset+0x4fc0>
    52d0: ee29 aa0a    	vmul.f32	s20, s18, s20
    52d4: eeb0 da48    	vmov.f32	s26, s16
    52d8: eeb0 ca4b    	vmov.f32	s24, s22
    52dc: ee49 1a0d    	vmla.f32	s3, s18, s26
    52e0: 2902         	cmp	r1, #0x2
    52e2: ee73 3a8c    	vadd.f32	s7, s7, s24
    52e6: 9823         	ldr	r0, [sp, #0x8c]
    52e8: ee75 5a8b    	vadd.f32	s11, s11, s22
    52ec: ee74 4a8a    	vadd.f32	s9, s9, s20
    52f0: d03e         	beq	0x5370 <Reset+0x4f68>   @ imm = #0x7c
    52f2: ed9f 9a63    	vldr	s18, [pc, #396]         @ 0x5480 <Reset+0x5078>
    52f6: ed9d aa0e    	vldr	s20, [sp, #56]
    52fa: ee8a 9a09    	vdiv.f32	s18, s20, s18
    52fe: 2818         	cmp	r0, #0x18
    5300: d01e         	beq	0x5340 <Reset+0x4f38>   @ imm = #0x3c
    5302: 2805         	cmp	r0, #0x5
    5304: d010         	beq	0x5328 <Reset+0x4f20>   @ imm = #0x20
    5306: 2803         	cmp	r0, #0x3
    5308: f041 87e6    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1fcc
    530c: eddf 7a5d    	vldr	s15, [pc, #372]         @ 0x5484 <Reset+0x507c>
    5310: ee29 aa2d    	vmul.f32	s20, s18, s27
    5314: ee29 ca27    	vmul.f32	s24, s18, s15
    5318: eddf 7a5b    	vldr	s15, [pc, #364]         @ 0x5488 <Reset+0x5080>
    531c: ee29 ba27    	vmul.f32	s22, s18, s15
    5320: e018         	b	0x5354 <Reset+0x4f4c>   @ imm = #0x30
    5322: bf00         	nop
    5324: bf00         	nop
    5326: bf00         	nop
    5328: ee29 aa2d    	vmul.f32	s20, s18, s27
    532c: eef0 6a67    	vmov.f32	s13, s15
    5330: eeb0 ba4a    	vmov.f32	s22, s20
    5334: eeb0 ca4a    	vmov.f32	s24, s20
    5338: e00c         	b	0x5354 <Reset+0x4f4c>   @ imm = #0x18
    533a: bf00         	nop
    533c: bf00         	nop
    533e: bf00         	nop
    5340: ee29 ba2d    	vmul.f32	s22, s18, s27
    5344: eddf 6a20    	vldr	s13, [pc, #128]         @ 0x53c8 <Reset+0x4fc0>
    5348: ee29 aa26    	vmul.f32	s20, s18, s13
    534c: eef0 6a48    	vmov.f32	s13, s16
    5350: eeb0 ca4b    	vmov.f32	s24, s22
    5354: 2903         	cmp	r1, #0x3
    5356: f042 823f    	bne.w	0x77d8 <Reset+0x73d0>   @ imm = #0x247e
    535a: ee49 1a26    	vmla.f32	s3, s18, s13
    535e: ee73 3a8c    	vadd.f32	s7, s7, s24
    5362: ee75 5a8b    	vadd.f32	s11, s11, s22
    5366: ee74 4a8a    	vadd.f32	s9, s9, s20
    536a: bf00         	nop
    536c: bf00         	nop
    536e: bf00         	nop
    5370: eeb0 aac6    	vabs.f32	s20, s12
    5374: eef0 6ae0    	vabs.f32	s13, s1
    5378: eeb4 aa66    	vcmp.f32	s20, s13
    537c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5380: dd2a         	ble	0x53d8 <Reset+0x4fd0>   @ imm = #0x54
    5382: eef0 7a62    	vmov.f32	s15, s5
    5386: eef0 6a44    	vmov.f32	s13, s8
    538a: eeb0 9a60    	vmov.f32	s18, s1
    538e: eeb0 8a42    	vmov.f32	s16, s4
    5392: eeb0 bae3    	vabs.f32	s22, s7
    5396: eeb4 ba4a    	vcmp.f32	s22, s20
    539a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    539e: dc34         	bgt	0x540a <Reset+0x5002>   @ imm = #0x68
    53a0: eeb0 ba4a    	vmov.f32	s22, s20
    53a4: eeb0 2a64    	vmov.f32	s4, s9
    53a8: eeb0 4a65    	vmov.f32	s8, s11
    53ac: eef0 2a63    	vmov.f32	s5, s7
    53b0: eef0 0a61    	vmov.f32	s1, s3
    53b4: eef0 4a45    	vmov.f32	s9, s10
    53b8: eef0 5a47    	vmov.f32	s11, s14
    53bc: eef0 3a46    	vmov.f32	s7, s12
    53c0: eef0 1a43    	vmov.f32	s3, s6
    53c4: e029         	b	0x541a <Reset+0x5012>   @ imm = #0x52
    53c6: bf00         	nop
    53c8: e4 38 de 42  	.word	0x42de38e4
    53cc: 3a a4 1d 3a  	.word	0x3a1da43a
    53d0: e3 9d 82 ba  	.word	0xba829de3
    53d4: 00 bf 00 bf  	.word	0xbf00bf00
    53d8: eeb0 aa66    	vmov.f32	s20, s13
    53dc: eef0 7a45    	vmov.f32	s15, s10
    53e0: eef0 6a47    	vmov.f32	s13, s14
    53e4: eeb0 9a46    	vmov.f32	s18, s12
    53e8: eeb0 8a43    	vmov.f32	s16, s6
    53ec: eeb0 5a62    	vmov.f32	s10, s5
    53f0: eeb0 7a44    	vmov.f32	s14, s8
    53f4: eeb0 6a60    	vmov.f32	s12, s1
    53f8: eeb0 3a42    	vmov.f32	s6, s4
    53fc: eeb0 bae3    	vabs.f32	s22, s7
    5400: eeb4 ba4a    	vcmp.f32	s22, s20
    5404: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5408: ddca         	ble	0x53a0 <Reset+0x4f98>   @ imm = #-0x6c
    540a: eeb0 2a45    	vmov.f32	s4, s10
    540e: eeb0 4a47    	vmov.f32	s8, s14
    5412: eef0 2a46    	vmov.f32	s5, s12
    5416: eef0 0a43    	vmov.f32	s1, s6
    541a: ed9f 3ae5    	vldr	s6, [pc, #916]          @ 0x57b0 <Reset+0x53a8>
    541e: eeb4 ba43    	vcmp.f32	s22, s6
    5422: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5426: f001 8757    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1eae
    542a: f181 8755    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1eaa
    542e: e7ff         	b	0x5430 <Reset+0x5028>   @ imm = #-0x2
    5430: ed9f 3ae0    	vldr	s6, [pc, #896]          @ 0x57b4 <Reset+0x53ac>
    5434: eeb4 ba43    	vcmp.f32	s22, s6
    5438: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    543c: f241 874c    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1e98
    5440: ee82 3aa3    	vdiv.f32	s6, s5, s7
    5444: ee89 5a23    	vdiv.f32	s10, s18, s7
    5448: ee05 4ac3    	vmls.f32	s8, s11, s6
    544c: ee45 6ac5    	vmls.f32	s13, s11, s10
    5450: ee44 7ac5    	vmls.f32	s15, s9, s10
    5454: ee05 8a61    	vmls.f32	s16, s10, s3
    5458: ee04 2ac3    	vmls.f32	s4, s9, s6
    545c: ee43 0a61    	vmls.f32	s1, s6, s3
    5460: eeb0 6ac4    	vabs.f32	s12, s8
    5464: eeb0 3ae6    	vabs.f32	s6, s13
    5468: eeb4 6a43    	vcmp.f32	s12, s6
    546c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5470: dd0e         	ble	0x5490 <Reset+0x5088>   @ imm = #0x1c
    5472: eeb0 3a67    	vmov.f32	s6, s15
    5476: eeb0 7a66    	vmov.f32	s14, s13
    547a: eeb0 5a48    	vmov.f32	s10, s16
    547e: e015         	b	0x54ac <Reset+0x50a4>   @ imm = #0x2a
    5480: 00 24 74 4b  	.word	0x4b742400
    5484: ab 82 81 c0  	.word	0xc08182ab
    5488: d8 b3 c6 40  	.word	0x40c6b3d8
    548c: 00 bf 00 bf  	.word	0xbf00bf00
    5490: eeb0 6a43    	vmov.f32	s12, s6
    5494: eeb0 3a42    	vmov.f32	s6, s4
    5498: eeb0 7a44    	vmov.f32	s14, s8
    549c: eeb0 5a60    	vmov.f32	s10, s1
    54a0: eeb0 2a67    	vmov.f32	s4, s15
    54a4: eeb0 4a66    	vmov.f32	s8, s13
    54a8: eef0 0a48    	vmov.f32	s1, s16
    54ac: eddf 2ac0    	vldr	s5, [pc, #768]          @ 0x57b0 <Reset+0x53a8>
    54b0: eeb4 6a62    	vcmp.f32	s12, s5
    54b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54b8: f001 870e    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1e1c
    54bc: f181 870c    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1e18
    54c0: e002         	b	0x54c8 <Reset+0x50c0>   @ imm = #0x4
    54c2: bf00         	nop
    54c4: bf00         	nop
    54c6: bf00         	nop
    54c8: eddf 2aba    	vldr	s5, [pc, #744]          @ 0x57b4 <Reset+0x53ac>
    54cc: eeb4 6a62    	vcmp.f32	s12, s5
    54d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54d4: f241 8700    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1e00
    54d8: ee87 6a04    	vdiv.f32	s12, s14, s8
    54dc: ee02 3a46    	vmls.f32	s6, s4, s12
    54e0: ee13 0a10    	vmov	r0, s6
    54e4: f020 4000    	bic	r0, r0, #0x80000000
    54e8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    54ec: f281 86f4    	bge.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1de8
    54f0: eeb0 7ac3    	vabs.f32	s14, s6
    54f4: eeb4 7a62    	vcmp.f32	s14, s5
    54f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    54fc: f241 86ec    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1dd8
    5500: ee06 5a60    	vmls.f32	s10, s12, s1
    5504: eeb2 6a0e    	vmov.f32	s12, #1.500000e+01
    5508: f50d 6e80    	add.w	lr, sp, #0x400
    550c: eddd 2a69    	vldr	s5, [sp, #420]
    5510: 2b00         	cmp	r3, #0x0
    5512: ed9e 7a02    	vldr	s14, [lr, #8]
    5516: f50d 6e00    	add.w	lr, sp, #0x800
    551a: ee85 3a03    	vdiv.f32	s6, s10, s6
    551e: ed9f 5ad0    	vldr	s10, [pc, #832]         @ 0x5860 <Reset+0x5458>
    5522: ee42 0a43    	vmls.f32	s1, s4, s6
    5526: ee80 2a84    	vdiv.f32	s4, s1, s8
    552a: eddd 0ac2    	vldr	s1, [sp, #776]
    552e: ee45 1ac2    	vmls.f32	s3, s11, s4
    5532: ee22 2a06    	vmul.f32	s4, s4, s12
    5536: ed9f 6acb    	vldr	s12, [pc, #812]         @ 0x5864 <Reset+0x545c>
    553a: ee44 1ac3    	vmls.f32	s3, s9, s6
    553e: ee81 4aa3    	vdiv.f32	s8, s3, s7
    5542: eddd 1ac1    	vldr	s3, [sp, #772]
    5546: ee24 4a05    	vmul.f32	s8, s8, s10
    554a: ed9d 5a67    	vldr	s10, [sp, #412]
    554e: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    5552: ee04 7a06    	vmla.f32	s14, s8, s12
    5556: ed9f 6ac4    	vldr	s12, [pc, #784]         @ 0x5868 <Reset+0x5460>
    555a: ee44 2a06    	vmla.f32	s5, s8, s12
    555e: ed9f 6ac3    	vldr	s12, [pc, #780]         @ 0x586c <Reset+0x5464>
    5562: ee44 1a06    	vmla.f32	s3, s8, s12
    5566: ed9f 6ac2    	vldr	s12, [pc, #776]         @ 0x5870 <Reset+0x5468>
    556a: ee44 0a06    	vmla.f32	s1, s8, s12
    556e: ed9f 6ac1    	vldr	s12, [pc, #772]         @ 0x5874 <Reset+0x546c>
    5572: ee04 0a06    	vmla.f32	s0, s8, s12
    5576: ed1f 4bb4    	vldr	d4, [pc, #-720]         @ 0x52a8 <Reset+0x4ea0>
    557a: ee25 4b04    	vmul.f64	d4, d5, d4
    557e: ed9f 5abe    	vldr	s10, [pc, #760]         @ 0x5878 <Reset+0x5470>
    5582: ee02 7a05    	vmla.f32	s14, s4, s10
    5586: ed9f 5abd    	vldr	s10, [pc, #756]         @ 0x587c <Reset+0x5474>
    558a: ee23 3a05    	vmul.f32	s6, s6, s10
    558e: ed9f 5abc    	vldr	s10, [pc, #752]         @ 0x5880 <Reset+0x5478>
    5592: ee42 1a05    	vmla.f32	s3, s4, s10
    5596: ed9f 5abb    	vldr	s10, [pc, #748]         @ 0x5884 <Reset+0x547c>
    559a: ee42 0a05    	vmla.f32	s1, s4, s10
    559e: ed9d 5a68    	vldr	s10, [sp, #416]
    55a2: ed8e 7af0    	vstr	s14, [lr, #960]
    55a6: f50d 6e00    	add.w	lr, sp, #0x800
    55aa: ee35 5a42    	vsub.f32	s10, s10, s4
    55ae: ed8e 5af1    	vstr	s10, [lr, #964]
    55b2: f50d 6e00    	add.w	lr, sp, #0x800
    55b6: ed9f 5ab4    	vldr	s10, [pc, #720]         @ 0x5888 <Reset+0x5480>
    55ba: ee02 0a05    	vmla.f32	s0, s4, s10
    55be: edce 1af6    	vstr	s3, [lr, #984]
    55c2: f50d 6e00    	add.w	lr, sp, #0x800
    55c6: ed9f 5ab1    	vldr	s10, [pc, #708]         @ 0x588c <Reset+0x5484>
    55ca: ee03 1a05    	vmla.f32	s2, s6, s10
    55ce: ed9f 3ab0    	vldr	s6, [pc, #704]          @ 0x5890 <Reset+0x5488>
    55d2: edce 0af7    	vstr	s1, [lr, #988]
    55d6: f50d 6e40    	add.w	lr, sp, #0xc00
    55da: ee42 2a03    	vmla.f32	s5, s4, s6
    55de: eeb0 3a6f    	vmov.f32	s6, s31
    55e2: ed8e 0a01    	vstr	s0, [lr, #4]
    55e6: f50d 6e40    	add.w	lr, sp, #0xc00
    55ea: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    55ee: ed8e 1a05    	vstr	s2, [lr, #20]
    55f2: eeb0 0a6d    	vmov.f32	s0, s27
    55f6: eeb0 1a6d    	vmov.f32	s2, s27
    55fa: f50d 6e00    	add.w	lr, sp, #0x800
    55fe: edce 2af5    	vstr	s5, [lr, #980]
    5602: d071         	beq	0x56e8 <Reset+0x52e0>   @ imm = #0xe2
    5604: ed9d 0ab9    	vldr	s0, [sp, #740]
    5608: ee32 5a2d    	vadd.f32	s10, s4, s27
    560c: ee30 4a2d    	vadd.f32	s8, s0, s27
    5610: 9841         	ldr	r0, [sp, #0x104]
    5612: 2815         	cmp	r0, #0x15
    5614: d00c         	beq	0x5630 <Reset+0x5228>   @ imm = #0x18
    5616: eeb0 1a6d    	vmov.f32	s2, s27
    561a: eeb0 6a45    	vmov.f32	s12, s10
    561e: 2819         	cmp	r0, #0x19
    5620: ed1f 3a97    	vldr	s6, [pc, #-604]         @ 0x53c8 <Reset+0x4fc0>
    5624: d00a         	beq	0x563c <Reset+0x5234>   @ imm = #0x14
    5626: f001 be57    	b.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1cae
    562a: bf00         	nop
    562c: bf00         	nop
    562e: bf00         	nop
    5630: eeb0 3a6d    	vmov.f32	s6, s27
    5634: eeb0 6a44    	vmov.f32	s12, s8
    5638: ed9f 1ade    	vldr	s2, [pc, #888]          @ 0x59b4 <Reset+0x55ac>
    563c: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    5640: ed9d 7a40    	vldr	s14, [sp, #256]
    5644: 2b01         	cmp	r3, #0x1
    5646: ee87 7a00    	vdiv.f32	s14, s14, s0
    564a: eeb0 0a6d    	vmov.f32	s0, s27
    564e: ee07 0a03    	vmla.f32	s0, s14, s6
    5652: eeb0 3a6f    	vmov.f32	s6, s31
    5656: ee07 3a01    	vmla.f32	s6, s14, s2
    565a: eeb0 1a6d    	vmov.f32	s2, s27
    565e: ee07 1a06    	vmla.f32	s2, s14, s12
    5662: d041         	beq	0x56e8 <Reset+0x52e0>   @ imm = #0x82
    5664: eef0 0a6d    	vmov.f32	s1, s27
    5668: eeb0 7a44    	vmov.f32	s14, s8
    566c: 9822         	ldr	r0, [sp, #0x88]
    566e: ed9f 6ad1    	vldr	s12, [pc, #836]         @ 0x59b4 <Reset+0x55ac>
    5672: 2815         	cmp	r0, #0x15
    5674: d008         	beq	0x5688 <Reset+0x5280>   @ imm = #0x10
    5676: 2819         	cmp	r0, #0x19
    5678: f041 862e    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1c5c
    567c: eeb0 6a6d    	vmov.f32	s12, s27
    5680: eeb0 7a45    	vmov.f32	s14, s10
    5684: ed5f 0ab0    	vldr	s1, [pc, #-704]         @ 0x53c8 <Reset+0x4fc0>
    5688: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    568c: eddd 3a20    	vldr	s7, [sp, #128]
    5690: 2b02         	cmp	r3, #0x2
    5692: eec3 1aa1    	vdiv.f32	s3, s7, s3
    5696: ee01 0aa0    	vmla.f32	s0, s3, s1
    569a: ee01 3a86    	vmla.f32	s6, s3, s12
    569e: ee01 1a87    	vmla.f32	s2, s3, s14
    56a2: d021         	beq	0x56e8 <Reset+0x52e0>   @ imm = #0x42
    56a4: eeb0 7a6d    	vmov.f32	s14, s27
    56a8: 980d         	ldr	r0, [sp, #0x34]
    56aa: 2815         	cmp	r0, #0x15
    56ac: ed9f 6ac1    	vldr	s12, [pc, #772]         @ 0x59b4 <Reset+0x55ac>
    56b0: d008         	beq	0x56c4 <Reset+0x52bc>   @ imm = #0x10
    56b2: 2819         	cmp	r0, #0x19
    56b4: f041 8610    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1c20
    56b8: eeb0 6a6d    	vmov.f32	s12, s27
    56bc: eeb0 4a45    	vmov.f32	s8, s10
    56c0: ed1f 7abf    	vldr	s14, [pc, #-764]        @ 0x53c8 <Reset+0x4fc0>
    56c4: 2b03         	cmp	r3, #0x3
    56c6: f042 808f    	bne.w	0x77e8 <Reset+0x73e0>   @ imm = #0x211e
    56ca: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    56ce: eddd 0a0b    	vldr	s1, [sp, #44]
    56d2: ee80 5a85    	vdiv.f32	s10, s1, s10
    56d6: ee05 0a07    	vmla.f32	s0, s10, s14
    56da: ee05 3a06    	vmla.f32	s6, s10, s12
    56de: ee05 1a04    	vmla.f32	s2, s10, s8
    56e2: bf00         	nop
    56e4: bf00         	nop
    56e6: bf00         	nop
    56e8: eeb0 6a6d    	vmov.f32	s12, s27
    56ec: eeb0 4a6d    	vmov.f32	s8, s27
    56f0: eeb0 5a6f    	vmov.f32	s10, s31
    56f4: 2e00         	cmp	r6, #0x0
    56f6: f000 80a3    	beq.w	0x5840 <Reset+0x5438>   @ imm = #0x146
    56fa: ed1f 4a9f    	vldr	s8, [pc, #-636]         @ 0x5480 <Reset+0x5078>
    56fe: ed9d 5a3e    	vldr	s10, [sp, #248]
    5702: ee85 5a04    	vdiv.f32	s10, s10, s8
    5706: ed9d 4abd    	vldr	s8, [sp, #756]
    570a: ee34 7a2d    	vadd.f32	s14, s8, s27
    570e: 983f         	ldr	r0, [sp, #0xfc]
    5710: ee72 0aad    	vadd.f32	s1, s5, s27
    5714: 2806         	cmp	r0, #0x6
    5716: ee72 1a2d    	vadd.f32	s3, s4, s27
    571a: d015         	beq	0x5748 <Reset+0x5340>   @ imm = #0x2a
    571c: 2808         	cmp	r0, #0x8
    571e: d00b         	beq	0x5738 <Reset+0x5330>   @ imm = #0x16
    5720: 2819         	cmp	r0, #0x19
    5722: f041 85d9    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1bb2
    5726: ed1f 4ad8    	vldr	s8, [pc, #-864]         @ 0x53c8 <Reset+0x4fc0>
    572a: ee25 6a2d    	vmul.f32	s12, s10, s27
    572e: ee65 2a04    	vmul.f32	s5, s10, s8
    5732: eef0 3a61    	vmov.f32	s7, s3
    5736: e00f         	b	0x5758 <Reset+0x5350>   @ imm = #0x1e
    5738: ee25 6a2d    	vmul.f32	s12, s10, s27
    573c: eef0 3a60    	vmov.f32	s7, s1
    5740: eef0 2a46    	vmov.f32	s5, s12
    5744: e008         	b	0x5758 <Reset+0x5350>   @ imm = #0x10
    5746: bf00         	nop
    5748: ed9f 4ac9    	vldr	s8, [pc, #804]          @ 0x5a70 <Reset+0x5668>
    574c: ee65 2a2d    	vmul.f32	s5, s10, s27
    5750: ee25 6a04    	vmul.f32	s12, s10, s8
    5754: eef0 3a47    	vmov.f32	s7, s14
    5758: eeb0 4a6d    	vmov.f32	s8, s27
    575c: ee05 4a23    	vmla.f32	s8, s10, s7
    5760: ee32 5aaf    	vadd.f32	s10, s5, s31
    5764: 2e01         	cmp	r6, #0x1
    5766: ee36 6a2d    	vadd.f32	s12, s12, s27
    576a: 983d         	ldr	r0, [sp, #0xf4]
    576c: d068         	beq	0x5840 <Reset+0x5438>   @ imm = #0xd0
    576e: ed5f 2abc    	vldr	s5, [pc, #-752]         @ 0x5480 <Reset+0x5078>
    5772: eddd 3a21    	vldr	s7, [sp, #132]
    5776: eec3 2aa2    	vdiv.f32	s5, s7, s5
    577a: 2819         	cmp	r0, #0x19
    577c: d01c         	beq	0x57b8 <Reset+0x53b0>   @ imm = #0x38
    577e: 2808         	cmp	r0, #0x8
    5780: d00e         	beq	0x57a0 <Reset+0x5398>   @ imm = #0x1c
    5782: 2806         	cmp	r0, #0x6
    5784: f041 85a8    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1b50
    5788: eddf 3ab9    	vldr	s7, [pc, #740]          @ 0x5a70 <Reset+0x5668>
    578c: ee62 4aad    	vmul.f32	s9, s5, s27
    5790: ee62 3aa3    	vmul.f32	s7, s5, s7
    5794: eef0 5a47    	vmov.f32	s11, s14
    5798: e016         	b	0x57c8 <Reset+0x53c0>   @ imm = #0x2c
    579a: bf00         	nop
    579c: bf00         	nop
    579e: bf00         	nop
    57a0: ee62 3aad    	vmul.f32	s7, s5, s27
    57a4: eef0 5a60    	vmov.f32	s11, s1
    57a8: eef0 4a63    	vmov.f32	s9, s7
    57ac: e00c         	b	0x57c8 <Reset+0x53c0>   @ imm = #0x18
    57ae: bf00         	nop
    57b0: 00 00 80 7f  	.word	0x7f800000
    57b4: 08 e5 3c 1e  	.word	0x1e3ce508
    57b8: eddf 4ad7    	vldr	s9, [pc, #860]          @ 0x5b18 <Reset+0x5710>
    57bc: ee62 3aad    	vmul.f32	s7, s5, s27
    57c0: ee62 4aa4    	vmul.f32	s9, s5, s9
    57c4: eef0 5a61    	vmov.f32	s11, s3
    57c8: ee02 4aa5    	vmla.f32	s8, s5, s11
    57cc: 2e02         	cmp	r6, #0x2
    57ce: ee35 5a24    	vadd.f32	s10, s10, s9
    57d2: 981f         	ldr	r0, [sp, #0x7c]
    57d4: ee36 6a23    	vadd.f32	s12, s12, s7
    57d8: d032         	beq	0x5840 <Reset+0x5438>   @ imm = #0x64
    57da: ed5f 2ad7    	vldr	s5, [pc, #-860]         @ 0x5480 <Reset+0x5078>
    57de: eddd 3a0c    	vldr	s7, [sp, #48]
    57e2: eec3 2aa2    	vdiv.f32	s5, s7, s5
    57e6: 2819         	cmp	r0, #0x19
    57e8: d016         	beq	0x5818 <Reset+0x5410>   @ imm = #0x2c
    57ea: 2808         	cmp	r0, #0x8
    57ec: d00c         	beq	0x5808 <Reset+0x5400>   @ imm = #0x18
    57ee: 2806         	cmp	r0, #0x6
    57f0: f041 8572    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1ae4
    57f4: eddf 0a9e    	vldr	s1, [pc, #632]          @ 0x5a70 <Reset+0x5668>
    57f8: ee62 3aa0    	vmul.f32	s7, s5, s1
    57fc: ee62 0aad    	vmul.f32	s1, s5, s27
    5800: e012         	b	0x5828 <Reset+0x5420>   @ imm = #0x24
    5802: bf00         	nop
    5804: bf00         	nop
    5806: bf00         	nop
    5808: ee62 3aad    	vmul.f32	s7, s5, s27
    580c: eeb0 7a60    	vmov.f32	s14, s1
    5810: eef0 0a63    	vmov.f32	s1, s7
    5814: e008         	b	0x5828 <Reset+0x5420>   @ imm = #0x10
    5816: bf00         	nop
    5818: ed9f 7abf    	vldr	s14, [pc, #764]         @ 0x5b18 <Reset+0x5710>
    581c: ee62 3aad    	vmul.f32	s7, s5, s27
    5820: ee62 0a87    	vmul.f32	s1, s5, s14
    5824: eeb0 7a61    	vmov.f32	s14, s3
    5828: 2e03         	cmp	r6, #0x3
    582a: f041 87e5    	bne.w	0x77f8 <Reset+0x73f0>   @ imm = #0x1fca
    582e: ee02 4a87    	vmla.f32	s8, s5, s14
    5832: ee35 5a20    	vadd.f32	s10, s10, s1
    5836: ee36 6a23    	vadd.f32	s12, s12, s7
    583a: bf00         	nop
    583c: bf00         	nop
    583e: bf00         	nop
    5840: eef0 2ac6    	vabs.f32	s5, s12
    5844: eeb0 7ac3    	vabs.f32	s14, s6
    5848: eef4 2a47    	vcmp.f32	s5, s14
    584c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5850: dd22         	ble	0x5898 <Reset+0x5490>   @ imm = #0x44
    5852: eeb0 7a44    	vmov.f32	s14, s8
    5856: eef0 0a46    	vmov.f32	s1, s12
    585a: eef0 1a45    	vmov.f32	s3, s10
    585e: e029         	b	0x58b4 <Reset+0x54ac>   @ imm = #0x52
    5860: 6f 12 83 3a  	.word	0x3a83126f
    5864: 35 f3 7c 45  	.word	0x457cf335
    5868: e4 91 a3 c4  	.word	0xc4a391e4
    586c: 2a 6c 22 c5  	.word	0xc5226c2a
    5870: 12 1d 8a 45  	.word	0x458a1d12
    5874: 60 f2 19 bf  	.word	0xbf19f260
    5878: 09 f3 d3 be  	.word	0xbed3f309
    587c: 00 24 74 cb  	.word	0xcb742400
    5880: fc 1c 76 bf  	.word	0xbf761cfc
    5884: 38 55 b8 be  	.word	0xbeb85538
    5888: 14 53 8b 38  	.word	0x388b5314
    588c: 53 04 e9 36  	.word	0x36e90453
    5890: 10 da f7 be  	.word	0xbef7da10
    5894: 00 bf 00 bf  	.word	0xbf00bf00
    5898: eef0 2a47    	vmov.f32	s5, s14
    589c: eeb0 7a41    	vmov.f32	s14, s2
    58a0: eef0 0a43    	vmov.f32	s1, s6
    58a4: eef0 1a40    	vmov.f32	s3, s0
    58a8: eeb0 1a44    	vmov.f32	s2, s8
    58ac: eeb0 3a46    	vmov.f32	s6, s12
    58b0: eeb0 0a45    	vmov.f32	s0, s10
    58b4: ed1f 4a42    	vldr	s8, [pc, #-264]         @ 0x57b0 <Reset+0x53a8>
    58b8: eef4 2a44    	vcmp.f32	s5, s8
    58bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58c0: f001 850a    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1a14
    58c4: f181 8508    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1a10
    58c8: e002         	b	0x58d0 <Reset+0x54c8>   @ imm = #0x4
    58ca: bf00         	nop
    58cc: bf00         	nop
    58ce: bf00         	nop
    58d0: ed1f 4a48    	vldr	s8, [pc, #-288]         @ 0x57b4 <Reset+0x53ac>
    58d4: eef4 2a44    	vcmp.f32	s5, s8
    58d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    58dc: f241 84fc    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x19f8
    58e0: ee83 3a20    	vdiv.f32	s6, s6, s1
    58e4: ee01 0ac3    	vmls.f32	s0, s3, s6
    58e8: ee10 0a10    	vmov	r0, s0
    58ec: f020 4000    	bic	r0, r0, #0x80000000
    58f0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    58f4: f281 84f0    	bge.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x19e0
    58f8: eeb0 4ac0    	vabs.f32	s8, s0
    58fc: ed1f 5a53    	vldr	s10, [pc, #-332]        @ 0x57b4 <Reset+0x53ac>
    5900: eeb4 4a45    	vcmp.f32	s8, s10
    5904: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5908: f241 84e6    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x19cc
    590c: ee07 1a43    	vmls.f32	s2, s14, s6
    5910: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    5914: ed9d 4abd    	vldr	s8, [sp, #756]
    5918: f50d 6e00    	add.w	lr, sp, #0x800
    591c: 2a00         	cmp	r2, #0x0
    591e: ee81 1a00    	vdiv.f32	s2, s2, s0
    5922: ee01 7ac1    	vmls.f32	s14, s3, s2
    5926: ee87 0a20    	vdiv.f32	s0, s14, s1
    592a: ee20 0a03    	vmul.f32	s0, s0, s6
    592e: ed1f 3a2d    	vldr	s6, [pc, #-180]         @ 0x587c <Reset+0x5474>
    5932: ee21 1a03    	vmul.f32	s2, s2, s6
    5936: ed9f 3ae9    	vldr	s6, [pc, #932]          @ 0x5cdc <Reset+0x58d4>
    593a: ee00 4a03    	vmla.f32	s8, s0, s6
    593e: ed1f 3a2d    	vldr	s6, [pc, #-180]         @ 0x588c <Reset+0x5484>
    5942: ee01 2a03    	vmla.f32	s4, s2, s6
    5946: ed9d 1a66    	vldr	s2, [sp, #408]
    594a: ee31 1a40    	vsub.f32	s2, s2, s0
    594e: eeb0 3a6d    	vmov.f32	s6, s27
    5952: ed8e 4af3    	vstr	s8, [lr, #972]
    5956: f50d 6e00    	add.w	lr, sp, #0x800
    595a: eeb0 4a6f    	vmov.f32	s8, s31
    595e: ed8e 1af4    	vstr	s2, [lr, #976]
    5962: f50d 6e40    	add.w	lr, sp, #0xc00
    5966: eeb0 1a6d    	vmov.f32	s2, s27
    596a: ed8e 2a06    	vstr	s4, [lr, #24]
    596e: eeb0 2a6d    	vmov.f32	s4, s27
    5972: f000 8099    	beq.w	0x5aa8 <Reset+0x56a0>   @ imm = #0x132
    5976: ed9f 1ada    	vldr	s2, [pc, #872]          @ 0x5ce0 <Reset+0x58d8>
    597a: ed9d 2a3b    	vldr	s4, [sp, #236]
    597e: ee82 2a01    	vdiv.f32	s4, s4, s2
    5982: ed9d 1ab6    	vldr	s2, [sp, #728]
    5986: ee31 5a2d    	vadd.f32	s10, s2, s27
    598a: ed9d 1ab5    	vldr	s2, [sp, #724]
    598e: ee31 6a2d    	vadd.f32	s12, s2, s27
    5992: 983c         	ldr	r0, [sp, #0xf0]
    5994: 280e         	cmp	r0, #0xe
    5996: d00f         	beq	0x59b8 <Reset+0x55b0>   @ imm = #0x1e
    5998: 2812         	cmp	r0, #0x12
    599a: f041 849d    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x193a
    599e: ee22 3a2d    	vmul.f32	s6, s4, s27
    59a2: ed9f 1ae6    	vldr	s2, [pc, #920]          @ 0x5d3c <Reset+0x5934>
    59a6: ee22 4a01    	vmul.f32	s8, s4, s2
    59aa: eeb0 7a45    	vmov.f32	s14, s10
    59ae: eef0 0a43    	vmov.f32	s1, s6
    59b2: e00d         	b	0x59d0 <Reset+0x55c8>   @ imm = #0x1a
    59b4: 69 54 8d ba  	.word	0xba8d5469
    59b8: ed9f 1ae1    	vldr	s2, [pc, #900]          @ 0x5d40 <Reset+0x5938>
    59bc: ee62 0a2d    	vmul.f32	s1, s4, s27
    59c0: ee22 4a01    	vmul.f32	s8, s4, s2
    59c4: eeb2 1a0e    	vmov.f32	s2, #1.500000e+01
    59c8: eeb0 7a46    	vmov.f32	s14, s12
    59cc: ee22 3a01    	vmul.f32	s6, s4, s2
    59d0: eeb0 1a6d    	vmov.f32	s2, s27
    59d4: ee02 1a07    	vmla.f32	s2, s4, s14
    59d8: ee30 2aad    	vadd.f32	s4, s1, s27
    59dc: 2a01         	cmp	r2, #0x1
    59de: ee33 3a2d    	vadd.f32	s6, s6, s27
    59e2: 983a         	ldr	r0, [sp, #0xe8]
    59e4: ee34 4a2f    	vadd.f32	s8, s8, s31
    59e8: d05e         	beq	0x5aa8 <Reset+0x56a0>   @ imm = #0xbc
    59ea: ed9f 7abd    	vldr	s14, [pc, #756]         @ 0x5ce0 <Reset+0x58d8>
    59ee: eddd 0a1e    	vldr	s1, [sp, #120]
    59f2: ee80 7a87    	vdiv.f32	s14, s1, s14
    59f6: 280e         	cmp	r0, #0xe
    59f8: d00e         	beq	0x5a18 <Reset+0x5610>   @ imm = #0x1c
    59fa: 2812         	cmp	r0, #0x12
    59fc: f041 846c    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x18d8
    5a00: ee67 1a2d    	vmul.f32	s3, s14, s27
    5a04: eddf 0acd    	vldr	s1, [pc, #820]          @ 0x5d3c <Reset+0x5934>
    5a08: ee67 0a20    	vmul.f32	s1, s14, s1
    5a0c: eef0 2a45    	vmov.f32	s5, s10
    5a10: eef0 3a61    	vmov.f32	s7, s3
    5a14: e00c         	b	0x5a30 <Reset+0x5628>   @ imm = #0x18
    5a16: bf00         	nop
    5a18: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    5a1c: eddf 0ac8    	vldr	s1, [pc, #800]          @ 0x5d40 <Reset+0x5938>
    5a20: ee67 0a20    	vmul.f32	s1, s14, s1
    5a24: eef0 2a46    	vmov.f32	s5, s12
    5a28: ee67 3a2d    	vmul.f32	s7, s14, s27
    5a2c: ee67 1a21    	vmul.f32	s3, s14, s3
    5a30: ee07 1a22    	vmla.f32	s2, s14, s5
    5a34: 2a02         	cmp	r2, #0x2
    5a36: ee32 2a23    	vadd.f32	s4, s4, s7
    5a3a: 981d         	ldr	r0, [sp, #0x74]
    5a3c: ee33 3a21    	vadd.f32	s6, s6, s3
    5a40: ee34 4a20    	vadd.f32	s8, s8, s1
    5a44: d030         	beq	0x5aa8 <Reset+0x56a0>   @ imm = #0x60
    5a46: ed9f 7aa6    	vldr	s14, [pc, #664]         @ 0x5ce0 <Reset+0x58d8>
    5a4a: eddd 0a0a    	vldr	s1, [sp, #40]
    5a4e: ee80 7a87    	vdiv.f32	s14, s1, s14
    5a52: 280e         	cmp	r0, #0xe
    5a54: d010         	beq	0x5a78 <Reset+0x5670>   @ imm = #0x20
    5a56: 2812         	cmp	r0, #0x12
    5a58: f041 843e    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x187c
    5a5c: ee67 1a2d    	vmul.f32	s3, s14, s27
    5a60: ed9f 6ab6    	vldr	s12, [pc, #728]         @ 0x5d3c <Reset+0x5934>
    5a64: ee67 0a06    	vmul.f32	s1, s14, s12
    5a68: eef0 2a61    	vmov.f32	s5, s3
    5a6c: e010         	b	0x5a90 <Reset+0x5688>   @ imm = #0x20
    5a6e: bf00         	nop
    5a70: 1b 14 00 41  	.word	0x4100141b
    5a74: 00 bf 00 bf  	.word	0xbf00bf00
    5a78: ed9f 5ab1    	vldr	s10, [pc, #708]         @ 0x5d40 <Reset+0x5938>
    5a7c: ee67 2a2d    	vmul.f32	s5, s14, s27
    5a80: ee67 0a05    	vmul.f32	s1, s14, s10
    5a84: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    5a88: ee67 1a05    	vmul.f32	s3, s14, s10
    5a8c: eeb0 5a46    	vmov.f32	s10, s12
    5a90: 2a03         	cmp	r2, #0x3
    5a92: f041 86b9    	bne.w	0x7808 <Reset+0x7400>   @ imm = #0x1d72
    5a96: ee07 1a05    	vmla.f32	s2, s14, s10
    5a9a: ee32 2a22    	vadd.f32	s4, s4, s5
    5a9e: ee33 3a21    	vadd.f32	s6, s6, s3
    5aa2: ee34 4a20    	vadd.f32	s8, s8, s1
    5aa6: bf00         	nop
    5aa8: f50d 6e80    	add.w	lr, sp, #0x400
    5aac: ed9f 5ac8    	vldr	s10, [pc, #800]         @ 0x5dd0 <Reset+0x59c8>
    5ab0: eef0 0a6d    	vmov.f32	s1, s27
    5ab4: eeb0 7a6f    	vmov.f32	s14, s31
    5ab8: ed9e 6a08    	vldr	s12, [lr, #32]
    5abc: ee00 6a05    	vmla.f32	s12, s0, s10
    5ac0: f50d 6e80    	add.w	lr, sp, #0x400
    5ac4: eeb0 5a6d    	vmov.f32	s10, s27
    5ac8: f1b8 0f00    	cmp.w	r8, #0x0
    5acc: ed8e 6a08    	vstr	s12, [lr, #32]
    5ad0: eeb0 6a6d    	vmov.f32	s12, s27
    5ad4: f000 8098    	beq.w	0x5c08 <Reset+0x5800>   @ imm = #0x130
    5ad8: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    5adc: f50d 6e80    	add.w	lr, sp, #0x400
    5ae0: ed9d 6a39    	vldr	s12, [sp, #228]
    5ae4: 9854         	ldr	r0, [sp, #0x150]
    5ae6: 2816         	cmp	r0, #0x16
    5ae8: ee86 7a05    	vdiv.f32	s14, s12, s10
    5aec: ed9e 5a08    	vldr	s10, [lr, #32]
    5af0: ee75 1a2d    	vadd.f32	s3, s10, s27
    5af4: ed9d 5ae5    	vldr	s10, [sp, #916]
    5af8: ee75 2a2d    	vadd.f32	s5, s10, s27
    5afc: d010         	beq	0x5b20 <Reset+0x5718>   @ imm = #0x20
    5afe: 9854         	ldr	r0, [sp, #0x150]
    5b00: 281a         	cmp	r0, #0x1a
    5b02: f041 83e9    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x17d2
    5b06: ee67 0a2d    	vmul.f32	s1, s14, s27
    5b0a: ed9f 6a03    	vldr	s12, [pc, #12]          @ 0x5b18 <Reset+0x5710>
    5b0e: eef0 4a62    	vmov.f32	s9, s5
    5b12: eef0 3a60    	vmov.f32	s7, s1
    5b16: e00f         	b	0x5b38 <Reset+0x5730>   @ imm = #0x1e
    5b18: e4 38 de 42  	.word	0x42de38e4
    5b1c: 00 bf 00 bf  	.word	0xbf00bf00
    5b20: ed9f 5a6f    	vldr	s10, [pc, #444]         @ 0x5ce0 <Reset+0x58d8>
    5b24: eeb0 6a6d    	vmov.f32	s12, s27
    5b28: ee67 0a05    	vmul.f32	s1, s14, s10
    5b2c: ed9f 5ad4    	vldr	s10, [pc, #848]         @ 0x5e80 <Reset+0x5a78>
    5b30: ee67 3a05    	vmul.f32	s7, s14, s10
    5b34: eef0 4a61    	vmov.f32	s9, s3
    5b38: eeb0 5a6d    	vmov.f32	s10, s27
    5b3c: ee07 5a06    	vmla.f32	s10, s14, s12
    5b40: eeb0 6a6d    	vmov.f32	s12, s27
    5b44: ee07 6a24    	vmla.f32	s12, s14, s9
    5b48: ee33 7aaf    	vadd.f32	s14, s7, s31
    5b4c: f1b8 0f01    	cmp.w	r8, #0x1
    5b50: ee70 0aad    	vadd.f32	s1, s1, s27
    5b54: 9838         	ldr	r0, [sp, #0xe0]
    5b56: d057         	beq	0x5c08 <Reset+0x5800>   @ imm = #0xae
    5b58: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    5b5c: eddd 4a1c    	vldr	s9, [sp, #112]
    5b60: 281a         	cmp	r0, #0x1a
    5b62: eec4 3aa3    	vdiv.f32	s7, s9, s7
    5b66: d00f         	beq	0x5b88 <Reset+0x5780>   @ imm = #0x1e
    5b68: 2816         	cmp	r0, #0x16
    5b6a: f041 83b5    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x176a
    5b6e: eddf 4a5c    	vldr	s9, [pc, #368]          @ 0x5ce0 <Reset+0x58d8>
    5b72: eef0 7a6d    	vmov.f32	s15, s27
    5b76: eddf 5ac2    	vldr	s11, [pc, #776]         @ 0x5e80 <Reset+0x5a78>
    5b7a: ee63 4aa4    	vmul.f32	s9, s7, s9
    5b7e: ee63 5aa5    	vmul.f32	s11, s7, s11
    5b82: eef0 6a61    	vmov.f32	s13, s3
    5b86: e007         	b	0x5b98 <Reset+0x5790>   @ imm = #0xe
    5b88: ee63 4aad    	vmul.f32	s9, s7, s27
    5b8c: eef0 6a62    	vmov.f32	s13, s5
    5b90: ed5f 7a1f    	vldr	s15, [pc, #-124]        @ 0x5b18 <Reset+0x5710>
    5b94: eef0 5a64    	vmov.f32	s11, s9
    5b98: ee03 5aa7    	vmla.f32	s10, s7, s15
    5b9c: f1b8 0f02    	cmp.w	r8, #0x2
    5ba0: ee03 6aa6    	vmla.f32	s12, s7, s13
    5ba4: 981b         	ldr	r0, [sp, #0x6c]
    5ba6: ee37 7a25    	vadd.f32	s14, s14, s11
    5baa: ee70 0aa4    	vadd.f32	s1, s1, s9
    5bae: d02b         	beq	0x5c08 <Reset+0x5800>   @ imm = #0x56
    5bb0: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    5bb4: eddd 4a09    	vldr	s9, [sp, #36]
    5bb8: 281a         	cmp	r0, #0x1a
    5bba: eec4 3aa3    	vdiv.f32	s7, s9, s7
    5bbe: d00f         	beq	0x5be0 <Reset+0x57d8>   @ imm = #0x1e
    5bc0: 2816         	cmp	r0, #0x16
    5bc2: f041 8389    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1712
    5bc6: eddf 2a46    	vldr	s5, [pc, #280]          @ 0x5ce0 <Reset+0x58d8>
    5bca: eef0 5a6d    	vmov.f32	s11, s27
    5bce: ee63 4aa2    	vmul.f32	s9, s7, s5
    5bd2: eddf 2aab    	vldr	s5, [pc, #684]          @ 0x5e80 <Reset+0x5a78>
    5bd6: ee63 2aa2    	vmul.f32	s5, s7, s5
    5bda: e009         	b	0x5bf0 <Reset+0x57e8>   @ imm = #0x12
    5bdc: bf00         	nop
    5bde: bf00         	nop
    5be0: ee63 4aad    	vmul.f32	s9, s7, s27
    5be4: eef0 1a62    	vmov.f32	s3, s5
    5be8: ed5f 5a35    	vldr	s11, [pc, #-212]        @ 0x5b18 <Reset+0x5710>
    5bec: eef0 2a64    	vmov.f32	s5, s9
    5bf0: f1b8 0f03    	cmp.w	r8, #0x3
    5bf4: f041 8610    	bne.w	0x7818 <Reset+0x7410>   @ imm = #0x1c20
    5bf8: ee03 5aa5    	vmla.f32	s10, s7, s11
    5bfc: ee03 6aa1    	vmla.f32	s12, s7, s3
    5c00: ee37 7a22    	vadd.f32	s14, s14, s5
    5c04: ee70 0aa4    	vadd.f32	s1, s1, s9
    5c08: f50d 6e80    	add.w	lr, sp, #0x400
    5c0c: eddf 1a9d    	vldr	s3, [pc, #628]          @ 0x5e84 <Reset+0x5a7c>
    5c10: eef0 3a6d    	vmov.f32	s7, s27
    5c14: eef0 4a6d    	vmov.f32	s9, s27
    5c18: edde 2a00    	vldr	s5, [lr]
    5c1c: ee40 2a21    	vmla.f32	s5, s0, s3
    5c20: f50d 6e80    	add.w	lr, sp, #0x400
    5c24: eef0 1a6f    	vmov.f32	s3, s31
    5c28: 98e2         	ldr	r0, [sp, #0x388]
    5c2a: 2800         	cmp	r0, #0x0
    5c2c: edce 2a00    	vstr	s5, [lr]
    5c30: eef0 2a6d    	vmov.f32	s5, s27
    5c34: f000 80a0    	beq.w	0x5d78 <Reset+0x5970>   @ imm = #0x140
    5c38: f50d 6e80    	add.w	lr, sp, #0x400
    5c3c: eddf 1a92    	vldr	s3, [pc, #584]          @ 0x5e88 <Reset+0x5a80>
    5c40: eddd 2a37    	vldr	s5, [sp, #220]
    5c44: 9852         	ldr	r0, [sp, #0x148]
    5c46: eec2 1aa1    	vdiv.f32	s3, s5, s3
    5c4a: edde 2a00    	vldr	s5, [lr]
    5c4e: ee72 5aad    	vadd.f32	s11, s5, s27
    5c52: eddd 2ae5    	vldr	s5, [sp, #916]
    5c56: ee72 6aad    	vadd.f32	s13, s5, s27
    5c5a: 280b         	cmp	r0, #0xb
    5c5c: d010         	beq	0x5c80 <Reset+0x5878>   @ imm = #0x20
    5c5e: 9852         	ldr	r0, [sp, #0x148]
    5c60: 281a         	cmp	r0, #0x1a
    5c62: f041 8339    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1672
    5c66: ee61 4aad    	vmul.f32	s9, s3, s27
    5c6a: ed5f 2a55    	vldr	s5, [pc, #-340]         @ 0x5b18 <Reset+0x5710>
    5c6e: ee21 8aa2    	vmul.f32	s16, s3, s5
    5c72: eef0 7a66    	vmov.f32	s15, s13
    5c76: eef0 3a64    	vmov.f32	s7, s9
    5c7a: e00b         	b	0x5c94 <Reset+0x588c>   @ imm = #0x16
    5c7c: bf00         	nop
    5c7e: bf00         	nop
    5c80: ee61 4aad    	vmul.f32	s9, s3, s27
    5c84: eddf 2aed    	vldr	s5, [pc, #948]          @ 0x603c <Reset+0x5c34>
    5c88: ee61 3aa2    	vmul.f32	s7, s3, s5
    5c8c: eef0 7a65    	vmov.f32	s15, s11
    5c90: eeb0 8a64    	vmov.f32	s16, s9
    5c94: eef0 2a6d    	vmov.f32	s5, s27
    5c98: ee41 2aa7    	vmla.f32	s5, s3, s15
    5c9c: ee78 1a2f    	vadd.f32	s3, s16, s31
    5ca0: 98e2         	ldr	r0, [sp, #0x388]
    5ca2: ee73 3aad    	vadd.f32	s7, s7, s27
    5ca6: 2801         	cmp	r0, #0x1
    5ca8: ee74 4aad    	vadd.f32	s9, s9, s27
    5cac: 9836         	ldr	r0, [sp, #0xd8]
    5cae: d063         	beq	0x5d78 <Reset+0x5970>   @ imm = #0xc6
    5cb0: eddf 7a75    	vldr	s15, [pc, #468]         @ 0x5e88 <Reset+0x5a80>
    5cb4: ed9d 8a1a    	vldr	s16, [sp, #104]
    5cb8: eec8 7a27    	vdiv.f32	s15, s16, s15
    5cbc: 281a         	cmp	r0, #0x1a
    5cbe: d013         	beq	0x5ce8 <Reset+0x58e0>   @ imm = #0x26
    5cc0: 280b         	cmp	r0, #0xb
    5cc2: f041 8309    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1612
    5cc6: ee27 8aad    	vmul.f32	s16, s15, s27
    5cca: ed9f 9adc    	vldr	s18, [pc, #880]         @ 0x603c <Reset+0x5c34>
    5cce: ee27 9a89    	vmul.f32	s18, s15, s18
    5cd2: eeb0 aa65    	vmov.f32	s20, s11
    5cd6: eeb0 ba48    	vmov.f32	s22, s16
    5cda: e00f         	b	0x5cfc <Reset+0x58f4>   @ imm = #0x1e
    5cdc: fb 9d 08 bf  	.word	0xbf089dfb
    5ce0: 0a d7 23 3c  	.word	0x3c23d70a
    5ce4: 00 bf 00 bf  	.word	0xbf00bf00
    5ce8: ee27 8aad    	vmul.f32	s16, s15, s27
    5cec: ed1f 9a76    	vldr	s18, [pc, #-472]        @ 0x5b18 <Reset+0x5710>
    5cf0: ee27 ba89    	vmul.f32	s22, s15, s18
    5cf4: eeb0 aa66    	vmov.f32	s20, s13
    5cf8: eeb0 9a48    	vmov.f32	s18, s16
    5cfc: ee47 2a8a    	vmla.f32	s5, s15, s20
    5d00: 98e2         	ldr	r0, [sp, #0x388]
    5d02: ee71 1a8b    	vadd.f32	s3, s3, s22
    5d06: 2802         	cmp	r0, #0x2
    5d08: ee73 3a89    	vadd.f32	s7, s7, s18
    5d0c: 9819         	ldr	r0, [sp, #0x64]
    5d0e: ee74 4a88    	vadd.f32	s9, s9, s16
    5d12: d031         	beq	0x5d78 <Reset+0x5970>   @ imm = #0x62
    5d14: eddf 7a5c    	vldr	s15, [pc, #368]         @ 0x5e88 <Reset+0x5a80>
    5d18: ed9d 8a08    	vldr	s16, [sp, #32]
    5d1c: eec8 7a27    	vdiv.f32	s15, s16, s15
    5d20: 281a         	cmp	r0, #0x1a
    5d22: d011         	beq	0x5d48 <Reset+0x5940>   @ imm = #0x22
    5d24: 280b         	cmp	r0, #0xb
    5d26: f041 82d7    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x15ae
    5d2a: ee27 8aad    	vmul.f32	s16, s15, s27
    5d2e: eddf 6ac3    	vldr	s13, [pc, #780]         @ 0x603c <Reset+0x5c34>
    5d32: ee67 6aa6    	vmul.f32	s13, s15, s13
    5d36: eeb0 9a48    	vmov.f32	s18, s16
    5d3a: e00f         	b	0x5d5c <Reset+0x5954>   @ imm = #0x1e
    5d3c: 10 08 a1 c2  	.word	0xc2a10810
    5d40: fd 4a 01 3d  	.word	0x3d014afd
    5d44: 00 bf 00 bf  	.word	0xbf00bf00
    5d48: ee27 8aad    	vmul.f32	s16, s15, s27
    5d4c: ed5f 5a8e    	vldr	s11, [pc, #-568]        @ 0x5b18 <Reset+0x5710>
    5d50: ee27 9aa5    	vmul.f32	s18, s15, s11
    5d54: eef0 5a66    	vmov.f32	s11, s13
    5d58: eef0 6a48    	vmov.f32	s13, s16
    5d5c: 98e2         	ldr	r0, [sp, #0x388]
    5d5e: 2803         	cmp	r0, #0x3
    5d60: f041 8562    	bne.w	0x7828 <Reset+0x7420>   @ imm = #0x1ac4
    5d64: ee47 2aa5    	vmla.f32	s5, s15, s11
    5d68: ee71 1a89    	vadd.f32	s3, s3, s18
    5d6c: ee73 3aa6    	vadd.f32	s7, s7, s13
    5d70: ee74 4a88    	vadd.f32	s9, s9, s16
    5d74: bf00         	nop
    5d76: bf00         	nop
    5d78: eeb0 9ae0    	vabs.f32	s18, s1
    5d7c: eef0 5ac4    	vabs.f32	s11, s8
    5d80: eeb4 9a65    	vcmp.f32	s18, s11
    5d84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5d88: dd26         	ble	0x5dd8 <Reset+0x59d0>   @ imm = #0x4c
    5d8a: eef0 5a46    	vmov.f32	s11, s12
    5d8e: eeb0 8a60    	vmov.f32	s16, s1
    5d92: eef0 6a47    	vmov.f32	s13, s14
    5d96: eef0 7a45    	vmov.f32	s15, s10
    5d9a: eeb0 aae4    	vabs.f32	s20, s9
    5d9e: eeb4 aa49    	vcmp.f32	s20, s18
    5da2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5da6: dc30         	bgt	0x5e0a <Reset+0x5a02>   @ imm = #0x60
    5da8: eeb0 aa49    	vmov.f32	s20, s18
    5dac: eeb0 5a65    	vmov.f32	s10, s11
    5db0: eeb0 6a48    	vmov.f32	s12, s16
    5db4: eeb0 7a66    	vmov.f32	s14, s13
    5db8: eef0 0a67    	vmov.f32	s1, s15
    5dbc: eef0 5a62    	vmov.f32	s11, s5
    5dc0: eeb0 8a64    	vmov.f32	s16, s9
    5dc4: eef0 6a63    	vmov.f32	s13, s7
    5dc8: eef0 7a61    	vmov.f32	s15, s3
    5dcc: e025         	b	0x5e1a <Reset+0x5a12>   @ imm = #0x4a
    5dce: bf00         	nop
    5dd0: 89 fb e4 b6  	.word	0xb6e4fb89
    5dd4: 00 bf 00 bf  	.word	0xbf00bf00
    5dd8: eeb0 9a65    	vmov.f32	s18, s11
    5ddc: eef0 5a41    	vmov.f32	s11, s2
    5de0: eeb0 8a44    	vmov.f32	s16, s8
    5de4: eef0 6a43    	vmov.f32	s13, s6
    5de8: eef0 7a42    	vmov.f32	s15, s4
    5dec: eeb0 1a46    	vmov.f32	s2, s12
    5df0: eeb0 4a60    	vmov.f32	s8, s1
    5df4: eeb0 3a47    	vmov.f32	s6, s14
    5df8: eeb0 2a45    	vmov.f32	s4, s10
    5dfc: eeb0 aae4    	vabs.f32	s20, s9
    5e00: eeb4 aa49    	vcmp.f32	s20, s18
    5e04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e08: ddce         	ble	0x5da8 <Reset+0x59a0>   @ imm = #-0x64
    5e0a: eeb0 5a62    	vmov.f32	s10, s5
    5e0e: eeb0 6a64    	vmov.f32	s12, s9
    5e12: eeb0 7a63    	vmov.f32	s14, s7
    5e16: eef0 0a61    	vmov.f32	s1, s3
    5e1a: eddf 1aea    	vldr	s3, [pc, #936]          @ 0x61c4 <Reset+0x5dbc>
    5e1e: eeb4 aa61    	vcmp.f32	s20, s3
    5e22: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e26: f001 8257    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x14ae
    5e2a: f181 8255    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x14aa
    5e2e: e7ff         	b	0x5e30 <Reset+0x5a28>   @ imm = #-0x2
    5e30: eddf 1ae9    	vldr	s3, [pc, #932]          @ 0x61d8 <Reset+0x5dd0>
    5e34: eeb4 aa61    	vcmp.f32	s20, s3
    5e38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e3c: f241 824c    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1498
    5e40: eec8 1a06    	vdiv.f32	s3, s16, s12
    5e44: ee84 4a06    	vdiv.f32	s8, s8, s12
    5e48: ee47 6a61    	vmls.f32	s13, s14, s3
    5e4c: ee04 3a47    	vmls.f32	s6, s8, s14
    5e50: ee04 2a60    	vmls.f32	s4, s8, s1
    5e54: ee05 1a44    	vmls.f32	s2, s10, s8
    5e58: ee40 7ae1    	vmls.f32	s15, s1, s3
    5e5c: ee45 5a61    	vmls.f32	s11, s10, s3
    5e60: eef0 3ae6    	vabs.f32	s7, s13
    5e64: eeb0 4ac3    	vabs.f32	s8, s6
    5e68: eef4 3a44    	vcmp.f32	s7, s8
    5e6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5e70: dd0e         	ble	0x5e90 <Reset+0x5a88>   @ imm = #0x1c
    5e72: eeb0 4a65    	vmov.f32	s8, s11
    5e76: eef0 1a66    	vmov.f32	s3, s13
    5e7a: eef0 2a67    	vmov.f32	s5, s15
    5e7e: e015         	b	0x5eac <Reset+0x5aa4>   @ imm = #0x2a
    5e80: 25 74 0d ba  	.word	0xba0d7425
    5e84: fd f4 03 be  	.word	0xbe03f4fd
    5e88: 00 24 74 4b  	.word	0x4b742400
    5e8c: 00 bf 00 bf  	.word	0xbf00bf00
    5e90: eef0 3a44    	vmov.f32	s7, s8
    5e94: eeb0 4a41    	vmov.f32	s8, s2
    5e98: eef0 1a43    	vmov.f32	s3, s6
    5e9c: eef0 2a42    	vmov.f32	s5, s4
    5ea0: eeb0 1a65    	vmov.f32	s2, s11
    5ea4: eeb0 3a66    	vmov.f32	s6, s13
    5ea8: eeb0 2a67    	vmov.f32	s4, s15
    5eac: eddf 4ac5    	vldr	s9, [pc, #788]          @ 0x61c4 <Reset+0x5dbc>
    5eb0: eef4 3a64    	vcmp.f32	s7, s9
    5eb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5eb8: f001 820e    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x141c
    5ebc: f181 820c    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1418
    5ec0: e002         	b	0x5ec8 <Reset+0x5ac0>   @ imm = #0x4
    5ec2: bf00         	nop
    5ec4: bf00         	nop
    5ec6: bf00         	nop
    5ec8: eddf 4ac3    	vldr	s9, [pc, #780]          @ 0x61d8 <Reset+0x5dd0>
    5ecc: eef4 3a64    	vcmp.f32	s7, s9
    5ed0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5ed4: f241 8200    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1400
    5ed8: ee83 3a21    	vdiv.f32	s6, s6, s3
    5edc: ee02 2ac3    	vmls.f32	s4, s5, s6
    5ee0: ee12 0a10    	vmov	r0, s4
    5ee4: f020 4000    	bic	r0, r0, #0x80000000
    5ee8: f1b0 4fff    	cmp.w	r0, #0x7f800000
    5eec: f281 81f4    	bge.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x13e8
    5ef0: eef0 3ac2    	vabs.f32	s7, s4
    5ef4: eef4 3a64    	vcmp.f32	s7, s9
    5ef8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    5efc: f241 81ec    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x13d8
    5f00: ee04 1a43    	vmls.f32	s2, s8, s6
    5f04: f50d 6e80    	add.w	lr, sp, #0x400
    5f08: 98be         	ldr	r0, [sp, #0x2f8]
    5f0a: 2800         	cmp	r0, #0x0
    5f0c: ee81 1a02    	vdiv.f32	s2, s2, s4
    5f10: ee02 4ac1    	vmls.f32	s8, s5, s2
    5f14: ee84 2a21    	vdiv.f32	s4, s8, s3
    5f18: ed1f 4a8f    	vldr	s8, [pc, #-572]         @ 0x5ce0 <Reset+0x58d8>
    5f1c: eddd 1ab9    	vldr	s3, [sp, #740]
    5f20: ee07 5a42    	vmls.f32	s10, s14, s4
    5f24: ed9e 7a00    	vldr	s14, [lr]
    5f28: f50d 6e00    	add.w	lr, sp, #0x800
    5f2c: ee00 5ac1    	vmls.f32	s10, s1, s2
    5f30: eddd 0ab6    	vldr	s1, [sp, #728]
    5f34: ee85 3a06    	vdiv.f32	s6, s10, s12
    5f38: ed9f 5ad9    	vldr	s10, [pc, #868]         @ 0x62a0 <Reset+0x5e98>
    5f3c: ed9d 6ab5    	vldr	s12, [sp, #724]
    5f40: ee23 3a04    	vmul.f32	s6, s6, s8
    5f44: ed9d 4a49    	vldr	s8, [sp, #292]
    5f48: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    5f4c: ee03 6a05    	vmla.f32	s12, s6, s10
    5f50: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    5f54: ee22 2a05    	vmul.f32	s4, s4, s10
    5f58: ed9f 5ad2    	vldr	s10, [pc, #840]         @ 0x62a4 <Reset+0x5e9c>
    5f5c: ee40 1a05    	vmla.f32	s3, s0, s10
    5f60: ed9f 0ad1    	vldr	s0, [pc, #836]          @ 0x62a8 <Reset+0x5ea0>
    5f64: ee21 0a00    	vmul.f32	s0, s2, s0
    5f68: ed9f 1ad0    	vldr	s2, [pc, #832]          @ 0x62ac <Reset+0x5ea4>
    5f6c: ee02 7a01    	vmla.f32	s14, s4, s2
    5f70: ed9d 1a4a    	vldr	s2, [sp, #296]
    5f74: ee31 1a42    	vsub.f32	s2, s2, s4
    5f78: ee36 5a42    	vsub.f32	s10, s12, s4
    5f7c: ed9f 6acc    	vldr	s12, [pc, #816]         @ 0x62b0 <Reset+0x5ea8>
    5f80: ee43 0a06    	vmla.f32	s1, s6, s12
    5f84: ed1f 6a6e    	vldr	s12, [pc, #-440]        @ 0x5dd0 <Reset+0x59c8>
    5f88: ed8e 7af8    	vstr	s14, [lr, #992]
    5f8c: f50d 6e00    	add.w	lr, sp, #0x800
    5f90: ee42 1a06    	vmla.f32	s3, s4, s12
    5f94: ed8e 1af9    	vstr	s2, [lr, #996]
    5f98: f50d 6e80    	add.w	lr, sp, #0x400
    5f9c: ed9e 1a08    	vldr	s2, [lr, #32]
    5fa0: f50d 6e00    	add.w	lr, sp, #0x800
    5fa4: ee31 1a43    	vsub.f32	s2, s2, s6
    5fa8: ed8e 5afb    	vstr	s10, [lr, #1004]
    5fac: ed9f 5ac1    	vldr	s10, [pc, #772]         @ 0x62b4 <Reset+0x5eac>
    5fb0: ee02 1a05    	vmla.f32	s2, s4, s10
    5fb4: f50d 6e00    	add.w	lr, sp, #0x800
    5fb8: ed9f 2bbf    	vldr	d2, [pc, #764]          @ 0x62b8 <Reset+0x5eb0>
    5fbc: edce 0aff    	vstr	s1, [lr, #1020]
    5fc0: f50d 6e40    	add.w	lr, sp, #0xc00
    5fc4: ee24 2b02    	vmul.f64	d2, d4, d2
    5fc8: ed9f 4a9d    	vldr	s8, [pc, #628]          @ 0x6240 <Reset+0x5e38>
    5fcc: ed9d 5ae5    	vldr	s10, [sp, #916]
    5fd0: ee00 5a04    	vmla.f32	s10, s0, s8
    5fd4: ed9f 0a9b    	vldr	s0, [pc, #620]          @ 0x6244 <Reset+0x5e3c>
    5fd8: eddd 0a4b    	vldr	s1, [sp, #300]
    5fdc: ee43 0a00    	vmla.f32	s1, s6, s0
    5fe0: edce 1a02    	vstr	s3, [lr, #8]
    5fe4: f50d 6e40    	add.w	lr, sp, #0xc00
    5fe8: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    5fec: ed8e 1a03    	vstr	s2, [lr, #12]
    5ff0: f50d 6e40    	add.w	lr, sp, #0xc00
    5ff4: eeb0 1a6d    	vmov.f32	s2, s27
    5ff8: eeb0 2a6d    	vmov.f32	s4, s27
    5ffc: eeb0 3a6f    	vmov.f32	s6, s31
    6000: ed8e 5a07    	vstr	s10, [lr, #28]
    6004: f50d 6e00    	add.w	lr, sp, #0x800
    6008: edce 0afe    	vstr	s1, [lr, #1016]
    600c: f000 807c    	beq.w	0x6108 <Reset+0x5d00>   @ imm = #0xf8
    6010: ed9d 1aba    	vldr	s2, [sp, #744]
    6014: eef0 2a60    	vmov.f32	s5, s1
    6018: ee31 4a2d    	vadd.f32	s8, s2, s27
    601c: 9835         	ldr	r0, [sp, #0xd4]
    601e: ee30 5a2d    	vadd.f32	s10, s0, s27
    6022: 281b         	cmp	r0, #0x1b
    6024: d00c         	beq	0x6040 <Reset+0x5c38>   @ imm = #0x18
    6026: eeb0 2a6d    	vmov.f32	s4, s27
    602a: eeb0 6a45    	vmov.f32	s12, s10
    602e: 281c         	cmp	r0, #0x1c
    6030: ed9f 3a85    	vldr	s6, [pc, #532]          @ 0x6248 <Reset+0x5e40>
    6034: d00a         	beq	0x604c <Reset+0x5c44>   @ imm = #0x14
    6036: f001 b94f    	b.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x129e
    603a: bf00         	nop
    603c: 48 f4 99 40  	.word	0x4099f448
    6040: eeb0 3a6d    	vmov.f32	s6, s27
    6044: eeb0 6a44    	vmov.f32	s12, s8
    6048: ed9f 2a80    	vldr	s4, [pc, #512]          @ 0x624c <Reset+0x5e44>
    604c: eeb3 1a08    	vmov.f32	s2, #2.400000e+01
    6050: ed9d 7a34    	vldr	s14, [sp, #208]
    6054: 98be         	ldr	r0, [sp, #0x2f8]
    6056: 2801         	cmp	r0, #0x1
    6058: ee87 7a01    	vdiv.f32	s14, s14, s2
    605c: eeb0 1a6d    	vmov.f32	s2, s27
    6060: ee07 1a03    	vmla.f32	s2, s14, s6
    6064: eeb0 3a6f    	vmov.f32	s6, s31
    6068: ee07 3a02    	vmla.f32	s6, s14, s4
    606c: eeb0 2a6d    	vmov.f32	s4, s27
    6070: ee07 2a06    	vmla.f32	s4, s14, s12
    6074: d020         	beq	0x60b8 <Reset+0x5cb0>   @ imm = #0x40
    6076: eef0 0a6d    	vmov.f32	s1, s27
    607a: eeb0 7a44    	vmov.f32	s14, s8
    607e: 9817         	ldr	r0, [sp, #0x5c]
    6080: ed9f 6a72    	vldr	s12, [pc, #456]         @ 0x624c <Reset+0x5e44>
    6084: 281b         	cmp	r0, #0x1b
    6086: d008         	beq	0x609a <Reset+0x5c92>   @ imm = #0x10
    6088: 281c         	cmp	r0, #0x1c
    608a: f041 8125    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x124a
    608e: eeb0 6a6d    	vmov.f32	s12, s27
    6092: eeb0 7a45    	vmov.f32	s14, s10
    6096: eddf 0a6c    	vldr	s1, [pc, #432]          @ 0x6248 <Reset+0x5e40>
    609a: eef3 1a08    	vmov.f32	s3, #2.400000e+01
    609e: eddd 3a15    	vldr	s7, [sp, #84]
    60a2: 98be         	ldr	r0, [sp, #0x2f8]
    60a4: 2802         	cmp	r0, #0x2
    60a6: eec3 1aa1    	vdiv.f32	s3, s7, s3
    60aa: ee01 1aa0    	vmla.f32	s2, s3, s1
    60ae: ee01 3a86    	vmla.f32	s6, s3, s12
    60b2: ee01 2a87    	vmla.f32	s4, s3, s14
    60b6: d103         	bne	0x60c0 <Reset+0x5cb8>   @ imm = #0x6
    60b8: eef0 0a62    	vmov.f32	s1, s5
    60bc: e024         	b	0x6108 <Reset+0x5d00>   @ imm = #0x48
    60be: bf00         	nop
    60c0: eeb0 7a6d    	vmov.f32	s14, s27
    60c4: 9807         	ldr	r0, [sp, #0x1c]
    60c6: 281b         	cmp	r0, #0x1b
    60c8: ed9f 6a60    	vldr	s12, [pc, #384]         @ 0x624c <Reset+0x5e44>
    60cc: d008         	beq	0x60e0 <Reset+0x5cd8>   @ imm = #0x10
    60ce: 281c         	cmp	r0, #0x1c
    60d0: f041 8102    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1204
    60d4: eeb0 6a6d    	vmov.f32	s12, s27
    60d8: eeb0 4a45    	vmov.f32	s8, s10
    60dc: ed9f 7a5a    	vldr	s14, [pc, #360]         @ 0x6248 <Reset+0x5e40>
    60e0: 98be         	ldr	r0, [sp, #0x2f8]
    60e2: 2803         	cmp	r0, #0x3
    60e4: f041 83b0    	bne.w	0x7848 <Reset+0x7440>   @ imm = #0x1760
    60e8: eeb3 5a08    	vmov.f32	s10, #2.400000e+01
    60ec: eddd 0a05    	vldr	s1, [sp, #20]
    60f0: ee80 5a85    	vdiv.f32	s10, s1, s10
    60f4: eef0 0a62    	vmov.f32	s1, s5
    60f8: ee05 1a07    	vmla.f32	s2, s10, s14
    60fc: ee05 3a06    	vmla.f32	s6, s10, s12
    6100: ee05 2a04    	vmla.f32	s4, s10, s8
    6104: bf00         	nop
    6106: bf00         	nop
    6108: eeb0 6a6d    	vmov.f32	s12, s27
    610c: eeb0 4a6d    	vmov.f32	s8, s27
    6110: eeb0 5a6f    	vmov.f32	s10, s31
    6114: 996a         	ldr	r1, [sp, #0x1a8]
    6116: 2900         	cmp	r1, #0x0
    6118: f000 80b2    	beq.w	0x6280 <Reset+0x5e78>   @ imm = #0x164
    611c: ed9f 4a4c    	vldr	s8, [pc, #304]          @ 0x6250 <Reset+0x5e48>
    6120: ed9d 5a32    	vldr	s10, [sp, #200]
    6124: ee85 5a04    	vdiv.f32	s10, s10, s8
    6128: ed9d 4aa3    	vldr	s8, [sp, #652]
    612c: ee34 7a2d    	vadd.f32	s14, s8, s27
    6130: 9833         	ldr	r0, [sp, #0xcc]
    6132: ee70 0aad    	vadd.f32	s1, s1, s27
    6136: 280f         	cmp	r0, #0xf
    6138: ee70 1a2d    	vadd.f32	s3, s0, s27
    613c: d018         	beq	0x6170 <Reset+0x5d68>   @ imm = #0x30
    613e: 2811         	cmp	r0, #0x11
    6140: d00e         	beq	0x6160 <Reset+0x5d58>   @ imm = #0x1c
    6142: 281c         	cmp	r0, #0x1c
    6144: f041 80c8    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1190
    6148: ed9f 4a3f    	vldr	s8, [pc, #252]          @ 0x6248 <Reset+0x5e40>
    614c: ee25 6a2d    	vmul.f32	s12, s10, s27
    6150: ee65 2a04    	vmul.f32	s5, s10, s8
    6154: eef0 3a61    	vmov.f32	s7, s3
    6158: 996a         	ldr	r1, [sp, #0x1a8]
    615a: e011         	b	0x6180 <Reset+0x5d78>   @ imm = #0x22
    615c: bf00         	nop
    615e: bf00         	nop
    6160: ee25 6a2d    	vmul.f32	s12, s10, s27
    6164: eef0 3a60    	vmov.f32	s7, s1
    6168: eef0 2a46    	vmov.f32	s5, s12
    616c: e008         	b	0x6180 <Reset+0x5d78>   @ imm = #0x10
    616e: bf00         	nop
    6170: ed9f 4ae4    	vldr	s8, [pc, #912]          @ 0x6504 <Reset+0x60fc>
    6174: ee65 2a2d    	vmul.f32	s5, s10, s27
    6178: ee25 6a04    	vmul.f32	s12, s10, s8
    617c: eef0 3a47    	vmov.f32	s7, s14
    6180: eeb0 4a6d    	vmov.f32	s8, s27
    6184: ee05 4a23    	vmla.f32	s8, s10, s7
    6188: ee32 5aaf    	vadd.f32	s10, s5, s31
    618c: 2901         	cmp	r1, #0x1
    618e: ee36 6a2d    	vadd.f32	s12, s12, s27
    6192: 9831         	ldr	r0, [sp, #0xc4]
    6194: d074         	beq	0x6280 <Reset+0x5e78>   @ imm = #0xe8
    6196: eddf 2a2e    	vldr	s5, [pc, #184]          @ 0x6250 <Reset+0x5e48>
    619a: eddd 3a16    	vldr	s7, [sp, #88]
    619e: eec3 2aa2    	vdiv.f32	s5, s7, s5
    61a2: 281c         	cmp	r0, #0x1c
    61a4: d01c         	beq	0x61e0 <Reset+0x5dd8>   @ imm = #0x38
    61a6: 2811         	cmp	r0, #0x11
    61a8: d00e         	beq	0x61c8 <Reset+0x5dc0>   @ imm = #0x1c
    61aa: 280f         	cmp	r0, #0xf
    61ac: f041 8094    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x1128
    61b0: eddf 3ad4    	vldr	s7, [pc, #848]          @ 0x6504 <Reset+0x60fc>
    61b4: ee62 4aad    	vmul.f32	s9, s5, s27
    61b8: ee62 3aa3    	vmul.f32	s7, s5, s7
    61bc: eef0 5a47    	vmov.f32	s11, s14
    61c0: 996a         	ldr	r1, [sp, #0x1a8]
    61c2: e015         	b	0x61f0 <Reset+0x5de8>   @ imm = #0x2a
    61c4: 00 00 80 7f  	.word	0x7f800000
    61c8: ee62 3aad    	vmul.f32	s7, s5, s27
    61cc: eef0 5a60    	vmov.f32	s11, s1
    61d0: eef0 4a63    	vmov.f32	s9, s7
    61d4: e00c         	b	0x61f0 <Reset+0x5de8>   @ imm = #0x18
    61d6: bf00         	nop
    61d8: 08 e5 3c 1e  	.word	0x1e3ce508
    61dc: 00 bf 00 bf  	.word	0xbf00bf00
    61e0: eddf 4a19    	vldr	s9, [pc, #100]          @ 0x6248 <Reset+0x5e40>
    61e4: ee62 3aad    	vmul.f32	s7, s5, s27
    61e8: ee62 4aa4    	vmul.f32	s9, s5, s9
    61ec: eef0 5a61    	vmov.f32	s11, s3
    61f0: ee02 4aa5    	vmla.f32	s8, s5, s11
    61f4: 2902         	cmp	r1, #0x2
    61f6: ee35 5a24    	vadd.f32	s10, s10, s9
    61fa: 9814         	ldr	r0, [sp, #0x50]
    61fc: ee36 6a23    	vadd.f32	s12, s12, s7
    6200: d03e         	beq	0x6280 <Reset+0x5e78>   @ imm = #0x7c
    6202: eddf 2a13    	vldr	s5, [pc, #76]           @ 0x6250 <Reset+0x5e48>
    6206: eddd 3a06    	vldr	s7, [sp, #24]
    620a: eec3 2aa2    	vdiv.f32	s5, s7, s5
    620e: 281c         	cmp	r0, #0x1c
    6210: d022         	beq	0x6258 <Reset+0x5e50>   @ imm = #0x44
    6212: 2811         	cmp	r0, #0x11
    6214: d00c         	beq	0x6230 <Reset+0x5e28>   @ imm = #0x18
    6216: 280f         	cmp	r0, #0xf
    6218: f041 805e    	bne.w	0x72d8 <Reset+0x6ed0>   @ imm = #0x10bc
    621c: eddf 0ab9    	vldr	s1, [pc, #740]          @ 0x6504 <Reset+0x60fc>
    6220: 996a         	ldr	r1, [sp, #0x1a8]
    6222: ee62 3aa0    	vmul.f32	s7, s5, s1
    6226: ee62 0aad    	vmul.f32	s1, s5, s27
    622a: e01d         	b	0x6268 <Reset+0x5e60>   @ imm = #0x3a
    622c: bf00         	nop
    622e: bf00         	nop
    6230: ee62 3aad    	vmul.f32	s7, s5, s27
    6234: eeb0 7a60    	vmov.f32	s14, s1
    6238: eef0 0a63    	vmov.f32	s1, s7
    623c: e014         	b	0x6268 <Reset+0x5e60>   @ imm = #0x28
    623e: bf00         	nop
    6240: 53 04 e9 36  	.word	0x36e90453
    6244: fd a5 46 45  	.word	0x4546a5fd
    6248: e4 38 5e 42  	.word	0x425e38e4
    624c: 1a 17 81 c0  	.word	0xc081171a
    6250: 00 24 f4 4a  	.word	0x4af42400
    6254: 00 bf 00 bf  	.word	0xbf00bf00
    6258: ed1f 7a05    	vldr	s14, [pc, #-20]         @ 0x6248 <Reset+0x5e40>
    625c: ee62 3aad    	vmul.f32	s7, s5, s27
    6260: ee62 0a87    	vmul.f32	s1, s5, s14
    6264: eeb0 7a61    	vmov.f32	s14, s3
    6268: 2903         	cmp	r1, #0x3
    626a: f041 82e5    	bne.w	0x7838 <Reset+0x7430>   @ imm = #0x15ca
    626e: ee02 4a87    	vmla.f32	s8, s5, s14
    6272: ee35 5a20    	vadd.f32	s10, s10, s1
    6276: ee36 6a23    	vadd.f32	s12, s12, s7
    627a: bf00         	nop
    627c: bf00         	nop
    627e: bf00         	nop
    6280: eef0 2ac6    	vabs.f32	s5, s12
    6284: eeb0 7ac3    	vabs.f32	s14, s6
    6288: eef4 2a47    	vcmp.f32	s5, s14
    628c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6290: dd16         	ble	0x62c0 <Reset+0x5eb8>   @ imm = #0x2c
    6292: eeb0 7a44    	vmov.f32	s14, s8
    6296: eef0 0a46    	vmov.f32	s1, s12
    629a: eef0 1a45    	vmov.f32	s3, s10
    629e: e01d         	b	0x62dc <Reset+0x5ed4>   @ imm = #0x3a
    62a0: 2c 05 4a c0  	.word	0xc04a052c
    62a4: 70 c0 96 38  	.word	0x3896c070
    62a8: 00 24 74 cb  	.word	0xcb742400
    62ac: c4 37 a4 be  	.word	0xbea437c4
    62b0: 99 9c fb 45  	.word	0x45fb9c99
    62b4: 4a e2 16 38  	.word	0x3816e24a
    62b8: 32 2e 91 5a  	.word	0x5a912e32
    62bc: 8a 20 dd be  	.word	0xbedd208a
    62c0: eef0 2a47    	vmov.f32	s5, s14
    62c4: eeb0 7a42    	vmov.f32	s14, s4
    62c8: eef0 0a43    	vmov.f32	s1, s6
    62cc: eef0 1a41    	vmov.f32	s3, s2
    62d0: eeb0 2a44    	vmov.f32	s4, s8
    62d4: eeb0 3a46    	vmov.f32	s6, s12
    62d8: eeb0 1a45    	vmov.f32	s2, s10
    62dc: ed1f 4a47    	vldr	s8, [pc, #-284]         @ 0x61c4 <Reset+0x5dbc>
    62e0: eef4 2a44    	vcmp.f32	s5, s8
    62e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    62e8: f000 87f6    	beq.w	0x72d8 <Reset+0x6ed0>   @ imm = #0xfec
    62ec: f180 87f4    	bvs.w	0x72d8 <Reset+0x6ed0>   @ imm = #0xfe8
    62f0: e002         	b	0x62f8 <Reset+0x5ef0>   @ imm = #0x4
    62f2: bf00         	nop
    62f4: bf00         	nop
    62f6: bf00         	nop
    62f8: ed1f 4a49    	vldr	s8, [pc, #-292]         @ 0x61d8 <Reset+0x5dd0>
    62fc: eef4 2a44    	vcmp.f32	s5, s8
    6300: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6304: f240 87e8    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0xfd0
    6308: ee83 3a20    	vdiv.f32	s6, s6, s1
    630c: ee01 1ac3    	vmls.f32	s2, s3, s6
    6310: ee11 0a10    	vmov	r0, s2
    6314: f020 4000    	bic	r0, r0, #0x80000000
    6318: f1b0 4fff    	cmp.w	r0, #0x7f800000
    631c: f280 87dc    	bge.w	0x72d8 <Reset+0x6ed0>   @ imm = #0xfb8
    6320: eeb0 4ac1    	vabs.f32	s8, s2
    6324: ed1f 5a54    	vldr	s10, [pc, #-336]        @ 0x61d8 <Reset+0x5dd0>
    6328: eeb4 4a45    	vcmp.f32	s8, s10
    632c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6330: f240 87d2    	bls.w	0x72d8 <Reset+0x6ed0>   @ imm = #0xfa4
    6334: ee07 2a43    	vmls.f32	s4, s14, s6
    6338: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    633c: ed9d 4aa3    	vldr	s8, [sp, #652]
    6340: f50d 6e00    	add.w	lr, sp, #0x800
    6344: ed9d 5aba    	vldr	s10, [sp, #744]
    6348: f60d 4828    	addw	r8, sp, #0xc28
    634c: 4640         	mov	r0, r8
    634e: 99c4         	ldr	r1, [sp, #0x310]
    6350: f60d 32b4    	addw	r2, sp, #0xbb4
    6354: ee82 1a01    	vdiv.f32	s2, s4, s2
    6358: ee01 7ac1    	vmls.f32	s14, s3, s2
    635c: ee87 2a20    	vdiv.f32	s4, s14, s1
    6360: ee22 2a03    	vmul.f32	s4, s4, s6
    6364: ed9f 3a68    	vldr	s6, [pc, #416]          @ 0x6508 <Reset+0x6100>
    6368: ee21 1a03    	vmul.f32	s2, s2, s6
    636c: ed9f 3a67    	vldr	s6, [pc, #412]          @ 0x650c <Reset+0x6104>
    6370: ee02 4a03    	vmla.f32	s8, s4, s6
    6374: ed9f 3a66    	vldr	s6, [pc, #408]          @ 0x6510 <Reset+0x6108>
    6378: ee02 5a03    	vmla.f32	s10, s4, s6
    637c: ed1f 3a50    	vldr	s6, [pc, #-320]         @ 0x6240 <Reset+0x5e38>
    6380: ee01 0a03    	vmla.f32	s0, s2, s6
    6384: ed9d 1a47    	vldr	s2, [sp, #284]
    6388: ee31 1a42    	vsub.f32	s2, s2, s4
    638c: ed8e 4afc    	vstr	s8, [lr, #1008]
    6390: f50d 6e00    	add.w	lr, sp, #0x800
    6394: ed8e 1afd    	vstr	s2, [lr, #1012]
    6398: f50d 6e40    	add.w	lr, sp, #0xc00
    639c: ed8e 5a08    	vstr	s10, [lr, #32]
    63a0: f50d 6e40    	add.w	lr, sp, #0xc00
    63a4: ed8e 0a09    	vstr	s0, [lr, #36]
    63a8: f005 fc6a    	bl	0xbc80 <orange_dsp::generated_model::recover_physical_delta> @ imm = #0x58d4
    63ac: f1a7 04f0    	sub.w	r4, r7, #0xf0
    63b0: 22e0         	movs	r2, #0xe0
    63b2: 4620         	mov	r0, r4
    63b4: f50d 61de    	add.w	r1, sp, #0x6f0
    63b8: f007 f9f6    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x73ec
    63bc: 2000         	movs	r0, #0x0
    63be: bf00         	nop
    63c0: eb08 0200    	add.w	r2, r8, r0
    63c4: 1821         	adds	r1, r4, r0
    63c6: 3038         	adds	r0, #0x38
    63c8: ed92 0a00    	vldr	s0, [r2]
    63cc: ed91 4a00    	vldr	s8, [r1]
    63d0: ed92 1a01    	vldr	s2, [r2, #4]
    63d4: ed91 5a01    	vldr	s10, [r1, #4]
    63d8: ee30 0a04    	vadd.f32	s0, s0, s8
    63dc: ed92 2a02    	vldr	s4, [r2, #8]
    63e0: ed91 6a02    	vldr	s12, [r1, #8]
    63e4: ed81 0a00    	vstr	s0, [r1]
    63e8: ee31 0a05    	vadd.f32	s0, s2, s10
    63ec: ed92 3a03    	vldr	s6, [r2, #12]
    63f0: ed91 7a03    	vldr	s14, [r1, #12]
    63f4: ed81 0a01    	vstr	s0, [r1, #4]
    63f8: ee32 0a06    	vadd.f32	s0, s4, s12
    63fc: ed92 1a04    	vldr	s2, [r2, #16]
    6400: ed81 0a02    	vstr	s0, [r1, #8]
    6404: ee33 0a07    	vadd.f32	s0, s6, s14
    6408: ed91 2a04    	vldr	s4, [r1, #16]
    640c: ed81 0a03    	vstr	s0, [r1, #12]
    6410: ee31 0a02    	vadd.f32	s0, s2, s4
    6414: ed92 1a05    	vldr	s2, [r2, #20]
    6418: ed91 2a05    	vldr	s4, [r1, #20]
    641c: ed81 0a04    	vstr	s0, [r1, #16]
    6420: ee31 0a02    	vadd.f32	s0, s2, s4
    6424: ed92 1a06    	vldr	s2, [r2, #24]
    6428: ed91 2a06    	vldr	s4, [r1, #24]
    642c: ed81 0a05    	vstr	s0, [r1, #20]
    6430: ee31 0a02    	vadd.f32	s0, s2, s4
    6434: ed92 1a07    	vldr	s2, [r2, #28]
    6438: ed91 2a07    	vldr	s4, [r1, #28]
    643c: ed81 0a06    	vstr	s0, [r1, #24]
    6440: ee31 0a02    	vadd.f32	s0, s2, s4
    6444: ed92 1a08    	vldr	s2, [r2, #32]
    6448: ed91 2a08    	vldr	s4, [r1, #32]
    644c: ed81 0a07    	vstr	s0, [r1, #28]
    6450: ee31 0a02    	vadd.f32	s0, s2, s4
    6454: ed92 1a09    	vldr	s2, [r2, #36]
    6458: ed91 2a09    	vldr	s4, [r1, #36]
    645c: ed81 0a08    	vstr	s0, [r1, #32]
    6460: ee31 0a02    	vadd.f32	s0, s2, s4
    6464: ed92 1a0a    	vldr	s2, [r2, #40]
    6468: ed91 2a0a    	vldr	s4, [r1, #40]
    646c: ed81 0a09    	vstr	s0, [r1, #36]
    6470: ee31 0a02    	vadd.f32	s0, s2, s4
    6474: ed92 1a0b    	vldr	s2, [r2, #44]
    6478: ed91 2a0b    	vldr	s4, [r1, #44]
    647c: ed81 0a0a    	vstr	s0, [r1, #40]
    6480: ee31 0a02    	vadd.f32	s0, s2, s4
    6484: ed92 1a0c    	vldr	s2, [r2, #48]
    6488: ed91 2a0c    	vldr	s4, [r1, #48]
    648c: ed81 0a0b    	vstr	s0, [r1, #44]
    6490: ee31 0a02    	vadd.f32	s0, s2, s4
    6494: ed91 1a0d    	vldr	s2, [r1, #52]
    6498: ed81 0a0c    	vstr	s0, [r1, #48]
    649c: ed92 0a0d    	vldr	s0, [r2, #52]
    64a0: ee30 0a01    	vadd.f32	s0, s0, s2
    64a4: 28e0         	cmp	r0, #0xe0
    64a6: ed81 0a0d    	vstr	s0, [r1, #52]
    64aa: d189         	bne	0x63c0 <Reset+0x5fb8>   @ imm = #-0xee
    64ac: 22e0         	movs	r2, #0xe0
    64ae: 4650         	mov	r0, r10
    64b0: 4621         	mov	r1, r4
    64b2: f007 f979    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x72f2
    64b6: f50d 6e80    	add.w	lr, sp, #0x400
    64ba: ed9f 2a16    	vldr	s4, [pc, #88]           @ 0x6514 <Reset+0x610c>
    64be: eeb0 da6f    	vmov.f32	s26, s31
    64c2: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    64c6: ed9e 0ab6    	vldr	s0, [lr, #728]
    64ca: f50d 6e80    	add.w	lr, sp, #0x400
    64ce: ee20 0a02    	vmul.f32	s0, s0, s4
    64d2: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    64d6: ed9e 1ab7    	vldr	s2, [lr, #732]
    64da: f50d 6e80    	add.w	lr, sp, #0x400
    64de: ee21 1a02    	vmul.f32	s2, s2, s4
    64e2: f04f 0b00    	mov.w	r11, #0x0
    64e6: ed8e 0a0a    	vstr	s0, [lr, #40]
    64ea: f50d 6e80    	add.w	lr, sp, #0x400
    64ee: eddf 6a0a    	vldr	s13, [pc, #40]          @ 0x6518 <Reset+0x6110>
    64f2: ed9e 0ab8    	vldr	s0, [lr, #736]
    64f6: f50d 6e80    	add.w	lr, sp, #0x400
    64fa: ee20 ca02    	vmul.f32	s24, s0, s4
    64fe: ed8e 1a09    	vstr	s2, [lr, #36]
    6502: e01d         	b	0x6540 <Reset+0x6138>   @ imm = #0x3a
    6504: e2 98 00 3f  	.word	0x3f0098e2
    6508: 00 24 f4 ca  	.word	0xcaf42400
    650c: 82 76 ab bc  	.word	0xbcab7682
    6510: ce 1e 2c 3e  	.word	0x3e2c1ece
    6514: 00 80 bb 47  	.word	0x47bb8000
    6518: 0a d7 23 3d  	.word	0x3d23d70a
    651c: 00 bf 00 bf  	.word	0xbf00bf00
    6520: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    6524: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    6528: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    652c: f10b 0b01    	add.w	r11, r11, #0x1
    6530: f1bb 0f08    	cmp.w	r11, #0x8
    6534: ed5f 6a08    	vldr	s13, [pc, #-32]         @ 0x6518 <Reset+0x6110>
    6538: ee2d da2e    	vmul.f32	s26, s26, s29
    653c: f000 86d0    	beq.w	0x72e0 <Reset+0x6ed8>   @ imm = #0xda0
    6540: 2000         	movs	r0, #0x0
    6542: f60d 1614    	addw	r6, sp, #0x914
    6546: f50d 61de    	add.w	r1, sp, #0x6f0
    654a: bf00         	nop
    654c: bf00         	nop
    654e: bf00         	nop
    6550: 1835         	adds	r5, r6, r0
    6552: eb0a 0200    	add.w	r2, r10, r0
    6556: 180b         	adds	r3, r1, r0
    6558: 3038         	adds	r0, #0x38
    655a: ed95 1a00    	vldr	s2, [r5]
    655e: ed95 0a01    	vldr	s0, [r5, #4]
    6562: ed92 2a00    	vldr	s4, [r2]
    6566: ed92 3a01    	vldr	s6, [r2, #4]
    656a: ee32 4a41    	vsub.f32	s8, s4, s2
    656e: ed95 2a03    	vldr	s4, [r5, #12]
    6572: ee33 5a40    	vsub.f32	s10, s6, s0
    6576: ed95 3a02    	vldr	s6, [r5, #8]
    657a: ed95 6a04    	vldr	s12, [r5, #16]
    657e: ed92 7a04    	vldr	s14, [r2, #16]
    6582: ee0d 1a04    	vmla.f32	s2, s26, s8
    6586: ed92 4a02    	vldr	s8, [r2, #8]
    658a: ee0d 0a05    	vmla.f32	s0, s26, s10
    658e: ed92 5a03    	vldr	s10, [r2, #12]
    6592: ee34 4a43    	vsub.f32	s8, s8, s6
    6596: edd5 0a07    	vldr	s1, [r5, #28]
    659a: ee35 5a42    	vsub.f32	s10, s10, s4
    659e: edd2 1a06    	vldr	s3, [r2, #24]
    65a2: ee37 7a46    	vsub.f32	s14, s14, s12
    65a6: edd2 2a07    	vldr	s5, [r2, #28]
    65aa: ee0d 3a04    	vmla.f32	s6, s26, s8
    65ae: ed95 4a05    	vldr	s8, [r5, #20]
    65b2: ee0d 2a05    	vmla.f32	s4, s26, s10
    65b6: ed92 5a05    	vldr	s10, [r2, #20]
    65ba: ee35 5a44    	vsub.f32	s10, s10, s8
    65be: edd5 4a0a    	vldr	s9, [r5, #40]
    65c2: ee0d 6a07    	vmla.f32	s12, s26, s14
    65c6: ed95 7a06    	vldr	s14, [r5, #24]
    65ca: edd2 5a0a    	vldr	s11, [r2, #40]
    65ce: ee71 1ac7    	vsub.f32	s3, s3, s14
    65d2: ee0d 4a05    	vmla.f32	s8, s26, s10
    65d6: ed83 1a00    	vstr	s2, [r3]
    65da: ee72 2ae0    	vsub.f32	s5, s5, s1
    65de: ed95 5a08    	vldr	s10, [r5, #32]
    65e2: ee35 1ae4    	vsub.f32	s2, s11, s9
    65e6: edd5 3a09    	vldr	s7, [r5, #36]
    65ea: ee0d 7a21    	vmla.f32	s14, s26, s3
    65ee: edd2 1a08    	vldr	s3, [r2, #32]
    65f2: ee4d 0a22    	vmla.f32	s1, s26, s5
    65f6: edd2 2a09    	vldr	s5, [r2, #36]
    65fa: ed83 0a01    	vstr	s0, [r3, #4]
    65fe: ee4d 4a01    	vmla.f32	s9, s26, s2
    6602: ed83 3a02    	vstr	s6, [r3, #8]
    6606: ed95 0a0b    	vldr	s0, [r5, #44]
    660a: ed83 2a03    	vstr	s4, [r3, #12]
    660e: ed92 1a0b    	vldr	s2, [r2, #44]
    6612: ed83 6a04    	vstr	s12, [r3, #16]
    6616: ed95 2a0c    	vldr	s4, [r5, #48]
    661a: ed92 3a0c    	vldr	s6, [r2, #48]
    661e: ed83 4a05    	vstr	s8, [r3, #20]
    6622: ed95 4a0d    	vldr	s8, [r5, #52]
    6626: ed92 6a0d    	vldr	s12, [r2, #52]
    662a: ee71 1ac5    	vsub.f32	s3, s3, s10
    662e: 28e0         	cmp	r0, #0xe0
    6630: ee72 2ae3    	vsub.f32	s5, s5, s7
    6634: ed83 7a06    	vstr	s14, [r3, #24]
    6638: ee31 1a40    	vsub.f32	s2, s2, s0
    663c: edc3 0a07    	vstr	s1, [r3, #28]
    6640: ee33 3a42    	vsub.f32	s6, s6, s4
    6644: edc3 4a0a    	vstr	s9, [r3, #40]
    6648: ee36 6a44    	vsub.f32	s12, s12, s8
    664c: ee0d 5a21    	vmla.f32	s10, s26, s3
    6650: ee4d 3a22    	vmla.f32	s7, s26, s5
    6654: ee0d 0a01    	vmla.f32	s0, s26, s2
    6658: ee0d 2a03    	vmla.f32	s4, s26, s6
    665c: ee0d 4a06    	vmla.f32	s8, s26, s12
    6660: ed83 5a08    	vstr	s10, [r3, #32]
    6664: edc3 3a09    	vstr	s7, [r3, #36]
    6668: ed83 0a0b    	vstr	s0, [r3, #44]
    666c: ed83 2a0c    	vstr	s4, [r3, #48]
    6670: ed83 4a0d    	vstr	s8, [r3, #52]
    6674: f47f af6c    	bne.w	0x6550 <Reset+0x6148>   @ imm = #-0x128
    6678: f50d 6e80    	add.w	lr, sp, #0x400
    667c: ed9f 7ac6    	vldr	s14, [pc, #792]         @ 0x6998 <Reset+0x6590>
    6680: eddf 0ac6    	vldr	s1, [pc, #792]          @ 0x699c <Reset+0x6594>
    6684: eefa 5a0e    	vmov.f32	s11, #-1.500000e+01
    6688: ed9e 0acf    	vldr	s0, [lr, #828]
    668c: f50d 6e80    	add.w	lr, sp, #0x400
    6690: eddf 1af2    	vldr	s3, [pc, #968]          @ 0x6a5c <Reset+0x6654>
    6694: f240 1555    	movw	r5, #0x155
    6698: ed9e 1ad0    	vldr	s2, [lr, #832]
    669c: eddf 2af0    	vldr	s5, [pc, #960]          @ 0x6a60 <Reset+0x6658>
    66a0: ee30 0a41    	vsub.f32	s0, s0, s2
    66a4: eddf 3aef    	vldr	s7, [pc, #956]          @ 0x6a64 <Reset+0x665c>
    66a8: eddf 4aef    	vldr	s9, [pc, #956]          @ 0x6a68 <Reset+0x6660>
    66ac: f50d 6e80    	add.w	lr, sp, #0x400
    66b0: f2c0 0508    	movt	r5, #0x8
    66b4: ee80 0a07    	vdiv.f32	s0, s0, s14
    66b8: eef4 0a40    	vcmp.f32	s1, s0
    66bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66c0: fe30 0a80    	vselgt.f32	s0, s1, s0
    66c4: eeb4 0a61    	vcmp.f32	s0, s3
    66c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66cc: fe31 1a80    	vselgt.f32	s2, s3, s0
    66d0: ee21 0a22    	vmul.f32	s0, s2, s5
    66d4: ee30 2a29    	vadd.f32	s4, s0, s19
    66d8: eeb5 0a40    	vcmp.f32	s0, #0
    66dc: ee30 3a2e    	vadd.f32	s6, s0, s29
    66e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    66e4: eebd 2ac2    	vcvt.s32.f32	s4, s4
    66e8: eebd 3ac3    	vcvt.s32.f32	s6, s6
    66ec: ee12 4a10    	vmov	r4, s4
    66f0: eeb0 2a41    	vmov.f32	s4, s2
    66f4: ee13 0a10    	vmov	r0, s6
    66f8: bfa8         	it	ge
    66fa: 4604         	movge	r4, r0
    66fc: ee00 4a10    	vmov	s0, r4
    6700: eeb8 0ac0    	vcvt.f32.s32	s0, s0
    6704: ee00 2a63    	vmls.f32	s4, s0, s7
    6708: ee22 0a2e    	vmul.f32	s0, s4, s29
    670c: eef4 7a40    	vcmp.f32	s15, s0
    6710: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6714: fe37 0a80    	vselgt.f32	s0, s15, s0
    6718: eeb4 0a64    	vcmp.f32	s0, s9
    671c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6720: eeb4 1a61    	vcmp.f32	s2, s3
    6724: eeb1 1a41    	vneg.f32	s2, s2
    6728: fe34 0a80    	vselgt.f32	s0, s9, s0
    672c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6730: fe30 1a81    	vselgt.f32	s2, s1, s2
    6734: eeb4 1a61    	vcmp.f32	s2, s3
    6738: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    673c: fe31 1a81    	vselgt.f32	s2, s3, s2
    6740: ee21 2a22    	vmul.f32	s4, s2, s5
    6744: ee32 3a29    	vadd.f32	s6, s4, s19
    6748: eeb5 2a40    	vcmp.f32	s4, #0
    674c: ee32 4a2e    	vadd.f32	s8, s4, s29
    6750: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6754: eebd 3ac3    	vcvt.s32.f32	s6, s6
    6758: eebd 4ac4    	vcvt.s32.f32	s8, s8
    675c: ee13 0a10    	vmov	r0, s6
    6760: ee14 2a10    	vmov	r2, s8
    6764: bfa8         	it	ge
    6766: 4610         	movge	r0, r2
    6768: ee02 0a10    	vmov	s4, r0
    676c: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    6770: ee02 1a63    	vmls.f32	s2, s4, s7
    6774: ed9e 2ad6    	vldr	s4, [lr, #856]
    6778: ee32 3a25    	vadd.f32	s6, s4, s11
    677c: f50d 6e80    	add.w	lr, sp, #0x400
    6780: ee35 2ac2    	vsub.f32	s4, s11, s4
    6784: ee83 3a07    	vdiv.f32	s6, s6, s14
    6788: ee82 2a07    	vdiv.f32	s4, s4, s14
    678c: ee21 1a2e    	vmul.f32	s2, s2, s29
    6790: eef4 7a41    	vcmp.f32	s15, s2
    6794: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6798: fe37 1a81    	vselgt.f32	s2, s15, s2
    679c: eeb4 1a64    	vcmp.f32	s2, s9
    67a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67a4: eef4 0a43    	vcmp.f32	s1, s6
    67a8: fe34 1a81    	vselgt.f32	s2, s9, s2
    67ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67b0: fe30 3a83    	vselgt.f32	s6, s1, s6
    67b4: eeb4 3a61    	vcmp.f32	s6, s3
    67b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67bc: fe31 3a83    	vselgt.f32	s6, s3, s6
    67c0: ee23 4a22    	vmul.f32	s8, s6, s5
    67c4: ee34 5a29    	vadd.f32	s10, s8, s19
    67c8: eeb5 4a40    	vcmp.f32	s8, #0
    67cc: ee34 6a2e    	vadd.f32	s12, s8, s29
    67d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    67d4: eebd 5ac5    	vcvt.s32.f32	s10, s10
    67d8: eebd 6ac6    	vcvt.s32.f32	s12, s12
    67dc: ee15 2a10    	vmov	r2, s10
    67e0: ee16 3a10    	vmov	r3, s12
    67e4: bfa8         	it	ge
    67e6: 461a         	movge	r2, r3
    67e8: ee04 2a10    	vmov	s8, r2
    67ec: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    67f0: ee04 3a63    	vmls.f32	s6, s8, s7
    67f4: ee23 3a2e    	vmul.f32	s6, s6, s29
    67f8: eef4 7a43    	vcmp.f32	s15, s6
    67fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6800: fe37 3a83    	vselgt.f32	s6, s15, s6
    6804: eeb4 3a64    	vcmp.f32	s6, s9
    6808: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    680c: eef4 0a42    	vcmp.f32	s1, s4
    6810: fe34 3a83    	vselgt.f32	s6, s9, s6
    6814: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6818: fe30 2a82    	vselgt.f32	s4, s1, s4
    681c: eeb4 2a61    	vcmp.f32	s4, s3
    6820: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6824: fe31 2a82    	vselgt.f32	s4, s3, s4
    6828: ee22 4a22    	vmul.f32	s8, s4, s5
    682c: ee34 5a29    	vadd.f32	s10, s8, s19
    6830: eeb5 4a40    	vcmp.f32	s8, #0
    6834: ee34 6a2e    	vadd.f32	s12, s8, s29
    6838: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    683c: eebd 5ac5    	vcvt.s32.f32	s10, s10
    6840: eebd 6ac6    	vcvt.s32.f32	s12, s12
    6844: ee15 3a10    	vmov	r3, s10
    6848: ee16 6a10    	vmov	r6, s12
    684c: bfa8         	it	ge
    684e: 4633         	movge	r3, r6
    6850: f244 4608    	movw	r6, #0x4408
    6854: ee04 3a10    	vmov	s8, r3
    6858: f6c4 0600    	movt	r6, #0x4800
    685c: f846 5c08    	str	r5, [r6, #-8]
    6860: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    6864: ee04 2a63    	vmls.f32	s4, s8, s7
    6868: ed9f 4ae0    	vldr	s8, [pc, #896]          @ 0x6bec <Reset+0x67e4>
    686c: ee20 0a04    	vmul.f32	s0, s0, s8
    6870: ee21 1a04    	vmul.f32	s2, s2, s8
    6874: ee23 3a04    	vmul.f32	s6, s6, s8
    6878: eebd 0ac0    	vcvt.s32.f32	s0, s0
    687c: ed06 0a01    	vstr	s0, [r6, #-4]
    6880: eebd 0ac1    	vcvt.s32.f32	s0, s2
    6884: ee22 2a2e    	vmul.f32	s4, s4, s29
    6888: edd6 1a00    	vldr	s3, [r6]
    688c: edd6 2a00    	vldr	s5, [r6]
    6890: f846 5c08    	str	r5, [r6, #-8]
    6894: ed06 0a01    	vstr	s0, [r6, #-4]
    6898: eebd 0ac3    	vcvt.s32.f32	s0, s6
    689c: eef4 7a42    	vcmp.f32	s15, s4
    68a0: ed96 6a00    	vldr	s12, [r6]
    68a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68a8: edd6 0a00    	vldr	s1, [r6]
    68ac: f846 5c08    	str	r5, [r6, #-8]
    68b0: fe37 2a82    	vselgt.f32	s4, s15, s4
    68b4: ed06 0a01    	vstr	s0, [r6, #-4]
    68b8: ed96 3a00    	vldr	s6, [r6]
    68bc: ed96 7a00    	vldr	s14, [r6]
    68c0: f846 5c08    	str	r5, [r6, #-8]
    68c4: f04f 557e    	mov.w	r5, #0x3f800000
    68c8: eeb4 2a64    	vcmp.f32	s4, s9
    68cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68d0: fe34 1a82    	vselgt.f32	s2, s9, s4
    68d4: ee21 1a04    	vmul.f32	s2, s2, s8
    68d8: eebd 0ac1    	vcvt.s32.f32	s0, s2
    68dc: ed06 0a01    	vstr	s0, [r6, #-4]
    68e0: ed96 4a00    	vldr	s8, [r6]
    68e4: ed96 5a00    	vldr	s10, [r6]
    68e8: ed9e 0ad7    	vldr	s0, [lr, #860]
    68ec: f50d 6e80    	add.w	lr, sp, #0x400
    68f0: ed9e 1ae4    	vldr	s2, [lr, #912]
    68f4: eeb4 1a40    	vcmp.f32	s2, s0
    68f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    68fc: fe20 2a01    	vselge.f32	s4, s0, s2
    6900: ee7e 3ac2    	vsub.f32	s7, s29, s4
    6904: eeb8 2a00    	vmov.f32	s4, #-2.000000e+00
    6908: eef4 3a42    	vcmp.f32	s7, s4
    690c: ed9f 2ab8    	vldr	s4, [pc, #736]          @ 0x6bf0 <Reset+0x67e8>
    6910: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6914: d91a         	bls	0x694c <Reset+0x6544>   @ imm = #0x34
    6916: eef4 3a63    	vcmp.f32	s7, s7
    691a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    691e: fe1d 2aa3    	vselvs.f32	s4, s27, s7
    6922: eef0 3a6d    	vmov.f32	s7, s27
    6926: eeb5 2a40    	vcmp.f32	s4, #0
    692a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    692e: bfb8         	it	lt
    6930: eef0 3a42    	vmovlt.f32	s7, s4
    6934: eeb0 2a6f    	vmov.f32	s4, s31
    6938: ee03 2aae    	vmla.f32	s4, s7, s29
    693c: eddf 3aad    	vldr	s7, [pc, #692]          @ 0x6bf4 <Reset+0x67ec>
    6940: ee22 2a23    	vmul.f32	s4, s4, s7
    6944: eddf 3aaa    	vldr	s7, [pc, #680]          @ 0x6bf0 <Reset+0x67e8>
    6948: fe82 2a23    	vmaxnm.f32	s4, s4, s7
    694c: f50d 6e80    	add.w	lr, sp, #0x400
    6950: eeb0 8a6d    	vmov.f32	s16, s27
    6954: ed9e 9aea    	vldr	s18, [lr, #936]
    6958: eef0 3ac9    	vabs.f32	s7, s18
    695c: eef4 3a66    	vcmp.f32	s7, s13
    6960: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6964: da56         	bge	0x6a14 <Reset+0x660c>   @ imm = #0xac
    6966: eddf 4aa4    	vldr	s9, [pc, #656]          @ 0x6bf8 <Reset+0x67f0>
    696a: eef4 3a64    	vcmp.f32	s7, s9
    696e: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6972: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6976: d91d         	bls	0x69b4 <Reset+0x65ac>   @ imm = #0x3a
    6978: eddf 4aa0    	vldr	s9, [pc, #640]          @ 0x6bfc <Reset+0x67f4>
    697c: eef4 3a64    	vcmp.f32	s7, s9
    6980: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6984: d90c         	bls	0x69a0 <Reset+0x6598>   @ imm = #0x18
    6986: eddf 4a9e    	vldr	s9, [pc, #632]          @ 0x6c00 <Reset+0x67f8>
    698a: ee73 3aa4    	vadd.f32	s7, s7, s9
    698e: eef0 4a08    	vmov.f32	s9, #3.000000e+00
    6992: eddf 5a9c    	vldr	s11, [pc, #624]         @ 0x6c04 <Reset+0x67fc>
    6996: e00b         	b	0x69b0 <Reset+0x65a8>   @ imm = #0x16
    6998: f5 4a 39 3d  	.word	0x3d394af5
    699c: 00 00 a0 c2  	.word	0xc2a00000
    69a0: eddf 4a99    	vldr	s9, [pc, #612]          @ 0x6c08 <Reset+0x6800>
    69a4: ee73 3aa4    	vadd.f32	s7, s7, s9
    69a8: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    69ac: eddf 5a97    	vldr	s11, [pc, #604]         @ 0x6c0c <Reset+0x6804>
    69b0: ee43 4aa5    	vmla.f32	s9, s7, s11
    69b4: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    69b8: eeb0 8a6d    	vmov.f32	s16, s27
    69bc: ee73 3ae4    	vsub.f32	s7, s7, s9
    69c0: fec3 4aad    	vmaxnm.f32	s9, s7, s27
    69c4: eef5 4a40    	vcmp.f32	s9, #0
    69c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69cc: d922         	bls	0x6a14 <Reset+0x660c>   @ imm = #0x44
    69ce: edd9 3a03    	vldr	s7, [r9, #12]
    69d2: eec3 4aa4    	vdiv.f32	s9, s7, s9
    69d6: ee64 4aa4    	vmul.f32	s9, s9, s9
    69da: ee64 4aa4    	vmul.f32	s9, s9, s9
    69de: ee64 5aa4    	vmul.f32	s11, s9, s9
    69e2: eef0 4a6f    	vmov.f32	s9, s31
    69e6: ee45 4aa5    	vmla.f32	s9, s11, s11
    69ea: eef0 5a6f    	vmov.f32	s11, s31
    69ee: eef4 4a6f    	vcmp.f32	s9, s31
    69f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    69f6: d009         	beq	0x6a0c <Reset+0x6604>   @ imm = #0x12
    69f8: eef1 4ae4    	vsqrt.f32	s9, s9
    69fc: eef1 4ae4    	vsqrt.f32	s9, s9
    6a00: eef1 4ae4    	vsqrt.f32	s9, s9
    6a04: eef1 4ae4    	vsqrt.f32	s9, s9
    6a08: eef0 5a64    	vmov.f32	s11, s9
    6a0c: eecf 4aa5    	vdiv.f32	s9, s31, s11
    6a10: ee23 8aa4    	vmul.f32	s16, s7, s9
    6a14: ed99 ea00    	vldr	s28, [r9]
    6a18: eeb0 fa6d    	vmov.f32	s30, s27
    6a1c: eef0 3ace    	vabs.f32	s7, s28
    6a20: eef4 3a66    	vcmp.f32	s7, s13
    6a24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a28: da5c         	bge	0x6ae4 <Reset+0x66dc>   @ imm = #0xb8
    6a2a: eddf 4a73    	vldr	s9, [pc, #460]          @ 0x6bf8 <Reset+0x67f0>
    6a2e: eef4 3a64    	vcmp.f32	s7, s9
    6a32: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6a36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a3a: d923         	bls	0x6a84 <Reset+0x667c>   @ imm = #0x46
    6a3c: eddf 4a6f    	vldr	s9, [pc, #444]          @ 0x6bfc <Reset+0x67f4>
    6a40: eef4 3a64    	vcmp.f32	s7, s9
    6a44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a48: d912         	bls	0x6a70 <Reset+0x6668>   @ imm = #0x24
    6a4a: eddf 4a6d    	vldr	s9, [pc, #436]          @ 0x6c00 <Reset+0x67f8>
    6a4e: ee73 3aa4    	vadd.f32	s7, s7, s9
    6a52: eef0 4a08    	vmov.f32	s9, #3.000000e+00
    6a56: eddf 5a6b    	vldr	s11, [pc, #428]         @ 0x6c04 <Reset+0x67fc>
    6a5a: e011         	b	0x6a80 <Reset+0x6678>   @ imm = #0x22
    6a5c: 00 00 a0 42  	.word	0x42a00000
    6a60: 3b aa b8 3f  	.word	0x3fb8aa3b
    6a64: 18 72 31 3f  	.word	0x3f317218
    6a68: fe ff 7f 3f  	.word	0x3f7ffffe
    6a6c: 00 bf 00 bf  	.word	0xbf00bf00
    6a70: eddf 4a65    	vldr	s9, [pc, #404]          @ 0x6c08 <Reset+0x6800>
    6a74: ee73 3aa4    	vadd.f32	s7, s7, s9
    6a78: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6a7c: eddf 5a63    	vldr	s11, [pc, #396]         @ 0x6c0c <Reset+0x6804>
    6a80: ee43 4aa5    	vmla.f32	s9, s7, s11
    6a84: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    6a88: eeb0 fa6d    	vmov.f32	s30, s27
    6a8c: ee73 3ae4    	vsub.f32	s7, s7, s9
    6a90: fec3 4aad    	vmaxnm.f32	s9, s7, s27
    6a94: eef5 4a40    	vcmp.f32	s9, #0
    6a98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6a9c: d922         	bls	0x6ae4 <Reset+0x66dc>   @ imm = #0x44
    6a9e: edd9 3a04    	vldr	s7, [r9, #16]
    6aa2: eec3 4aa4    	vdiv.f32	s9, s7, s9
    6aa6: ee64 4aa4    	vmul.f32	s9, s9, s9
    6aaa: ee64 4aa4    	vmul.f32	s9, s9, s9
    6aae: ee64 5aa4    	vmul.f32	s11, s9, s9
    6ab2: eef0 4a6f    	vmov.f32	s9, s31
    6ab6: ee45 4aa5    	vmla.f32	s9, s11, s11
    6aba: eef0 5a6f    	vmov.f32	s11, s31
    6abe: eef4 4a6f    	vcmp.f32	s9, s31
    6ac2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ac6: d009         	beq	0x6adc <Reset+0x66d4>   @ imm = #0x12
    6ac8: eef1 4ae4    	vsqrt.f32	s9, s9
    6acc: eef1 4ae4    	vsqrt.f32	s9, s9
    6ad0: eef1 4ae4    	vsqrt.f32	s9, s9
    6ad4: eef1 4ae4    	vsqrt.f32	s9, s9
    6ad8: eef0 5a64    	vmov.f32	s11, s9
    6adc: eecf 4aa5    	vdiv.f32	s9, s31, s11
    6ae0: ee23 faa4    	vmul.f32	s30, s7, s9
    6ae4: edd9 ba01    	vldr	s23, [r9, #4]
    6ae8: eef0 aa6d    	vmov.f32	s21, s27
    6aec: eef0 3aeb    	vabs.f32	s7, s23
    6af0: eef4 3a66    	vcmp.f32	s7, s13
    6af4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6af8: da54         	bge	0x6ba4 <Reset+0x679c>   @ imm = #0xa8
    6afa: eddf 4a3f    	vldr	s9, [pc, #252]          @ 0x6bf8 <Reset+0x67f0>
    6afe: eef4 3a64    	vcmp.f32	s7, s9
    6b02: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6b06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b0a: d91b         	bls	0x6b44 <Reset+0x673c>   @ imm = #0x36
    6b0c: eddf 4a3b    	vldr	s9, [pc, #236]          @ 0x6bfc <Reset+0x67f4>
    6b10: eef4 3a64    	vcmp.f32	s7, s9
    6b14: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b18: d90a         	bls	0x6b30 <Reset+0x6728>   @ imm = #0x14
    6b1a: eddf 4a39    	vldr	s9, [pc, #228]          @ 0x6c00 <Reset+0x67f8>
    6b1e: ee73 3aa4    	vadd.f32	s7, s7, s9
    6b22: eef0 4a08    	vmov.f32	s9, #3.000000e+00
    6b26: eddf 5a37    	vldr	s11, [pc, #220]         @ 0x6c04 <Reset+0x67fc>
    6b2a: e009         	b	0x6b40 <Reset+0x6738>   @ imm = #0x12
    6b2c: bf00         	nop
    6b2e: bf00         	nop
    6b30: eddf 4a35    	vldr	s9, [pc, #212]          @ 0x6c08 <Reset+0x6800>
    6b34: ee73 3aa4    	vadd.f32	s7, s7, s9
    6b38: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6b3c: eddf 5a33    	vldr	s11, [pc, #204]         @ 0x6c0c <Reset+0x6804>
    6b40: ee43 4aa5    	vmla.f32	s9, s7, s11
    6b44: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    6b48: eef0 aa6d    	vmov.f32	s21, s27
    6b4c: ee73 3ae4    	vsub.f32	s7, s7, s9
    6b50: fec3 4aad    	vmaxnm.f32	s9, s7, s27
    6b54: eef5 4a40    	vcmp.f32	s9, #0
    6b58: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b5c: d922         	bls	0x6ba4 <Reset+0x679c>   @ imm = #0x44
    6b5e: edd9 3a05    	vldr	s7, [r9, #20]
    6b62: eec3 4aa4    	vdiv.f32	s9, s7, s9
    6b66: ee64 4aa4    	vmul.f32	s9, s9, s9
    6b6a: ee64 4aa4    	vmul.f32	s9, s9, s9
    6b6e: ee64 5aa4    	vmul.f32	s11, s9, s9
    6b72: eef0 4a6f    	vmov.f32	s9, s31
    6b76: ee45 4aa5    	vmla.f32	s9, s11, s11
    6b7a: eef0 5a6f    	vmov.f32	s11, s31
    6b7e: eef4 4a6f    	vcmp.f32	s9, s31
    6b82: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6b86: d009         	beq	0x6b9c <Reset+0x6794>   @ imm = #0x12
    6b88: eef1 4ae4    	vsqrt.f32	s9, s9
    6b8c: eef1 4ae4    	vsqrt.f32	s9, s9
    6b90: eef1 4ae4    	vsqrt.f32	s9, s9
    6b94: eef1 4ae4    	vsqrt.f32	s9, s9
    6b98: eef0 5a64    	vmov.f32	s11, s9
    6b9c: eecf 4aa5    	vdiv.f32	s9, s31, s11
    6ba0: ee63 aaa4    	vmul.f32	s21, s7, s9
    6ba4: edd9 3a02    	vldr	s7, [r9, #8]
    6ba8: eef0 8a6d    	vmov.f32	s17, s27
    6bac: eef0 3ae3    	vabs.f32	s7, s7
    6bb0: eef4 3a66    	vcmp.f32	s7, s13
    6bb4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bb8: da70         	bge	0x6c9c <Reset+0x6894>   @ imm = #0xe0
    6bba: eddf 4a0f    	vldr	s9, [pc, #60]           @ 0x6bf8 <Reset+0x67f0>
    6bbe: eef4 3a64    	vcmp.f32	s7, s9
    6bc2: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6bc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bca: d937         	bls	0x6c3c <Reset+0x6834>   @ imm = #0x6e
    6bcc: eddf 4a0b    	vldr	s9, [pc, #44]           @ 0x6bfc <Reset+0x67f4>
    6bd0: eef4 3a64    	vcmp.f32	s7, s9
    6bd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6bd8: d926         	bls	0x6c28 <Reset+0x6820>   @ imm = #0x4c
    6bda: eddf 4a09    	vldr	s9, [pc, #36]           @ 0x6c00 <Reset+0x67f8>
    6bde: ee73 3aa4    	vadd.f32	s7, s7, s9
    6be2: eef0 4a08    	vmov.f32	s9, #3.000000e+00
    6be6: eddf 5a07    	vldr	s11, [pc, #28]          @ 0x6c04 <Reset+0x67fc>
    6bea: e025         	b	0x6c38 <Reset+0x6830>   @ imm = #0x4a
    6bec: 00 00 00 4f  	.word	0x4f000000
    6bf0: 95 bf d6 33  	.word	0x33d6bf95
    6bf4: 2b 18 95 3b  	.word	0x3b95182b
    6bf8: 7c f2 b0 3a  	.word	0x3ab0f27c
    6bfc: a6 9b c4 3b  	.word	0x3bc49ba6
    6c00: a6 9b c4 bb  	.word	0xbbc49ba6
    6c04: 79 78 b0 43  	.word	0x43b07879
    6c08: 7c f2 b0 ba  	.word	0xbab0f27c
    6c0c: 53 4a a1 43  	.word	0x43a14a53
    6c10: 00 00 00 30  	.word	0x30000000
    6c14: 00 00 70 42  	.word	0x42700000
    6c18: 77 cc ab 31  	.word	0x31abcc77
    6c1c: 77 cc 2b 31  	.word	0x312bcc77
    6c20: 62 bf bf 4b  	.word	0x4bbfbf62
    6c24: d2 53 fb 42  	.word	0x42fb53d2
    6c28: ed5f 4a09    	vldr	s9, [pc, #-36]          @ 0x6c08 <Reset+0x6800>
    6c2c: ee73 3aa4    	vadd.f32	s7, s7, s9
    6c30: eef7 4a08    	vmov.f32	s9, #1.500000e+00
    6c34: ed5f 5a0b    	vldr	s11, [pc, #-44]         @ 0x6c0c <Reset+0x6804>
    6c38: ee43 4aa5    	vmla.f32	s9, s7, s11
    6c3c: eef2 3a0e    	vmov.f32	s7, #1.500000e+01
    6c40: eef0 8a6d    	vmov.f32	s17, s27
    6c44: ee73 3ae4    	vsub.f32	s7, s7, s9
    6c48: fec3 4aad    	vmaxnm.f32	s9, s7, s27
    6c4c: eef5 4a40    	vcmp.f32	s9, #0
    6c50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c54: d922         	bls	0x6c9c <Reset+0x6894>   @ imm = #0x44
    6c56: edd9 3a06    	vldr	s7, [r9, #24]
    6c5a: eec3 4aa4    	vdiv.f32	s9, s7, s9
    6c5e: ee64 4aa4    	vmul.f32	s9, s9, s9
    6c62: ee64 4aa4    	vmul.f32	s9, s9, s9
    6c66: ee64 5aa4    	vmul.f32	s11, s9, s9
    6c6a: eef0 4a6f    	vmov.f32	s9, s31
    6c6e: ee45 4aa5    	vmla.f32	s9, s11, s11
    6c72: eef0 5a6f    	vmov.f32	s11, s31
    6c76: eef4 4a6f    	vcmp.f32	s9, s31
    6c7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6c7e: d009         	beq	0x6c94 <Reset+0x688c>   @ imm = #0x12
    6c80: eef1 4ae4    	vsqrt.f32	s9, s9
    6c84: eef1 4ae4    	vsqrt.f32	s9, s9
    6c88: eef1 4ae4    	vsqrt.f32	s9, s9
    6c8c: eef1 4ae4    	vsqrt.f32	s9, s9
    6c90: eef0 5a64    	vmov.f32	s11, s9
    6c94: eecf 4aa5    	vdiv.f32	s9, s31, s11
    6c98: ee63 8aa4    	vmul.f32	s17, s7, s9
    6c9c: eef3 3a05    	vmov.f32	s7, #2.100000e+01
    6ca0: edd9 4a08    	vldr	s9, [r9, #32]
    6ca4: eef0 6a6f    	vmov.f32	s13, s31
    6ca8: eef0 5a6f    	vmov.f32	s11, s31
    6cac: eec4 3aa3    	vdiv.f32	s7, s9, s7
    6cb0: ee63 3aa3    	vmul.f32	s7, s7, s7
    6cb4: ee63 3aa3    	vmul.f32	s7, s7, s7
    6cb8: ee63 3aa3    	vmul.f32	s7, s7, s7
    6cbc: ee43 6aa3    	vmla.f32	s13, s7, s7
    6cc0: edd9 3a07    	vldr	s7, [r9, #28]
    6cc4: eef4 6a6f    	vcmp.f32	s13, s31
    6cc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ccc: d009         	beq	0x6ce2 <Reset+0x68da>   @ imm = #0x12
    6cce: eef1 6ae6    	vsqrt.f32	s13, s13
    6cd2: eef1 6ae6    	vsqrt.f32	s13, s13
    6cd6: eef1 6ae6    	vsqrt.f32	s13, s13
    6cda: eef1 6ae6    	vsqrt.f32	s13, s13
    6cde: eef0 5a66    	vmov.f32	s11, s13
    6ce2: eef8 2ae2    	vcvt.f32.s32	s5, s5
    6ce6: ed5f 6a36    	vldr	s13, [pc, #-216]        @ 0x6c10 <Reset+0x6808>
    6cea: eef8 1ae1    	vcvt.f32.s32	s3, s3
    6cee: eb05 56c4    	add.w	r6, r5, r4, lsl #23
    6cf2: eecf 5aa5    	vdiv.f32	s11, s31, s11
    6cf6: eb05 50c0    	add.w	r0, r5, r0, lsl #23
    6cfa: ee62 2aa6    	vmul.f32	s5, s5, s13
    6cfe: eb05 52c2    	add.w	r2, r5, r2, lsl #23
    6d02: ee41 2aa6    	vmla.f32	s5, s3, s13
    6d06: eef8 0ae0    	vcvt.f32.s32	s1, s1
    6d0a: eeb8 6ac6    	vcvt.f32.s32	s12, s12
    6d0e: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    6d12: ee60 0aa6    	vmul.f32	s1, s1, s13
    6d16: ee46 0a26    	vmla.f32	s1, s12, s13
    6d1a: eeb3 6a08    	vmov.f32	s12, #2.400000e+01
    6d1e: ee72 1aa2    	vadd.f32	s3, s5, s5
    6d22: ee02 6a90    	vmov	s5, r6
    6d26: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    6d2a: ee27 7a26    	vmul.f32	s14, s14, s13
    6d2e: ee61 2aa2    	vmul.f32	s5, s3, s5
    6d32: ee64 1aa5    	vmul.f32	s3, s9, s11
    6d36: ee03 7a26    	vmla.f32	s14, s6, s13
    6d3a: ed1f 3a4a    	vldr	s6, [pc, #-296]         @ 0x6c14 <Reset+0x680c>
    6d3e: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    6d42: eef0 4ae1    	vabs.f32	s9, s3
    6d46: eeb8 5ac5    	vcvt.f32.s32	s10, s10
    6d4a: ee30 0a41    	vsub.f32	s0, s0, s2
    6d4e: ee36 6a64    	vsub.f32	s12, s12, s9
    6d52: eef2 4a00    	vmov.f32	s9, #8.000000e+00
    6d56: ee25 5a26    	vmul.f32	s10, s10, s13
    6d5a: ee04 5a26    	vmla.f32	s10, s8, s13
    6d5e: fe86 6a24    	vmaxnm.f32	s12, s12, s9
    6d62: ee30 4aa0    	vadd.f32	s8, s1, s1
    6d66: ee00 2a90    	vmov	s1, r2
    6d6a: ee37 7a07    	vadd.f32	s14, s14, s14
    6d6e: ee83 3a06    	vdiv.f32	s6, s6, s12
    6d72: eeb1 6a04    	vmov.f32	s12, #5.000000e+00
    6d76: ee60 ca02    	vmul.f32	s25, s0, s4
    6d7a: eeb0 0a6f    	vmov.f32	s0, s31
    6d7e: ee35 5a05    	vadd.f32	s10, s10, s10
    6d82: fe83 3a46    	vminnm.f32	s6, s6, s12
    6d86: eeb0 6ae3    	vabs.f32	s12, s7
    6d8a: ee86 3a03    	vdiv.f32	s6, s12, s6
    6d8e: ee06 0a10    	vmov	s12, r0
    6d92: eb05 50c3    	add.w	r0, r5, r3, lsl #23
    6d96: ee23 3a03    	vmul.f32	s6, s6, s6
    6d9a: ee44 2a46    	vmls.f32	s5, s8, s12
    6d9e: ee06 0a10    	vmov	s12, r0
    6da2: ee27 4a20    	vmul.f32	s8, s14, s1
    6da6: ee23 3a03    	vmul.f32	s6, s6, s6
    6daa: ee34 2a27    	vadd.f32	s4, s8, s15
    6dae: ed1f 4a66    	vldr	s8, [pc, #-408]         @ 0x6c18 <Reset+0x6810>
    6db2: ee23 1a03    	vmul.f32	s2, s6, s6
    6db6: ee25 3a06    	vmul.f32	s6, s10, s12
    6dba: ee01 0a01    	vmla.f32	s0, s2, s2
    6dbe: ee22 1aae    	vmul.f32	s2, s5, s29
    6dc2: ee33 3a27    	vadd.f32	s6, s6, s15
    6dc6: ee21 aa04    	vmul.f32	s20, s2, s8
    6dca: ed1f 1a6c    	vldr	s2, [pc, #-432]         @ 0x6c1c <Reset+0x6814>
    6dce: ee62 ea01    	vmul.f32	s29, s4, s2
    6dd2: eeb0 2a6f    	vmov.f32	s4, s31
    6dd6: ee63 fa01    	vmul.f32	s31, s6, s2
    6dda: eeb0 1a42    	vmov.f32	s2, s4
    6dde: eeb4 0a42    	vcmp.f32	s0, s4
    6de2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6de6: d009         	beq	0x6dfc <Reset+0x69f4>   @ imm = #0x12
    6de8: eeb1 0ac0    	vsqrt.f32	s0, s0
    6dec: eeb1 0ac0    	vsqrt.f32	s0, s0
    6df0: eeb1 0ac0    	vsqrt.f32	s0, s0
    6df4: eeb1 0ac0    	vsqrt.f32	s0, s0
    6df8: eeb0 1a40    	vmov.f32	s2, s0
    6dfc: ee82 0a01    	vdiv.f32	s0, s4, s2
    6e00: f1a7 05f0    	sub.w	r5, r7, #0xf0
    6e04: 4628         	mov	r0, r5
    6e06: f50d 62c2    	add.w	r2, sp, #0x610
    6e0a: ee21 ba80    	vmul.f32	s22, s3, s0
    6e0e: f004 f83f    	bl	0xae90 <orange_dsp::generated_model::assemble_linear_kcl> @ imm = #0x407e
    6e12: f50d 6e80    	add.w	lr, sp, #0x400
    6e16: ed5f 3a7e    	vldr	s7, [pc, #-504]         @ 0x6c20 <Reset+0x6818>
    6e1a: ed5f 4a7e    	vldr	s9, [pc, #-504]         @ 0x6c24 <Reset+0x681c>
    6e1e: ed17 3a23    	vldr	s6, [r7, #-140]
    6e22: ed9e 0abf    	vldr	s0, [lr, #764]
    6e26: f50d 6e80    	add.w	lr, sp, #0x400
    6e2a: eddf 5afc    	vldr	s11, [pc, #1008]        @ 0x721c <Reset+0x6e14>
    6e2e: ed99 6a04    	vldr	s12, [r9, #16]
    6e32: ed9e 1ac1    	vldr	s2, [lr, #772]
    6e36: f50d 6e80    	add.w	lr, sp, #0x400
    6e3a: ee31 0a40    	vsub.f32	s0, s2, s0
    6e3e: ed99 1a03    	vldr	s2, [r9, #12]
    6e42: ed9e 2ae7    	vldr	s4, [lr, #924]
    6e46: f50d 6e80    	add.w	lr, sp, #0x400
    6e4a: ee32 2a03    	vadd.f32	s4, s4, s6
    6e4e: eddf 6af4    	vldr	s13, [pc, #976]         @ 0x7220 <Reset+0x6e18>
    6e52: ee20 0a23    	vmul.f32	s0, s0, s7
    6e56: ed9e 3ac8    	vldr	s6, [lr, #800]
    6e5a: ee01 0a64    	vmls.f32	s0, s2, s9
    6e5e: f50d 6e80    	add.w	lr, sp, #0x400
    6e62: ed17 5a36    	vldr	s10, [r7, #-216]
    6e66: eddf 7aef    	vldr	s15, [pc, #956]         @ 0x7224 <Reset+0x6e1c>
    6e6a: ed9e 4aca    	vldr	s8, [lr, #808]
    6e6e: f50d 6e80    	add.w	lr, sp, #0x400
    6e72: ee34 3a43    	vsub.f32	s6, s8, s6
    6e76: ed07 2a23    	vstr	s4, [r7, #-140]
    6e7a: ed9e 4ae8    	vldr	s8, [lr, #928]
    6e7e: f50d 6e80    	add.w	lr, sp, #0x400
    6e82: ee34 4a05    	vadd.f32	s8, s8, s10
    6e86: ed17 5a35    	vldr	s10, [r7, #-212]
    6e8a: eef4 5a40    	vcmp.f32	s11, s0
    6e8e: ed9e 7ae9    	vldr	s14, [lr, #932]
    6e92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6e96: ee23 3a23    	vmul.f32	s6, s6, s7
    6e9a: f50d 6e80    	add.w	lr, sp, #0x400
    6e9e: fe35 0a80    	vselgt.f32	s0, s11, s0
    6ea2: ed07 4a36    	vstr	s8, [r7, #-216]
    6ea6: ee06 3a64    	vmls.f32	s6, s12, s9
    6eaa: edde 1a0a    	vldr	s3, [lr, #40]
    6eae: f50d 6e80    	add.w	lr, sp, #0x400
    6eb2: ee51 1a27    	vnmls.f32	s3, s2, s15
    6eb6: eeb4 0a66    	vcmp.f32	s0, s13
    6eba: ed17 1a22    	vldr	s2, [r7, #-136]
    6ebe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ec2: ee37 7a05    	vadd.f32	s14, s14, s10
    6ec6: f8dd 0708    	ldr.w	r0, [sp, #0x708]
    6eca: fe76 0a80    	vselgt.f32	s1, s13, s0
    6ece: ed07 7a35    	vstr	s14, [r7, #-212]
    6ed2: ee3e 0aef    	vsub.f32	s0, s29, s31
    6ed6: ed17 7a29    	vldr	s14, [r7, #-164]
    6eda: eef4 5a43    	vcmp.f32	s11, s6
    6ede: f847 0c40    	str	r0, [r7, #-64]
    6ee2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6ee6: ee31 5a00    	vadd.f32	s10, s2, s0
    6eea: ed9e 1acc    	vldr	s2, [lr, #816]
    6eee: f50d 6e80    	add.w	lr, sp, #0x400
    6ef2: ee3a 7a07    	vadd.f32	s14, s20, s14
    6ef6: fe75 2a83    	vselgt.f32	s5, s11, s6
    6efa: ed07 7a29    	vstr	s14, [r7, #-164]
    6efe: ed9e 3ace    	vldr	s6, [lr, #824]
    6f02: f50d 6e80    	add.w	lr, sp, #0x400
    6f06: ee33 3a41    	vsub.f32	s6, s6, s2
    6f0a: ed07 5a22    	vstr	s10, [r7, #-136]
    6f0e: ee31 1ae0    	vsub.f32	s2, s3, s1
    6f12: edd9 1a05    	vldr	s3, [r9, #20]
    6f16: ed9e 2a09    	vldr	s4, [lr, #36]
    6f1a: f50d 6e80    	add.w	lr, sp, #0x400
    6f1e: ee63 0a23    	vmul.f32	s1, s6, s7
    6f22: ed17 0a38    	vldr	s0, [r7, #-224]
    6f26: ee41 0ae4    	vmls.f32	s1, s3, s9
    6f2a: ed9e 3ad5    	vldr	s6, [lr, #852]
    6f2e: f50d 6e80    	add.w	lr, sp, #0x400
    6f32: ee16 2a27    	vnmls.f32	s4, s12, s15
    6f36: eef4 2a66    	vcmp.f32	s5, s13
    6f3a: ed07 1a0a    	vstr	s2, [r7, #-40]
    6f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f42: ed9e 6a06    	vldr	s12, [lr, #24]
    6f46: f50d 6e80    	add.w	lr, sp, #0x400
    6f4a: ee33 3a46    	vsub.f32	s6, s6, s12
    6f4e: ed17 6a2f    	vldr	s12, [r7, #-188]
    6f52: ed07 3a11    	vstr	s6, [r7, #-68]
    6f56: ee3e 3a06    	vadd.f32	s6, s28, s12
    6f5a: fe36 6aa2    	vselgt.f32	s12, s13, s5
    6f5e: ed57 2a14    	vldr	s5, [r7, #-80]
    6f62: eef4 5a60    	vcmp.f32	s11, s1
    6f66: ed99 ea08    	vldr	s28, [r9, #32]
    6f6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6f6e: ee32 4a46    	vsub.f32	s8, s4, s12
    6f72: ed07 3a2f    	vstr	s6, [r7, #-188]
    6f76: fe35 6aa0    	vselgt.f32	s12, s11, s1
    6f7a: ed57 0a28    	vldr	s1, [r7, #-160]
    6f7e: ee30 7aca    	vsub.f32	s14, s1, s20
    6f82: edde 0ad1    	vldr	s1, [lr, #836]
    6f86: ed07 7a28    	vstr	s14, [r7, #-160]
    6f8a: eeb0 7a4c    	vmov.f32	s14, s24
    6f8e: ee11 7aa7    	vnmls.f32	s14, s3, s15
    6f92: ed57 1a21    	vldr	s3, [r7, #-132]
    6f96: eeb4 6a66    	vcmp.f32	s12, s13
    6f9a: f50d 6e80    	add.w	lr, sp, #0x400
    6f9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6fa2: ee7d 0ae0    	vsub.f32	s1, s27, s1
    6fa6: ed9f 3ae0    	vldr	s6, [pc, #896]          @ 0x7328 <Reset+0x6f20>
    6faa: fe36 6a86    	vselgt.f32	s12, s13, s12
    6fae: ed17 2a2b    	vldr	s4, [r7, #-172]
    6fb2: ee3c 5aa1    	vadd.f32	s10, s25, s3
    6fb6: edd9 1a06    	vldr	s3, [r9, #24]
    6fba: ed07 5a21    	vstr	s10, [r7, #-132]
    6fbe: ee32 5aec    	vsub.f32	s10, s5, s25
    6fc2: ed07 5a14    	vstr	s10, [r7, #-80]
    6fc6: ee37 5a46    	vsub.f32	s10, s14, s12
    6fca: ed9e 7ab9    	vldr	s14, [lr, #740]
    6fce: f50d 6e80    	add.w	lr, sp, #0x400
    6fd2: ee60 0aa3    	vmul.f32	s1, s1, s7
    6fd6: ed07 4a09    	vstr	s8, [r7, #-36]
    6fda: ee41 0ae4    	vmls.f32	s1, s3, s9
    6fde: ed9f 4ad3    	vldr	s8, [pc, #844]          @ 0x732c <Reset+0x6f24>
    6fe2: ee21 6aa7    	vmul.f32	s12, s3, s15
    6fe6: eddf 1ad2    	vldr	s3, [pc, #840]          @ 0x7330 <Reset+0x6f28>
    6fea: ee39 0a00    	vadd.f32	s0, s18, s0
    6fee: f8dd 070c    	ldr.w	r0, [sp, #0x70c]
    6ff2: ee07 6a61    	vmls.f32	s12, s14, s3
    6ff6: ed9e 7ac0    	vldr	s14, [lr, #768]
    6ffa: f50d 6e80    	add.w	lr, sp, #0x400
    6ffe: ed07 0a38    	vstr	s0, [r7, #-224]
    7002: ee37 0a48    	vsub.f32	s0, s14, s16
    7006: f847 0c3c    	str	r0, [r7, #-60]
    700a: ed07 0a0e    	vstr	s0, [r7, #-56]
    700e: ed9e 0ada    	vldr	s0, [lr, #872]
    7012: f50d 6e80    	add.w	lr, sp, #0x400
    7016: eef4 5a60    	vcmp.f32	s11, s1
    701a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    701e: ed9e 7adc    	vldr	s14, [lr, #880]
    7022: f50d 6e80    	add.w	lr, sp, #0x400
    7026: ee37 0a40    	vsub.f32	s0, s14, s0
    702a: f04f 02e0    	mov.w	r2, #0xe0
    702e: ed9e 7ac9    	vldr	s14, [lr, #804]
    7032: ee2e 3a03    	vmul.f32	s6, s28, s6
    7036: ee37 1a4f    	vsub.f32	s2, s14, s30
    703a: f50d 6e80    	add.w	lr, sp, #0x400
    703e: ed07 1a0d    	vstr	s2, [r7, #-52]
    7042: ed9f 1abc    	vldr	s2, [pc, #752]          @ 0x7334 <Reset+0x6f2c>
    7046: fe35 7aa0    	vselgt.f32	s14, s11, s1
    704a: 4640         	mov	r0, r8
    704c: ee00 3a01    	vmla.f32	s6, s0, s2
    7050: ed99 0a02    	vldr	s0, [r9, #8]
    7054: ee3b 2a82    	vadd.f32	s4, s23, s4
    7058: ed17 1a26    	vldr	s2, [r7, #-152]
    705c: eeb4 7a66    	vcmp.f32	s14, s13
    7060: ed07 2a2b    	vstr	s4, [r7, #-172]
    7064: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7068: ee30 0a01    	vadd.f32	s0, s0, s2
    706c: ed9e 1acd    	vldr	s2, [lr, #820]
    7070: fe36 2a87    	vselgt.f32	s4, s13, s14
    7074: f50d 6e80    	add.w	lr, sp, #0x400
    7078: eeb4 4a43    	vcmp.f32	s8, s6
    707c: ed07 0a26    	vstr	s0, [r7, #-152]
    7080: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7084: ee31 1a6a    	vsub.f32	s2, s2, s21
    7088: 4629         	mov	r1, r5
    708a: ed07 1a0c    	vstr	s2, [r7, #-48]
    708e: ee36 1a42    	vsub.f32	s2, s12, s4
    7092: fe34 2a03    	vselgt.f32	s4, s8, s6
    7096: ed9e 4abb    	vldr	s8, [lr, #748]
    709a: f50d 6e80    	add.w	lr, sp, #0x400
    709e: ee2e 3a27    	vmul.f32	s6, s28, s15
    70a2: ee04 3a61    	vmls.f32	s6, s8, s3
    70a6: ed07 1a07    	vstr	s2, [r7, #-28]
    70aa: ed9e 4ad2    	vldr	s8, [lr, #840]
    70ae: f50d 6e80    	add.w	lr, sp, #0x400
    70b2: ee34 0a68    	vsub.f32	s0, s8, s17
    70b6: ed99 1a07    	vldr	s2, [r9, #28]
    70ba: ed07 0a0b    	vstr	s0, [r7, #-44]
    70be: ed9f 0a9e    	vldr	s0, [pc, #632]          @ 0x7338 <Reset+0x6f30>
    70c2: eeb4 2a40    	vcmp.f32	s4, s0
    70c6: ed07 5a08    	vstr	s10, [r7, #-32]
    70ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    70ce: fe30 0a02    	vselgt.f32	s0, s0, s4
    70d2: ed17 2a1d    	vldr	s4, [r7, #-116]
    70d6: ee31 1a02    	vadd.f32	s2, s2, s4
    70da: ed9e 2adb    	vldr	s4, [lr, #876]
    70de: ed07 1a1d    	vstr	s2, [r7, #-116]
    70e2: ee32 1a4b    	vsub.f32	s2, s4, s22
    70e6: ee33 0a40    	vsub.f32	s0, s6, s0
    70ea: ed07 1a06    	vstr	s2, [r7, #-24]
    70ee: ed07 0a05    	vstr	s0, [r7, #-20]
    70f2: f006 fb59    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x66b2
    70f6: 4640         	mov	r0, r8
    70f8: f004 fb1a    	bl	0xb730 <orange_dsp::physical_residual_norm> @ imm = #0x4634
    70fc: 22e0         	movs	r2, #0xe0
    70fe: f60d 20d4    	addw	r0, sp, #0xad4
    7102: 4641         	mov	r1, r8
    7104: eeb0 9a40    	vmov.f32	s18, s0
    7108: ee10 5a10    	vmov	r5, s0
    710c: f006 fb4c    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x6698
    7110: f025 4000    	bic	r0, r5, #0x80000000
    7114: f50d 6e80    	add.w	lr, sp, #0x400
    7118: f1b0 4fff    	cmp.w	r0, #0x7f800000
    711c: f04f 0000    	mov.w	r0, #0x0
    7120: bfb8         	it	lt
    7122: 2001         	movlt	r0, #0x1
    7124: ed9e 0a05    	vldr	s0, [lr, #20]
    7128: eeb4 9a40    	vcmp.f32	s18, s0
    712c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7130: f57f a9f6    	bpl.w	0x6520 <Reset+0x6118>   @ imm = #-0xc14
    7134: 2800         	cmp	r0, #0x0
    7136: f43f a9f3    	beq.w	0x6520 <Reset+0x6118>   @ imm = #-0xc1a
    713a: 2001         	movs	r0, #0x1
    713c: f8cd 07d0    	str.w	r0, [sp, #0x7d0]
    7140: 2000         	movs	r0, #0x0
    7142: f8cd 07d8    	str.w	r0, [sp, #0x7d8]
    7146: f8cd 07dc    	str.w	r0, [sp, #0x7dc]
    714a: 22e0         	movs	r2, #0xe0
    714c: f8cd 07e4    	str.w	r0, [sp, #0x7e4]
    7150: f60d 21d4    	addw	r1, sp, #0xad4
    7154: f8cd 07e8    	str.w	r0, [sp, #0x7e8]
    7158: f8cd 07f0    	str.w	r0, [sp, #0x7f0]
    715c: f8cd 07f4    	str.w	r0, [sp, #0x7f4]
    7160: f8cd 07fc    	str.w	r0, [sp, #0x7fc]
    7164: f8cd 0800    	str.w	r0, [sp, #0x800]
    7168: f8cd 0808    	str.w	r0, [sp, #0x808]
    716c: f8cd 0814    	str.w	r0, [sp, #0x814]
    7170: f8cd 0818    	str.w	r0, [sp, #0x818]
    7174: f8cd 0820    	str.w	r0, [sp, #0x820]
    7178: f8cd 0824    	str.w	r0, [sp, #0x824]
    717c: f8cd 082c    	str.w	r0, [sp, #0x82c]
    7180: f8cd 0830    	str.w	r0, [sp, #0x830]
    7184: 98c4         	ldr	r0, [sp, #0x310]
    7186: ed89 8a0a    	vstr	s16, [r9, #40]
    718a: ed89 fa0d    	vstr	s30, [r9, #52]
    718e: edc9 aa10    	vstr	s21, [r9, #64]
    7192: edc9 8a13    	vstr	s17, [r9, #76]
    7196: ed89 aa16    	vstr	s20, [r9, #88]
    719a: edc9 ea18    	vstr	s29, [r9, #96]
    719e: edc9 fa19    	vstr	s31, [r9, #100]
    71a2: edc9 ca1c    	vstr	s25, [r9, #112]
    71a6: ed89 ba1f    	vstr	s22, [r9, #124]
    71aa: f006 fafd    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x65fa
    71ae: ed9f 0ad5    	vldr	s0, [pc, #852]          @ 0x7504 <Reset+0x70fc>
    71b2: eeb4 9a40    	vcmp.f32	s18, s0
    71b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    71ba: f240 8195    	bls.w	0x74e8 <Reset+0x70e0>   @ imm = #0x32a
    71be: eeb0 ba6d    	vmov.f32	s22, s27
    71c2: eeb0 ca6d    	vmov.f32	s24, s27
    71c6: eeb0 da6d    	vmov.f32	s26, s27
    71ca: eeb0 fa6d    	vmov.f32	s30, s27
    71ce: eef0 8a6d    	vmov.f32	s17, s27
    71d2: eef0 ba6d    	vmov.f32	s23, s27
    71d6: eeb0 8a6d    	vmov.f32	s16, s27
    71da: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    71de: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    71e2: 9828         	ldr	r0, [sp, #0xa0]
    71e4: f50d 6e80    	add.w	lr, sp, #0x400
    71e8: f24e 0b98    	movw	r11, #0xe098
    71ec: 46c4         	mov	r12, r8
    71ee: 2202         	movs	r2, #0x2
    71f0: 2501         	movs	r5, #0x1
    71f2: 07c1         	lsls	r1, r0, #0x1f
    71f4: f04f 0800    	mov.w	r8, #0x0
    71f8: f04f 0401    	mov.w	r4, #0x1
    71fc: f50d 6189    	add.w	r1, sp, #0x448
    7200: f60d 1014    	addw	r0, sp, #0x914
    7204: f50d 66de    	add.w	r6, sp, #0x6f0
    7208: f2c0 0b00    	movt	r11, #0x0
    720c: f8dd 340c    	ldr.w	r3, [sp, #0x40c]
    7210: ed8e 9a05    	vstr	s18, [lr, #20]
    7214: f43b ab1e    	beq.w	0x2854 <Reset+0x244c>   @ imm = #-0x49c4
    7218: e07b         	b	0x7312 <Reset+0x6f0a>   @ imm = #0xf6
    721a: bf00         	nop
    721c: 00 24 74 cb  	.word	0xcb742400
    7220: 00 24 74 4b  	.word	0x4b742400
    7224: 00 a0 0c 48  	.word	0x480ca000
    7228: f50d 6589    	add.w	r5, sp, #0x448
    722c: 22e0         	movs	r2, #0xe0
    722e: 9812         	ldr	r0, [sp, #0x48]
    7230: 4629         	mov	r1, r5
    7232: f006 fab9    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x6572
    7236: 22e0         	movs	r2, #0xe0
    7238: 4628         	mov	r0, r5
    723a: 4631         	mov	r1, r6
    723c: f006 fab4    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x6568
    7240: 99f7         	ldr	r1, [sp, #0x3dc]
    7242: f04f 30ff    	mov.w	r0, #0xffffffff
    7246: 3101         	adds	r1, #0x1
    7248: f04f 0e01    	mov.w	lr, #0x1
    724c: bf28         	it	hs
    724e: 4601         	movhs	r1, r0
    7250: 2000         	movs	r0, #0x0
    7252: f8cd 040c    	str.w	r0, [sp, #0x40c]
    7256: 91f7         	str	r1, [sp, #0x3dc]
    7258: eeb0 9a69    	vmov.f32	s18, s19
    725c: f8cd 1608    	str.w	r1, [sp, #0x608]
    7260: eefe 9a00    	vmov.f32	s19, #-5.000000e-01
    7264: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    7268: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    726c: f8dd c36c    	ldr.w	r12, [sp, #0x36c]
    7270: 98da         	ldr	r0, [sp, #0x368]
    7272: ed9d eaf1    	vldr	s28, [sp, #964]
    7276: ed9d 1ad8    	vldr	s2, [sp, #864]
    727a: ed9d 0ad9    	vldr	s0, [sp, #868]
    727e: ed9d 3ad6    	vldr	s6, [sp, #856]
    7282: ed9d 2ad7    	vldr	s4, [sp, #860]
    7286: ed9d 5ad4    	vldr	s10, [sp, #848]
    728a: ed9d 4ad5    	vldr	s8, [sp, #852]
    728e: ed9d 7ad2    	vldr	s14, [sp, #840]
    7292: ed9d 6ad3    	vldr	s12, [sp, #844]
    7296: eddd 1ad0    	vldr	s3, [sp, #832]
    729a: eddd 0ad1    	vldr	s1, [sp, #836]
    729e: eddd 3ace    	vldr	s7, [sp, #824]
    72a2: eddd 2acf    	vldr	s5, [sp, #828]
    72a6: eddd 8acc    	vldr	s17, [sp, #816]
    72aa: eddd 4acd    	vldr	s9, [sp, #820]
    72ae: eddd 6aca    	vldr	s13, [sp, #808]
    72b2: eddd 5acb    	vldr	s11, [sp, #812]
    72b6: ed9d 8ae0    	vldr	s16, [sp, #896]
    72ba: eddd 7ae1    	vldr	s15, [sp, #900]
    72be: ed9d baf0    	vldr	s22, [sp, #960]
    72c2: ed9d aadf    	vldr	s20, [sp, #892]
    72c6: ed9d daee    	vldr	s26, [sp, #952]
    72ca: ed9d caef    	vldr	s24, [sp, #956]
    72ce: eddd baec    	vldr	s23, [sp, #944]
    72d2: ed9d faed    	vldr	s30, [sp, #948]
    72d6: e089         	b	0x73ec <Reset+0x6fe4>   @ imm = #0x112
    72d8: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    72dc: e007         	b	0x72ee <Reset+0x6ee6>   @ imm = #0xe
    72de: bf00         	nop
    72e0: 22e0         	movs	r2, #0xe0
    72e2: f50d 60de    	add.w	r0, sp, #0x6f0
    72e6: f60d 1114    	addw	r1, sp, #0x914
    72ea: f006 fa5d    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x64ba
    72ee: f50d 6189    	add.w	r1, sp, #0x448
    72f2: 9b6b         	ldr	r3, [sp, #0x1ac]
    72f4: f50d 6e80    	add.w	lr, sp, #0x400
    72f8: 2500         	movs	r5, #0x0
    72fa: f50d 66de    	add.w	r6, sp, #0x6f0
    72fe: ed9e 9a05    	vldr	s18, [lr, #20]
    7302: ee19 0a10    	vmov	r0, s18
    7306: f020 4000    	bic	r0, r0, #0x80000000
    730a: f1b0 4fff    	cmp.w	r0, #0x7f800000
    730e: bfb8         	it	lt
    7310: 2501         	movlt	r5, #0x1
    7312: 2d00         	cmp	r5, #0x0
    7314: f8cd 340c    	str.w	r3, [sp, #0x40c]
    7318: bf18         	it	ne
    731a: 2b00         	cmpne	r3, #0x0
    731c: d110         	bne	0x7340 <Reset+0x6f38>   @ imm = #0x20
    731e: 22e0         	movs	r2, #0xe0
    7320: 4630         	mov	r0, r6
    7322: f006 fa41    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x6482
    7326: e01e         	b	0x7366 <Reset+0x6f5e>   @ imm = #0x3c
    7328: f9 de 1d c4  	.word	0xc41ddef9
    732c: 00 24 f4 ca  	.word	0xcaf42400
    7330: 00 80 bb 47  	.word	0x47bb8000
    7334: 59 e4 70 4c  	.word	0x4c70e459
    7338: 00 24 f4 4a  	.word	0x4af42400
    733c: 00 bf 00 bf  	.word	0xbf00bf00
    7340: 22e0         	movs	r2, #0xe0
    7342: 9812         	ldr	r0, [sp, #0x48]
    7344: 460c         	mov	r4, r1
    7346: f006 fa2f    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x645e
    734a: 22e0         	movs	r2, #0xe0
    734c: 4620         	mov	r0, r4
    734e: 4631         	mov	r1, r6
    7350: f006 fa2a    	bl	0xd7a8 <__aeabi_memcpy4> @ imm = #0x6454
    7354: 99f7         	ldr	r1, [sp, #0x3dc]
    7356: f04f 30ff    	mov.w	r0, #0xffffffff
    735a: 3101         	adds	r1, #0x1
    735c: bf28         	it	hs
    735e: 4601         	movhs	r1, r0
    7360: 91f7         	str	r1, [sp, #0x3dc]
    7362: f8cd 1608    	str.w	r1, [sp, #0x608]
    7366: f50d 6080    	add.w	r0, sp, #0x400
    736a: ed9f 0a66    	vldr	s0, [pc, #408]          @ 0x7504 <Reset+0x70fc>
    736e: f04f 0e00    	mov.w	lr, #0x0
    7372: ed9d eaf1    	vldr	s28, [sp, #964]
    7376: eddd 7ae1    	vldr	s15, [sp, #900]
    737a: ed9d 8ae0    	vldr	s16, [sp, #896]
    737e: ed9d aadf    	vldr	s20, [sp, #892]
    7382: ed9d baf0    	vldr	s22, [sp, #960]
    7386: ed9d caef    	vldr	s24, [sp, #956]
    738a: ed9d daee    	vldr	s26, [sp, #952]
    738e: ed9d faed    	vldr	s30, [sp, #948]
    7392: eddd baec    	vldr	s23, [sp, #944]
    7396: eeb4 9a40    	vcmp.f32	s18, s0
    739a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    739e: bf98         	it	ls
    73a0: f04f 0e01    	movls.w	lr, #0x1
    73a4: edd0 aadb    	vldr	s21, [r0, #876]
    73a8: ed9d 0ad9    	vldr	s0, [sp, #868]
    73ac: e9dd 0cda    	ldrd	r0, r12, [sp, #872]
    73b0: ed9d 1ad8    	vldr	s2, [sp, #864]
    73b4: ed9d 2ad7    	vldr	s4, [sp, #860]
    73b8: ed9d 3ad6    	vldr	s6, [sp, #856]
    73bc: ed9d 4ad5    	vldr	s8, [sp, #852]
    73c0: ed9d 5ad4    	vldr	s10, [sp, #848]
    73c4: ed9d 6ad3    	vldr	s12, [sp, #844]
    73c8: ed9d 7ad2    	vldr	s14, [sp, #840]
    73cc: eddd 0ad1    	vldr	s1, [sp, #836]
    73d0: eddd 1ad0    	vldr	s3, [sp, #832]
    73d4: eddd 2acf    	vldr	s5, [sp, #828]
    73d8: eddd 3ace    	vldr	s7, [sp, #824]
    73dc: eddd 4acd    	vldr	s9, [sp, #820]
    73e0: eddd 8acc    	vldr	s17, [sp, #816]
    73e4: eddd 5acb    	vldr	s11, [sp, #812]
    73e8: eddd 6aca    	vldr	s13, [sp, #808]
    73ec: f241 0104    	movw	r1, #0x1004
    73f0: 281f         	cmp	r0, #0x1f
    73f2: f2ce 0100    	movt	r1, #0xe000
    73f6: 680a         	ldr	r2, [r1]
    73f8: f679 a95e    	bls.w	0x6b8 <Reset+0x2b0>     @ imm = #-0x6d44
    73fc: e9dd 41c5    	ldrd	r4, r1, [sp, #788]
    7400: 1a61         	subs	r1, r4, r1
    7402: 9b62         	ldr	r3, [sp, #0x188]
    7404: 4299         	cmp	r1, r3
    7406: eba2 0204    	sub.w	r2, r2, r4
    740a: bf88         	it	hi
    740c: 460b         	movhi	r3, r1
    740e: 9c4e         	ldr	r4, [sp, #0x138]
    7410: 9362         	str	r3, [sp, #0x188]
    7412: 9b61         	ldr	r3, [sp, #0x184]
    7414: 429a         	cmp	r2, r3
    7416: 440c         	add	r4, r1
    7418: bf88         	it	hi
    741a: 4613         	movhi	r3, r2
    741c: 9361         	str	r3, [sp, #0x184]
    741e: 9b5b         	ldr	r3, [sp, #0x16c]
    7420: 461d         	mov	r5, r3
    7422: 429c         	cmp	r4, r3
    7424: bf88         	it	hi
    7426: 4625         	movhi	r5, r4
    7428: 07c6         	lsls	r6, r0, #0x1f
    742a: 9e4d         	ldr	r6, [sp, #0x134]
    742c: bf18         	it	ne
    742e: 462b         	movne	r3, r5
    7430: 440e         	add	r6, r1
    7432: 935b         	str	r3, [sp, #0x16c]
    7434: f04f 0300    	mov.w	r3, #0x0
    7438: bf18         	it	ne
    743a: 461c         	movne	r4, r3
    743c: f1c0 031f    	rsb.w	r3, r0, #0x1f
    7440: 944e         	str	r4, [sp, #0x138]
    7442: f003 047f    	and	r4, r3, #0x7f
    7446: 9b5c         	ldr	r3, [sp, #0x170]
    7448: 461d         	mov	r5, r3
    744a: 429e         	cmp	r6, r3
    744c: bf88         	it	hi
    744e: 4635         	movhi	r5, r6
    7450: 2c00         	cmp	r4, #0x0
    7452: bf08         	it	eq
    7454: 462b         	moveq	r3, r5
    7456: 935c         	str	r3, [sp, #0x170]
    7458: bf18         	it	ne
    745a: 4634         	movne	r4, r6
    745c: 9b5f         	ldr	r3, [sp, #0x17c]
    745e: 461d         	mov	r5, r3
    7460: 9e63         	ldr	r6, [sp, #0x18c]
    7462: 944d         	str	r4, [sp, #0x134]
    7464: 4299         	cmp	r1, r3
    7466: 4416         	add	r6, r2
    7468: 9663         	str	r6, [sp, #0x18c]
    746a: bf88         	it	hi
    746c: 460d         	movhi	r5, r1
    746e: 9af6         	ldr	r2, [sp, #0x3d8]
    7470: f8dd 831c    	ldr.w	r8, [sp, #0x31c]
    7474: f8dd 4410    	ldr.w	r4, [sp, #0x410]
    7478: 4294         	cmp	r4, r2
    747a: f088 0201    	eor	r2, r8, #0x1
    747e: 9e60         	ldr	r6, [sp, #0x180]
    7480: 4416         	add	r6, r2
    7482: 9660         	str	r6, [sp, #0x180]
    7484: bf88         	it	hi
    7486: 462b         	movhi	r3, r5
    7488: 9a64         	ldr	r2, [sp, #0x190]
    748a: f50d 66fa    	add.w	r6, sp, #0x7d0
    748e: 440a         	add	r2, r1
    7490: 9264         	str	r2, [sp, #0x190]
    7492: 9a5e         	ldr	r2, [sp, #0x178]
    7494: 935f         	str	r3, [sp, #0x17c]
    7496: bf88         	it	hi
    7498: 3201         	addhi	r2, #0x1
    749a: 925e         	str	r2, [sp, #0x178]
    749c: 9a5d         	ldr	r2, [sp, #0x174]
    749e: bf88         	it	hi
    74a0: 440a         	addhi	r2, r1
    74a2: f08e 0101    	eor	r1, lr, #0x1
    74a6: f8dd b3d4    	ldr.w	r11, [sp, #0x3d4]
    74aa: 925d         	str	r2, [sp, #0x174]
    74ac: 9a59         	ldr	r2, [sp, #0x164]
    74ae: 440a         	add	r2, r1
    74b0: 9259         	str	r2, [sp, #0x164]
    74b2: 9958         	ldr	r1, [sp, #0x160]
    74b4: 9a56         	ldr	r2, [sp, #0x158]
    74b6: 3101         	adds	r1, #0x1
    74b8: 9158         	str	r1, [sp, #0x160]
    74ba: fa5f f18b    	uxtb.w	r1, r11
    74be: fa52 f28b    	uxtab	r2, r2, r11
    74c2: 9256         	str	r2, [sp, #0x158]
    74c4: 9a57         	ldr	r2, [sp, #0x15c]
    74c6: 428a         	cmp	r2, r1
    74c8: bf98         	it	ls
    74ca: 460a         	movls	r2, r1
    74cc: 995a         	ldr	r1, [sp, #0x168]
    74ce: f8dd a320    	ldr.w	r10, [sp, #0x320]
    74d2: 9257         	str	r2, [sp, #0x15c]
    74d4: 458a         	cmp	r10, r1
    74d6: bf88         	it	hi
    74d8: 4651         	movhi	r1, r10
    74da: 915a         	str	r1, [sp, #0x168]
    74dc: f44f 7184    	mov.w	r1, #0x108
    74e0: 9102         	str	r1, [sp, #0x8]
    74e2: f7f9 b8f1    	b.w	0x6c8 <Reset+0x2c0>     @ imm = #-0x6e1e
    74e6: bf00         	nop
    74e8: f50d 6e80    	add.w	lr, sp, #0x400
    74ec: f8dd 340c    	ldr.w	r3, [sp, #0x40c]
    74f0: f50d 6189    	add.w	r1, sp, #0x448
    74f4: eef7 fa00    	vmov.f32	s31, #1.000000e+00
    74f8: ed8e 9a05    	vstr	s18, [lr, #20]
    74fc: eef6 ea00    	vmov.f32	s29, #5.000000e-01
    7500: e6f8         	b	0x72f4 <Reset+0x6eec>   @ imm = #-0x210
    7502: bf00         	nop
    7504: 17 b7 d1 38  	.word	0x38d1b717
    7508: f1bc 0f00    	cmp.w	r12, #0x0
    750c: f479 afe4    	bne.w	0x14d8 <Reset+0x10d0>   @ imm = #-0x6038
    7510: f60d 20d4    	addw	r0, sp, #0xad4
    7514: ed8d cac9    	vstr	s24, [sp, #804]
    7518: edcd 7aca    	vstr	s15, [sp, #808]
    751c: f20d 412c    	addw	r1, sp, #0x42c
    7520: edcd 6acb    	vstr	s13, [sp, #812]
    7524: f50d 6e80    	add.w	lr, sp, #0x400
    7528: edcd 5acc    	vstr	s11, [sp, #816]
    752c: ee19 4a10    	vmov	r4, s18
    7530: edcd 4acd    	vstr	s9, [sp, #820]
    7534: edcd 3ace    	vstr	s7, [sp, #824]
    7538: edcd 2acf    	vstr	s5, [sp, #828]
    753c: edcd 1ad0    	vstr	s3, [sp, #832]
    7540: edcd 0ad1    	vstr	s1, [sp, #836]
    7544: ed8d 7ad2    	vstr	s14, [sp, #840]
    7548: ed8d 6ad3    	vstr	s12, [sp, #844]
    754c: ed8d 5ad4    	vstr	s10, [sp, #848]
    7550: ed8d 4ad5    	vstr	s8, [sp, #852]
    7554: ed8d 3ad6    	vstr	s6, [sp, #856]
    7558: ed8d 2ad7    	vstr	s4, [sp, #860]
    755c: ed8d 1ad8    	vstr	s2, [sp, #864]
    7560: ed8d 0ad9    	vstr	s0, [sp, #868]
    7564: c84c         	ldm	r0!, {r2, r3, r6}
    7566: c14c         	stm	r1!, {r2, r3, r6}
    7568: e890 006c    	ldm.w	r0, {r2, r3, r5, r6}
    756c: c16c         	stm	r1!, {r2, r3, r5, r6}
    756e: ed9d 0af8    	vldr	s0, [sp, #992]
    7572: ed8d 0a86    	vstr	s0, [sp, #536]
    7576: ed9d 0afa    	vldr	s0, [sp, #1000]
    757a: ed8d 0a85    	vstr	s0, [sp, #532]
    757e: ed9d 0afd    	vldr	s0, [sp, #1012]
    7582: ed8d 0a84    	vstr	s0, [sp, #528]
    7586: ed9d 0adc    	vldr	s0, [sp, #880]
    758a: ed8d 0a83    	vstr	s0, [sp, #524]
    758e: ed9d 0afe    	vldr	s0, [sp, #1016]
    7592: ed8d 0a82    	vstr	s0, [sp, #520]
    7596: ed9e 0a00    	vldr	s0, [lr]
    759a: f50d 6e80    	add.w	lr, sp, #0x400
    759e: ed8d 0a81    	vstr	s0, [sp, #516]
    75a2: ed9d 0add    	vldr	s0, [sp, #884]
    75a6: ed8d 0a80    	vstr	s0, [sp, #512]
    75aa: ed9d 0ade    	vldr	s0, [sp, #888]
    75ae: ed8d 0a7f    	vstr	s0, [sp, #508]
    75b2: ed9e 0a02    	vldr	s0, [lr, #8]
    75b6: f50d 6e80    	add.w	lr, sp, #0x400
    75ba: ed8d 0a7e    	vstr	s0, [sp, #504]
    75be: ed9d 0af2    	vldr	s0, [sp, #968]
    75c2: ed8d 0a7d    	vstr	s0, [sp, #500]
    75c6: ed9d 0ac3    	vldr	s0, [sp, #780]
    75ca: ed8d 0a7c    	vstr	s0, [sp, #496]
    75ce: ed9d 0ac5    	vldr	s0, [sp, #788]
    75d2: ed8d 0a7b    	vstr	s0, [sp, #492]
    75d6: ed9e 0a03    	vldr	s0, [lr, #12]
    75da: f50d 6e80    	add.w	lr, sp, #0x400
    75de: ed8d 0a7a    	vstr	s0, [sp, #488]
    75e2: 4620         	mov	r0, r4
    75e4: ed9e 0a05    	vldr	s0, [lr, #20]
    75e8: f50d 6e80    	add.w	lr, sp, #0x400
    75ec: ed8d 0a79    	vstr	s0, [sp, #484]
    75f0: 2101         	movs	r1, #0x1
    75f2: ed9e 0a06    	vldr	s0, [lr, #24]
    75f6: f50d 6e80    	add.w	lr, sp, #0x400
    75fa: ed8d 0a78    	vstr	s0, [sp, #480]
    75fe: ed9e 0a08    	vldr	s0, [lr, #32]
    7602: f50d 6e80    	add.w	lr, sp, #0x400
    7606: ed8d 0a77    	vstr	s0, [sp, #476]
    760a: ed9e 0a09    	vldr	s0, [lr, #36]
    760e: f50d 6e80    	add.w	lr, sp, #0x400
    7612: ed8d 0a76    	vstr	s0, [sp, #472]
    7616: ed9e 0a0a    	vldr	s0, [lr, #40]
    761a: f50d 6e00    	add.w	lr, sp, #0x800
    761e: edcd 8a87    	vstr	s17, [sp, #540]
    7622: ed8d 0a75    	vstr	s0, [sp, #468]
    7626: ed9d 0adf    	vldr	s0, [sp, #892]
    762a: ed8d 0a74    	vstr	s0, [sp, #464]
    762e: ed9d 0ae0    	vldr	s0, [sp, #896]
    7632: ed8d 0a73    	vstr	s0, [sp, #460]
    7636: ed9d 0ae1    	vldr	s0, [sp, #900]
    763a: ed8d 0a72    	vstr	s0, [sp, #456]
    763e: ed9d 0ae2    	vldr	s0, [sp, #904]
    7642: ed8d 0a71    	vstr	s0, [sp, #452]
    7646: ed9d 0ae5    	vldr	s0, [sp, #916]
    764a: ed8d 0a70    	vstr	s0, [sp, #448]
    764e: ed9d 0ae6    	vldr	s0, [sp, #920]
    7652: ed8d 0a6f    	vstr	s0, [sp, #444]
    7656: ed9d 0ae8    	vldr	s0, [sp, #928]
    765a: ed8d 0a6e    	vstr	s0, [sp, #440]
    765e: ed9d 0ac7    	vldr	s0, [sp, #796]
    7662: ed8d 0a6d    	vstr	s0, [sp, #436]
    7666: ed9d 0ac8    	vldr	s0, [sp, #800]
    766a: ed8d 0a6c    	vstr	s0, [sp, #432]
    766e: ed9e 0abc    	vldr	s0, [lr, #752]
    7672: ed8d 0af1    	vstr	s0, [sp, #964]
    7676: f7f9 bfa4    	b.w	0x15c2 <Reset+0x11ba>   @ imm = #-0x60b8
    767a: bf00         	nop
    767c: bf00         	nop
    767e: bf00         	nop
    7680: f64f 71fc    	movw	r1, #0xfffc
    7684: f644 6045    	movw	r0, #0x4e45
    7688: f2c2 0100    	movt	r1, #0x2000
    768c: f2c4 404f    	movt	r0, #0x444f
    7690: 6008         	str	r0, [r1]
    7692: bf00         	nop
    7694: bf00         	nop
    7696: bf00         	nop
    7698: bf10         	yield
    769a: bf10         	yield
    769c: bf10         	yield
    769e: bf10         	yield
    76a0: e7fa         	b	0x7698 <Reset+0x7290>   @ imm = #-0xc
    76a2: bf00         	nop
    76a4: bf00         	nop
    76a6: bf00         	nop
    76a8: f24e 1220    	movw	r2, #0xe120
    76ac: 2103         	movs	r1, #0x3
    76ae: f2c0 0200    	movt	r2, #0x0
    76b2: 4628         	mov	r0, r5
    76b4: f003 fbe4    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x37c8
    76b8: f24e 1200    	movw	r2, #0xe100
    76bc: 2138         	movs	r1, #0x38
    76be: f2c0 0200    	movt	r2, #0x0
    76c2: 4620         	mov	r0, r4
    76c4: f003 fbdc    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x37b8
    76c8: f24e 1210    	movw	r2, #0xe110
    76cc: 210e         	movs	r1, #0xe
    76ce: f2c0 0200    	movt	r2, #0x0
    76d2: 4630         	mov	r0, r6
    76d4: f003 fbd4    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x37a8
    76d8: f24e 02d0    	movw	r2, #0xe0d0
    76dc: 2104         	movs	r1, #0x4
    76de: f2c0 0200    	movt	r2, #0x0
    76e2: 4640         	mov	r0, r8
    76e4: f003 fbcc    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3798
    76e8: f24e 1200    	movw	r2, #0xe100
    76ec: 2138         	movs	r1, #0x38
    76ee: f2c0 0200    	movt	r2, #0x0
    76f2: 4670         	mov	r0, lr
    76f4: f003 fbc4    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3788
    76f8: f24e 1210    	movw	r2, #0xe110
    76fc: 210e         	movs	r1, #0xe
    76fe: f2c0 0200    	movt	r2, #0x0
    7702: 4618         	mov	r0, r3
    7704: f003 fbbc    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3778
    7708: f24e 02e0    	movw	r2, #0xe0e0
    770c: 2138         	movs	r1, #0x38
    770e: f2c0 0200    	movt	r2, #0x0
    7712: f003 fbb5    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x376a
    7716: bf00         	nop
    7718: f24e 02f0    	movw	r2, #0xe0f0
    771c: f2c0 0200    	movt	r2, #0x0
    7720: 2138         	movs	r1, #0x38
    7722: 4648         	mov	r0, r9
    7724: f003 fbac    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3758
    7728: f24e 1220    	movw	r2, #0xe120
    772c: 2103         	movs	r1, #0x3
    772e: f2c0 0200    	movt	r2, #0x0
    7732: 4630         	mov	r0, r6
    7734: f003 fba4    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3748
    7738: f24e 1220    	movw	r2, #0xe120
    773c: 2103         	movs	r1, #0x3
    773e: f2c0 0200    	movt	r2, #0x0
    7742: f003 fb9d    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x373a
    7746: bf00         	nop
    7748: f24e 1200    	movw	r2, #0xe100
    774c: 2138         	movs	r1, #0x38
    774e: f2c0 0200    	movt	r2, #0x0
    7752: f003 fb95    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x372a
    7756: bf00         	nop
    7758: f24e 1200    	movw	r2, #0xe100
    775c: f2c0 0200    	movt	r2, #0x0
    7760: 2138         	movs	r1, #0x38
    7762: 4648         	mov	r0, r9
    7764: f003 fb8c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3718
    7768: f24e 1220    	movw	r2, #0xe120
    776c: 2103         	movs	r1, #0x3
    776e: f2c0 0200    	movt	r2, #0x0
    7772: 4618         	mov	r0, r3
    7774: f003 fb84    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3708
    7778: f24e 2200    	movw	r2, #0xe200
    777c: f2c0 0200    	movt	r2, #0x0
    7780: 2003         	movs	r0, #0x3
    7782: 2103         	movs	r1, #0x3
    7784: f003 fb7c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x36f8
    7788: f24e 12e0    	movw	r2, #0xe1e0
    778c: f2c0 0200    	movt	r2, #0x0
    7790: 2003         	movs	r0, #0x3
    7792: 2103         	movs	r1, #0x3
    7794: f003 fb74    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x36e8
    7798: f24e 12d0    	movw	r2, #0xe1d0
    779c: f2c0 0200    	movt	r2, #0x0
    77a0: 2003         	movs	r0, #0x3
    77a2: 2103         	movs	r1, #0x3
    77a4: f003 fb6c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x36d8
    77a8: f24e 12f0    	movw	r2, #0xe1f0
    77ac: f2c0 0200    	movt	r2, #0x0
    77b0: 2003         	movs	r0, #0x3
    77b2: 2103         	movs	r1, #0x3
    77b4: f003 fb64    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x36c8
    77b8: f24e 12c0    	movw	r2, #0xe1c0
    77bc: f2c0 0200    	movt	r2, #0x0
    77c0: 2003         	movs	r0, #0x3
    77c2: 2103         	movs	r1, #0x3
    77c4: f003 fb5c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x36b8
    77c8: f24e 12b0    	movw	r2, #0xe1b0
    77cc: f2c0 0200    	movt	r2, #0x0
    77d0: 2003         	movs	r0, #0x3
    77d2: 2103         	movs	r1, #0x3
    77d4: f003 fb54    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x36a8
    77d8: f24e 12a0    	movw	r2, #0xe1a0
    77dc: f2c0 0200    	movt	r2, #0x0
    77e0: 2003         	movs	r0, #0x3
    77e2: 2103         	movs	r1, #0x3
    77e4: f003 fb4c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3698
    77e8: f24e 1290    	movw	r2, #0xe190
    77ec: f2c0 0200    	movt	r2, #0x0
    77f0: 2003         	movs	r0, #0x3
    77f2: 2103         	movs	r1, #0x3
    77f4: f003 fb44    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3688
    77f8: f24e 1280    	movw	r2, #0xe180
    77fc: f2c0 0200    	movt	r2, #0x0
    7800: 2003         	movs	r0, #0x3
    7802: 2103         	movs	r1, #0x3
    7804: f003 fb3c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3678
    7808: f24e 1270    	movw	r2, #0xe170
    780c: f2c0 0200    	movt	r2, #0x0
    7810: 2003         	movs	r0, #0x3
    7812: 2103         	movs	r1, #0x3
    7814: f003 fb34    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3668
    7818: f24e 1260    	movw	r2, #0xe160
    781c: f2c0 0200    	movt	r2, #0x0
    7820: 2003         	movs	r0, #0x3
    7822: 2103         	movs	r1, #0x3
    7824: f003 fb2c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3658
    7828: f24e 1250    	movw	r2, #0xe150
    782c: f2c0 0200    	movt	r2, #0x0
    7830: 2003         	movs	r0, #0x3
    7832: 2103         	movs	r1, #0x3
    7834: f003 fb24    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3648
    7838: f24e 1230    	movw	r2, #0xe130
    783c: f2c0 0200    	movt	r2, #0x0
    7840: 2003         	movs	r0, #0x3
    7842: 2103         	movs	r1, #0x3
    7844: f003 fb1c    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3638
    7848: f24e 1240    	movw	r2, #0xe140
    784c: f2c0 0200    	movt	r2, #0x0
    7850: 2003         	movs	r0, #0x3
    7852: 2103         	movs	r1, #0x3
    7854: f003 fb14    	bl	0xae80 <core::panicking::panic_bounds_check> @ imm = #0x3628

00007858 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>>:
    7858: b5f0         	push	{r4, r5, r6, r7, lr}
    785a: af03         	add	r7, sp, #0xc
    785c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7860: b081         	sub	sp, #0x4
    7862: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7866: b09e         	sub	sp, #0x78
    7868: 460c         	mov	r4, r1
    786a: 9003         	str	r0, [sp, #0xc]
    786c: f244 4508    	movw	r5, #0x4408
    7870: f240 1855    	movw	r8, #0x155
    7874: a805         	add	r0, sp, #0x14
    7876: 2134         	movs	r1, #0x34
    7878: 4616         	mov	r6, r2
    787a: f6c4 0500    	movt	r5, #0x4800
    787e: f2c0 0808    	movt	r8, #0x8
    7882: f006 f92a    	bl	0xdada <__aeabi_memclr4> @ imm = #0x6254
    7886: eeba 4a0e    	vmov.f32	s8, #-1.500000e+01
    788a: edd4 fa00    	vldr	s31, [r4]
    788e: ed9f 5abb    	vldr	s10, [pc, #748]         @ 0x7b7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x324>
    7892: eebe 7a00    	vmov.f32	s14, #-5.000000e-01
    7896: ed9f aaba    	vldr	s20, [pc, #744]         @ 0x7b80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x328>
    789a: eeb6 fa00    	vmov.f32	s30, #5.000000e-01
    789e: ee3f 0a84    	vadd.f32	s0, s31, s8
    78a2: ed9f bab8    	vldr	s22, [pc, #736]         @ 0x7b84 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x32c>
    78a6: ed9f 6ab8    	vldr	s12, [pc, #736]         @ 0x7b88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x330>
    78aa: 9402         	str	r4, [sp, #0x8]
    78ac: eddf 8ab7    	vldr	s17, [pc, #732]         @ 0x7b8c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x334>
    78b0: eeff 9a00    	vmov.f32	s19, #-1.000000e+00
    78b4: ee80 0a05    	vdiv.f32	s0, s0, s10
    78b8: eddf aab5    	vldr	s21, [pc, #724]         @ 0x7b90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x338>
    78bc: eddf bab5    	vldr	s23, [pc, #724]         @ 0x7b94 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x33c>
    78c0: eddf eab5    	vldr	s29, [pc, #724]         @ 0x7b98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x340>
    78c4: eeb4 aa40    	vcmp.f32	s20, s0
    78c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78cc: fe3a 0a00    	vselgt.f32	s0, s20, s0
    78d0: eeb4 0a4b    	vcmp.f32	s0, s22
    78d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78d8: fe3b 0a00    	vselgt.f32	s0, s22, s0
    78dc: ee20 1a06    	vmul.f32	s2, s0, s12
    78e0: ee31 2a07    	vadd.f32	s4, s2, s14
    78e4: eeb5 1a40    	vcmp.f32	s2, #0
    78e8: ee31 3a0f    	vadd.f32	s6, s2, s30
    78ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    78f0: eebd 2ac2    	vcvt.s32.f32	s4, s4
    78f4: eebd 3ac3    	vcvt.s32.f32	s6, s6
    78f8: ee12 0a10    	vmov	r0, s4
    78fc: ee13 1a10    	vmov	r1, s6
    7900: bfa8         	it	ge
    7902: 4608         	movge	r0, r1
    7904: ee01 0a10    	vmov	s2, r0
    7908: eeb8 1ac1    	vcvt.f32.s32	s2, s2
    790c: ee01 0a68    	vmls.f32	s0, s2, s17
    7910: ee34 1a6f    	vsub.f32	s2, s8, s31
    7914: ee81 1a05    	vdiv.f32	s2, s2, s10
    7918: ee20 0a0f    	vmul.f32	s0, s0, s30
    791c: eef4 9a40    	vcmp.f32	s19, s0
    7920: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7924: fe39 0a80    	vselgt.f32	s0, s19, s0
    7928: eeb4 0a6a    	vcmp.f32	s0, s21
    792c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7930: eeb4 aa41    	vcmp.f32	s20, s2
    7934: fe3a 0a80    	vselgt.f32	s0, s21, s0
    7938: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    793c: fe3a 1a01    	vselgt.f32	s2, s20, s2
    7940: ee20 0a2b    	vmul.f32	s0, s0, s23
    7944: eeb4 1a4b    	vcmp.f32	s2, s22
    7948: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    794c: eebd 0ac0    	vcvt.s32.f32	s0, s0
    7950: fe3b 1a01    	vselgt.f32	s2, s22, s2
    7954: ee21 2a06    	vmul.f32	s4, s2, s12
    7958: ed9f 6a90    	vldr	s12, [pc, #576]         @ 0x7b9c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x344>
    795c: ee32 3a07    	vadd.f32	s6, s4, s14
    7960: eeb5 2a40    	vcmp.f32	s4, #0
    7964: ee32 4a0f    	vadd.f32	s8, s4, s30
    7968: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    796c: eebd 3ac3    	vcvt.s32.f32	s6, s6
    7970: eebd 4ac4    	vcvt.s32.f32	s8, s8
    7974: ee13 1a10    	vmov	r1, s6
    7978: eeb7 3aef    	vcvt.f64.f32	d3, s31
    797c: ee14 2a10    	vmov	r2, s8
    7980: bfa8         	it	ge
    7982: 4611         	movge	r1, r2
    7984: ed96 cb00    	vldr	d12, [r6]
    7988: ee02 1a10    	vmov	s4, r1
    798c: f845 8c08    	str	r8, [r5, #-8]
    7990: ed05 0a01    	vstr	s0, [r5, #-4]
    7994: ed9f 4b82    	vldr	d4, [pc, #520]          @ 0x7ba0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x348>
    7998: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    799c: ee02 1a68    	vmls.f32	s2, s4, s17
    79a0: ee21 1a0f    	vmul.f32	s2, s2, s30
    79a4: eef4 9a41    	vcmp.f32	s19, s2
    79a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79ac: fe39 1a81    	vselgt.f32	s2, s19, s2
    79b0: eeb4 1a6a    	vcmp.f32	s2, s21
    79b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    79b8: fe3a 0a81    	vselgt.f32	s0, s21, s2
    79bc: ed95 1a00    	vldr	s2, [r5]
    79c0: ed95 2a00    	vldr	s4, [r5]
    79c4: eeb8 1ac1    	vcvt.f32.s32	s2, s2
    79c8: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    79cc: f845 8c08    	str	r8, [r5, #-8]
    79d0: ee20 0a2b    	vmul.f32	s0, s0, s23
    79d4: f04f 587e    	mov.w	r8, #0x3f800000
    79d8: eb08 50c0    	add.w	r0, r8, r0, lsl #23
    79dc: ee22 2a2e    	vmul.f32	s4, s4, s29
    79e0: eebd 0ac0    	vcvt.s32.f32	s0, s0
    79e4: ed05 0a01    	vstr	s0, [r5, #-4]
    79e8: ee01 2a2e    	vmla.f32	s4, s2, s29
    79ec: ed95 0a00    	vldr	s0, [r5]
    79f0: ed95 1a00    	vldr	s2, [r5]
    79f4: eeb8 1ac1    	vcvt.f32.s32	s2, s2
    79f8: eeb8 0ac0    	vcvt.f32.s32	s0, s0
    79fc: ee21 1a2e    	vmul.f32	s2, s2, s29
    7a00: ee00 1a2e    	vmla.f32	s2, s0, s29
    7a04: ee32 0a02    	vadd.f32	s0, s4, s4
    7a08: ee02 0a10    	vmov	s4, r0
    7a0c: eb08 50c1    	add.w	r0, r8, r1, lsl #23
    7a10: ee20 0a02    	vmul.f32	s0, s0, s4
    7a14: ee02 0a10    	vmov	s4, r0
    7a18: ee31 1a01    	vadd.f32	s2, s2, s2
    7a1c: ee21 1a02    	vmul.f32	s2, s2, s4
    7a20: eeb0 2b4c    	vmov.f64	d2, d12
    7a24: ee03 2b04    	vmla.f64	d2, d3, d4
    7a28: ee30 3a41    	vsub.f32	s6, s0, s2
    7a2c: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    7a30: ee13 2a06    	vnmls.f32	s4, s6, s12
    7a34: ee12 0a10    	vmov	r0, s4
    7a38: f020 4000    	bic	r0, r0, #0x80000000
    7a3c: f1b0 4fff    	cmp.w	r0, #0x7f800000
    7a40: db02         	blt	0x7a48 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x1f0> @ imm = #0x4
    7a42: ed9f eaf5    	vldr	s28, [pc, #980]         @ 0x7e18 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5c0>
    7a46: e009         	b	0x7a5c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x204> @ imm = #0x12
    7a48: ed9f 3af4    	vldr	s6, [pc, #976]          @ 0x7e1c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5c4>
    7a4c: ee82 3a03    	vdiv.f32	s6, s4, s6
    7a50: ed9f 4af3    	vldr	s8, [pc, #972]          @ 0x7e20 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5c8>
    7a54: eeb0 3ac3    	vabs.f32	s6, s6
    7a58: fe83 ea04    	vmaxnm.f32	s28, s6, s8
    7a5c: ee30 1a01    	vadd.f32	s2, s0, s2
    7a60: a815         	add	r0, sp, #0x54
    7a62: eeb1 0a42    	vneg.f32	s0, s4
    7a66: f04f 0a00    	mov.w	r10, #0x0
    7a6a: f100 0c04    	add.w	r12, r0, #0x4
    7a6e: 2100         	movs	r1, #0x0
    7a70: ed9f 2af4    	vldr	s4, [pc, #976]          @ 0x7e44 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ec>
    7a74: f10d 0e48    	add.w	lr, sp, #0x48
    7a78: 2400         	movs	r4, #0x0
    7a7a: 46d3         	mov	r11, r10
    7a7c: f8cd c004    	str.w	r12, [sp, #0x4]
    7a80: ee21 1a06    	vmul.f32	s2, s2, s12
    7a84: ed8d 0a12    	vstr	s0, [sp, #72]
    7a88: 9114         	str	r1, [sp, #0x50]
    7a8a: 46d1         	mov	r9, r10
    7a8c: 9113         	str	r1, [sp, #0x4c]
    7a8e: a905         	add	r1, sp, #0x14
    7a90: ee81 1a05    	vdiv.f32	s2, s2, s10
    7a94: 9404         	str	r4, [sp, #0x10]
    7a96: f1ba 0f10    	cmp.w	r10, #0x10
    7a9a: 4682         	mov	r10, r0
    7a9c: ee31 0a02    	vadd.f32	s0, s2, s4
    7aa0: ed8d 0a15    	vstr	s0, [sp, #84]
    7aa4: c95c         	ldm	r1!, {r2, r3, r4, r6}
    7aa6: e8ac 005c    	stm.w	r12!, {r2, r3, r4, r6}
    7aaa: e891 005c    	ldm.w	r1, {r2, r3, r4, r6}
    7aae: e88c 005c    	stm.w	r12, {r2, r3, r4, r6}
    7ab2: f04f 0201    	mov.w	r2, #0x1
    7ab6: 4671         	mov	r1, lr
    7ab8: bf18         	it	ne
    7aba: f10b 0b01    	addne.w	r11, r11, #0x1
    7abe: f005 fcff    	bl	0xd4c0 <orange_dsp::condensed::solve> @ imm = #0x59fe
    7ac2: 2800         	cmp	r0, #0x0
    7ac4: f000 819c    	beq.w	0x7e00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5a8> @ imm = #0x338
    7ac8: eef0 4a4e    	vmov.f32	s9, s28
    7acc: eddf 7ade    	vldr	s15, [pc, #888]         @ 0x7e48 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f0>
    7ad0: eeb4 ea67    	vcmp.f32	s28, s15
    7ad4: 9c04         	ldr	r4, [sp, #0x10]
    7ad6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ada: d911         	bls	0x7b00 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x2a8> @ imm = #0x22
    7adc: eeba 6a0e    	vmov.f32	s12, #-1.500000e+01
    7ae0: eefe 3a00    	vmov.f32	s7, #-5.000000e-01
    7ae4: f1b9 0f10    	cmp.w	r9, #0x10
    7ae8: ed9f 7ad1    	vldr	s14, [pc, #836]         @ 0x7e30 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d8>
    7aec: eddf 0ad1    	vldr	s1, [pc, #836]          @ 0x7e34 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5dc>
    7af0: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0x7e38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e0>
    7af4: f000 818c    	beq.w	0x7e10 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5b8> @ imm = #0x318
    7af8: ed9d 0a12    	vldr	s0, [sp, #72]
    7afc: e037         	b	0x7b6e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x316> @ imm = #0x6e
    7afe: bf00         	nop
    7b00: eeb0 0aef    	vabs.f32	s0, s31
    7b04: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    7b08: eeba 6a0e    	vmov.f32	s12, #-1.500000e+01
    7b0c: eefe 3a00    	vmov.f32	s7, #-5.000000e-01
    7b10: 2000         	movs	r0, #0x0
    7b12: ed9f 7ac7    	vldr	s14, [pc, #796]         @ 0x7e30 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d8>
    7b16: eeb4 0a40    	vcmp.f32	s0, s0
    7b1a: eddf 0ac6    	vldr	s1, [pc, #792]          @ 0x7e34 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5dc>
    7b1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b22: eddf 6ac5    	vldr	s13, [pc, #788]         @ 0x7e38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e0>
    7b26: fe11 0a00    	vselvs.f32	s0, s2, s0
    7b2a: eeb4 0a41    	vcmp.f32	s0, s2
    7b2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b32: fe30 0a01    	vselgt.f32	s0, s0, s2
    7b36: ed9f 1ac5    	vldr	s2, [pc, #788]          @ 0x7e4c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f4>
    7b3a: ee20 0a01    	vmul.f32	s0, s0, s2
    7b3e: ed9f 1ac4    	vldr	s2, [pc, #784]          @ 0x7e50 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f8>
    7b42: fe80 1a41    	vminnm.f32	s2, s0, s2
    7b46: ed9d 0a12    	vldr	s0, [sp, #72]
    7b4a: eeb0 2ac0    	vabs.f32	s4, s0
    7b4e: eeb4 2a41    	vcmp.f32	s4, s2
    7b52: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b56: bf98         	it	ls
    7b58: 2001         	movls	r0, #0x1
    7b5a: f1b9 0f10    	cmp.w	r9, #0x10
    7b5e: f000 8158    	beq.w	0x7e12 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ba> @ imm = #0x2b0
    7b62: eeb4 2a41    	vcmp.f32	s4, s2
    7b66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7b6a: f240 8152    	bls.w	0x7e12 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ba> @ imm = #0x2a4
    7b6e: f240 1655    	movw	r6, #0x155
    7b72: f04f 507e    	mov.w	r0, #0x3f800000
    7b76: f2c0 0608    	movt	r6, #0x8
    7b7a: e01b         	b	0x7bb4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x35c> @ imm = #0x36
    7b7c: f5 4a 39 3d  	.word	0x3d394af5
    7b80: 00 00 a0 c2  	.word	0xc2a00000
    7b84: 00 00 a0 42  	.word	0x42a00000
    7b88: 3b aa b8 3f  	.word	0x3fb8aa3b
    7b8c: 18 72 31 3f  	.word	0x3f317218
    7b90: fe ff 7f 3f  	.word	0x3f7ffffe
    7b94: 00 00 00 4f  	.word	0x4f000000
    7b98: 00 00 00 30  	.word	0x30000000
    7b9c: 77 cc 2b 31  	.word	0x312bcc77
    7ba0: 80 e5 70 28  	.word	0x2870e580
    7ba4: a1 3a 03 bf  	.word	0xbf033aa1
    7ba8: f5a0 0000    	sub.w	r0, r0, #0x800000
    7bac: f1b0 5f66    	cmp.w	r0, #0x39800000
    7bb0: f000 8106    	beq.w	0x7dc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x568> @ imm = #0x20c
    7bb4: ee01 0a10    	vmov	s2, r0
    7bb8: eeb0 da6f    	vmov.f32	s26, s31
    7bbc: ee00 da01    	vmla.f32	s26, s0, s2
    7bc0: ee3d 1a06    	vadd.f32	s2, s26, s12
    7bc4: ee81 1a07    	vdiv.f32	s2, s2, s14
    7bc8: eeb4 aa41    	vcmp.f32	s20, s2
    7bcc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bd0: fe3a 1a01    	vselgt.f32	s2, s20, s2
    7bd4: eeb4 1a4b    	vcmp.f32	s2, s22
    7bd8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bdc: fe3b 1a01    	vselgt.f32	s2, s22, s2
    7be0: ee21 2a20    	vmul.f32	s4, s2, s1
    7be4: ee32 3a23    	vadd.f32	s6, s4, s7
    7be8: eeb5 2a40    	vcmp.f32	s4, #0
    7bec: ee32 4a0f    	vadd.f32	s8, s4, s30
    7bf0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7bf4: eebd 3ac3    	vcvt.s32.f32	s6, s6
    7bf8: eebd 4ac4    	vcvt.s32.f32	s8, s8
    7bfc: ee13 1a10    	vmov	r1, s6
    7c00: ee14 2a10    	vmov	r2, s8
    7c04: bfa8         	it	ge
    7c06: 4611         	movge	r1, r2
    7c08: ee02 1a10    	vmov	s4, r1
    7c0c: eb08 51c1    	add.w	r1, r8, r1, lsl #23
    7c10: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    7c14: ee02 1a68    	vmls.f32	s2, s4, s17
    7c18: ee36 2a4d    	vsub.f32	s4, s12, s26
    7c1c: ee82 2a07    	vdiv.f32	s4, s4, s14
    7c20: ee21 1a0f    	vmul.f32	s2, s2, s30
    7c24: eef4 9a41    	vcmp.f32	s19, s2
    7c28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c2c: fe39 1a81    	vselgt.f32	s2, s19, s2
    7c30: eeb4 1a6a    	vcmp.f32	s2, s21
    7c34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c38: eeb4 aa42    	vcmp.f32	s20, s4
    7c3c: fe3a 1a81    	vselgt.f32	s2, s21, s2
    7c40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c44: fe3a 2a02    	vselgt.f32	s4, s20, s4
    7c48: ee21 1a2b    	vmul.f32	s2, s2, s23
    7c4c: eeb4 2a4b    	vcmp.f32	s4, s22
    7c50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c54: eebd 1ac1    	vcvt.s32.f32	s2, s2
    7c58: fe3b 2a02    	vselgt.f32	s4, s22, s4
    7c5c: ee22 3a20    	vmul.f32	s6, s4, s1
    7c60: ee33 4a23    	vadd.f32	s8, s6, s7
    7c64: eeb5 3a40    	vcmp.f32	s6, #0
    7c68: ee33 5a0f    	vadd.f32	s10, s6, s30
    7c6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7c70: eebd 4ac4    	vcvt.s32.f32	s8, s8
    7c74: eebd 5ac5    	vcvt.s32.f32	s10, s10
    7c78: ee14 2a10    	vmov	r2, s8
    7c7c: ee15 3a10    	vmov	r3, s10
    7c80: bfa8         	it	ge
    7c82: 461a         	movge	r2, r3
    7c84: f845 6c08    	str	r6, [r5, #-8]
    7c88: ee03 2a10    	vmov	s6, r2
    7c8c: ed05 1a01    	vstr	s2, [r5, #-4]
    7c90: ed9f 5b65    	vldr	d5, [pc, #404]          @ 0x7e28 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d0>
    7c94: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    7c98: ee03 2a68    	vmls.f32	s4, s6, s17
    7c9c: ee22 2a0f    	vmul.f32	s4, s4, s30
    7ca0: eef4 9a42    	vcmp.f32	s19, s4
    7ca4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ca8: fe39 2a82    	vselgt.f32	s4, s19, s4
    7cac: eeb4 2a6a    	vcmp.f32	s4, s21
    7cb0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7cb4: fe3a 2a82    	vselgt.f32	s4, s21, s4
    7cb8: ee22 1a2b    	vmul.f32	s2, s4, s23
    7cbc: ed95 2a00    	vldr	s4, [r5]
    7cc0: ed95 3a00    	vldr	s6, [r5]
    7cc4: f845 6c08    	str	r6, [r5, #-8]
    7cc8: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    7ccc: eebd 1ac1    	vcvt.s32.f32	s2, s2
    7cd0: ed05 1a01    	vstr	s2, [r5, #-4]
    7cd4: eeb8 2ac2    	vcvt.f32.s32	s4, s4
    7cd8: ee23 1a2e    	vmul.f32	s2, s6, s29
    7cdc: ed95 3a00    	vldr	s6, [r5]
    7ce0: ed95 4a00    	vldr	s8, [r5]
    7ce4: eeb8 3ac3    	vcvt.f32.s32	s6, s6
    7ce8: eeb8 4ac4    	vcvt.f32.s32	s8, s8
    7cec: ee02 1a2e    	vmla.f32	s2, s4, s29
    7cf0: ee24 2a2e    	vmul.f32	s4, s8, s29
    7cf4: ee03 2a2e    	vmla.f32	s4, s6, s29
    7cf8: ee03 1a10    	vmov	s6, r1
    7cfc: eb08 51c2    	add.w	r1, r8, r2, lsl #23
    7d00: ee04 1a10    	vmov	s8, r1
    7d04: ee31 1a01    	vadd.f32	s2, s2, s2
    7d08: ee32 2a02    	vadd.f32	s4, s4, s4
    7d0c: ee21 8a03    	vmul.f32	s16, s2, s6
    7d10: eeb7 1acd    	vcvt.f64.f32	d1, s26
    7d14: ee22 9a04    	vmul.f32	s18, s4, s8
    7d18: eeb0 2b4c    	vmov.f64	d2, d12
    7d1c: ee01 2b05    	vmla.f64	d2, d1, d5
    7d20: ee38 1a49    	vsub.f32	s2, s16, s18
    7d24: eef7 dbc2    	vcvt.f32.f64	s27, d2
    7d28: ee51 da26    	vnmls.f32	s27, s2, s13
    7d2c: ee1d 1a90    	vmov	r1, s27
    7d30: f021 4100    	bic	r1, r1, #0x80000000
    7d34: f1b1 4fff    	cmp.w	r1, #0x7f800000
    7d38: f6bf af36    	bge.w	0x7ba8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x350> @ imm = #-0x194
    7d3c: ed9f 1a3f    	vldr	s2, [pc, #252]          @ 0x7e3c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e4>
    7d40: ee8d 1a81    	vdiv.f32	s2, s27, s2
    7d44: ed9f 2a3e    	vldr	s4, [pc, #248]          @ 0x7e40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e8>
    7d48: eeb0 1ac1    	vabs.f32	s2, s2
    7d4c: fe81 ea02    	vmaxnm.f32	s28, s2, s4
    7d50: eeb4 ea64    	vcmp.f32	s28, s9
    7d54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7d58: f57f af26    	bpl.w	0x7ba8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x350> @ imm = #-0x1b4
    7d5c: 9802         	ldr	r0, [sp, #0x8]
    7d5e: 2134         	movs	r1, #0x34
    7d60: ed80 da00    	vstr	s26, [r0]
    7d64: a805         	add	r0, sp, #0x14
    7d66: f005 feb8    	bl	0xdada <__aeabi_memclr4> @ imm = #0x5d70
    7d6a: ed9f 6a33    	vldr	s12, [pc, #204]         @ 0x7e38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5e0>
    7d6e: f1b9 0f10    	cmp.w	r9, #0x10
    7d72: ed9f 5a2f    	vldr	s10, [pc, #188]         @ 0x7e30 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5d8>
    7d76: f8dd c004    	ldr.w	r12, [sp, #0x4]
    7d7a: f04f 0100    	mov.w	r1, #0x0
    7d7e: ed9f 2a31    	vldr	s4, [pc, #196]          @ 0x7e44 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5ec>
    7d82: f10d 0e48    	add.w	lr, sp, #0x48
    7d86: d00d         	beq	0x7da4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x54c> @ imm = #0x1a
    7d88: ee38 1a09    	vadd.f32	s2, s16, s18
    7d8c: eef0 fa4d    	vmov.f32	s31, s26
    7d90: eeb1 0a6d    	vneg.f32	s0, s27
    7d94: 4650         	mov	r0, r10
    7d96: f1bb 0f10    	cmp.w	r11, #0x10
    7d9a: f104 0401    	add.w	r4, r4, #0x1
    7d9e: 46da         	mov	r10, r11
    7da0: f77f ae6e    	ble.w	0x7a80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x228> @ imm = #-0x324
    7da4: f64d 3088    	movw	r0, #0xdb88
    7da8: f64d 32b0    	movw	r2, #0xdbb0
    7dac: f2c0 0000    	movt	r0, #0x0
    7db0: f2c0 0200    	movt	r2, #0x0
    7db4: 2128         	movs	r1, #0x28
    7db6: f003 f85c    	bl	0xae72 <core::panicking::panic> @ imm = #0x30b8
    7dba: bf00         	nop
    7dbc: bf00         	nop
    7dbe: bf00         	nop
    7dc0: eef4 4a67    	vcmp.f32	s9, s15
    7dc4: 3401         	adds	r4, #0x1
    7dc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7dca: f04f 0000    	mov.w	r0, #0x0
    7dce: 9903         	ldr	r1, [sp, #0xc]
    7dd0: d809         	bhi	0x7de6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x58e> @ imm = #0x12
    7dd2: eeb0 0ac0    	vabs.f32	s0, s0
    7dd6: ed9f 1a1e    	vldr	s2, [pc, #120]          @ 0x7e50 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x5f8>
    7dda: eeb4 0a41    	vcmp.f32	s0, s2
    7dde: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7de2: bf98         	it	ls
    7de4: 2001         	movls	r0, #0x1
    7de6: edc1 4a00    	vstr	s9, [r1]
    7dea: 710c         	strb	r4, [r1, #0x4]
    7dec: 7148         	strb	r0, [r1, #0x5]
    7dee: b01e         	add	sp, #0x78
    7df0: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    7df4: b001         	add	sp, #0x4
    7df6: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    7dfa: bdf0         	pop	{r4, r5, r6, r7, pc}
    7dfc: bf00         	nop
    7dfe: bf00         	nop
    7e00: 9903         	ldr	r1, [sp, #0xc]
    7e02: 9804         	ldr	r0, [sp, #0x10]
    7e04: 7108         	strb	r0, [r1, #0x4]
    7e06: 2000         	movs	r0, #0x0
    7e08: ed81 ea00    	vstr	s28, [r1]
    7e0c: e7ee         	b	0x7dec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x594> @ imm = #-0x24
    7e0e: bf00         	nop
    7e10: 2000         	movs	r0, #0x0
    7e12: 9903         	ldr	r1, [sp, #0xc]
    7e14: e7e7         	b	0x7de6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 0>+0x58e> @ imm = #-0x32
    7e16: bf00         	nop
    7e18: 00 00 80 7f  	.word	0x7f800000
    7e1c: 0a d7 23 3c  	.word	0x3c23d70a
    7e20: 00 00 00 00  	.word	0x00000000
    7e24: 00 bf 00 bf  	.word	0xbf00bf00
    7e28: 80 e5 70 28  	.word	0x2870e580
    7e2c: a1 3a 03 bf  	.word	0xbf033aa1
    7e30: f5 4a 39 3d  	.word	0x3d394af5
    7e34: 3b aa b8 3f  	.word	0x3fb8aa3b
    7e38: 77 cc 2b 31  	.word	0x312bcc77
    7e3c: 0a d7 23 3c  	.word	0x3c23d70a
    7e40: 00 00 00 00  	.word	0x00000000
    7e44: 09 d5 19 38  	.word	0x3819d509
    7e48: 17 b7 d1 38  	.word	0x38d1b717
    7e4c: bd 37 06 36  	.word	0x360637bd
    7e50: ac c5 a7 37  	.word	0x37a7c5ac
    7e54: d4 d4 d4 d4  	.word	0xd4d4d4d4

00007e58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>>:
    7e58: b5f0         	push	{r4, r5, r6, r7, lr}
    7e5a: af03         	add	r7, sp, #0xc
    7e5c: e92d 0f00    	push.w	{r8, r9, r10, r11}
    7e60: b081         	sub	sp, #0x4
    7e62: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    7e66: b092         	sub	sp, #0x48
    7e68: ed9f 3ae4    	vldr	s6, [pc, #912]          @ 0x81fc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3a4>
    7e6c: ee22 2a03    	vmul.f32	s4, s4, s6
    7e70: ed9f 3ae3    	vldr	s6, [pc, #908]          @ 0x8200 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3a8>
    7e74: ed9f 4ae3    	vldr	s8, [pc, #908]          @ 0x8204 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3ac>
    7e78: ed9f 5ae3    	vldr	s10, [pc, #908]         @ 0x8208 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3b0>
    7e7c: ee32 3a03    	vadd.f32	s6, s4, s6
    7e80: ee32 4a04    	vadd.f32	s8, s4, s8
    7e84: ee83 aa05    	vdiv.f32	s20, s6, s10
    7e88: ee84 ba05    	vdiv.f32	s22, s8, s10
    7e8c: eeb4 aa4b    	vcmp.f32	s20, s22
    7e90: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7e94: f200 839c    	bhi.w	0x85d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x778> @ imm = #0x738
    7e98: eeb0 9b40    	vmov.f64	d9, d0
    7e9c: 2300         	movs	r3, #0x0
    7e9e: ed91 0a00    	vldr	s0, [r1]
    7ea2: 9101         	str	r1, [sp, #0x4]
    7ea4: ed8d 0a02    	vstr	s0, [sp, #8]
    7ea8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    7eac: eeb0 8b41    	vmov.f64	d8, d1
    7eb0: edd1 aa01    	vldr	s21, [r1, #4]
    7eb4: eeb7 eac2    	vcvt.f64.f32	d14, s4
    7eb8: 2100         	movs	r1, #0x0
    7eba: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0x8270 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x418>
    7ebe: eeb7 da00    	vmov.f32	s26, #1.000000e+00
    7ec2: eddf dac8    	vldr	s27, [pc, #800]         @ 0x81e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x38c>
    7ec6: ee00 8b01    	vmla.f64	d8, d0, d1
    7eca: eeb7 0aea    	vcvt.f64.f32	d0, s21
    7ece: ed9f 3b6e    	vldr	d3, [pc, #440]          @ 0x8088 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x230>
    7ed2: eeb0 1b48    	vmov.f64	d1, d8
    7ed6: eeb0 2b4e    	vmov.f64	d2, d14
    7eda: ee00 1b03    	vmla.f64	d1, d0, d3
    7ede: ed9f 3b6c    	vldr	d3, [pc, #432]          @ 0x8090 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x238>
    7ee2: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    7ee6: ed9f 4b6c    	vldr	d4, [pc, #432]          @ 0x8098 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x240>
    7eea: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    7eee: ed9f cb6c    	vldr	d12, [pc, #432]         @ 0x80a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x248>
    7ef2: ee01 2b03    	vmla.f64	d2, d1, d3
    7ef6: eeb0 3b49    	vmov.f64	d3, d9
    7efa: ed9f 1b6b    	vldr	d1, [pc, #428]          @ 0x80a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x250>
    7efe: ee82 1b01    	vdiv.f64	d1, d2, d1
    7f02: ee00 3b04    	vmla.f64	d3, d0, d4
    7f06: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    7f0a: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    7f0e: eeb4 aa41    	vcmp.f32	s20, s2
    7f12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f16: bf48         	it	mi
    7f18: 2301         	movmi	r3, #0x1
    7f1a: fe3a 2a01    	vselgt.f32	s4, s20, s2
    7f1e: eeb0 5ac0    	vabs.f32	s10, s0
    7f22: ed9f 0ab1    	vldr	s0, [pc, #708]          @ 0x81e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    7f26: eeb4 2a4b    	vcmp.f32	s4, s22
    7f2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f2e: eeb4 ba41    	vcmp.f32	s22, s2
    7f32: ed9f 1bd1    	vldr	d1, [pc, #836]          @ 0x8278 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x420>
    7f36: fe3b 7a02    	vselgt.f32	s14, s22, s4
    7f3a: eeb0 2a40    	vmov.f32	s4, s0
    7f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f42: eeb4 1b43    	vcmp.f64	d1, d3
    7f46: eebf 1a00    	vmov.f32	s2, #-1.000000e+00
    7f4a: bfc8         	it	gt
    7f4c: 2101         	movgt	r1, #0x1
    7f4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f52: eeb4 3b4c    	vcmp.f64	d3, d12
    7f56: eeb0 3a40    	vmov.f32	s6, s0
    7f5a: fe31 1a00    	vselgt.f32	s2, s2, s0
    7f5e: 400b         	ands	r3, r1
    7f60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f64: eeb4 5a6d    	vcmp.f32	s10, s27
    7f68: fe3d 4a01    	vselgt.f32	s8, s26, s2
    7f6c: eeb0 1a40    	vmov.f32	s2, s0
    7f70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f74: f280 80c7    	bge.w	0x8106 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2ae> @ imm = #0x18e
    7f78: ed9f 0a9c    	vldr	s0, [pc, #624]          @ 0x81ec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x394>
    7f7c: eeb4 5a40    	vcmp.f32	s10, s0
    7f80: ed9f 1a99    	vldr	s2, [pc, #612]          @ 0x81e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    7f84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f88: d912         	bls	0x7fb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x158> @ imm = #0x24
    7f8a: ed9f 0a99    	vldr	s0, [pc, #612]          @ 0x81f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x398>
    7f8e: eeb4 5a40    	vcmp.f32	s10, s0
    7f92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7f96: d913         	bls	0x7fc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x168> @ imm = #0x26
    7f98: ed9f 0a96    	vldr	s0, [pc, #600]          @ 0x81f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x39c>
    7f9c: ee35 2a00    	vadd.f32	s4, s10, s0
    7fa0: ed9f 3a95    	vldr	s6, [pc, #596]          @ 0x81f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3a0>
    7fa4: eeb0 0a08    	vmov.f32	s0, #3.000000e+00
    7fa8: e012         	b	0x7fd0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x178> @ imm = #0x24
    7faa: bf00         	nop
    7fac: bf00         	nop
    7fae: bf00         	nop
    7fb0: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    7fb4: eeb0 3a41    	vmov.f32	s6, s2
    7fb8: e00e         	b	0x7fd8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x180> @ imm = #0x1c
    7fba: bf00         	nop
    7fbc: bf00         	nop
    7fbe: bf00         	nop
    7fc0: ed9f 0ae8    	vldr	s0, [pc, #928]          @ 0x8364 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x50c>
    7fc4: ee35 2a00    	vadd.f32	s4, s10, s0
    7fc8: eeb7 0a08    	vmov.f32	s0, #1.500000e+00
    7fcc: ed9f 3ae6    	vldr	s6, [pc, #920]          @ 0x8368 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x510>
    7fd0: ee02 0a03    	vmla.f32	s0, s4, s6
    7fd4: ee24 3a03    	vmul.f32	s6, s8, s6
    7fd8: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    7fdc: ee32 0a40    	vsub.f32	s0, s4, s0
    7fe0: fe80 2a01    	vmaxnm.f32	s4, s0, s2
    7fe4: eeb1 0a43    	vneg.f32	s0, s6
    7fe8: eeb5 2a40    	vcmp.f32	s4, #0
    7fec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ff0: d942         	bls	0x8078 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x220> @ imm = #0x84
    7ff2: eeb0 1ac7    	vabs.f32	s2, s14
    7ff6: eeb4 1a42    	vcmp.f32	s2, s4
    7ffa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    7ffe: d957         	bls	0x80b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x258> @ imm = #0xae
    8000: ee82 3a01    	vdiv.f32	s6, s4, s2
    8004: ee23 1a03    	vmul.f32	s2, s6, s6
    8008: ee21 1a01    	vmul.f32	s2, s2, s2
    800c: ee21 1a01    	vmul.f32	s2, s2, s2
    8010: ee21 4a01    	vmul.f32	s8, s2, s2
    8014: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    8018: ee34 5a01    	vadd.f32	s10, s8, s2
    801c: eeb0 6a41    	vmov.f32	s12, s2
    8020: eeb4 5a41    	vcmp.f32	s10, s2
    8024: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8028: d009         	beq	0x803e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x1e6> @ imm = #0x12
    802a: eeb0 6a45    	vmov.f32	s12, s10
    802e: eeb1 6ac6    	vsqrt.f32	s12, s12
    8032: eeb1 6ac6    	vsqrt.f32	s12, s12
    8036: eeb1 6ac6    	vsqrt.f32	s12, s12
    803a: eeb1 6ac6    	vsqrt.f32	s12, s12
    803e: ee81 1a06    	vdiv.f32	s2, s2, s12
    8042: eeb4 7a47    	vcmp.f32	s14, s14
    8046: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    804a: ee81 5a05    	vdiv.f32	s10, s2, s10
    804e: f180 82cf    	bvs.w	0x85f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x798> @ imm = #0x59e
    8052: ee17 1a10    	vmov	r1, s14
    8056: f04f 557e    	mov.w	r5, #0x3f800000
    805a: f365 011e    	bfi	r1, r5, #0, #31
    805e: ee06 1a10    	vmov	s12, r1
    8062: ee26 2a02    	vmul.f32	s4, s12, s4
    8066: ee22 1a01    	vmul.f32	s2, s4, s2
    806a: ee26 2a05    	vmul.f32	s4, s12, s10
    806e: ee23 3a04    	vmul.f32	s6, s6, s8
    8072: ee23 3a05    	vmul.f32	s6, s6, s10
    8076: e046         	b	0x8106 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2ae> @ imm = #0x8c
    8078: eeb0 3a41    	vmov.f32	s6, s2
    807c: eeb0 2a41    	vmov.f32	s4, s2
    8080: e041         	b	0x8106 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2ae> @ imm = #0x82
    8082: bf00         	nop
    8084: bf00         	nop
    8086: bf00         	nop
    8088: 1f 89 9b cf  	.word	0xcf9b891f
    808c: ab 32 9c bf  	.word	0xbf9c32ab
    8090: 91 d4 a8 53  	.word	0x53a8d491
    8094: ec f7 77 41  	.word	0x4177f7ec
    8098: 00 f0 e6 61  	.word	0x61e6f000
    809c: 55 15 14 bf  	.word	0xbf141555
    80a0: 00 00 00 00  	.word	0x00000000
    80a4: 00 00 90 36  	.word	0x36900000
    80a8: a7 2a 45 4f  	.word	0x4f452aa7
    80ac: ed 97 01 41  	.word	0x410197ed
    80b0: ee87 1a02    	vdiv.f32	s2, s14, s4
    80b4: eeb7 4a00    	vmov.f32	s8, #1.000000e+00
    80b8: ee21 1a01    	vmul.f32	s2, s2, s2
    80bc: eeb0 5a44    	vmov.f32	s10, s8
    80c0: ee21 1a01    	vmul.f32	s2, s2, s2
    80c4: ee21 1a01    	vmul.f32	s2, s2, s2
    80c8: ee21 1a01    	vmul.f32	s2, s2, s2
    80cc: ee31 3a04    	vadd.f32	s6, s2, s8
    80d0: eeb4 3a44    	vcmp.f32	s6, s8
    80d4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    80d8: d009         	beq	0x80ee <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x296> @ imm = #0x12
    80da: eeb0 5a43    	vmov.f32	s10, s6
    80de: eeb1 5ac5    	vsqrt.f32	s10, s10
    80e2: eeb1 5ac5    	vsqrt.f32	s10, s10
    80e6: eeb1 5ac5    	vsqrt.f32	s10, s10
    80ea: eeb1 5ac5    	vsqrt.f32	s10, s10
    80ee: ee84 4a05    	vdiv.f32	s8, s8, s10
    80f2: ee27 1a01    	vmul.f32	s2, s14, s2
    80f6: ee84 3a03    	vdiv.f32	s6, s8, s6
    80fa: ee81 2a02    	vdiv.f32	s4, s2, s4
    80fe: ee27 1a04    	vmul.f32	s2, s14, s8
    8102: ee22 2a03    	vmul.f32	s4, s4, s6
    8106: 2b00         	cmp	r3, #0x0
    8108: ee3a 1ac1    	vsub.f32	s2, s21, s2
    810c: ed9f 4aca    	vldr	s8, [pc, #808]          @ 0x8438 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5e0>
    8110: ee20 0a02    	vmul.f32	s0, s0, s4
    8114: ed9f 5ac9    	vldr	s10, [pc, #804]         @ 0x843c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5e4>
    8118: ed8d 7a05    	vstr	s14, [sp, #20]
    811c: fe05 4a04    	vseleq.f32	s8, s10, s8
    8120: ee11 1a10    	vmov	r1, s2
    8124: ed9f 5ac6    	vldr	s10, [pc, #792]         @ 0x8440 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5e8>
    8128: e9cd 2003    	strd	r2, r0, [sp, #12]
    812c: ee24 2a03    	vmul.f32	s4, s8, s6
    8130: ed9f 3ac4    	vldr	s6, [pc, #784]          @ 0x8444 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5ec>
    8134: ee20 0a03    	vmul.f32	s0, s0, s6
    8138: f021 4100    	bic	r1, r1, #0x80000000
    813c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    8140: db02         	blt	0x8148 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x2f0> @ imm = #0x4
    8142: ed9f fac1    	vldr	s30, [pc, #772]         @ 0x8448 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5f0>
    8146: e009         	b	0x815c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x304> @ imm = #0x12
    8148: eeb2 3a0e    	vmov.f32	s6, #1.500000e+01
    814c: ed9f 4a26    	vldr	s8, [pc, #152]          @ 0x81e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    8150: ee81 3a03    	vdiv.f32	s6, s2, s6
    8154: eeb0 3ac3    	vabs.f32	s6, s6
    8158: fe83 fa04    	vmaxnm.f32	s30, s6, s8
    815c: ee02 0a05    	vmla.f32	s0, s4, s10
    8160: eef2 ba0e    	vmov.f32	s23, #1.500000e+01
    8164: eeb1 3a41    	vneg.f32	s6, s2
    8168: a809         	add	r0, sp, #0x24
    816a: f04f 0b00    	mov.w	r11, #0x0
    816e: 1d04         	adds	r4, r0, #0x4
    8170: f04f 0800    	mov.w	r8, #0x0
    8174: a906         	add	r1, sp, #0x18
    8176: eddf fa1c    	vldr	s31, [pc, #112]         @ 0x81e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x390>
    817a: f04f 557e    	mov.w	r5, #0x3f800000
    817e: 2600         	movs	r6, #0x0
    8180: 46da         	mov	r10, r11
    8182: ee30 0a0d    	vadd.f32	s0, s0, s26
    8186: 2201         	movs	r2, #0x1
    8188: ed8d 3a06    	vstr	s6, [sp, #24]
    818c: f1bb 0f10    	cmp.w	r11, #0x10
    8190: f8cd 8020    	str.w	r8, [sp, #0x20]
    8194: 4689         	mov	r9, r1
    8196: f8cd 801c    	str.w	r8, [sp, #0x1c]
    819a: ed8d 0a09    	vstr	s0, [sp, #36]
    819e: e9c4 8800    	strd	r8, r8, [r4]
    81a2: e9c4 8802    	strd	r8, r8, [r4, #8]
    81a6: e9c4 8804    	strd	r8, r8, [r4, #16]
    81aa: f8c4 8018    	str.w	r8, [r4, #0x18]
    81ae: bf18         	it	ne
    81b0: f10a 0a01    	addne.w	r10, r10, #0x1
    81b4: f8c4 801c    	str.w	r8, [r4, #0x1c]
    81b8: f005 f982    	bl	0xd4c0 <orange_dsp::condensed::solve> @ imm = #0x5304
    81bc: 2800         	cmp	r0, #0x0
    81be: f000 81f7    	beq.w	0x85b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x758> @ imm = #0x3ee
    81c2: ed9f 0ae7    	vldr	s0, [pc, #924]          @ 0x8560 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x708>
    81c6: eeb4 fa40    	vcmp.f32	s30, s0
    81ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    81ce: d91f         	bls	0x8210 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x3b8> @ imm = #0x3e
    81d0: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    81d4: f1bb 0f10    	cmp.w	r11, #0x10
    81d8: f000 81f2    	beq.w	0x85c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x768> @ imm = #0x3e4
    81dc: ed9d 0a06    	vldr	s0, [sp, #24]
    81e0: e043         	b	0x826a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x412> @ imm = #0x86
    81e2: bf00         	nop
    81e4: 0a d7 23 3d  	.word	0x3d23d70a
    81e8: 00 00 00 00  	.word	0x00000000
    81ec: 7c f2 b0 3a  	.word	0x3ab0f27c
    81f0: a6 9b c4 3b  	.word	0x3bc49ba6
    81f4: a6 9b c4 bb  	.word	0xbbc49ba6
    81f8: 79 78 b0 43  	.word	0x43b07879
    81fc: 00 80 bb 47  	.word	0x47bb8000
    8200: 00 24 74 cb  	.word	0xcb742400
    8204: 00 24 74 4b  	.word	0x4b742400
    8208: 00 a0 0c 48  	.word	0x480ca000
    820c: 00 bf 00 bf  	.word	0xbf00bf00
    8210: eeb0 0aea    	vabs.f32	s0, s21
    8214: ed9f 1ae8    	vldr	s2, [pc, #928]          @ 0x85b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x760>
    8218: eeff 7a00    	vmov.f32	s15, #-1.000000e+00
    821c: 2000         	movs	r0, #0x0
    821e: eeb4 0a40    	vcmp.f32	s0, s0
    8222: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8226: fe1d 0a00    	vselvs.f32	s0, s26, s0
    822a: eeb4 0a4d    	vcmp.f32	s0, s26
    822e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8232: fe30 0a0d    	vselgt.f32	s0, s0, s26
    8236: ee20 0a01    	vmul.f32	s0, s0, s2
    823a: ed9f 1aeb    	vldr	s2, [pc, #940]          @ 0x85e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x790>
    823e: fe80 1a41    	vminnm.f32	s2, s0, s2
    8242: ed9d 0a06    	vldr	s0, [sp, #24]
    8246: eeb0 2ac0    	vabs.f32	s4, s0
    824a: eeb4 2a41    	vcmp.f32	s4, s2
    824e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8252: bf98         	it	ls
    8254: 2001         	movls	r0, #0x1
    8256: f1bb 0f10    	cmp.w	r11, #0x10
    825a: f000 81b2    	beq.w	0x85c2 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x76a> @ imm = #0x364
    825e: eeb4 2a41    	vcmp.f32	s4, s2
    8262: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8266: f240 81ac    	bls.w	0x85c2 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x76a> @ imm = #0x358
    826a: f04f 507e    	mov.w	r0, #0x3f800000
    826e: e00d         	b	0x828c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x434> @ imm = #0x1a
    8270: a2 0c d2 2e  	.word	0x2ed20ca2
    8274: ca fe ef 3f  	.word	0x3feffeca
    8278: 00 00 00 00  	.word	0x00000000
    827c: 00 00 90 b6  	.word	0xb6900000
    8280: f5a0 0000    	sub.w	r0, r0, #0x800000
    8284: f1b0 5f66    	cmp.w	r0, #0x39800000
    8288: f000 816e    	beq.w	0x8568 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x710> @ imm = #0x2dc
    828c: ee02 0a10    	vmov	s4, r0
    8290: eeb0 1a6a    	vmov.f32	s2, s21
    8294: ed9f 4bda    	vldr	d4, [pc, #872]          @ 0x8600 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7a8>
    8298: eeb0 3b48    	vmov.f64	d3, d8
    829c: eef0 0a6f    	vmov.f32	s1, s31
    82a0: ee00 1a02    	vmla.f32	s2, s0, s4
    82a4: ed9f 5bda    	vldr	d5, [pc, #872]          @ 0x8610 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7b8>
    82a8: eeb0 6b49    	vmov.f64	d6, d9
    82ac: eeb0 7a6f    	vmov.f32	s14, s31
    82b0: eeb7 2ac1    	vcvt.f64.f32	d2, s2
    82b4: ee02 3b04    	vmla.f64	d3, d2, d4
    82b8: eeb0 4b4e    	vmov.f64	d4, d14
    82bc: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    82c0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    82c4: ee03 4b05    	vmla.f64	d4, d3, d5
    82c8: ed9f 3bd3    	vldr	d3, [pc, #844]          @ 0x8618 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7c0>
    82cc: ee84 3b03    	vdiv.f64	d3, d4, d3
    82d0: ed9f 5bcd    	vldr	d5, [pc, #820]          @ 0x8608 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7b0>
    82d4: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    82d8: ee02 6b05    	vmla.f64	d6, d2, d5
    82dc: eeb4 aa43    	vcmp.f32	s20, s6
    82e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82e4: eeb7 5bc6    	vcvt.f32.f64	s10, d6
    82e8: fe3a 4a03    	vselgt.f32	s8, s20, s6
    82ec: eeb0 5ac5    	vabs.f32	s10, s10
    82f0: eeb4 4a4b    	vcmp.f32	s8, s22
    82f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    82f8: fe3b 2a04    	vselgt.f32	s4, s22, s8
    82fc: ed9f 4bc8    	vldr	d4, [pc, #800]          @ 0x8620 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7c8>
    8300: eeb4 4b46    	vcmp.f64	d4, d6
    8304: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8308: eeb4 6b4c    	vcmp.f64	d6, d12
    830c: eeb0 6a6f    	vmov.f32	s12, s31
    8310: fe37 4aaf    	vselgt.f32	s8, s15, s31
    8314: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8318: eeb4 5a6d    	vcmp.f32	s10, s27
    831c: fe7d 1a04    	vselgt.f32	s3, s26, s8
    8320: eeb0 4a6f    	vmov.f32	s8, s31
    8324: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8328: f280 80be    	bge.w	0x84a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x650> @ imm = #0x17c
    832c: ed9f 4abe    	vldr	s8, [pc, #760]          @ 0x8628 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7d0>
    8330: eeb0 6a6f    	vmov.f32	s12, s31
    8334: eeb4 5a44    	vcmp.f32	s10, s8
    8338: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    833c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8340: d922         	bls	0x8388 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x530> @ imm = #0x44
    8342: ed9f 4aba    	vldr	s8, [pc, #744]          @ 0x862c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7d4>
    8346: eeb4 5a44    	vcmp.f32	s10, s8
    834a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    834e: d90f         	bls	0x8370 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x518> @ imm = #0x1e
    8350: ed9f 4ab9    	vldr	s8, [pc, #740]          @ 0x8638 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e0>
    8354: ee35 5a04    	vadd.f32	s10, s10, s8
    8358: eeb0 4a08    	vmov.f32	s8, #3.000000e+00
    835c: ed9f 6ab7    	vldr	s12, [pc, #732]         @ 0x863c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e4>
    8360: e00e         	b	0x8380 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x528> @ imm = #0x1c
    8362: bf00         	nop
    8364: 7c f2 b0 ba  	.word	0xbab0f27c
    8368: 53 4a a1 43  	.word	0x43a14a53
    836c: 00 bf 00 bf  	.word	0xbf00bf00
    8370: ed9f 4aaf    	vldr	s8, [pc, #700]          @ 0x8630 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7d8>
    8374: ee35 5a04    	vadd.f32	s10, s10, s8
    8378: eeb7 4a08    	vmov.f32	s8, #1.500000e+00
    837c: ed9f 6aad    	vldr	s12, [pc, #692]         @ 0x8634 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7dc>
    8380: ee05 4a06    	vmla.f32	s8, s10, s12
    8384: ee21 6a86    	vmul.f32	s12, s3, s12
    8388: ee3b 4ac4    	vsub.f32	s8, s23, s8
    838c: fe84 5a2f    	vmaxnm.f32	s10, s8, s31
    8390: eeb1 4a46    	vneg.f32	s8, s12
    8394: eeb5 5a40    	vcmp.f32	s10, #0
    8398: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    839c: d944         	bls	0x8428 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5d0> @ imm = #0x88
    839e: eeb0 6ac2    	vabs.f32	s12, s4
    83a2: eeb4 6a45    	vcmp.f32	s12, s10
    83a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83aa: d951         	bls	0x8450 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x5f8> @ imm = #0xa2
    83ac: ee85 7a06    	vdiv.f32	s14, s10, s12
    83b0: eef0 0a4d    	vmov.f32	s1, s26
    83b4: ee27 6a07    	vmul.f32	s12, s14, s14
    83b8: ee26 6a06    	vmul.f32	s12, s12, s12
    83bc: ee26 6a06    	vmul.f32	s12, s12, s12
    83c0: ee66 1a06    	vmul.f32	s3, s12, s12
    83c4: ee31 6a8d    	vadd.f32	s12, s3, s26
    83c8: eeb4 6a4d    	vcmp.f32	s12, s26
    83cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83d0: d009         	beq	0x83e6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x58e> @ imm = #0x12
    83d2: eef0 0a46    	vmov.f32	s1, s12
    83d6: eef1 0ae0    	vsqrt.f32	s1, s1
    83da: eef1 0ae0    	vsqrt.f32	s1, s1
    83de: eef1 0ae0    	vsqrt.f32	s1, s1
    83e2: eef1 0ae0    	vsqrt.f32	s1, s1
    83e6: eecd 3a20    	vdiv.f32	s7, s26, s1
    83ea: eddf 0a95    	vldr	s1, [pc, #596]          @ 0x8640 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e8>
    83ee: eeb4 2a42    	vcmp.f32	s4, s4
    83f2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    83f6: eec3 2a86    	vdiv.f32	s5, s7, s12
    83fa: eeb0 6a60    	vmov.f32	s12, s1
    83fe: bf7f         	itttt	vc
    8400: ee12 1a10    	vmovvc	r1, s4
    8404: f365 011e    	bfivc	r1, r5, #0, #31
    8408: ee06 1a10    	vmovvc	s12, r1
    840c: ee26 5a05    	vmulvc.f32	s10, s12, s10
    8410: bf7c         	itt	vc
    8412: ee65 0a23    	vmulvc.f32	s1, s10, s7
    8416: ee26 6a22    	vmulvc.f32	s12, s12, s5
    841a: ee27 5a21    	vmul.f32	s10, s14, s3
    841e: ee25 7a22    	vmul.f32	s14, s10, s5
    8422: e041         	b	0x84a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x650> @ imm = #0x82
    8424: bf00         	nop
    8426: bf00         	nop
    8428: eef0 0a6f    	vmov.f32	s1, s31
    842c: eeb0 7a6f    	vmov.f32	s14, s31
    8430: eeb0 6a6f    	vmov.f32	s12, s31
    8434: e038         	b	0x84a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x650> @ imm = #0x70
    8436: bf00         	nop
    8438: 79 61 2e c3  	.word	0xc32e6179
    843c: 00 00 00 80  	.word	0x80000000
    8440: 5e 95 e1 bc  	.word	0xbce1955e
    8444: ab aa a0 38  	.word	0x38a0aaab
    8448: 00 00 80 7f  	.word	0x7f800000
    844c: 00 bf 00 bf  	.word	0xbf00bf00
    8450: ee82 6a05    	vdiv.f32	s12, s4, s10
    8454: eef0 0a4d    	vmov.f32	s1, s26
    8458: ee26 6a06    	vmul.f32	s12, s12, s12
    845c: ee26 6a06    	vmul.f32	s12, s12, s12
    8460: ee26 6a06    	vmul.f32	s12, s12, s12
    8464: ee26 6a06    	vmul.f32	s12, s12, s12
    8468: ee36 7a0d    	vadd.f32	s14, s12, s26
    846c: eeb4 7a4d    	vcmp.f32	s14, s26
    8470: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8474: d009         	beq	0x848a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x632> @ imm = #0x12
    8476: eef0 0a47    	vmov.f32	s1, s14
    847a: eef1 0ae0    	vsqrt.f32	s1, s1
    847e: eef1 0ae0    	vsqrt.f32	s1, s1
    8482: eef1 0ae0    	vsqrt.f32	s1, s1
    8486: eef1 0ae0    	vsqrt.f32	s1, s1
    848a: eecd 0a20    	vdiv.f32	s1, s26, s1
    848e: ee22 6a06    	vmul.f32	s12, s4, s12
    8492: ee80 7a87    	vdiv.f32	s14, s1, s14
    8496: ee86 5a05    	vdiv.f32	s10, s12, s10
    849a: ee62 0a20    	vmul.f32	s1, s4, s1
    849e: ee25 6a07    	vmul.f32	s12, s10, s14
    84a2: bf00         	nop
    84a4: bf00         	nop
    84a6: bf00         	nop
    84a8: ee31 5a60    	vsub.f32	s10, s2, s1
    84ac: ee15 1a10    	vmov	r1, s10
    84b0: f021 4100    	bic	r1, r1, #0x80000000
    84b4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    84b8: f6bf aee2    	bge.w	0x8280 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x428> @ imm = #-0x23c
    84bc: eec5 0a2b    	vdiv.f32	s1, s10, s23
    84c0: eef0 0ae0    	vabs.f32	s1, s1
    84c4: fec0 0aaf    	vmaxnm.f32	s1, s1, s31
    84c8: eef4 0a4f    	vcmp.f32	s1, s30
    84cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84d0: f57f aed6    	bpl.w	0x8280 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x428> @ imm = #-0x254
    84d4: a060         	adr	r0, #384 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x6e0>
    84d6: eeb4 ba43    	vcmp.f32	s22, s6
    84da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84de: bfc8         	it	gt
    84e0: 3004         	addgt	r0, #0x4
    84e2: eeb4 3a4a    	vcmp.f32	s6, s20
    84e6: ed9f 3a57    	vldr	s6, [pc, #348]          @ 0x8644 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7ec>
    84ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    84ee: ed90 0a00    	vldr	s0, [r0]
    84f2: 9801         	ldr	r0, [sp, #0x4]
    84f4: fe30 0a03    	vselgt.f32	s0, s0, s6
    84f8: f04f 557e    	mov.w	r5, #0x3f800000
    84fc: ed9d 3a02    	vldr	s6, [sp, #8]
    8500: ed80 3a00    	vstr	s6, [r0]
    8504: f1bb 0f10    	cmp.w	r11, #0x10
    8508: ed80 1a01    	vstr	s2, [r0, #4]
    850c: a809         	add	r0, sp, #0x24
    850e: d01b         	beq	0x8548 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x6f0> @ imm = #0x36
    8510: ee24 3a06    	vmul.f32	s6, s8, s12
    8514: eef0 aa41    	vmov.f32	s21, s2
    8518: ee20 4a07    	vmul.f32	s8, s0, s14
    851c: ed9f 0a4a    	vldr	s0, [pc, #296]          @ 0x8648 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7f0>
    8520: eeb0 fa60    	vmov.f32	s30, s1
    8524: 4649         	mov	r1, r9
    8526: ee23 0a00    	vmul.f32	s0, s6, s0
    852a: ed9f 3a48    	vldr	s6, [pc, #288]          @ 0x864c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7f4>
    852e: ee04 0a03    	vmla.f32	s0, s8, s6
    8532: f1ba 0f10    	cmp.w	r10, #0x10
    8536: eeb1 3a45    	vneg.f32	s6, s10
    853a: f106 0601    	add.w	r6, r6, #0x1
    853e: 46d3         	mov	r11, r10
    8540: ed8d 2a05    	vstr	s4, [sp, #20]
    8544: f77f ae1d    	ble.w	0x8182 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x32a> @ imm = #-0x3c6
    8548: f64d 3088    	movw	r0, #0xdb88
    854c: f64d 32b0    	movw	r2, #0xdbb0
    8550: f2c0 0000    	movt	r0, #0x0
    8554: f2c0 0200    	movt	r2, #0x0
    8558: 2128         	movs	r1, #0x28
    855a: f002 fc8a    	bl	0xae72 <core::panicking::panic> @ imm = #0x2914
    855e: bf00         	nop
    8560: 17 b7 d1 38  	.word	0x38d1b717
    8564: 00 bf 00 bf  	.word	0xbf00bf00
    8568: ed9f 1a39    	vldr	s2, [pc, #228]          @ 0x8650 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7f8>
    856c: 3601         	adds	r6, #0x1
    856e: eeb4 fa41    	vcmp.f32	s30, s2
    8572: 2000         	movs	r0, #0x0
    8574: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8578: e9dd 2103    	ldrd	r2, r1, [sp, #12]
    857c: ed9d 1a05    	vldr	s2, [sp, #20]
    8580: d809         	bhi	0x8596 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x73e> @ imm = #0x12
    8582: eeb0 0ac0    	vabs.f32	s0, s0
    8586: ed9f 2a33    	vldr	s4, [pc, #204]          @ 0x8654 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7fc>
    858a: eeb4 0a42    	vcmp.f32	s0, s4
    858e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8592: bf98         	it	ls
    8594: 2001         	movls	r0, #0x1
    8596: ed82 1a00    	vstr	s2, [r2]
    859a: ed81 fa00    	vstr	s30, [r1]
    859e: 710e         	strb	r6, [r1, #0x4]
    85a0: 7148         	strb	r0, [r1, #0x5]
    85a2: b012         	add	sp, #0x48
    85a4: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    85a8: b001         	add	sp, #0x4
    85aa: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    85ae: bdf0         	pop	{r4, r5, r6, r7, pc}
    85b0: 9904         	ldr	r1, [sp, #0x10]
    85b2: 2000         	movs	r0, #0x0
    85b4: e7f1         	b	0x859a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x742> @ imm = #-0x1e
    85b6: bf00         	nop
    85b8: bd 37 06 36  	.word	0x360637bd
    85bc: 00 bf 00 bf  	.word	0xbf00bf00
    85c0: 2000         	movs	r0, #0x0
    85c2: e9dd 2103    	ldrd	r2, r1, [sp, #12]
    85c6: ed9d 1a05    	vldr	s2, [sp, #20]
    85ca: e7e4         	b	0x8596 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x73e> @ imm = #-0x38
    85cc: bf00         	nop
    85ce: bf00         	nop
    85d0: f64d 70a2    	movw	r0, #0xdfa2
    85d4: f24e 0288    	movw	r2, #0xe088
    85d8: f2c0 0000    	movt	r0, #0x0
    85dc: f2c0 0200    	movt	r2, #0x0
    85e0: a909         	add	r1, sp, #0x24
    85e2: f002 fc42    	bl	0xae6a <core::panicking::panic_fmt> @ imm = #0x2884
    85e6: bf00         	nop
    85e8: ac c5 a7 37  	.word	0x37a7c5ac
    85ec: 00 bf 00 bf  	.word	0xbf00bf00
    85f0: ed9f 2a13    	vldr	s4, [pc, #76]           @ 0x8640 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x7e8>
    85f4: eeb0 1a42    	vmov.f32	s2, s4
    85f8: e539         	b	0x806e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 1>+0x216> @ imm = #-0x58e
    85fa: bf00         	nop
    85fc: bf00         	nop
    85fe: bf00         	nop
    8600: 1f 89 9b cf  	.word	0xcf9b891f
    8604: ab 32 9c bf  	.word	0xbf9c32ab
    8608: 00 f0 e6 61  	.word	0x61e6f000
    860c: 55 15 14 bf  	.word	0xbf141555
    8610: 91 d4 a8 53  	.word	0x53a8d491
    8614: ec f7 77 41  	.word	0x4177f7ec
    8618: a7 2a 45 4f  	.word	0x4f452aa7
    861c: ed 97 01 41  	.word	0x410197ed
    8620: 00 00 00 00  	.word	0x00000000
    8624: 00 00 90 b6  	.word	0xb6900000
    8628: 7c f2 b0 3a  	.word	0x3ab0f27c
    862c: a6 9b c4 3b  	.word	0x3bc49ba6
    8630: 7c f2 b0 ba  	.word	0xbab0f27c
    8634: 53 4a a1 43  	.word	0x43a14a53
    8638: a6 9b c4 bb  	.word	0xbbc49ba6
    863c: 79 78 b0 43  	.word	0x43b07879
    8640: 00 00 c0 7f  	.word	0x7fc00000
    8644: 00 00 00 80  	.word	0x80000000
    8648: ab aa a0 38  	.word	0x38a0aaab
    864c: 5e 95 e1 bc  	.word	0xbce1955e
    8650: 17 b7 d1 38  	.word	0x38d1b717
    8654: ac c5 a7 37  	.word	0x37a7c5ac
    8658: 00 00 00 80  	.word	0x80000000
    865c: 79 61 2e c3  	.word	0xc32e6179

00008660 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>>:
    8660: b5f0         	push	{r4, r5, r6, r7, lr}
    8662: af03         	add	r7, sp, #0xc
    8664: e92d 0f00    	push.w	{r8, r9, r10, r11}
    8668: b081         	sub	sp, #0x4
    866a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    866e: b0a6         	sub	sp, #0x98
    8670: ed9f 1a9a    	vldr	s2, [pc, #616]          @ 0x88dc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x27c>
    8674: 2500         	movs	r5, #0x0
    8676: ee20 2a01    	vmul.f32	s4, s0, s2
    867a: ed9f 0a99    	vldr	s0, [pc, #612]          @ 0x88e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x280>
    867e: ed9f 1a99    	vldr	s2, [pc, #612]          @ 0x88e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x284>
    8682: 9519         	str	r5, [sp, #0x64]
    8684: ed9f 3a98    	vldr	s6, [pc, #608]          @ 0x88e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x288>
    8688: 9518         	str	r5, [sp, #0x60]
    868a: ee32 0a00    	vadd.f32	s0, s4, s0
    868e: 9515         	str	r5, [sp, #0x54]
    8690: ee32 1a01    	vadd.f32	s2, s4, s2
    8694: e9cd 5516    	strd	r5, r5, [sp, #88]
    8698: eec0 ea03    	vdiv.f32	s29, s0, s6
    869c: ee81 9a03    	vdiv.f32	s18, s2, s6
    86a0: eef4 ea49    	vcmp.f32	s29, s18
    86a4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    86a8: f200 8676    	bhi.w	0x9398 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd38> @ imm = #0xcec
    86ac: ed91 0a01    	vldr	s0, [r1, #4]
    86b0: ed8d 0a04    	vstr	s0, [sp, #16]
    86b4: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    86b8: ed91 4a02    	vldr	s8, [r1, #8]
    86bc: ed9f 1b8c    	vldr	d1, [pc, #560]          @ 0x88f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x290>
    86c0: ed8d 4a14    	vstr	s8, [sp, #80]
    86c4: 2600         	movs	r6, #0x0
    86c6: ed92 3b12    	vldr	d3, [r2, #72]
    86ca: eebf fa00    	vmov.f32	s30, #-1.000000e+00
    86ce: ee00 3b01    	vmla.f64	d3, d0, d1
    86d2: eeb7 1ac4    	vcvt.f64.f32	d1, s8
    86d6: ed91 4a03    	vldr	s8, [r1, #12]
    86da: ed9f 0b87    	vldr	d0, [pc, #540]          @ 0x88f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x298>
    86de: ed8d 4a13    	vstr	s8, [sp, #76]
    86e2: ed8d 3b10    	vstr	d3, [sp, #64]
    86e6: ee01 3b00    	vmla.f64	d3, d1, d0
    86ea: eeb7 0ac4    	vcvt.f64.f32	d0, s8
    86ee: ed9f 4b84    	vldr	d4, [pc, #528]          @ 0x8900 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2a0>
    86f2: ee00 3b04    	vmla.f64	d3, d0, d4
    86f6: eeb7 4ac2    	vcvt.f64.f32	d4, s4
    86fa: ed9f 5b83    	vldr	d5, [pc, #524]          @ 0x8908 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2a8>
    86fe: eeb7 3bc3    	vcvt.f32.f64	s6, d3
    8702: ed9f 6b83    	vldr	d6, [pc, #524]          @ 0x8910 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2b0>
    8706: eeb7 2ac3    	vcvt.f64.f32	d2, s6
    870a: eeb0 3b44    	vmov.f64	d3, d4
    870e: ee02 3b05    	vmla.f64	d3, d2, d5
    8712: ed9f 2b81    	vldr	d2, [pc, #516]          @ 0x8918 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2b8>
    8716: ee83 2b02    	vdiv.f64	d2, d3, d2
    871a: ed9f 5b81    	vldr	d5, [pc, #516]          @ 0x8920 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2c0>
    871e: eeb7 2bc2    	vcvt.f32.f64	s4, d2
    8722: ed8d 4b0e    	vstr	d4, [sp, #56]
    8726: eef4 ea42    	vcmp.f32	s29, s4
    872a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    872e: ed92 4b04    	vldr	d4, [r2, #16]
    8732: fe3e 3a82    	vselgt.f32	s6, s29, s4
    8736: ed8d 4b0c    	vstr	d4, [sp, #48]
    873a: bf48         	it	mi
    873c: 2601         	movmi	r6, #0x1
    873e: ee01 4b05    	vmla.f64	d4, d1, d5
    8742: eeb4 3a49    	vcmp.f32	s6, s18
    8746: ee00 4b06    	vmla.f64	d4, d0, d6
    874a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    874e: eeb4 9a42    	vcmp.f32	s18, s4
    8752: ed9f 2b75    	vldr	d2, [pc, #468]          @ 0x8928 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2c8>
    8756: fe39 8a03    	vselgt.f32	s16, s18, s6
    875a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    875e: eeb4 2b44    	vcmp.f64	d2, d4
    8762: bfc8         	it	gt
    8764: 2501         	movgt	r5, #0x1
    8766: ed9f 3b72    	vldr	d3, [pc, #456]          @ 0x8930 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2d0>
    876a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    876e: eeb7 2bc4    	vcvt.f32.f64	s4, d4
    8772: ea05 0506    	and.w	r5, r5, r6
    8776: eeb4 4b43    	vcmp.f64	d4, d3
    877a: ed9f 4a4c    	vldr	s8, [pc, #304]          @ 0x88ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    877e: eeb7 3a00    	vmov.f32	s6, #1.000000e+00
    8782: eeb0 7ac2    	vabs.f32	s14, s4
    8786: eeb0 5a44    	vmov.f32	s10, s8
    878a: fe3f 2a04    	vselgt.f32	s4, s30, s8
    878e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8792: fe33 6a02    	vselgt.f32	s12, s6, s4
    8796: ed9f 2a46    	vldr	s4, [pc, #280]          @ 0x88b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x250>
    879a: eeb4 7a42    	vcmp.f32	s14, s4
    879e: eeb0 2a44    	vmov.f32	s4, s8
    87a2: eeb0 3a44    	vmov.f32	s6, s8
    87a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87aa: f280 80f8    	bge.w	0x899e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x33e> @ imm = #0x1f0
    87ae: ed9f 2a41    	vldr	s4, [pc, #260]          @ 0x88b4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x254>
    87b2: eeb4 7a42    	vcmp.f32	s14, s4
    87b6: ed9f 2a3d    	vldr	s4, [pc, #244]          @ 0x88ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    87ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87be: d90f         	bls	0x87e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x180> @ imm = #0x1e
    87c0: ed9f 3a3d    	vldr	s6, [pc, #244]          @ 0x88b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x258>
    87c4: eeb4 7a43    	vcmp.f32	s14, s6
    87c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    87cc: d910         	bls	0x87f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x190> @ imm = #0x20
    87ce: ed9f 3a3b    	vldr	s6, [pc, #236]          @ 0x88bc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x25c>
    87d2: ee37 4a03    	vadd.f32	s8, s14, s6
    87d6: ed9f 5a3a    	vldr	s10, [pc, #232]         @ 0x88c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x260>
    87da: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    87de: e00f         	b	0x8800 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x1a0> @ imm = #0x1e
    87e0: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    87e4: eeb0 4a42    	vmov.f32	s8, s4
    87e8: e00e         	b	0x8808 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x1a8> @ imm = #0x1c
    87ea: bf00         	nop
    87ec: bf00         	nop
    87ee: bf00         	nop
    87f0: ed9f 3a34    	vldr	s6, [pc, #208]          @ 0x88c4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x264>
    87f4: ee37 4a03    	vadd.f32	s8, s14, s6
    87f8: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    87fc: ed9f 5a32    	vldr	s10, [pc, #200]         @ 0x88c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x268>
    8800: ee04 3a05    	vmla.f32	s6, s8, s10
    8804: ee26 4a05    	vmul.f32	s8, s12, s10
    8808: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    880c: eeb1 4a44    	vneg.f32	s8, s8
    8810: ee35 3a43    	vsub.f32	s6, s10, s6
    8814: fe83 5a02    	vmaxnm.f32	s10, s6, s4
    8818: eeb5 5a40    	vcmp.f32	s10, #0
    881c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8820: d956         	bls	0x88d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x270> @ imm = #0xac
    8822: eeb0 2ac8    	vabs.f32	s4, s16
    8826: eeb4 2a45    	vcmp.f32	s4, s10
    882a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    882e: f240 808b    	bls.w	0x8948 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2e8> @ imm = #0x116
    8832: ee85 3a02    	vdiv.f32	s6, s10, s4
    8836: ee23 2a03    	vmul.f32	s4, s6, s6
    883a: ee22 2a02    	vmul.f32	s4, s4, s4
    883e: ee22 2a02    	vmul.f32	s4, s4, s4
    8842: ee22 6a02    	vmul.f32	s12, s4, s4
    8846: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    884a: ee36 7a02    	vadd.f32	s14, s12, s4
    884e: eef0 2a42    	vmov.f32	s5, s4
    8852: eeb4 7a42    	vcmp.f32	s14, s4
    8856: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    885a: d009         	beq	0x8870 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x210> @ imm = #0x12
    885c: eef0 2a47    	vmov.f32	s5, s14
    8860: eef1 2ae2    	vsqrt.f32	s5, s5
    8864: eef1 2ae2    	vsqrt.f32	s5, s5
    8868: eef1 2ae2    	vsqrt.f32	s5, s5
    886c: eef1 2ae2    	vsqrt.f32	s5, s5
    8870: ee82 2a22    	vdiv.f32	s4, s4, s5
    8874: eeb4 8a48    	vcmp.f32	s16, s16
    8878: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    887c: ee82 7a07    	vdiv.f32	s14, s4, s14
    8880: f180 8596    	bvs.w	0x93b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd50> @ imm = #0xb2c
    8884: ee18 6a10    	vmov	r6, s16
    8888: f04f 547e    	mov.w	r4, #0x3f800000
    888c: f364 061e    	bfi	r6, r4, #0, #31
    8890: ee02 6a90    	vmov	s5, r6
    8894: ee22 5a85    	vmul.f32	s10, s5, s10
    8898: ee25 2a02    	vmul.f32	s4, s10, s4
    889c: ee22 5a87    	vmul.f32	s10, s5, s14
    88a0: ee23 3a06    	vmul.f32	s6, s6, s12
    88a4: ee23 3a07    	vmul.f32	s6, s6, s14
    88a8: e079         	b	0x899e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x33e> @ imm = #0xf2
    88aa: bf00         	nop
    88ac: 00 00 00 00  	.word	0x00000000
    88b0: 0a d7 23 3d  	.word	0x3d23d70a
    88b4: 7c f2 b0 3a  	.word	0x3ab0f27c
    88b8: a6 9b c4 3b  	.word	0x3bc49ba6
    88bc: a6 9b c4 bb  	.word	0xbbc49ba6
    88c0: 79 78 b0 43  	.word	0x43b07879
    88c4: 7c f2 b0 ba  	.word	0xbab0f27c
    88c8: 53 4a a1 43  	.word	0x43a14a53
    88cc: 00 bf 00 bf  	.word	0xbf00bf00
    88d0: eeb0 3a42    	vmov.f32	s6, s4
    88d4: eeb0 5a42    	vmov.f32	s10, s4
    88d8: e061         	b	0x899e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x33e> @ imm = #0xc2
    88da: bf00         	nop
    88dc: 00 80 bb 47  	.word	0x47bb8000
    88e0: 00 24 74 cb  	.word	0xcb742400
    88e4: 00 24 74 4b  	.word	0x4b742400
    88e8: 00 a0 0c 48  	.word	0x480ca000
    88ec: 00 bf 00 bf  	.word	0xbf00bf00
    88f0: a5 94 a7 50  	.word	0x50a794a5
    88f4: 09 2c d5 3f  	.word	0x3fd52c09
    88f8: 9c 9e 91 65  	.word	0x65919e9c
    88fc: 97 57 e8 bf  	.word	0xbfe85797
    8900: 76 43 71 a5  	.word	0xa5714376
    8904: f8 73 e2 3f  	.word	0x3fe273f8
    8908: 91 d4 a8 53  	.word	0x53a8d491
    890c: ec f7 77 41  	.word	0x4177f7ec
    8910: 0f 97 9b b4  	.word	0xb49b970f
    8914: e8 75 16 3f  	.word	0x3f1675e8
    8918: a7 2a 45 4f  	.word	0x4f452aa7
    891c: ed 97 01 41  	.word	0x410197ed
    8920: 00 50 66 db  	.word	0xdb665000
    8924: 76 ec 1e bf  	.word	0xbf1eec76
    8928: 00 00 00 00  	.word	0x00000000
    892c: 00 00 90 b6  	.word	0xb6900000
    8930: 00 00 00 00  	.word	0x00000000
    8934: 00 00 90 36  	.word	0x36900000
    8938: e0 96 9b b4  	.word	0xb49b96e0
    893c: e8 75 16 3f  	.word	0x3f1675e8
    8940: 32 e2 b6 04  	.word	0x04b6e232
    8944: 2a ad 22 bf  	.word	0xbf22ad2a
    8948: ee88 2a05    	vdiv.f32	s4, s16, s10
    894c: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    8950: ee22 2a02    	vmul.f32	s4, s4, s4
    8954: eeb0 7a46    	vmov.f32	s14, s12
    8958: ee22 2a02    	vmul.f32	s4, s4, s4
    895c: ee22 2a02    	vmul.f32	s4, s4, s4
    8960: ee22 2a02    	vmul.f32	s4, s4, s4
    8964: ee32 3a06    	vadd.f32	s6, s4, s12
    8968: eeb4 3a46    	vcmp.f32	s6, s12
    896c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8970: d009         	beq	0x8986 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x326> @ imm = #0x12
    8972: eeb0 7a43    	vmov.f32	s14, s6
    8976: eeb1 7ac7    	vsqrt.f32	s14, s14
    897a: eeb1 7ac7    	vsqrt.f32	s14, s14
    897e: eeb1 7ac7    	vsqrt.f32	s14, s14
    8982: eeb1 7ac7    	vsqrt.f32	s14, s14
    8986: ee86 6a07    	vdiv.f32	s12, s12, s14
    898a: ee28 2a02    	vmul.f32	s4, s16, s4
    898e: ee86 3a03    	vdiv.f32	s6, s12, s6
    8992: ee82 5a05    	vdiv.f32	s10, s4, s10
    8996: ee28 2a06    	vmul.f32	s4, s16, s12
    899a: ee25 5a03    	vmul.f32	s10, s10, s6
    899e: ed9d 6a14    	vldr	s12, [sp, #80]
    89a2: 2d00         	cmp	r5, #0x0
    89a4: ee36 2a42    	vsub.f32	s4, s12, s4
    89a8: ed9f 6aed    	vldr	s12, [pc, #948]         @ 0x8d60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x700>
    89ac: e9cd 3005    	strd	r3, r0, [sp, #20]
    89b0: ee24 4a05    	vmul.f32	s8, s8, s10
    89b4: ed9f 5aeb    	vldr	s10, [pc, #940]         @ 0x8d64 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x704>
    89b8: ee12 0a10    	vmov	r0, s4
    89bc: eddf 6aea    	vldr	s13, [pc, #936]         @ 0x8d68 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x708>
    89c0: fe06 6a05    	vseleq.f32	s12, s12, s10
    89c4: ed9f 5ae9    	vldr	s10, [pc, #932]         @ 0x8d6c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x70c>
    89c8: eddf 7ae9    	vldr	s15, [pc, #932]         @ 0x8d70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x710>
    89cc: f020 4000    	bic	r0, r0, #0x80000000
    89d0: f1b0 4fff    	cmp.w	r0, #0x7f800000
    89d4: da09         	bge	0x89ea <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x38a> @ imm = #0x12
    89d6: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    89da: ed1f 7a4c    	vldr	s14, [pc, #-304]        @ 0x88ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    89de: ee82 5a05    	vdiv.f32	s10, s4, s10
    89e2: eeb0 5ac5    	vabs.f32	s10, s10
    89e6: fe85 5a07    	vmaxnm.f32	s10, s10, s14
    89ea: ed9f 7ae2    	vldr	s14, [pc, #904]         @ 0x8d74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x714>
    89ee: eddd 5a13    	vldr	s11, [sp, #76]
    89f2: ee85 7a87    	vdiv.f32	s14, s11, s14
    89f6: eddf cae0    	vldr	s25, [pc, #896]         @ 0x8d78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x718>
    89fa: ed9f aae0    	vldr	s20, [pc, #896]         @ 0x8d7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x71c>
    89fe: eefe 8a00    	vmov.f32	s17, #-5.000000e-01
    8a02: ed9f badf    	vldr	s22, [pc, #892]         @ 0x8d80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x720>
    8a06: eeb6 ea00    	vmov.f32	s28, #5.000000e-01
    8a0a: eef4 ca47    	vcmp.f32	s25, s14
    8a0e: ed9f dadd    	vldr	s26, [pc, #884]         @ 0x8d84 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x724>
    8a12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a16: ed9f cadc    	vldr	s24, [pc, #880]         @ 0x8d88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x728>
    8a1a: f244 4508    	movw	r5, #0x4408
    8a1e: fe3c 7a87    	vselgt.f32	s14, s25, s14
    8a22: f6c4 0500    	movt	r5, #0x4800
    8a26: f240 1455    	movw	r4, #0x155
    8a2a: eddf fad8    	vldr	s31, [pc, #864]         @ 0x8d8c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x72c>
    8a2e: f2c0 0408    	movt	r4, #0x8
    8a32: f04f 587e    	mov.w	r8, #0x3f800000
    8a36: eeb4 7a4a    	vcmp.f32	s14, s20
    8a3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a3e: ee26 3a03    	vmul.f32	s6, s12, s6
    8a42: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x8d90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x730>
    8a46: fe3a 7a07    	vselgt.f32	s14, s20, s14
    8a4a: ee67 2a0b    	vmul.f32	s5, s14, s22
    8a4e: ee72 3aa8    	vadd.f32	s7, s5, s17
    8a52: eef5 2a40    	vcmp.f32	s5, #0
    8a56: ee72 4a8e    	vadd.f32	s9, s5, s28
    8a5a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a5e: eefd 3ae3    	vcvt.s32.f32	s7, s7
    8a62: eefd 4ae4    	vcvt.s32.f32	s9, s9
    8a66: ee13 0a90    	vmov	r0, s7
    8a6a: ee14 3a90    	vmov	r3, s9
    8a6e: bfa8         	it	ge
    8a70: 4618         	movge	r0, r3
    8a72: ee02 0a90    	vmov	s5, r0
    8a76: eb08 50c0    	add.w	r0, r8, r0, lsl #23
    8a7a: eef8 2ae2    	vcvt.f32.s32	s5, s5
    8a7e: ee02 7acd    	vmls.f32	s14, s5, s26
    8a82: eddf 2ac4    	vldr	s5, [pc, #784]          @ 0x8d94 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x734>
    8a86: eec5 2aa2    	vdiv.f32	s5, s11, s5
    8a8a: ee27 7a0e    	vmul.f32	s14, s14, s28
    8a8e: eeb4 fa47    	vcmp.f32	s30, s14
    8a92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8a96: fe3f 7a07    	vselgt.f32	s14, s30, s14
    8a9a: eeb4 7a4c    	vcmp.f32	s14, s24
    8a9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aa2: eef4 ca62    	vcmp.f32	s25, s5
    8aa6: fe3c 7a07    	vselgt.f32	s14, s24, s14
    8aaa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aae: fe7c 2aa2    	vselgt.f32	s5, s25, s5
    8ab2: eef4 2a4a    	vcmp.f32	s5, s20
    8ab6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8aba: fe7a 2a22    	vselgt.f32	s5, s20, s5
    8abe: ee62 3a8b    	vmul.f32	s7, s5, s22
    8ac2: ee73 4aa8    	vadd.f32	s9, s7, s17
    8ac6: eef5 3a40    	vcmp.f32	s7, #0
    8aca: ee73 5a8e    	vadd.f32	s11, s7, s28
    8ace: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ad2: eefd 4ae4    	vcvt.s32.f32	s9, s9
    8ad6: eefd 5ae5    	vcvt.s32.f32	s11, s11
    8ada: ee14 6a90    	vmov	r6, s9
    8ade: ee15 3a90    	vmov	r3, s11
    8ae2: bfa8         	it	ge
    8ae4: 461e         	movge	r6, r3
    8ae6: ed92 bb06    	vldr	d11, [r2, #24]
    8aea: ee03 6a90    	vmov	s7, r6
    8aee: f845 4c08    	str	r4, [r5, #-8]
    8af2: eb08 52c6    	add.w	r2, r8, r6, lsl #23
    8af6: eef8 3ae3    	vcvt.f32.s32	s7, s7
    8afa: ee43 2acd    	vmls.f32	s5, s7, s26
    8afe: eddf 3ae9    	vldr	s7, [pc, #932]          @ 0x8ea4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x844>
    8b02: ee27 7a23    	vmul.f32	s14, s14, s7
    8b06: ed1f db74    	vldr	d13, [pc, #-464]        @ 0x8938 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2d8>
    8b0a: eebd 7ac7    	vcvt.s32.f32	s14, s14
    8b0e: ed05 7a01    	vstr	s14, [r5, #-4]
    8b12: ee62 2a8e    	vmul.f32	s5, s5, s28
    8b16: eeb4 fa62    	vcmp.f32	s30, s5
    8b1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b1e: fe7f 2a22    	vselgt.f32	s5, s30, s5
    8b22: eef4 2a4c    	vcmp.f32	s5, s24
    8b26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8b2a: fe7c 2a22    	vselgt.f32	s5, s24, s5
    8b2e: ee22 7aa3    	vmul.f32	s14, s5, s7
    8b32: edd5 2a00    	vldr	s5, [r5]
    8b36: edd5 3a00    	vldr	s7, [r5]
    8b3a: f845 4c08    	str	r4, [r5, #-8]
    8b3e: eef8 3ae3    	vcvt.f32.s32	s7, s7
    8b42: eebd 7ac7    	vcvt.s32.f32	s14, s14
    8b46: ed05 7a01    	vstr	s14, [r5, #-4]
    8b4a: eef8 2ae2    	vcvt.f32.s32	s5, s5
    8b4e: ee23 7aaf    	vmul.f32	s14, s7, s31
    8b52: edd5 3a00    	vldr	s7, [r5]
    8b56: edd5 4a00    	vldr	s9, [r5]
    8b5a: eef8 3ae3    	vcvt.f32.s32	s7, s7
    8b5e: eef8 4ae4    	vcvt.f32.s32	s9, s9
    8b62: ee02 7aaf    	vmla.f32	s14, s5, s31
    8b66: ed8d bb0a    	vstr	d11, [sp, #40]
    8b6a: ee64 2aaf    	vmul.f32	s5, s9, s31
    8b6e: ee43 2aaf    	vmla.f32	s5, s7, s31
    8b72: ee03 0a90    	vmov	s7, r0
    8b76: ee01 bb0d    	vmla.f64	d11, d1, d13
    8b7a: ee01 2a90    	vmov	s3, r2
    8b7e: ee37 7a07    	vadd.f32	s14, s14, s14
    8b82: ed1f db91    	vldr	d13, [pc, #-580]        @ 0x8940 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x2e0>
    8b86: ee32 1aa2    	vadd.f32	s2, s5, s5
    8b8a: eddf 2ac7    	vldr	s5, [pc, #796]          @ 0x8ea8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x848>
    8b8e: ee27 7a23    	vmul.f32	s14, s14, s7
    8b92: ee00 bb0d    	vmla.f64	d11, d0, d13
    8b96: ee61 1a21    	vmul.f32	s3, s2, s3
    8b9a: ed9f 1ac4    	vldr	s2, [pc, #784]          @ 0x8eac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x84c>
    8b9e: ed9f da73    	vldr	s26, [pc, #460]         @ 0x8d6c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x70c>
    8ba2: eef7 0bcb    	vcvt.f32.f64	s1, d11
    8ba6: ee37 0a61    	vsub.f32	s0, s14, s3
    8baa: ee50 0a01    	vnmls.f32	s1, s0, s2
    8bae: ee24 0a26    	vmul.f32	s0, s8, s13
    8bb2: ee24 1a27    	vmul.f32	s2, s8, s15
    8bb6: ee10 0a90    	vmov	r0, s1
    8bba: f020 4000    	bic	r0, r0, #0x80000000
    8bbe: f1b0 4fff    	cmp.w	r0, #0x7f800000
    8bc2: da17         	bge	0x8bf4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x594> @ imm = #0x2e
    8bc4: ed9f 4af0    	vldr	s8, [pc, #960]          @ 0x8f88 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x928>
    8bc8: eeb4 5a45    	vcmp.f32	s10, s10
    8bcc: ee80 4a84    	vdiv.f32	s8, s1, s8
    8bd0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bd4: eeb0 4ac4    	vabs.f32	s8, s8
    8bd8: fe14 5a05    	vselvs.f32	s10, s8, s10
    8bdc: eeb4 4a44    	vcmp.f32	s8, s8
    8be0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8be4: fe15 4a04    	vselvs.f32	s8, s10, s8
    8be8: eeb4 5a44    	vcmp.f32	s10, s8
    8bec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8bf0: fe35 da04    	vselgt.f32	s26, s10, s8
    8bf4: ee03 0a06    	vmla.f32	s0, s6, s12
    8bf8: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    8bfc: ee03 1a22    	vmla.f32	s2, s6, s5
    8c00: a81d         	add	r0, sp, #0x74
    8c02: ee37 7a21    	vadd.f32	s14, s14, s3
    8c06: f64a 7346    	movw	r3, #0xaf46
    8c0a: eeb1 6a42    	vneg.f32	s12, s4
    8c0e: f04f 0a00    	mov.w	r10, #0x0
    8c12: eeb1 4a60    	vneg.f32	s8, s1
    8c16: f100 0214    	add.w	r2, r0, #0x14
    8c1a: 9103         	str	r1, [sp, #0xc]
    8c1c: 6809         	ldr	r1, [r1]
    8c1e: 9101         	str	r1, [sp, #0x4]
    8c20: 2100         	movs	r1, #0x0
    8c22: f6cb 03b3    	movt	r3, #0xb8b3
    8c26: f04f 0900    	mov.w	r9, #0x0
    8c2a: 46d3         	mov	r11, r10
    8c2c: eddf 7adc    	vldr	s15, [pc, #880]         @ 0x8fa0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x940>
    8c30: eddf badc    	vldr	s23, [pc, #880]         @ 0x8fa4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x944>
    8c34: 9202         	str	r2, [sp, #0x8]
    8c36: eddf aadc    	vldr	s21, [pc, #880]         @ 0x8fa8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x948>
    8c3a: ed5f 9ae4    	vldr	s19, [pc, #-912]        @ 0x88ac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x24c>
    8c3e: ed9f 2a9b    	vldr	s4, [pc, #620]          @ 0x8eac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x84c>
    8c42: ee30 0a0b    	vadd.f32	s0, s0, s22
    8c46: ee27 2a02    	vmul.f32	s4, s14, s4
    8c4a: ed9f 3a4a    	vldr	s6, [pc, #296]          @ 0x8d74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x714>
    8c4e: ed8d 0a1d    	vstr	s0, [sp, #116]
    8c52: f1ba 0f10    	cmp.w	r10, #0x10
    8c56: ed8d 6a1a    	vstr	s12, [sp, #104]
    8c5a: 4606         	mov	r6, r0
    8c5c: ee82 2a03    	vdiv.f32	s4, s4, s6
    8c60: ed8d 4a1b    	vstr	s8, [sp, #108]
    8c64: ed8d 1a1e    	vstr	s2, [sp, #120]
    8c68: 911c         	str	r1, [sp, #0x70]
    8c6a: ee32 0a27    	vadd.f32	s0, s4, s15
    8c6e: 911f         	str	r1, [sp, #0x7c]
    8c70: ed8d 0a21    	vstr	s0, [sp, #132]
    8c74: bf18         	it	ne
    8c76: f10b 0b01    	addne.w	r11, r11, #0x1
    8c7a: 9915         	ldr	r1, [sp, #0x54]
    8c7c: 6011         	str	r1, [r2]
    8c7e: 9916         	ldr	r1, [sp, #0x58]
    8c80: 6051         	str	r1, [r2, #0x4]
    8c82: 9917         	ldr	r1, [sp, #0x5c]
    8c84: 6091         	str	r1, [r2, #0x8]
    8c86: 9918         	ldr	r1, [sp, #0x60]
    8c88: 60d1         	str	r1, [r2, #0xc]
    8c8a: 2202         	movs	r2, #0x2
    8c8c: a91a         	add	r1, sp, #0x68
    8c8e: 9320         	str	r3, [sp, #0x80]
    8c90: f004 fc16    	bl	0xd4c0 <orange_dsp::condensed::solve> @ imm = #0x482c
    8c94: 2800         	cmp	r0, #0x0
    8c96: f000 8377    	beq.w	0x9388 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd28> @ imm = #0x6ee
    8c9a: ed9d 0a14    	vldr	s0, [sp, #80]
    8c9e: ed9d 1a1a    	vldr	s2, [sp, #104]
    8ca2: eeb0 0ac0    	vabs.f32	s0, s0
    8ca6: eeb0 3ac1    	vabs.f32	s6, s2
    8caa: eeb4 0a40    	vcmp.f32	s0, s0
    8cae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cb2: fe1b 0a00    	vselvs.f32	s0, s22, s0
    8cb6: eeb4 0a4b    	vcmp.f32	s0, s22
    8cba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cbe: fe30 0a0b    	vselgt.f32	s0, s0, s22
    8cc2: ee20 0a2b    	vmul.f32	s0, s0, s23
    8cc6: fe80 0a6a    	vminnm.f32	s0, s0, s21
    8cca: eeb4 3a40    	vcmp.f32	s6, s0
    8cce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cd2: d81c         	bhi	0x8d0e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6ae> @ imm = #0x38
    8cd4: ed9d 0a13    	vldr	s0, [sp, #76]
    8cd8: ed9d 2a1b    	vldr	s4, [sp, #108]
    8cdc: eeb0 0ac0    	vabs.f32	s0, s0
    8ce0: eeb0 2ac2    	vabs.f32	s4, s4
    8ce4: eeb4 0a40    	vcmp.f32	s0, s0
    8ce8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cec: fe1b 0a00    	vselvs.f32	s0, s22, s0
    8cf0: eeb4 0a4b    	vcmp.f32	s0, s22
    8cf4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8cf8: fe30 0a0b    	vselgt.f32	s0, s0, s22
    8cfc: ee20 0a2b    	vmul.f32	s0, s0, s23
    8d00: fe80 0a6a    	vminnm.f32	s0, s0, s21
    8d04: eeb4 2a40    	vcmp.f32	s4, s0
    8d08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d0c: d910         	bls	0x8d30 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6d0> @ imm = #0x20
    8d0e: 2000         	movs	r0, #0x0
    8d10: ed9f 0aa6    	vldr	s0, [pc, #664]          @ 0x8fac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x94c>
    8d14: eeb4 da40    	vcmp.f32	s26, s0
    8d18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d1c: d810         	bhi	0x8d40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6e0> @ imm = #0x20
    8d1e: f1aa 0110    	sub.w	r1, r10, #0x10
    8d22: fab1 f181    	clz	r1, r1
    8d26: 0949         	lsrs	r1, r1, #0x5
    8d28: 4301         	orrs	r1, r0
    8d2a: d00d         	beq	0x8d48 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6e8> @ imm = #0x1a
    8d2c: e31b         	b	0x9366 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd06> @ imm = #0x636
    8d2e: bf00         	nop
    8d30: 2001         	movs	r0, #0x1
    8d32: ed9f 0a9e    	vldr	s0, [pc, #632]          @ 0x8fac <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x94c>
    8d36: eeb4 da40    	vcmp.f32	s26, s0
    8d3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8d3e: d9ee         	bls	0x8d1e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x6be> @ imm = #-0x24
    8d40: f1ba 0f10    	cmp.w	r10, #0x10
    8d44: f000 8324    	beq.w	0x9390 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd30> @ imm = #0x648
    8d48: f04f 507e    	mov.w	r0, #0x3f800000
    8d4c: ed9d 4a1b    	vldr	s8, [sp, #108]
    8d50: ed8d 3a07    	vstr	s6, [sp, #28]
    8d54: ed8d da09    	vstr	s26, [sp, #36]
    8d58: ed8d 8a08    	vstr	s16, [sp, #32]
    8d5c: e022         	b	0x8da4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x744> @ imm = #0x44
    8d5e: bf00         	nop
    8d60: 00 00 00 80  	.word	0x80000000
    8d64: 79 61 2e c3  	.word	0xc32e6179
    8d68: b7 63 f7 38  	.word	0x38f763b7
    8d6c: 00 00 80 7f  	.word	0x7f800000
    8d70: 46 af b3 b8  	.word	0xb8b3af46
    8d74: f5 4a 39 3d  	.word	0x3d394af5
    8d78: 00 00 a0 c2  	.word	0xc2a00000
    8d7c: 00 00 a0 42  	.word	0x42a00000
    8d80: 3b aa b8 3f  	.word	0x3fb8aa3b
    8d84: 18 72 31 3f  	.word	0x3f317218
    8d88: fe ff 7f 3f  	.word	0x3f7ffffe
    8d8c: 00 00 00 30  	.word	0x30000000
    8d90: bb bc 42 bf  	.word	0xbf42bcbb
    8d94: f5 4a 39 bd  	.word	0xbd394af5
    8d98: f5a0 0000    	sub.w	r0, r0, #0x800000
    8d9c: f1b0 5f66    	cmp.w	r0, #0x39800000
    8da0: f000 82ba    	beq.w	0x9318 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xcb8> @ imm = #0x574
    8da4: ee00 0a10    	vmov	s0, r0
    8da8: ed9d 2a14    	vldr	s4, [sp, #80]
    8dac: ed9d 3a13    	vldr	s6, [sp, #76]
    8db0: eef0 4a69    	vmov.f32	s9, s19
    8db4: ed9f 6b7e    	vldr	d6, [pc, #504]          @ 0x8fb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x950>
    8db8: ee01 2a00    	vmla.f32	s4, s2, s0
    8dbc: eef0 3a69    	vmov.f32	s7, s19
    8dc0: ee04 3a00    	vmla.f32	s6, s8, s0
    8dc4: ed9d 5b10    	vldr	d5, [sp, #64]
    8dc8: ed9f bb7b    	vldr	d11, [pc, #492]         @ 0x8fb8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x958>
    8dcc: eeb7 7ac2    	vcvt.f64.f32	d7, s4
    8dd0: eeb7 0ac3    	vcvt.f64.f32	d0, s6
    8dd4: ed9f 8b7a    	vldr	d8, [pc, #488]          @ 0x8fc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x960>
    8dd8: ee07 5b06    	vmla.f64	d5, d7, d6
    8ddc: ed9f 6b7a    	vldr	d6, [pc, #488]          @ 0x8fc8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x968>
    8de0: ee00 5b06    	vmla.f64	d5, d0, d6
    8de4: ed9d 6b0e    	vldr	d6, [sp, #56]
    8de8: eeb7 5bc5    	vcvt.f32.f64	s10, d5
    8dec: eeb7 5ac5    	vcvt.f64.f32	d5, s10
    8df0: ee05 6b0b    	vmla.f64	d6, d5, d11
    8df4: ed9f 5b76    	vldr	d5, [pc, #472]          @ 0x8fd0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x970>
    8df8: ee86 5b05    	vdiv.f64	d5, d6, d5
    8dfc: eef0 6a69    	vmov.f32	s13, s19
    8e00: ed9d bb0c    	vldr	d11, [sp, #48]
    8e04: eeb7 6bc5    	vcvt.f32.f64	s12, d5
    8e08: ed9f 5b73    	vldr	d5, [pc, #460]          @ 0x8fd8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x978>
    8e0c: eef4 ea46    	vcmp.f32	s29, s12
    8e10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e14: ee07 bb05    	vmla.f64	d11, d7, d5
    8e18: fe3e 5a86    	vselgt.f32	s10, s29, s12
    8e1c: ee00 bb08    	vmla.f64	d11, d0, d8
    8e20: eeb4 5a49    	vcmp.f32	s10, s18
    8e24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e28: ed9f 8b6d    	vldr	d8, [pc, #436]          @ 0x8fe0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x980>
    8e2c: fe39 5a05    	vselgt.f32	s10, s18, s10
    8e30: eef7 1bcb    	vcvt.f32.f64	s3, d11
    8e34: eeb4 8b4b    	vcmp.f64	d8, d11
    8e38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e3c: ed9f 8b6a    	vldr	d8, [pc, #424]          @ 0x8fe8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x988>
    8e40: fe7f 2a29    	vselgt.f32	s5, s30, s19
    8e44: eeb4 bb48    	vcmp.f64	d11, d8
    8e48: eeb7 8a00    	vmov.f32	s16, #1.000000e+00
    8e4c: eef0 1ae1    	vabs.f32	s3, s3
    8e50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e54: fe78 5a22    	vselgt.f32	s11, s16, s5
    8e58: eddf 2a44    	vldr	s5, [pc, #272]          @ 0x8f6c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x90c>
    8e5c: eef4 1a62    	vcmp.f32	s3, s5
    8e60: eef0 2a69    	vmov.f32	s5, s19
    8e64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e68: f280 80ee    	bge.w	0x9048 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9e8> @ imm = #0x1dc
    8e6c: eddf 2a40    	vldr	s5, [pc, #256]          @ 0x8f70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x910>
    8e70: eef0 3a69    	vmov.f32	s7, s19
    8e74: eef4 1a62    	vcmp.f32	s3, s5
    8e78: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    8e7c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e80: d922         	bls	0x8ec8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x868> @ imm = #0x44
    8e82: eddf 2a3c    	vldr	s5, [pc, #240]          @ 0x8f74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x914>
    8e86: eef4 1a62    	vcmp.f32	s3, s5
    8e8a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8e8e: d90f         	bls	0x8eb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x850> @ imm = #0x1e
    8e90: eddf 2a39    	vldr	s5, [pc, #228]          @ 0x8f78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x918>
    8e94: ee71 1aa2    	vadd.f32	s3, s3, s5
    8e98: eef0 2a08    	vmov.f32	s5, #3.000000e+00
    8e9c: eddf 3a37    	vldr	s7, [pc, #220]          @ 0x8f7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x91c>
    8ea0: e00e         	b	0x8ec0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x860> @ imm = #0x1c
    8ea2: bf00         	nop
    8ea4: 00 00 00 4f  	.word	0x4f000000
    8ea8: c5 9f 13 3f  	.word	0x3f139fc5
    8eac: 77 cc 2b 31  	.word	0x312bcc77
    8eb0: eddf 2a33    	vldr	s5, [pc, #204]          @ 0x8f80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x920>
    8eb4: ee71 1aa2    	vadd.f32	s3, s3, s5
    8eb8: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    8ebc: eddf 3a31    	vldr	s7, [pc, #196]          @ 0x8f84 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x924>
    8ec0: ee41 2aa3    	vmla.f32	s5, s3, s7
    8ec4: ee65 3aa3    	vmul.f32	s7, s11, s7
    8ec8: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    8ecc: ee71 1ae2    	vsub.f32	s3, s3, s5
    8ed0: eef1 2a63    	vneg.f32	s5, s7
    8ed4: fec1 5aa9    	vmaxnm.f32	s11, s3, s19
    8ed8: eef5 5a40    	vcmp.f32	s11, #0
    8edc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8ee0: d956         	bls	0x8f90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x930> @ imm = #0xac
    8ee2: eef0 1ac5    	vabs.f32	s3, s10
    8ee6: eef4 1a65    	vcmp.f32	s3, s11
    8eea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8eee: f240 807f    	bls.w	0x8ff0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x990> @ imm = #0xfe
    8ef2: eec5 1aa1    	vdiv.f32	s3, s11, s3
    8ef6: eef0 6a48    	vmov.f32	s13, s16
    8efa: ee61 3aa1    	vmul.f32	s7, s3, s3
    8efe: ee63 3aa3    	vmul.f32	s7, s7, s7
    8f02: ee63 3aa3    	vmul.f32	s7, s7, s7
    8f06: ee63 4aa3    	vmul.f32	s9, s7, s7
    8f0a: ee74 3a88    	vadd.f32	s7, s9, s16
    8f0e: eef4 3a48    	vcmp.f32	s7, s16
    8f12: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f16: d009         	beq	0x8f2c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x8cc> @ imm = #0x12
    8f18: eef0 6a63    	vmov.f32	s13, s7
    8f1c: eef1 6ae6    	vsqrt.f32	s13, s13
    8f20: eef1 6ae6    	vsqrt.f32	s13, s13
    8f24: eef1 6ae6    	vsqrt.f32	s13, s13
    8f28: eef1 6ae6    	vsqrt.f32	s13, s13
    8f2c: eec8 aa26    	vdiv.f32	s21, s16, s13
    8f30: eddf 6af8    	vldr	s13, [pc, #992]         @ 0x9314 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xcb4>
    8f34: ee61 1aa4    	vmul.f32	s3, s3, s9
    8f38: eeb4 5a45    	vcmp.f32	s10, s10
    8f3c: eeca 8aa3    	vdiv.f32	s17, s21, s7
    8f40: eef0 3a66    	vmov.f32	s7, s13
    8f44: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    8f48: bf7f         	itttt	vc
    8f4a: ee15 1a10    	vmovvc	r1, s10
    8f4e: f368 011e    	bfivc	r1, r8, #0, #31
    8f52: ee03 1a90    	vmovvc	s7, r1
    8f56: ee63 5aa5    	vmulvc.f32	s11, s7, s11
    8f5a: bf7c         	itt	vc
    8f5c: ee65 6aaa    	vmulvc.f32	s13, s11, s21
    8f60: ee63 3aa8    	vmulvc.f32	s7, s7, s17
    8f64: ee61 4aa8    	vmul.f32	s9, s3, s17
    8f68: e06e         	b	0x9048 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9e8> @ imm = #0xdc
    8f6a: bf00         	nop
    8f6c: 0a d7 23 3d  	.word	0x3d23d70a
    8f70: 7c f2 b0 3a  	.word	0x3ab0f27c
    8f74: a6 9b c4 3b  	.word	0x3bc49ba6
    8f78: a6 9b c4 bb  	.word	0xbbc49ba6
    8f7c: 79 78 b0 43  	.word	0x43b07879
    8f80: 7c f2 b0 ba  	.word	0xbab0f27c
    8f84: 53 4a a1 43  	.word	0x43a14a53
    8f88: 0a d7 23 3c  	.word	0x3c23d70a
    8f8c: 00 bf 00 bf  	.word	0xbf00bf00
    8f90: eef0 6a69    	vmov.f32	s13, s19
    8f94: eef0 4a69    	vmov.f32	s9, s19
    8f98: eef0 3a69    	vmov.f32	s7, s19
    8f9c: e054         	b	0x9048 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9e8> @ imm = #0xa8
    8f9e: bf00         	nop
    8fa0: 50 69 15 39  	.word	0x39156950
    8fa4: bd 37 06 36  	.word	0x360637bd
    8fa8: ac c5 a7 37  	.word	0x37a7c5ac
    8fac: 17 b7 d1 38  	.word	0x38d1b717
    8fb0: 9c 9e 91 65  	.word	0x65919e9c
    8fb4: 97 57 e8 bf  	.word	0xbfe85797
    8fb8: 91 d4 a8 53  	.word	0x53a8d491
    8fbc: ec f7 77 41  	.word	0x4177f7ec
    8fc0: 0f 97 9b b4  	.word	0xb49b970f
    8fc4: e8 75 16 3f  	.word	0x3f1675e8
    8fc8: 76 43 71 a5  	.word	0xa5714376
    8fcc: f8 73 e2 3f  	.word	0x3fe273f8
    8fd0: a7 2a 45 4f  	.word	0x4f452aa7
    8fd4: ed 97 01 41  	.word	0x410197ed
    8fd8: 00 50 66 db  	.word	0xdb665000
    8fdc: 76 ec 1e bf  	.word	0xbf1eec76
    8fe0: 00 00 00 00  	.word	0x00000000
    8fe4: 00 00 90 b6  	.word	0xb6900000
    8fe8: 00 00 00 00  	.word	0x00000000
    8fec: 00 00 90 36  	.word	0x36900000
    8ff0: eec5 1a25    	vdiv.f32	s3, s10, s11
    8ff4: eef0 4a48    	vmov.f32	s9, s16
    8ff8: ee61 1aa1    	vmul.f32	s3, s3, s3
    8ffc: ee61 1aa1    	vmul.f32	s3, s3, s3
    9000: ee61 1aa1    	vmul.f32	s3, s3, s3
    9004: ee61 1aa1    	vmul.f32	s3, s3, s3
    9008: ee71 3a88    	vadd.f32	s7, s3, s16
    900c: eef4 3a48    	vcmp.f32	s7, s16
    9010: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9014: d009         	beq	0x902a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x9ca> @ imm = #0x12
    9016: eef0 4a63    	vmov.f32	s9, s7
    901a: eef1 4ae4    	vsqrt.f32	s9, s9
    901e: eef1 4ae4    	vsqrt.f32	s9, s9
    9022: eef1 4ae4    	vsqrt.f32	s9, s9
    9026: eef1 4ae4    	vsqrt.f32	s9, s9
    902a: eec8 6a24    	vdiv.f32	s13, s16, s9
    902e: ee65 1a21    	vmul.f32	s3, s10, s3
    9032: eec6 4aa3    	vdiv.f32	s9, s13, s7
    9036: eec1 1aa5    	vdiv.f32	s3, s3, s11
    903a: ee65 6a26    	vmul.f32	s13, s10, s13
    903e: ee61 3aa4    	vmul.f32	s7, s3, s9
    9042: bf00         	nop
    9044: bf00         	nop
    9046: bf00         	nop
    9048: ee72 5a66    	vsub.f32	s11, s4, s13
    904c: eddf 6ae6    	vldr	s13, [pc, #920]         @ 0x93e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd88>
    9050: ee15 1a90    	vmov	r1, s11
    9054: f021 4100    	bic	r1, r1, #0x80000000
    9058: f1b1 4fff    	cmp.w	r1, #0x7f800000
    905c: da07         	bge	0x906e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xa0e> @ imm = #0xe
    905e: eef2 1a0e    	vmov.f32	s3, #1.500000e+01
    9062: eec5 1aa1    	vdiv.f32	s3, s11, s3
    9066: eef0 1ae1    	vabs.f32	s3, s3
    906a: fec1 6aa9    	vmaxnm.f32	s13, s3, s19
    906e: eddf 1adf    	vldr	s3, [pc, #892]          @ 0x93ec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd8c>
    9072: eefe ba00    	vmov.f32	s23, #-5.000000e-01
    9076: eec3 1a21    	vdiv.f32	s3, s6, s3
    907a: ed9f 8ade    	vldr	s16, [pc, #888]         @ 0x93f4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd94>
    907e: ed9f dade    	vldr	s26, [pc, #888]         @ 0x93f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd98>
    9082: eef4 ca61    	vcmp.f32	s25, s3
    9086: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    908a: fe7c 1aa1    	vselgt.f32	s3, s25, s3
    908e: eef4 1a4a    	vcmp.f32	s3, s20
    9092: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9096: fe7a 1a21    	vselgt.f32	s3, s20, s3
    909a: ee21 ba88    	vmul.f32	s22, s3, s16
    909e: ee7b 8a2b    	vadd.f32	s17, s22, s23
    90a2: eeb5 ba40    	vcmp.f32	s22, #0
    90a6: ee7b aa0e    	vadd.f32	s21, s22, s28
    90aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90ae: eefd 8ae8    	vcvt.s32.f32	s17, s17
    90b2: eefd aaea    	vcvt.s32.f32	s21, s21
    90b6: ee18 1a90    	vmov	r1, s17
    90ba: ee1a 2a90    	vmov	r2, s21
    90be: bfa8         	it	ge
    90c0: 4611         	movge	r1, r2
    90c2: ee0b 1a10    	vmov	s22, r1
    90c6: eb08 51c1    	add.w	r1, r8, r1, lsl #23
    90ca: eeb8 bacb    	vcvt.f32.s32	s22, s22
    90ce: ee4b 1a4d    	vmls.f32	s3, s22, s26
    90d2: ed9f bac7    	vldr	s22, [pc, #796]         @ 0x93f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd90>
    90d6: ee83 ba0b    	vdiv.f32	s22, s6, s22
    90da: ee61 1a8e    	vmul.f32	s3, s3, s28
    90de: eeb4 fa61    	vcmp.f32	s30, s3
    90e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90e6: fe7f 1a21    	vselgt.f32	s3, s30, s3
    90ea: eef4 1a4c    	vcmp.f32	s3, s24
    90ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90f2: eef4 ca4b    	vcmp.f32	s25, s22
    90f6: fe7c 1a21    	vselgt.f32	s3, s24, s3
    90fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    90fe: fe3c ba8b    	vselgt.f32	s22, s25, s22
    9102: eeb4 ba4a    	vcmp.f32	s22, s20
    9106: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    910a: fe3a ba0b    	vselgt.f32	s22, s20, s22
    910e: ee6b 8a08    	vmul.f32	s17, s22, s16
    9112: ed9f 8aba    	vldr	s16, [pc, #744]         @ 0x93fc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd9c>
    9116: ee61 1a88    	vmul.f32	s3, s3, s16
    911a: ee78 aaab    	vadd.f32	s21, s17, s23
    911e: eef5 8a40    	vcmp.f32	s17, #0
    9122: ee78 ba8e    	vadd.f32	s23, s17, s28
    9126: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    912a: eefd aaea    	vcvt.s32.f32	s21, s21
    912e: eefd baeb    	vcvt.s32.f32	s23, s23
    9132: eefd 1ae1    	vcvt.s32.f32	s3, s3
    9136: ee1a 2a90    	vmov	r2, s21
    913a: ee1b 3a90    	vmov	r3, s23
    913e: bfa8         	it	ge
    9140: 461a         	movge	r2, r3
    9142: f845 4c08    	str	r4, [r5, #-8]
    9146: ee08 2a90    	vmov	s17, r2
    914a: ed45 1a01    	vstr	s3, [r5, #-4]
    914e: eb08 52c2    	add.w	r2, r8, r2, lsl #23
    9152: eef8 8ae8    	vcvt.f32.s32	s17, s17
    9156: ee08 bacd    	vmls.f32	s22, s17, s26
    915a: ed9f db99    	vldr	d13, [pc, #612]         @ 0x93c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd60>
    915e: ee2b ba0e    	vmul.f32	s22, s22, s28
    9162: eeb4 fa4b    	vcmp.f32	s30, s22
    9166: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    916a: fe3f ba0b    	vselgt.f32	s22, s30, s22
    916e: eeb4 ba4c    	vcmp.f32	s22, s24
    9172: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9176: fe3c ba0b    	vselgt.f32	s22, s24, s22
    917a: ee6b 1a08    	vmul.f32	s3, s22, s16
    917e: ed95 ba00    	vldr	s22, [r5]
    9182: edd5 8a00    	vldr	s17, [r5]
    9186: f845 4c08    	str	r4, [r5, #-8]
    918a: eef8 8ae8    	vcvt.f32.s32	s17, s17
    918e: eefd 1ae1    	vcvt.s32.f32	s3, s3
    9192: ed45 1a01    	vstr	s3, [r5, #-4]
    9196: eeb8 bacb    	vcvt.f32.s32	s22, s22
    919a: ee68 1aaf    	vmul.f32	s3, s17, s31
    919e: edd5 8a00    	vldr	s17, [r5]
    91a2: edd5 aa00    	vldr	s21, [r5]
    91a6: eef8 8ae8    	vcvt.f32.s32	s17, s17
    91aa: eef8 aaea    	vcvt.f32.s32	s21, s21
    91ae: ee4b 1a2f    	vmla.f32	s3, s22, s31
    91b2: ee2a baaf    	vmul.f32	s22, s21, s31
    91b6: ee0a 2a90    	vmov	s21, r2
    91ba: ee08 baaf    	vmla.f32	s22, s17, s31
    91be: ee08 1a90    	vmov	s17, r1
    91c2: ee71 1aa1    	vadd.f32	s3, s3, s3
    91c6: ee3b ba0b    	vadd.f32	s22, s22, s22
    91ca: ee61 1aa8    	vmul.f32	s3, s3, s17
    91ce: ee6b 8a2a    	vmul.f32	s17, s22, s21
    91d2: ed9d bb0a    	vldr	d11, [sp, #40]
    91d6: ee07 bb0d    	vmla.f64	d11, d7, d13
    91da: ed9f 7b7b    	vldr	d7, [pc, #492]          @ 0x93c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd68>
    91de: ee00 bb07    	vmla.f64	d11, d0, d7
    91e2: ee31 0ae8    	vsub.f32	s0, s3, s17
    91e6: ed9f 7a86    	vldr	s14, [pc, #536]         @ 0x9400 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xda0>
    91ea: eef7 0bcb    	vcvt.f32.f64	s1, d11
    91ee: ee50 0a07    	vnmls.f32	s1, s0, s14
    91f2: ee10 1a90    	vmov	r1, s1
    91f6: f021 4100    	bic	r1, r1, #0x80000000
    91fa: f1b1 4fff    	cmp.w	r1, #0x7f800000
    91fe: f6bf adcb    	bge.w	0x8d98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x738> @ imm = #-0x46a
    9202: ed9f 0a80    	vldr	s0, [pc, #512]          @ 0x9404 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xda4>
    9206: eef4 6a66    	vcmp.f32	s13, s13
    920a: ee80 0a80    	vdiv.f32	s0, s1, s0
    920e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9212: eeb0 0ac0    	vabs.f32	s0, s0
    9216: fe10 7a26    	vselvs.f32	s14, s0, s13
    921a: eeb4 0a40    	vcmp.f32	s0, s0
    921e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9222: fe17 0a00    	vselvs.f32	s0, s14, s0
    9226: eeb4 7a40    	vcmp.f32	s14, s0
    922a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    922e: fe77 6a00    	vselgt.f32	s13, s14, s0
    9232: ed9d 0a09    	vldr	s0, [sp, #36]
    9236: eef4 6a40    	vcmp.f32	s13, s0
    923a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    923e: f57f adab    	bpl.w	0x8d98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x738> @ imm = #-0x4aa
    9242: a075         	adr	r0, #468 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xc5b>
    9244: eeb4 9a46    	vcmp.f32	s18, s12
    9248: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    924c: bfc8         	it	gt
    924e: 3004         	addgt	r0, #0x4
    9250: 9903         	ldr	r1, [sp, #0xc]
    9252: eeb4 6a6e    	vcmp.f32	s12, s29
    9256: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    925a: ed9d 0a04    	vldr	s0, [sp, #16]
    925e: ed81 0a01    	vstr	s0, [r1, #4]
    9262: ed90 0a00    	vldr	s0, [r0]
    9266: eeb7 ba00    	vmov.f32	s22, #1.000000e+00
    926a: ed9f 1a5a    	vldr	s2, [pc, #360]          @ 0x93d4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd74>
    926e: f64a 7346    	movw	r3, #0xaf46
    9272: fe30 0a01    	vselgt.f32	s0, s0, s2
    9276: 9a01         	ldr	r2, [sp, #0x4]
    9278: 600a         	str	r2, [r1]
    927a: f1ba 0f10    	cmp.w	r10, #0x10
    927e: ed81 2a02    	vstr	s4, [r1, #8]
    9282: ed9f 6a56    	vldr	s12, [pc, #344]         @ 0x93dc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd7c>
    9286: ed81 3a03    	vstr	s6, [r1, #12]
    928a: f04f 0100    	mov.w	r1, #0x0
    928e: ed9f 7a55    	vldr	s14, [pc, #340]         @ 0x93e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd84>
    9292: 9a02         	ldr	r2, [sp, #0x8]
    9294: f6cb 03b3    	movt	r3, #0xb8b3
    9298: eddf aa5d    	vldr	s21, [pc, #372]         @ 0x9410 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdb0>
    929c: eddf 7a5a    	vldr	s15, [pc, #360]         @ 0x9408 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xda8>
    92a0: 9119         	str	r1, [sp, #0x64]
    92a2: eddf ba5a    	vldr	s23, [pc, #360]         @ 0x940c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdac>
    92a6: e9cd 1115    	strd	r1, r1, [sp, #84]
    92aa: e9cd 1117    	strd	r1, r1, [sp, #92]
    92ae: d025         	beq	0x92fc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xc9c> @ imm = #0x4a
    92b0: ee22 1aa3    	vmul.f32	s2, s5, s7
    92b4: eeb0 8a45    	vmov.f32	s16, s10
    92b8: ee20 4a24    	vmul.f32	s8, s0, s9
    92bc: ed9f 0a46    	vldr	s0, [pc, #280]          @ 0x93d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd78>
    92c0: eeb0 da66    	vmov.f32	s26, s13
    92c4: 4630         	mov	r0, r6
    92c6: ee21 0a00    	vmul.f32	s0, s2, s0
    92ca: f1bb 0f10    	cmp.w	r11, #0x10
    92ce: ee04 0a06    	vmla.f32	s0, s8, s12
    92d2: ed9f 6a43    	vldr	s12, [pc, #268]         @ 0x93e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd80>
    92d6: ee21 1a06    	vmul.f32	s2, s2, s12
    92da: f109 0901    	add.w	r9, r9, #0x1
    92de: ee04 1a07    	vmla.f32	s2, s8, s14
    92e2: 46da         	mov	r10, r11
    92e4: ee31 7aa8    	vadd.f32	s14, s3, s17
    92e8: ed8d 3a13    	vstr	s6, [sp, #76]
    92ec: eeb1 6a65    	vneg.f32	s12, s11
    92f0: ed8d 2a14    	vstr	s4, [sp, #80]
    92f4: eeb1 4a60    	vneg.f32	s8, s1
    92f8: f77f aca1    	ble.w	0x8c3e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x5de> @ imm = #-0x6be
    92fc: f64d 3088    	movw	r0, #0xdb88
    9300: f64d 32b0    	movw	r2, #0xdbb0
    9304: f2c0 0000    	movt	r0, #0x0
    9308: f2c0 0200    	movt	r2, #0x0
    930c: 2128         	movs	r1, #0x28
    930e: f001 fdb0    	bl	0xae72 <core::panicking::panic> @ imm = #0x1b60
    9312: bf00         	nop
    9314: 00 00 c0 7f  	.word	0x7fc00000
    9318: ed9d da09    	vldr	s26, [sp, #36]
    931c: ed9f 0a3d    	vldr	s0, [pc, #244]          @ 0x9414 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdb4>
    9320: eeb4 da40    	vcmp.f32	s26, s0
    9324: ed9f 1a3a    	vldr	s2, [pc, #232]          @ 0x9410 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xdb0>
    9328: ed9d 0a07    	vldr	s0, [sp, #28]
    932c: 2000         	movs	r0, #0x0
    932e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9332: eeb4 0a41    	vcmp.f32	s0, s2
    9336: f04f 0100    	mov.w	r1, #0x0
    933a: eeb0 0ac4    	vabs.f32	s0, s8
    933e: f04f 0200    	mov.w	r2, #0x0
    9342: bf98         	it	ls
    9344: 2001         	movls	r0, #0x1
    9346: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    934a: bf98         	it	ls
    934c: 2201         	movls	r2, #0x1
    934e: eeb4 0a41    	vcmp.f32	s0, s2
    9352: f109 0901    	add.w	r9, r9, #0x1
    9356: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    935a: bf98         	it	ls
    935c: 2101         	movls	r1, #0x1
    935e: ed9d 8a08    	vldr	s16, [sp, #32]
    9362: 4011         	ands	r1, r2
    9364: 4008         	ands	r0, r1
    9366: 9905         	ldr	r1, [sp, #0x14]
    9368: ed81 8a01    	vstr	s16, [r1, #4]
    936c: 9906         	ldr	r1, [sp, #0x18]
    936e: ed81 da00    	vstr	s26, [r1]
    9372: f881 9004    	strb.w	r9, [r1, #0x4]
    9376: 7148         	strb	r0, [r1, #0x5]
    9378: b026         	add	sp, #0x98
    937a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    937e: b001         	add	sp, #0x4
    9380: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    9384: bdf0         	pop	{r4, r5, r6, r7, pc}
    9386: bf00         	nop
    9388: 9906         	ldr	r1, [sp, #0x18]
    938a: 2000         	movs	r0, #0x0
    938c: e7ef         	b	0x936e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd0e> @ imm = #-0x22
    938e: bf00         	nop
    9390: 2000         	movs	r0, #0x0
    9392: e7e8         	b	0x9366 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd06> @ imm = #-0x30
    9394: bf00         	nop
    9396: bf00         	nop
    9398: f64d 70a2    	movw	r0, #0xdfa2
    939c: f24e 0288    	movw	r2, #0xe088
    93a0: f2c0 0000    	movt	r0, #0x0
    93a4: f2c0 0200    	movt	r2, #0x0
    93a8: a91d         	add	r1, sp, #0x74
    93aa: f001 fd5e    	bl	0xae6a <core::panicking::panic_fmt> @ imm = #0x1abc
    93ae: bf00         	nop
    93b0: ed9f 5a07    	vldr	s10, [pc, #28]          @ 0x93d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0xd70>
    93b4: eeb0 2a45    	vmov.f32	s4, s10
    93b8: f7ff ba72    	b.w	0x88a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 2>+0x240> @ imm = #-0xb1c
    93bc: bf00         	nop
    93be: bf00         	nop
    93c0: e0 96 9b b4  	.word	0xb49b96e0
    93c4: e8 75 16 3f  	.word	0x3f1675e8
    93c8: 32 e2 b6 04  	.word	0x04b6e232
    93cc: 2a ad 22 bf  	.word	0xbf22ad2a
    93d0: 00 00 c0 7f  	.word	0x7fc00000
    93d4: 00 00 00 80  	.word	0x80000000
    93d8: b7 63 f7 38  	.word	0x38f763b7
    93dc: bb bc 42 bf  	.word	0xbf42bcbb
    93e0: 46 af b3 b8  	.word	0xb8b3af46
    93e4: c5 9f 13 3f  	.word	0x3f139fc5
    93e8: 00 00 80 7f  	.word	0x7f800000
    93ec: f5 4a 39 3d  	.word	0x3d394af5
    93f0: f5 4a 39 bd  	.word	0xbd394af5
    93f4: 3b aa b8 3f  	.word	0x3fb8aa3b
    93f8: 18 72 31 3f  	.word	0x3f317218
    93fc: 00 00 00 4f  	.word	0x4f000000
    9400: 77 cc 2b 31  	.word	0x312bcc77
    9404: 0a d7 23 3c  	.word	0x3c23d70a
    9408: 50 69 15 39  	.word	0x39156950
    940c: bd 37 06 36  	.word	0x360637bd
    9410: ac c5 a7 37  	.word	0x37a7c5ac
    9414: 17 b7 d1 38  	.word	0x38d1b717
    9418: 00 00 00 80  	.word	0x80000000
    941c: 79 61 2e c3  	.word	0xc32e6179

00009420 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>>:
    9420: b5f0         	push	{r4, r5, r6, r7, lr}
    9422: af03         	add	r7, sp, #0xc
    9424: e92d 0f00    	push.w	{r8, r9, r10, r11}
    9428: b081         	sub	sp, #0x4
    942a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    942e: b0b4         	sub	sp, #0xd0
    9430: eddf 2abd    	vldr	s5, [pc, #756]          @ 0x9728 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x308>
    9434: ee20 0a22    	vmul.f32	s0, s0, s5
    9438: eddf 3abc    	vldr	s7, [pc, #752]          @ 0x972c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x30c>
    943c: eddf 6abc    	vldr	s13, [pc, #752]         @ 0x9730 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x310>
    9440: eddf 5abc    	vldr	s11, [pc, #752]         @ 0x9734 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x314>
    9444: ee30 1a23    	vadd.f32	s2, s0, s7
    9448: ee30 2a26    	vadd.f32	s4, s0, s13
    944c: eec1 9a25    	vdiv.f32	s19, s2, s11
    9450: eec2 ea25    	vdiv.f32	s29, s4, s11
    9454: eef4 9a6e    	vcmp.f32	s19, s29
    9458: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    945c: f201 814c    	bhi.w	0xa6f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12d8> @ imm = #0x1298
    9460: ed91 1a02    	vldr	s2, [r1, #8]
    9464: ed8d 1a04    	vstr	s2, [sp, #16]
    9468: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    946c: ed91 2a03    	vldr	s4, [r1, #12]
    9470: ed9f 4b81    	vldr	d4, [pc, #516]          @ 0x9678 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x258>
    9474: ed8d 2a03    	vstr	s4, [sp, #12]
    9478: 2500         	movs	r5, #0x0
    947a: ed92 7b14    	vldr	d7, [r2, #80]
    947e: 460e         	mov	r6, r1
    9480: eddf faad    	vldr	s31, [pc, #692]         @ 0x9738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    9484: ee01 7b04    	vmla.f64	d7, d1, d4
    9488: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    948c: ed91 2a04    	vldr	s4, [r1, #16]
    9490: ed9f 4b7b    	vldr	d4, [pc, #492]          @ 0x9680 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x260>
    9494: ed8d 2a26    	vstr	s4, [sp, #152]
    9498: eef7 da00    	vmov.f32	s27, #1.000000e+00
    949c: ee01 7b04    	vmla.f64	d7, d1, d4
    94a0: eeb7 4ac2    	vcvt.f64.f32	d4, s4
    94a4: ed91 2a05    	vldr	s4, [r1, #20]
    94a8: ed9f 8b77    	vldr	d8, [pc, #476]          @ 0x9688 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x268>
    94ac: eeb0 1b47    	vmov.f64	d1, d7
    94b0: ed8d 2a24    	vstr	s4, [sp, #144]
    94b4: 2100         	movs	r1, #0x0
    94b6: eeb0 9a6f    	vmov.f32	s18, s31
    94ba: ee04 1b08    	vmla.f64	d1, d4, d8
    94be: ed9f ab74    	vldr	d10, [pc, #464]         @ 0x9690 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x270>
    94c2: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    94c6: ed8d 7b1c    	vstr	d7, [sp, #112]
    94ca: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    94ce: eeb7 7ac0    	vcvt.f64.f32	d7, s0
    94d2: ed8d 7b18    	vstr	d7, [sp, #96]
    94d6: ee01 7b0a    	vmla.f64	d7, d1, d10
    94da: ed9f 1bef    	vldr	d1, [pc, #956]          @ 0x9898 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x478>
    94de: ee87 1b01    	vdiv.f64	d1, d7, d1
    94e2: ed92 8b08    	vldr	d8, [r2, #32]
    94e6: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    94ea: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    94ee: ed9f abec    	vldr	d10, [pc, #944]         @ 0x98a0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x480>
    94f2: eef4 9a40    	vcmp.f32	s19, s0
    94f6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    94fa: ed8d 8b1a    	vstr	d8, [sp, #104]
    94fe: fe39 2a80    	vselgt.f32	s4, s19, s0
    9502: eeb0 7b48    	vmov.f64	d7, d8
    9506: bf48         	it	mi
    9508: 2501         	movmi	r5, #0x1
    950a: ed9f 8be7    	vldr	d8, [pc, #924]          @ 0x98a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x488>
    950e: eeb4 2a6e    	vcmp.f32	s4, s29
    9512: ee04 7b0a    	vmla.f64	d7, d4, d10
    9516: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    951a: ee01 7b08    	vmla.f64	d7, d1, d8
    951e: fe3e ca82    	vselgt.f32	s24, s29, s4
    9522: eebf 2a00    	vmov.f32	s4, #-1.000000e+00
    9526: ed9f 8be2    	vldr	d8, [pc, #904]          @ 0x98b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x490>
    952a: eef4 ea40    	vcmp.f32	s29, s0
    952e: eeb0 0a6f    	vmov.f32	s0, s31
    9532: eeb7 3bc7    	vcvt.f32.f64	s6, d7
    9536: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    953a: eeb4 8b47    	vcmp.f64	d8, d7
    953e: bfc8         	it	gt
    9540: 2101         	movgt	r1, #0x1
    9542: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9546: ed9f 8bdc    	vldr	d8, [pc, #880]          @ 0x98b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x498>
    954a: fe32 2a2f    	vselgt.f32	s4, s4, s31
    954e: ea05 0401    	and.w	r4, r5, r1
    9552: eeb4 7b48    	vcmp.f64	d7, d8
    9556: eef0 7ac3    	vabs.f32	s15, s6
    955a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    955e: eeb0 3a6f    	vmov.f32	s6, s31
    9562: fe3d 7a82    	vselgt.f32	s14, s27, s4
    9566: ed9f 2ae7    	vldr	s4, [pc, #924]          @ 0x9904 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e4>
    956a: eef4 7a42    	vcmp.f32	s15, s4
    956e: eeb0 2a6f    	vmov.f32	s4, s31
    9572: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9576: f280 80c2    	bge.w	0x96fe <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2de> @ imm = #0x184
    957a: ed9f 2ae3    	vldr	s4, [pc, #908]          @ 0x9908 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e8>
    957e: eef4 7a42    	vcmp.f32	s15, s4
    9582: ed9f 2a6d    	vldr	s4, [pc, #436]          @ 0x9738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    9586: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    958a: d911         	bls	0x95b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x190> @ imm = #0x22
    958c: ed9f 3adf    	vldr	s6, [pc, #892]          @ 0x990c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4ec>
    9590: eef4 7a43    	vcmp.f32	s15, s6
    9594: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9598: d912         	bls	0x95c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1a0> @ imm = #0x24
    959a: ed9f 3add    	vldr	s6, [pc, #884]          @ 0x9910 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f0>
    959e: ee37 5a83    	vadd.f32	s10, s15, s6
    95a2: ed9f 6adc    	vldr	s12, [pc, #880]         @ 0x9914 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f4>
    95a6: eeb0 3a08    	vmov.f32	s6, #3.000000e+00
    95aa: e011         	b	0x95d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1b0> @ imm = #0x22
    95ac: bf00         	nop
    95ae: bf00         	nop
    95b0: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    95b4: eeb0 6a42    	vmov.f32	s12, s4
    95b8: e00e         	b	0x95d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1b8> @ imm = #0x1c
    95ba: bf00         	nop
    95bc: bf00         	nop
    95be: bf00         	nop
    95c0: ed9f 3ad5    	vldr	s6, [pc, #852]          @ 0x9918 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f8>
    95c4: ee37 5a83    	vadd.f32	s10, s15, s6
    95c8: eeb7 3a08    	vmov.f32	s6, #1.500000e+00
    95cc: ed9f 6ad3    	vldr	s12, [pc, #844]         @ 0x991c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4fc>
    95d0: ee05 3a06    	vmla.f32	s6, s10, s12
    95d4: ee27 6a06    	vmul.f32	s12, s14, s12
    95d8: eeb2 5a0e    	vmov.f32	s10, #1.500000e+01
    95dc: eeb1 0a46    	vneg.f32	s0, s12
    95e0: ee35 3a43    	vsub.f32	s6, s10, s6
    95e4: fe83 5a02    	vmaxnm.f32	s10, s6, s4
    95e8: eeb5 5a40    	vcmp.f32	s10, #0
    95ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    95f0: d952         	bls	0x9698 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x278> @ imm = #0xa4
    95f2: eeb0 2acc    	vabs.f32	s4, s24
    95f6: eeb4 2a45    	vcmp.f32	s4, s10
    95fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    95fe: d953         	bls	0x96a8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x288> @ imm = #0xa6
    9600: ee85 6a02    	vdiv.f32	s12, s10, s4
    9604: ee26 2a06    	vmul.f32	s4, s12, s12
    9608: ee22 2a02    	vmul.f32	s4, s4, s4
    960c: ee22 2a02    	vmul.f32	s4, s4, s4
    9610: ee22 7a02    	vmul.f32	s14, s4, s4
    9614: eeb7 2a00    	vmov.f32	s4, #1.000000e+00
    9618: ee77 7a02    	vadd.f32	s15, s14, s4
    961c: eeb0 8a42    	vmov.f32	s16, s4
    9620: eef4 7a42    	vcmp.f32	s15, s4
    9624: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9628: d009         	beq	0x963e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x21e> @ imm = #0x12
    962a: eeb0 8a67    	vmov.f32	s16, s15
    962e: eeb1 8ac8    	vsqrt.f32	s16, s16
    9632: eeb1 8ac8    	vsqrt.f32	s16, s16
    9636: eeb1 8ac8    	vsqrt.f32	s16, s16
    963a: eeb1 8ac8    	vsqrt.f32	s16, s16
    963e: ee82 2a08    	vdiv.f32	s4, s4, s16
    9642: eeb4 ca4c    	vcmp.f32	s24, s24
    9646: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    964a: eec2 7a27    	vdiv.f32	s15, s4, s15
    964e: f181 805f    	bvs.w	0xa710 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12f0> @ imm = #0x10be
    9652: ee1c 1a10    	vmov	r1, s24
    9656: f04f 557e    	mov.w	r5, #0x3f800000
    965a: f365 011e    	bfi	r1, r5, #0, #31
    965e: ee08 1a10    	vmov	s16, r1
    9662: ee28 5a05    	vmul.f32	s10, s16, s10
    9666: ee28 3a27    	vmul.f32	s6, s16, s15
    966a: ee25 2a02    	vmul.f32	s4, s10, s4
    966e: ee26 6a07    	vmul.f32	s12, s12, s14
    9672: ee26 9a27    	vmul.f32	s18, s12, s15
    9676: e042         	b	0x96fe <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2de> @ imm = #0x84
    9678: ab 14 f2 db  	.word	0xdbf214ab
    967c: ec cd d7 3f  	.word	0x3fd7cdec
    9680: c4 a9 9f 7b  	.word	0x7b9fa9c4
    9684: 67 dd c7 3f  	.word	0x3fc7dd67
    9688: 1c 38 88 77  	.word	0x7788381c
    968c: bf 13 e1 bf  	.word	0xbfe113bf
    9690: 91 d4 a8 53  	.word	0x53a8d491
    9694: ec f7 77 41  	.word	0x4177f7ec
    9698: eeb0 9a42    	vmov.f32	s18, s4
    969c: eeb0 3a42    	vmov.f32	s6, s4
    96a0: e02d         	b	0x96fe <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2de> @ imm = #0x5a
    96a2: bf00         	nop
    96a4: bf00         	nop
    96a6: bf00         	nop
    96a8: ee8c 2a05    	vdiv.f32	s4, s24, s10
    96ac: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
    96b0: ee22 2a02    	vmul.f32	s4, s4, s4
    96b4: eef0 7a47    	vmov.f32	s15, s14
    96b8: ee22 2a02    	vmul.f32	s4, s4, s4
    96bc: ee22 2a02    	vmul.f32	s4, s4, s4
    96c0: ee22 2a02    	vmul.f32	s4, s4, s4
    96c4: ee32 6a07    	vadd.f32	s12, s4, s14
    96c8: eeb4 6a47    	vcmp.f32	s12, s14
    96cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    96d0: d009         	beq	0x96e6 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x2c6> @ imm = #0x12
    96d2: eef0 7a46    	vmov.f32	s15, s12
    96d6: eef1 7ae7    	vsqrt.f32	s15, s15
    96da: eef1 7ae7    	vsqrt.f32	s15, s15
    96de: eef1 7ae7    	vsqrt.f32	s15, s15
    96e2: eef1 7ae7    	vsqrt.f32	s15, s15
    96e6: ee87 7a27    	vdiv.f32	s14, s14, s15
    96ea: ee2c 2a02    	vmul.f32	s4, s24, s4
    96ee: ee87 9a06    	vdiv.f32	s18, s14, s12
    96f2: ee82 5a05    	vdiv.f32	s10, s4, s10
    96f6: ee2c 2a07    	vmul.f32	s4, s24, s14
    96fa: ee25 3a09    	vmul.f32	s6, s10, s18
    96fe: ed9d 7a26    	vldr	s14, [sp, #152]
    9702: 2c00         	cmp	r4, #0x0
    9704: ee37 2a42    	vsub.f32	s4, s14, s4
    9708: ed9f dada    	vldr	s26, [pc, #872]         @ 0x9a74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x654>
    970c: ed9f eada    	vldr	s28, [pc, #872]         @ 0x9a78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x658>
    9710: fe0e 5a0d    	vseleq.f32	s10, s28, s26
    9714: ee12 1a10    	vmov	r1, s4
    9718: f021 4100    	bic	r1, r1, #0x80000000
    971c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    9720: db0e         	blt	0x9740 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x320> @ imm = #0x1c
    9722: eddf 7ad6    	vldr	s15, [pc, #856]         @ 0x9a7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x65c>
    9726: e015         	b	0x9754 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x334> @ imm = #0x2a
    9728: 00 80 bb 47  	.word	0x47bb8000
    972c: 00 24 74 cb  	.word	0xcb742400
    9730: 00 24 74 4b  	.word	0x4b742400
    9734: 00 a0 0c 48  	.word	0x480ca000
    9738: 00 00 00 00  	.word	0x00000000
    973c: 00 bf 00 bf  	.word	0xbf00bf00
    9740: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
    9744: ed1f 8a04    	vldr	s16, [pc, #-16]         @ 0x9738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    9748: eec2 7a27    	vdiv.f32	s15, s4, s15
    974c: eef0 7ae7    	vabs.f32	s15, s15
    9750: fec7 7a88    	vmaxnm.f32	s15, s15, s16
    9754: ee60 0aa2    	vmul.f32	s1, s1, s5
    9758: ee70 2aa3    	vadd.f32	s5, s1, s7
    975c: ee70 3aa6    	vadd.f32	s7, s1, s13
    9760: ee82 faa5    	vdiv.f32	s30, s5, s11
    9764: eec3 caa5    	vdiv.f32	s25, s7, s11
    9768: eeb4 fa6c    	vcmp.f32	s30, s25
    976c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9770: f200 87c2    	bhi.w	0xa6f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12d8> @ imm = #0xf84
    9774: ed9f ab52    	vldr	d10, [pc, #328]         @ 0x98c0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4a0>
    9778: ed8d 3a1e    	vstr	s6, [sp, #120]
    977c: 2500         	movs	r5, #0x0
    977e: ed92 8b16    	vldr	d8, [r2, #88]
    9782: ed8d 0a21    	vstr	s0, [sp, #132]
    9786: 2100         	movs	r1, #0x0
    9788: ed8d 8b16    	vstr	d8, [sp, #88]
    978c: ee04 8b0a    	vmla.f64	d8, d4, d10
    9790: ed9f ab4d    	vldr	d10, [pc, #308]         @ 0x98c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4a8>
    9794: ee01 8b0a    	vmla.f64	d8, d1, d10
    9798: eeb7 aae0    	vcvt.f64.f32	d10, s1
    979c: ed1f bb44    	vldr	d11, [pc, #-272]        @ 0x9690 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x270>
    97a0: eef7 2bc8    	vcvt.f32.f64	s5, d8
    97a4: ed9f 0b4a    	vldr	d0, [pc, #296]          @ 0x98d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4b0>
    97a8: eeb7 3ae2    	vcvt.f64.f32	d3, s5
    97ac: ed8d ab14    	vstr	d10, [sp, #80]
    97b0: ee03 ab0b    	vmla.f64	d10, d3, d11
    97b4: ed96 3a06    	vldr	s6, [r6, #24]
    97b8: ed8d 3a23    	vstr	s6, [sp, #140]
    97bc: ed92 8b0a    	vldr	d8, [r2, #40]
    97c0: eeb7 bac3    	vcvt.f64.f32	d11, s6
    97c4: ed8d 8b12    	vstr	d8, [sp, #72]
    97c8: ee04 8b00    	vmla.f64	d8, d4, d0
    97cc: ed9f 4b32    	vldr	d4, [pc, #200]          @ 0x9898 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x478>
    97d0: ee8a 4b04    	vdiv.f64	d4, d10, d4
    97d4: ed1f aa28    	vldr	s20, [pc, #-160]        @ 0x9738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    97d8: ed9f 0b3f    	vldr	d0, [pc, #252]          @ 0x98d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4b8>
    97dc: eef0 2a4a    	vmov.f32	s5, s20
    97e0: eeb7 4bc4    	vcvt.f32.f64	s8, d4
    97e4: ed9f 3b3e    	vldr	d3, [pc, #248]          @ 0x98e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4c0>
    97e8: eeb4 fa44    	vcmp.f32	s30, s8
    97ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    97f0: ee01 8b00    	vmla.f64	d8, d1, d0
    97f4: fe7f 0a04    	vselgt.f32	s1, s30, s8
    97f8: ee0b 8b03    	vmla.f64	d8, d11, d3
    97fc: bf48         	it	mi
    97fe: 2501         	movmi	r5, #0x1
    9800: eef4 0a6c    	vcmp.f32	s1, s25
    9804: eef0 3a4a    	vmov.f32	s7, s20
    9808: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    980c: eef4 ca44    	vcmp.f32	s25, s8
    9810: eeb7 4bc8    	vcvt.f32.f64	s8, d8
    9814: fe3c 0aa0    	vselgt.f32	s0, s25, s1
    9818: eeff 0a00    	vmov.f32	s1, #-1.000000e+00
    981c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9820: eef0 5ac4    	vabs.f32	s11, s8
    9824: ed9f 4b22    	vldr	d4, [pc, #136]          @ 0x98b0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x490>
    9828: bfc8         	it	gt
    982a: 2101         	movgt	r1, #0x1
    982c: eeb4 4b48    	vcmp.f64	d4, d8
    9830: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9834: ed9f 4b20    	vldr	d4, [pc, #128]          @ 0x98b8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x498>
    9838: fe70 0a8a    	vselgt.f32	s1, s1, s20
    983c: ea05 0401    	and.w	r4, r5, r1
    9840: eeb4 8b44    	vcmp.f64	d8, d4
    9844: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9848: fe7d 4aa0    	vselgt.f32	s9, s27, s1
    984c: eddf 0a2d    	vldr	s1, [pc, #180]          @ 0x9904 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e4>
    9850: eef4 5a60    	vcmp.f32	s11, s1
    9854: eef0 0a4a    	vmov.f32	s1, s20
    9858: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    985c: f280 80ef    	bge.w	0x9a3e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x61e> @ imm = #0x1de
    9860: eddf 0a29    	vldr	s1, [pc, #164]          @ 0x9908 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4e8>
    9864: eef4 5a60    	vcmp.f32	s11, s1
    9868: ed5f 0a4d    	vldr	s1, [pc, #-308]         @ 0x9738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x318>
    986c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9870: d942         	bls	0x98f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4d8> @ imm = #0x84
    9872: eddf 2a26    	vldr	s5, [pc, #152]          @ 0x990c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4ec>
    9876: eef4 5a62    	vcmp.f32	s11, s5
    987a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    987e: d94f         	bls	0x9920 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x500> @ imm = #0x9e
    9880: eddf 2a23    	vldr	s5, [pc, #140]          @ 0x9910 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f0>
    9884: ee75 3aa2    	vadd.f32	s7, s11, s5
    9888: eddf 5a22    	vldr	s11, [pc, #136]         @ 0x9914 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f4>
    988c: eef0 2a08    	vmov.f32	s5, #3.000000e+00
    9890: e04e         	b	0x9930 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x510> @ imm = #0x9c
    9892: bf00         	nop
    9894: bf00         	nop
    9896: bf00         	nop
    9898: a7 2a 45 4f  	.word	0x4f452aa7
    989c: ed 97 01 41  	.word	0x410197ed
    98a0: 61 05 bc 57  	.word	0x57bc0561
    98a4: 10 d8 12 bf  	.word	0xbf12d810
    98a8: 58 62 94 b9  	.word	0xb9946258
    98ac: 1a 9f dc 3e  	.word	0x3edc9f1a
    98b0: 00 00 00 00  	.word	0x00000000
    98b4: 00 00 90 b6  	.word	0xb6900000
    98b8: 00 00 00 00  	.word	0x00000000
    98bc: 00 00 90 36  	.word	0x36900000
    98c0: 15 be b6 e5  	.word	0xe5b6be15
    98c4: 6d 7e c0 bf  	.word	0xbfc07e6d
    98c8: 67 42 87 92  	.word	0x92874267
    98cc: ba 86 d4 bf  	.word	0xbfd486ba
    98d0: 59 62 94 b9  	.word	0xb9946259
    98d4: 1a 9f dc 3e  	.word	0x3edc9f1a
    98d8: 14 90 51 d1  	.word	0xd1519014
    98dc: d5 fc 24 bf  	.word	0xbf24fcd5
    98e0: 14 d0 fe 14  	.word	0x14fed014
    98e4: cf 45 20 3f  	.word	0x3f2045cf
    98e8: 10 43 9c 25  	.word	0x259c4310
    98ec: ca fc ef 3f  	.word	0x3feffcca
    98f0: 00 80 e7 1d  	.word	0x1de78000
    98f4: d3 ae 39 3f  	.word	0x3f39aed3
    98f8: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    98fc: eef0 3a60    	vmov.f32	s7, s1
    9900: e01a         	b	0x9938 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x518> @ imm = #0x34
    9902: bf00         	nop
    9904: 0a d7 23 3d  	.word	0x3d23d70a
    9908: 7c f2 b0 3a  	.word	0x3ab0f27c
    990c: a6 9b c4 3b  	.word	0x3bc49ba6
    9910: a6 9b c4 bb  	.word	0xbbc49ba6
    9914: 79 78 b0 43  	.word	0x43b07879
    9918: 7c f2 b0 ba  	.word	0xbab0f27c
    991c: 53 4a a1 43  	.word	0x43a14a53
    9920: ed5f 2a03    	vldr	s5, [pc, #-12]          @ 0x9918 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4f8>
    9924: ee75 3aa2    	vadd.f32	s7, s11, s5
    9928: eef7 2a08    	vmov.f32	s5, #1.500000e+00
    992c: ed5f 5a05    	vldr	s11, [pc, #-20]         @ 0x991c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4fc>
    9930: ee43 2aa5    	vmla.f32	s5, s7, s11
    9934: ee64 3aa5    	vmul.f32	s7, s9, s11
    9938: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    993c: ee74 2ae2    	vsub.f32	s5, s9, s5
    9940: fec2 4aa0    	vmaxnm.f32	s9, s5, s1
    9944: eef1 2a63    	vneg.f32	s5, s7
    9948: eef5 4a40    	vcmp.f32	s9, #0
    994c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9950: d942         	bls	0x99d8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x5b8> @ imm = #0x84
    9952: eef0 0ac0    	vabs.f32	s1, s0
    9956: eef4 0a64    	vcmp.f32	s1, s9
    995a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    995e: d943         	bls	0x99e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x5c8> @ imm = #0x86
    9960: eec4 3aa0    	vdiv.f32	s7, s9, s1
    9964: ee63 0aa3    	vmul.f32	s1, s7, s7
    9968: ee60 0aa0    	vmul.f32	s1, s1, s1
    996c: ee60 0aa0    	vmul.f32	s1, s1, s1
    9970: ee60 5aa0    	vmul.f32	s11, s1, s1
    9974: eef7 0a00    	vmov.f32	s1, #1.000000e+00
    9978: ee75 6aa0    	vadd.f32	s13, s11, s1
    997c: eeb0 8a60    	vmov.f32	s16, s1
    9980: eef4 6a60    	vcmp.f32	s13, s1
    9984: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9988: d009         	beq	0x999e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x57e> @ imm = #0x12
    998a: eeb0 8a66    	vmov.f32	s16, s13
    998e: eeb1 8ac8    	vsqrt.f32	s16, s16
    9992: eeb1 8ac8    	vsqrt.f32	s16, s16
    9996: eeb1 8ac8    	vsqrt.f32	s16, s16
    999a: eeb1 8ac8    	vsqrt.f32	s16, s16
    999e: eec0 0a88    	vdiv.f32	s1, s1, s16
    99a2: eeb4 0a40    	vcmp.f32	s0, s0
    99a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    99aa: eec0 6aa6    	vdiv.f32	s13, s1, s13
    99ae: f180 86b7    	bvs.w	0xa720 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1300> @ imm = #0xd6e
    99b2: ee10 1a10    	vmov	r1, s0
    99b6: f04f 557e    	mov.w	r5, #0x3f800000
    99ba: f365 011e    	bfi	r1, r5, #0, #31
    99be: ee08 1a10    	vmov	s16, r1
    99c2: ee68 4a24    	vmul.f32	s9, s16, s9
    99c6: ee28 aa26    	vmul.f32	s20, s16, s13
    99ca: ee64 0aa0    	vmul.f32	s1, s9, s1
    99ce: ee63 3aa5    	vmul.f32	s7, s7, s11
    99d2: ee63 3aa6    	vmul.f32	s7, s7, s13
    99d6: e032         	b	0x9a3e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x61e> @ imm = #0x64
    99d8: eef0 3a60    	vmov.f32	s7, s1
    99dc: eeb0 aa60    	vmov.f32	s20, s1
    99e0: e02d         	b	0x9a3e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x61e> @ imm = #0x5a
    99e2: bf00         	nop
    99e4: bf00         	nop
    99e6: bf00         	nop
    99e8: eec0 0a24    	vdiv.f32	s1, s0, s9
    99ec: eef7 5a00    	vmov.f32	s11, #1.000000e+00
    99f0: ee60 0aa0    	vmul.f32	s1, s1, s1
    99f4: eef0 6a65    	vmov.f32	s13, s11
    99f8: ee60 0aa0    	vmul.f32	s1, s1, s1
    99fc: ee60 0aa0    	vmul.f32	s1, s1, s1
    9a00: ee60 0aa0    	vmul.f32	s1, s1, s1
    9a04: ee70 3aa5    	vadd.f32	s7, s1, s11
    9a08: eef4 3a65    	vcmp.f32	s7, s11
    9a0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a10: d009         	beq	0x9a26 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x606> @ imm = #0x12
    9a12: eef0 6a63    	vmov.f32	s13, s7
    9a16: eef1 6ae6    	vsqrt.f32	s13, s13
    9a1a: eef1 6ae6    	vsqrt.f32	s13, s13
    9a1e: eef1 6ae6    	vsqrt.f32	s13, s13
    9a22: eef1 6ae6    	vsqrt.f32	s13, s13
    9a26: eec5 5aa6    	vdiv.f32	s11, s11, s13
    9a2a: ee60 0a20    	vmul.f32	s1, s0, s1
    9a2e: eec5 3aa3    	vdiv.f32	s7, s11, s7
    9a32: eec0 4aa4    	vdiv.f32	s9, s1, s9
    9a36: ee60 0a25    	vmul.f32	s1, s0, s11
    9a3a: ee24 aaa3    	vmul.f32	s20, s9, s7
    9a3e: eddd 4a24    	vldr	s9, [sp, #144]
    9a42: 2c00         	cmp	r4, #0x0
    9a44: ee74 0ae0    	vsub.f32	s1, s9, s1
    9a48: eef0 aa6f    	vmov.f32	s21, s31
    9a4c: fe4e 5a0d    	vseleq.f32	s11, s28, s26
    9a50: ed8d ca09    	vstr	s24, [sp, #36]
    9a54: ed8d fa20    	vstr	s30, [sp, #128]
    9a58: ee10 1a90    	vmov	r1, s1
    9a5c: edcd ca1f    	vstr	s25, [sp, #124]
    9a60: ed8d 2a22    	vstr	s4, [sp, #136]
    9a64: f021 4100    	bic	r1, r1, #0x80000000
    9a68: f1b1 4fff    	cmp.w	r1, #0x7f800000
    9a6c: db08         	blt	0x9a80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x660> @ imm = #0x10
    9a6e: ed9f 2a03    	vldr	s4, [pc, #12]           @ 0x9a7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x65c>
    9a72: e01d         	b	0x9ab0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x690> @ imm = #0x3a
    9a74: 79 61 2e c3  	.word	0xc32e6179
    9a78: 00 00 00 80  	.word	0x80000000
    9a7c: 00 00 80 7f  	.word	0x7f800000
    9a80: eef2 4a0e    	vmov.f32	s9, #1.500000e+01
    9a84: eef4 7a67    	vcmp.f32	s15, s15
    9a88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9a8c: eec0 4aa4    	vdiv.f32	s9, s1, s9
    9a90: eef0 4ae4    	vabs.f32	s9, s9
    9a94: fe54 6aa7    	vselvs.f32	s13, s9, s15
    9a98: eef4 4a64    	vcmp.f32	s9, s9
    9a9c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9aa0: fe56 4aa4    	vselvs.f32	s9, s13, s9
    9aa4: eef4 6a64    	vcmp.f32	s13, s9
    9aa8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9aac: fe36 2aa4    	vselgt.f32	s4, s13, s9
    9ab0: ed1f 7b73    	vldr	d7, [pc, #-460]         @ 0x98e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4c8>
    9ab4: ed9d 3a21    	vldr	s6, [sp, #132]
    9ab8: ee21 8b07    	vmul.f64	d8, d1, d7
    9abc: ed92 cb1a    	vldr	d12, [r2, #104]
    9ac0: ed92 fb1c    	vldr	d15, [r2, #112]
    9ac4: ed1f 6b76    	vldr	d6, [pc, #-472]         @ 0x98f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x4d0>
    9ac8: ed8d cb0e    	vstr	d12, [sp, #56]
    9acc: ee38 cb0c    	vadd.f64	d12, d8, d12
    9ad0: ee0b cb06    	vmla.f64	d12, d11, d6
    9ad4: ed9d 6a1e    	vldr	s12, [sp, #120]
    9ad8: ee65 6a09    	vmul.f32	s13, s10, s18
    9adc: ee38 8b0f    	vadd.f64	d8, d8, d15
    9ae0: ee23 3a06    	vmul.f32	s6, s6, s12
    9ae4: ed9f 9ad2    	vldr	s18, [pc, #840]         @ 0x9e30 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa10>
    9ae8: ee0b 8b47    	vmls.f64	d8, d11, d7
    9aec: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    9af0: ee22 5a8a    	vmul.f32	s10, s5, s20
    9af4: eef7 7bcc    	vcvt.f32.f64	s15, d12
    9af8: eeb7 6bc8    	vcvt.f32.f64	s12, d8
    9afc: ed9f 4bce    	vldr	d4, [pc, #824]          @ 0x9e38 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa18>
    9b00: eef4 7a46    	vcmp.f32	s15, s12
    9b04: ed92 db0c    	vldr	d13, [r2, #48]
    9b08: 220d         	movs	r2, #0xd
    9b0a: ed8d db10    	vstr	d13, [sp, #64]
    9b0e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b12: ee01 db04    	vmla.f64	d13, d1, d4
    9b16: fe87 1ac6    	vminnm.f32	s2, s15, s12
    9b1a: eddf 1ab2    	vldr	s3, [pc, #712]          @ 0x9de4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9c4>
    9b1e: ee0b db44    	vmls.f64	d13, d11, d4
    9b22: eeb0 4a47    	vmov.f32	s8, s14
    9b26: eddf 4ab0    	vldr	s9, [pc, #704]          @ 0x9de8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9c8>
    9b2a: ee37 6a41    	vsub.f32	s12, s14, s2
    9b2e: eeb8 7a00    	vmov.f32	s14, #-2.000000e+00
    9b32: eeb7 1bcd    	vcvt.f32.f64	s2, d13
    9b36: ed8d fb0c    	vstr	d15, [sp, #48]
    9b3a: bf88         	it	hi
    9b3c: 220e         	movhi	r2, #0xe
    9b3e: eeb4 6a47    	vcmp.f32	s12, s14
    9b42: ed8d 0a08    	vstr	s0, [sp, #32]
    9b46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b4a: d925         	bls	0x9b98 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x778> @ imm = #0x4a
    9b4c: eeb4 6a46    	vcmp.f32	s12, s12
    9b50: ed9f 7aa6    	vldr	s14, [pc, #664]         @ 0x9dec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    9b54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b58: f60f 4118    	adr.w	r1, #3096
    9b5c: fe57 2a06    	vselvs.f32	s5, s14, s12
    9b60: eef5 2a40    	vcmp.f32	s5, #0
    9b64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b68: bfb8         	it	lt
    9b6a: eeb0 7a62    	vmovlt.f32	s14, s5
    9b6e: eef7 2a00    	vmov.f32	s5, #1.000000e+00
    9b72: eeb5 6a40    	vcmp.f32	s12, #0
    9b76: ee47 2a04    	vmla.f32	s5, s14, s8
    9b7a: ed9f 7a9d    	vldr	s14, [pc, #628]         @ 0x9df0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9d0>
    9b7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9b82: bf48         	it	mi
    9b84: 3104         	addmi	r1, #0x4
    9b86: ed91 6a00    	vldr	s12, [r1]
    9b8a: ee22 7a87    	vmul.f32	s14, s5, s14
    9b8e: eddf 2af2    	vldr	s5, [pc, #968]          @ 0x9f58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb38>
    9b92: fec7 2a22    	vmaxnm.f32	s5, s14, s5
    9b96: e003         	b	0x9ba0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x780> @ imm = #0x6
    9b98: ed9f 6a94    	vldr	s12, [pc, #592]         @ 0x9dec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    9b9c: eddf 2aee    	vldr	s5, [pc, #952]          @ 0x9f58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb38>
    9ba0: f64d 31c0    	movw	r1, #0xdbc0
    9ba4: ed9d 0a23    	vldr	s0, [sp, #140]
    9ba8: f2c0 0100    	movt	r1, #0x0
    9bac: ee10 1a22    	vnmls.f32	s2, s0, s5
    9bb0: e9cd 3005    	strd	r3, r0, [sp, #20]
    9bb4: eb01 1082    	add.w	r0, r1, r2, lsl #6
    9bb8: ee60 7a06    	vmul.f32	s15, s0, s12
    9bbc: eeb0 4a6a    	vmov.f32	s8, s21
    9bc0: ed9f 0ae6    	vldr	s0, [pc, #920]          @ 0x9f5c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb3c>
    9bc4: ed90 8b0c    	vldr	d8, [r0, #48]
    9bc8: ee23 da09    	vmul.f32	s26, s6, s18
    9bcc: ed1f 9a55    	vldr	s18, [pc, #-340]        @ 0x9a7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x65c>
    9bd0: eeb7 6bc8    	vcvt.f32.f64	s12, d8
    9bd4: ee25 8aa3    	vmul.f32	s16, s11, s7
    9bd8: eef0 5a40    	vmov.f32	s11, s0
    9bdc: ed90 ab08    	vldr	d10, [r0, #32]
    9be0: ee47 5ac6    	vmls.f32	s11, s15, s12
    9be4: ed9f cade    	vldr	s24, [pc, #888]         @ 0x9f60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb40>
    9be8: ed90 bb0a    	vldr	d11, [r0, #40]
    9bec: ee11 0a10    	vmov	r0, s2
    9bf0: ee26 0a84    	vmul.f32	s0, s13, s8
    9bf4: ed9f 4adb    	vldr	s8, [pc, #876]          @ 0x9f64 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb44>
    9bf8: ee65 3a21    	vmul.f32	s7, s10, s3
    9bfc: ee25 6a24    	vmul.f32	s12, s10, s9
    9c00: ed9f fad9    	vldr	s30, [pc, #868]         @ 0x9f68 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb48>
    9c04: eeb7 abca    	vcvt.f32.f64	s20, d10
    9c08: f020 4000    	bic	r0, r0, #0x80000000
    9c0c: ee25 7a04    	vmul.f32	s14, s10, s8
    9c10: f1b0 4fff    	cmp.w	r0, #0x7f800000
    9c14: eeb7 bbcb    	vcvt.f32.f64	s22, d11
    9c18: ed9f 4ad4    	vldr	s8, [pc, #848]          @ 0x9f6c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb4c>
    9c1c: da17         	bge	0x9c4e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x82e> @ imm = #0x2e
    9c1e: ed9f 9ad4    	vldr	s18, [pc, #848]         @ 0x9f70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb50>
    9c22: eeb4 2a42    	vcmp.f32	s4, s4
    9c26: ee81 9a09    	vdiv.f32	s18, s2, s18
    9c2a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c2e: eeb0 9ac9    	vabs.f32	s18, s18
    9c32: fe59 4a02    	vselvs.f32	s9, s18, s4
    9c36: eeb4 9a49    	vcmp.f32	s18, s18
    9c3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c3e: fe14 9a89    	vselvs.f32	s18, s9, s18
    9c42: eef4 4a49    	vcmp.f32	s9, s18
    9c46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9c4a: fe34 9a89    	vselgt.f32	s18, s9, s18
    9c4e: ed9f 2a67    	vldr	s4, [pc, #412]          @ 0x9dec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    9c52: eef0 4a40    	vmov.f32	s9, s0
    9c56: ee03 0a21    	vmla.f32	s0, s6, s3
    9c5a: f04f 0b00    	mov.w	r11, #0x0
    9c5e: ee43 4a0e    	vmla.f32	s9, s6, s28
    9c62: 9601         	str	r6, [sp, #0x4]
    9c64: ee06 da84    	vmla.f32	s26, s13, s8
    9c68: 69f0         	ldr	r0, [r6, #0x1c]
    9c6a: ee08 7a02    	vmla.f32	s14, s16, s4
    9c6e: ed9d 2a22    	vldr	s4, [sp, #136]
    9c72: ee48 3a0c    	vmla.f32	s7, s16, s24
    9c76: 9002         	str	r0, [sp, #0x8]
    9c78: ee08 6a0f    	vmla.f32	s12, s16, s30
    9c7c: 2500         	movs	r5, #0x0
    9c7e: ee6a 6a67    	vnmul.f32	s13, s20, s15
    9c82: a82b         	add	r0, sp, #0xac
    9c84: ee27 aa8b    	vmul.f32	s20, s15, s22
    9c88: a928         	add	r1, sp, #0xa0
    9c8a: ee72 7aa5    	vadd.f32	s15, s5, s11
    9c8e: f04f 567e    	mov.w	r6, #0x3f800000
    9c92: eeb1 2a42    	vneg.f32	s4, s4
    9c96: f60f 29dc    	adr.w	r9, #2780
    9c9a: eef1 2a60    	vneg.f32	s5, s1
    9c9e: 46da         	mov	r10, r11
    9ca0: eef1 0a41    	vneg.f32	s1, s2
    9ca4: ed9f ca51    	vldr	s24, [pc, #324]         @ 0x9dec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9cc>
    9ca8: eef7 ca00    	vmov.f32	s25, #1.000000e+00
    9cac: ed8d 0a2c    	vstr	s0, [sp, #176]
    9cb0: 2203         	movs	r2, #0x3
    9cb2: ed8d 2a28    	vstr	s4, [sp, #160]
    9cb6: edcd 2a29    	vstr	s5, [sp, #164]
    9cba: f1bb 0f10    	cmp.w	r11, #0x10
    9cbe: ee36 0a2c    	vadd.f32	s0, s12, s25
    9cc2: edcd 0a2a    	vstr	s1, [sp, #168]
    9cc6: ed8d 0a2f    	vstr	s0, [sp, #188]
    9cca: ed9f 0aa6    	vldr	s0, [pc, #664]          @ 0x9f64 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb44>
    9cce: ee3d 1a2c    	vadd.f32	s2, s26, s25
    9cd2: edcd 4a2d    	vstr	s9, [sp, #180]
    9cd6: ee30 0a4a    	vsub.f32	s0, s0, s20
    9cda: ed8d 1a2b    	vstr	s2, [sp, #172]
    9cde: edcd 3a2e    	vstr	s7, [sp, #184]
    9ce2: 4604         	mov	r4, r0
    9ce4: ed8d 7a30    	vstr	s14, [sp, #192]
    9ce8: 4688         	mov	r8, r1
    9cea: edcd 6a31    	vstr	s13, [sp, #196]
    9cee: ed8d 0a32    	vstr	s0, [sp, #200]
    9cf2: bf18         	it	ne
    9cf4: f10a 0a01    	addne.w	r10, r10, #0x1
    9cf8: edcd 7a33    	vstr	s15, [sp, #204]
    9cfc: f003 fbe0    	bl	0xd4c0 <orange_dsp::condensed::solve> @ imm = #0x37c0
    9d00: 2800         	cmp	r0, #0x0
    9d02: f000 84f1    	beq.w	0xa6e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12c8> @ imm = #0x9e2
    9d06: ed9d 0a26    	vldr	s0, [sp, #152]
    9d0a: ed9f 3adb    	vldr	s6, [pc, #876]          @ 0xa078 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc58>
    9d0e: eeb0 0ac0    	vabs.f32	s0, s0
    9d12: ed9f 2ada    	vldr	s4, [pc, #872]          @ 0xa07c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc5c>
    9d16: ed9d 1a28    	vldr	s2, [sp, #160]
    9d1a: ed8d 1a1e    	vstr	s2, [sp, #120]
    9d1e: eeb0 4ac1    	vabs.f32	s8, s2
    9d22: eeb4 0a40    	vcmp.f32	s0, s0
    9d26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d2a: fe1c 0a80    	vselvs.f32	s0, s25, s0
    9d2e: eeb4 0a6c    	vcmp.f32	s0, s25
    9d32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d36: fe30 0a2c    	vselgt.f32	s0, s0, s25
    9d3a: ee20 0a03    	vmul.f32	s0, s0, s6
    9d3e: fe80 0a42    	vminnm.f32	s0, s0, s4
    9d42: eeb4 4a40    	vcmp.f32	s8, s0
    9d46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d4a: d839         	bhi	0x9dc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9a0> @ imm = #0x72
    9d4c: ed9d 0a24    	vldr	s0, [sp, #144]
    9d50: ed9d 1a29    	vldr	s2, [sp, #164]
    9d54: eeb0 0ac0    	vabs.f32	s0, s0
    9d58: eeb0 1ac1    	vabs.f32	s2, s2
    9d5c: eeb4 0a40    	vcmp.f32	s0, s0
    9d60: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d64: fe1c 0a80    	vselvs.f32	s0, s25, s0
    9d68: eeb4 0a6c    	vcmp.f32	s0, s25
    9d6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d70: fe30 0a2c    	vselgt.f32	s0, s0, s25
    9d74: ee20 0a03    	vmul.f32	s0, s0, s6
    9d78: fe80 0a42    	vminnm.f32	s0, s0, s4
    9d7c: eeb4 1a40    	vcmp.f32	s2, s0
    9d80: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d84: d81c         	bhi	0x9dc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9a0> @ imm = #0x38
    9d86: ed9d 0a23    	vldr	s0, [sp, #140]
    9d8a: ed9d 1a2a    	vldr	s2, [sp, #168]
    9d8e: eeb0 0ac0    	vabs.f32	s0, s0
    9d92: eeb0 1ac1    	vabs.f32	s2, s2
    9d96: eeb4 0a40    	vcmp.f32	s0, s0
    9d9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9d9e: fe1c 0a80    	vselvs.f32	s0, s25, s0
    9da2: eeb4 0a6c    	vcmp.f32	s0, s25
    9da6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9daa: fe30 0a2c    	vselgt.f32	s0, s0, s25
    9dae: ee20 0a03    	vmul.f32	s0, s0, s6
    9db2: fe80 0a42    	vminnm.f32	s0, s0, s4
    9db6: eeb4 1a40    	vcmp.f32	s2, s0
    9dba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dbe: d91b         	bls	0x9df8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9d8> @ imm = #0x36
    9dc0: 2000         	movs	r0, #0x0
    9dc2: ed9f 0aaf    	vldr	s0, [pc, #700]          @ 0xa080 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc60>
    9dc6: eeb4 9a40    	vcmp.f32	s18, s0
    9dca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9dce: d81b         	bhi	0x9e08 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9e8> @ imm = #0x36
    9dd0: f1ab 0110    	sub.w	r1, r11, #0x10
    9dd4: fab1 f181    	clz	r1, r1
    9dd8: 0949         	lsrs	r1, r1, #0x5
    9dda: 4301         	orrs	r1, r0
    9ddc: d018         	beq	0x9e10 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9f0> @ imm = #0x30
    9dde: f000 bc6c    	b.w	0xa6ba <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x129a> @ imm = #0x8d8
    9de2: bf00         	nop
    9de4: d6 f8 e4 b6  	.word	0xb6e4f8d6
    9de8: af e6 27 39  	.word	0x3927e6af
    9dec: 00 00 00 00  	.word	0x00000000
    9df0: 2b 18 95 3b  	.word	0x3b95182b
    9df4: 00 bf 00 bf  	.word	0xbf00bf00
    9df8: 2001         	movs	r0, #0x1
    9dfa: ed9f 0aa1    	vldr	s0, [pc, #644]          @ 0xa080 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc60>
    9dfe: eeb4 9a40    	vcmp.f32	s18, s0
    9e02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9e06: d9e3         	bls	0x9dd0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x9b0> @ imm = #-0x3a
    9e08: f1bb 0f10    	cmp.w	r11, #0x10
    9e0c: f000 8470    	beq.w	0xa6f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12d0> @ imm = #0x8e0
    9e10: f04f 507e    	mov.w	r0, #0x3f800000
    9e14: ed8d 4a07    	vstr	s8, [sp, #28]
    9e18: ed8d 9a0a    	vstr	s18, [sp, #40]
    9e1c: ed9d 0a29    	vldr	s0, [sp, #164]
    9e20: ed8d 0a21    	vstr	s0, [sp, #132]
    9e24: ed9d 0a2a    	vldr	s0, [sp, #168]
    9e28: ed8d 0a22    	vstr	s0, [sp, #136]
    9e2c: e014         	b	0x9e58 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa38> @ imm = #0x28
    9e2e: bf00         	nop
    9e30: 83 c0 96 38  	.word	0x3896c083
    9e34: 00 bf 00 bf  	.word	0xbf00bf00
    9e38: d2 ce fe 14  	.word	0x14feced2
    9e3c: cf 45 20 3f  	.word	0x3f2045cf
    9e40: eef0 9a4d    	vmov.f32	s19, s26
    9e44: eef0 ea42    	vmov.f32	s29, s4
    9e48: eef7 ca00    	vmov.f32	s25, #1.000000e+00
    9e4c: f5a0 0000    	sub.w	r0, r0, #0x800000
    9e50: f1b0 5f66    	cmp.w	r0, #0x39800000
    9e54: f000 8400    	beq.w	0xa658 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1238> @ imm = #0x800
    9e58: ee05 0a90    	vmov	s11, r0
    9e5c: ed9d 0a1e    	vldr	s0, [sp, #120]
    9e60: ed9d 1a26    	vldr	s2, [sp, #152]
    9e64: eeb0 6a4c    	vmov.f32	s12, s24
    9e68: ed9f 2b71    	vldr	d2, [pc, #452]          @ 0xa030 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc10>
    9e6c: ee00 1a25    	vmla.f32	s2, s0, s11
    9e70: ed9d 3a24    	vldr	s6, [sp, #144]
    9e74: ed9d 0b1c    	vldr	d0, [sp, #112]
    9e78: eef0 3a4c    	vmov.f32	s7, s24
    9e7c: ed9d 4b18    	vldr	d4, [sp, #96]
    9e80: ed9d 8b1a    	vldr	d8, [sp, #104]
    9e84: eeb7 aac1    	vcvt.f64.f32	d10, s2
    9e88: ee0a 0b02    	vmla.f64	d0, d10, d2
    9e8c: ed9f 2b6a    	vldr	d2, [pc, #424]          @ 0xa038 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc18>
    9e90: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    9e94: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    9e98: ee00 4b02    	vmla.f64	d4, d0, d2
    9e9c: ed9d 0a21    	vldr	s0, [sp, #132]
    9ea0: ee00 3a25    	vmla.f32	s6, s0, s11
    9ea4: ed9f 0b66    	vldr	d0, [pc, #408]          @ 0xa040 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc20>
    9ea8: ee84 0b00    	vdiv.f64	d0, d4, d0
    9eac: ed9f 2b66    	vldr	d2, [pc, #408]          @ 0xa048 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc28>
    9eb0: eeb7 bac3    	vcvt.f64.f32	d11, s6
    9eb4: eeb7 7bc0    	vcvt.f32.f64	s14, d0
    9eb8: ed9f 0b65    	vldr	d0, [pc, #404]          @ 0xa050 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc30>
    9ebc: eef4 9a47    	vcmp.f32	s19, s14
    9ec0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ec4: ee0a 8b00    	vmla.f64	d8, d10, d0
    9ec8: fe39 0a87    	vselgt.f32	s0, s19, s14
    9ecc: ee0b 8b02    	vmla.f64	d8, d11, d2
    9ed0: ed9f 2b61    	vldr	d2, [pc, #388]          @ 0xa058 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc38>
    9ed4: eeb4 0a6e    	vcmp.f32	s0, s29
    9ed8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9edc: eeb4 2b48    	vcmp.f64	d2, d8
    9ee0: fe3e 5a80    	vselgt.f32	s10, s29, s0
    9ee4: ed9f 2b5e    	vldr	d2, [pc, #376]          @ 0xa060 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc40>
    9ee8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9eec: eef7 0bc8    	vcvt.f32.f64	s1, d8
    9ef0: eeb4 8b42    	vcmp.f64	d8, d2
    9ef4: eebf 2a00    	vmov.f32	s4, #-1.000000e+00
    9ef8: eef0 2a4c    	vmov.f32	s5, s24
    9efc: eeb0 0ae0    	vabs.f32	s0, s1
    9f00: fe72 0a0c    	vselgt.f32	s1, s4, s24
    9f04: ed9f 2ac2    	vldr	s4, [pc, #776]          @ 0xa210 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf0>
    9f08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f0c: eeb4 0a42    	vcmp.f32	s0, s4
    9f10: eeb0 2a4c    	vmov.f32	s4, s24
    9f14: fe7c 1aa0    	vselgt.f32	s3, s25, s1
    9f18: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f1c: f280 80e0    	bge.w	0xa0e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcc0> @ imm = #0x1c0
    9f20: eef0 2a4c    	vmov.f32	s5, s24
    9f24: eef7 0a08    	vmov.f32	s1, #1.500000e+00
    9f28: ed9f 2aba    	vldr	s4, [pc, #744]          @ 0xa214 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf4>
    9f2c: eeb4 0a42    	vcmp.f32	s0, s4
    9f30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f34: d92a         	bls	0x9f8c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb6c> @ imm = #0x54
    9f36: ed9f 2ab8    	vldr	s4, [pc, #736]          @ 0xa218 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf8>
    9f3a: eeb4 0a42    	vcmp.f32	s0, s4
    9f3e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9f42: d919         	bls	0x9f78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb58> @ imm = #0x32
    9f44: ed9f 2ab5    	vldr	s4, [pc, #724]          @ 0xa21c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdfc>
    9f48: eef0 0a08    	vmov.f32	s1, #3.000000e+00
    9f4c: ee30 0a02    	vadd.f32	s0, s0, s4
    9f50: ed9f 2ab3    	vldr	s4, [pc, #716]          @ 0xa220 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe00>
    9f54: e016         	b	0x9f84 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xb64> @ imm = #0x2c
    9f56: bf00         	nop
    9f58: 95 bf d6 33  	.word	0x33d6bf95
    9f5c: 79 2e 02 39  	.word	0x39022e79
    9f60: 6f f3 03 be  	.word	0xbe03f36f
    9f64: 79 2e 02 b9  	.word	0xb9022e79
    9f68: d5 35 a4 be  	.word	0xbea435d5
    9f6c: fc 9d 08 bf  	.word	0xbf089dfc
    9f70: 0a d7 23 3c  	.word	0x3c23d70a
    9f74: 00 bf 00 bf  	.word	0xbf00bf00
    9f78: ed9f 2aeb    	vldr	s4, [pc, #940]          @ 0xa328 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf08>
    9f7c: ee30 0a02    	vadd.f32	s0, s0, s4
    9f80: ed9f 2aea    	vldr	s4, [pc, #936]          @ 0xa32c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf0c>
    9f84: ee40 0a02    	vmla.f32	s1, s0, s4
    9f88: ee61 2a82    	vmul.f32	s5, s3, s4
    9f8c: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    9f90: eeb1 6a62    	vneg.f32	s12, s5
    9f94: ee30 0a60    	vsub.f32	s0, s0, s1
    9f98: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
    9f9c: eeb5 0a40    	vcmp.f32	s0, #0
    9fa0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fa4: d960         	bls	0xa068 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc48> @ imm = #0xc0
    9fa6: eef0 1ac5    	vabs.f32	s3, s10
    9faa: eef4 1a40    	vcmp.f32	s3, s0
    9fae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fb2: d969         	bls	0xa088 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc68> @ imm = #0xd2
    9fb4: eec0 1a21    	vdiv.f32	s3, s0, s3
    9fb8: eef0 3a6c    	vmov.f32	s7, s25
    9fbc: ee61 2aa1    	vmul.f32	s5, s3, s3
    9fc0: ee62 2aa2    	vmul.f32	s5, s5, s5
    9fc4: ee62 2aa2    	vmul.f32	s5, s5, s5
    9fc8: ee62 4aa2    	vmul.f32	s9, s5, s5
    9fcc: ee74 2aac    	vadd.f32	s5, s9, s25
    9fd0: eef4 2a6c    	vcmp.f32	s5, s25
    9fd4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9fd8: d009         	beq	0x9fee <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xbce> @ imm = #0x12
    9fda: eef0 3a62    	vmov.f32	s7, s5
    9fde: eef1 3ae3    	vsqrt.f32	s7, s7
    9fe2: eef1 3ae3    	vsqrt.f32	s7, s7
    9fe6: eef1 3ae3    	vsqrt.f32	s7, s7
    9fea: eef1 3ae3    	vsqrt.f32	s7, s7
    9fee: eecc 7aa3    	vdiv.f32	s15, s25, s7
    9ff2: eeb4 5a45    	vcmp.f32	s10, s10
    9ff6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    9ffa: eec7 6aa2    	vdiv.f32	s13, s15, s5
    9ffe: eddf 2acc    	vldr	s5, [pc, #816]          @ 0xa330 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf10>
    a002: eef0 3a62    	vmov.f32	s7, s5
    a006: bf7f         	itttt	vc
    a008: ee15 1a10    	vmovvc	r1, s10
    a00c: f366 011e    	bfivc	r1, r6, #0, #31
    a010: ee03 1a90    	vmovvc	s7, r1
    a014: ee23 0a80    	vmulvc.f32	s0, s7, s0
    a018: bf7c         	itt	vc
    a01a: ee60 2a27    	vmulvc.f32	s5, s0, s15
    a01e: ee63 3aa6    	vmulvc.f32	s7, s7, s13
    a022: ee21 0aa4    	vmul.f32	s0, s3, s9
    a026: ee20 2a26    	vmul.f32	s4, s0, s13
    a02a: e059         	b	0xa0e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcc0> @ imm = #0xb2
    a02c: bf00         	nop
    a02e: bf00         	nop
    a030: 1c 38 88 77  	.word	0x7788381c
    a034: bf 13 e1 bf  	.word	0xbfe113bf
    a038: 91 d4 a8 53  	.word	0x53a8d491
    a03c: ec f7 77 41  	.word	0x4177f7ec
    a040: a7 2a 45 4f  	.word	0x4f452aa7
    a044: ed 97 01 41  	.word	0x410197ed
    a048: 58 62 94 b9  	.word	0xb9946258
    a04c: 1a 9f dc 3e  	.word	0x3edc9f1a
    a050: 61 05 bc 57  	.word	0x57bc0561
    a054: 10 d8 12 bf  	.word	0xbf12d810
    a058: 00 00 00 00  	.word	0x00000000
    a05c: 00 00 90 b6  	.word	0xb6900000
    a060: 00 00 00 00  	.word	0x00000000
    a064: 00 00 90 36  	.word	0x36900000
    a068: eef0 2a4c    	vmov.f32	s5, s24
    a06c: eeb0 2a4c    	vmov.f32	s4, s24
    a070: eef0 3a4c    	vmov.f32	s7, s24
    a074: e034         	b	0xa0e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcc0> @ imm = #0x68
    a076: bf00         	nop
    a078: bd 37 06 36  	.word	0x360637bd
    a07c: ac c5 a7 37  	.word	0x37a7c5ac
    a080: 17 b7 d1 38  	.word	0x38d1b717
    a084: 00 bf 00 bf  	.word	0xbf00bf00
    a088: eec5 1a00    	vdiv.f32	s3, s10, s0
    a08c: eef0 3a6c    	vmov.f32	s7, s25
    a090: ee61 1aa1    	vmul.f32	s3, s3, s3
    a094: ee61 1aa1    	vmul.f32	s3, s3, s3
    a098: ee61 1aa1    	vmul.f32	s3, s3, s3
    a09c: ee61 1aa1    	vmul.f32	s3, s3, s3
    a0a0: ee71 2aac    	vadd.f32	s5, s3, s25
    a0a4: eef4 2a6c    	vcmp.f32	s5, s25
    a0a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a0ac: d009         	beq	0xa0c2 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xca2> @ imm = #0x12
    a0ae: eef0 3a62    	vmov.f32	s7, s5
    a0b2: eef1 3ae3    	vsqrt.f32	s7, s7
    a0b6: eef1 3ae3    	vsqrt.f32	s7, s7
    a0ba: eef1 3ae3    	vsqrt.f32	s7, s7
    a0be: eef1 3ae3    	vsqrt.f32	s7, s7
    a0c2: eecc 3aa3    	vdiv.f32	s7, s25, s7
    a0c6: ee65 1a21    	vmul.f32	s3, s10, s3
    a0ca: ee83 2aa2    	vdiv.f32	s4, s7, s5
    a0ce: ee81 0a80    	vdiv.f32	s0, s3, s0
    a0d2: ee65 2a23    	vmul.f32	s5, s10, s7
    a0d6: ee60 3a02    	vmul.f32	s7, s0, s4
    a0da: bf00         	nop
    a0dc: bf00         	nop
    a0de: bf00         	nop
    a0e0: ee71 2a62    	vsub.f32	s5, s2, s5
    a0e4: ed9d 0a22    	vldr	s0, [sp, #136]
    a0e8: eddd 1a23    	vldr	s3, [sp, #140]
    a0ec: ee40 1a25    	vmla.f32	s3, s0, s11
    a0f0: ed8d 2a0b    	vstr	s4, [sp, #44]
    a0f4: eeb0 2a6e    	vmov.f32	s4, s29
    a0f8: ee12 1a90    	vmov	r1, s5
    a0fc: eddf 8a8d    	vldr	s17, [pc, #564]         @ 0xa334 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf14>
    a100: f021 4100    	bic	r1, r1, #0x80000000
    a104: f1b1 4fff    	cmp.w	r1, #0x7f800000
    a108: da07         	bge	0xa11a <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xcfa> @ imm = #0xe
    a10a: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    a10e: ee82 0a80    	vdiv.f32	s0, s5, s0
    a112: eeb0 0ac0    	vabs.f32	s0, s0
    a116: fec0 8a0c    	vmaxnm.f32	s17, s0, s24
    a11a: ed9f db71    	vldr	d13, [pc, #452]         @ 0xa2e0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xec0>
    a11e: eddd 5a1f    	vldr	s11, [sp, #124]
    a122: ed9d fb16    	vldr	d15, [sp, #88]
    a126: ee0a fb0d    	vmla.f64	d15, d10, d13
    a12a: ed9f db6f    	vldr	d13, [pc, #444]         @ 0xa2e8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xec8>
    a12e: ee0b fb0d    	vmla.f64	d15, d11, d13
    a132: ed1f db3f    	vldr	d13, [pc, #-252]        @ 0xa038 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc18>
    a136: eeb7 0bcf    	vcvt.f32.f64	s0, d15
    a13a: ed9d eb14    	vldr	d14, [sp, #80]
    a13e: eeb7 fac0    	vcvt.f64.f32	d15, s0
    a142: ed9d 0a20    	vldr	s0, [sp, #128]
    a146: ee0f eb0d    	vmla.f64	d14, d15, d13
    a14a: eeb7 fae1    	vcvt.f64.f32	d15, s3
    a14e: ed1f db44    	vldr	d13, [pc, #-272]        @ 0xa040 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc20>
    a152: ee8e eb0d    	vdiv.f64	d14, d14, d13
    a156: ed9f db66    	vldr	d13, [pc, #408]         @ 0xa2f0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xed0>
    a15a: eef7 7bce    	vcvt.f32.f64	s15, d14
    a15e: ed9d eb12    	vldr	d14, [sp, #72]
    a162: eeb4 0a67    	vcmp.f32	s0, s15
    a166: ee0a eb0d    	vmla.f64	d14, d10, d13
    a16a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a16e: ed9f ab62    	vldr	d10, [pc, #392]         @ 0xa2f8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xed8>
    a172: fe30 0a27    	vselgt.f32	s0, s0, s15
    a176: ee0b eb0a    	vmla.f64	d14, d11, d10
    a17a: ed9f ab61    	vldr	d10, [pc, #388]         @ 0xa300 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xee0>
    a17e: eeb4 0a65    	vcmp.f32	s0, s11
    a182: ee0f eb0a    	vmla.f64	d14, d15, d10
    a186: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a18a: ed1f ab4d    	vldr	d10, [pc, #-308]        @ 0xa058 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc38>
    a18e: fe75 5a80    	vselgt.f32	s11, s11, s0
    a192: eef7 6bce    	vcvt.f32.f64	s13, d14
    a196: eeb4 ab4e    	vcmp.f64	d10, d14
    a19a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a19e: eeb0 0ae6    	vabs.f32	s0, s13
    a1a2: eeff 6a00    	vmov.f32	s13, #-1.000000e+00
    a1a6: ed1f ab52    	vldr	d10, [pc, #-328]        @ 0xa060 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xc40>
    a1aa: fe76 6a8c    	vselgt.f32	s13, s13, s24
    a1ae: eeb4 eb4a    	vcmp.f64	d14, d10
    a1b2: eeb0 ea4c    	vmov.f32	s28, s24
    a1b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1ba: eef0 aa4c    	vmov.f32	s21, s24
    a1be: eeb0 aa4c    	vmov.f32	s20, s24
    a1c2: fe3c 8aa6    	vselgt.f32	s16, s25, s13
    a1c6: eddf 6a12    	vldr	s13, [pc, #72]          @ 0xa210 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xdf0>
    a1ca: eeb4 0a66    	vcmp.f32	s0, s13
    a1ce: eef0 6a4c    	vmov.f32	s13, s24
    a1d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1d6: f280 80db    	bge.w	0xa390 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf70> @ imm = #0x1b6
    a1da: eeb0 9a4c    	vmov.f32	s18, s24
    a1de: eef7 6a08    	vmov.f32	s13, #1.500000e+00
    a1e2: ed9f 4a4d    	vldr	s8, [pc, #308]          @ 0xa318 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xef8>
    a1e6: eeb4 0a44    	vcmp.f32	s0, s8
    a1ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1ee: d925         	bls	0xa23c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe1c> @ imm = #0x4a
    a1f0: ed9f 4a4a    	vldr	s8, [pc, #296]          @ 0xa31c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xefc>
    a1f4: eeb4 0a44    	vcmp.f32	s0, s8
    a1f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a1fc: d914         	bls	0xa228 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe08> @ imm = #0x28
    a1fe: ed9f 4a48    	vldr	s8, [pc, #288]          @ 0xa320 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf00>
    a202: eef0 6a08    	vmov.f32	s13, #3.000000e+00
    a206: ee30 0a04    	vadd.f32	s0, s0, s8
    a20a: ed9f 4a46    	vldr	s8, [pc, #280]          @ 0xa324 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf04>
    a20e: e011         	b	0xa234 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe14> @ imm = #0x22
    a210: 0a d7 23 3d  	.word	0x3d23d70a
    a214: 7c f2 b0 3a  	.word	0x3ab0f27c
    a218: a6 9b c4 3b  	.word	0x3bc49ba6
    a21c: a6 9b c4 bb  	.word	0xbbc49ba6
    a220: 79 78 b0 43  	.word	0x43b07879
    a224: 00 bf 00 bf  	.word	0xbf00bf00
    a228: ed9f 4a3f    	vldr	s8, [pc, #252]          @ 0xa328 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf08>
    a22c: ee30 0a04    	vadd.f32	s0, s0, s8
    a230: ed9f 4a3e    	vldr	s8, [pc, #248]          @ 0xa32c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf0c>
    a234: ee40 6a04    	vmla.f32	s13, s0, s8
    a238: ee28 9a04    	vmul.f32	s18, s16, s8
    a23c: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    a240: ee30 0a66    	vsub.f32	s0, s0, s13
    a244: eef1 6a49    	vneg.f32	s13, s18
    a248: fe80 0a0c    	vmaxnm.f32	s0, s0, s24
    a24c: eeb5 0a40    	vcmp.f32	s0, #0
    a250: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a254: d958         	bls	0xa308 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xee8> @ imm = #0xb0
    a256: eeb0 8ae5    	vabs.f32	s16, s11
    a25a: eeb4 8a40    	vcmp.f32	s16, s0
    a25e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a262: d969         	bls	0xa338 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf18> @ imm = #0xd2
    a264: ee80 8a08    	vdiv.f32	s16, s0, s16
    a268: eeb0 aa6c    	vmov.f32	s20, s25
    a26c: ee28 9a08    	vmul.f32	s18, s16, s16
    a270: ee29 9a09    	vmul.f32	s18, s18, s18
    a274: ee29 9a09    	vmul.f32	s18, s18, s18
    a278: ee69 aa09    	vmul.f32	s21, s18, s18
    a27c: ee3a 9aac    	vadd.f32	s18, s21, s25
    a280: eeb4 9a6c    	vcmp.f32	s18, s25
    a284: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a288: d009         	beq	0xa29e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xe7e> @ imm = #0x12
    a28a: eeb0 aa49    	vmov.f32	s20, s18
    a28e: eeb1 aaca    	vsqrt.f32	s20, s20
    a292: eeb1 aaca    	vsqrt.f32	s20, s20
    a296: eeb1 aaca    	vsqrt.f32	s20, s20
    a29a: eeb1 aaca    	vsqrt.f32	s20, s20
    a29e: eecc da8a    	vdiv.f32	s27, s25, s20
    a2a2: ed9f ea23    	vldr	s28, [pc, #140]         @ 0xa330 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf10>
    a2a6: eef4 5a65    	vcmp.f32	s11, s11
    a2aa: eeb0 aa4e    	vmov.f32	s20, s28
    a2ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a2b2: eecd ca89    	vdiv.f32	s25, s27, s18
    a2b6: bf7f         	itttt	vc
    a2b8: ee15 1a90    	vmovvc	r1, s11
    a2bc: f366 011e    	bfivc	r1, r6, #0, #31
    a2c0: ee09 1a10    	vmovvc	s18, r1
    a2c4: ee29 0a00    	vmulvc.f32	s0, s18, s0
    a2c8: bf7c         	itt	vc
    a2ca: ee20 ea2d    	vmulvc.f32	s28, s0, s27
    a2ce: ee29 aa2c    	vmulvc.f32	s20, s18, s25
    a2d2: ee28 0a2a    	vmul.f32	s0, s16, s21
    a2d6: ee60 aa2c    	vmul.f32	s21, s0, s25
    a2da: e059         	b	0xa390 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf70> @ imm = #0xb2
    a2dc: bf00         	nop
    a2de: bf00         	nop
    a2e0: 15 be b6 e5  	.word	0xe5b6be15
    a2e4: 6d 7e c0 bf  	.word	0xbfc07e6d
    a2e8: 67 42 87 92  	.word	0x92874267
    a2ec: ba 86 d4 bf  	.word	0xbfd486ba
    a2f0: 59 62 94 b9  	.word	0xb9946259
    a2f4: 1a 9f dc 3e  	.word	0x3edc9f1a
    a2f8: 14 90 51 d1  	.word	0xd1519014
    a2fc: d5 fc 24 bf  	.word	0xbf24fcd5
    a300: 14 d0 fe 14  	.word	0x14fed014
    a304: cf 45 20 3f  	.word	0x3f2045cf
    a308: eeb0 ea4c    	vmov.f32	s28, s24
    a30c: eef0 aa4c    	vmov.f32	s21, s24
    a310: eeb0 aa4c    	vmov.f32	s20, s24
    a314: e03c         	b	0xa390 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf70> @ imm = #0x78
    a316: bf00         	nop
    a318: 7c f2 b0 3a  	.word	0x3ab0f27c
    a31c: a6 9b c4 3b  	.word	0x3bc49ba6
    a320: a6 9b c4 bb  	.word	0xbbc49ba6
    a324: 79 78 b0 43  	.word	0x43b07879
    a328: 7c f2 b0 ba  	.word	0xbab0f27c
    a32c: 53 4a a1 43  	.word	0x43a14a53
    a330: 00 00 c0 7f  	.word	0x7fc00000
    a334: 00 00 80 7f  	.word	0x7f800000
    a338: ee85 8a80    	vdiv.f32	s16, s11, s0
    a33c: eeb0 aa6c    	vmov.f32	s20, s25
    a340: ee28 8a08    	vmul.f32	s16, s16, s16
    a344: ee28 8a08    	vmul.f32	s16, s16, s16
    a348: ee28 8a08    	vmul.f32	s16, s16, s16
    a34c: ee28 8a08    	vmul.f32	s16, s16, s16
    a350: ee38 9a2c    	vadd.f32	s18, s16, s25
    a354: eeb4 9a6c    	vcmp.f32	s18, s25
    a358: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a35c: d009         	beq	0xa372 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xf52> @ imm = #0x12
    a35e: eeb0 aa49    	vmov.f32	s20, s18
    a362: eeb1 aaca    	vsqrt.f32	s20, s20
    a366: eeb1 aaca    	vsqrt.f32	s20, s20
    a36a: eeb1 aaca    	vsqrt.f32	s20, s20
    a36e: eeb1 aaca    	vsqrt.f32	s20, s20
    a372: ee8c aa8a    	vdiv.f32	s20, s25, s20
    a376: ee25 8a88    	vmul.f32	s16, s11, s16
    a37a: eeca aa09    	vdiv.f32	s21, s20, s18
    a37e: ee88 0a00    	vdiv.f32	s0, s16, s0
    a382: ee25 ea8a    	vmul.f32	s28, s11, s20
    a386: ee20 aa2a    	vmul.f32	s20, s0, s21
    a38a: bf00         	nop
    a38c: bf00         	nop
    a38e: bf00         	nop
    a390: ee73 ca4e    	vsub.f32	s25, s6, s28
    a394: eeb0 da69    	vmov.f32	s26, s19
    a398: ed9f 8af0    	vldr	s16, [pc, #960]         @ 0xa75c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x133c>
    a39c: ee1c 1a90    	vmov	r1, s25
    a3a0: f021 4100    	bic	r1, r1, #0x80000000
    a3a4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    a3a8: da17         	bge	0xa3da <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xfba> @ imm = #0x2e
    a3aa: eeb2 0a0e    	vmov.f32	s0, #1.500000e+01
    a3ae: eef4 8a68    	vcmp.f32	s17, s17
    a3b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3b6: ee8c 0a80    	vdiv.f32	s0, s25, s0
    a3ba: eeb0 0ac0    	vabs.f32	s0, s0
    a3be: fe10 8a28    	vselvs.f32	s16, s0, s17
    a3c2: eeb4 0a40    	vcmp.f32	s0, s0
    a3c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3ca: fe18 0a00    	vselvs.f32	s0, s16, s0
    a3ce: eeb4 8a40    	vcmp.f32	s16, s0
    a3d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a3d6: fe38 8a00    	vselgt.f32	s16, s16, s0
    a3da: ed9f 4bd7    	vldr	d4, [pc, #860]          @ 0xa738 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1318>
    a3de: eddf 8ae3    	vldr	s17, [pc, #908]         @ 0xa76c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x134c>
    a3e2: ee2b eb04    	vmul.f64	d14, d11, d4
    a3e6: ed9d 9b0e    	vldr	d9, [sp, #56]
    a3ea: ed9f 0bd5    	vldr	d0, [pc, #852]          @ 0xa740 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1320>
    a3ee: ee3e 9b09    	vadd.f64	d9, d14, d9
    a3f2: ee0f 9b00    	vmla.f64	d9, d15, d0
    a3f6: ed9d 0b0c    	vldr	d0, [sp, #48]
    a3fa: ee3e eb00    	vadd.f64	d14, d14, d0
    a3fe: eef8 0a00    	vmov.f32	s1, #-2.000000e+00
    a402: ee0f eb44    	vmls.f64	d14, d15, d4
    a406: eeb6 4a00    	vmov.f32	s8, #5.000000e-01
    a40a: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    a40e: eef7 dbce    	vcvt.f32.f64	s27, d14
    a412: eeb0 ea4c    	vmov.f32	s28, s24
    a416: fe80 9a6d    	vminnm.f32	s18, s0, s27
    a41a: ee34 9a49    	vsub.f32	s18, s8, s18
    a41e: eeb4 9a60    	vcmp.f32	s18, s1
    a422: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a426: d923         	bls	0xa470 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1050> @ imm = #0x46
    a428: eeb4 9a49    	vcmp.f32	s18, s18
    a42c: eef0 8a4c    	vmov.f32	s17, s24
    a430: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a434: 4649         	mov	r1, r9
    a436: fe1c ea09    	vselvs.f32	s28, s24, s18
    a43a: eeb5 ea40    	vcmp.f32	s28, #0
    a43e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a442: bfb8         	it	lt
    a444: eef0 8a4e    	vmovlt.f32	s17, s28
    a448: eeb7 ea00    	vmov.f32	s28, #1.000000e+00
    a44c: eeb5 9a40    	vcmp.f32	s18, #0
    a450: ee08 ea84    	vmla.f32	s28, s17, s8
    a454: ed9f 4ac6    	vldr	s8, [pc, #792]          @ 0xa770 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1350>
    a458: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a45c: bf48         	it	mi
    a45e: 3104         	addmi	r1, #0x4
    a460: ee2e ea04    	vmul.f32	s28, s28, s8
    a464: ed9f 4ac1    	vldr	s8, [pc, #772]          @ 0xa76c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x134c>
    a468: fece 8a04    	vmaxnm.f32	s17, s28, s8
    a46c: ed91 ea00    	vldr	s28, [r1]
    a470: ed9f 4baf    	vldr	d4, [pc, #700]          @ 0xa730 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1310>
    a474: ed9d 9b10    	vldr	d9, [sp, #64]
    a478: ee0b 9b04    	vmla.f64	d9, d11, d4
    a47c: ee0f 9b44    	vmls.f64	d9, d15, d4
    a480: eeb7 bbc9    	vcvt.f32.f64	s22, d9
    a484: ee11 baa8    	vnmls.f32	s22, s3, s17
    a488: ee1b 1a10    	vmov	r1, s22
    a48c: f021 4100    	bic	r1, r1, #0x80000000
    a490: f1b1 4fff    	cmp.w	r1, #0x7f800000
    a494: f6bf acd4    	bge.w	0x9e40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa20> @ imm = #-0x658
    a498: ed9f 4ab9    	vldr	s8, [pc, #740]          @ 0xa780 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1360>
    a49c: eeb4 8a48    	vcmp.f32	s16, s16
    a4a0: ee8b 9a04    	vdiv.f32	s18, s22, s8
    a4a4: ed9d 4a0a    	vldr	s8, [sp, #40]
    a4a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4ac: eeb0 9ac9    	vabs.f32	s18, s18
    a4b0: fe19 8a08    	vselvs.f32	s16, s18, s16
    a4b4: eeb4 9a49    	vcmp.f32	s18, s18
    a4b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4bc: fe18 9a09    	vselvs.f32	s18, s16, s18
    a4c0: eeb4 8a49    	vcmp.f32	s16, s18
    a4c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4c8: fe38 fa09    	vselgt.f32	s30, s16, s18
    a4cc: eeb4 fa44    	vcmp.f32	s30, s8
    a4d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4d4: f57f acb4    	bpl.w	0x9e40 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0xa20> @ imm = #-0x698
    a4d8: eeb4 2a47    	vcmp.f32	s4, s14
    a4dc: ed9f 4a9b    	vldr	s8, [pc, #620]          @ 0xa74c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x132c>
    a4e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a4e4: eeb4 7a4d    	vcmp.f32	s14, s26
    a4e8: ed9f 7a99    	vldr	s14, [pc, #612]         @ 0xa750 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1330>
    a4ec: eef0 ea42    	vmov.f32	s29, s4
    a4f0: f44f 7050    	mov.w	r0, #0x340
    a4f4: fe34 2a07    	vselgt.f32	s4, s8, s14
    a4f8: f64d 31c0    	movw	r1, #0xdbc0
    a4fc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a500: f2c0 0100    	movt	r1, #0x0
    a504: f04f 567e    	mov.w	r6, #0x3f800000
    a508: fe72 0a07    	vselgt.f32	s1, s4, s14
    a50c: ed9d 2a1f    	vldr	s4, [sp, #124]
    a510: eeb4 2a67    	vcmp.f32	s4, s15
    a514: ed9d 2a20    	vldr	s4, [sp, #128]
    a518: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a51c: eef4 7a42    	vcmp.f32	s15, s4
    a520: ed9f 8a8f    	vldr	s16, [pc, #572]         @ 0xa760 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1340>
    a524: fe34 2a07    	vselgt.f32	s4, s8, s14
    a528: eddf ba8f    	vldr	s23, [pc, #572]         @ 0xa768 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1348>
    a52c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a530: eeb4 0a6d    	vcmp.f32	s0, s27
    a534: fe32 2a07    	vselgt.f32	s4, s4, s14
    a538: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a53c: bf88         	it	hi
    a53e: f44f 7060    	movhi.w	r0, #0x380
    a542: f1bb 0f10    	cmp.w	r11, #0x10
    a546: ed9d 0a04    	vldr	s0, [sp, #16]
    a54a: 4408         	add	r0, r1
    a54c: 9901         	ldr	r1, [sp, #0x4]
    a54e: ed90 7b0c    	vldr	d7, [r0, #48]
    a552: ed81 0a02    	vstr	s0, [r1, #8]
    a556: ed9d 0a03    	vldr	s0, [sp, #12]
    a55a: ed90 4b08    	vldr	d4, [r0, #32]
    a55e: ed81 0a03    	vstr	s0, [r1, #12]
    a562: ed8d 4b24    	vstr	d4, [sp, #144]
    a566: ed81 1a04    	vstr	s2, [r1, #16]
    a56a: ed90 4b0a    	vldr	d4, [r0, #40]
    a56e: ed81 3a05    	vstr	s6, [r1, #20]
    a572: 9802         	ldr	r0, [sp, #0x8]
    a574: ed8d 4b26    	vstr	d4, [sp, #152]
    a578: eddf 4a77    	vldr	s9, [pc, #476]          @ 0xa758 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1338>
    a57c: edc1 1a06    	vstr	s3, [r1, #24]
    a580: 61c8         	str	r0, [r1, #0x1c]
    a582: d05e         	beq	0xa642 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1222> @ imm = #0xbc
    a584: ed9d 0a0b    	vldr	s0, [sp, #44]
    a588: eef0 9a4d    	vmov.f32	s19, s26
    a58c: ee20 4a80    	vmul.f32	s8, s1, s0
    a590: eddf da7e    	vldr	s27, [pc, #504]         @ 0xa78c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x136c>
    a594: ee66 0a23    	vmul.f32	s1, s12, s7
    a598: ed9f 6a6e    	vldr	s12, [pc, #440]         @ 0xa754 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1334>
    a59c: ee66 6a8a    	vmul.f32	s13, s13, s20
    a5a0: ed9f 9a76    	vldr	s18, [pc, #472]         @ 0xa77c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x135c>
    a5a4: ee24 0a0c    	vmul.f32	s0, s8, s24
    a5a8: 4620         	mov	r0, r4
    a5aa: ee20 da86    	vmul.f32	s26, s1, s12
    a5ae: ed9f 6a68    	vldr	s12, [pc, #416]         @ 0xa750 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1330>
    a5b2: ee04 da24    	vmla.f32	s26, s8, s9
    a5b6: ed9f 4a6b    	vldr	s8, [pc, #428]          @ 0xa764 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1344>
    a5ba: eef0 4a40    	vmov.f32	s9, s0
    a5be: ee40 4a86    	vmla.f32	s9, s1, s12
    a5c2: ee00 0aed    	vmls.f32	s0, s1, s27
    a5c6: 4641         	mov	r1, r8
    a5c8: ee61 0a8e    	vmul.f32	s1, s3, s28
    a5cc: f1ba 0f10    	cmp.w	r10, #0x10
    a5d0: eeb7 6bc7    	vcvt.f32.f64	s12, d7
    a5d4: f105 0501    	add.w	r5, r5, #0x1
    a5d8: ee22 2a2a    	vmul.f32	s4, s4, s21
    a5dc: eef0 7a49    	vmov.f32	s15, s18
    a5e0: ed9d ab24    	vldr	d10, [sp, #144]
    a5e4: ee40 7ac6    	vmls.f32	s15, s1, s12
    a5e8: 46d3         	mov	r11, r10
    a5ea: ee26 6a84    	vmul.f32	s12, s13, s8
    a5ee: edcd 1a23    	vstr	s3, [sp, #140]
    a5f2: ee02 6a2b    	vmla.f32	s12, s4, s23
    a5f6: ed8d 3a24    	vstr	s6, [sp, #144]
    a5fa: ee22 7a0c    	vmul.f32	s14, s4, s24
    a5fe: ed8d 5a09    	vstr	s10, [sp, #36]
    a602: ee62 3a08    	vmul.f32	s7, s4, s16
    a606: edcd 5a08    	vstr	s11, [sp, #32]
    a60a: eeb7 2bca    	vcvt.f32.f64	s4, d10
    a60e: ee46 3aed    	vmls.f32	s7, s13, s27
    a612: ed9d ab26    	vldr	d10, [sp, #152]
    a616: ee06 7ac9    	vmls.f32	s14, s13, s18
    a61a: eeb0 9a4f    	vmov.f32	s18, s30
    a61e: eeb7 8bca    	vcvt.f32.f64	s16, d10
    a622: ee62 6a60    	vnmul.f32	s13, s4, s1
    a626: ed8d 1a26    	vstr	s2, [sp, #152]
    a62a: ee78 7aa7    	vadd.f32	s15, s17, s15
    a62e: ee20 aa88    	vmul.f32	s20, s1, s16
    a632: eeb1 2a62    	vneg.f32	s4, s5
    a636: eef1 2a6c    	vneg.f32	s5, s25
    a63a: eef1 0a4b    	vneg.f32	s1, s22
    a63e: f77f ab33    	ble.w	0x9ca8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x888> @ imm = #-0x99a
    a642: f64d 3088    	movw	r0, #0xdb88
    a646: f64d 32b0    	movw	r2, #0xdbb0
    a64a: f2c0 0000    	movt	r0, #0x0
    a64e: f2c0 0200    	movt	r2, #0x0
    a652: 2128         	movs	r1, #0x28
    a654: f000 fc0d    	bl	0xae72 <core::panicking::panic> @ imm = #0x81a
    a658: ed9d 9a0a    	vldr	s18, [sp, #40]
    a65c: ed9f 0a4a    	vldr	s0, [pc, #296]          @ 0xa788 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1368>
    a660: eeb4 9a40    	vcmp.f32	s18, s0
    a664: ed9d 0a21    	vldr	s0, [sp, #132]
    a668: eeb0 0ac0    	vabs.f32	s0, s0
    a66c: 2000         	movs	r0, #0x0
    a66e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a672: bf98         	it	ls
    a674: 2001         	movls	r0, #0x1
    a676: ed9f 1a43    	vldr	s2, [pc, #268]          @ 0xa784 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1364>
    a67a: ed9d 2a07    	vldr	s4, [sp, #28]
    a67e: 2100         	movs	r1, #0x0
    a680: eeb4 2a41    	vcmp.f32	s4, s2
    a684: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a688: eeb4 0a41    	vcmp.f32	s0, s2
    a68c: f04f 0300    	mov.w	r3, #0x0
    a690: bf98         	it	ls
    a692: 2101         	movls	r1, #0x1
    a694: ed9d 0a22    	vldr	s0, [sp, #136]
    a698: 2200         	movs	r2, #0x0
    a69a: eeb0 0ac0    	vabs.f32	s0, s0
    a69e: 3501         	adds	r5, #0x1
    a6a0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6a4: bf98         	it	ls
    a6a6: 2301         	movls	r3, #0x1
    a6a8: eeb4 0a41    	vcmp.f32	s0, s2
    a6ac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a6b0: bf98         	it	ls
    a6b2: 2201         	movls	r2, #0x1
    a6b4: 4019         	ands	r1, r3
    a6b6: 4011         	ands	r1, r2
    a6b8: 4008         	ands	r0, r1
    a6ba: 9905         	ldr	r1, [sp, #0x14]
    a6bc: ed9d 0a09    	vldr	s0, [sp, #36]
    a6c0: ed81 0a02    	vstr	s0, [r1, #8]
    a6c4: ed9d 0a08    	vldr	s0, [sp, #32]
    a6c8: ed81 0a03    	vstr	s0, [r1, #12]
    a6cc: 9906         	ldr	r1, [sp, #0x18]
    a6ce: ed81 9a00    	vstr	s18, [r1]
    a6d2: 710d         	strb	r5, [r1, #0x4]
    a6d4: 7148         	strb	r0, [r1, #0x5]
    a6d6: b034         	add	sp, #0xd0
    a6d8: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    a6dc: b001         	add	sp, #0x4
    a6de: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    a6e2: bdf0         	pop	{r4, r5, r6, r7, pc}
    a6e4: bf00         	nop
    a6e6: bf00         	nop
    a6e8: 9906         	ldr	r1, [sp, #0x18]
    a6ea: 2000         	movs	r0, #0x0
    a6ec: e7ef         	b	0xa6ce <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x12ae> @ imm = #-0x22
    a6ee: bf00         	nop
    a6f0: 2000         	movs	r0, #0x0
    a6f2: e7e2         	b	0xa6ba <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x129a> @ imm = #-0x3c
    a6f4: bf00         	nop
    a6f6: bf00         	nop
    a6f8: f64d 70a2    	movw	r0, #0xdfa2
    a6fc: f24e 0288    	movw	r2, #0xe088
    a700: f2c0 0000    	movt	r0, #0x0
    a704: f2c0 0200    	movt	r2, #0x0
    a708: a92b         	add	r1, sp, #0xac
    a70a: f000 fbae    	bl	0xae6a <core::panicking::panic_fmt> @ imm = #0x75c
    a70e: bf00         	nop
    a710: ed9f 3a0d    	vldr	s6, [pc, #52]           @ 0xa748 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1328>
    a714: eeb0 2a43    	vmov.f32	s4, s6
    a718: f7fe bfa9    	b.w	0x966e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x24e> @ imm = #-0x10ae
    a71c: bf00         	nop
    a71e: bf00         	nop
    a720: ed9f aa09    	vldr	s20, [pc, #36]          @ 0xa748 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x1328>
    a724: eef0 0a4a    	vmov.f32	s1, s20
    a728: f7ff b951    	b.w	0x99ce <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 3>+0x5ae> @ imm = #-0xd5e
    a72c: bf00         	nop
    a72e: bf00         	nop
    a730: d2 ce fe 14  	.word	0x14feced2
    a734: cf 45 20 3f  	.word	0x3f2045cf
    a738: 10 43 9c 25  	.word	0x259c4310
    a73c: ca fc ef 3f  	.word	0x3feffcca
    a740: 00 80 e7 1d  	.word	0x1de78000
    a744: d3 ae 39 3f  	.word	0x3f39aed3
    a748: 00 00 c0 7f  	.word	0x7fc00000
    a74c: 79 61 2e c3  	.word	0xc32e6179
    a750: 00 00 00 80  	.word	0x80000000
    a754: 83 c0 96 38  	.word	0x3896c083
    a758: fc 9d 08 bf  	.word	0xbf089dfc
    a75c: 00 00 80 7f  	.word	0x7f800000
    a760: 6f f3 03 be  	.word	0xbe03f36f
    a764: af e6 27 39  	.word	0x3927e6af
    a768: d5 35 a4 be  	.word	0xbea435d5
    a76c: 95 bf d6 33  	.word	0x33d6bf95
    a770: 2b 18 95 3b  	.word	0x3b95182b
    a774: 00 00 00 00  	.word	0x00000000
    a778: 2b 18 15 3b  	.word	0x3b15182b
    a77c: 79 2e 02 39  	.word	0x39022e79
    a780: 0a d7 23 3c  	.word	0x3c23d70a
    a784: ac c5 a7 37  	.word	0x37a7c5ac
    a788: 17 b7 d1 38  	.word	0x38d1b717
    a78c: d6 f8 e4 36  	.word	0x36e4f8d6

0000a790 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>>:
    a790: b5f0         	push	{r4, r5, r6, r7, lr}
    a792: af03         	add	r7, sp, #0xc
    a794: e92d 0f00    	push.w	{r8, r9, r10, r11}
    a798: b081         	sub	sp, #0x4
    a79a: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    a79e: b098         	sub	sp, #0x60
    a7a0: ed9f 3af3    	vldr	s6, [pc, #972]          @ 0xab70 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3e0>
    a7a4: ee22 2a03    	vmul.f32	s4, s4, s6
    a7a8: ed9f 3af2    	vldr	s6, [pc, #968]          @ 0xab74 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3e4>
    a7ac: ed9f 4af2    	vldr	s8, [pc, #968]          @ 0xab78 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3e8>
    a7b0: ed9f 5af2    	vldr	s10, [pc, #968]         @ 0xab7c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3ec>
    a7b4: ee32 3a03    	vadd.f32	s6, s4, s6
    a7b8: ee32 4a04    	vadd.f32	s8, s4, s8
    a7bc: ee83 ca05    	vdiv.f32	s24, s6, s10
    a7c0: ee84 da05    	vdiv.f32	s26, s8, s10
    a7c4: eeb4 ca4d    	vcmp.f32	s24, s26
    a7c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a7cc: f200 81e0    	bhi.w	0xab90 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x400> @ imm = #0x3c0
    a7d0: eeb0 9b40    	vmov.f64	d9, d0
    a7d4: 4604         	mov	r4, r0
    a7d6: ed91 0a05    	vldr	s0, [r1, #20]
    a7da: a80c         	add	r0, sp, #0x30
    a7dc: ed91 3a06    	vldr	s6, [r1, #24]
    a7e0: ed8d 0a03    	vstr	s0, [sp, #12]
    a7e4: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    a7e8: ed8d 3a02    	vstr	s6, [sp, #8]
    a7ec: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    a7f0: ed91 ea07    	vldr	s28, [r1, #28]
    a7f4: eeb0 8b41    	vmov.f64	d8, d1
    a7f8: eeb7 fac2    	vcvt.f64.f32	d15, s4
    a7fc: 4615         	mov	r5, r2
    a7fe: 460e         	mov	r6, r1
    a800: ed9f 1be9    	vldr	d1, [pc, #932]          @ 0xaba8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x418>
    a804: eeb0 2b4f    	vmov.f64	d2, d15
    a808: ee00 8b01    	vmla.f64	d8, d0, d1
    a80c: eeb7 0ace    	vcvt.f64.f32	d0, s28
    a810: ee03 8b41    	vmls.f64	d8, d3, d1
    a814: ed9f 3be6    	vldr	d3, [pc, #920]          @ 0xabb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x420>
    a818: eeb0 1b48    	vmov.f64	d1, d8
    a81c: ee00 1b03    	vmla.f64	d1, d0, d3
    a820: ed9f 3be7    	vldr	d3, [pc, #924]          @ 0xabc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x430>
    a824: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    a828: ed9f abe3    	vldr	d10, [pc, #908]         @ 0xabb8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x428>
    a82c: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    a830: ee01 2b03    	vmla.f64	d2, d1, d3
    a834: ed9f 1be4    	vldr	d1, [pc, #912]          @ 0xabc8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x438>
    a838: ee82 1b01    	vdiv.f64	d1, d2, d1
    a83c: eeb0 2b49    	vmov.f64	d2, d9
    a840: eeb7 bbc1    	vcvt.f32.f64	s22, d1
    a844: ee00 2b0a    	vmla.f64	d2, d0, d10
    a848: eeb4 ca4b    	vcmp.f32	s24, s22
    a84c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a850: eef7 0bc2    	vcvt.f32.f64	s1, d2
    a854: fe3c 1a0b    	vselgt.f32	s2, s24, s22
    a858: eeb4 1a4d    	vcmp.f32	s2, s26
    a85c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a860: fe7d da01    	vselgt.f32	s27, s26, s2
    a864: eeb0 0a6d    	vmov.f32	s0, s27
    a868: f000 f9c6    	bl	0xabf8 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>> @ imm = #0x38c
    a86c: a0d8         	adr	r0, #864 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x1b8>
    a86e: ed9d 0a0c    	vldr	s0, [sp, #48]
    a872: 1d01         	adds	r1, r0, #0x4
    a874: eeb4 da4b    	vcmp.f32	s26, s22
    a878: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a87c: 9101         	str	r1, [sp, #0x4]
    a87e: eeb4 ba4c    	vcmp.f32	s22, s24
    a882: bfc8         	it	gt
    a884: 4608         	movgt	r0, r1
    a886: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a88a: ee3e 1a40    	vsub.f32	s2, s28, s0
    a88e: ed90 0a00    	vldr	s0, [r0]
    a892: ed9f 2ad1    	vldr	s4, [pc, #836]          @ 0xabd8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x448>
    a896: ed9d 3a0e    	vldr	s6, [sp, #56]
    a89a: fe30 0a02    	vselgt.f32	s0, s0, s4
    a89e: ed9d 2a0d    	vldr	s4, [sp, #52]
    a8a2: ee11 0a10    	vmov	r0, s2
    a8a6: ed9f 5ace    	vldr	s10, [pc, #824]         @ 0xabe0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x450>
    a8aa: e9cd 5405    	strd	r5, r4, [sp, #20]
    a8ae: ee20 2a02    	vmul.f32	s4, s0, s4
    a8b2: ed9f 0aca    	vldr	s0, [pc, #808]          @ 0xabdc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x44c>
    a8b6: ee23 0a00    	vmul.f32	s0, s6, s0
    a8ba: f020 4000    	bic	r0, r0, #0x80000000
    a8be: f1b0 4fff    	cmp.w	r0, #0x7f800000
    a8c2: db05         	blt	0xa8d0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x140> @ imm = #0xa
    a8c4: eddf bac7    	vldr	s23, [pc, #796]         @ 0xabe4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x454>
    a8c8: e00c         	b	0xa8e4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x154> @ imm = #0x18
    a8ca: bf00         	nop
    a8cc: bf00         	nop
    a8ce: bf00         	nop
    a8d0: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    a8d4: ed9f 4ac4    	vldr	s8, [pc, #784]          @ 0xabe8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x458>
    a8d8: ee81 3a03    	vdiv.f32	s6, s2, s6
    a8dc: eeb0 3ac3    	vabs.f32	s6, s6
    a8e0: fec3 ba04    	vmaxnm.f32	s23, s6, s8
    a8e4: ee02 0a05    	vmla.f32	s0, s4, s10
    a8e8: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    a8ec: eeb1 1a41    	vneg.f32	s2, s2
    a8f0: a80c         	add	r0, sp, #0x30
    a8f2: 2400         	movs	r4, #0x0
    a8f4: f100 0904    	add.w	r9, r0, #0x4
    a8f8: f04f 0b00    	mov.w	r11, #0x0
    a8fc: a909         	add	r1, sp, #0x24
    a8fe: eddf cabb    	vldr	s25, [pc, #748]         @ 0xabec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x45c>
    a902: ad15         	add	r5, sp, #0x54
    a904: 46a2         	mov	r10, r4
    a906: 2000         	movs	r0, #0x0
    a908: 9008         	str	r0, [sp, #0x20]
    a90a: 9604         	str	r6, [sp, #0x10]
    a90c: ee30 0a2e    	vadd.f32	s0, s0, s29
    a910: 2201         	movs	r2, #0x1
    a912: a80c         	add	r0, sp, #0x30
    a914: ed8d 1a09    	vstr	s2, [sp, #36]
    a918: f8cd b02c    	str.w	r11, [sp, #0x2c]
    a91c: 2c10         	cmp	r4, #0x10
    a91e: f8cd b028    	str.w	r11, [sp, #0x28]
    a922: 4688         	mov	r8, r1
    a924: ed8d 0a0c    	vstr	s0, [sp, #48]
    a928: e9c9 bb00    	strd	r11, r11, [r9]
    a92c: e9c9 bb02    	strd	r11, r11, [r9, #8]
    a930: e9c9 bb04    	strd	r11, r11, [r9, #16]
    a934: f8c9 b018    	str.w	r11, [r9, #0x18]
    a938: bf18         	it	ne
    a93a: f10a 0a01    	addne.w	r10, r10, #0x1
    a93e: f8c9 b01c    	str.w	r11, [r9, #0x1c]
    a942: f002 fdbd    	bl	0xd4c0 <orange_dsp::condensed::solve> @ imm = #0x2b7a
    a946: 2800         	cmp	r0, #0x0
    a948: f000 810a    	beq.w	0xab60 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3d0> @ imm = #0x214
    a94c: eef4 ba6c    	vcmp.f32	s23, s25
    a950: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a954: d908         	bls	0xa968 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x1d8> @ imm = #0x10
    a956: 2c10         	cmp	r4, #0x10
    a958: f000 8112    	beq.w	0xab80 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3f0> @ imm = #0x224
    a95c: eddd ca09    	vldr	s25, [sp, #36]
    a960: e02c         	b	0xa9bc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x22c> @ imm = #0x58
    a962: bf00         	nop
    a964: bf00         	nop
    a966: bf00         	nop
    a968: eeb0 0ace    	vabs.f32	s0, s28
    a96c: ed9f 1aa0    	vldr	s2, [pc, #640]          @ 0xabf0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x460>
    a970: eddd ca09    	vldr	s25, [sp, #36]
    a974: 2000         	movs	r0, #0x0
    a976: eeb4 0a40    	vcmp.f32	s0, s0
    a97a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a97e: fe1e 0a80    	vselvs.f32	s0, s29, s0
    a982: eeb4 0a6e    	vcmp.f32	s0, s29
    a986: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a98a: fe30 0a2e    	vselgt.f32	s0, s0, s29
    a98e: ee20 0a01    	vmul.f32	s0, s0, s2
    a992: ed9f 1a98    	vldr	s2, [pc, #608]          @ 0xabf4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x464>
    a996: fe80 0a41    	vminnm.f32	s0, s0, s2
    a99a: eeb0 1aec    	vabs.f32	s2, s25
    a99e: eeb4 1a40    	vcmp.f32	s2, s0
    a9a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9a6: bf98         	it	ls
    a9a8: 2001         	movls	r0, #0x1
    a9aa: 2c10         	cmp	r4, #0x10
    a9ac: f000 80e9    	beq.w	0xab82 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3f2> @ imm = #0x1d2
    a9b0: eeb4 1a40    	vcmp.f32	s2, s0
    a9b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    a9b8: f240 80e3    	bls.w	0xab82 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3f2> @ imm = #0x1c6
    a9bc: f04f 567e    	mov.w	r6, #0x3f800000
    a9c0: edcd da07    	vstr	s27, [sp, #28]
    a9c4: e006         	b	0xa9d4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x244> @ imm = #0xc
    a9c6: bf00         	nop
    a9c8: f5a6 0600    	sub.w	r6, r6, #0x800000
    a9cc: f1b6 5f66    	cmp.w	r6, #0x39800000
    a9d0: f000 809e    	beq.w	0xab10 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x380> @ imm = #0x13c
    a9d4: ee00 6a10    	vmov	s0, r6
    a9d8: eef0 da4e    	vmov.f32	s27, s28
    a9dc: ed9f 2b74    	vldr	d2, [pc, #464]          @ 0xabb0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x420>
    a9e0: eeb0 1b48    	vmov.f64	d1, d8
    a9e4: 4628         	mov	r0, r5
    a9e6: ee4c da80    	vmla.f32	s27, s25, s0
    a9ea: ed9f 3b75    	vldr	d3, [pc, #468]          @ 0xabc0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x430>
    a9ee: eeb7 0aed    	vcvt.f64.f32	d0, s27
    a9f2: ee00 1b02    	vmla.f64	d1, d0, d2
    a9f6: eeb0 2b4f    	vmov.f64	d2, d15
    a9fa: eeb7 1bc1    	vcvt.f32.f64	s2, d1
    a9fe: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    aa02: ee01 2b03    	vmla.f64	d2, d1, d3
    aa06: ed9f 1b70    	vldr	d1, [pc, #448]          @ 0xabc8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x438>
    aa0a: ee82 1b01    	vdiv.f64	d1, d2, d1
    aa0e: eeb0 2b49    	vmov.f64	d2, d9
    aa12: eef7 ebc1    	vcvt.f32.f64	s29, d1
    aa16: ee00 2b0a    	vmla.f64	d2, d0, d10
    aa1a: eeb4 ca6e    	vcmp.f32	s24, s29
    aa1e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa22: eef7 0bc2    	vcvt.f32.f64	s1, d2
    aa26: fe3c 1a2e    	vselgt.f32	s2, s24, s29
    aa2a: eeb4 1a4d    	vcmp.f32	s2, s26
    aa2e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa32: fe3d ba01    	vselgt.f32	s22, s26, s2
    aa36: eeb0 0a4b    	vmov.f32	s0, s22
    aa3a: f000 f8dd    	bl	0xabf8 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>> @ imm = #0x1ba
    aa3e: ed9d 0a15    	vldr	s0, [sp, #84]
    aa42: ee3d 1ac0    	vsub.f32	s2, s27, s0
    aa46: ee11 0a10    	vmov	r0, s2
    aa4a: f020 4000    	bic	r0, r0, #0x80000000
    aa4e: f1b0 4fff    	cmp.w	r0, #0x7f800000
    aa52: dab9         	bge	0xa9c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x238> @ imm = #-0x8e
    aa54: eeb3 0a08    	vmov.f32	s0, #2.400000e+01
    aa58: ed9f 2a63    	vldr	s4, [pc, #396]          @ 0xabe8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x458>
    aa5c: ee81 0a00    	vdiv.f32	s0, s2, s0
    aa60: eeb0 0ac0    	vabs.f32	s0, s0
    aa64: fe80 2a02    	vmaxnm.f32	s4, s0, s4
    aa68: eeb4 2a6b    	vcmp.f32	s4, s23
    aa6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa70: d5aa         	bpl	0xa9c8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x238> @ imm = #-0xac
    aa72: a057         	adr	r0, #348 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x33d>
    aa74: 9901         	ldr	r1, [sp, #0x4]
    aa76: eeb4 da6e    	vcmp.f32	s26, s29
    aa7a: ed9f 3a57    	vldr	s6, [pc, #348]          @ 0xabd8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x448>
    aa7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa82: bfc8         	it	gt
    aa84: 4608         	movgt	r0, r1
    aa86: 9e04         	ldr	r6, [sp, #0x10]
    aa88: eef4 ea4c    	vcmp.f32	s29, s24
    aa8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    aa90: ed9d 0a03    	vldr	s0, [sp, #12]
    aa94: ed86 0a05    	vstr	s0, [r6, #20]
    aa98: ed90 0a00    	vldr	s0, [r0]
    aa9c: eef7 ea00    	vmov.f32	s29, #1.000000e+00
    aaa0: fe30 0a03    	vselgt.f32	s0, s0, s6
    aaa4: ed9d 3a02    	vldr	s6, [sp, #8]
    aaa8: ed86 3a06    	vstr	s6, [r6, #24]
    aaac: 2c10         	cmp	r4, #0x10
    aaae: ed9d 4a16    	vldr	s8, [sp, #88]
    aab2: ed9d 3a17    	vldr	s6, [sp, #92]
    aab6: ed9f 5a4a    	vldr	s10, [pc, #296]         @ 0xabe0 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x450>
    aaba: edc6 da07    	vstr	s27, [r6, #28]
    aabe: eddf ca4b    	vldr	s25, [pc, #300]         @ 0xabec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x45c>
    aac2: d019         	beq	0xaaf8 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x368> @ imm = #0x32
    aac4: ee20 4a04    	vmul.f32	s8, s0, s8
    aac8: ed9f 0a44    	vldr	s0, [pc, #272]          @ 0xabdc <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x44c>
    aacc: ee23 0a00    	vmul.f32	s0, s6, s0
    aad0: eeb0 ea6d    	vmov.f32	s28, s27
    aad4: eeb1 1a41    	vneg.f32	s2, s2
    aad8: eef0 ba42    	vmov.f32	s23, s4
    aadc: ee04 0a05    	vmla.f32	s0, s8, s10
    aae0: eef0 da4b    	vmov.f32	s27, s22
    aae4: 4641         	mov	r1, r8
    aae6: f1ba 0f10    	cmp.w	r10, #0x10
    aaea: 9808         	ldr	r0, [sp, #0x20]
    aaec: 4654         	mov	r4, r10
    aaee: f100 0001    	add.w	r0, r0, #0x1
    aaf2: 9008         	str	r0, [sp, #0x20]
    aaf4: f77f af0a    	ble.w	0xa90c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x17c> @ imm = #-0x1ec
    aaf8: f64d 3088    	movw	r0, #0xdb88
    aafc: f64d 32b0    	movw	r2, #0xdbb0
    ab00: f2c0 0000    	movt	r0, #0x0
    ab04: f2c0 0200    	movt	r2, #0x0
    ab08: 2128         	movs	r1, #0x28
    ab0a: f000 f9b2    	bl	0xae72 <core::panicking::panic> @ imm = #0x364
    ab0e: bf00         	nop
    ab10: ed9f 0a36    	vldr	s0, [pc, #216]          @ 0xabec <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x45c>
    ab14: 9b08         	ldr	r3, [sp, #0x20]
    ab16: eef4 ba40    	vcmp.f32	s23, s0
    ab1a: 3301         	adds	r3, #0x1
    ab1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab20: f04f 0000    	mov.w	r0, #0x0
    ab24: e9dd 2105    	ldrd	r2, r1, [sp, #20]
    ab28: d809         	bhi	0xab3e <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3ae> @ imm = #0x12
    ab2a: eeb0 0aec    	vabs.f32	s0, s25
    ab2e: ed9f 1a31    	vldr	s2, [pc, #196]          @ 0xabf4 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x464>
    ab32: eeb4 0a41    	vcmp.f32	s0, s2
    ab36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ab3a: bf98         	it	ls
    ab3c: 2001         	movls	r0, #0x1
    ab3e: eddd da07    	vldr	s27, [sp, #28]
    ab42: edc2 da04    	vstr	s27, [r2, #16]
    ab46: edc1 ba00    	vstr	s23, [r1]
    ab4a: 710b         	strb	r3, [r1, #0x4]
    ab4c: 7148         	strb	r0, [r1, #0x5]
    ab4e: b018         	add	sp, #0x60
    ab50: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    ab54: b001         	add	sp, #0x4
    ab56: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    ab5a: bdf0         	pop	{r4, r5, r6, r7, pc}
    ab5c: bf00         	nop
    ab5e: bf00         	nop
    ab60: 9906         	ldr	r1, [sp, #0x18]
    ab62: 9808         	ldr	r0, [sp, #0x20]
    ab64: 7108         	strb	r0, [r1, #0x4]
    ab66: 2000         	movs	r0, #0x0
    ab68: edc1 ba00    	vstr	s23, [r1]
    ab6c: e7ee         	b	0xab4c <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3bc> @ imm = #-0x24
    ab6e: bf00         	nop
    ab70: 00 80 bb 47  	.word	0x47bb8000
    ab74: 00 24 f4 ca  	.word	0xcaf42400
    ab78: 00 24 f4 4a  	.word	0x4af42400
    ab7c: 00 a0 0c 48  	.word	0x480ca000
    ab80: 2000         	movs	r0, #0x0
    ab82: e9dd 2105    	ldrd	r2, r1, [sp, #20]
    ab86: 9b08         	ldr	r3, [sp, #0x20]
    ab88: e7db         	b	0xab42 <orange_dsp::condensed::solve_block::<ram_probe::cordic::H7r3Cordic, 4>+0x3b2> @ imm = #-0x4a
    ab8a: bf00         	nop
    ab8c: bf00         	nop
    ab8e: bf00         	nop
    ab90: f64d 70a2    	movw	r0, #0xdfa2
    ab94: f24e 0288    	movw	r2, #0xe088
    ab98: f2c0 0000    	movt	r0, #0x0
    ab9c: f2c0 0200    	movt	r2, #0x0
    aba0: a90c         	add	r1, sp, #0x30
    aba2: f000 f962    	bl	0xae6a <core::panicking::panic_fmt> @ imm = #0x2c4
    aba6: bf00         	nop
    aba8: e6 a7 5c a0  	.word	0xa05ca7e6
    abac: 06 41 d9 3f  	.word	0x3fd94106
    abb0: 19 d5 65 36  	.word	0x3665d519
    abb4: d0 6e 95 bf  	.word	0xbf956ed0
    abb8: 42 6f 24 95  	.word	0x95246f42
    abbc: d9 83 c5 bf  	.word	0xbfc583d9
    abc0: d9 3f b8 22  	.word	0x22b83fd9
    abc4: 8b 1c 8e 41  	.word	0x418e1c8b
    abc8: 85 42 fe de  	.word	0xdefe4285
    abcc: bb a7 01 41  	.word	0x4101a7bb
    abd0: 00 00 00 80  	.word	0x80000000
    abd4: d2 4e da c3  	.word	0xc3da4ed2
    abd8: 00 00 00 80  	.word	0x80000000
    abdc: cd 1e 2c 3e  	.word	0x3e2c1ecd
    abe0: 82 76 ab bc  	.word	0xbcab7682
    abe4: 00 00 80 7f  	.word	0x7f800000
    abe8: 00 00 00 00  	.word	0x00000000
    abec: 17 b7 d1 38  	.word	0x38d1b717
    abf0: bd 37 06 36  	.word	0x360637bd
    abf4: ac c5 a7 37  	.word	0x37a7c5ac

0000abf8 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>>:
    abf8: b580         	push	{r7, lr}
    abfa: 466f         	mov	r7, sp
    abfc: eeb0 2ac0    	vabs.f32	s4, s0
    ac00: eeb3 1a05    	vmov.f32	s2, #2.100000e+01
    ac04: eeb4 2a41    	vcmp.f32	s4, s2
    ac08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac0c: d93c         	bls	0xac88 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x90> @ imm = #0x78
    ac0e: ee81 2a02    	vdiv.f32	s4, s2, s4
    ac12: eeb7 5a00    	vmov.f32	s10, #1.000000e+00
    ac16: ee22 3a02    	vmul.f32	s6, s4, s4
    ac1a: eeb0 6a45    	vmov.f32	s12, s10
    ac1e: ee23 3a03    	vmul.f32	s6, s6, s6
    ac22: ee23 3a03    	vmul.f32	s6, s6, s6
    ac26: ee23 3a03    	vmul.f32	s6, s6, s6
    ac2a: ee33 4a05    	vadd.f32	s8, s6, s10
    ac2e: eeb4 4a45    	vcmp.f32	s8, s10
    ac32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac36: d009         	beq	0xac4c <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x54> @ imm = #0x12
    ac38: eeb0 6a44    	vmov.f32	s12, s8
    ac3c: eeb1 6ac6    	vsqrt.f32	s12, s12
    ac40: eeb1 6ac6    	vsqrt.f32	s12, s12
    ac44: eeb1 6ac6    	vsqrt.f32	s12, s12
    ac48: eeb1 6ac6    	vsqrt.f32	s12, s12
    ac4c: ee10 1a10    	vmov	r1, s0
    ac50: f04f 527e    	mov.w	r2, #0x3f800000
    ac54: ee85 5a06    	vdiv.f32	s10, s10, s12
    ac58: ee22 2a03    	vmul.f32	s4, s4, s6
    ac5c: f362 011e    	bfi	r1, r2, #0, #31
    ac60: eeb4 0a40    	vcmp.f32	s0, s0
    ac64: ee07 1a10    	vmov	s14, r1
    ac68: ee85 4a04    	vdiv.f32	s8, s10, s8
    ac6c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ac70: ed9f 0a76    	vldr	s0, [pc, #472]          @ 0xae4c <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x254>
    ac74: ee27 1a01    	vmul.f32	s2, s14, s2
    ac78: ee21 1a05    	vmul.f32	s2, s2, s10
    ac7c: fe10 0a01    	vselvs.f32	s0, s0, s2
    ac80: ee22 1a04    	vmul.f32	s2, s4, s8
    ac84: e025         	b	0xacd2 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0xda> @ imm = #0x4a
    ac86: bf00         	nop
    ac88: ee80 1a01    	vdiv.f32	s2, s0, s2
    ac8c: ee21 1a01    	vmul.f32	s2, s2, s2
    ac90: ee21 2a01    	vmul.f32	s4, s2, s2
    ac94: eeb7 1a00    	vmov.f32	s2, #1.000000e+00
    ac98: ee22 3a02    	vmul.f32	s6, s4, s4
    ac9c: eeb0 2a41    	vmov.f32	s4, s2
    aca0: ee03 2a03    	vmla.f32	s4, s6, s6
    aca4: eeb0 3a41    	vmov.f32	s6, s2
    aca8: eeb4 2a41    	vcmp.f32	s4, s2
    acac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    acb0: d009         	beq	0xacc6 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0xce> @ imm = #0x12
    acb2: eeb0 3a42    	vmov.f32	s6, s4
    acb6: eeb1 3ac3    	vsqrt.f32	s6, s6
    acba: eeb1 3ac3    	vsqrt.f32	s6, s6
    acbe: eeb1 3ac3    	vsqrt.f32	s6, s6
    acc2: eeb1 3ac3    	vsqrt.f32	s6, s6
    acc6: ee81 3a03    	vdiv.f32	s6, s2, s6
    acca: ee83 1a02    	vdiv.f32	s2, s6, s4
    acce: ee20 0a03    	vmul.f32	s0, s0, s6
    acd2: eeb0 2ac0    	vabs.f32	s4, s0
    acd6: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    acda: eeb2 7a00    	vmov.f32	s14, #8.000000e+00
    acde: ed9f 4a5c    	vldr	s8, [pc, #368]          @ 0xae50 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x258>
    ace2: eef1 2a04    	vmov.f32	s5, #5.000000e+00
    ace6: eeb0 5ae0    	vabs.f32	s10, s1
    acea: ee33 6a42    	vsub.f32	s12, s6, s4
    acee: eef7 3a00    	vmov.f32	s7, #1.000000e+00
    acf2: fe86 3a07    	vmaxnm.f32	s6, s12, s14
    acf6: eec4 1a03    	vdiv.f32	s3, s8, s6
    acfa: fe81 2ae2    	vminnm.f32	s4, s3, s5
    acfe: eec5 4a02    	vdiv.f32	s9, s10, s4
    ad02: eef4 4a63    	vcmp.f32	s9, s7
    ad06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad0a: d935         	bls	0xad78 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x180> @ imm = #0x6a
    ad0c: ee82 5a05    	vdiv.f32	s10, s4, s10
    ad10: eef7 4a00    	vmov.f32	s9, #1.000000e+00
    ad14: ee65 3a05    	vmul.f32	s7, s10, s10
    ad18: ee63 3aa3    	vmul.f32	s7, s7, s7
    ad1c: ee63 5aa3    	vmul.f32	s11, s7, s7
    ad20: eef0 3a64    	vmov.f32	s7, s9
    ad24: ee45 3aa5    	vmla.f32	s7, s11, s11
    ad28: eef0 5a64    	vmov.f32	s11, s9
    ad2c: eef4 3a64    	vcmp.f32	s7, s9
    ad30: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad34: d009         	beq	0xad4a <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x152> @ imm = #0x12
    ad36: eef0 5a63    	vmov.f32	s11, s7
    ad3a: eef1 5ae5    	vsqrt.f32	s11, s11
    ad3e: eef1 5ae5    	vsqrt.f32	s11, s11
    ad42: eef1 5ae5    	vsqrt.f32	s11, s11
    ad46: eef1 5ae5    	vsqrt.f32	s11, s11
    ad4a: eec4 5aa5    	vdiv.f32	s11, s9, s11
    ad4e: eef1 6a45    	vneg.f32	s13, s10
    ad52: eec5 4aa3    	vdiv.f32	s9, s11, s7
    ad56: eec6 0aa0    	vdiv.f32	s1, s13, s1
    ad5a: ee65 3a25    	vmul.f32	s7, s10, s11
    ad5e: ee60 0aa4    	vmul.f32	s1, s1, s9
    ad62: eef4 1a62    	vcmp.f32	s3, s5
    ad66: eddf 1a3b    	vldr	s3, [pc, #236]          @ 0xae54 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x25c>
    ad6a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad6e: d437         	bmi	0xade0 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x1e8> @ imm = #0x6e
    ad70: e056         	b	0xae20 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x228> @ imm = #0xac
    ad72: bf00         	nop
    ad74: bf00         	nop
    ad76: bf00         	nop
    ad78: ee24 5aa4    	vmul.f32	s10, s9, s9
    ad7c: eef0 5a63    	vmov.f32	s11, s7
    ad80: ee25 5a05    	vmul.f32	s10, s10, s10
    ad84: ee25 5a05    	vmul.f32	s10, s10, s10
    ad88: ee25 5a05    	vmul.f32	s10, s10, s10
    ad8c: ee75 4a23    	vadd.f32	s9, s10, s7
    ad90: eef4 4a63    	vcmp.f32	s9, s7
    ad94: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ad98: d009         	beq	0xadae <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x1b6> @ imm = #0x12
    ad9a: eef0 5a64    	vmov.f32	s11, s9
    ad9e: eef1 5ae5    	vsqrt.f32	s11, s11
    ada2: eef1 5ae5    	vsqrt.f32	s11, s11
    ada6: eef1 5ae5    	vsqrt.f32	s11, s11
    adaa: eef1 5ae5    	vsqrt.f32	s11, s11
    adae: eec3 3aa5    	vdiv.f32	s7, s7, s11
    adb2: eef5 0a40    	vcmp.f32	s1, #0
    adb6: eef1 5a45    	vneg.f32	s11, s10
    adba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adbe: eec3 4aa4    	vdiv.f32	s9, s7, s9
    adc2: eec5 5aa0    	vdiv.f32	s11, s11, s1
    adc6: eddf 0a23    	vldr	s1, [pc, #140]          @ 0xae54 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x25c>
    adca: ee65 5aa4    	vmul.f32	s11, s11, s9
    adce: fe40 0aa5    	vseleq.f32	s1, s1, s11
    add2: eef4 1a62    	vcmp.f32	s3, s5
    add6: eddf 1a1f    	vldr	s3, [pc, #124]          @ 0xae54 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x25c>
    adda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adde: d51f         	bpl	0xae20 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x228> @ imm = #0x3e
    ade0: eeb5 0a40    	vcmp.f32	s0, #0
    ade4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ade8: d01a         	beq	0xae20 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x228> @ imm = #0x34
    adea: eeb4 6a47    	vcmp.f32	s12, s14
    adee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    adf2: dd15         	ble	0xae20 <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x228> @ imm = #0x2a
    adf4: ee10 1a10    	vmov	r1, s0
    adf8: f04f 527e    	mov.w	r2, #0x3f800000
    adfc: eeb4 0a40    	vcmp.f32	s0, s0
    ae00: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    ae04: f362 011e    	bfi	r1, r2, #0, #31
    ae08: ee23 3a03    	vmul.f32	s6, s6, s6
    ae0c: ee06 1a10    	vmov	s12, r1
    ae10: ee26 4a04    	vmul.f32	s8, s12, s8
    ae14: ed9f 6a0d    	vldr	s12, [pc, #52]          @ 0xae4c <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x254>
    ae18: fe16 4a04    	vselvs.f32	s8, s12, s8
    ae1c: eec4 1a03    	vdiv.f32	s3, s8, s6
    ae20: ee85 2a02    	vdiv.f32	s4, s10, s4
    ae24: ee20 3a23    	vmul.f32	s6, s0, s7
    ae28: ed80 3a00    	vstr	s6, [r0]
    ae2c: ee22 2a24    	vmul.f32	s4, s4, s9
    ae30: ee20 2a02    	vmul.f32	s4, s0, s4
    ae34: ee20 0a20    	vmul.f32	s0, s0, s1
    ae38: ed80 0a02    	vstr	s0, [r0, #8]
    ae3c: ee42 3a21    	vmla.f32	s7, s4, s3
    ae40: ee21 1a23    	vmul.f32	s2, s2, s7
    ae44: ed80 1a01    	vstr	s2, [r0, #4]
    ae48: bd80         	pop	{r7, pc}
    ae4a: bf00         	nop
    ae4c: 00 00 c0 7f  	.word	0x7fc00000
    ae50: 00 00 70 42  	.word	0x42700000
    ae54: 00 00 00 00  	.word	0x00000000

0000ae58 <__rustc::rust_begin_unwind>:
    ae58: b580         	push	{r7, lr}
    ae5a: 466f         	mov	r7, sp
    ae5c: bf00         	nop
    ae5e: bf00         	nop
    ae60: bf10         	yield
    ae62: bf10         	yield
    ae64: bf10         	yield
    ae66: bf10         	yield
    ae68: e7fa         	b	0xae60 <__rustc::rust_begin_unwind+0x8> @ imm = #-0xc

0000ae6a <core::panicking::panic_fmt>:
    ae6a: b580         	push	{r7, lr}
    ae6c: 466f         	mov	r7, sp
    ae6e: f7ff fff3    	bl	0xae58 <__rustc::rust_begin_unwind> @ imm = #-0x1a

0000ae72 <core::panicking::panic>:
    ae72: b580         	push	{r7, lr}
    ae74: 466f         	mov	r7, sp
    ae76: 0049         	lsls	r1, r1, #0x1
    ae78: 3101         	adds	r1, #0x1
    ae7a: f7ff fff6    	bl	0xae6a <core::panicking::panic_fmt> @ imm = #-0x14
    ae7e: d4d4         	bmi	0xae2a <orange_dsp::condensed::power::<ram_probe::cordic::H7r3Cordic>+0x232> @ imm = #-0x58

0000ae80 <core::panicking::panic_bounds_check>:
    ae80: b5f8         	push	{r3, r4, r5, r6, r7, lr}
    ae82: af04         	add	r7, sp, #0x10
    ae84: 4801         	ldr	r0, [pc, #0x4]          @ 0xae8c <core::panicking::panic_bounds_check+0xc>
    ae86: 4669         	mov	r1, sp
    ae88: f7ff ffef    	bl	0xae6a <core::panicking::panic_fmt> @ imm = #-0x22
    ae8c: d3 df 00 00  	.word	0x0000dfd3

0000ae90 <orange_dsp::generated_model::assemble_linear_kcl>:
    ae90: b580         	push	{r7, lr}
    ae92: 466f         	mov	r7, sp
    ae94: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    ae98: b09c         	sub	sp, #0x70
    ae9a: ed91 1a02    	vldr	s2, [r1, #8]
    ae9e: ed9f 0afc    	vldr	s0, [pc, #1008]         @ 0xb290 <orange_dsp::generated_model::assemble_linear_kcl+0x400>
    aea2: ee61 aa00    	vmul.f32	s21, s2, s0
    aea6: ed91 5a03    	vldr	s10, [r1, #12]
    aeaa: ed9f bafa    	vldr	s22, [pc, #1000]        @ 0xb294 <orange_dsp::generated_model::assemble_linear_kcl+0x404>
    aeae: eef7 ea08    	vmov.f32	s29, #1.500000e+00
    aeb2: ed9f 2af9    	vldr	s4, [pc, #996]          @ 0xb298 <orange_dsp::generated_model::assemble_linear_kcl+0x408>
    aeb6: ed91 9a0f    	vldr	s18, [r1, #60]
    aeba: ee3a 4a8b    	vadd.f32	s8, s21, s22
    aebe: ed9f 3af7    	vldr	s6, [pc, #988]          @ 0xb29c <orange_dsp::generated_model::assemble_linear_kcl+0x40c>
    aec2: ee05 4a40    	vmls.f32	s8, s10, s0
    aec6: ed91 0a10    	vldr	s0, [r1, #64]
    aeca: ee29 ca02    	vmul.f32	s24, s18, s4
    aece: ed9f 7af4    	vldr	s14, [pc, #976]         @ 0xb2a0 <orange_dsp::generated_model::assemble_linear_kcl+0x410>
    aed2: ee20 ea03    	vmul.f32	s28, s0, s6
    aed6: eddf 1af3    	vldr	s3, [pc, #972]          @ 0xb2a4 <orange_dsp::generated_model::assemble_linear_kcl+0x414>
    aeda: edd1 8a15    	vldr	s17, [r1, #84]
    aede: eddf 0af2    	vldr	s1, [pc, #968]          @ 0xb2a8 <orange_dsp::generated_model::assemble_linear_kcl+0x418>
    aee2: ee3b 6a4c    	vsub.f32	s12, s22, s24
    aee6: eeb0 fa4b    	vmov.f32	s30, s22
    aeea: ee68 5aa0    	vmul.f32	s11, s17, s1
    aeee: eef0 6a4b    	vmov.f32	s13, s22
    aef2: eef0 3a44    	vmov.f32	s7, s8
    aef6: ed92 4a02    	vldr	s8, [r2, #8]
    aefa: ee11 4a2e    	vnmls.f32	s8, s2, s29
    aefe: ed9f 1aeb    	vldr	s2, [pc, #940]          @ 0xb2ac <orange_dsp::generated_model::assemble_linear_kcl+0x41c>
    af02: ee00 6a01    	vmla.f32	s12, s0, s2
    af06: ed92 1a10    	vldr	s2, [r2, #64]
    af0a: ee10 1a2e    	vnmls.f32	s2, s0, s29
    af0e: ed91 0a11    	vldr	s0, [r1, #68]
    af12: ee00 fa20    	vmla.f32	s30, s0, s1
    af16: edd1 0a17    	vldr	s1, [r1, #92]
    af1a: edcd 5a13    	vstr	s11, [sp, #76]
    af1e: ed91 aa22    	vldr	s20, [r1, #136]
    af22: eef0 9a4b    	vmov.f32	s19, s22
    af26: eef0 fa4b    	vmov.f32	s31, s22
    af2a: ee44 3a21    	vmla.f32	s7, s8, s3
    af2e: eddf 1ae0    	vldr	s3, [pc, #896]          @ 0xb2b0 <orange_dsp::generated_model::assemble_linear_kcl+0x420>
    af32: eef0 4a46    	vmov.f32	s9, s12
    af36: ee3e 6a0b    	vadd.f32	s12, s28, s22
    af3a: ee00 6a07    	vmla.f32	s12, s0, s14
    af3e: ed92 7a11    	vldr	s14, [r2, #68]
    af42: ee40 4a03    	vmla.f32	s9, s0, s6
    af46: ed9f 4adb    	vldr	s8, [pc, #876]          @ 0xb2b4 <orange_dsp::generated_model::assemble_linear_kcl+0x424>
    af4a: ee10 7a2e    	vnmls.f32	s14, s0, s29
    af4e: edcd 3a19    	vstr	s7, [sp, #100]
    af52: ed91 0a1d    	vldr	s0, [r1, #116]
    af56: eef0 da4b    	vmov.f32	s27, s22
    af5a: ee41 4a21    	vmla.f32	s9, s2, s3
    af5e: edd2 ba0a    	vldr	s23, [r2, #40]
    af62: edd2 2a0d    	vldr	s5, [r2, #52]
    af66: ee75 3a86    	vadd.f32	s7, s11, s12
    af6a: eddf 5ad3    	vldr	s11, [pc, #844]         @ 0xb2b8 <orange_dsp::generated_model::assemble_linear_kcl+0x428>
    af6e: ee41 3a04    	vmla.f32	s7, s2, s8
    af72: ed9f 1ad2    	vldr	s2, [pc, #840]          @ 0xb2bc <orange_dsp::generated_model::assemble_linear_kcl+0x42c>
    af76: ee47 4a04    	vmla.f32	s9, s14, s8
    af7a: ed91 4a01    	vldr	s8, [r1, #4]
    af7e: ee24 6a01    	vmul.f32	s12, s8, s2
    af82: ee47 3a21    	vmla.f32	s7, s14, s3
    af86: ed9f 7ace    	vldr	s14, [pc, #824]         @ 0xb2c0 <orange_dsp::generated_model::assemble_linear_kcl+0x430>
    af8a: edd2 1a1d    	vldr	s3, [r2, #116]
    af8e: ee50 1a2e    	vnmls.f32	s3, s0, s29
    af92: edcd 4a1b    	vstr	s9, [sp, #108]
    af96: ee60 4a07    	vmul.f32	s9, s0, s14
    af9a: ed91 0a1e    	vldr	s0, [r1, #120]
    af9e: edcd 4a15    	vstr	s9, [sp, #84]
    afa2: edcd 3a1a    	vstr	s7, [sp, #104]
    afa6: ee76 3a0b    	vadd.f32	s7, s12, s22
    afaa: ee40 3ac1    	vmls.f32	s7, s1, s2
    afae: ed91 1a00    	vldr	s2, [r1]
    afb2: ee74 4a8b    	vadd.f32	s9, s9, s22
    afb6: ed8d 0a14    	vstr	s0, [sp, #80]
    afba: ee40 4a47    	vmls.f32	s9, s0, s14
    afbe: eeb0 7a4b    	vmov.f32	s14, s22
    afc2: ee21 0a02    	vmul.f32	s0, s2, s4
    afc6: ed9f 2abf    	vldr	s4, [pc, #764]          @ 0xb2c4 <orange_dsp::generated_model::assemble_linear_kcl+0x434>
    afca: ee3b 6a46    	vsub.f32	s12, s22, s12
    afce: ee00 6a82    	vmla.f32	s12, s1, s4
    afd2: ed9f 2abd    	vldr	s4, [pc, #756]          @ 0xb2c8 <orange_dsp::generated_model::assemble_linear_kcl+0x438>
    afd6: edd1 0a18    	vldr	s1, [r1, #96]
    afda: ee41 4a82    	vmla.f32	s9, s3, s4
    afde: ee30 2a0b    	vadd.f32	s4, s0, s22
    afe2: eddf 1aba    	vldr	s3, [pc, #744]          @ 0xb2cc <orange_dsp::generated_model::assemble_linear_kcl+0x43c>
    afe6: ee00 2a83    	vmla.f32	s4, s1, s6
    afea: ed91 3a19    	vldr	s6, [r1, #100]
    afee: ed8d 6a17    	vstr	s12, [sp, #92]
    aff2: ed92 6a05    	vldr	s12, [r2, #20]
    aff6: ee23 3a25    	vmul.f32	s6, s6, s11
    affa: edcd 4a18    	vstr	s9, [sp, #96]
    affe: ed8d 3a10    	vstr	s6, [sp, #64]
    b002: ee3b 3a43    	vsub.f32	s6, s22, s6
    b006: eeb0 8a42    	vmov.f32	s16, s4
    b00a: ed91 2a05    	vldr	s4, [r1, #20]
    b00e: ee12 6a2e    	vnmls.f32	s12, s4, s29
    b012: ee02 7a21    	vmla.f32	s14, s4, s3
    b016: ed91 2a1a    	vldr	s4, [r1, #104]
    b01a: ee62 4a25    	vmul.f32	s9, s4, s11
    b01e: edd2 1a1a    	vldr	s3, [r2, #104]
    b022: ee52 1a2e    	vnmls.f32	s3, s4, s29
    b026: ed9f 2aaa    	vldr	s4, [pc, #680]          @ 0xb2d0 <orange_dsp::generated_model::assemble_linear_kcl+0x440>
    b02a: edcd 4a12    	vstr	s9, [sp, #72]
    b02e: ee74 4a83    	vadd.f32	s9, s9, s6
    b032: ed9f 3aa8    	vldr	s6, [pc, #672]          @ 0xb2d4 <orange_dsp::generated_model::assemble_linear_kcl+0x444>
    b036: ee06 7a02    	vmla.f32	s14, s12, s4
    b03a: ee46 4a03    	vmla.f32	s9, s12, s6
    b03e: ed91 6a0e    	vldr	s12, [r1, #56]
    b042: eef0 7a47    	vmov.f32	s15, s14
    b046: ed9f 7aa4    	vldr	s14, [pc, #656]         @ 0xb2d8 <orange_dsp::generated_model::assemble_linear_kcl+0x448>
    b04a: ee46 6a07    	vmla.f32	s13, s12, s14
    b04e: ed92 7a0e    	vldr	s14, [r2, #56]
    b052: ee16 7a2e    	vnmls.f32	s14, s12, s29
    b056: ed9f 6aa1    	vldr	s12, [pc, #644]         @ 0xb2dc <orange_dsp::generated_model::assemble_linear_kcl+0x44c>
    b05a: ee41 4a86    	vmla.f32	s9, s3, s12
    b05e: ee3b 6a40    	vsub.f32	s12, s22, s0
    b062: ed9f 0a9f    	vldr	s0, [pc, #636]          @ 0xb2e0 <orange_dsp::generated_model::assemble_linear_kcl+0x450>
    b066: ee00 6a80    	vmla.f32	s12, s1, s0
    b06a: ed92 0a22    	vldr	s0, [r2, #136]
    b06e: ee1a 0a2e    	vnmls.f32	s0, s20, s29
    b072: ee41 7a83    	vmla.f32	s15, s3, s6
    b076: edcd 4a16    	vstr	s9, [sp, #88]
    b07a: ee47 6a02    	vmla.f32	s13, s14, s4
    b07e: ed8d 0a0c    	vstr	s0, [sp, #48]
    b082: edcd 7a11    	vstr	s15, [sp, #68]
    b086: edd1 7a23    	vldr	s15, [r1, #140]
    b08a: eef0 4a40    	vmov.f32	s9, s0
    b08e: ed9f 0a95    	vldr	s0, [pc, #596]          @ 0xb2e4 <orange_dsp::generated_model::assemble_linear_kcl+0x454>
    b092: eef0 1a46    	vmov.f32	s3, s12
    b096: ed92 6a18    	vldr	s12, [r2, #96]
    b09a: ee10 6aae    	vnmls.f32	s12, s1, s29
    b09e: edd1 0a24    	vldr	s1, [r1, #144]
    b0a2: ee27 da80    	vmul.f32	s26, s15, s0
    b0a6: edcd 7a06    	vstr	s15, [sp, #24]
    b0aa: ee60 7a80    	vmul.f32	s15, s1, s0
    b0ae: ed9f 0a8e    	vldr	s0, [pc, #568]          @ 0xb2e8 <orange_dsp::generated_model::assemble_linear_kcl+0x458>
    b0b2: ee4a 9a00    	vmla.f32	s19, s20, s0
    b0b6: ed8d da02    	vstr	s26, [sp, #8]
    b0ba: ee3b 0a4d    	vsub.f32	s0, s22, s26
    b0be: ed92 da24    	vldr	s26, [r2, #144]
    b0c2: ee10 daae    	vnmls.f32	s26, s1, s29
    b0c6: edcd 7a01    	vstr	s15, [sp, #4]
    b0ca: ee47 1a03    	vmla.f32	s3, s14, s6
    b0ce: ed9f 7a87    	vldr	s14, [pc, #540]         @ 0xb2ec <orange_dsp::generated_model::assemble_linear_kcl+0x45c>
    b0d2: ee70 0a27    	vadd.f32	s1, s0, s15
    b0d6: ed9f 0a86    	vldr	s0, [pc, #536]          @ 0xb2f0 <orange_dsp::generated_model::assemble_linear_kcl+0x460>
    b0da: edd1 7a25    	vldr	s15, [r1, #148]
    b0de: ee44 0a80    	vmla.f32	s1, s9, s0
    b0e2: ed92 0a25    	vldr	s0, [r2, #148]
    b0e6: ee17 0aae    	vnmls.f32	s0, s15, s29
    b0ea: eef0 4a69    	vmov.f32	s9, s19
    b0ee: ee47 4a87    	vmla.f32	s9, s15, s14
    b0f2: ed9f 7a80    	vldr	s14, [pc, #512]         @ 0xb2f4 <orange_dsp::generated_model::assemble_linear_kcl+0x464>
    b0f6: ee46 6a03    	vmla.f32	s13, s12, s6
    b0fa: ee4d 0a07    	vmla.f32	s1, s26, s14
    b0fe: ed9f 7a7e    	vldr	s14, [pc, #504]         @ 0xb2f8 <orange_dsp::generated_model::assemble_linear_kcl+0x468>
    b102: ee4d 4a03    	vmla.f32	s9, s26, s6
    b106: ed8d da0b    	vstr	s26, [sp, #44]
    b10a: ee46 1a02    	vmla.f32	s3, s12, s4
    b10e: eeb0 6a4b    	vmov.f32	s12, s22
    b112: ee40 0a03    	vmla.f32	s1, s0, s6
    b116: ed9f 3a79    	vldr	s6, [pc, #484]          @ 0xb2fc <orange_dsp::generated_model::assemble_linear_kcl+0x46c>
    b11a: ee40 4a02    	vmla.f32	s9, s0, s4
    b11e: ed92 0a01    	vldr	s0, [r2, #4]
    b122: ee14 0a2e    	vnmls.f32	s0, s8, s29
    b126: ed9f 4a76    	vldr	s8, [pc, #472]          @ 0xb300 <orange_dsp::generated_model::assemble_linear_kcl+0x470>
    b12a: ee3b 2a6a    	vsub.f32	s4, s22, s21
    b12e: edcd 1a0d    	vstr	s3, [sp, #52]
    b132: ee05 2a03    	vmla.f32	s4, s10, s6
    b136: ed92 3a03    	vldr	s6, [r2, #12]
    b13a: ee15 3a2e    	vnmls.f32	s6, s10, s29
    b13e: edd2 1a00    	vldr	s3, [r2]
    b142: ee05 6a44    	vmls.f32	s12, s10, s8
    b146: ed91 5a04    	vldr	s10, [r1, #16]
    b14a: ee25 4a04    	vmul.f32	s8, s10, s8
    b14e: edcd 0a0f    	vstr	s1, [sp, #60]
    b152: ee51 1a2e    	vnmls.f32	s3, s2, s29
    b156: eddf 0a6b    	vldr	s1, [pc, #428]          @ 0xb304 <orange_dsp::generated_model::assemble_linear_kcl+0x474>
    b15a: ee40 3a20    	vmla.f32	s7, s0, s1
    b15e: eef0 aa4b    	vmov.f32	s21, s22
    b162: ee32 1a44    	vsub.f32	s2, s4, s8
    b166: ed91 2a06    	vldr	s4, [r1, #24]
    b16a: ee00 1a07    	vmla.f32	s2, s0, s14
    b16e: ed92 0a04    	vldr	s0, [r2, #16]
    b172: ee15 0a2e    	vnmls.f32	s0, s10, s29
    b176: ed91 da08    	vldr	s26, [r1, #32]
    b17a: ee43 3a07    	vmla.f32	s7, s6, s14
    b17e: edcd 4a0e    	vstr	s9, [sp, #56]
    b182: ee03 1a20    	vmla.f32	s2, s6, s1
    b186: ed9f 3a60    	vldr	s6, [pc, #384]          @ 0xb308 <orange_dsp::generated_model::assemble_linear_kcl+0x478>
    b18a: ee01 8aa0    	vmla.f32	s16, s3, s1
    b18e: edd1 4a13    	vldr	s9, [r1, #76]
    b192: ee42 fa03    	vmla.f32	s31, s4, s6
    b196: edcd 6a0a    	vstr	s13, [sp, #40]
    b19a: edd1 6a0a    	vldr	s13, [r1, #40]
    b19e: ed92 5a0c    	vldr	s10, [r2, #48]
    b1a2: ed8d 1a09    	vstr	s2, [sp, #36]
    b1a6: ee34 1a06    	vadd.f32	s2, s8, s12
    b1aa: ee01 1a87    	vmla.f32	s2, s3, s14
    b1ae: edcd 9a04    	vstr	s19, [sp, #16]
    b1b2: ee00 8a07    	vmla.f32	s16, s0, s14
    b1b6: edd2 9a15    	vldr	s19, [r2, #84]
    b1ba: ee56 baae    	vnmls.f32	s23, s13, s29
    b1be: edcd 3a08    	vstr	s7, [sp, #32]
    b1c2: ee58 9aae    	vnmls.f32	s19, s17, s29
    b1c6: ed8d 8a05    	vstr	s16, [sp, #20]
    b1ca: eeb0 4a41    	vmov.f32	s8, s2
    b1ce: ed9f 1a4f    	vldr	s2, [pc, #316]          @ 0xb30c <orange_dsp::generated_model::assemble_linear_kcl+0x47c>
    b1d2: ee42 aa01    	vmla.f32	s21, s4, s2
    b1d6: ed91 2a07    	vldr	s4, [r1, #28]
    b1da: ee00 4a20    	vmla.f32	s8, s0, s1
    b1de: ed9f 0a4c    	vldr	s0, [pc, #304]          @ 0xb310 <orange_dsp::generated_model::assemble_linear_kcl+0x480>
    b1e2: ee42 da03    	vmla.f32	s27, s4, s6
    b1e6: ee42 aa01    	vmla.f32	s21, s4, s2
    b1ea: ed9f 2a4a    	vldr	s4, [pc, #296]          @ 0xb314 <orange_dsp::generated_model::assemble_linear_kcl+0x484>
    b1ee: ed8d 4a07    	vstr	s8, [sp, #28]
    b1f2: ed9f 4a49    	vldr	s8, [pc, #292]          @ 0xb318 <orange_dsp::generated_model::assemble_linear_kcl+0x488>
    b1f6: ee4d aa00    	vmla.f32	s21, s26, s0
    b1fa: ed91 0a09    	vldr	s0, [r1, #36]
    b1fe: ee20 3a02    	vmul.f32	s6, s0, s4
    b202: ee08 fa84    	vmla.f32	s30, s17, s8
    b206: ed91 4a0d    	vldr	s8, [r1, #52]
    b20a: ee54 2a2e    	vnmls.f32	s5, s8, s29
    b20e: ee33 1a0b    	vadd.f32	s2, s6, s22
    b212: ee04 1ac2    	vmls.f32	s2, s9, s4
    b216: ed92 2a09    	vldr	s4, [r2, #36]
    b21a: ee10 2a2e    	vnmls.f32	s4, s0, s29
    b21e: ed91 0a0c    	vldr	s0, [r1, #48]
    b222: ee10 5a2e    	vnmls.f32	s10, s0, s29
    b226: ee20 0a25    	vmul.f32	s0, s0, s11
    b22a: ee24 4a25    	vmul.f32	s8, s8, s11
    b22e: ee30 6a0b    	vadd.f32	s12, s0, s22
    b232: ee3b 0a40    	vsub.f32	s0, s22, s0
    b236: ee36 8a44    	vsub.f32	s16, s12, s8
    b23a: ed91 6a0b    	vldr	s12, [r1, #44]
    b23e: ee0b 8a87    	vmla.f32	s16, s23, s14
    b242: ee74 8a00    	vadd.f32	s17, s8, s0
    b246: eeb0 4a41    	vmov.f32	s8, s2
    b24a: ed9f 1a34    	vldr	s2, [pc, #208]          @ 0xb31c <orange_dsp::generated_model::assemble_linear_kcl+0x48c>
    b24e: ee42 8a07    	vmla.f32	s17, s4, s14
    b252: ee66 ca81    	vmul.f32	s25, s13, s2
    b256: eddf 6a32    	vldr	s13, [pc, #200]         @ 0xb320 <orange_dsp::generated_model::assemble_linear_kcl+0x490>
    b25a: ee05 8a26    	vmla.f32	s16, s10, s13
    b25e: ed9f 0a31    	vldr	s0, [pc, #196]          @ 0xb324 <orange_dsp::generated_model::assemble_linear_kcl+0x494>
    b262: ee02 4a20    	vmla.f32	s8, s4, s1
    b266: ed9d 2a13    	vldr	s4, [sp, #76]
    b26a: ee45 8a00    	vmla.f32	s17, s10, s0
    b26e: ee02 8a80    	vmla.f32	s16, s5, s0
    b272: ed92 0a0f    	vldr	s0, [r2, #60]
    b276: ee19 0a2e    	vnmls.f32	s0, s18, s29
    b27a: ee7c 3a8b    	vadd.f32	s7, s25, s22
    b27e: ee46 3a41    	vmls.f32	s7, s12, s2
    b282: ee42 8aa6    	vmla.f32	s17, s5, s13
    b286: edd2 6a08    	vldr	s13, [r2, #32]
    b28a: f000 b84d    	b.w	0xb328 <orange_dsp::generated_model::assemble_linear_kcl+0x498> @ imm = #0x9a
    b28e: bf00         	nop
    b290: ed 19 5f 39  	.word	0x395f19ed
    b294: 00 00 00 00  	.word	0x00000000
    b298: 17 b7 d1 38  	.word	0x38d1b717
    b29c: 17 b7 d1 b8  	.word	0xb8d1b717
    b2a0: e0 55 fe 38  	.word	0x38fe55e0
    b2a4: 7b 69 0a 3b  	.word	0x3b0a697b
    b2a8: 24 7b b2 b7  	.word	0xb7b27b24
    b2ac: 17 b7 51 39  	.word	0x3951b717
    b2b0: b0 0f 21 37  	.word	0x37210fb0
    b2b4: b0 0f 21 b7  	.word	0xb7210fb0
    b2b8: 24 7b b2 37  	.word	0x37b27b24
    b2bc: 3e c3 2e 3a  	.word	0x3a2ec33e
    b2c0: 34 70 0b 3b  	.word	0x3b0b7034
    b2c4: 04 31 63 3a  	.word	0x3a633104
    b2c8: 02 2b 07 40  	.word	0x40072b02
    b2cc: bd 37 86 35  	.word	0x358637bd
    b2d0: 66 d9 93 3b  	.word	0x3b93d966
    b2d4: 66 d9 93 bb  	.word	0xbb93d966
    b2d8: ea c8 0e 36  	.word	0x360ec8ea
    b2dc: ee 29 94 3b  	.word	0x3b9429ee
    b2e0: 51 49 9d 39  	.word	0x399d4951
    b2e4: 49 b9 76 37  	.word	0x3776b949
    b2e8: bd 37 06 b7  	.word	0xb70637bd
    b2ec: a4 8c b8 38  	.word	0x38b88ca4
    b2f0: 52 49 1d bc  	.word	0xbc1d4952
    b2f4: 06 36 67 3c  	.word	0x3c673606
    b2f8: d0 44 58 be  	.word	0xbe5844d0
    b2fc: 48 96 69 39  	.word	0x39699648
    b300: ac c5 27 37  	.word	0x3727c5ac
    b304: d0 44 58 3e  	.word	0x3e5844d0
    b308: dd 97 68 38  	.word	0x386897dd
    b30c: 72 a6 3e b8  	.word	0xb83ea672
    b310: 72 a6 be 38  	.word	0x38bea672
    b314: 45 2e c2 39  	.word	0x39c22e45
    b318: 24 7b 32 38  	.word	0x38327b24
    b31c: 6f 12 83 3a  	.word	0x3a83126f
    b320: a3 50 58 3e  	.word	0x3e5850a3
    b324: 3b 3f 3d b8  	.word	0xb83d3f3b
    b328: ee02 4a87    	vmla.f32	s8, s5, s14
    b32c: ed80 8a0c    	vstr	s16, [r0, #48]
    b330: ee7c 2a0b    	vadd.f32	s5, s24, s22
    b334: ed9f 8afb    	vldr	s16, [pc, #1004]        @ 0xb724 <orange_dsp::generated_model::assemble_linear_kcl+0x894>
    b338: ee4b 3aa0    	vmla.f32	s7, s23, s1
    b33c: ee3b 9a43    	vsub.f32	s18, s22, s6
    b340: edc0 8a0d    	vstr	s17, [r0, #52]
    b344: ee72 ba8e    	vadd.f32	s23, s5, s28
    b348: eddf 2aed    	vldr	s5, [pc, #948]          @ 0xb700 <orange_dsp::generated_model::assemble_linear_kcl+0x870>
    b34c: ee40 ba20    	vmla.f32	s23, s0, s1
    b350: ed91 0a16    	vldr	s0, [r1, #88]
    b354: ee20 3a25    	vmul.f32	s6, s0, s11
    b358: eeb0 ea4b    	vmov.f32	s28, s22
    b35c: ee5d 6a2e    	vnmls.f32	s13, s26, s29
    b360: ed8d 4a03    	vstr	s8, [sp, #12]
    b364: ee45 3a07    	vmla.f32	s7, s10, s14
    b368: ed9f 5ae2    	vldr	s10, [pc, #904]         @ 0xb6f4 <orange_dsp::generated_model::assemble_linear_kcl+0x864>
    b36c: ee7f 5a43    	vsub.f32	s11, s30, s6
    b370: ed91 4a27    	vldr	s8, [r1, #156]
    b374: ee32 fa0b    	vadd.f32	s30, s4, s22
    b378: ed92 2a16    	vldr	s4, [r2, #88]
    b37c: ee10 2a2e    	vnmls.f32	s4, s0, s29
    b380: ed91 0a1b    	vldr	s0, [r1, #108]
    b384: ee04 9a85    	vmla.f32	s18, s9, s10
    b388: ed9f 5ae2    	vldr	s10, [pc, #904]         @ 0xb714 <orange_dsp::generated_model::assemble_linear_kcl+0x884>
    b38c: ee7f 1a03    	vadd.f32	s3, s30, s6
    b390: ed92 fa1b    	vldr	s30, [r2, #108]
    b394: ee10 fa2e    	vnmls.f32	s30, s0, s29
    b398: ed92 0a21    	vldr	s0, [r2, #132]
    b39c: ee04 eac1    	vmls.f32	s28, s9, s2
    b3a0: edd1 4a21    	vldr	s9, [r1, #132]
    b3a4: ee49 1aa2    	vmla.f32	s3, s19, s5
    b3a8: eddf 8ad1    	vldr	s17, [pc, #836]         @ 0xb6f0 <orange_dsp::generated_model::assemble_linear_kcl+0x860>
    b3ac: ee14 0aae    	vnmls.f32	s0, s9, s29
    b3b0: edc0 3a0a    	vstr	s7, [r0, #40]
    b3b4: ee24 ca81    	vmul.f32	s24, s9, s2
    b3b8: eddf 4ad0    	vldr	s9, [pc, #832]          @ 0xb6fc <orange_dsp::generated_model::assemble_linear_kcl+0x86c>
    b3bc: ee46 aaa0    	vmla.f32	s21, s13, s1
    b3c0: ed9d 1a02    	vldr	s2, [sp, #8]
    b3c4: ee46 5a87    	vmla.f32	s11, s13, s14
    b3c8: eef0 6a4b    	vmov.f32	s13, s22
    b3cc: ee42 1a24    	vmla.f32	s3, s4, s9
    b3d0: eef0 3a4b    	vmov.f32	s7, s22
    b3d4: ee42 6a07    	vmla.f32	s13, s4, s14
    b3d8: edc0 ba0f    	vstr	s23, [r0, #60]
    b3dc: ee49 aa87    	vmla.f32	s21, s19, s14
    b3e0: ee4f 1a07    	vmla.f32	s3, s30, s14
    b3e4: ee4f 6a20    	vmla.f32	s13, s30, s1
    b3e8: ee3e fa0c    	vadd.f32	s30, s28, s24
    b3ec: ed9f eac8    	vldr	s28, [pc, #800]         @ 0xb710 <orange_dsp::generated_model::assemble_linear_kcl+0x880>
    b3f0: ee49 5aa4    	vmla.f32	s11, s19, s9
    b3f4: eef0 9a4b    	vmov.f32	s19, s22
    b3f8: ee00 fa20    	vmla.f32	s30, s0, s1
    b3fc: edc0 1a16    	vstr	s3, [r0, #88]
    b400: ee4a 9a0e    	vmla.f32	s19, s20, s28
    b404: ed92 aa23    	vldr	s20, [r2, #140]
    b408: ee71 0a0b    	vadd.f32	s1, s2, s22
    b40c: ed9d 1a06    	vldr	s2, [sp, #24]
    b410: ee11 aa2e    	vnmls.f32	s20, s2, s29
    b414: ed9d 1a01    	vldr	s2, [sp, #4]
    b418: ee47 9a85    	vmla.f32	s19, s15, s10
    b41c: eddf 7abe    	vldr	s15, [pc, #760]         @ 0xb718 <orange_dsp::generated_model::assemble_linear_kcl+0x888>
    b420: ee70 0ac1    	vsub.f32	s1, s1, s2
    b424: ed91 1a26    	vldr	s2, [r1, #152]
    b428: ee21 3a27    	vmul.f32	s6, s2, s15
    b42c: eddd 1a0b    	vldr	s3, [sp, #44]
    b430: ee40 0a07    	vmla.f32	s1, s0, s14
    b434: ed92 0a26    	vldr	s0, [r2, #152]
    b438: ee11 0a2e    	vnmls.f32	s0, s2, s29
    b43c: edc0 6a1b    	vstr	s13, [r0, #108]
    b440: ee24 5a05    	vmul.f32	s10, s8, s10
    b444: eef0 6a4b    	vmov.f32	s13, s22
    b448: ee33 1a0b    	vadd.f32	s2, s6, s22
    b44c: ed8d 5a13    	vstr	s10, [sp, #76]
    b450: ee4a 0a24    	vmla.f32	s1, s20, s9
    b454: edc0 aa08    	vstr	s21, [r0, #32]
    b458: ee0a fa07    	vmla.f32	s30, s20, s14
    b45c: ee75 7a01    	vadd.f32	s15, s10, s2
    b460: ed9f 1aae    	vldr	s2, [pc, #696]          @ 0xb71c <orange_dsp::generated_model::assemble_linear_kcl+0x88c>
    b464: ee4a 7a22    	vmla.f32	s15, s20, s5
    b468: ed9d 5a05    	vldr	s10, [sp, #20]
    b46c: ee40 0a22    	vmla.f32	s1, s0, s5
    b470: ed80 5a00    	vstr	s10, [r0]
    b474: ee42 5a22    	vmla.f32	s11, s4, s5
    b478: ed9f 2a97    	vldr	s4, [pc, #604]          @ 0xb6d8 <orange_dsp::generated_model::assemble_linear_kcl+0x848>
    b47c: ee40 7a01    	vmla.f32	s15, s0, s2
    b480: ed9d 0a04    	vldr	s0, [sp, #16]
    b484: ee30 aa43    	vsub.f32	s20, s0, s6
    b488: ed9f 0a92    	vldr	s0, [pc, #584]          @ 0xb6d4 <orange_dsp::generated_model::assemble_linear_kcl+0x844>
    b48c: ee2d 0a00    	vmul.f32	s0, s26, s0
    b490: ed92 da0b    	vldr	s26, [r2, #44]
    b494: ee3b 1a6c    	vsub.f32	s2, s22, s25
    b498: edd2 ca14    	vldr	s25, [r2, #80]
    b49c: ee06 1a02    	vmla.f32	s2, s12, s4
    b4a0: ed91 2a14    	vldr	s4, [r1, #80]
    b4a4: ee7f 4a80    	vadd.f32	s9, s31, s0
    b4a8: ed9f 3a89    	vldr	s6, [pc, #548]          @ 0xb6d0 <orange_dsp::generated_model::assemble_linear_kcl+0x840>
    b4ac: ee30 7a2d    	vadd.f32	s14, s0, s27
    b4b0: ed9f 0a8a    	vldr	s0, [pc, #552]          @ 0xb6dc <orange_dsp::generated_model::assemble_linear_kcl+0x84c>
    b4b4: eef0 da4b    	vmov.f32	s27, s22
    b4b8: ee46 da40    	vmls.f32	s27, s12, s0
    b4bc: ee16 da2e    	vnmls.f32	s26, s12, s29
    b4c0: ed92 6a12    	vldr	s12, [r2, #72]
    b4c4: ee02 1a40    	vmls.f32	s2, s4, s0
    b4c8: ed9f 0a8b    	vldr	s0, [pc, #556]          @ 0xb6f8 <orange_dsp::generated_model::assemble_linear_kcl+0x868>
    b4cc: ee42 da00    	vmla.f32	s27, s4, s0
    b4d0: eeb0 0a4b    	vmov.f32	s0, s22
    b4d4: ee52 ca2e    	vnmls.f32	s25, s4, s29
    b4d8: ed91 2a12    	vldr	s4, [r1, #72]
    b4dc: ee02 0a03    	vmla.f32	s0, s4, s6
    b4e0: ed92 3a27    	vldr	s6, [r2, #156]
    b4e4: ee12 6a2e    	vnmls.f32	s12, s4, s29
    b4e8: ed9f 2a7e    	vldr	s4, [pc, #504]          @ 0xb6e4 <orange_dsp::generated_model::assemble_linear_kcl+0x854>
    b4ec: ee04 aa0e    	vmla.f32	s20, s8, s28
    b4f0: ed9f ea7b    	vldr	s28, [pc, #492]         @ 0xb6e0 <orange_dsp::generated_model::assemble_linear_kcl+0x850>
    b4f4: ee14 3a2e    	vnmls.f32	s6, s8, s29
    b4f8: ed9d 4a10    	vldr	s8, [sp, #64]
    b4fc: ee0d 1a0e    	vmla.f32	s2, s26, s28
    b500: eddd fa14    	vldr	s31, [sp, #80]
    b504: ee79 2a4c    	vsub.f32	s5, s18, s24
    b508: ed91 9a1c    	vldr	s18, [r1, #112]
    b50c: ee4d da02    	vmla.f32	s27, s26, s4
    b510: ed9f ca7c    	vldr	s24, [pc, #496]         @ 0xb704 <orange_dsp::generated_model::assemble_linear_kcl+0x874>
    b514: ee34 4a0b    	vadd.f32	s8, s8, s22
    b518: ed9d da08    	vldr	s26, [sp, #32]
    b51c: ee29 9a0c    	vmul.f32	s18, s18, s24
    b520: ed80 da01    	vstr	s26, [r0, #4]
    b524: ed9d da12    	vldr	s26, [sp, #72]
    b528: ee0c 1a82    	vmla.f32	s2, s25, s4
    b52c: ee4c da8e    	vmla.f32	s27, s25, s28
    b530: edd1 ca1f    	vldr	s25, [r1, #124]
    b534: ee34 da4d    	vsub.f32	s26, s8, s26
    b538: ed9d 4a19    	vldr	s8, [sp, #100]
    b53c: ed80 4a02    	vstr	s8, [r0, #8]
    b540: ed9d 4a09    	vldr	s8, [sp, #36]
    b544: ed80 4a03    	vstr	s8, [r0, #12]
    b548: ed9d 4a15    	vldr	s8, [sp, #84]
    b54c: ee39 ea0b    	vadd.f32	s28, s18, s22
    b550: ed80 7a07    	vstr	s14, [r0, #28]
    b554: ee0c eacc    	vmls.f32	s28, s25, s24
    b558: ed9d 7a0a    	vldr	s14, [sp, #40]
    b55c: ee3b ca44    	vsub.f32	s24, s22, s8
    b560: ed9f 4a69    	vldr	s8, [pc, #420]          @ 0xb708 <orange_dsp::generated_model::assemble_linear_kcl+0x878>
    b564: ee0f ca84    	vmla.f32	s24, s31, s8
    b568: ed9d 4a07    	vldr	s8, [sp, #28]
    b56c: ed80 4a04    	vstr	s8, [r0, #16]
    b570: ed9d 4a11    	vldr	s8, [sp, #68]
    b574: ed80 4a05    	vstr	s8, [r0, #20]
    b578: ed9f 4a56    	vldr	s8, [pc, #344]          @ 0xb6d4 <orange_dsp::generated_model::assemble_linear_kcl+0x844>
    b57c: ee3b 9a49    	vsub.f32	s18, s22, s18
    b580: ed80 7a0e    	vstr	s14, [r0, #56]
    b584: ee0f 9a84    	vmla.f32	s18, s31, s8
    b588: ed91 7a20    	vldr	s14, [r1, #128]
    b58c: ee0c ca84    	vmla.f32	s24, s25, s8
    b590: ed9f 4a5e    	vldr	s8, [pc, #376]          @ 0xb70c <orange_dsp::generated_model::assemble_linear_kcl+0x87c>
    b594: ed9f 5a54    	vldr	s10, [pc, #336]         @ 0xb6e8 <orange_dsp::generated_model::assemble_linear_kcl+0x858>
    b598: edc0 4a06    	vstr	s9, [r0, #24]
    b59c: ee0c 9a84    	vmla.f32	s18, s25, s8
    b5a0: ed9d 4a03    	vldr	s8, [sp, #12]
    b5a4: ed80 4a09    	vstr	s8, [r0, #36]
    b5a8: ed9f 4a50    	vldr	s8, [pc, #320]          @ 0xb6ec <orange_dsp::generated_model::assemble_linear_kcl+0x85c>
    b5ac: ee06 0a04    	vmla.f32	s0, s12, s8
    b5b0: eddd 4a1b    	vldr	s9, [sp, #108]
    b5b4: ee47 3a05    	vmla.f32	s7, s14, s10
    b5b8: edc0 4a10    	vstr	s9, [r0, #64]
    b5bc: eddd 4a1a    	vldr	s9, [sp, #104]
    b5c0: edc0 4a11    	vstr	s9, [r0, #68]
    b5c4: ee03 0a28    	vmla.f32	s0, s6, s17
    b5c8: edd2 4a20    	vldr	s9, [r2, #128]
    b5cc: ee57 4a2e    	vnmls.f32	s9, s14, s29
    b5d0: ed9d 7a0c    	vldr	s14, [sp, #48]
    b5d4: ed80 1a0b    	vstr	s2, [r0, #44]
    b5d8: ed92 1a1f    	vldr	s2, [r2, #124]
    b5dc: ee1c 1aae    	vnmls.f32	s2, s25, s29
    b5e0: edc0 2a13    	vstr	s5, [r0, #76]
    b5e4: ed80 0a12    	vstr	s0, [r0, #72]
    b5e8: ed9d 0a13    	vldr	s0, [sp, #76]
    b5ec: ee30 0a29    	vadd.f32	s0, s0, s19
    b5f0: edd2 2a2a    	vldr	s5, [r2, #168]
    b5f4: ee07 0a04    	vmla.f32	s0, s14, s8
    b5f8: ed91 7a2a    	vldr	s14, [r1, #168]
    b5fc: ee57 2a2e    	vnmls.f32	s5, s14, s29
    b600: ed91 5a29    	vldr	s10, [r1, #164]
    b604: ee37 7a0b    	vadd.f32	s14, s14, s22
    b608: ed80 da19    	vstr	s26, [r0, #100]
    b60c: ee01 0aa8    	vmla.f32	s0, s3, s17
    b610: eddd 1a17    	vldr	s3, [sp, #92]
    b614: edc0 1a17    	vstr	s3, [r0, #92]
    b618: eddd 1a0d    	vldr	s3, [sp, #52]
    b61c: edc0 1a18    	vstr	s3, [r0, #96]
    b620: eddd 1a16    	vldr	s3, [sp, #88]
    b624: edc0 1a1a    	vstr	s3, [r0, #104]
    b628: edd1 1a28    	vldr	s3, [r1, #160]
    b62c: ee01 bac8    	vmls.f32	s22, s3, s16
    b630: ed9f da3d    	vldr	s26, [pc, #244]         @ 0xb728 <orange_dsp::generated_model::assemble_linear_kcl+0x898>
    b634: edc0 5a15    	vstr	s11, [r0, #84]
    b638: edd2 5a29    	vldr	s11, [r2, #164]
    b63c: ee55 5a2e    	vnmls.f32	s11, s10, s29
    b640: eddf 9a27    	vldr	s19, [pc, #156]         @ 0xb6e0 <orange_dsp::generated_model::assemble_linear_kcl+0x850>
    b644: ee05 ba0d    	vmla.f32	s22, s10, s26
    b648: ed80 ca1e    	vstr	s24, [r0, #120]
    b64c: ed9f ca34    	vldr	s24, [pc, #208]         @ 0xb720 <orange_dsp::generated_model::assemble_linear_kcl+0x890>
    b650: ee01 9a04    	vmla.f32	s18, s2, s8
    b654: ee44 3aa9    	vmla.f32	s7, s9, s19
    b658: edc0 da14    	vstr	s27, [r0, #80]
    b65c: ee41 6a8c    	vmla.f32	s13, s3, s24
    b660: ed80 ea1c    	vstr	s28, [r0, #112]
    b664: ee06 aa28    	vmla.f32	s20, s12, s17
    b668: ed9d da18    	vldr	s26, [sp, #96]
    b66c: ee04 ba82    	vmla.f32	s22, s9, s4
    b670: ed80 da1d    	vstr	s26, [r0, #116]
    b674: ee01 7a28    	vmla.f32	s14, s2, s17
    b678: ed80 fa21    	vstr	s30, [r0, #132]
    b67c: ee02 9aa8    	vmla.f32	s18, s5, s17
    b680: ed80 0a22    	vstr	s0, [r0, #136]
    b684: ee45 3a82    	vmla.f32	s7, s11, s4
    b688: edc0 0a23    	vstr	s1, [r0, #140]
    b68c: ee03 aa04    	vmla.f32	s20, s6, s8
    b690: ed9d 0a0f    	vldr	s0, [sp, #60]
    b694: ee45 6a48    	vmls.f32	s13, s10, s16
    b698: ed80 0a24    	vstr	s0, [r0, #144]
    b69c: ee05 baa9    	vmla.f32	s22, s11, s19
    b6a0: ed80 9a1f    	vstr	s18, [r0, #124]
    b6a4: ee02 7a84    	vmla.f32	s14, s5, s8
    b6a8: edc0 3a20    	vstr	s7, [r0, #128]
    b6ac: ed9d 0a0e    	vldr	s0, [sp, #56]
    b6b0: ed80 0a25    	vstr	s0, [r0, #148]
    b6b4: edc0 7a26    	vstr	s15, [r0, #152]
    b6b8: ed80 aa27    	vstr	s20, [r0, #156]
    b6bc: edc0 6a28    	vstr	s13, [r0, #160]
    b6c0: ed80 ba29    	vstr	s22, [r0, #164]
    b6c4: ed80 7a2a    	vstr	s14, [r0, #168]
    b6c8: b01c         	add	sp, #0x70
    b6ca: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    b6ce: bd80         	pop	{r7, pc}
    b6d0: bd 37 86 35  	.word	0x358637bd
    b6d4: 72 a6 3e b8  	.word	0xb83ea672
    b6d8: e9 58 96 3a  	.word	0x3a9658e9
    b6dc: cd 33 1a 39  	.word	0x391a33cd
    b6e0: da 03 ad 3c  	.word	0x3cad03da
    b6e4: da 03 ad bc  	.word	0xbcad03da
    b6e8: 24 7b b2 37  	.word	0x37b27b24
    b6ec: 52 49 1d 3c  	.word	0x3c1d4952
    b6f0: 52 49 1d bc  	.word	0xbc1d4952
    b6f4: 00 9e b3 3a  	.word	0x3ab39e00
    b6f8: 4a 06 99 39  	.word	0x3999064a
    b6fc: 5a 4a 58 3e  	.word	0x3e584a5a
    b700: db 2a b1 b7  	.word	0xb7b12adb
    b704: 09 f2 94 3b  	.word	0x3b94f209
    b708: ce 6a 0e 3b  	.word	0x3b0e6ace
    b70c: 54 3d 22 3e  	.word	0x3e223d54
    b710: bd 37 86 37  	.word	0x378637bd
    b714: bd 37 06 b7  	.word	0xb70637bd
    b718: bd 37 06 37  	.word	0x370637bd
    b71c: db 2a b1 37  	.word	0x37b12adb
    b720: f6 cc 12 39  	.word	0x3912ccf6
    b724: ac c5 27 38  	.word	0x3827c5ac
    b728: ac c5 a7 38  	.word	0x38a7c5ac
    b72c: d4 d4 d4 d4  	.word	0xd4d4d4d4

0000b730 <orange_dsp::physical_residual_norm>:
    b730: b580         	push	{r7, lr}
    b732: 466f         	mov	r7, sp
    b734: 6801         	ldr	r1, [r0]
    b736: 6842         	ldr	r2, [r0, #0x4]
    b738: f021 4300    	bic	r3, r1, #0x80000000
    b73c: f022 4200    	bic	r2, r2, #0x80000000
    b740: f1b3 4fff    	cmp.w	r3, #0x7f800000
    b744: ed9f 1afb    	vldr	s2, [pc, #1004]         @ 0xbb34 <orange_dsp::physical_residual_norm+0x404>
    b748: bf88         	it	hi
    b74a: 2300         	movhi	r3, #0x0
    b74c: f8d0 c008    	ldr.w	r12, [r0, #0x8]
    b750: eeb2 2a0e    	vmov.f32	s4, #1.500000e+01
    b754: 4619         	mov	r1, r3
    b756: 429a         	cmp	r2, r3
    b758: bf88         	it	hi
    b75a: 4611         	movhi	r1, r2
    b75c: f1b2 4fff    	cmp.w	r2, #0x7f800000
    b760: f02c 4200    	bic	r2, r12, #0x80000000
    b764: bf88         	it	hi
    b766: 4619         	movhi	r1, r3
    b768: f8d0 c00c    	ldr.w	r12, [r0, #0xc]
    b76c: eeb3 3a08    	vmov.f32	s6, #2.400000e+01
    b770: 460b         	mov	r3, r1
    b772: 428a         	cmp	r2, r1
    b774: bf88         	it	hi
    b776: 4613         	movhi	r3, r2
    b778: f1b2 4fff    	cmp.w	r2, #0x7f800000
    b77c: bf88         	it	hi
    b77e: 460b         	movhi	r3, r1
    b780: f02c 4100    	bic	r1, r12, #0x80000000
    b784: 461a         	mov	r2, r3
    b786: 4299         	cmp	r1, r3
    b788: bf88         	it	hi
    b78a: 460a         	movhi	r2, r1
    b78c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b790: 6901         	ldr	r1, [r0, #0x10]
    b792: bf88         	it	hi
    b794: 461a         	movhi	r2, r3
    b796: f021 4100    	bic	r1, r1, #0x80000000
    b79a: 4613         	mov	r3, r2
    b79c: 4291         	cmp	r1, r2
    b79e: bf88         	it	hi
    b7a0: 460b         	movhi	r3, r1
    b7a2: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b7a6: 6941         	ldr	r1, [r0, #0x14]
    b7a8: bf88         	it	hi
    b7aa: 4613         	movhi	r3, r2
    b7ac: f021 4100    	bic	r1, r1, #0x80000000
    b7b0: 461a         	mov	r2, r3
    b7b2: 4299         	cmp	r1, r3
    b7b4: bf88         	it	hi
    b7b6: 460a         	movhi	r2, r1
    b7b8: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b7bc: 6981         	ldr	r1, [r0, #0x18]
    b7be: bf88         	it	hi
    b7c0: 461a         	movhi	r2, r3
    b7c2: f021 4100    	bic	r1, r1, #0x80000000
    b7c6: 4613         	mov	r3, r2
    b7c8: 4291         	cmp	r1, r2
    b7ca: bf88         	it	hi
    b7cc: 460b         	movhi	r3, r1
    b7ce: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b7d2: 69c1         	ldr	r1, [r0, #0x1c]
    b7d4: bf88         	it	hi
    b7d6: 4613         	movhi	r3, r2
    b7d8: f021 4100    	bic	r1, r1, #0x80000000
    b7dc: 461a         	mov	r2, r3
    b7de: 4299         	cmp	r1, r3
    b7e0: bf88         	it	hi
    b7e2: 460a         	movhi	r2, r1
    b7e4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b7e8: 6a01         	ldr	r1, [r0, #0x20]
    b7ea: bf88         	it	hi
    b7ec: 461a         	movhi	r2, r3
    b7ee: f021 4100    	bic	r1, r1, #0x80000000
    b7f2: 4613         	mov	r3, r2
    b7f4: 4291         	cmp	r1, r2
    b7f6: bf88         	it	hi
    b7f8: 460b         	movhi	r3, r1
    b7fa: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b7fe: 6a41         	ldr	r1, [r0, #0x24]
    b800: bf88         	it	hi
    b802: 4613         	movhi	r3, r2
    b804: f021 4100    	bic	r1, r1, #0x80000000
    b808: 461a         	mov	r2, r3
    b80a: 4299         	cmp	r1, r3
    b80c: bf88         	it	hi
    b80e: 460a         	movhi	r2, r1
    b810: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b814: 6a81         	ldr	r1, [r0, #0x28]
    b816: bf88         	it	hi
    b818: 461a         	movhi	r2, r3
    b81a: f021 4100    	bic	r1, r1, #0x80000000
    b81e: 4613         	mov	r3, r2
    b820: 4291         	cmp	r1, r2
    b822: bf88         	it	hi
    b824: 460b         	movhi	r3, r1
    b826: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b82a: 6ac1         	ldr	r1, [r0, #0x2c]
    b82c: bf88         	it	hi
    b82e: 4613         	movhi	r3, r2
    b830: f021 4100    	bic	r1, r1, #0x80000000
    b834: 461a         	mov	r2, r3
    b836: 4299         	cmp	r1, r3
    b838: bf88         	it	hi
    b83a: 460a         	movhi	r2, r1
    b83c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b840: 6b01         	ldr	r1, [r0, #0x30]
    b842: bf88         	it	hi
    b844: 461a         	movhi	r2, r3
    b846: f021 4100    	bic	r1, r1, #0x80000000
    b84a: 4613         	mov	r3, r2
    b84c: 4291         	cmp	r1, r2
    b84e: bf88         	it	hi
    b850: 460b         	movhi	r3, r1
    b852: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b856: 6b41         	ldr	r1, [r0, #0x34]
    b858: bf88         	it	hi
    b85a: 4613         	movhi	r3, r2
    b85c: f021 4100    	bic	r1, r1, #0x80000000
    b860: 461a         	mov	r2, r3
    b862: 4299         	cmp	r1, r3
    b864: bf88         	it	hi
    b866: 460a         	movhi	r2, r1
    b868: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b86c: 6b81         	ldr	r1, [r0, #0x38]
    b86e: bf88         	it	hi
    b870: 461a         	movhi	r2, r3
    b872: f021 4100    	bic	r1, r1, #0x80000000
    b876: 4613         	mov	r3, r2
    b878: 4291         	cmp	r1, r2
    b87a: bf88         	it	hi
    b87c: 460b         	movhi	r3, r1
    b87e: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b882: 6bc1         	ldr	r1, [r0, #0x3c]
    b884: bf88         	it	hi
    b886: 4613         	movhi	r3, r2
    b888: f021 4100    	bic	r1, r1, #0x80000000
    b88c: 461a         	mov	r2, r3
    b88e: 4299         	cmp	r1, r3
    b890: bf88         	it	hi
    b892: 460a         	movhi	r2, r1
    b894: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b898: 6c01         	ldr	r1, [r0, #0x40]
    b89a: bf88         	it	hi
    b89c: 461a         	movhi	r2, r3
    b89e: f021 4100    	bic	r1, r1, #0x80000000
    b8a2: 4613         	mov	r3, r2
    b8a4: 4291         	cmp	r1, r2
    b8a6: bf88         	it	hi
    b8a8: 460b         	movhi	r3, r1
    b8aa: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b8ae: 6c41         	ldr	r1, [r0, #0x44]
    b8b0: bf88         	it	hi
    b8b2: 4613         	movhi	r3, r2
    b8b4: f021 4100    	bic	r1, r1, #0x80000000
    b8b8: 461a         	mov	r2, r3
    b8ba: 4299         	cmp	r1, r3
    b8bc: bf88         	it	hi
    b8be: 460a         	movhi	r2, r1
    b8c0: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b8c4: 6c81         	ldr	r1, [r0, #0x48]
    b8c6: bf88         	it	hi
    b8c8: 461a         	movhi	r2, r3
    b8ca: f021 4100    	bic	r1, r1, #0x80000000
    b8ce: 4613         	mov	r3, r2
    b8d0: 4291         	cmp	r1, r2
    b8d2: bf88         	it	hi
    b8d4: 460b         	movhi	r3, r1
    b8d6: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b8da: 6cc1         	ldr	r1, [r0, #0x4c]
    b8dc: bf88         	it	hi
    b8de: 4613         	movhi	r3, r2
    b8e0: f021 4100    	bic	r1, r1, #0x80000000
    b8e4: 461a         	mov	r2, r3
    b8e6: 4299         	cmp	r1, r3
    b8e8: bf88         	it	hi
    b8ea: 460a         	movhi	r2, r1
    b8ec: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b8f0: 6d01         	ldr	r1, [r0, #0x50]
    b8f2: bf88         	it	hi
    b8f4: 461a         	movhi	r2, r3
    b8f6: f021 4100    	bic	r1, r1, #0x80000000
    b8fa: 4613         	mov	r3, r2
    b8fc: 4291         	cmp	r1, r2
    b8fe: bf88         	it	hi
    b900: 460b         	movhi	r3, r1
    b902: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b906: 6d41         	ldr	r1, [r0, #0x54]
    b908: bf88         	it	hi
    b90a: 4613         	movhi	r3, r2
    b90c: f021 4100    	bic	r1, r1, #0x80000000
    b910: 461a         	mov	r2, r3
    b912: 4299         	cmp	r1, r3
    b914: bf88         	it	hi
    b916: 460a         	movhi	r2, r1
    b918: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b91c: 6d81         	ldr	r1, [r0, #0x58]
    b91e: bf88         	it	hi
    b920: 461a         	movhi	r2, r3
    b922: f021 4100    	bic	r1, r1, #0x80000000
    b926: 4613         	mov	r3, r2
    b928: 4291         	cmp	r1, r2
    b92a: bf88         	it	hi
    b92c: 460b         	movhi	r3, r1
    b92e: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b932: 6dc1         	ldr	r1, [r0, #0x5c]
    b934: bf88         	it	hi
    b936: 4613         	movhi	r3, r2
    b938: f021 4100    	bic	r1, r1, #0x80000000
    b93c: 461a         	mov	r2, r3
    b93e: 4299         	cmp	r1, r3
    b940: bf88         	it	hi
    b942: 460a         	movhi	r2, r1
    b944: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b948: 6e01         	ldr	r1, [r0, #0x60]
    b94a: bf88         	it	hi
    b94c: 461a         	movhi	r2, r3
    b94e: f021 4100    	bic	r1, r1, #0x80000000
    b952: 4613         	mov	r3, r2
    b954: 4291         	cmp	r1, r2
    b956: bf88         	it	hi
    b958: 460b         	movhi	r3, r1
    b95a: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b95e: 6e41         	ldr	r1, [r0, #0x64]
    b960: bf88         	it	hi
    b962: 4613         	movhi	r3, r2
    b964: f021 4100    	bic	r1, r1, #0x80000000
    b968: 461a         	mov	r2, r3
    b96a: 4299         	cmp	r1, r3
    b96c: bf88         	it	hi
    b96e: 460a         	movhi	r2, r1
    b970: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b974: 6e81         	ldr	r1, [r0, #0x68]
    b976: bf88         	it	hi
    b978: 461a         	movhi	r2, r3
    b97a: f021 4100    	bic	r1, r1, #0x80000000
    b97e: 4613         	mov	r3, r2
    b980: 4291         	cmp	r1, r2
    b982: bf88         	it	hi
    b984: 460b         	movhi	r3, r1
    b986: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b98a: 6ec1         	ldr	r1, [r0, #0x6c]
    b98c: bf88         	it	hi
    b98e: 4613         	movhi	r3, r2
    b990: f021 4100    	bic	r1, r1, #0x80000000
    b994: 461a         	mov	r2, r3
    b996: 4299         	cmp	r1, r3
    b998: bf88         	it	hi
    b99a: 460a         	movhi	r2, r1
    b99c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b9a0: 6f01         	ldr	r1, [r0, #0x70]
    b9a2: bf88         	it	hi
    b9a4: 461a         	movhi	r2, r3
    b9a6: f021 4100    	bic	r1, r1, #0x80000000
    b9aa: 4613         	mov	r3, r2
    b9ac: 4291         	cmp	r1, r2
    b9ae: bf88         	it	hi
    b9b0: 460b         	movhi	r3, r1
    b9b2: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b9b6: 6f41         	ldr	r1, [r0, #0x74]
    b9b8: bf88         	it	hi
    b9ba: 4613         	movhi	r3, r2
    b9bc: f021 4100    	bic	r1, r1, #0x80000000
    b9c0: 461a         	mov	r2, r3
    b9c2: 4299         	cmp	r1, r3
    b9c4: bf88         	it	hi
    b9c6: 460a         	movhi	r2, r1
    b9c8: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b9cc: 6f81         	ldr	r1, [r0, #0x78]
    b9ce: bf88         	it	hi
    b9d0: 461a         	movhi	r2, r3
    b9d2: f021 4100    	bic	r1, r1, #0x80000000
    b9d6: 4613         	mov	r3, r2
    b9d8: 4291         	cmp	r1, r2
    b9da: bf88         	it	hi
    b9dc: 460b         	movhi	r3, r1
    b9de: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b9e2: 6fc1         	ldr	r1, [r0, #0x7c]
    b9e4: bf88         	it	hi
    b9e6: 4613         	movhi	r3, r2
    b9e8: f021 4100    	bic	r1, r1, #0x80000000
    b9ec: 461a         	mov	r2, r3
    b9ee: 4299         	cmp	r1, r3
    b9f0: bf88         	it	hi
    b9f2: 460a         	movhi	r2, r1
    b9f4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    b9f8: f8d0 1080    	ldr.w	r1, [r0, #0x80]
    b9fc: bf88         	it	hi
    b9fe: 461a         	movhi	r2, r3
    ba00: f021 4100    	bic	r1, r1, #0x80000000
    ba04: 4613         	mov	r3, r2
    ba06: 4291         	cmp	r1, r2
    ba08: bf88         	it	hi
    ba0a: 460b         	movhi	r3, r1
    ba0c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    ba10: f8d0 1084    	ldr.w	r1, [r0, #0x84]
    ba14: bf88         	it	hi
    ba16: 4613         	movhi	r3, r2
    ba18: f021 4100    	bic	r1, r1, #0x80000000
    ba1c: 461a         	mov	r2, r3
    ba1e: 4299         	cmp	r1, r3
    ba20: bf88         	it	hi
    ba22: 460a         	movhi	r2, r1
    ba24: f1b1 4fff    	cmp.w	r1, #0x7f800000
    ba28: f8d0 1088    	ldr.w	r1, [r0, #0x88]
    ba2c: bf88         	it	hi
    ba2e: 461a         	movhi	r2, r3
    ba30: f021 4100    	bic	r1, r1, #0x80000000
    ba34: 4613         	mov	r3, r2
    ba36: 4291         	cmp	r1, r2
    ba38: bf88         	it	hi
    ba3a: 460b         	movhi	r3, r1
    ba3c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    ba40: f8d0 108c    	ldr.w	r1, [r0, #0x8c]
    ba44: bf88         	it	hi
    ba46: 4613         	movhi	r3, r2
    ba48: f021 4100    	bic	r1, r1, #0x80000000
    ba4c: 461a         	mov	r2, r3
    ba4e: 4299         	cmp	r1, r3
    ba50: bf88         	it	hi
    ba52: 460a         	movhi	r2, r1
    ba54: f1b1 4fff    	cmp.w	r1, #0x7f800000
    ba58: f8d0 1090    	ldr.w	r1, [r0, #0x90]
    ba5c: bf88         	it	hi
    ba5e: 461a         	movhi	r2, r3
    ba60: f021 4100    	bic	r1, r1, #0x80000000
    ba64: 4613         	mov	r3, r2
    ba66: 4291         	cmp	r1, r2
    ba68: bf88         	it	hi
    ba6a: 460b         	movhi	r3, r1
    ba6c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    ba70: f8d0 1094    	ldr.w	r1, [r0, #0x94]
    ba74: bf88         	it	hi
    ba76: 4613         	movhi	r3, r2
    ba78: f021 4100    	bic	r1, r1, #0x80000000
    ba7c: 461a         	mov	r2, r3
    ba7e: 4299         	cmp	r1, r3
    ba80: bf88         	it	hi
    ba82: 460a         	movhi	r2, r1
    ba84: f1b1 4fff    	cmp.w	r1, #0x7f800000
    ba88: f8d0 1098    	ldr.w	r1, [r0, #0x98]
    ba8c: bf88         	it	hi
    ba8e: 461a         	movhi	r2, r3
    ba90: f021 4100    	bic	r1, r1, #0x80000000
    ba94: 4613         	mov	r3, r2
    ba96: 4291         	cmp	r1, r2
    ba98: bf88         	it	hi
    ba9a: 460b         	movhi	r3, r1
    ba9c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    baa0: f8d0 109c    	ldr.w	r1, [r0, #0x9c]
    baa4: bf88         	it	hi
    baa6: 4613         	movhi	r3, r2
    baa8: f021 4100    	bic	r1, r1, #0x80000000
    baac: 461a         	mov	r2, r3
    baae: 4299         	cmp	r1, r3
    bab0: bf88         	it	hi
    bab2: 460a         	movhi	r2, r1
    bab4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bab8: f8d0 10a0    	ldr.w	r1, [r0, #0xa0]
    babc: bf88         	it	hi
    babe: 461a         	movhi	r2, r3
    bac0: f021 4100    	bic	r1, r1, #0x80000000
    bac4: 4613         	mov	r3, r2
    bac6: 4291         	cmp	r1, r2
    bac8: bf88         	it	hi
    baca: 460b         	movhi	r3, r1
    bacc: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bad0: f8d0 10a4    	ldr.w	r1, [r0, #0xa4]
    bad4: bf88         	it	hi
    bad6: 4613         	movhi	r3, r2
    bad8: f021 4100    	bic	r1, r1, #0x80000000
    badc: 461a         	mov	r2, r3
    bade: 4299         	cmp	r1, r3
    bae0: bf88         	it	hi
    bae2: 460a         	movhi	r2, r1
    bae4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bae8: f8d0 10a8    	ldr.w	r1, [r0, #0xa8]
    baec: bf88         	it	hi
    baee: 461a         	movhi	r2, r3
    baf0: f021 4300    	bic	r3, r1, #0x80000000
    baf4: 4694         	mov	r12, r2
    baf6: 4293         	cmp	r3, r2
    baf8: bf88         	it	hi
    bafa: 469c         	movhi	r12, r3
    bafc: f1b3 4fff    	cmp.w	r3, #0x7f800000
    bb00: f8d0 30ac    	ldr.w	r3, [r0, #0xac]
    bb04: f023 4100    	bic	r1, r3, #0x80000000
    bb08: bf88         	it	hi
    bb0a: 4694         	movhi	r12, r2
    bb0c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bb10: f8d0 30b0    	ldr.w	r3, [r0, #0xb0]
    bb14: bf88         	it	hi
    bb16: 2100         	movhi	r1, #0x0
    bb18: f023 4300    	bic	r3, r3, #0x80000000
    bb1c: ee00 ca10    	vmov	s0, r12
    bb20: 460a         	mov	r2, r1
    bb22: 428b         	cmp	r3, r1
    bb24: bf88         	it	hi
    bb26: 461a         	movhi	r2, r3
    bb28: f1b3 4fff    	cmp.w	r3, #0x7f800000
    bb2c: f8d0 30b4    	ldr.w	r3, [r0, #0xb4]
    bb30: f000 b802    	b.w	0xbb38 <orange_dsp::physical_residual_norm+0x408> @ imm = #0x4
    bb34: 0a d7 23 3c  	.word	0x3c23d70a
    bb38: bf88         	it	hi
    bb3a: 460a         	movhi	r2, r1
    bb3c: f023 4100    	bic	r1, r3, #0x80000000
    bb40: ee80 0a01    	vdiv.f32	s0, s0, s2
    bb44: 4613         	mov	r3, r2
    bb46: 4291         	cmp	r1, r2
    bb48: bf88         	it	hi
    bb4a: 460b         	movhi	r3, r1
    bb4c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bb50: f8d0 10b8    	ldr.w	r1, [r0, #0xb8]
    bb54: bf88         	it	hi
    bb56: 4613         	movhi	r3, r2
    bb58: f021 4100    	bic	r1, r1, #0x80000000
    bb5c: ed9f 1a44    	vldr	s2, [pc, #272]          @ 0xbc70 <orange_dsp::physical_residual_norm+0x540>
    bb60: 461a         	mov	r2, r3
    bb62: 4299         	cmp	r1, r3
    bb64: bf88         	it	hi
    bb66: 460a         	movhi	r2, r1
    bb68: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bb6c: f8d0 10bc    	ldr.w	r1, [r0, #0xbc]
    bb70: bf88         	it	hi
    bb72: 461a         	movhi	r2, r3
    bb74: f021 4100    	bic	r1, r1, #0x80000000
    bb78: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    bb7c: 4613         	mov	r3, r2
    bb7e: 4291         	cmp	r1, r2
    bb80: bf88         	it	hi
    bb82: 460b         	movhi	r3, r1
    bb84: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bb88: f8d0 10c0    	ldr.w	r1, [r0, #0xc0]
    bb8c: bf88         	it	hi
    bb8e: 4613         	movhi	r3, r2
    bb90: f021 4100    	bic	r1, r1, #0x80000000
    bb94: 461a         	mov	r2, r3
    bb96: 4299         	cmp	r1, r3
    bb98: bf88         	it	hi
    bb9a: 460a         	movhi	r2, r1
    bb9c: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bba0: f8d0 10c4    	ldr.w	r1, [r0, #0xc4]
    bba4: bf88         	it	hi
    bba6: 461a         	movhi	r2, r3
    bba8: f021 4300    	bic	r3, r1, #0x80000000
    bbac: 4694         	mov	r12, r2
    bbae: 4293         	cmp	r3, r2
    bbb0: bf88         	it	hi
    bbb2: 469c         	movhi	r12, r3
    bbb4: f1b3 4fff    	cmp.w	r3, #0x7f800000
    bbb8: f8d0 30c8    	ldr.w	r3, [r0, #0xc8]
    bbbc: f023 4100    	bic	r1, r3, #0x80000000
    bbc0: bf88         	it	hi
    bbc2: 4694         	movhi	r12, r2
    bbc4: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bbc8: f8d0 30cc    	ldr.w	r3, [r0, #0xcc]
    bbcc: bf88         	it	hi
    bbce: 2100         	movhi	r1, #0x0
    bbd0: f023 4300    	bic	r3, r3, #0x80000000
    bbd4: ee01 ca10    	vmov	s2, r12
    bbd8: 460a         	mov	r2, r1
    bbda: 428b         	cmp	r3, r1
    bbdc: bf88         	it	hi
    bbde: 461a         	movhi	r2, r3
    bbe0: f1b3 4fff    	cmp.w	r3, #0x7f800000
    bbe4: f8d0 30d0    	ldr.w	r3, [r0, #0xd0]
    bbe8: bf88         	it	hi
    bbea: 460a         	movhi	r2, r1
    bbec: f023 4100    	bic	r1, r3, #0x80000000
    bbf0: ee81 1a02    	vdiv.f32	s2, s2, s4
    bbf4: 4613         	mov	r3, r2
    bbf6: 4291         	cmp	r1, r2
    bbf8: bf88         	it	hi
    bbfa: 460b         	movhi	r3, r1
    bbfc: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bc00: f8d0 10d4    	ldr.w	r1, [r0, #0xd4]
    bc04: bf88         	it	hi
    bc06: 4613         	movhi	r3, r2
    bc08: f021 4100    	bic	r1, r1, #0x80000000
    bc0c: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    bc10: 461a         	mov	r2, r3
    bc12: 4299         	cmp	r1, r3
    bc14: bf88         	it	hi
    bc16: 460a         	movhi	r2, r1
    bc18: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bc1c: ed9f 1a15    	vldr	s2, [pc, #84]           @ 0xbc74 <orange_dsp::physical_residual_norm+0x544>
    bc20: bf88         	it	hi
    bc22: 461a         	movhi	r2, r3
    bc24: f8d0 10d8    	ldr.w	r1, [r0, #0xd8]
    bc28: ee02 2a10    	vmov	s4, r2
    bc2c: f021 4100    	bic	r1, r1, #0x80000000
    bc30: f1b1 4fff    	cmp.w	r1, #0x7f800000
    bc34: bf88         	it	hi
    bc36: 2100         	movhi	r1, #0x0
    bc38: ee82 1a01    	vdiv.f32	s2, s4, s2
    bc3c: f8d0 00dc    	ldr.w	r0, [r0, #0xdc]
    bc40: ee02 1a10    	vmov	s4, r1
    bc44: f020 4000    	bic	r0, r0, #0x80000000
    bc48: f1b0 4fff    	cmp.w	r0, #0x7f800000
    bc4c: bf88         	it	hi
    bc4e: 2000         	movhi	r0, #0x0
    bc50: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    bc54: ee82 1a03    	vdiv.f32	s2, s4, s6
    bc58: ee02 0a10    	vmov	s4, r0
    bc5c: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    bc60: ed9f 1a05    	vldr	s2, [pc, #20]           @ 0xbc78 <orange_dsp::physical_residual_norm+0x548>
    bc64: ee82 1a01    	vdiv.f32	s2, s4, s2
    bc68: fe80 0a01    	vmaxnm.f32	s0, s0, s2
    bc6c: bd80         	pop	{r7, pc}
    bc6e: bf00         	nop
    bc70: 00 00 00 00  	.word	0x00000000
    bc74: 00 24 74 4b  	.word	0x4b742400
    bc78: 00 24 f4 4a  	.word	0x4af42400
    bc7c: d4 d4 d4 d4  	.word	0xd4d4d4d4

0000bc80 <orange_dsp::generated_model::recover_physical_delta>:
    bc80: b580         	push	{r7, lr}
    bc82: 466f         	mov	r7, sp
    bc84: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    bc88: ed9f 0afb    	vldr	s0, [pc, #1004]         @ 0xc078 <orange_dsp::generated_model::recover_physical_delta+0x3f8>
    bc8c: edd1 1a00    	vldr	s3, [r1]
    bc90: ed9f 2afa    	vldr	s4, [pc, #1000]         @ 0xc07c <orange_dsp::generated_model::recover_physical_delta+0x3fc>
    bc94: ed91 7a02    	vldr	s14, [r1, #8]
    bc98: eddf 3af9    	vldr	s7, [pc, #996]          @ 0xc080 <orange_dsp::generated_model::recover_physical_delta+0x400>
    bc9c: eeb0 1a40    	vmov.f32	s2, s0
    bca0: ee01 1a82    	vmla.f32	s2, s3, s4
    bca4: eeb0 2a40    	vmov.f32	s4, s0
    bca8: ee07 2a23    	vmla.f32	s4, s14, s7
    bcac: ed91 7a09    	vldr	s14, [r1, #36]
    bcb0: eddf 3af4    	vldr	s7, [pc, #976]          @ 0xc084 <orange_dsp::generated_model::recover_physical_delta+0x404>
    bcb4: eeb0 4a40    	vmov.f32	s8, s0
    bcb8: ee07 4a23    	vmla.f32	s8, s14, s7
    bcbc: ed91 7a0a    	vldr	s14, [r1, #40]
    bcc0: eddf 3af1    	vldr	s7, [pc, #964]          @ 0xc088 <orange_dsp::generated_model::recover_physical_delta+0x408>
    bcc4: eeb0 5a40    	vmov.f32	s10, s0
    bcc8: ee07 5a23    	vmla.f32	s10, s14, s7
    bccc: eddf 3aef    	vldr	s7, [pc, #956]          @ 0xc08c <orange_dsp::generated_model::recover_physical_delta+0x40c>
    bcd0: eeb0 6a40    	vmov.f32	s12, s0
    bcd4: edd1 5a01    	vldr	s11, [r1, #4]
    bcd8: ee07 6a63    	vmls.f32	s12, s14, s7
    bcdc: ed9f 7aec    	vldr	s14, [pc, #944]         @ 0xc090 <orange_dsp::generated_model::recover_physical_delta+0x410>
    bce0: eeb0 3a40    	vmov.f32	s6, s0
    bce4: ee05 3a87    	vmla.f32	s6, s11, s14
    bce8: ed91 7a0b    	vldr	s14, [r1, #44]
    bcec: eddf 4ae9    	vldr	s9, [pc, #932]          @ 0xc094 <orange_dsp::generated_model::recover_physical_delta+0x414>
    bcf0: ee07 5a63    	vmls.f32	s10, s14, s7
    bcf4: eddf 3ae8    	vldr	s7, [pc, #928]          @ 0xc098 <orange_dsp::generated_model::recover_physical_delta+0x418>
    bcf8: edd1 2a18    	vldr	s5, [r1, #96]
    bcfc: ee07 6a23    	vmla.f32	s12, s14, s7
    bd00: eddf 3ae6    	vldr	s7, [pc, #920]          @ 0xc09c <orange_dsp::generated_model::recover_physical_delta+0x41c>
    bd04: eeb0 7a40    	vmov.f32	s14, s0
    bd08: ee01 7ae4    	vmls.f32	s14, s3, s9
    bd0c: eef0 0a40    	vmov.f32	s1, s0
    bd10: ee02 1ae4    	vmls.f32	s2, s5, s9
    bd14: edd1 6a17    	vldr	s13, [r1, #92]
    bd18: ee45 0ae3    	vmls.f32	s1, s11, s7
    bd1c: edd1 1a0f    	vldr	s3, [r1, #60]
    bd20: eddf 4adf    	vldr	s9, [pc, #892]          @ 0xc0a0 <orange_dsp::generated_model::recover_physical_delta+0x420>
    bd24: ee06 3ae3    	vmls.f32	s6, s13, s7
    bd28: eef0 3a40    	vmov.f32	s7, s0
    bd2c: ee41 3aa4    	vmla.f32	s7, s3, s9
    bd30: eddf 4adc    	vldr	s9, [pc, #880]          @ 0xc0a4 <orange_dsp::generated_model::recover_physical_delta+0x424>
    bd34: ed91 ca21    	vldr	s24, [r1, #132]
    bd38: eddf 1adb    	vldr	s3, [pc, #876]          @ 0xc0a8 <orange_dsp::generated_model::recover_physical_delta+0x428>
    bd3c: ee02 7aa4    	vmla.f32	s14, s5, s9
    bd40: edd1 4a1c    	vldr	s9, [r1, #112]
    bd44: eddf 5ad9    	vldr	s11, [pc, #868]         @ 0xc0ac <orange_dsp::generated_model::recover_physical_delta+0x42c>
    bd48: ee46 0aa1    	vmla.f32	s1, s13, s3
    bd4c: eef0 1a40    	vmov.f32	s3, s0
    bd50: ee44 1aa5    	vmla.f32	s3, s9, s11
    bd54: edd1 4a1d    	vldr	s9, [r1, #116]
    bd58: eddf 5ad5    	vldr	s11, [pc, #852]         @ 0xc0b0 <orange_dsp::generated_model::recover_physical_delta+0x430>
    bd5c: eef0 2a40    	vmov.f32	s5, s0
    bd60: ee44 2aa5    	vmla.f32	s5, s9, s11
    bd64: eddf 5ad3    	vldr	s11, [pc, #844]         @ 0xc0b4 <orange_dsp::generated_model::recover_physical_delta+0x434>
    bd68: eef0 4a40    	vmov.f32	s9, s0
    bd6c: ee4c 4a25    	vmla.f32	s9, s24, s11
    bd70: eddf 6ad1    	vldr	s13, [pc, #836]         @ 0xc0b8 <orange_dsp::generated_model::recover_physical_delta+0x438>
    bd74: ed91 da22    	vldr	s26, [r1, #136]
    bd78: ed92 ba01    	vldr	s22, [r2, #4]
    bd7c: eddf 7acf    	vldr	s15, [pc, #828]         @ 0xc0bc <orange_dsp::generated_model::recover_physical_delta+0x43c>
    bd80: ee4d 4a66    	vmls.f32	s9, s26, s13
    bd84: ed91 fa23    	vldr	s30, [r1, #140]
    bd88: ee0b 1a27    	vmla.f32	s2, s22, s15
    bd8c: eddf 7acc    	vldr	s15, [pc, #816]         @ 0xc0c0 <orange_dsp::generated_model::recover_physical_delta+0x440>
    bd90: ed91 ea24    	vldr	s28, [r1, #144]
    bd94: ed9f 8acb    	vldr	s16, [pc, #812]         @ 0xc0c4 <orange_dsp::generated_model::recover_physical_delta+0x444>
    bd98: ee4f 4a67    	vmls.f32	s9, s30, s15
    bd9c: eef0 5a40    	vmov.f32	s11, s0
    bda0: ee4c 5a66    	vmls.f32	s11, s24, s13
    bda4: edd1 8a25    	vldr	s17, [r1, #148]
    bda8: ed9f 9ac7    	vldr	s18, [pc, #796]         @ 0xc0c8 <orange_dsp::generated_model::recover_physical_delta+0x448>
    bdac: edd1 9a26    	vldr	s19, [r1, #152]
    bdb0: ee4e 4a48    	vmls.f32	s9, s28, s16
    bdb4: eddf 6ac5    	vldr	s13, [pc, #788]         @ 0xc0cc <orange_dsp::generated_model::recover_physical_delta+0x44c>
    bdb8: ee4d 5a26    	vmla.f32	s11, s26, s13
    bdbc: eef0 6a40    	vmov.f32	s13, s0
    bdc0: ee4c 6a67    	vmls.f32	s13, s24, s15
    bdc4: ed9f aac2    	vldr	s20, [pc, #776]         @ 0xc0d0 <orange_dsp::generated_model::recover_physical_delta+0x450>
    bdc8: ee48 4ac9    	vmls.f32	s9, s17, s18
    bdcc: eddf 7ac1    	vldr	s15, [pc, #772]         @ 0xc0d4 <orange_dsp::generated_model::recover_physical_delta+0x454>
    bdd0: ee4f 5a67    	vmls.f32	s11, s30, s15
    bdd4: eddf aac0    	vldr	s21, [pc, #768]         @ 0xc0d8 <orange_dsp::generated_model::recover_physical_delta+0x458>
    bdd8: ee4d 6a67    	vmls.f32	s13, s26, s15
    bddc: eef0 7a40    	vmov.f32	s15, s0
    bde0: ee49 4aca    	vmls.f32	s9, s19, s20
    bde4: eddf babd    	vldr	s23, [pc, #756]         @ 0xc0dc <orange_dsp::generated_model::recover_physical_delta+0x45c>
    bde8: ee4c 7a48    	vmls.f32	s15, s24, s16
    bdec: eeb0 8a40    	vmov.f32	s16, s0
    bdf0: ee0c 8a49    	vmls.f32	s16, s24, s18
    bdf4: eeb0 9a40    	vmov.f32	s18, s0
    bdf8: ee0c 9a4a    	vmls.f32	s18, s24, s20
    bdfc: eeb0 aa40    	vmov.f32	s20, s0
    be00: ee0c aa6a    	vmls.f32	s20, s24, s21
    be04: ed91 ca27    	vldr	s24, [r1, #156]
    be08: ee4c 4a6a    	vmls.f32	s9, s24, s21
    be0c: eddf aab4    	vldr	s21, [pc, #720]         @ 0xc0e0 <orange_dsp::generated_model::recover_physical_delta+0x460>
    be10: ee4e 5a6a    	vmls.f32	s11, s28, s21
    be14: ed80 ba04    	vstr	s22, [r0, #16]
    be18: ee4f 6a2b    	vmla.f32	s13, s30, s23
    be1c: eddf bab1    	vldr	s23, [pc, #708]         @ 0xc0e4 <orange_dsp::generated_model::recover_physical_delta+0x464>
    be20: ee4d 7a6a    	vmls.f32	s15, s26, s21
    be24: eddf aab0    	vldr	s21, [pc, #704]         @ 0xc0e8 <orange_dsp::generated_model::recover_physical_delta+0x468>
    be28: ee48 5aea    	vmls.f32	s11, s17, s21
    be2c: ee4e 6a6b    	vmls.f32	s13, s28, s23
    be30: ee0d 8a6a    	vmls.f32	s16, s26, s21
    be34: eddf aaad    	vldr	s21, [pc, #692]         @ 0xc0ec <orange_dsp::generated_model::recover_physical_delta+0x46c>
    be38: ee49 5aea    	vmls.f32	s11, s19, s21
    be3c: ee0d 9a6a    	vmls.f32	s18, s26, s21
    be40: eddf aaab    	vldr	s21, [pc, #684]         @ 0xc0f0 <orange_dsp::generated_model::recover_physical_delta+0x470>
    be44: ee4f 7a6b    	vmls.f32	s15, s30, s23
    be48: ee0d aa6a    	vmls.f32	s20, s26, s21
    be4c: ed9f daa9    	vldr	s26, [pc, #676]         @ 0xc0f4 <orange_dsp::generated_model::recover_physical_delta+0x474>
    be50: ee48 6acd    	vmls.f32	s13, s17, s26
    be54: ee4c 5a6a    	vmls.f32	s11, s24, s21
    be58: eddf aaa7    	vldr	s21, [pc, #668]         @ 0xc0f8 <orange_dsp::generated_model::recover_physical_delta+0x478>
    be5c: ee4e 7a2a    	vmla.f32	s15, s28, s21
    be60: ee0f 8a4d    	vmls.f32	s16, s30, s26
    be64: ed9f daa5    	vldr	s26, [pc, #660]         @ 0xc0fc <orange_dsp::generated_model::recover_physical_delta+0x47c>
    be68: ee49 6acd    	vmls.f32	s13, s19, s26
    be6c: ee0f 9a4d    	vmls.f32	s18, s30, s26
    be70: ed9f daa3    	vldr	s26, [pc, #652]         @ 0xc100 <orange_dsp::generated_model::recover_physical_delta+0x480>
    be74: ee0f aa4d    	vmls.f32	s20, s30, s26
    be78: ed9f faa2    	vldr	s30, [pc, #648]         @ 0xc104 <orange_dsp::generated_model::recover_physical_delta+0x484>
    be7c: ee48 7acf    	vmls.f32	s15, s17, s30
    be80: ee4c 6a4d    	vmls.f32	s13, s24, s26
    be84: ed9f daa0    	vldr	s26, [pc, #640]         @ 0xc108 <orange_dsp::generated_model::recover_physical_delta+0x488>
    be88: ee0e 8a4f    	vmls.f32	s16, s28, s30
    be8c: ed9f fafc    	vldr	s30, [pc, #1008]        @ 0xc280 <orange_dsp::generated_model::recover_physical_delta+0x600>
    be90: ee49 7acd    	vmls.f32	s15, s19, s26
    be94: ee0e 9a4d    	vmls.f32	s18, s28, s26
    be98: ed9f da9c    	vldr	s26, [pc, #624]         @ 0xc10c <orange_dsp::generated_model::recover_physical_delta+0x48c>
    be9c: ee0e aa4d    	vmls.f32	s20, s28, s26
    bea0: ed9f ea9b    	vldr	s28, [pc, #620]         @ 0xc110 <orange_dsp::generated_model::recover_physical_delta+0x490>
    bea4: ee4c 7a4d    	vmls.f32	s15, s24, s26
    bea8: ed9f da9a    	vldr	s26, [pc, #616]         @ 0xc114 <orange_dsp::generated_model::recover_physical_delta+0x494>
    beac: ee08 8a8d    	vmla.f32	s16, s17, s26
    beb0: ed9f da99    	vldr	s26, [pc, #612]         @ 0xc118 <orange_dsp::generated_model::recover_physical_delta+0x498>
    beb4: ee08 9acd    	vmls.f32	s18, s17, s26
    beb8: ee08 aace    	vmls.f32	s20, s17, s28
    bebc: eddf 8aed    	vldr	s17, [pc, #948]         @ 0xc274 <orange_dsp::generated_model::recover_physical_delta+0x5f4>
    bec0: ee09 8acd    	vmls.f32	s16, s19, s26
    bec4: ed9f da95    	vldr	s26, [pc, #596]         @ 0xc11c <orange_dsp::generated_model::recover_physical_delta+0x49c>
    bec8: ee09 9a8d    	vmla.f32	s18, s19, s26
    becc: ed9f da94    	vldr	s26, [pc, #592]         @ 0xc120 <orange_dsp::generated_model::recover_physical_delta+0x4a0>
    bed0: ee09 aacd    	vmls.f32	s20, s19, s26
    bed4: edd2 9a0f    	vldr	s19, [r2, #60]
    bed8: ee0c 8a4e    	vmls.f32	s16, s24, s28
    bedc: ed9f eae3    	vldr	s28, [pc, #908]         @ 0xc26c <orange_dsp::generated_model::recover_physical_delta+0x5ec>
    bee0: ee0c 9a4d    	vmls.f32	s18, s24, s26
    bee4: ed9f dafd    	vldr	s26, [pc, #1012]        @ 0xc2dc <orange_dsp::generated_model::recover_physical_delta+0x65c>
    bee8: ee0c aa0d    	vmla.f32	s20, s24, s26
    beec: ed92 ca05    	vldr	s24, [r2, #20]
    bef0: ed9f dadd    	vldr	s26, [pc, #884]         @ 0xc268 <orange_dsp::generated_model::recover_physical_delta+0x5e8>
    bef4: ed80 ca0e    	vstr	s24, [r0, #56]
    bef8: ee0c 1a0d    	vmla.f32	s2, s24, s26
    befc: ed92 da00    	vldr	s26, [r2]
    bf00: ee0d 3a0e    	vmla.f32	s6, s26, s28
    bf04: ed9f eada    	vldr	s28, [pc, #872]         @ 0xc270 <orange_dsp::generated_model::recover_physical_delta+0x5f0>
    bf08: ee0d 2a0e    	vmla.f32	s4, s26, s28
    bf0c: ed9f eae3    	vldr	s28, [pc, #908]         @ 0xc29c <orange_dsp::generated_model::recover_physical_delta+0x61c>
    bf10: ee4d 0a0e    	vmla.f32	s1, s26, s28
    bf14: ed92 ea04    	vldr	s28, [r2, #16]
    bf18: ed80 da03    	vstr	s26, [r0, #12]
    bf1c: ee0e 4a0f    	vmla.f32	s8, s28, s30
    bf20: ed92 da03    	vldr	s26, [r2, #12]
    bf24: ed9f fad8    	vldr	s30, [pc, #864]         @ 0xc288 <orange_dsp::generated_model::recover_physical_delta+0x608>
    bf28: ee0d 5a0f    	vmla.f32	s10, s26, s30
    bf2c: ed9f fadc    	vldr	s30, [pc, #880]         @ 0xc2a0 <orange_dsp::generated_model::recover_physical_delta+0x620>
    bf30: ee0b 7a0f    	vmla.f32	s14, s22, s30
    bf34: ed9f fad6    	vldr	s30, [pc, #856]         @ 0xc290 <orange_dsp::generated_model::recover_physical_delta+0x610>
    bf38: ed91 ba08    	vldr	s22, [r1, #32]
    bf3c: ee0d 6a0f    	vmla.f32	s12, s26, s30
    bf40: eeb0 fa40    	vmov.f32	s30, s0
    bf44: ed80 da0c    	vstr	s26, [r0, #48]
    bf48: ee0b fa28    	vmla.f32	s30, s22, s17
    bf4c: edd2 8a09    	vldr	s17, [r2, #36]
    bf50: ed9f dacc    	vldr	s26, [pc, #816]         @ 0xc284 <orange_dsp::generated_model::recover_physical_delta+0x604>
    bf54: ed80 ea0d    	vstr	s28, [r0, #52]
    bf58: ee08 4a8d    	vmla.f32	s8, s17, s26
    bf5c: ed9f dad1    	vldr	s26, [pc, #836]         @ 0xc2a4 <orange_dsp::generated_model::recover_physical_delta+0x624>
    bf60: ee0c 7a0d    	vmla.f32	s14, s24, s26
    bf64: ed92 da06    	vldr	s26, [r2, #24]
    bf68: ed9f eacb    	vldr	s28, [pc, #812]         @ 0xc298 <orange_dsp::generated_model::recover_physical_delta+0x618>
    bf6c: ed92 ca0a    	vldr	s24, [r2, #40]
    bf70: ee4d 3a0e    	vmla.f32	s7, s26, s28
    bf74: ed9f eac5    	vldr	s28, [pc, #788]         @ 0xc28c <orange_dsp::generated_model::recover_physical_delta+0x60c>
    bf78: ed80 da10    	vstr	s26, [r0, #64]
    bf7c: ee0c 5a0e    	vmla.f32	s10, s24, s28
    bf80: ed92 da08    	vldr	s26, [r2, #32]
    bf84: ed9f eac9    	vldr	s28, [pc, #804]         @ 0xc2ac <orange_dsp::generated_model::recover_physical_delta+0x62c>
    bf88: ee4d 4a0e    	vmla.f32	s9, s26, s28
    bf8c: ed9f eac9    	vldr	s28, [pc, #804]         @ 0xc2b4 <orange_dsp::generated_model::recover_physical_delta+0x634>
    bf90: ee4d 5a0e    	vmla.f32	s11, s26, s28
    bf94: ed9f eac9    	vldr	s28, [pc, #804]         @ 0xc2bc <orange_dsp::generated_model::recover_physical_delta+0x63c>
    bf98: ee4d 6a0e    	vmla.f32	s13, s26, s28
    bf9c: ed9f eac9    	vldr	s28, [pc, #804]         @ 0xc2c4 <orange_dsp::generated_model::recover_physical_delta+0x644>
    bfa0: ee4d 7a0e    	vmla.f32	s15, s26, s28
    bfa4: ed9f eac9    	vldr	s28, [pc, #804]         @ 0xc2cc <orange_dsp::generated_model::recover_physical_delta+0x64c>
    bfa8: ee0d 8a0e    	vmla.f32	s16, s26, s28
    bfac: ed9f eac9    	vldr	s28, [pc, #804]         @ 0xc2d4 <orange_dsp::generated_model::recover_physical_delta+0x654>
    bfb0: ee0d 9a0e    	vmla.f32	s18, s26, s28
    bfb4: ed9f eaca    	vldr	s28, [pc, #808]         @ 0xc2e0 <orange_dsp::generated_model::recover_physical_delta+0x660>
    bfb8: ee0d aa0e    	vmla.f32	s20, s26, s28
    bfbc: ed80 da12    	vstr	s26, [r0, #72]
    bfc0: ed9f dab9    	vldr	s26, [pc, #740]         @ 0xc2a8 <orange_dsp::generated_model::recover_physical_delta+0x628>
    bfc4: ed80 ca14    	vstr	s24, [r0, #80]
    bfc8: ee49 2a8d    	vmla.f32	s5, s19, s26
    bfcc: ed9f dab8    	vldr	s26, [pc, #736]         @ 0xc2b0 <orange_dsp::generated_model::recover_physical_delta+0x630>
    bfd0: ee48 4a8d    	vmla.f32	s9, s17, s26
    bfd4: ed9f dab8    	vldr	s26, [pc, #736]         @ 0xc2b8 <orange_dsp::generated_model::recover_physical_delta+0x638>
    bfd8: ee48 5a8d    	vmla.f32	s11, s17, s26
    bfdc: ed9f dab8    	vldr	s26, [pc, #736]         @ 0xc2c0 <orange_dsp::generated_model::recover_physical_delta+0x640>
    bfe0: ee48 6a8d    	vmla.f32	s13, s17, s26
    bfe4: ed9f dab8    	vldr	s26, [pc, #736]         @ 0xc2c8 <orange_dsp::generated_model::recover_physical_delta+0x648>
    bfe8: ed9f eaaa    	vldr	s28, [pc, #680]         @ 0xc294 <orange_dsp::generated_model::recover_physical_delta+0x614>
    bfec: ee48 7a8d    	vmla.f32	s15, s17, s26
    bff0: ed9f dab7    	vldr	s26, [pc, #732]         @ 0xc2d0 <orange_dsp::generated_model::recover_physical_delta+0x650>
    bff4: ee0c 6a0e    	vmla.f32	s12, s24, s28
    bff8: ee08 8a8d    	vmla.f32	s16, s17, s26
    bffc: ed91 da2c    	vldr	s26, [r1, #176]
    c000: ed9f ea9d    	vldr	s28, [pc, #628]         @ 0xc278 <orange_dsp::generated_model::recover_physical_delta+0x5f8>
    c004: edc0 9a1e    	vstr	s19, [r0, #120]
    c008: ee0d fa4e    	vmls.f32	s30, s26, s28
    c00c: ed9f cab2    	vldr	s24, [pc, #712]         @ 0xc2d8 <orange_dsp::generated_model::recover_physical_delta+0x658>
    c010: ee08 9a8c    	vmla.f32	s18, s17, s24
    c014: ed91 ca2d    	vldr	s24, [r1, #180]
    c018: eddf 9ab2    	vldr	s19, [pc, #712]         @ 0xc2e4 <orange_dsp::generated_model::recover_physical_delta+0x664>
    c01c: edc0 8a13    	vstr	s17, [r0, #76]
    c020: ee0c fa4e    	vmls.f32	s30, s24, s28
    c024: ed80 1a00    	vstr	s2, [r0]
    c028: ee08 aaa9    	vmla.f32	s20, s17, s19
    c02c: ed92 1a0b    	vldr	s2, [r2, #44]
    c030: eddf 8a92    	vldr	s17, [pc, #584]         @ 0xc27c <orange_dsp::generated_model::recover_physical_delta+0x5fc>
    c034: ed80 2a02    	vstr	s4, [r0, #8]
    c038: ee01 fa28    	vmla.f32	s30, s2, s17
    c03c: edd1 8a29    	vldr	s17, [r1, #164]
    c040: ee30 2a4d    	vsub.f32	s4, s0, s26
    c044: eddf 9aa8    	vldr	s19, [pc, #672]         @ 0xc2e8 <orange_dsp::generated_model::recover_physical_delta+0x668>
    c048: ed80 2a06    	vstr	s4, [r0, #24]
    c04c: eeb0 2a40    	vmov.f32	s4, s0
    c050: ee08 2aa9    	vmla.f32	s4, s17, s19
    c054: ed80 3a01    	vstr	s6, [r0, #4]
    c058: ee30 3a4c    	vsub.f32	s6, s0, s24
    c05c: ed80 fa08    	vstr	s30, [r0, #32]
    c060: ed80 3a07    	vstr	s6, [r0, #28]
    c064: ed92 3a11    	vldr	s6, [r2, #68]
    c068: ed9f faa0    	vldr	s30, [pc, #640]         @ 0xc2ec <orange_dsp::generated_model::recover_physical_delta+0x66c>
    c06c: ed80 3a20    	vstr	s6, [r0, #128]
    c070: ee03 2a0f    	vmla.f32	s4, s6, s30
    c074: f000 b856    	b.w	0xc124 <orange_dsp::generated_model::recover_physical_delta+0x4a4> @ imm = #0xac
    c078: 00 00 00 00  	.word	0x00000000
    c07c: 16 f5 49 c0  	.word	0xc049f516
    c080: 3e e5 93 c3  	.word	0xc393e53e
    c084: c7 c8 49 c0  	.word	0xc049c8c7
    c088: 62 67 49 c0  	.word	0xc0496762
    c08c: 61 54 c4 3d  	.word	0x3dc45461
    c090: 11 ec 49 c0  	.word	0xc049ec11
    c094: cb de 36 3d  	.word	0x3d36decb
    c098: 8b b9 f3 c1  	.word	0xc1f3b98b
    c09c: 21 53 1b 40  	.word	0x401b5321
    c0a0: db f4 49 c0  	.word	0xc049f4db
    c0a4: be 7b 0d c3  	.word	0xc30d7bbe
    c0a8: d1 76 90 c4  	.word	0xc49076d1
    c0ac: 00 00 5c c3  	.word	0xc35c0000
    c0b0: f8 81 a1 be  	.word	0xbea181f8
    c0b4: 96 5a 75 c4  	.word	0xc4755a96
    c0b8: ea c4 0d 43  	.word	0x430dc4ea
    c0bc: 9d eb 7f 3f  	.word	0x3f7feb9d
    c0c0: d4 56 75 44  	.word	0x447556d4
    c0c4: 3a d9 0d 43  	.word	0x430dd93a
    c0c8: 7a 31 0c 43  	.word	0x430c317a
    c0cc: dc c5 1a c6  	.word	0xc61ac5dc
    c0d0: ca e6 43 44  	.word	0x4443e6ca
    c0d4: 79 37 0e 43  	.word	0x430e3779
    c0d8: 7e 76 03 3f  	.word	0x3f03767e
    c0dc: 15 1d 76 c4  	.word	0xc4761d15
    c0e0: 7b c6 19 46  	.word	0x4619c67b
    c0e4: da 4b 0e 43  	.word	0x430e4bda
    c0e8: 6d fb 17 46  	.word	0x4617fb6d
    c0ec: 82 54 e5 42  	.word	0x42e55482
    c0f0: 1d f0 b1 40  	.word	0x40b1f01d
    c0f4: c3 a2 0c 43  	.word	0x430ca2c3
    c0f8: 95 dc 19 c6  	.word	0xc619dc95
    c0fc: 17 85 44 44  	.word	0x44448517
    c100: b9 e0 03 3f  	.word	0x3f03e0b9
    c104: f2 10 18 46  	.word	0x461810f2
    c108: 64 71 e5 42  	.word	0x42e57164
    c10c: 20 ce b0 40  	.word	0x40b0ce20
    c110: 51 be ae 40  	.word	0x40aebe51
    c114: 1a 92 18 c6  	.word	0xc618921a
    c118: f9 c3 e2 42  	.word	0x42e2c3f9
    c11c: 3a d0 c9 c6  	.word	0xc6c9d03a
    c120: ce 61 66 41  	.word	0x416661ce
    c124: ed80 4a09    	vstr	s8, [r0, #36]
    c128: ed92 3a12    	vldr	s6, [r2, #72]
    c12c: ed9f 4a70    	vldr	s8, [pc, #448]          @ 0xc2f0 <orange_dsp::generated_model::recover_physical_delta+0x670>
    c130: ed80 5a0a    	vstr	s10, [r0, #40]
    c134: ed9f 5a6f    	vldr	s10, [pc, #444]         @ 0xc2f4 <orange_dsp::generated_model::recover_physical_delta+0x674>
    c138: ee03 2a04    	vmla.f32	s4, s6, s8
    c13c: ed91 4a2a    	vldr	s8, [r1, #168]
    c140: ed80 3a28    	vstr	s6, [r0, #160]
    c144: eeb0 3a40    	vmov.f32	s6, s0
    c148: ed80 6a0b    	vstr	s12, [r0, #44]
    c14c: ee04 3a05    	vmla.f32	s6, s8, s10
    c150: edc0 0a17    	vstr	s1, [r0, #92]
    c154: ed91 4a19    	vldr	s8, [r1, #100]
    c158: ed91 5a06    	vldr	s10, [r1, #24]
    c15c: ed91 6a07    	vldr	s12, [r1, #28]
    c160: edd1 0a2b    	vldr	s1, [r1, #172]
    c164: ee30 4a44    	vsub.f32	s8, s0, s8
    c168: ee30 5a45    	vsub.f32	s10, s0, s10
    c16c: ed80 7a18    	vstr	s14, [r0, #96]
    c170: ee30 6a46    	vsub.f32	s12, s0, s12
    c174: ed92 7a10    	vldr	s14, [r2, #64]
    c178: ee30 0a60    	vsub.f32	s0, s0, s1
    c17c: edc0 3a0f    	vstr	s7, [r0, #60]
    c180: ed80 0a19    	vstr	s0, [r0, #100]
    c184: ee37 0a21    	vadd.f32	s0, s14, s3
    c188: ed80 0a1c    	vstr	s0, [r0, #112]
    c18c: ee2b 0a0e    	vmul.f32	s0, s22, s28
    c190: eddf 3a59    	vldr	s7, [pc, #356]          @ 0xc2f8 <orange_dsp::generated_model::recover_physical_delta+0x678>
    c194: ed80 7a1f    	vstr	s14, [r0, #124]
    c198: ee07 3a23    	vmla.f32	s6, s14, s7
    c19c: ed9f 7a57    	vldr	s14, [pc, #348]         @ 0xc2fc <orange_dsp::generated_model::recover_physical_delta+0x67c>
    c1a0: ee00 4a87    	vmla.f32	s8, s1, s14
    c1a4: eddf 0a57    	vldr	s1, [pc, #348]          @ 0xc304 <orange_dsp::generated_model::recover_physical_delta+0x684>
    c1a8: ee35 5a40    	vsub.f32	s10, s10, s0
    c1ac: edd2 1a0d    	vldr	s3, [r2, #52]
    c1b0: ee36 0a40    	vsub.f32	s0, s12, s0
    c1b4: ed9f 6a52    	vldr	s12, [pc, #328]         @ 0xc300 <orange_dsp::generated_model::recover_physical_delta+0x680>
    c1b8: ee0d 5a06    	vmla.f32	s10, s26, s12
    c1bc: ed80 1a15    	vstr	s2, [r0, #84]
    c1c0: ee0d 0a60    	vmls.f32	s0, s26, s1
    c1c4: ed80 2a29    	vstr	s4, [r0, #164]
    c1c8: ee01 4a87    	vmla.f32	s8, s3, s14
    c1cc: edc0 2a1d    	vstr	s5, [r0, #116]
    c1d0: ee0c 5a60    	vmls.f32	s10, s24, s1
    c1d4: edc0 4a21    	vstr	s9, [r0, #132]
    c1d8: ee0c 0a06    	vmla.f32	s0, s24, s12
    c1dc: ed9f 6a4a    	vldr	s12, [pc, #296]         @ 0xc308 <orange_dsp::generated_model::recover_physical_delta+0x688>
    c1e0: ee21 1a06    	vmul.f32	s2, s2, s12
    c1e4: edc0 5a22    	vstr	s11, [r0, #136]
    c1e8: edc0 6a23    	vstr	s13, [r0, #140]
    c1ec: 6891         	ldr	r1, [r2, #0x8]
    c1ee: edc0 1a1a    	vstr	s3, [r0, #104]
    c1f2: edc0 7a24    	vstr	s15, [r0, #144]
    c1f6: ee35 2a41    	vsub.f32	s4, s10, s2
    c1fa: ed80 8a25    	vstr	s16, [r0, #148]
    c1fe: ee30 0a41    	vsub.f32	s0, s0, s2
    c202: ed80 9a26    	vstr	s18, [r0, #152]
    c206: ed80 aa27    	vstr	s20, [r0, #156]
    c20a: ed80 3a2a    	vstr	s6, [r0, #168]
    c20e: ed80 4a2b    	vstr	s8, [r0, #172]
    c212: ed80 2a2c    	vstr	s4, [r0, #176]
    c216: ed80 0a2d    	vstr	s0, [r0, #180]
    c21a: 6141         	str	r1, [r0, #0x14]
    c21c: 69d1         	ldr	r1, [r2, #0x1c]
    c21e: 6441         	str	r1, [r0, #0x44]
    c220: 6b11         	ldr	r1, [r2, #0x30]
    c222: 6581         	str	r1, [r0, #0x58]
    c224: 6b91         	ldr	r1, [r2, #0x38]
    c226: 66c1         	str	r1, [r0, #0x6c]
    c228: 6cd1         	ldr	r1, [r2, #0x4c]
    c22a: f8c0 10b8    	str.w	r1, [r0, #0xb8]
    c22e: 6d11         	ldr	r1, [r2, #0x50]
    c230: f8c0 10bc    	str.w	r1, [r0, #0xbc]
    c234: 6d51         	ldr	r1, [r2, #0x54]
    c236: f8c0 10c0    	str.w	r1, [r0, #0xc0]
    c23a: 6d91         	ldr	r1, [r2, #0x58]
    c23c: f8c0 10c4    	str.w	r1, [r0, #0xc4]
    c240: 6dd1         	ldr	r1, [r2, #0x5c]
    c242: f8c0 10c8    	str.w	r1, [r0, #0xc8]
    c246: 6e11         	ldr	r1, [r2, #0x60]
    c248: f8c0 10cc    	str.w	r1, [r0, #0xcc]
    c24c: 6e51         	ldr	r1, [r2, #0x64]
    c24e: f8c0 10d0    	str.w	r1, [r0, #0xd0]
    c252: 6e91         	ldr	r1, [r2, #0x68]
    c254: f8c0 10d4    	str.w	r1, [r0, #0xd4]
    c258: e9d2 121b    	ldrd	r1, r2, [r2, #108]
    c25c: e9c0 1236    	strd	r1, r2, [r0, #216]
    c260: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    c264: bd80         	pop	{r7, pc}
    c266: bf00         	nop
    c268: d7 6b 9e 39  	.word	0x399e6bd7
    c26c: 30 e0 7f 3f  	.word	0x3f7fe030
    c270: ac e3 80 3d  	.word	0x3d80e3ac
    c274: 56 f6 49 c0  	.word	0xc049f656
    c278: 24 68 16 39  	.word	0x39166824
    c27c: 34 ed 7f 3f  	.word	0x3f7fed34
    c280: 78 b3 7f 3f  	.word	0x3f7fb378
    c284: 9f 0e 99 3a  	.word	0x3a990e9f
    c288: 0c 38 7f 3f  	.word	0x3f7f380c
    c28c: 7b f4 47 3b  	.word	0x3b47f47b
    c290: f3 c9 f8 3c  	.word	0x3cf8c9f3
    c294: b1 39 78 3f  	.word	0x3f7839b1
    c298: 57 71 a5 39  	.word	0x39a57157
    c29c: d6 d3 44 3f  	.word	0x3f44d3d6
    c2a0: b4 bb 67 3c  	.word	0x3c67bbb4
    c2a4: 9e 22 75 3f  	.word	0x3f75229e
    c2a8: b7 f0 2f 3a  	.word	0x3a2ff0b7
    c2ac: f5 4f f2 3b  	.word	0x3bf24ff5
    c2b0: 0b 3e 7b 3f  	.word	0x3f7b3e0b
    c2b4: d3 fc a3 3d  	.word	0x3da3fcd3
    c2b8: f2 2b 11 3e  	.word	0x3e112bf2
    c2bc: c3 13 f3 3b  	.word	0x3bf313c3
    c2c0: 32 3a 7b 3f  	.word	0x3f7b3a32
    c2c4: 93 f1 a2 3d  	.word	0x3da2f193
    c2c8: bf 40 11 3e  	.word	0x3e1140bf
    c2cc: 25 0b a1 3d  	.word	0x3da10b25
    c2d0: d3 8e 0f 3e  	.word	0x3e0f8ed3
    c2d4: f1 51 54 3e  	.word	0x3e5451f1
    c2d8: 69 9a 48 3f  	.word	0x3f489a69
    c2dc: c4 c1 8a c2  	.word	0xc28ac1c4
    c2e0: b7 c1 7f 3f  	.word	0x3f7fc1b7
    c2e4: 33 9e 06 3a  	.word	0x3a069e33
    c2e8: a1 e3 fb c1  	.word	0xc1fbe3a1
    c2ec: ec 5a 7f 3f  	.word	0x3f7f5aec
    c2f0: fd 13 a5 3a  	.word	0x3aa513fd
    c2f4: ae 5d 7c bf  	.word	0xbf7c5dae
    c2f8: 97 94 68 3c  	.word	0x3c689497
    c2fc: 24 7b b2 37  	.word	0x37b27b24
    c300: dd 90 68 38  	.word	0x386890dd
    c304: 2a 06 e0 31  	.word	0x31e0062a
    c308: 72 98 3e b8  	.word	0xb83e9872
    c30c: d4 d4 d4 d4  	.word	0xd4d4d4d4

0000c310 <orange_dsp::generated_condensed::origin>:
    c310: b580         	push	{r7, lr}
    c312: 466f         	mov	r7, sp
    c314: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    c318: b084         	sub	sp, #0x10
    c31a: ed91 1a01    	vldr	s2, [r1, #4]
    c31e: ed91 2a00    	vldr	s4, [r1]
    c322: eeb7 8ac1    	vcvt.f64.f32	d8, s2
    c326: ed91 3a02    	vldr	s6, [r1, #8]
    c32a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xc690 <orange_dsp::generated_condensed::origin+0x380>
    c32e: eeb7 dac3    	vcvt.f64.f32	d13, s6
    c332: ed91 3a03    	vldr	s6, [r1, #12]
    c336: ee28 4b01    	vmul.f64	d4, d8, d1
    c33a: eeb7 1ac2    	vcvt.f64.f32	d1, s4
    c33e: edd1 0a0c    	vldr	s1, [r1, #48]
    c342: ed9f 2bd5    	vldr	d2, [pc, #852]          @ 0xc698 <orange_dsp::generated_condensed::origin+0x388>
    c346: eeb7 aac3    	vcvt.f64.f32	d10, s6
    c34a: ee01 4b02    	vmla.f64	d4, d1, d2
    c34e: eeb7 fae0    	vcvt.f64.f32	d15, s1
    c352: edd1 0a0d    	vldr	s1, [r1, #52]
    c356: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xc6a8 <orange_dsp::generated_condensed::origin+0x398>
    c35a: ee2d 2b01    	vmul.f64	d2, d13, d1
    c35e: ed9f 1bd4    	vldr	d1, [pc, #848]          @ 0xc6b0 <orange_dsp::generated_condensed::origin+0x3a0>
    c362: ee0a 2b01    	vmla.f64	d2, d10, d1
    c366: ed91 1a04    	vldr	s2, [r1, #16]
    c36a: eeb7 cac1    	vcvt.f64.f32	d12, s2
    c36e: ed9f 1bd2    	vldr	d1, [pc, #840]          @ 0xc6b8 <orange_dsp::generated_condensed::origin+0x3a8>
    c372: ee0c 2b01    	vmla.f64	d2, d12, d1
    c376: ed91 1a05    	vldr	s2, [r1, #20]
    c37a: eeb7 eac1    	vcvt.f64.f32	d14, s2
    c37e: ed9f 1bd0    	vldr	d1, [pc, #832]          @ 0xc6c0 <orange_dsp::generated_condensed::origin+0x3b0>
    c382: ee0e 2b01    	vmla.f64	d2, d14, d1
    c386: ed91 1a06    	vldr	s2, [r1, #24]
    c38a: eeb7 9ac1    	vcvt.f64.f32	d9, s2
    c38e: ed9f 1bd0    	vldr	d1, [pc, #832]          @ 0xc6d0 <orange_dsp::generated_condensed::origin+0x3c0>
    c392: ee29 3b01    	vmul.f64	d3, d9, d1
    c396: ed91 1a07    	vldr	s2, [r1, #28]
    c39a: eeb7 bac1    	vcvt.f64.f32	d11, s2
    c39e: ed9f 1bce    	vldr	d1, [pc, #824]          @ 0xc6d8 <orange_dsp::generated_condensed::origin+0x3c8>
    c3a2: ee0b 3b01    	vmla.f64	d3, d11, d1
    c3a6: ed91 1a08    	vldr	s2, [r1, #32]
    c3aa: eeb7 6ac1    	vcvt.f64.f32	d6, s2
    c3ae: ed9f 1bcc    	vldr	d1, [pc, #816]          @ 0xc6e0 <orange_dsp::generated_condensed::origin+0x3d0>
    c3b2: ee06 3b01    	vmla.f64	d3, d6, d1
    c3b6: ed91 1a09    	vldr	s2, [r1, #36]
    c3ba: eeb7 7ac1    	vcvt.f64.f32	d7, s2
    c3be: ed9f 1bca    	vldr	d1, [pc, #808]          @ 0xc6e8 <orange_dsp::generated_condensed::origin+0x3d8>
    c3c2: ee07 3b01    	vmla.f64	d3, d7, d1
    c3c6: ed91 1a0a    	vldr	s2, [r1, #40]
    c3ca: eeb7 5ac1    	vcvt.f64.f32	d5, s2
    c3ce: ed9f 1bc8    	vldr	d1, [pc, #800]          @ 0xc6f0 <orange_dsp::generated_condensed::origin+0x3e0>
    c3d2: ee05 3b01    	vmla.f64	d3, d5, d1
    c3d6: ed91 1a0b    	vldr	s2, [r1, #44]
    c3da: ed8d 4b02    	vstr	d4, [sp, #8]
    c3de: eeb7 4ac1    	vcvt.f64.f32	d4, s2
    c3e2: ed9f 1bc5    	vldr	d1, [pc, #788]          @ 0xc6f8 <orange_dsp::generated_condensed::origin+0x3e8>
    c3e6: ee04 3b01    	vmla.f64	d3, d4, d1
    c3ea: ed9f 1bf5    	vldr	d1, [pc, #980]          @ 0xc7c0 <orange_dsp::generated_condensed::origin+0x4b0>
    c3ee: ee28 8b01    	vmul.f64	d8, d8, d1
    c3f2: ed9f 1bf5    	vldr	d1, [pc, #980]          @ 0xc7c8 <orange_dsp::generated_condensed::origin+0x4b8>
    c3f6: ee0d 8b01    	vmla.f64	d8, d13, d1
    c3fa: eeb7 dae0    	vcvt.f64.f32	d13, s1
    c3fe: edd1 0a0e    	vldr	s1, [r1, #56]
    c402: ed9f 1bbf    	vldr	d1, [pc, #764]          @ 0xc700 <orange_dsp::generated_condensed::origin+0x3f0>
    c406: ee0f 3b01    	vmla.f64	d3, d15, d1
    c40a: ed9f 1bf1    	vldr	d1, [pc, #964]          @ 0xc7d0 <orange_dsp::generated_condensed::origin+0x4c0>
    c40e: ee0a 8b01    	vmla.f64	d8, d10, d1
    c412: ed9f 1bbd    	vldr	d1, [pc, #756]          @ 0xc708 <orange_dsp::generated_condensed::origin+0x3f8>
    c416: ee0d 3b01    	vmla.f64	d3, d13, d1
    c41a: ed9f 1bef    	vldr	d1, [pc, #956]          @ 0xc7d8 <orange_dsp::generated_condensed::origin+0x4c8>
    c41e: ee2e ab01    	vmul.f64	d10, d14, d1
    c422: ed9f 1bef    	vldr	d1, [pc, #956]          @ 0xc7e0 <orange_dsp::generated_condensed::origin+0x4d0>
    c426: ee0c ab01    	vmla.f64	d10, d12, d1
    c42a: ed9f 1bbb    	vldr	d1, [pc, #748]          @ 0xc718 <orange_dsp::generated_condensed::origin+0x408>
    c42e: ee29 cb01    	vmul.f64	d12, d9, d1
    c432: ed9f 1bbb    	vldr	d1, [pc, #748]          @ 0xc720 <orange_dsp::generated_condensed::origin+0x410>
    c436: ee0b cb01    	vmla.f64	d12, d11, d1
    c43a: ed9f 1beb    	vldr	d1, [pc, #940]          @ 0xc7e8 <orange_dsp::generated_condensed::origin+0x4d8>
    c43e: ee09 ab01    	vmla.f64	d10, d9, d1
    c442: ed9f 1beb    	vldr	d1, [pc, #940]          @ 0xc7f0 <orange_dsp::generated_condensed::origin+0x4e0>
    c446: ee0b ab01    	vmla.f64	d10, d11, d1
    c44a: ed9f 1bf9    	vldr	d1, [pc, #996]          @ 0xc830 <orange_dsp::generated_condensed::origin+0x520>
    c44e: ee2b bb01    	vmul.f64	d11, d11, d1
    c452: ed9f 1bf9    	vldr	d1, [pc, #996]          @ 0xc838 <orange_dsp::generated_condensed::origin+0x528>
    c456: ee09 bb01    	vmla.f64	d11, d9, d1
    c45a: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    c45e: edd1 0a10    	vldr	s1, [r1, #64]
    c462: ed9f 1bab    	vldr	d1, [pc, #684]          @ 0xc710 <orange_dsp::generated_condensed::origin+0x400>
    c466: eeb7 eae0    	vcvt.f64.f32	d14, s1
    c46a: edd1 0a16    	vldr	s1, [r1, #88]
    c46e: ee09 3b01    	vmla.f64	d3, d9, d1
    c472: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc728 <orange_dsp::generated_condensed::origin+0x418>
    c476: ee06 cb01    	vmla.f64	d12, d6, d1
    c47a: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc730 <orange_dsp::generated_condensed::origin+0x420>
    c47e: ee07 cb01    	vmla.f64	d12, d7, d1
    c482: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc738 <orange_dsp::generated_condensed::origin+0x428>
    c486: ee05 cb01    	vmla.f64	d12, d5, d1
    c48a: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc740 <orange_dsp::generated_condensed::origin+0x430>
    c48e: ee04 cb01    	vmla.f64	d12, d4, d1
    c492: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc748 <orange_dsp::generated_condensed::origin+0x438>
    c496: ee0f cb01    	vmla.f64	d12, d15, d1
    c49a: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc750 <orange_dsp::generated_condensed::origin+0x440>
    c49e: ee0d cb01    	vmla.f64	d12, d13, d1
    c4a2: ed9f 1bad    	vldr	d1, [pc, #692]          @ 0xc758 <orange_dsp::generated_condensed::origin+0x448>
    c4a6: ee09 cb01    	vmla.f64	d12, d9, d1
    c4aa: ed9f 1bd3    	vldr	d1, [pc, #844]          @ 0xc7f8 <orange_dsp::generated_condensed::origin+0x4e8>
    c4ae: ee06 ab01    	vmla.f64	d10, d6, d1
    c4b2: ed9f 1bd3    	vldr	d1, [pc, #844]          @ 0xc800 <orange_dsp::generated_condensed::origin+0x4f0>
    c4b6: ee07 ab01    	vmla.f64	d10, d7, d1
    c4ba: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xc840 <orange_dsp::generated_condensed::origin+0x530>
    c4be: ee06 bb01    	vmla.f64	d11, d6, d1
    c4c2: ed91 6a0f    	vldr	s12, [r1, #60]
    c4c6: ed9f 1be0    	vldr	d1, [pc, #896]          @ 0xc848 <orange_dsp::generated_condensed::origin+0x538>
    c4ca: ee07 bb01    	vmla.f64	d11, d7, d1
    c4ce: eeb7 7ac6    	vcvt.f64.f32	d7, s12
    c4d2: ed9f 1ba3    	vldr	d1, [pc, #652]          @ 0xc760 <orange_dsp::generated_condensed::origin+0x450>
    c4d6: ee27 6b01    	vmul.f64	d6, d7, d1
    c4da: ed9f 1bcb    	vldr	d1, [pc, #812]          @ 0xc808 <orange_dsp::generated_condensed::origin+0x4f8>
    c4de: ee05 ab01    	vmla.f64	d10, d5, d1
    c4e2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xc850 <orange_dsp::generated_condensed::origin+0x540>
    c4e6: ee05 bb01    	vmla.f64	d11, d5, d1
    c4ea: ed91 5a11    	vldr	s10, [r1, #68]
    c4ee: ed9f 1b9e    	vldr	d1, [pc, #632]          @ 0xc768 <orange_dsp::generated_condensed::origin+0x458>
    c4f2: ee0e 6b01    	vmla.f64	d6, d14, d1
    c4f6: ed9f 1bc6    	vldr	d1, [pc, #792]          @ 0xc810 <orange_dsp::generated_condensed::origin+0x500>
    c4fa: ee04 ab01    	vmla.f64	d10, d4, d1
    c4fe: ed9f 1bd6    	vldr	d1, [pc, #856]          @ 0xc858 <orange_dsp::generated_condensed::origin+0x548>
    c502: ee04 bb01    	vmla.f64	d11, d4, d1
    c506: eeb7 1ac5    	vcvt.f64.f32	d1, s10
    c50a: ed91 5a12    	vldr	s10, [r1, #72]
    c50e: ed9f 4b98    	vldr	d4, [pc, #608]          @ 0xc770 <orange_dsp::generated_condensed::origin+0x460>
    c512: ee01 6b04    	vmla.f64	d6, d1, d4
    c516: ed9f 4bc0    	vldr	d4, [pc, #768]          @ 0xc818 <orange_dsp::generated_condensed::origin+0x508>
    c51a: ee0f ab04    	vmla.f64	d10, d15, d4
    c51e: ed9f 4bd0    	vldr	d4, [pc, #832]          @ 0xc860 <orange_dsp::generated_condensed::origin+0x550>
    c522: ee0f bb04    	vmla.f64	d11, d15, d4
    c526: eeb7 fac5    	vcvt.f64.f32	d15, s10
    c52a: ed9f 4b93    	vldr	d4, [pc, #588]          @ 0xc778 <orange_dsp::generated_condensed::origin+0x468>
    c52e: ee0f 6b04    	vmla.f64	d6, d15, d4
    c532: ed9f 4bbb    	vldr	d4, [pc, #748]          @ 0xc820 <orange_dsp::generated_condensed::origin+0x510>
    c536: ee0d ab04    	vmla.f64	d10, d13, d4
    c53a: ed9f 4bcb    	vldr	d4, [pc, #812]          @ 0xc868 <orange_dsp::generated_condensed::origin+0x558>
    c53e: ee0d bb04    	vmla.f64	d11, d13, d4
    c542: ed9f 4b8f    	vldr	d4, [pc, #572]          @ 0xc780 <orange_dsp::generated_condensed::origin+0x470>
    c546: ed9f 5b90    	vldr	d5, [pc, #576]          @ 0xc788 <orange_dsp::generated_condensed::origin+0x478>
    c54a: ee2f 4b04    	vmul.f64	d4, d15, d4
    c54e: ee01 4b05    	vmla.f64	d4, d1, d5
    c552: ed9f 5bb5    	vldr	d5, [pc, #724]          @ 0xc828 <orange_dsp::generated_condensed::origin+0x518>
    c556: ee09 ab05    	vmla.f64	d10, d9, d5
    c55a: ed9f 5bc5    	vldr	d5, [pc, #788]          @ 0xc870 <orange_dsp::generated_condensed::origin+0x560>
    c55e: ee09 bb05    	vmla.f64	d11, d9, d5
    c562: eeb7 5ae0    	vcvt.f64.f32	d5, s1
    c566: edd1 0a15    	vldr	s1, [r1, #84]
    c56a: ed9f 9b91    	vldr	d9, [pc, #580]          @ 0xc7b0 <orange_dsp::generated_condensed::origin+0x4a0>
    c56e: ee25 5b09    	vmul.f64	d5, d5, d9
    c572: ed9f 9bc1    	vldr	d9, [pc, #772]          @ 0xc878 <orange_dsp::generated_condensed::origin+0x568>
    c576: ee07 bb09    	vmla.f64	d11, d7, d9
    c57a: eeb7 9ae0    	vcvt.f64.f32	d9, s1
    c57e: edd1 0a14    	vldr	s1, [r1, #80]
    c582: ed9f 7b8d    	vldr	d7, [pc, #564]          @ 0xc7b8 <orange_dsp::generated_condensed::origin+0x4a8>
    c586: eeb7 dae0    	vcvt.f64.f32	d13, s1
    c58a: edd1 0a13    	vldr	s1, [r1, #76]
    c58e: ee09 5b07    	vmla.f64	d5, d9, d7
    c592: ed9f 7bbb    	vldr	d7, [pc, #748]          @ 0xc880 <orange_dsp::generated_condensed::origin+0x570>
    c596: ee0e bb07    	vmla.f64	d11, d14, d7
    c59a: eeb7 eae0    	vcvt.f64.f32	d14, s1
    c59e: ed9f 7bba    	vldr	d7, [pc, #744]          @ 0xc888 <orange_dsp::generated_condensed::origin+0x578>
    c5a2: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c5a6: ee21 7b07    	vmul.f64	d7, d1, d7
    c5aa: ed9f 1bb9    	vldr	d1, [pc, #740]          @ 0xc890 <orange_dsp::generated_condensed::origin+0x580>
    c5ae: ee0f 7b01    	vmla.f64	d7, d15, d1
    c5b2: ed9f 1bb9    	vldr	d1, [pc, #740]          @ 0xc898 <orange_dsp::generated_condensed::origin+0x588>
    c5b6: ed9f fbba    	vldr	d15, [pc, #744]         @ 0xc8a0 <orange_dsp::generated_condensed::origin+0x590>
    c5ba: ee2d 1b01    	vmul.f64	d1, d13, d1
    c5be: ee0e 1b0f    	vmla.f64	d1, d14, d15
    c5c2: ed9f fbb9    	vldr	d15, [pc, #740]         @ 0xc8a8 <orange_dsp::generated_condensed::origin+0x598>
    c5c6: ee09 1b0f    	vmla.f64	d1, d9, d15
    c5ca: ed9f 9b35    	vldr	d9, [pc, #212]          @ 0xc6a0 <orange_dsp::generated_condensed::origin+0x390>
    c5ce: ed8d 2b00    	vstr	d2, [sp]
    c5d2: ed9d 2b02    	vldr	d2, [sp, #8]
    c5d6: ee00 2b09    	vmla.f64	d2, d0, d9
    c5da: ed9f 9b3b    	vldr	d9, [pc, #236]          @ 0xc6c8 <orange_dsp::generated_condensed::origin+0x3b8>
    c5de: ee20 0b09    	vmul.f64	d0, d0, d9
    c5e2: ed9f 9b6b    	vldr	d9, [pc, #428]          @ 0xc790 <orange_dsp::generated_condensed::origin+0x480>
    c5e6: ee0e 4b09    	vmla.f64	d4, d14, d9
    c5ea: ed9f 9b6b    	vldr	d9, [pc, #428]          @ 0xc798 <orange_dsp::generated_condensed::origin+0x488>
    c5ee: ee0d 4b09    	vmla.f64	d4, d13, d9
    c5f2: ed9f 9b6b    	vldr	d9, [pc, #428]          @ 0xc7a0 <orange_dsp::generated_condensed::origin+0x490>
    c5f6: ed9f fb6c    	vldr	d15, [pc, #432]         @ 0xc7a8 <orange_dsp::generated_condensed::origin+0x498>
    c5fa: ee2d 9b09    	vmul.f64	d9, d13, d9
    c5fe: ee0e 9b0f    	vmla.f64	d9, d14, d15
    c602: ed9f fbab    	vldr	d15, [pc, #684]         @ 0xc8b0 <orange_dsp::generated_condensed::origin+0x5a0>
    c606: ee2e eb0f    	vmul.f64	d14, d14, d15
    c60a: ed9f fbab    	vldr	d15, [pc, #684]         @ 0xc8b8 <orange_dsp::generated_condensed::origin+0x5a8>
    c60e: ee0d eb0f    	vmla.f64	d14, d13, d15
    c612: ed9d db00    	vldr	d13, [sp]
    c616: ee30 db0d    	vadd.f64	d13, d0, d13
    c61a: ee30 3b03    	vadd.f64	d3, d0, d3
    c61e: ee30 cb0c    	vadd.f64	d12, d0, d12
    c622: ee30 6b06    	vadd.f64	d6, d0, d6
    c626: ee30 4b04    	vadd.f64	d4, d0, d4
    c62a: ee30 9b09    	vadd.f64	d9, d0, d9
    c62e: ee30 5b05    	vadd.f64	d5, d0, d5
    c632: ee30 8b08    	vadd.f64	d8, d0, d8
    c636: ee30 ab0a    	vadd.f64	d10, d0, d10
    c63a: ee30 bb0b    	vadd.f64	d11, d0, d11
    c63e: ee30 7b07    	vadd.f64	d7, d0, d7
    c642: ee30 1b01    	vadd.f64	d1, d0, d1
    c646: ee30 0b0e    	vadd.f64	d0, d0, d14
    c64a: ed80 2b00    	vstr	d2, [r0]
    c64e: ed80 db02    	vstr	d13, [r0, #8]
    c652: ed80 3b04    	vstr	d3, [r0, #16]
    c656: ed80 cb06    	vstr	d12, [r0, #24]
    c65a: ed80 6b08    	vstr	d6, [r0, #32]
    c65e: ed80 4b0a    	vstr	d4, [r0, #40]
    c662: ed80 9b0c    	vstr	d9, [r0, #48]
    c666: ed80 5b0e    	vstr	d5, [r0, #56]
    c66a: ed80 8b10    	vstr	d8, [r0, #64]
    c66e: ed80 ab12    	vstr	d10, [r0, #72]
    c672: ed80 bb14    	vstr	d11, [r0, #80]
    c676: ed80 7b16    	vstr	d7, [r0, #88]
    c67a: ed80 1b18    	vstr	d1, [r0, #96]
    c67e: ed80 0b1a    	vstr	d0, [r0, #104]
    c682: ed80 0b1c    	vstr	d0, [r0, #112]
    c686: b004         	add	sp, #0x10
    c688: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    c68c: bd80         	pop	{r7, pc}
    c68e: bf00         	nop
    c690: 00 40 04 ed  	.word	0xed044000
    c694: c6 5d a6 3e  	.word	0x3ea65dc6
    c698: 76 83 0d f4  	.word	0xf40d8376
    c69c: f5 21 e4 3e  	.word	0x3ee421f5
    c6a0: 16 75 bb 86  	.word	0x86bb7516
    c6a4: 64 4f f6 3e  	.word	0x3ef64f64
    c6a8: d5 97 bf f6  	.word	0xf6bf97d5
    c6ac: 19 b4 ce be  	.word	0xbeceb419
    c6b0: 36 5d 3e 75  	.word	0x753e5d36
    c6b4: 38 ae c7 3e  	.word	0x3ec7ae38
    c6b8: 00 40 c9 5b  	.word	0x5bc94000
    c6bc: f7 60 07 3f  	.word	0x3f0760f7
    c6c0: 4a 32 f7 68  	.word	0x68f7324a
    c6c4: 72 7d 9f 3e  	.word	0x3e9f7d72
		...
    c6d0: 54 60 37 c3  	.word	0xc3376054
    c6d4: e5 a4 e6 be  	.word	0xbee6a4e5
    c6d8: c8 ad 1f 67  	.word	0x671fadc8
    c6dc: 45 c3 ed 3e  	.word	0x3eedc345
    c6e0: 44 c6 ce d8  	.word	0xd8cec644
    c6e4: 10 a0 ed 3e  	.word	0x3eeda010
    c6e8: 00 50 60 e5  	.word	0xe5605000
    c6ec: 3b e5 10 3f  	.word	0x3f10e53b
    c6f0: e3 53 33 7a  	.word	0x7a3353e3
    c6f4: 61 bf de 3e  	.word	0x3edebf61
    c6f8: 51 c8 f8 a5  	.word	0xa5f8c851
    c6fc: 8a 68 b9 3e  	.word	0x3eb9688a
    c700: e2 d6 18 77  	.word	0x7718d6e2
    c704: a3 18 b5 be  	.word	0xbeb518a3
    c708: 67 b0 7b ae  	.word	0xae7bb067
    c70c: 67 ab dd 3e  	.word	0x3eddab67
    c710: b4 80 19 66  	.word	0x661980b4
    c714: f6 a3 90 3e  	.word	0x3e90a3f6
    c718: f6 5b 13 c0  	.word	0xc0135bf6
    c71c: 5a 48 fb be  	.word	0xbefb485a
    c720: 06 3c ee c7  	.word	0xc7ee3c06
    c724: 03 ee 01 3f  	.word	0x3f01ee03
    c728: 3c fc ce 6b  	.word	0x6bcefc3c
    c72c: ce d8 01 3f  	.word	0x3f01d8ce
    c730: 90 bd b4 b1  	.word	0xb1b4bd90
    c734: 47 f0 17 bf  	.word	0xbf17f047
    c738: 03 17 fc e7  	.word	0xe7fc1703
    c73c: 5f d3 ce 3e  	.word	0x3eced35f
    c740: 2a c5 55 47  	.word	0x4755c52a
    c744: 10 79 a9 3e  	.word	0x3ea97910
    c748: 42 55 13 46  	.word	0x46135542
    c74c: 5b 26 a5 be  	.word	0xbea5265b
    c750: 9c b2 92 a7  	.word	0xa792b29c
    c754: b2 be cd 3e  	.word	0x3ecdbeb2
    c758: 1a 5e 36 79  	.word	0x79365e1a
    c75c: c8 ae 80 3e  	.word	0x3e80aec8
    c760: 45 cd ea 54  	.word	0x54eacd45
    c764: fd c6 d2 be  	.word	0xbed2c6fd
    c768: 12 ba 8c 92  	.word	0x928cba12
    c76c: 9b a5 02 3f  	.word	0x3f02a59b
    c770: 64 e4 12 a5  	.word	0xa512e464
    c774: 59 d4 c6 3e  	.word	0x3ec6d459
    c778: 84 07 31 a1  	.word	0xa1310784
    c77c: 8a 5f e0 be  	.word	0xbee05f8a
    c780: b2 25 cb 22  	.word	0x22cb25b2
    c784: 4a 60 f4 be  	.word	0xbef4604a
    c788: 0a 0f aa 0d  	.word	0x0daa0f0a
    c78c: 20 16 ee be  	.word	0xbeee1620
    c790: 00 c0 53 71  	.word	0x7153c000
    c794: 69 b2 15 3f  	.word	0x3f15b269
    c798: e7 c0 30 90  	.word	0x9030c0e7
    c79c: d0 79 d7 3e  	.word	0x3ed779d0
    c7a0: c2 be 30 90  	.word	0x9030bec2
    c7a4: d0 79 d7 be  	.word	0xbed779d0
    c7a8: 60 be 53 71  	.word	0x7153be60
    c7ac: 69 b2 15 bf  	.word	0xbf15b269
    c7b0: 21 8e 90 51  	.word	0x51908e21
    c7b4: b7 61 83 3f  	.word	0x3f8361b7
    c7b8: 35 48 92 78  	.word	0x78924835
    c7bc: 26 1c ff 3e  	.word	0x3eff1c26
    c7c0: c1 5d e1 c9  	.word	0xc9e15dc1
    c7c4: 86 54 e5 bf  	.word	0xbfe55486
    c7c8: 86 0c 11 0f  	.word	0x0f110c86
    c7cc: c8 6c d7 3f  	.word	0x3fd76cc8
    c7d0: 7d 24 f3 72  	.word	0x72f3247d
    c7d4: 1b 11 d2 bf  	.word	0xbfd2111b
    c7d8: 3d 68 b5 4d  	.word	0x4db5683d
    c7dc: 2d 2d e5 bf  	.word	0xbfe52d2d
    c7e0: 30 c6 34 16  	.word	0x1634c630
    c7e4: b7 3a cc bf  	.word	0xbfcc3ab7
    c7e8: 75 22 80 1e  	.word	0x1e802275
    c7ec: ff ca ba bf  	.word	0xbfbacaff
    c7f0: 06 42 bd ec  	.word	0xecbd4206
    c7f4: 6c ee e0 bf  	.word	0xbfe0ee6c
    c7f8: 94 54 5e e4  	.word	0xe45e5494
    c7fc: 65 da e0 bf  	.word	0xbfe0da65
    c800: 7f 02 92 0b  	.word	0x0b92027f
    c804: f9 a6 d7 3f  	.word	0x3fd7a6f9
    c808: 49 ec 9f 20  	.word	0x209fec49
    c80c: fa 74 8e bf  	.word	0xbf8e74fa
    c810: 47 e4 bd ce  	.word	0xcebde447
    c814: 0e 2b 69 bf  	.word	0xbf692b0e
    c818: f4 24 ee df  	.word	0xdfee24f4
    c81c: 96 e5 64 3f  	.word	0x3f64e596
    c820: cf 1e ec 24  	.word	0x24ec1ecf
    c824: 9c 63 8d bf  	.word	0xbf8d639c
    c828: 30 f8 ed 0a  	.word	0x0aedf830
    c82c: b2 7b 40 bf  	.word	0xbf407bb2
    c830: d7 f6 ca fa  	.word	0xfacaf6d7
    c834: 26 e9 a6 bf  	.word	0xbfa6e926
    c838: 3a 53 cc f5  	.word	0xf5cc533a
    c83c: 53 6e a1 3f  	.word	0x3fa16e53
    c840: d2 bc 75 4e  	.word	0x4e75bcd2
    c844: 0d ce a6 bf  	.word	0xbfa6ce0d
    c848: 08 aa 3a 11  	.word	0x113aaa08
    c84c: f2 02 ca bf  	.word	0xbfca02f2
    c850: 3b 35 7d dc  	.word	0xdc7d353b
    c854: f0 f5 d4 bf  	.word	0xbfd4f5f0
    c858: 8a 7e 40 15  	.word	0x15407e8a
    c85c: 20 4b d2 bf  	.word	0xbfd24b20
    c860: 58 aa ae 17  	.word	0x17aeaa58
    c864: 84 6a d5 bf  	.word	0xbfd56a84
    c868: 1d ef 71 50  	.word	0x5071ef1d
    c86c: b3 bf d2 3f  	.word	0x3fd2bfb3
    c870: 59 b9 c0 26  	.word	0x26c0b959
    c874: 2e df e3 bf  	.word	0xbfe3df2e
    c878: 3b cc c8 6a  	.word	0x6ac8cc3b
    c87c: c2 ed a6 bf  	.word	0xbfa6edc2
    c880: 30 b5 9f 60  	.word	0x609fb530
    c884: ab e5 d3 bf  	.word	0xbfd3e5ab
    c888: 7b 84 3a 2a  	.word	0x2a3a847b
    c88c: 5a 5f c0 bf  	.word	0xbfc05f5a
    c890: f7 82 13 a7  	.word	0xa71382f7
    c894: 09 7c d7 3f  	.word	0x3fd77c09
    c898: 34 38 d2 5b  	.word	0x5bd23834
    c89c: a6 d7 e0 bf  	.word	0xbfe0d7a6
    c8a0: ee 6f e8 6a  	.word	0x6ae86fee
    c8a4: 04 d6 d0 bf  	.word	0xbfd0d604
    c8a8: 3b 36 33 54  	.word	0x5433363b
    c8ac: 06 e3 e4 bf  	.word	0xbfe4e306
    c8b0: b5 2c 68 6e  	.word	0x6e682cb5
    c8b4: 31 53 e5 bf  	.word	0xbfe55331
    c8b8: d2 4f d6 fa  	.word	0xfad64fd2
    c8bc: 97 86 f2 3e  	.word	0x3ef28697

0000c8c0 <orange_dsp::generated_condensed::update>:
    c8c0: b580         	push	{r7, lr}
    c8c2: 466f         	mov	r7, sp
    c8c4: ed2d 8b10    	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
    c8c8: b0b0         	sub	sp, #0xc0
    c8ca: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c8ce: ed91 3a02    	vldr	s6, [r1, #8]
    c8d2: ed9f 1bfd    	vldr	d1, [pc, #1012]         @ 0xccc8 <orange_dsp::generated_condensed::update+0x408>
    c8d6: ed91 4a01    	vldr	s8, [r1, #4]
    c8da: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    c8de: ee20 8b01    	vmul.f64	d8, d0, d1
    c8e2: ed91 1a03    	vldr	s2, [r1, #12]
    c8e6: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    c8ea: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    c8ee: ed9f 0bf8    	vldr	d0, [pc, #992]          @ 0xccd0 <orange_dsp::generated_condensed::update+0x410>
    c8f2: ed9f 2bf9    	vldr	d2, [pc, #996]          @ 0xccd8 <orange_dsp::generated_condensed::update+0x418>
    c8f6: ed9f 5bfa    	vldr	d5, [pc, #1000]         @ 0xcce0 <orange_dsp::generated_condensed::update+0x420>
    c8fa: ee21 2b02    	vmul.f64	d2, d1, d2
    c8fe: ee03 2b05    	vmla.f64	d2, d3, d5
    c902: eeb0 5b48    	vmov.f64	d5, d8
    c906: ee04 5b00    	vmla.f64	d5, d4, d0
    c90a: ed9f 0bf7    	vldr	d0, [pc, #988]          @ 0xcce8 <orange_dsp::generated_condensed::update+0x428>
    c90e: ee23 3b00    	vmul.f64	d3, d3, d0
    c912: ed92 0a01    	vldr	s0, [r2, #4]
    c916: ed9f 4bf6    	vldr	d4, [pc, #984]          @ 0xccf0 <orange_dsp::generated_condensed::update+0x430>
    c91a: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    c91e: ed8d 5b2c    	vstr	d5, [sp, #176]
    c922: ee38 5b02    	vadd.f64	d5, d8, d2
    c926: ed9f 2bf4    	vldr	d2, [pc, #976]          @ 0xccf8 <orange_dsp::generated_condensed::update+0x438>
    c92a: ee01 3b04    	vmla.f64	d3, d1, d4
    c92e: ed91 4a04    	vldr	s8, [r1, #16]
    c932: ee00 5b02    	vmla.f64	d5, d0, d2
    c936: ed91 2a05    	vldr	s4, [r1, #20]
    c93a: eeb7 4ac4    	vcvt.f64.f32	d4, s8
    c93e: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    c942: ed8d 5b2e    	vstr	d5, [sp, #184]
    c946: ee38 6b03    	vadd.f64	d6, d8, d3
    c94a: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcd00 <orange_dsp::generated_condensed::update+0x440>
    c94e: ed9f 5bee    	vldr	d5, [pc, #952]          @ 0xcd08 <orange_dsp::generated_condensed::update+0x448>
    c952: ee22 3b03    	vmul.f64	d3, d2, d3
    c956: ee04 3b05    	vmla.f64	d3, d4, d5
    c95a: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcd10 <orange_dsp::generated_condensed::update+0x450>
    c95e: ee38 5b03    	vadd.f64	d5, d8, d3
    c962: ed9f 3bed    	vldr	d3, [pc, #948]          @ 0xcd18 <orange_dsp::generated_condensed::update+0x458>
    c966: ee24 3b03    	vmul.f64	d3, d4, d3
    c96a: ed9f 4bed    	vldr	d4, [pc, #948]          @ 0xcd20 <orange_dsp::generated_condensed::update+0x460>
    c96e: ee00 6b01    	vmla.f64	d6, d0, d1
    c972: ed9f 1bed    	vldr	d1, [pc, #948]          @ 0xcd28 <orange_dsp::generated_condensed::update+0x468>
    c976: ee02 3b04    	vmla.f64	d3, d2, d4
    c97a: ee00 5b01    	vmla.f64	d5, d0, d1
    c97e: ed9f 1bec    	vldr	d1, [pc, #944]          @ 0xcd30 <orange_dsp::generated_condensed::update+0x470>
    c982: ee38 2b03    	vadd.f64	d2, d8, d3
    c986: ee00 2b01    	vmla.f64	d2, d0, d1
    c98a: ed91 0a07    	vldr	s0, [r1, #28]
    c98e: ed91 1a06    	vldr	s2, [r1, #24]
    c992: eeb7 fac0    	vcvt.f64.f32	d15, s0
    c996: ed9f 0be8    	vldr	d0, [pc, #928]          @ 0xcd38 <orange_dsp::generated_condensed::update+0x478>
    c99a: ee2f 9b00    	vmul.f64	d9, d15, d0
    c99e: eeb7 0ac1    	vcvt.f64.f32	d0, s2
    c9a2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd40 <orange_dsp::generated_condensed::update+0x480>
    c9a6: ee00 9b01    	vmla.f64	d9, d0, d1
    c9aa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd48 <orange_dsp::generated_condensed::update+0x488>
    c9ae: ee2f 3b01    	vmul.f64	d3, d15, d1
    c9b2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd50 <orange_dsp::generated_condensed::update+0x490>
    c9b6: ee00 3b01    	vmla.f64	d3, d0, d1
    c9ba: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd58 <orange_dsp::generated_condensed::update+0x498>
    c9be: ee2f 4b01    	vmul.f64	d4, d15, d1
    c9c2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd60 <orange_dsp::generated_condensed::update+0x4a0>
    c9c6: ee00 4b01    	vmla.f64	d4, d0, d1
    c9ca: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd68 <orange_dsp::generated_condensed::update+0x4a8>
    c9ce: ee20 ab01    	vmul.f64	d10, d0, d1
    c9d2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd70 <orange_dsp::generated_condensed::update+0x4b0>
    c9d6: ee0f ab01    	vmla.f64	d10, d15, d1
    c9da: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd78 <orange_dsp::generated_condensed::update+0x4b8>
    c9de: ee2f bb01    	vmul.f64	d11, d15, d1
    c9e2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd80 <orange_dsp::generated_condensed::update+0x4c0>
    c9e6: ee00 bb01    	vmla.f64	d11, d0, d1
    c9ea: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd88 <orange_dsp::generated_condensed::update+0x4c8>
    c9ee: ee2f cb01    	vmul.f64	d12, d15, d1
    c9f2: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd90 <orange_dsp::generated_condensed::update+0x4d0>
    c9f6: ee00 cb01    	vmla.f64	d12, d0, d1
    c9fa: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcd98 <orange_dsp::generated_condensed::update+0x4d8>
    c9fe: ee20 db01    	vmul.f64	d13, d0, d1
    ca02: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcda0 <orange_dsp::generated_condensed::update+0x4e0>
    ca06: ee0f db01    	vmla.f64	d13, d15, d1
    ca0a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcda8 <orange_dsp::generated_condensed::update+0x4e8>
    ca0e: ee2f eb01    	vmul.f64	d14, d15, d1
    ca12: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcdb0 <orange_dsp::generated_condensed::update+0x4f0>
    ca16: ee00 eb01    	vmla.f64	d14, d0, d1
    ca1a: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcdb8 <orange_dsp::generated_condensed::update+0x4f8>
    ca1e: ee2f fb01    	vmul.f64	d15, d15, d1
    ca22: ed9f 1be7    	vldr	d1, [pc, #924]          @ 0xcdc0 <orange_dsp::generated_condensed::update+0x500>
    ca26: ee00 fb01    	vmla.f64	d15, d0, d1
    ca2a: ed91 0a08    	vldr	s0, [r1, #32]
    ca2e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ca32: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcdc8 <orange_dsp::generated_condensed::update+0x508>
    ca36: ee00 9b01    	vmla.f64	d9, d0, d1
    ca3a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcdd0 <orange_dsp::generated_condensed::update+0x510>
    ca3e: ee00 3b01    	vmla.f64	d3, d0, d1
    ca42: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcdd8 <orange_dsp::generated_condensed::update+0x518>
    ca46: ee00 4b01    	vmla.f64	d4, d0, d1
    ca4a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcde0 <orange_dsp::generated_condensed::update+0x520>
    ca4e: ee00 ab01    	vmla.f64	d10, d0, d1
    ca52: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcde8 <orange_dsp::generated_condensed::update+0x528>
    ca56: ee00 bb01    	vmla.f64	d11, d0, d1
    ca5a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcdf0 <orange_dsp::generated_condensed::update+0x530>
    ca5e: ee00 cb01    	vmla.f64	d12, d0, d1
    ca62: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xcdf8 <orange_dsp::generated_condensed::update+0x538>
    ca66: ee00 db01    	vmla.f64	d13, d0, d1
    ca6a: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xce00 <orange_dsp::generated_condensed::update+0x540>
    ca6e: ee00 eb01    	vmla.f64	d14, d0, d1
    ca72: ed9f 1be5    	vldr	d1, [pc, #916]          @ 0xce08 <orange_dsp::generated_condensed::update+0x548>
    ca76: ee00 fb01    	vmla.f64	d15, d0, d1
    ca7a: ed91 0a09    	vldr	s0, [r1, #36]
    ca7e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    ca82: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce10 <orange_dsp::generated_condensed::update+0x550>
    ca86: ee00 9b01    	vmla.f64	d9, d0, d1
    ca8a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce18 <orange_dsp::generated_condensed::update+0x558>
    ca8e: ee00 3b01    	vmla.f64	d3, d0, d1
    ca92: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce20 <orange_dsp::generated_condensed::update+0x560>
    ca96: ee00 4b01    	vmla.f64	d4, d0, d1
    ca9a: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce28 <orange_dsp::generated_condensed::update+0x568>
    ca9e: ee00 ab01    	vmla.f64	d10, d0, d1
    caa2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce30 <orange_dsp::generated_condensed::update+0x570>
    caa6: ee00 bb01    	vmla.f64	d11, d0, d1
    caaa: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce38 <orange_dsp::generated_condensed::update+0x578>
    caae: ee00 cb01    	vmla.f64	d12, d0, d1
    cab2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce40 <orange_dsp::generated_condensed::update+0x580>
    cab6: ee00 db01    	vmla.f64	d13, d0, d1
    caba: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce48 <orange_dsp::generated_condensed::update+0x588>
    cabe: ee00 eb01    	vmla.f64	d14, d0, d1
    cac2: ed9f 1be3    	vldr	d1, [pc, #908]          @ 0xce50 <orange_dsp::generated_condensed::update+0x590>
    cac6: ee00 fb01    	vmla.f64	d15, d0, d1
    caca: ed91 0a0a    	vldr	s0, [r1, #40]
    cace: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cad2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce58 <orange_dsp::generated_condensed::update+0x598>
    cad6: ee00 9b01    	vmla.f64	d9, d0, d1
    cada: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce60 <orange_dsp::generated_condensed::update+0x5a0>
    cade: ee00 3b01    	vmla.f64	d3, d0, d1
    cae2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce68 <orange_dsp::generated_condensed::update+0x5a8>
    cae6: ee00 4b01    	vmla.f64	d4, d0, d1
    caea: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce70 <orange_dsp::generated_condensed::update+0x5b0>
    caee: ee00 ab01    	vmla.f64	d10, d0, d1
    caf2: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce78 <orange_dsp::generated_condensed::update+0x5b8>
    caf6: ee00 bb01    	vmla.f64	d11, d0, d1
    cafa: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce80 <orange_dsp::generated_condensed::update+0x5c0>
    cafe: ee00 cb01    	vmla.f64	d12, d0, d1
    cb02: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce88 <orange_dsp::generated_condensed::update+0x5c8>
    cb06: ee00 db01    	vmla.f64	d13, d0, d1
    cb0a: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce90 <orange_dsp::generated_condensed::update+0x5d0>
    cb0e: ee00 eb01    	vmla.f64	d14, d0, d1
    cb12: ed9f 1be1    	vldr	d1, [pc, #900]          @ 0xce98 <orange_dsp::generated_condensed::update+0x5d8>
    cb16: ee00 fb01    	vmla.f64	d15, d0, d1
    cb1a: ed91 0a0b    	vldr	s0, [r1, #44]
    cb1e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cb22: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcea0 <orange_dsp::generated_condensed::update+0x5e0>
    cb26: ee00 9b01    	vmla.f64	d9, d0, d1
    cb2a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcea8 <orange_dsp::generated_condensed::update+0x5e8>
    cb2e: ee00 3b01    	vmla.f64	d3, d0, d1
    cb32: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xceb0 <orange_dsp::generated_condensed::update+0x5f0>
    cb36: ee00 4b01    	vmla.f64	d4, d0, d1
    cb3a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xceb8 <orange_dsp::generated_condensed::update+0x5f8>
    cb3e: ee00 ab01    	vmla.f64	d10, d0, d1
    cb42: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcec0 <orange_dsp::generated_condensed::update+0x600>
    cb46: ee00 bb01    	vmla.f64	d11, d0, d1
    cb4a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcec8 <orange_dsp::generated_condensed::update+0x608>
    cb4e: ee00 cb01    	vmla.f64	d12, d0, d1
    cb52: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xced0 <orange_dsp::generated_condensed::update+0x610>
    cb56: ee00 db01    	vmla.f64	d13, d0, d1
    cb5a: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xced8 <orange_dsp::generated_condensed::update+0x618>
    cb5e: ee00 eb01    	vmla.f64	d14, d0, d1
    cb62: ed9f 1bdf    	vldr	d1, [pc, #892]          @ 0xcee0 <orange_dsp::generated_condensed::update+0x620>
    cb66: ee00 fb01    	vmla.f64	d15, d0, d1
    cb6a: ed91 0a0c    	vldr	s0, [r1, #48]
    cb6e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cb72: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcee8 <orange_dsp::generated_condensed::update+0x628>
    cb76: ee00 9b01    	vmla.f64	d9, d0, d1
    cb7a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcef0 <orange_dsp::generated_condensed::update+0x630>
    cb7e: ee00 3b01    	vmla.f64	d3, d0, d1
    cb82: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcef8 <orange_dsp::generated_condensed::update+0x638>
    cb86: ee00 4b01    	vmla.f64	d4, d0, d1
    cb8a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcf00 <orange_dsp::generated_condensed::update+0x640>
    cb8e: ee00 ab01    	vmla.f64	d10, d0, d1
    cb92: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcf08 <orange_dsp::generated_condensed::update+0x648>
    cb96: ee00 bb01    	vmla.f64	d11, d0, d1
    cb9a: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcf10 <orange_dsp::generated_condensed::update+0x650>
    cb9e: ee00 cb01    	vmla.f64	d12, d0, d1
    cba2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcf18 <orange_dsp::generated_condensed::update+0x658>
    cba6: ee00 db01    	vmla.f64	d13, d0, d1
    cbaa: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcf20 <orange_dsp::generated_condensed::update+0x660>
    cbae: ee00 eb01    	vmla.f64	d14, d0, d1
    cbb2: ed9f 1bdd    	vldr	d1, [pc, #884]          @ 0xcf28 <orange_dsp::generated_condensed::update+0x668>
    cbb6: ee00 fb01    	vmla.f64	d15, d0, d1
    cbba: ed91 0a0d    	vldr	s0, [r1, #52]
    cbbe: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cbc2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf30 <orange_dsp::generated_condensed::update+0x670>
    cbc6: ee00 9b01    	vmla.f64	d9, d0, d1
    cbca: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf38 <orange_dsp::generated_condensed::update+0x678>
    cbce: ee00 3b01    	vmla.f64	d3, d0, d1
    cbd2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf40 <orange_dsp::generated_condensed::update+0x680>
    cbd6: ee00 4b01    	vmla.f64	d4, d0, d1
    cbda: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf48 <orange_dsp::generated_condensed::update+0x688>
    cbde: ee00 ab01    	vmla.f64	d10, d0, d1
    cbe2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf50 <orange_dsp::generated_condensed::update+0x690>
    cbe6: ee00 bb01    	vmla.f64	d11, d0, d1
    cbea: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf58 <orange_dsp::generated_condensed::update+0x698>
    cbee: ee00 cb01    	vmla.f64	d12, d0, d1
    cbf2: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf60 <orange_dsp::generated_condensed::update+0x6a0>
    cbf6: ee00 db01    	vmla.f64	d13, d0, d1
    cbfa: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf68 <orange_dsp::generated_condensed::update+0x6a8>
    cbfe: ee00 eb01    	vmla.f64	d14, d0, d1
    cc02: ed9f 1bdb    	vldr	d1, [pc, #876]          @ 0xcf70 <orange_dsp::generated_condensed::update+0x6b0>
    cc06: ee00 fb01    	vmla.f64	d15, d0, d1
    cc0a: ed91 0a0e    	vldr	s0, [r1, #56]
    cc0e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cc12: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcf78 <orange_dsp::generated_condensed::update+0x6b8>
    cc16: ee00 9b01    	vmla.f64	d9, d0, d1
    cc1a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcf80 <orange_dsp::generated_condensed::update+0x6c0>
    cc1e: ee00 3b01    	vmla.f64	d3, d0, d1
    cc22: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcf88 <orange_dsp::generated_condensed::update+0x6c8>
    cc26: ee00 4b01    	vmla.f64	d4, d0, d1
    cc2a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcf90 <orange_dsp::generated_condensed::update+0x6d0>
    cc2e: ee00 ab01    	vmla.f64	d10, d0, d1
    cc32: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcf98 <orange_dsp::generated_condensed::update+0x6d8>
    cc36: ee00 bb01    	vmla.f64	d11, d0, d1
    cc3a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcfa0 <orange_dsp::generated_condensed::update+0x6e0>
    cc3e: ee00 cb01    	vmla.f64	d12, d0, d1
    cc42: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcfa8 <orange_dsp::generated_condensed::update+0x6e8>
    cc46: ee00 db01    	vmla.f64	d13, d0, d1
    cc4a: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcfb0 <orange_dsp::generated_condensed::update+0x6f0>
    cc4e: ee00 eb01    	vmla.f64	d14, d0, d1
    cc52: ed9f 1bd9    	vldr	d1, [pc, #868]          @ 0xcfb8 <orange_dsp::generated_condensed::update+0x6f8>
    cc56: ee00 fb01    	vmla.f64	d15, d0, d1
    cc5a: ed92 0a03    	vldr	s0, [r2, #12]
    cc5e: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    cc62: ed9f 1bd7    	vldr	d1, [pc, #860]          @ 0xcfc0 <orange_dsp::generated_condensed::update+0x700>
    cc66: ed8d 3b1c    	vstr	d3, [sp, #112]
    cc6a: ee20 3b01    	vmul.f64	d3, d0, d1
    cc6e: ed92 1a02    	vldr	s2, [r2, #8]
    cc72: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    cc76: ed8d 2b26    	vstr	d2, [sp, #152]
    cc7a: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xcfc8 <orange_dsp::generated_condensed::update+0x708>
    cc7e: ee01 3b02    	vmla.f64	d3, d1, d2
    cc82: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xcfd0 <orange_dsp::generated_condensed::update+0x710>
    cc86: ed8d 3b24    	vstr	d3, [sp, #144]
    cc8a: ee20 3b02    	vmul.f64	d3, d0, d2
    cc8e: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xcfd8 <orange_dsp::generated_condensed::update+0x718>
    cc92: ee01 3b02    	vmla.f64	d3, d1, d2
    cc96: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xcfe0 <orange_dsp::generated_condensed::update+0x720>
    cc9a: ed8d 3b22    	vstr	d3, [sp, #136]
    cc9e: ee20 3b02    	vmul.f64	d3, d0, d2
    cca2: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xcfe8 <orange_dsp::generated_condensed::update+0x728>
    cca6: ee01 3b02    	vmla.f64	d3, d1, d2
    ccaa: ed9f 2bd1    	vldr	d2, [pc, #836]          @ 0xcff0 <orange_dsp::generated_condensed::update+0x730>
    ccae: ed8d 3b20    	vstr	d3, [sp, #128]
    ccb2: ee20 3b02    	vmul.f64	d3, d0, d2
    ccb6: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xcff8 <orange_dsp::generated_condensed::update+0x738>
    ccba: ee01 3b02    	vmla.f64	d3, d1, d2
    ccbe: f000 b99f    	b.w	0xd000 <orange_dsp::generated_condensed::update+0x740> @ imm = #0x33e
    ccc2: bf00         	nop
    ccc4: bf00         	nop
    ccc6: bf00         	nop
		...
    ccd0: c1 5d e1 c9  	.word	0xc9e15dc1
    ccd4: 86 54 e5 3f  	.word	0x3fe55486
    ccd8: a9 0f 6b 00  	.word	0x006b0fa9
    ccdc: 3e 31 92 bf  	.word	0xbf92313e
    cce0: a2 48 2a 74  	.word	0x742a48a2
    cce4: 54 ba e4 3f  	.word	0x3fe4ba54
    cce8: 00 60 41 1f  	.word	0x1f416000
    ccec: 45 49 27 bf  	.word	0xbf274945
    ccf0: 1a 5d 10 11  	.word	0x11105d1a
    ccf4: ce 53 e5 3f  	.word	0x3fe553ce
    ccf8: 46 6c 1c 77  	.word	0x771c6c46
    ccfc: d3 64 5c bf  	.word	0xbf5c64d3
    cd00: 80 0d 59 22  	.word	0x22590d80
    cd04: 9f d9 b8 be  	.word	0xbeb8d99f
    cd08: b0 e5 93 25  	.word	0x2593e5b0
    cd0c: 2e 54 e5 3f  	.word	0x3fe5542e
    cd10: 00 60 e7 86  	.word	0x86e76000
    cd14: ec 07 ec 3e  	.word	0x3eec07ec
    cd18: 00 f0 f8 21  	.word	0x21f8f000
    cd1c: c8 2c 12 bf  	.word	0xbf122cc8
    cd20: 3d 6e 12 0b  	.word	0x0b126e3d
    cd24: a1 53 e5 3f  	.word	0x3fe553a1
    cd28: 00 80 77 22  	.word	0x22778000
    cd2c: 7a ac 2b 3f  	.word	0x3f2bac7a
    cd30: 00 60 f5 32  	.word	0x32f56000
    cd34: 2c 43 1b 3f  	.word	0x3f1b432c
    cd38: 06 42 bd ec  	.word	0xecbd4206
    cd3c: 6c ee e0 3f  	.word	0x3fe0ee6c
    cd40: 75 22 80 1e  	.word	0x1e802275
    cd44: ff ca ba 3f  	.word	0x3fbacaff
    cd48: a3 83 c9 c1  	.word	0xc1c983a3
    cd4c: 1d 54 e5 3f  	.word	0x3fe5541d
    cd50: 00 ac c1 aa  	.word	0xaac1ac00
    cd54: b7 a1 1d 3f  	.word	0x3f1da1b7
    cd58: 00 8f fc e0  	.word	0xe0fc8f00
    cd5c: bb 3a 58 bf  	.word	0xbf583abb
    cd60: 80 c5 13 c0  	.word	0xc013c580
    cd64: 2a 6f 52 3f  	.word	0x3f526f2a
    cd68: 1a c8 c7 76  	.word	0x76c7c81a
    cd6c: 6e b2 14 bf  	.word	0xbf14b26e
    cd70: e2 63 27 22  	.word	0x222763e2
    cd74: 1a 34 1b 3f  	.word	0x3f1b341a
    cd78: 00 00 77 9e  	.word	0x9e770000
    cd7c: d4 83 d1 be  	.word	0xbed183d4
    cd80: 00 80 54 bc  	.word	0xbc548000
    cd84: c7 a6 ca 3e  	.word	0x3ecaa6c7
    cd88: 78 c9 65 d2  	.word	0xd265c978
    cd8c: fb aa 81 bf  	.word	0xbf81aafb
    cd90: 38 4b 1c 74  	.word	0x741c4b38
    cd94: 5b e2 7a 3f  	.word	0x3f7ae25b
    cd98: 00 a8 b7 3b  	.word	0x3bb7a800
    cd9c: a0 24 e9 be  	.word	0xbee924a0
    cda0: 00 b0 3a 3d  	.word	0x3d3ab000
    cda4: 0e 86 f0 3e  	.word	0x3ef0860e
    cda8: 80 45 eb ca  	.word	0xcaeb4580
    cdac: d6 b8 28 bf  	.word	0xbf28b8d6
    cdb0: 40 1e 97 40  	.word	0x40971e40
    cdb4: 1c cf 22 3f  	.word	0x3f22cf1c
    cdb8: 00 80 9e 71  	.word	0x719e8000
    cdbc: 3d 11 ca be  	.word	0xbeca113d
    cdc0: 00 00 cc 39  	.word	0x39cc0000
    cdc4: 23 d5 c3 3e  	.word	0x3ec3d523
    cdc8: 94 54 5e e4  	.word	0xe45e5494
    cdcc: 65 da e0 3f  	.word	0x3fe0da65
    cdd0: 00 d0 32 e7  	.word	0xe732d000
    cdd4: 2f 62 23 bf  	.word	0xbf23622f
    cdd8: b0 9a 2c 49  	.word	0x492c9ab0
    cddc: 0a 30 e5 3f  	.word	0x3fe5300a
    cde0: 6a 59 88 8d  	.word	0x8d88596a
    cde4: ec 13 1b 3f  	.word	0x3f1b13ec
    cde8: 00 80 a9 db  	.word	0xdba98000
    cdec: 1c 6f d1 be  	.word	0xbed16f1c
    cdf0: 70 a7 27 c0  	.word	0xc027a770
    cdf4: 15 96 81 bf  	.word	0xbf819615
    cdf8: 00 10 7b a9  	.word	0xa97b1000
    cdfc: 82 72 f0 3e  	.word	0x3ef07282
    ce00: 80 84 35 a4  	.word	0xa4358480
    ce04: 98 9b 28 bf  	.word	0xbf289b98
    ce08: 00 00 11 e3  	.word	0xe3110000
    ce0c: 67 f2 c9 be  	.word	0xbec9f267
    ce10: 7f 02 92 0b  	.word	0x0b92027f
    ce14: f9 a6 d7 bf  	.word	0xbfd7a6f9
    ce18: 00 70 27 22  	.word	0x22277000
    ce1c: 1a 34 1b 3f  	.word	0x3f1b341a
    ce20: 00 37 75 d8  	.word	0xd8753700
    ce24: 73 ec 50 3f  	.word	0x3f50ec73
    ce28: f9 c7 6f 0d  	.word	0x0d6fc7f9
    ce2c: d1 52 e5 3f  	.word	0x3fe552d1
    ce30: 00 c0 70 c7  	.word	0xc770c000
    ce34: ac e2 f3 be  	.word	0xbef3e2ac
    ce38: b8 ba 9c 87  	.word	0x879cbab8
    ce3c: 20 0f a4 bf  	.word	0xbfa40f20
    ce40: 00 58 ad cf  	.word	0xcfad5800
    ce44: 8d c2 12 3f  	.word	0x3f12c28d
    ce48: 00 67 c9 53  	.word	0x53c96700
    ce4c: 63 11 4c bf  	.word	0xbf4c1163
    ce50: 00 00 01 7a  	.word	0x7a010000
    ce54: 66 98 ed be  	.word	0xbeed9866
    ce58: 49 ec 9f 20  	.word	0x209fec49
    ce5c: fa 74 8e 3f  	.word	0x3f8e74fa
    ce60: 00 b8 a6 9d  	.word	0x9da6b800
    ce64: d4 83 d1 be  	.word	0xbed183d4
    ce68: 00 0a 5f 13  	.word	0x135f0a00
    ce6c: e4 ca 05 bf  	.word	0xbf05cae4
    ce70: 78 b8 70 c7  	.word	0xc770b878
    ce74: ac e2 f3 be  	.word	0xbef3e2ac
    ce78: 5b ad 92 3c  	.word	0x3c92ad5b
    ce7c: 15 55 e5 3f  	.word	0x3fe55515
    ce80: 00 25 a5 be  	.word	0xbea52500
    ce84: 02 2a b0 bf  	.word	0xbfb02a02
    ce88: 00 f8 5d c6  	.word	0xc65df800
    ce8c: 07 3c 1e 3f  	.word	0x3f1e3c07
    ce90: 40 ea 5d 38  	.word	0x385dea40
    ce94: 29 9e 56 bf  	.word	0xbf569e29
    ce98: 00 c0 dc 8e  	.word	0x8edcc000
    ce9c: 3f d9 f7 be  	.word	0xbef7d93f
    cea0: 47 e4 bd ce  	.word	0xcebde447
    cea4: 0e 2b 69 3f  	.word	0x3f692b0e
    cea8: 00 40 8f da  	.word	0xda8f4000
    ceac: 74 f2 ac be  	.word	0xbeacf274
    ceb0: 00 a7 84 8f  	.word	0x8f84a700
    ceb4: 22 02 e2 be  	.word	0xbee20222
    ceb8: 1f bc 4a 33  	.word	0x334abc1f
    cebc: b2 6e d0 be  	.word	0xbed06eb2
    cec0: 00 fc fb 7d  	.word	0x7dfbfc00
    cec4: b7 7b da be  	.word	0xbeda7bb7
    cec8: 8f e3 b2 48  	.word	0x48b2e38f
    cecc: 3c e9 e2 3f  	.word	0x3fe2e93c
    ced0: 00 e4 71 6e  	.word	0x6e71e400
    ced4: 56 32 23 3f  	.word	0x3f233256
    ced8: 00 05 e0 bc  	.word	0xbce00500
    cedc: 17 92 30 bf  	.word	0xbf309217
    cee0: 00 80 de 1d  	.word	0x1dde8000
    cee4: 5b d0 f4 be  	.word	0xbef4d05b
    cee8: f4 24 ee df  	.word	0xdfee24f4
    ceec: 96 e5 64 bf  	.word	0xbf64e596
    cef0: 00 60 1c e5  	.word	0xe51c6000
    cef4: ce 08 a8 3e  	.word	0x3ea808ce
    cef8: 00 e0 2c 34  	.word	0x342ce000
    cefc: 79 e7 dd 3e  	.word	0x3edde779
    cf00: e7 ed e4 73  	.word	0x73e4ede7
    cf04: 88 49 cb 3e  	.word	0x3ecb4988
    cf08: 00 54 55 ed  	.word	0xed555400
    cf0c: 1c fd d5 3e  	.word	0x3ed5fd1c
    cf10: 20 1d 0d ea  	.word	0xea0d1d20
    cf14: de 0a b1 3f  	.word	0x3fb10ade
    cf18: 0e cf 4c 9e  	.word	0x9e4ccf0e
    cf1c: ea 50 e5 3f  	.word	0x3fe550ea
    cf20: 90 b1 c1 c8  	.word	0xc8c1b190
    cf24: ce b5 51 3f  	.word	0x3f51b5ce
    cf28: 00 c0 f7 85  	.word	0x85f7c000
    cf2c: e2 5d f8 be  	.word	0xbef85de2
    cf30: cf 1e ec 24  	.word	0x24ec1ecf
    cf34: 9c 63 8d 3f  	.word	0x3f8d639c
    cf38: 00 80 67 df  	.word	0xdf678000
    cf3c: 9f e6 d0 be  	.word	0xbed0e69f
    cf40: 00 ba a2 95  	.word	0x95a2ba00
    cf44: 4a 07 05 bf  	.word	0xbf05074a
    cf48: 5f e8 1a 49  	.word	0x491ae85f
    cf4c: 31 30 f3 be  	.word	0xbef33031
    cf50: 00 bc c0 af  	.word	0xafc0bc00
    cf54: ba ec fe be  	.word	0xbefeecba
    cf58: 40 2a 3d 87  	.word	0x873d2a40
    cf5c: 32 a8 ab bf  	.word	0xbfaba832
    cf60: 00 58 47 7f  	.word	0x7f475800
    cf64: c7 a5 40 3f  	.word	0x3f40a5c7
    cf68: c6 60 4c 9c  	.word	0x9c4c60c6
    cf6c: 3d 43 e5 3f  	.word	0x3fe5433d
    cf70: 00 80 ea 14  	.word	0x14ea8000
    cf74: fe 54 f5 3e  	.word	0x3ef554fe
    cf78: 30 f8 ed 0a  	.word	0x0aedf830
    cf7c: b2 7b 40 3f  	.word	0x3f407bb2
    cf80: 00 d0 c0 ef  	.word	0xefc0d000
    cf84: 43 f5 82 be  	.word	0xbe82f543
    cf88: 00 44 9d fc  	.word	0xfc9d4400
    cf8c: 8c 96 b7 be  	.word	0xbeb7968c
    cf90: 33 60 a3 fb  	.word	0xfba36033
    cf94: 1b 86 a5 be  	.word	0xbea5861b
    cf98: 00 9e 73 39  	.word	0x39739e00
    cf9c: 2e 58 b1 be  	.word	0xbeb1582e
    cfa0: a7 94 9b fb  	.word	0xfb9b94a7
    cfa4: 6d 7a 82 bf  	.word	0xbf827a6d
    cfa8: 00 2c 02 86  	.word	0x86022c00
    cfac: e2 5d f8 be  	.word	0xbef85de2
    cfb0: 40 eb 05 06  	.word	0x0605eb40
    cfb4: 91 b1 06 3f  	.word	0x3f06b191
    cfb8: 03 bd 02 e5  	.word	0xe502bd03
    cfbc: fa 54 e5 3f  	.word	0x3fe554fa
    cfc0: 76 43 71 a5  	.word	0xa5714376
    cfc4: f8 73 e2 bf  	.word	0xbfe273f8
    cfc8: 90 85 b9 69  	.word	0x69b98590
    cfcc: a2 a1 ce bf  	.word	0xbfcea1a2
    cfd0: 00 70 07 91  	.word	0x91077000
    cfd4: 41 39 25 3f  	.word	0x3f253941
    cfd8: 00 80 10 04  	.word	0x04108000
    cfdc: 83 9d 11 3f  	.word	0x3f119d83
    cfe0: 00 b8 93 75  	.word	0x7593b800
    cfe4: 30 68 5a 3f  	.word	0x3f5a6830
    cfe8: 00 5c 9c 19  	.word	0x199c5c00
    cfec: d8 ea 45 3f  	.word	0x3f45ead8
    cff0: 28 b4 ed 8f  	.word	0x8fedb428
    cff4: 1e 56 3c bf  	.word	0xbf3c561e
    cff8: 00 80 d1 f5  	.word	0xf5d18000
    cffc: d4 ff 33 3f  	.word	0x3f33ffd4
    d000: ed9f 2beb    	vldr	d2, [pc, #940]          @ 0xd3b0 <orange_dsp::generated_condensed::update+0xaf0>
    d004: ed8d 3b1e    	vstr	d3, [sp, #120]
    d008: ee20 3b02    	vmul.f64	d3, d0, d2
    d00c: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd3b8 <orange_dsp::generated_condensed::update+0xaf8>
    d010: ee01 3b02    	vmla.f64	d3, d1, d2
    d014: ed9f 2bea    	vldr	d2, [pc, #936]          @ 0xd3c0 <orange_dsp::generated_condensed::update+0xb00>
    d018: ed8d 3b18    	vstr	d3, [sp, #96]
    d01c: ee20 3b02    	vmul.f64	d3, d0, d2
    d020: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd3c8 <orange_dsp::generated_condensed::update+0xb08>
    d024: ee01 3b02    	vmla.f64	d3, d1, d2
    d028: ed9f 2be9    	vldr	d2, [pc, #932]          @ 0xd3d0 <orange_dsp::generated_condensed::update+0xb10>
    d02c: ed8d 3b16    	vstr	d3, [sp, #88]
    d030: ee20 3b02    	vmul.f64	d3, d0, d2
    d034: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd3d8 <orange_dsp::generated_condensed::update+0xb18>
    d038: ee01 3b02    	vmla.f64	d3, d1, d2
    d03c: ed9f 2be8    	vldr	d2, [pc, #928]          @ 0xd3e0 <orange_dsp::generated_condensed::update+0xb20>
    d040: ed8d 3b14    	vstr	d3, [sp, #80]
    d044: ee20 3b02    	vmul.f64	d3, d0, d2
    d048: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd3e8 <orange_dsp::generated_condensed::update+0xb28>
    d04c: ee01 3b02    	vmla.f64	d3, d1, d2
    d050: ed9f 2be7    	vldr	d2, [pc, #924]          @ 0xd3f0 <orange_dsp::generated_condensed::update+0xb30>
    d054: ee20 2b02    	vmul.f64	d2, d0, d2
    d058: ed9f 0be7    	vldr	d0, [pc, #924]          @ 0xd3f8 <orange_dsp::generated_condensed::update+0xb38>
    d05c: ee01 2b00    	vmla.f64	d2, d1, d0
    d060: ed91 0a10    	vldr	s0, [r1, #64]
    d064: ed8d 2b10    	vstr	d2, [sp, #64]
    d068: ed91 2a0f    	vldr	s4, [r1, #60]
    d06c: eeb7 1ac0    	vcvt.f64.f32	d1, s0
    d070: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    d074: ed8d 3b12    	vstr	d3, [sp, #72]
    d078: ed9f 0be1    	vldr	d0, [pc, #900]          @ 0xd400 <orange_dsp::generated_condensed::update+0xb40>
    d07c: ed9f 3be2    	vldr	d3, [pc, #904]          @ 0xd408 <orange_dsp::generated_condensed::update+0xb48>
    d080: ee21 0b00    	vmul.f64	d0, d1, d0
    d084: ee02 0b03    	vmla.f64	d0, d2, d3
    d088: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd418 <orange_dsp::generated_condensed::update+0xb58>
    d08c: ee21 1b03    	vmul.f64	d1, d1, d3
    d090: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd420 <orange_dsp::generated_condensed::update+0xb60>
    d094: ee02 1b03    	vmla.f64	d1, d2, d3
    d098: ed91 2a12    	vldr	s4, [r1, #72]
    d09c: eeb7 2ac2    	vcvt.f64.f32	d2, s4
    d0a0: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd430 <orange_dsp::generated_condensed::update+0xb70>
    d0a4: ed8d 5b28    	vstr	d5, [sp, #160]
    d0a8: ee22 5b03    	vmul.f64	d5, d2, d3
    d0ac: ed91 3a11    	vldr	s6, [r1, #68]
    d0b0: eeb7 3ac3    	vcvt.f64.f32	d3, s6
    d0b4: ed8d 4b1a    	vstr	d4, [sp, #104]
    d0b8: ed9f 4bdf    	vldr	d4, [pc, #892]          @ 0xd438 <orange_dsp::generated_condensed::update+0xb78>
    d0bc: ee03 5b04    	vmla.f64	d5, d3, d4
    d0c0: ed9f 4be3    	vldr	d4, [pc, #908]          @ 0xd450 <orange_dsp::generated_condensed::update+0xb90>
    d0c4: ee23 7b04    	vmul.f64	d7, d3, d4
    d0c8: ed9f 3be3    	vldr	d3, [pc, #908]          @ 0xd458 <orange_dsp::generated_condensed::update+0xb98>
    d0cc: ee02 7b03    	vmla.f64	d7, d2, d3
    d0d0: ee38 3b00    	vadd.f64	d3, d8, d0
    d0d4: ed92 0a04    	vldr	s0, [r2, #16]
    d0d8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d0dc: ed9f 2bcc    	vldr	d2, [pc, #816]          @ 0xd410 <orange_dsp::generated_condensed::update+0xb50>
    d0e0: ee00 3b02    	vmla.f64	d3, d0, d2
    d0e4: ee38 2b01    	vadd.f64	d2, d8, d1
    d0e8: ed9f 1bcf    	vldr	d1, [pc, #828]          @ 0xd428 <orange_dsp::generated_condensed::update+0xb68>
    d0ec: ee00 2b01    	vmla.f64	d2, d0, d1
    d0f0: ed92 1a05    	vldr	s2, [r2, #20]
    d0f4: eeb7 1ac1    	vcvt.f64.f32	d1, s2
    d0f8: ed8d 2b0c    	vstr	d2, [sp, #48]
    d0fc: ed9f 2bd0    	vldr	d2, [pc, #832]          @ 0xd440 <orange_dsp::generated_condensed::update+0xb80>
    d100: ed8d 3b0e    	vstr	d3, [sp, #56]
    d104: ee21 3b02    	vmul.f64	d3, d1, d2
    d108: ed9f 2bcf    	vldr	d2, [pc, #828]          @ 0xd448 <orange_dsp::generated_condensed::update+0xb88>
    d10c: ee00 3b02    	vmla.f64	d3, d0, d2
    d110: ed9f 2bd3    	vldr	d2, [pc, #844]          @ 0xd460 <orange_dsp::generated_condensed::update+0xba0>
    d114: ed8d 3b0a    	vstr	d3, [sp, #40]
    d118: ee21 3b02    	vmul.f64	d3, d1, d2
    d11c: ed9f 2bd2    	vldr	d2, [pc, #840]          @ 0xd468 <orange_dsp::generated_condensed::update+0xba8>
    d120: ee00 3b02    	vmla.f64	d3, d0, d2
    d124: ed91 0a14    	vldr	s0, [r1, #80]
    d128: ed8d 3b06    	vstr	d3, [sp, #24]
    d12c: eeb7 3ac0    	vcvt.f64.f32	d3, s0
    d130: ed9f 0bcf    	vldr	d0, [pc, #828]          @ 0xd470 <orange_dsp::generated_condensed::update+0xbb0>
    d134: ee23 2b00    	vmul.f64	d2, d3, d0
    d138: ed91 0a13    	vldr	s0, [r1, #76]
    d13c: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d140: ed9f 4bcd    	vldr	d4, [pc, #820]          @ 0xd478 <orange_dsp::generated_condensed::update+0xbb8>
    d144: ee00 2b04    	vmla.f64	d2, d0, d4
    d148: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd488 <orange_dsp::generated_condensed::update+0xbc8>
    d14c: ee20 0b04    	vmul.f64	d0, d0, d4
    d150: ed9f 4bcf    	vldr	d4, [pc, #828]          @ 0xd490 <orange_dsp::generated_condensed::update+0xbd0>
    d154: ee03 0b04    	vmla.f64	d0, d3, d4
    d158: ed92 3a06    	vldr	s6, [r2, #24]
    d15c: ed8d 5b08    	vstr	d5, [sp, #32]
    d160: eeb0 5b48    	vmov.f64	d5, d8
    d164: eeb7 8ac3    	vcvt.f64.f32	d8, s6
    d168: ed9f 4bc5    	vldr	d4, [pc, #788]          @ 0xd480 <orange_dsp::generated_condensed::update+0xbc0>
    d16c: ed8d 6b2a    	vstr	d6, [sp, #168]
    d170: ee21 6b04    	vmul.f64	d6, d1, d4
    d174: ee08 6b44    	vmls.f64	d6, d8, d4
    d178: ed9f 4bc7    	vldr	d4, [pc, #796]          @ 0xd498 <orange_dsp::generated_condensed::update+0xbd8>
    d17c: ee21 3b04    	vmul.f64	d3, d1, d4
    d180: ee08 3b44    	vmls.f64	d3, d8, d4
    d184: ed91 4a15    	vldr	s8, [r1, #84]
    d188: eeb7 8ac4    	vcvt.f64.f32	d8, s8
    d18c: ed9f 1bc4    	vldr	d1, [pc, #784]          @ 0xd4a0 <orange_dsp::generated_condensed::update+0xbe0>
    d190: eeb0 4b45    	vmov.f64	d4, d5
    d194: ee08 4b01    	vmla.f64	d4, d8, d1
    d198: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0xd3a0 <orange_dsp::generated_condensed::update+0xae0>
    d19c: ee35 8b01    	vadd.f64	d8, d5, d1
    d1a0: eeb0 1b45    	vmov.f64	d1, d5
    d1a4: ee35 9b09    	vadd.f64	d9, d5, d9
    d1a8: ed9d 5b1c    	vldr	d5, [sp, #112]
    d1ac: ee31 5b05    	vadd.f64	d5, d1, d5
    d1b0: ed8d 5b1c    	vstr	d5, [sp, #112]
    d1b4: ed9d 5b1a    	vldr	d5, [sp, #104]
    d1b8: ee31 0b00    	vadd.f64	d0, d1, d0
    d1bc: ee31 5b05    	vadd.f64	d5, d1, d5
    d1c0: ed8d 0b00    	vstr	d0, [sp]
    d1c4: ed91 0a16    	vldr	s0, [r1, #88]
    d1c8: ed8d 5b1a    	vstr	d5, [sp, #104]
    d1cc: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d1d0: ed9d 5b08    	vldr	d5, [sp, #32]
    d1d4: ee31 2b02    	vadd.f64	d2, d1, d2
    d1d8: ed8d 2b02    	vstr	d2, [sp, #8]
    d1dc: ed9f 2bb4    	vldr	d2, [pc, #720]          @ 0xd4b0 <orange_dsp::generated_condensed::update+0xbf0>
    d1e0: ee31 5b05    	vadd.f64	d5, d1, d5
    d1e4: ed8d 5b08    	vstr	d5, [sp, #32]
    d1e8: ee31 5b07    	vadd.f64	d5, d1, d7
    d1ec: eeb0 7b41    	vmov.f64	d7, d1
    d1f0: ee00 7b02    	vmla.f64	d7, d0, d2
    d1f4: ed92 0a07    	vldr	s0, [r2, #28]
    d1f8: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d1fc: ed9f 2baa    	vldr	d2, [pc, #680]          @ 0xd4a8 <orange_dsp::generated_condensed::update+0xbe8>
    d200: ee00 4b02    	vmla.f64	d4, d0, d2
    d204: ed9f 2bac    	vldr	d2, [pc, #688]          @ 0xd4b8 <orange_dsp::generated_condensed::update+0xbf8>
    d208: ee00 7b02    	vmla.f64	d7, d0, d2
    d20c: ed92 0a00    	vldr	s0, [r2]
    d210: eeb7 0ac0    	vcvt.f64.f32	d0, s0
    d214: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0xd3a8 <orange_dsp::generated_condensed::update+0xae8>
    d218: ee31 ab0a    	vadd.f64	d10, d1, d10
    d21c: ee31 bb0b    	vadd.f64	d11, d1, d11
    d220: ee31 cb0c    	vadd.f64	d12, d1, d12
    d224: ee31 db0d    	vadd.f64	d13, d1, d13
    d228: ee31 eb0e    	vadd.f64	d14, d1, d14
    d22c: ee31 fb0f    	vadd.f64	d15, d1, d15
    d230: ed9d 1b2c    	vldr	d1, [sp, #176]
    d234: ee00 1b02    	vmla.f64	d1, d0, d2
    d238: ee38 0b00    	vadd.f64	d0, d8, d0
    d23c: ed8d 5b04    	vstr	d5, [sp, #16]
    d240: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d244: ed80 0a00    	vstr	s0, [r0]
    d248: ed9d 2b24    	vldr	d2, [sp, #144]
    d24c: ed9d 5b22    	vldr	d5, [sp, #136]
    d250: ed9d 8b1c    	vldr	d8, [sp, #112]
    d254: eeb7 0bc1    	vcvt.f32.f64	s0, d1
    d258: ed80 0a01    	vstr	s0, [r0, #4]
    d25c: ed9d 0b2e    	vldr	d0, [sp, #184]
    d260: ee39 2b02    	vadd.f64	d2, d9, d2
    d264: ee38 8b05    	vadd.f64	d8, d8, d5
    d268: ed9d 5b20    	vldr	d5, [sp, #128]
    d26c: ed9d 9b1a    	vldr	d9, [sp, #104]
    d270: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d274: ed80 0a02    	vstr	s0, [r0, #8]
    d278: ee39 9b05    	vadd.f64	d9, d9, d5
    d27c: ed9d 5b1e    	vldr	d5, [sp, #120]
    d280: ed9d 0b2a    	vldr	d0, [sp, #168]
    d284: ee3a ab05    	vadd.f64	d10, d10, d5
    d288: ed9d 5b18    	vldr	d5, [sp, #96]
    d28c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d290: ed80 0a03    	vstr	s0, [r0, #12]
    d294: ed9d 0b28    	vldr	d0, [sp, #160]
    d298: ee3b bb05    	vadd.f64	d11, d11, d5
    d29c: ed9d 5b16    	vldr	d5, [sp, #88]
    d2a0: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d2a4: ed80 0a04    	vstr	s0, [r0, #16]
    d2a8: ee3c cb05    	vadd.f64	d12, d12, d5
    d2ac: ed9d 5b14    	vldr	d5, [sp, #80]
    d2b0: ed9d 0b26    	vldr	d0, [sp, #152]
    d2b4: ee3d db05    	vadd.f64	d13, d13, d5
    d2b8: ed9d 5b12    	vldr	d5, [sp, #72]
    d2bc: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d2c0: ed80 0a05    	vstr	s0, [r0, #20]
    d2c4: eeb7 0bc2    	vcvt.f32.f64	s0, d2
    d2c8: ed80 0a06    	vstr	s0, [r0, #24]
    d2cc: ee3e eb05    	vadd.f64	d14, d14, d5
    d2d0: ed9d 5b10    	vldr	d5, [sp, #64]
    d2d4: eeb7 0bc8    	vcvt.f32.f64	s0, d8
    d2d8: ed80 0a07    	vstr	s0, [r0, #28]
    d2dc: eeb7 0bc9    	vcvt.f32.f64	s0, d9
    d2e0: ed80 0a08    	vstr	s0, [r0, #32]
    d2e4: ee3f 5b05    	vadd.f64	d5, d15, d5
    d2e8: eeb7 0bca    	vcvt.f32.f64	s0, d10
    d2ec: ed80 0a09    	vstr	s0, [r0, #36]
    d2f0: ed8d 5b24    	vstr	d5, [sp, #144]
    d2f4: eeb7 0bcb    	vcvt.f32.f64	s0, d11
    d2f8: ed80 0a0a    	vstr	s0, [r0, #40]
    d2fc: eeb7 0bcc    	vcvt.f32.f64	s0, d12
    d300: ed80 0a0b    	vstr	s0, [r0, #44]
    d304: eeb7 0bcd    	vcvt.f32.f64	s0, d13
    d308: ed80 0a0c    	vstr	s0, [r0, #48]
    d30c: eeb7 0bce    	vcvt.f32.f64	s0, d14
    d310: ed80 0a0d    	vstr	s0, [r0, #52]
    d314: ed9d 0b24    	vldr	d0, [sp, #144]
    d318: ed9d 5b0a    	vldr	d5, [sp, #40]
    d31c: ed9d fb08    	vldr	d15, [sp, #32]
    d320: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d324: ed80 0a0e    	vstr	s0, [r0, #56]
    d328: ed9d 0b0e    	vldr	d0, [sp, #56]
    d32c: ee3f 5b05    	vadd.f64	d5, d15, d5
    d330: ed8d 5b2c    	vstr	d5, [sp, #176]
    d334: ed9d 5b06    	vldr	d5, [sp, #24]
    d338: ed9d fb04    	vldr	d15, [sp, #16]
    d33c: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d340: ed80 0a0f    	vstr	s0, [r0, #60]
    d344: ed9d 0b0c    	vldr	d0, [sp, #48]
    d348: ee3f 5b05    	vadd.f64	d5, d15, d5
    d34c: ed9d fb02    	vldr	d15, [sp, #8]
    d350: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d354: ed80 0a10    	vstr	s0, [r0, #64]
    d358: ee3f 6b06    	vadd.f64	d6, d15, d6
    d35c: ed9d fb00    	vldr	d15, [sp]
    d360: ed9d 0b2c    	vldr	d0, [sp, #176]
    d364: ee3f 3b03    	vadd.f64	d3, d15, d3
    d368: eeb7 0bc0    	vcvt.f32.f64	s0, d0
    d36c: ed80 0a11    	vstr	s0, [r0, #68]
    d370: eeb7 0bc5    	vcvt.f32.f64	s0, d5
    d374: ed80 0a12    	vstr	s0, [r0, #72]
    d378: eeb7 0bc6    	vcvt.f32.f64	s0, d6
    d37c: ed80 0a13    	vstr	s0, [r0, #76]
    d380: eeb7 0bc3    	vcvt.f32.f64	s0, d3
    d384: ed80 0a14    	vstr	s0, [r0, #80]
    d388: eeb7 0bc4    	vcvt.f32.f64	s0, d4
    d38c: ed80 0a15    	vstr	s0, [r0, #84]
    d390: eeb7 0bc7    	vcvt.f32.f64	s0, d7
    d394: ed80 0a16    	vstr	s0, [r0, #88]
    d398: b030         	add	sp, #0xc0
    d39a: ecbd 8b10    	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
    d39e: bd80         	pop	{r7, pc}
		...
    d3a8: 00 e0 35 df  	.word	0xdf35e000
    d3ac: 12 5d 23 3f  	.word	0x3f235d12
    d3b0: 00 40 b2 d2  	.word	0xd2b24000
    d3b4: 8e 3e f2 3e  	.word	0x3ef23e8e
    d3b8: 00 40 3c 73  	.word	0x733c4000
    d3bc: b9 32 02 3f  	.word	0x3f0232b9
    d3c0: 08 f7 83 70  	.word	0x7083f708
    d3c4: 57 67 a2 3f  	.word	0x3fa26757
    d3c8: 70 97 28 9d  	.word	0x9d289770
    d3cc: 67 5b b2 3f  	.word	0x3fb25b67
    d3d0: 00 18 07 f2  	.word	0xf2071800
    d3d4: 36 36 11 bf  	.word	0xbf113636
    d3d8: 00 2c 41 07  	.word	0x07412c00
    d3dc: 0d 2b 21 bf  	.word	0xbf212b0d
    d3e0: 00 11 6e ab  	.word	0xab6e1100
    d3e4: 66 c0 49 3f  	.word	0x3f49c066
    d3e8: 00 57 e3 c4  	.word	0xc4e35700
    d3ec: b2 af 59 3f  	.word	0x3f59afb2
    d3f0: 00 00 53 f5  	.word	0xf5530000
    d3f4: 24 27 eb 3e  	.word	0x3eeb2724
    d3f8: 00 00 83 5f  	.word	0x5f830000
    d3fc: 88 15 fb 3e  	.word	0x3efb1588
    d400: 30 b5 9f 60  	.word	0x609fb530
    d404: ab e5 d3 3f  	.word	0x3fd3e5ab
    d408: 3b cc c8 6a  	.word	0x6ac8cc3b
    d40c: c2 ed a6 3f  	.word	0x3fa6edc2
    d410: c8 8f ef 10  	.word	0x10ef8fc8
    d414: 81 d8 dd bf  	.word	0xbfddd881
    d418: 28 3f 82 e4  	.word	0xe4823f28
    d41c: 69 54 e5 3f  	.word	0x3fe55469
    d420: bf 80 ca 02  	.word	0x02ca80bf
    d424: ca a2 ed 3e  	.word	0x3eeda2ca
    d428: e4 27 14 ca  	.word	0xca1427e4
    d42c: 93 12 26 3f  	.word	0x3f261293
    d430: f7 82 13 a7  	.word	0xa71382f7
    d434: 09 7c d7 bf  	.word	0xbfd77c09
    d438: 7b 84 3a 2a  	.word	0x2a3a847b
    d43c: 5a 5f c0 3f  	.word	0x3fc05f5a
    d440: cc 5e bc b6  	.word	0xb6bc5ecc
    d444: a2 bc e5 bf  	.word	0xbfe5bca2
    d448: 15 be b6 e5  	.word	0xe5b6be15
    d44c: 6d 7e c0 3f  	.word	0x3fc07e6d
    d450: 00 90 99 b0  	.word	0xb0999000
    d454: 0f 3d 03 bf  	.word	0xbf033d0f
    d458: 36 0c 56 03  	.word	0x03560c36
    d45c: a1 54 e5 3f  	.word	0x3fe554a1
    d460: 00 60 f1 d0  	.word	0xd0f16000
    d464: 95 1e 18 bf  	.word	0xbf181e95
    d468: 00 70 fc 18  	.word	0x18fc7000
    d46c: 94 61 03 bf  	.word	0xbf036194
    d470: d2 4f d6 fa  	.word	0xfad64fd2
    d474: 97 86 f2 be  	.word	0xbef28697
    d478: b5 2c 68 6e  	.word	0x6e682cb5
    d47c: 31 53 e5 3f  	.word	0x3fe55331
    d480: 00 80 e7 1d  	.word	0x1de78000
    d484: d3 ae 39 3f  	.word	0x3f39aed3
    d488: 00 d8 8b f9  	.word	0xf98bd800
    d48c: 3d 28 27 bf  	.word	0xbf27283d
    d490: ca 9f ba 05  	.word	0x05ba9fca
    d494: 70 52 e5 3f  	.word	0x3fe55270
    d498: 00 e4 28 7b  	.word	0x7b28e400
    d49c: 2e 5e 31 3f  	.word	0x3f315e2e
    d4a0: 5d ef 75 b1  	.word	0xb175ef5d
    d4a4: 41 55 e5 3f  	.word	0x3fe55541
    d4a8: 77 21 f7 18  	.word	0x18f72177
    d4ac: cf 75 ed 3e  	.word	0x3eed75cf
    d4b0: 21 8e 90 51  	.word	0x51908e21
    d4b4: b7 61 83 3f  	.word	0x3f8361b7
    d4b8: ab 9c 16 b4  	.word	0xb4169cab
    d4bc: b5 8b ef 3f  	.word	0x3fef8bb5

0000d4c0 <orange_dsp::condensed::solve>:
    d4c0: b5f0         	push	{r4, r5, r6, r7, lr}
    d4c2: af03         	add	r7, sp, #0xc
    d4c4: e92d 0b00    	push.w	{r8, r9, r11}
    d4c8: b083         	sub	sp, #0xc
    d4ca: 2a01         	cmp	r2, #0x1
    d4cc: f04f 0e00    	mov.w	lr, #0x0
    d4d0: d923         	bls	0xd51a <orange_dsp::condensed::solve+0x5a> @ imm = #0x46
    d4d2: ed90 0a03    	vldr	s0, [r0, #12]
    d4d6: ed90 1a00    	vldr	s2, [r0]
    d4da: eeb0 0ac0    	vabs.f32	s0, s0
    d4de: eeb0 1ac1    	vabs.f32	s2, s2
    d4e2: eeb4 0a41    	vcmp.f32	s0, s2
    d4e6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    d4ea: bfc8         	it	gt
    d4ec: f04f 0e01    	movgt.w	lr, #0x1
    d4f0: 2a02         	cmp	r2, #0x2
    d4f2: d012         	beq	0xd51a <orange_dsp::condensed::solve+0x5a> @ imm = #0x24
    d4f4: eb0e 064e    	add.w	r6, lr, lr, lsl #1
    d4f8: ed90 0a06    	vldr	s0, [r0, #24]
    d4fc: eeb0 0ac0    	vabs.f32	s0, s0
    d500: eb00 0686    	add.w	r6, r0, r6, lsl #2
    d504: ed96 1a00    	vldr	s2, [r6]
    d508: eeb0 1ac1    	vabs.f32	s2, s2
    d50c: eeb4 0a41    	vcmp.f32	s0, s2
    d510: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    d514: bfc8         	it	gt
    d516: f04f 0e02    	movgt.w	lr, #0x2
    d51a: eb0e 064e    	add.w	r6, lr, lr, lsl #1
    d51e: f8d0 c000    	ldr.w	r12, [r0]
    d522: eb00 0586    	add.w	r5, r0, r6, lsl #2
    d526: f850 3026    	ldr.w	r3, [r0, r6, lsl #2]
    d52a: e9d5 4801    	ldrd	r4, r8, [r5, #4]
    d52e: 6003         	str	r3, [r0]
    d530: 6843         	ldr	r3, [r0, #0x4]
    d532: 6044         	str	r4, [r0, #0x4]
    d534: 6884         	ldr	r4, [r0, #0x8]
    d536: f8c0 8008    	str.w	r8, [r0, #0x8]
    d53a: f840 c026    	str.w	r12, [r0, r6, lsl #2]
    d53e: 680e         	ldr	r6, [r1]
    d540: e9c5 3401    	strd	r3, r4, [r5, #4]
    d544: ed90 0a00    	vldr	s0, [r0]
    d548: f851 502e    	ldr.w	r5, [r1, lr, lsl #2]
    d54c: ee10 3a10    	vmov	r3, s0
    d550: 600d         	str	r5, [r1]
    d552: f841 602e    	str.w	r6, [r1, lr, lsl #2]
    d556: f023 4300    	bic	r3, r3, #0x80000000
    d55a: f1b3 4fff    	cmp.w	r3, #0x7f800000
    d55e: f04f 0300    	mov.w	r3, #0x0
    d562: f280 8119    	bge.w	0xd798 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x232
    d566: eeb0 1ac0    	vabs.f32	s2, s0
    d56a: ed9f 0a8e    	vldr	s0, [pc, #568]          @ 0xd7a4 <orange_dsp::condensed::solve+0x2e4>
    d56e: eeb4 1a40    	vcmp.f32	s2, s0
    d572: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    d576: f100 810f    	bmi.w	0xd798 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x21e
    d57a: 2a02         	cmp	r2, #0x2
    d57c: f0c0 80b9    	blo.w	0xd6f2 <orange_dsp::condensed::solve+0x232> @ imm = #0x172
    d580: ed90 1a00    	vldr	s2, [r0]
    d584: ed90 2a03    	vldr	s4, [r0, #12]
    d588: ee82 1a01    	vdiv.f32	s2, s4, s2
    d58c: ed90 2a01    	vldr	s4, [r0, #4]
    d590: ed90 3a04    	vldr	s6, [r0, #16]
    d594: 2a02         	cmp	r2, #0x2
    d596: ee01 3a42    	vmls.f32	s6, s2, s4
    d59a: ed80 3a04    	vstr	s6, [r0, #16]
    d59e: d10f         	bne	0xd5c0 <orange_dsp::condensed::solve+0x100> @ imm = #0x1e
    d5a0: ed91 2a00    	vldr	s4, [r1]
    d5a4: ed91 3a01    	vldr	s6, [r1, #4]
    d5a8: ee01 3a42    	vmls.f32	s6, s2, s4
    d5ac: f04f 0e01    	mov.w	lr, #0x1
    d5b0: f04f 0c00    	mov.w	r12, #0x0
    d5b4: ed81 3a01    	vstr	s6, [r1, #4]
    d5b8: e040         	b	0xd63c <orange_dsp::condensed::solve+0x17c> @ imm = #0x80
    d5ba: bf00         	nop
    d5bc: bf00         	nop
    d5be: bf00         	nop
    d5c0: ed90 2a00    	vldr	s4, [r0]
    d5c4: ed90 6a07    	vldr	s12, [r0, #28]
    d5c8: ed90 3a06    	vldr	s6, [r0, #24]
    d5cc: ed90 4a05    	vldr	s8, [r0, #20]
    d5d0: ee83 2a02    	vdiv.f32	s4, s6, s4
    d5d4: ed90 3a01    	vldr	s6, [r0, #4]
    d5d8: ed90 5a02    	vldr	s10, [r0, #8]
    d5dc: ed91 7a01    	vldr	s14, [r1, #4]
    d5e0: ee01 4a45    	vmls.f32	s8, s2, s10
    d5e4: edd0 0a08    	vldr	s1, [r0, #32]
    d5e8: ee02 6a43    	vmls.f32	s12, s4, s6
    d5ec: ed91 3a00    	vldr	s6, [r1]
    d5f0: ee01 7a43    	vmls.f32	s14, s2, s6
    d5f4: ed90 1a04    	vldr	s2, [r0, #16]
    d5f8: ee42 0a45    	vmls.f32	s1, s4, s10
    d5fc: ed91 5a02    	vldr	s10, [r1, #8]
    d600: ee02 5a43    	vmls.f32	s10, s4, s6
    d604: 1ed3         	subs	r3, r2, #0x3
    d606: eeb0 1ac1    	vabs.f32	s2, s2
    d60a: f04f 0e01    	mov.w	lr, #0x1
    d60e: fab3 f483    	clz	r4, r3
    d612: ed80 4a05    	vstr	s8, [r0, #20]
    d616: eeb0 2ac6    	vabs.f32	s4, s12
    d61a: ea4f 1c54    	lsr.w	r12, r4, #0x5
    d61e: ed81 7a01    	vstr	s14, [r1, #4]
    d622: ed80 6a07    	vstr	s12, [r0, #28]
    d626: edc0 0a08    	vstr	s1, [r0, #32]
    d62a: eeb4 2a41    	vcmp.f32	s4, s2
    d62e: ed81 5a02    	vstr	s10, [r1, #8]
    d632: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    d636: bfc8         	it	gt
    d638: f04f 0e02    	movgt.w	lr, #0x2
    d63c: eb0e 044e    	add.w	r4, lr, lr, lsl #1
    d640: f8d0 800c    	ldr.w	r8, [r0, #0xc]
    d644: eb00 0384    	add.w	r3, r0, r4, lsl #2
    d648: f850 5024    	ldr.w	r5, [r0, r4, lsl #2]
    d64c: e9d3 6901    	ldrd	r6, r9, [r3, #4]
    d650: 60c5         	str	r5, [r0, #0xc]
    d652: 6905         	ldr	r5, [r0, #0x10]
    d654: 6106         	str	r6, [r0, #0x10]
    d656: 6946         	ldr	r6, [r0, #0x14]
    d658: f8c0 9014    	str.w	r9, [r0, #0x14]
    d65c: e9c3 5601    	strd	r5, r6, [r3, #4]
    d660: ed90 1a04    	vldr	s2, [r0, #16]
    d664: f840 8024    	str.w	r8, [r0, r4, lsl #2]
    d668: ee11 3a10    	vmov	r3, s2
    d66c: 684c         	ldr	r4, [r1, #0x4]
    d66e: f851 502e    	ldr.w	r5, [r1, lr, lsl #2]
    d672: 604d         	str	r5, [r1, #0x4]
    d674: f841 402e    	str.w	r4, [r1, lr, lsl #2]
    d678: f023 4300    	bic	r3, r3, #0x80000000
    d67c: f1b3 4fff    	cmp.w	r3, #0x7f800000
    d680: f04f 0300    	mov.w	r3, #0x0
    d684: f280 8088    	bge.w	0xd798 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x110
    d688: eeb0 1ac1    	vabs.f32	s2, s2
    d68c: eeb4 1a40    	vcmp.f32	s2, s0
    d690: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    d694: f100 8080    	bmi.w	0xd798 <orange_dsp::condensed::solve+0x2d8> @ imm = #0x100
    d698: f1bc 0f00    	cmp.w	r12, #0x0
    d69c: d015         	beq	0xd6ca <orange_dsp::condensed::solve+0x20a> @ imm = #0x2a
    d69e: ed90 1a04    	vldr	s2, [r0, #16]
    d6a2: ed90 2a07    	vldr	s4, [r0, #28]
    d6a6: ee82 1a01    	vdiv.f32	s2, s4, s2
    d6aa: ed90 2a05    	vldr	s4, [r0, #20]
    d6ae: ed90 3a08    	vldr	s6, [r0, #32]
    d6b2: ed91 4a02    	vldr	s8, [r1, #8]
    d6b6: ee01 3a42    	vmls.f32	s6, s2, s4
    d6ba: ed91 2a01    	vldr	s4, [r1, #4]
    d6be: ee01 4a42    	vmls.f32	s8, s2, s4
    d6c2: ed80 3a08    	vstr	s6, [r0, #32]
    d6c6: ed81 4a02    	vstr	s8, [r1, #8]
    d6ca: 2a02         	cmp	r2, #0x2
    d6cc: d011         	beq	0xd6f2 <orange_dsp::condensed::solve+0x232> @ imm = #0x22
    d6ce: ed90 1a08    	vldr	s2, [r0, #32]
    d6d2: ee11 3a10    	vmov	r3, s2
    d6d6: f023 4300    	bic	r3, r3, #0x80000000
    d6da: f1b3 4fff    	cmp.w	r3, #0x7f800000
    d6de: f04f 0300    	mov.w	r3, #0x0
    d6e2: da59         	bge	0xd798 <orange_dsp::condensed::solve+0x2d8> @ imm = #0xb2
    d6e4: eeb0 1ac1    	vabs.f32	s2, s2
    d6e8: eeb4 1a40    	vcmp.f32	s2, s0
    d6ec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    d6f0: d452         	bmi	0xd798 <orange_dsp::condensed::solve+0x2d8> @ imm = #0xa4
    d6f2: 1e53         	subs	r3, r2, #0x1
    d6f4: eb03 0643    	add.w	r6, r3, r3, lsl #1
    d6f8: eb01 0483    	add.w	r4, r1, r3, lsl #2
    d6fc: eb00 0686    	add.w	r6, r0, r6, lsl #2
    d700: eb06 0683    	add.w	r6, r6, r3, lsl #2
    d704: ed94 0a00    	vldr	s0, [r4]
    d708: ed96 1a00    	vldr	s2, [r6]
    d70c: ee80 0a01    	vdiv.f32	s0, s0, s2
    d710: ed84 0a00    	vstr	s0, [r4]
    d714: d03f         	beq	0xd796 <orange_dsp::condensed::solve+0x2d6> @ imm = #0x7e
    d716: f1b2 0e02    	subs.w	lr, r2, #0x2
    d71a: ed94 1a00    	vldr	s2, [r4]
    d71e: eb0e 064e    	add.w	r6, lr, lr, lsl #1
    d722: eb01 0c8e    	add.w	r12, r1, lr, lsl #2
    d726: eb00 0586    	add.w	r5, r0, r6, lsl #2
    d72a: eb05 0383    	add.w	r3, r5, r3, lsl #2
    d72e: ed9c 2a00    	vldr	s4, [r12]
    d732: ed93 0a00    	vldr	s0, [r3]
    d736: eb05 038e    	add.w	r3, r5, lr, lsl #2
    d73a: ee00 2a41    	vmls.f32	s4, s0, s2
    d73e: ed93 0a00    	vldr	s0, [r3]
    d742: ee82 0a00    	vdiv.f32	s0, s4, s0
    d746: ed8c 0a00    	vstr	s0, [r12]
    d74a: d024         	beq	0xd796 <orange_dsp::condensed::solve+0x2d6> @ imm = #0x48
    d74c: 1ed3         	subs	r3, r2, #0x3
    d74e: ed9c 1a00    	vldr	s2, [r12]
    d752: eb03 0443    	add.w	r4, r3, r3, lsl #1
    d756: eb01 0583    	add.w	r5, r1, r3, lsl #2
    d75a: eb00 0084    	add.w	r0, r0, r4, lsl #2
    d75e: eb00 068e    	add.w	r6, r0, lr, lsl #2
    d762: ed95 2a00    	vldr	s4, [r5]
    d766: ed96 0a00    	vldr	s0, [r6]
    d76a: f06f 0603    	mvn	r6, #0x3
    d76e: eb06 0282    	add.w	r2, r6, r2, lsl #2
    d772: ee00 2a41    	vmls.f32	s4, s0, s2
    d776: 1886         	adds	r6, r0, r2
    d778: 4411         	add	r1, r2
    d77a: eb00 0083    	add.w	r0, r0, r3, lsl #2
    d77e: ed96 0a00    	vldr	s0, [r6]
    d782: ed91 1a00    	vldr	s2, [r1]
    d786: ee00 2a41    	vmls.f32	s4, s0, s2
    d78a: ed90 0a00    	vldr	s0, [r0]
    d78e: ee82 0a00    	vdiv.f32	s0, s4, s0
    d792: ed85 0a00    	vstr	s0, [r5]
    d796: 2301         	movs	r3, #0x1
    d798: 4618         	mov	r0, r3
    d79a: b003         	add	sp, #0xc
    d79c: e8bd 0b00    	pop.w	{r8, r9, r11}
    d7a0: bdf0         	pop	{r4, r5, r6, r7, pc}
    d7a2: bf00         	nop
    d7a4: 08 e5 3c 1e  	.word	0x1e3ce508

0000d7a8 <__aeabi_memcpy4>:
    d7a8: 2a04         	cmp	r2, #0x4
    d7aa: d309         	blo	0xd7c0 <__aeabi_memcpy4+0x18> @ imm = #0x12
    d7ac: b5d0         	push	{r4, r6, r7, lr}
    d7ae: af02         	add	r7, sp, #0x8
    d7b0: f1a2 0e04    	sub.w	lr, r2, #0x4
    d7b4: ea6f 030e    	mvn.w	r3, lr
    d7b8: f013 0f0c    	tst.w	r3, #0xc
    d7bc: d106         	bne	0xd7cc <__aeabi_memcpy4+0x24> @ imm = #0xc
    d7be: e023         	b	0xd808 <__aeabi_memcpy4+0x60> @ imm = #0x46
    d7c0: 460b         	mov	r3, r1
    d7c2: 4684         	mov	r12, r0
    d7c4: 4660         	mov	r0, r12
    d7c6: 4619         	mov	r1, r3
    d7c8: f000 b83c    	b.w	0xd844 <compiler_builtins::mem::memcpy> @ imm = #0x78
    d7cc: 460b         	mov	r3, r1
    d7ce: 4684         	mov	r12, r0
    d7d0: f853 4b04    	ldr	r4, [r3], #4
    d7d4: f01e 0f0c    	tst.w	lr, #0xc
    d7d8: f84c 4b04    	str	r4, [r12], #4
    d7dc: d009         	beq	0xd7f2 <__aeabi_memcpy4+0x4a> @ imm = #0x12
    d7de: 684b         	ldr	r3, [r1, #0x4]
    d7e0: 6043         	str	r3, [r0, #0x4]
    d7e2: f00e 030c    	and	r3, lr, #0xc
    d7e6: 2b04         	cmp	r3, #0x4
    d7e8: d107         	bne	0xd7fa <__aeabi_memcpy4+0x52> @ imm = #0xe
    d7ea: 3a08         	subs	r2, #0x8
    d7ec: 3108         	adds	r1, #0x8
    d7ee: 3008         	adds	r0, #0x8
    d7f0: e008         	b	0xd804 <__aeabi_memcpy4+0x5c> @ imm = #0x10
    d7f2: 4672         	mov	r2, lr
    d7f4: 4660         	mov	r0, r12
    d7f6: 4619         	mov	r1, r3
    d7f8: e006         	b	0xd808 <__aeabi_memcpy4+0x60> @ imm = #0xc
    d7fa: 688b         	ldr	r3, [r1, #0x8]
    d7fc: 3a0c         	subs	r2, #0xc
    d7fe: 6083         	str	r3, [r0, #0x8]
    d800: 310c         	adds	r1, #0xc
    d802: 300c         	adds	r0, #0xc
    d804: 4684         	mov	r12, r0
    d806: 460b         	mov	r3, r1
    d808: f1be 0f0c    	cmp.w	lr, #0xc
    d80c: d314         	blo	0xd838 <__aeabi_memcpy4+0x90> @ imm = #0x28
    d80e: 4684         	mov	r12, r0
    d810: 460b         	mov	r3, r1
    d812: 6818         	ldr	r0, [r3]
    d814: 3a10         	subs	r2, #0x10
    d816: f8cc 0000    	str.w	r0, [r12]
    d81a: 2a03         	cmp	r2, #0x3
    d81c: 6858         	ldr	r0, [r3, #0x4]
    d81e: f8cc 0004    	str.w	r0, [r12, #0x4]
    d822: 6898         	ldr	r0, [r3, #0x8]
    d824: f8cc 0008    	str.w	r0, [r12, #0x8]
    d828: 68d8         	ldr	r0, [r3, #0xc]
    d82a: f103 0310    	add.w	r3, r3, #0x10
    d82e: f8cc 000c    	str.w	r0, [r12, #0xc]
    d832: f10c 0c10    	add.w	r12, r12, #0x10
    d836: d8ec         	bhi	0xd812 <__aeabi_memcpy4+0x6a> @ imm = #-0x28
    d838: e8bd 40d0    	pop.w	{r4, r6, r7, lr}
    d83c: 4660         	mov	r0, r12
    d83e: 4619         	mov	r1, r3
    d840: f000 b800    	b.w	0xd844 <compiler_builtins::mem::memcpy> @ imm = #0x0

0000d844 <compiler_builtins::mem::memcpy>:
    d844: b5f0         	push	{r4, r5, r6, r7, lr}
    d846: af03         	add	r7, sp, #0xc
    d848: e92d 0f00    	push.w	{r8, r9, r10, r11}
    d84c: b089         	sub	sp, #0x24
    d84e: 4680         	mov	r8, r0
    d850: 2a10         	cmp	r2, #0x10
    d852: d321         	blo	0xd898 <compiler_builtins::mem::memcpy+0x54> @ imm = #0x42
    d854: f1c8 0000    	rsb.w	r0, r8, #0x0
    d858: f000 0a03    	and	r10, r0, #0x3
    d85c: eb08 030a    	add.w	r3, r8, r10
    d860: 4598         	cmp	r8, r3
    d862: d237         	bhs	0xd8d4 <compiler_builtins::mem::memcpy+0x90> @ imm = #0x6e
    d864: f1aa 0601    	sub.w	r6, r10, #0x1
    d868: 4644         	mov	r4, r8
    d86a: 460d         	mov	r5, r1
    d86c: f1ba 0f00    	cmp.w	r10, #0x0
    d870: d01f         	beq	0xd8b2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x3e
    d872: 460d         	mov	r5, r1
    d874: 4644         	mov	r4, r8
    d876: f815 0b01    	ldrb	r0, [r5], #1
    d87a: f1ba 0f01    	cmp.w	r10, #0x1
    d87e: f804 0b01    	strb	r0, [r4], #1
    d882: d016         	beq	0xd8b2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x2c
    d884: 7848         	ldrb	r0, [r1, #0x1]
    d886: f1ba 0f02    	cmp.w	r10, #0x2
    d88a: f888 0001    	strb.w	r0, [r8, #0x1]
    d88e: d10a         	bne	0xd8a6 <compiler_builtins::mem::memcpy+0x62> @ imm = #0x14
    d890: 1c8d         	adds	r5, r1, #0x2
    d892: f108 0402    	add.w	r4, r8, #0x2
    d896: e00c         	b	0xd8b2 <compiler_builtins::mem::memcpy+0x6e> @ imm = #0x18
    d898: 46c4         	mov	r12, r8
    d89a: eb0c 0302    	add.w	r3, r12, r2
    d89e: 459c         	cmp	r12, r3
    d8a0: f0c0 80e3    	blo.w	0xda6a <compiler_builtins::mem::memcpy+0x226> @ imm = #0x1c6
    d8a4: e10b         	b	0xdabe <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x216
    d8a6: 1ccd         	adds	r5, r1, #0x3
    d8a8: f108 0403    	add.w	r4, r8, #0x3
    d8ac: 7888         	ldrb	r0, [r1, #0x2]
    d8ae: f888 0002    	strb.w	r0, [r8, #0x2]
    d8b2: 2e03         	cmp	r6, #0x3
    d8b4: d30e         	blo	0xd8d4 <compiler_builtins::mem::memcpy+0x90> @ imm = #0x1c
    d8b6: 1f2e         	subs	r6, r5, #0x4
    d8b8: 1f25         	subs	r5, r4, #0x4
    d8ba: f816 0f04    	ldrb	r0, [r6, #4]!
    d8be: f805 0f04    	strb	r0, [r5, #4]!
    d8c2: 7870         	ldrb	r0, [r6, #0x1]
    d8c4: 7068         	strb	r0, [r5, #0x1]
    d8c6: 78b0         	ldrb	r0, [r6, #0x2]
    d8c8: 70a8         	strb	r0, [r5, #0x2]
    d8ca: 78f0         	ldrb	r0, [r6, #0x3]
    d8cc: 70e8         	strb	r0, [r5, #0x3]
    d8ce: 1d28         	adds	r0, r5, #0x4
    d8d0: 4298         	cmp	r0, r3
    d8d2: d1f2         	bne	0xd8ba <compiler_builtins::mem::memcpy+0x76> @ imm = #-0x1c
    d8d4: eba2 0b0a    	sub.w	r11, r2, r10
    d8d8: eb01 040a    	add.w	r4, r1, r10
    d8dc: f02b 0203    	bic	r2, r11, #0x3
    d8e0: f014 0003    	ands	r0, r4, #0x3
    d8e4: eb03 0c02    	add.w	r12, r3, r2
    d8e8: d063         	beq	0xd9b2 <compiler_builtins::mem::memcpy+0x16e> @ imm = #0xc6
    d8ea: f04f 0900    	mov.w	r9, #0x0
    d8ee: f1c0 0604    	rsb.w	r6, r0, #0x4
    d8f2: 9204         	str	r2, [sp, #0x10]
    d8f4: aa08         	add	r2, sp, #0x20
    d8f6: f8cd 9020    	str.w	r9, [sp, #0x20]
    d8fa: 4402         	add	r2, r0
    d8fc: 07f5         	lsls	r5, r6, #0x1f
    d8fe: bf1e         	ittt	ne
    d900: 7825         	ldrbne	r5, [r4]
    d902: 7015         	strbne	r5, [r2]
    d904: f04f 0901    	movne.w	r9, #0x1
    d908: 07b6         	lsls	r6, r6, #0x1e
    d90a: bf44         	itt	mi
    d90c: f834 6009    	ldrhmi.w	r6, [r4, r9]
    d910: f822 6009    	strhmi.w	r6, [r2, r9]
    d914: 1a25         	subs	r5, r4, r0
    d916: 9405         	str	r4, [sp, #0x14]
    d918: 1d1c         	adds	r4, r3, #0x4
    d91a: 9a08         	ldr	r2, [sp, #0x20]
    d91c: ea4f 0ec0    	lsl.w	lr, r0, #0x3
    d920: 4564         	cmp	r4, r12
    d922: f1ce 0400    	rsb.w	r4, lr, #0x0
    d926: e9cd 0402    	strd	r0, r4, [sp, #8]
    d92a: d25b         	bhs	0xd9e4 <compiler_builtins::mem::memcpy+0x1a0> @ imm = #0xb6
    d92c: 4243         	rsbs	r3, r0, #0
    d92e: 4646         	mov	r6, r8
    d930: f8cd b000    	str.w	r11, [sp]
    d934: eb01 0803    	add.w	r8, r1, r3
    d938: f004 0b18    	and	r11, r4, #0x18
    d93c: 9601         	str	r6, [sp, #0x4]
    d93e: eb08 050a    	add.w	r5, r8, r10
    d942: eb06 040a    	add.w	r4, r6, r10
    d946: fa22 f10e    	lsr.w	r1, r2, lr
    d94a: f8d5 9004    	ldr.w	r9, [r5, #0x4]
    d94e: fa09 f20b    	lsl.w	r2, r9, r11
    d952: 4311         	orrs	r1, r2
    d954: 4622         	mov	r2, r4
    d956: f842 1b08    	str	r1, [r2], #8
    d95a: 4562         	cmp	r2, r12
    d95c: d244         	bhs	0xd9e8 <compiler_builtins::mem::memcpy+0x1a4> @ imm = #0x88
    d95e: 68a9         	ldr	r1, [r5, #0x8]
    d960: fa29 f30e    	lsr.w	r3, r9, lr
    d964: fa01 f00b    	lsl.w	r0, r1, r11
    d968: 4318         	orrs	r0, r3
    d96a: f104 030c    	add.w	r3, r4, #0xc
    d96e: 4563         	cmp	r3, r12
    d970: 6060         	str	r0, [r4, #0x4]
    d972: d23c         	bhs	0xd9ee <compiler_builtins::mem::memcpy+0x1aa> @ imm = #0x78
    d974: f8d5 900c    	ldr.w	r9, [r5, #0xc]
    d978: fa21 f00e    	lsr.w	r0, r1, lr
    d97c: fa09 f10b    	lsl.w	r1, r9, r11
    d980: 4308         	orrs	r0, r1
    d982: 6010         	str	r0, [r2]
    d984: f104 0010    	add.w	r0, r4, #0x10
    d988: 4560         	cmp	r0, r12
    d98a: d235         	bhs	0xd9f8 <compiler_builtins::mem::memcpy+0x1b4> @ imm = #0x6a
    d98c: 692a         	ldr	r2, [r5, #0x10]
    d98e: fa29 f00e    	lsr.w	r0, r9, lr
    d992: 3610         	adds	r6, #0x10
    d994: f108 0810    	add.w	r8, r8, #0x10
    d998: fa02 f10b    	lsl.w	r1, r2, r11
    d99c: 4308         	orrs	r0, r1
    d99e: 6018         	str	r0, [r3]
    d9a0: eb06 030a    	add.w	r3, r6, r10
    d9a4: 1d18         	adds	r0, r3, #0x4
    d9a6: 4560         	cmp	r0, r12
    d9a8: d3c9         	blo	0xd93e <compiler_builtins::mem::memcpy+0xfa> @ imm = #-0x6e
    d9aa: eb08 050a    	add.w	r5, r8, r10
    d9ae: 4691         	mov	r9, r2
    d9b0: e023         	b	0xd9fa <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x46
    d9b2: 4563         	cmp	r3, r12
    d9b4: d252         	bhs	0xda5c <compiler_builtins::mem::memcpy+0x218> @ imm = #0xa4
    d9b6: 4621         	mov	r1, r4
    d9b8: 6808         	ldr	r0, [r1]
    d9ba: f843 0b04    	str	r0, [r3], #4
    d9be: 4563         	cmp	r3, r12
    d9c0: d24c         	bhs	0xda5c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x98
    d9c2: 6848         	ldr	r0, [r1, #0x4]
    d9c4: f843 0b04    	str	r0, [r3], #4
    d9c8: 4563         	cmp	r3, r12
    d9ca: bf3e         	ittt	lo
    d9cc: 6888         	ldrlo	r0, [r1, #0x8]
    d9ce: f843 0b04    	strlo	r0, [r3], #4
    d9d2: 4563         	cmplo	r3, r12
    d9d4: d242         	bhs	0xda5c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x84
    d9d6: 68c8         	ldr	r0, [r1, #0xc]
    d9d8: 3110         	adds	r1, #0x10
    d9da: f843 0b04    	str	r0, [r3], #4
    d9de: 4563         	cmp	r3, r12
    d9e0: d3ea         	blo	0xd9b8 <compiler_builtins::mem::memcpy+0x174> @ imm = #-0x2c
    d9e2: e03b         	b	0xda5c <compiler_builtins::mem::memcpy+0x218> @ imm = #0x76
    d9e4: 4691         	mov	r9, r2
    d9e6: e00a         	b	0xd9fe <compiler_builtins::mem::memcpy+0x1ba> @ imm = #0x14
    d9e8: 3504         	adds	r5, #0x4
    d9ea: 1d23         	adds	r3, r4, #0x4
    d9ec: e005         	b	0xd9fa <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0xa
    d9ee: 3508         	adds	r5, #0x8
    d9f0: f104 0308    	add.w	r3, r4, #0x8
    d9f4: 4689         	mov	r9, r1
    d9f6: e000         	b	0xd9fa <compiler_builtins::mem::memcpy+0x1b6> @ imm = #0x0
    d9f8: 350c         	adds	r5, #0xc
    d9fa: e9dd b800    	ldrd	r11, r8, [sp]
    d9fe: 9802         	ldr	r0, [sp, #0x8]
    da00: 2200         	movs	r2, #0x0
    da02: f88d 201c    	strb.w	r2, [sp, #0x1c]
    da06: 2801         	cmp	r0, #0x1
    da08: f807 2c26    	strb	r2, [r7, #-38]
    da0c: d10e         	bne	0xda2c <compiler_builtins::mem::memcpy+0x1e8> @ imm = #0x1c
    da0e: ae07         	add	r6, sp, #0x1c
    da10: 2400         	movs	r4, #0x0
    da12: 2000         	movs	r0, #0x0
    da14: 9905         	ldr	r1, [sp, #0x14]
    da16: 07c9         	lsls	r1, r1, #0x1f
    da18: d013         	beq	0xda42 <compiler_builtins::mem::memcpy+0x1fe> @ imm = #0x26
    da1a: 1d29         	adds	r1, r5, #0x4
    da1c: 5c08         	ldrb	r0, [r1, r0]
    da1e: 7030         	strb	r0, [r6]
    da20: f817 0c26    	ldrb	r0, [r7, #-38]
    da24: f89d 201c    	ldrb.w	r2, [sp, #0x1c]
    da28: 0400         	lsls	r0, r0, #0x10
    da2a: e00b         	b	0xda44 <compiler_builtins::mem::memcpy+0x200> @ imm = #0x16
    da2c: 7968         	ldrb	r0, [r5, #0x5]
    da2e: f1a7 0626    	sub.w	r6, r7, #0x26
    da32: 792a         	ldrb	r2, [r5, #0x4]
    da34: f88d 201c    	strb.w	r2, [sp, #0x1c]
    da38: 0204         	lsls	r4, r0, #0x8
    da3a: 2002         	movs	r0, #0x2
    da3c: 9905         	ldr	r1, [sp, #0x14]
    da3e: 07c9         	lsls	r1, r1, #0x1f
    da40: d1eb         	bne	0xda1a <compiler_builtins::mem::memcpy+0x1d6> @ imm = #-0x2a
    da42: 2000         	movs	r0, #0x0
    da44: 4320         	orrs	r0, r4
    da46: fa29 f10e    	lsr.w	r1, r9, lr
    da4a: 4310         	orrs	r0, r2
    da4c: 9a03         	ldr	r2, [sp, #0xc]
    da4e: f002 0218    	and	r2, r2, #0x18
    da52: 4090         	lsls	r0, r2
    da54: e9dd 2404    	ldrd	r2, r4, [sp, #16]
    da58: 4308         	orrs	r0, r1
    da5a: 6018         	str	r0, [r3]
    da5c: 18a1         	adds	r1, r4, r2
    da5e: f00b 0203    	and	r2, r11, #0x3
    da62: eb0c 0302    	add.w	r3, r12, r2
    da66: 459c         	cmp	r12, r3
    da68: d229         	bhs	0xdabe <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x52
    da6a: 1e56         	subs	r6, r2, #0x1
    da6c: f012 0003    	ands	r0, r2, #0x3
    da70: d012         	beq	0xda98 <compiler_builtins::mem::memcpy+0x254> @ imm = #0x24
    da72: 460a         	mov	r2, r1
    da74: 4665         	mov	r5, r12
    da76: f812 4b01    	ldrb	r4, [r2], #1
    da7a: 2801         	cmp	r0, #0x1
    da7c: f805 4b01    	strb	r4, [r5], #1
    da80: d00c         	beq	0xda9c <compiler_builtins::mem::memcpy+0x258> @ imm = #0x18
    da82: 784a         	ldrb	r2, [r1, #0x1]
    da84: 2802         	cmp	r0, #0x2
    da86: f88c 2001    	strb.w	r2, [r12, #0x1]
    da8a: d11d         	bne	0xdac8 <compiler_builtins::mem::memcpy+0x284> @ imm = #0x3a
    da8c: 1c8a         	adds	r2, r1, #0x2
    da8e: f10c 0502    	add.w	r5, r12, #0x2
    da92: 2e03         	cmp	r6, #0x3
    da94: d204         	bhs	0xdaa0 <compiler_builtins::mem::memcpy+0x25c> @ imm = #0x8
    da96: e012         	b	0xdabe <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x24
    da98: 4665         	mov	r5, r12
    da9a: 460a         	mov	r2, r1
    da9c: 2e03         	cmp	r6, #0x3
    da9e: d30e         	blo	0xdabe <compiler_builtins::mem::memcpy+0x27a> @ imm = #0x1c
    daa0: 1f11         	subs	r1, r2, #0x4
    daa2: 1f2a         	subs	r2, r5, #0x4
    daa4: f811 0f04    	ldrb	r0, [r1, #4]!
    daa8: f802 0f04    	strb	r0, [r2, #4]!
    daac: 7848         	ldrb	r0, [r1, #0x1]
    daae: 7050         	strb	r0, [r2, #0x1]
    dab0: 7888         	ldrb	r0, [r1, #0x2]
    dab2: 7090         	strb	r0, [r2, #0x2]
    dab4: 78c8         	ldrb	r0, [r1, #0x3]
    dab6: 70d0         	strb	r0, [r2, #0x3]
    dab8: 1d10         	adds	r0, r2, #0x4
    daba: 4298         	cmp	r0, r3
    dabc: d1f2         	bne	0xdaa4 <compiler_builtins::mem::memcpy+0x260> @ imm = #-0x1c
    dabe: 4640         	mov	r0, r8
    dac0: b009         	add	sp, #0x24
    dac2: e8bd 0f00    	pop.w	{r8, r9, r10, r11}
    dac6: bdf0         	pop	{r4, r5, r6, r7, pc}
    dac8: 1cca         	adds	r2, r1, #0x3
    daca: f10c 0503    	add.w	r5, r12, #0x3
    dace: 7888         	ldrb	r0, [r1, #0x2]
    dad0: f88c 0002    	strb.w	r0, [r12, #0x2]
    dad4: 2e03         	cmp	r6, #0x3
    dad6: d2e3         	bhs	0xdaa0 <compiler_builtins::mem::memcpy+0x25c> @ imm = #-0x3a
    dad8: e7f1         	b	0xdabe <compiler_builtins::mem::memcpy+0x27a> @ imm = #-0x1e

0000dada <__aeabi_memclr4>:
    dada: b580         	push	{r7, lr}
    dadc: 466f         	mov	r7, sp
    dade: 2904         	cmp	r1, #0x4
    dae0: d305         	blo	0xdaee <__aeabi_memclr4+0x14> @ imm = #0xa
    dae2: 1f0b         	subs	r3, r1, #0x4
    dae4: 43da         	mvns	r2, r3
    dae6: f012 0f0c    	tst.w	r2, #0xc
    daea: d102         	bne	0xdaf2 <__aeabi_memclr4+0x18> @ imm = #0x4
    daec: e01a         	b	0xdb24 <__aeabi_memclr4+0x4a> @ imm = #0x34
    daee: 4602         	mov	r2, r0
    daf0: e024         	b	0xdb3c <__aeabi_memclr4+0x62> @ imm = #0x48
    daf2: f04f 0c00    	mov.w	r12, #0x0
    daf6: 4602         	mov	r2, r0
    daf8: f842 cb04    	str	r12, [r2], #4
    dafc: f013 0f0c    	tst.w	r3, #0xc
    db00: d008         	beq	0xdb14 <__aeabi_memclr4+0x3a> @ imm = #0x10
    db02: f003 020c    	and	r2, r3, #0xc
    db06: f8c0 c004    	str.w	r12, [r0, #0x4]
    db0a: 2a04         	cmp	r2, #0x4
    db0c: d105         	bne	0xdb1a <__aeabi_memclr4+0x40> @ imm = #0xa
    db0e: 3908         	subs	r1, #0x8
    db10: 3008         	adds	r0, #0x8
    db12: e006         	b	0xdb22 <__aeabi_memclr4+0x48> @ imm = #0xc
    db14: 4619         	mov	r1, r3
    db16: 4610         	mov	r0, r2
    db18: e004         	b	0xdb24 <__aeabi_memclr4+0x4a> @ imm = #0x8
    db1a: 2200         	movs	r2, #0x0
    db1c: 390c         	subs	r1, #0xc
    db1e: 6082         	str	r2, [r0, #0x8]
    db20: 300c         	adds	r0, #0xc
    db22: 4602         	mov	r2, r0
    db24: 2b0c         	cmp	r3, #0xc
    db26: d309         	blo	0xdb3c <__aeabi_memclr4+0x62> @ imm = #0x12
    db28: 2300         	movs	r3, #0x0
    db2a: 4602         	mov	r2, r0
    db2c: 3910         	subs	r1, #0x10
    db2e: e9c2 3300    	strd	r3, r3, [r2]
    db32: e9c2 3302    	strd	r3, r3, [r2, #8]
    db36: 3210         	adds	r2, #0x10
    db38: 2903         	cmp	r1, #0x3
    db3a: d8f7         	bhi	0xdb2c <__aeabi_memclr4+0x52> @ imm = #-0x12
    db3c: 1850         	adds	r0, r2, r1
    db3e: 4282         	cmp	r2, r0
    db40: d221         	bhs	0xdb86 <__aeabi_memclr4+0xac> @ imm = #0x42
    db42: f1a1 0c01    	sub.w	r12, r1, #0x1
    db46: f011 0303    	ands	r3, r1, #0x3
    db4a: d00c         	beq	0xdb66 <__aeabi_memclr4+0x8c> @ imm = #0x18
    db4c: f04f 0e00    	mov.w	lr, #0x0
    db50: 4611         	mov	r1, r2
    db52: f801 eb01    	strb	lr, [r1], #1
    db56: 2b01         	cmp	r3, #0x1
    db58: d00a         	beq	0xdb70 <__aeabi_memclr4+0x96> @ imm = #0x14
    db5a: 2b02         	cmp	r3, #0x2
    db5c: f882 e001    	strb.w	lr, [r2, #0x1]
    db60: d103         	bne	0xdb6a <__aeabi_memclr4+0x90> @ imm = #0x6
    db62: 1c91         	adds	r1, r2, #0x2
    db64: e004         	b	0xdb70 <__aeabi_memclr4+0x96> @ imm = #0x8
    db66: 4611         	mov	r1, r2
    db68: e002         	b	0xdb70 <__aeabi_memclr4+0x96> @ imm = #0x4
    db6a: 2100         	movs	r1, #0x0
    db6c: 7091         	strb	r1, [r2, #0x2]
    db6e: 1cd1         	adds	r1, r2, #0x3
    db70: f1bc 0f03    	cmp.w	r12, #0x3
    db74: bf38         	it	lo
    db76: bd80         	poplo	{r7, pc}
    db78: 3904         	subs	r1, #0x4
    db7a: 2200         	movs	r2, #0x0
    db7c: f841 2f04    	str	r2, [r1, #4]!
    db80: 1d0b         	adds	r3, r1, #0x4
    db82: 4283         	cmp	r3, r0
    db84: d1fa         	bne	0xdb7c <__aeabi_memclr4+0xa2> @ imm = #-0xc
    db86: bd80         	pop	{r7, pc}

0000db88 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.1>:
    db88: 69 6e 74 65 72 6e 61 6c         internal
    db90: 20 65 72 72 6f 72 3a 20          error: 
    db98: 65 6e 74 65 72 65 64 20         entered 
    dba0: 75 6e 72 65 61 63 68 61         unreacha
    dba8: 62 6c 65 20 63 6f 64 65         ble code

0000dbb0 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.2>:
    dbb0: 56 e0 00 00 1b 00 00 00         V.......
    dbb8: 29 01 00 00 05 00 00 00         ).......

0000dbc0 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.3>:
    dbc0: 80 e5 70 28 a1 3a 03 bf         ..p(.:..
    dbc8: 00 00 00 00 00 00 00 00         ........
    dbd0: 00 00 00 00 00 00 00 00         ........
    dbd8: 00 00 00 00 00 00 00 00         ........
    dbe0: 00 00 00 00 00 00 00 00         ........
    dbe8: 00 00 00 00 00 00 00 00         ........
    dbf0: 00 00 00 00 00 00 00 00         ........
    dbf8: 00 00 00 00 00 00 00 00         ........
    dc00: 00 00 00 00 00 00 00 00         ........
    dc08: 00 f0 e6 61 55 15 14 bf         ...aU...
    dc10: 00 00 00 00 00 00 00 00         ........
    dc18: 00 00 00 00 00 00 00 00         ........
    dc20: 00 00 00 00 00 00 00 00         ........
    dc28: 00 00 00 00 00 00 00 00         ........
    dc30: 00 00 00 00 00 00 00 00         ........
    dc38: 00 00 00 00 00 00 00 00         ........
    dc40: 00 00 00 00 00 00 00 00         ........
    dc48: 00 00 00 00 00 00 00 00         ........
    dc50: 00 50 66 db 76 ec 1e bf         .Pf.v...
    dc58: 0f 97 9b b4 e8 75 16 3f         .....u.?
    dc60: 00 00 00 00 00 00 00 00         ........
    dc68: 00 00 00 00 00 00 00 00         ........
    dc70: 00 00 00 00 00 00 00 00         ........
    dc78: 00 00 00 00 00 00 00 00         ........
    dc80: 00 00 00 00 00 00 00 00         ........
    dc88: 00 00 00 00 00 00 00 00         ........
    dc90: e0 96 9b b4 e8 75 16 3f         .....u.?
    dc98: 32 e2 b6 04 2a ad 22 bf         2...*.".
    dca0: 00 00 00 00 00 00 00 00         ........
    dca8: 00 00 00 00 00 00 00 00         ........
    dcb0: 00 00 00 00 00 00 00 00         ........
    dcb8: 00 00 00 00 00 00 00 00         ........
    dcc0: 00 00 00 00 00 00 00 00         ........
    dcc8: 00 00 00 00 00 00 00 00         ........
    dcd0: 00 00 00 00 00 00 00 00         ........
    dcd8: 00 00 00 00 00 00 00 00         ........
    dce0: 61 05 bc 57 10 d8 12 bf         a..W....
    dce8: 58 62 94 b9 1a 9f dc 3e         Xb.....>
    dcf0: 00 00 00 00 00 00 00 00         ........
    dcf8: 00 00 00 00 00 00 00 00         ........
    dd00: 00 00 00 00 00 00 00 00         ........
    dd08: 00 00 00 00 00 00 00 00         ........
    dd10: 00 00 00 00 00 00 00 00         ........
    dd18: 00 00 00 00 00 00 00 00         ........
    dd20: 59 62 94 b9 1a 9f dc 3e         Yb.....>
    dd28: 14 90 51 d1 d5 fc 24 bf         ..Q...$.
    dd30: 14 d0 fe 14 cf 45 20 3f         .....E ?
    dd38: 00 00 00 00 00 00 00 00         ........
    dd40: 00 00 00 00 00 00 00 00         ........
    dd48: 00 00 00 00 00 00 00 00         ........
    dd50: 00 00 00 00 00 00 00 00         ........
    dd58: 00 00 00 00 00 00 00 00         ........
    dd60: 00 00 00 00 00 00 00 00         ........
    dd68: d2 ce fe 14 cf 45 20 3f         .....E ?
    dd70: d2 ce fe 14 cf 45 20 bf         .....E .
    dd78: 00 00 00 00 00 00 00 00         ........
    dd80: 00 00 00 00 00 00 00 00         ........
    dd88: 00 00 00 00 00 00 00 00         ........
    dd90: 00 00 00 00 00 00 00 00         ........
    dd98: 00 00 00 00 00 00 00 00         ........
    dda0: 00 00 00 00 00 00 00 00         ........
    dda8: 00 00 00 00 00 00 00 00         ........
    ddb0: 00 00 00 00 00 00 00 00         ........
    ddb8: 42 6f 24 95 d9 83 c5 bf         Bo$.....
    ddc0: a2 0c d2 2e ca fe ef 3f         .......?
    ddc8: 1f 89 9b cf ab 32 9c bf         .....2..
    ddd0: 00 00 00 00 00 00 00 00         ........
    ddd8: 00 00 00 00 00 00 00 00         ........
    dde0: 00 00 00 00 00 00 00 00         ........
    dde8: 00 00 00 00 00 00 00 00         ........
    ddf0: 00 00 00 00 00 00 00 00         ........
    ddf8: 00 00 00 00 00 00 00 00         ........
    de00: 00 00 00 00 00 00 00 00         ........
    de08: a5 94 a7 50 09 2c d5 3f         ...P.,.?
    de10: 9c 9e 91 65 97 57 e8 bf         ...e.W..
    de18: 76 43 71 a5 f8 73 e2 3f         vCq..s.?
    de20: 00 00 00 00 00 00 00 00         ........
    de28: 00 00 00 00 00 00 00 00         ........
    de30: 00 00 00 00 00 00 00 00         ........
    de38: 00 00 00 00 00 00 00 00         ........
    de40: 00 00 00 00 00 00 00 00         ........
    de48: 00 00 00 00 00 00 00 00         ........
    de50: ab 14 f2 db ec cd d7 3f         .......?
    de58: c4 a9 9f 7b 67 dd c7 3f         ...{g..?
    de60: 1c 38 88 77 bf 13 e1 bf         .8.w....
    de68: 00 00 00 00 00 00 00 00         ........
    de70: 00 00 00 00 00 00 00 00         ........
    de78: 00 00 00 00 00 00 00 00         ........
    de80: 00 00 00 00 00 00 00 00         ........
    de88: 00 00 00 00 00 00 00 00         ........
    de90: 00 00 00 00 00 00 00 00         ........
    de98: 00 00 00 00 00 00 00 00         ........
    dea0: 15 be b6 e5 6d 7e c0 bf         ....m~..
    dea8: 67 42 87 92 ba 86 d4 bf         gB......
    deb0: 00 00 00 00 00 00 00 00         ........
    deb8: 00 00 00 00 00 00 00 00         ........
    dec0: 00 00 00 00 00 00 00 00         ........
    dec8: 00 00 00 00 00 00 00 00         ........
    ded0: 00 00 00 00 00 00 00 00         ........
    ded8: 00 00 00 00 00 00 00 00         ........
    dee0: 00 00 00 00 00 00 00 00         ........
    dee8: e6 a7 5c a0 06 41 d9 3f         ..\..A.?
    def0: e6 a7 5c a0 06 41 d9 bf         ..\..A..
    def8: 19 d5 65 36 d0 6e 95 bf         ..e6.n..
    df00: 00 00 00 00 00 00 00 00         ........
    df08: 00 00 00 00 00 00 00 00         ........
    df10: 00 00 00 00 00 00 00 00         ........
    df18: 00 00 00 00 00 00 00 00         ........
    df20: 00 00 00 00 00 00 00 00         ........
    df28: 10 43 9c 25 ca fc ef 3f         .C.%...?
    df30: 00 80 e7 1d d3 ae 39 3f         ......9?
    df38: 00 00 00 00 00 00 00 00         ........
    df40: 00 00 00 00 00 00 00 00         ........
    df48: 00 00 00 00 00 00 00 00         ........
    df50: 00 00 00 00 00 00 00 00         ........
    df58: 00 00 00 00 00 00 00 00         ........
    df60: 00 00 00 00 00 00 00 00         ........
    df68: 10 43 9c 25 ca fc ef 3f         .C.%...?
    df70: 10 43 9c 25 ca fc ef bf         .C.%....
    df78: 00 00 00 00 00 00 00 00         ........
    df80: 6f 72 61 6e 67 65 2d 64         orange-d
    df88: 73 70 2f 73 72 63 2f 67         sp/src/g
    df90: 65 6e 65 72 61 74 65 64         enerated
    df98: 5f 6d 6f 64 65 6c 2e 72         _model.r
    dfa0: 73 00 24 6d 69 6e 20 3e         s.$min >
    dfa8: 20 6d 61 78 2c 20 6f 72          max, or
    dfb0: 20 65 69 74 68 65 72 20          either 
    dfb8: 77 61 73 20 4e 61 4e 2e         was NaN.
    dfc0: 20 6d 69 6e 20 3d 20 c0          min = .
    dfc8: 08 2c 20 6d 61 78 20 3d         ., max =
    dfd0: 20 c0 00 20 69 6e 64 65          .. inde
    dfd8: 78 20 6f 75 74 20 6f 66         x out of
    dfe0: 20 62 6f 75 6e 64 73 3a          bounds:
    dfe8: 20 74 68 65 20 6c 65 6e          the len
    dff0: 20 69 73 20 c0 12 20 62          is .. b
    dff8: 75 74 20 74 68 65 20 69         ut the i
    e000: 6e 64 65 78 20 69 73 20         ndex is 
    e008: c0 00 2f 72 75 73 74 63         ../rustc
    e010: 2f 34 38 61 32 32 39 63         /48a229c
    e018: 65 61 65 66 64 34 39 38         eaefd498
    e020: 35 63 35 30 39 39 30 62         5c50990b
    e028: 31 34 31 31 36 62 36 64         14116b6d
    e030: 38 35 36 61 66 30 39 38         856af098
    e038: 35 2f 6c 69 62 72 61 72         5/librar
    e040: 79 2f 63 6f 72 65 2f 73         y/core/s
    e048: 72 63 2f 6e 75 6d 2f 66         rc/num/f
    e050: 33 32 2e 72 73 00 6f 72         32.rs.or
    e058: 61 6e 67 65 2d 64 73 70         ange-dsp
    e060: 2f 73 72 63 2f 63 6f 6e         /src/con
    e068: 64 65 6e 73 65 64 2e 72         densed.r
    e070: 73 00 6f 72 61 6e 67 65         s.orange
    e078: 2d 64 73 70 2f 73 72 63         -dsp/src
    e080: 2f 6c 69 62 2e 72 73 00         /lib.rs.

0000e088 <.Lanon.efb3dc6b6301ec8ecec9749fd6b6c36d.6>:
    e088: 0a e0 00 00 4b 00 00 00         ....K...
    e090: 1e 06 00 00 09 00 00 00         ........

0000e098 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.5>:
    e098: ff ff ff 00 01 02 ff ff         ........
    e0a0: ff ff ff ff 03 04 05 ff         ........
    e0a8: 06 07 08 09 0a 0b 0c ff         ........
    e0b0: ff ff 0d 0e ff ff 0f 10         ........
    e0b8: 11 ff ff ff ff ff ff ff         ........
    e0c0: 12 ff ff ff ff ff 13 14         ........
    e0c8: 15 16 17 18 19 1a 1b 1c         ........

0000e0d0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.16>:
    e0d0: 72 e0 00 00 15 00 00 00         r.......
    e0d8: 6f 04 00 00 2e 00 00 00         o.......

0000e0e0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.17>:
    e0e0: 72 e0 00 00 15 00 00 00         r.......
    e0e8: 80 04 00 00 2e 00 00 00         ........

0000e0f0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.18>:
    e0f0: 72 e0 00 00 15 00 00 00         r.......
    e0f8: 81 04 00 00 30 00 00 00         ....0...

0000e100 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.19>:
    e100: 72 e0 00 00 15 00 00 00         r.......
    e108: 2d 04 00 00 12 00 00 00         -.......

0000e110 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.20>:
    e110: 72 e0 00 00 15 00 00 00         r.......
    e118: 2f 04 00 00 14 00 00 00         /.......

0000e120 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.21>:
    e120: 72 e0 00 00 15 00 00 00         r.......
    e128: 30 04 00 00 09 00 00 00         0.......

0000e130 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.101>:
    e130: 80 df 00 00 21 00 00 00         ....!...
    e138: 0e 13 00 00 15 00 00 00         ........

0000e140 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.102>:
    e140: 80 df 00 00 21 00 00 00         ....!...
    e148: f4 12 00 00 15 00 00 00         ........

0000e150 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.103>:
    e150: 80 df 00 00 21 00 00 00         ....!...
    e158: 99 12 00 00 15 00 00 00         ........

0000e160 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.104>:
    e160: 80 df 00 00 21 00 00 00         ....!...
    e168: 7a 12 00 00 15 00 00 00         z.......

0000e170 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.105>:
    e170: 80 df 00 00 21 00 00 00         ....!...
    e178: 5b 12 00 00 15 00 00 00         [.......

0000e180 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.106>:
    e180: 80 df 00 00 21 00 00 00         ....!...
    e188: 1b 12 00 00 15 00 00 00         ........

0000e190 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.107>:
    e190: 80 df 00 00 21 00 00 00         ....!...
    e198: 01 12 00 00 15 00 00 00         ........

0000e1a0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.108>:
    e1a0: 80 df 00 00 21 00 00 00         ....!...
    e1a8: 9a 11 00 00 15 00 00 00         ........

0000e1b0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.109>:
    e1b0: 80 df 00 00 21 00 00 00         ....!...
    e1b8: 7b 11 00 00 15 00 00 00         {.......

0000e1c0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.110>:
    e1c0: 80 df 00 00 21 00 00 00         ....!...
    e1c8: 5c 11 00 00 15 00 00 00         \.......

0000e1d0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.111>:
    e1d0: 80 df 00 00 21 00 00 00         ....!...
    e1d8: c4 10 00 00 15 00 00 00         ........

0000e1e0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.112>:
    e1e0: 80 df 00 00 21 00 00 00         ....!...
    e1e8: a0 10 00 00 15 00 00 00         ........

0000e1f0 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.113>:
    e1f0: 80 df 00 00 21 00 00 00         ....!...
    e1f8: 88 10 00 00 15 00 00 00         ........

0000e200 <.Lanon.b4726e44e2d3d7ec8e7ebbebf8007e06.114>:
    e200: 80 df 00 00 21 00 00 00         ....!...
    e208: 70 10 00 00 15 00 00 00         p.......
