	.file	"memset_new.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	memset_new
	.type	memset_new, @function
memset_new:
.LFB517:
	.file 1 "variant/memset_new.c"
	.loc 1 42 0
	.cfi_startproc
.LVL0:
.LBB27:
.LBB28:
.LBB29:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/emmintrin.h"
	.loc 2 603 0
	movd	%esi, %xmm9
.LBE29:
.LBE28:
.LBE27:
	.loc 1 48 0
	cmpq	$15, %rdx
	.loc 1 42 0
	movq	%rdi, %rax
.LBB32:
.LBB31:
.LBB30:
	.loc 2 603 0
	punpcklbw	%xmm9, %xmm9
	punpcklwd	%xmm9, %xmm9
	pshufd	$0, %xmm9, %xmm9
.LVL1:
	movdqa	%xmm9, %xmm8
.LBE30:
.LBE31:
.LBE32:
	.loc 1 47 0
	movq	%xmm8, -16(%rsp)
.LVL2:
	.loc 1 48 0
	jbe	.L16
.LVL3:
.LBB33:
	.loc 1 57 0
	leaq	16(%rdi), %rcx
.LBB34:
.LBB35:
	.loc 2 703 0
	movdqu	%xmm9, (%rdi)
.LVL4:
.LBE35:
.LBE34:
	.loc 1 57 0
	andq	$-16, %rcx
.LBB36:
.LBB37:
	.loc 2 703 0
	movdqu	%xmm9, -16(%rdi,%rdx)
.LBE37:
.LBE36:
	.loc 1 56 0
	addq	%rdi, %rdx
.LVL5:
	andq	$-16, %rdx
.LVL6:
	.loc 1 59 0
	cmpq	%rcx, %rdx
	je	.L4
	.p2align 4,,10
	.p2align 3
.L12:
.LVL7:
.LBB38:
.LBB39:
	.loc 2 697 0
	movdqa	%xmm8, (%rcx)
.LBE39:
.LBE38:
	.loc 1 62 0
	addq	$16, %rcx
.LVL8:
	.loc 1 59 0
	cmpq	%rcx, %rdx
	jne	.L12
.LVL9:
.L4:
.LBE33:
	.loc 1 66 0
	rep
	ret
.LVL10:
	.p2align 4,,10
	.p2align 3
.L16:
.LBB40:
.LBB41:
	.loc 1 69 0
	testb	$8, %dl
	jne	.L17
	.loc 1 75 0
	testb	$4, %dl
	.p2align 4,,5
	jne	.L18
	.loc 1 81 0
	testb	$1, %dl
	.p2align 4,,2
	je	.L6
	.loc 1 83 0
	movzbl	-16(%rsp), %ecx
	movb	%cl, (%rdi)
.L6:
	.loc 1 85 0
	testb	$2, %dl
	je	.L4
	.loc 1 87 0
	movzwl	-16(%rsp), %ecx
	movw	%cx, -2(%rax,%rdx)
	ret
.LVL11:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 77 0
	movl	-16(%rsp), %ecx
	movl	%ecx, (%rdi)
	.loc 1 78 0
	movl	%ecx, -4(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	.loc 1 71 0
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rdi)
	.loc 1 72 0
	movq	%rcx, -8(%rdi,%rdx)
	ret
.LBE41:
.LBE40:
	.cfi_endproc
.LFE517:
	.size	memset_new, .-memset_new
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h"
	.file 4 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x499
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF43
	.byte	0x1
	.long	.LASF44
	.long	.LASF45
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0xd5
	.long	0x5b
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x2b
	.long	0xad
	.uleb128 0x7
	.byte	0x1
	.long	0x3b
	.long	0xba
	.uleb128 0x8
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x2f
	.long	0xc5
	.uleb128 0x7
	.byte	0x1
	.long	0x42
	.long	0xd2
	.uleb128 0x8
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x32
	.long	0x77
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x34
	.long	0x62
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x38
	.long	0x5b
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x7b
	.long	0x5b
	.uleb128 0x4
	.long	.LASF20
	.byte	0x1
	.byte	0x4
	.long	0xba
	.uleb128 0x9
	.byte	0x1
	.long	.LASF37
	.byte	0x2
	.value	0x256
	.byte	0x1
	.long	0xba
	.byte	0x3
	.byte	0x1
	.long	0x1de
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.value	0x256
	.long	0x3b
	.uleb128 0xa
	.long	.LASF22
	.byte	0x2
	.value	0x256
	.long	0x3b
	.uleb128 0xa
	.long	.LASF23
	.byte	0x2
	.value	0x256
	.long	0x3b
	.uleb128 0xa
	.long	.LASF24
	.byte	0x2
	.value	0x256
	.long	0x3b
	.uleb128 0xa
	.long	.LASF25
	.byte	0x2
	.value	0x257
	.long	0x3b
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.value	0x257
	.long	0x3b
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.value	0x257
	.long	0x3b
	.uleb128 0xa
	.long	.LASF28
	.byte	0x2
	.value	0x257
	.long	0x3b
	.uleb128 0xa
	.long	.LASF29
	.byte	0x2
	.value	0x258
	.long	0x3b
	.uleb128 0xa
	.long	.LASF30
	.byte	0x2
	.value	0x258
	.long	0x3b
	.uleb128 0xa
	.long	.LASF31
	.byte	0x2
	.value	0x258
	.long	0x3b
	.uleb128 0xa
	.long	.LASF32
	.byte	0x2
	.value	0x258
	.long	0x3b
	.uleb128 0xa
	.long	.LASF33
	.byte	0x2
	.value	0x259
	.long	0x3b
	.uleb128 0xa
	.long	.LASF34
	.byte	0x2
	.value	0x259
	.long	0x3b
	.uleb128 0xa
	.long	.LASF35
	.byte	0x2
	.value	0x259
	.long	0x3b
	.uleb128 0xa
	.long	.LASF36
	.byte	0x2
	.value	0x259
	.long	0x3b
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF38
	.byte	0x2
	.value	0x27c
	.byte	0x1
	.long	0xba
	.byte	0x3
	.byte	0x1
	.long	0x1ff
	.uleb128 0xb
	.string	"__A"
	.byte	0x2
	.value	0x27c
	.long	0x3b
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF39
	.byte	0x2
	.value	0x2bd
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.long	0x228
	.uleb128 0xb
	.string	"__P"
	.byte	0x2
	.value	0x2bd
	.long	0x228
	.uleb128 0xb
	.string	"__B"
	.byte	0x2
	.value	0x2bd
	.long	0xba
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xba
	.uleb128 0xc
	.byte	0x1
	.long	.LASF40
	.byte	0x2
	.value	0x2b7
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.long	0x257
	.uleb128 0xb
	.string	"__P"
	.byte	0x2
	.value	0x2b7
	.long	0x228
	.uleb128 0xb
	.string	"__B"
	.byte	0x2
	.value	0x2b7
	.long	0xba
	.byte	0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x8e
	.byte	0x1
	.long	0x292
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0x43
	.long	0x8e
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x43
	.long	0xe8
	.uleb128 0xf
	.string	"no"
	.byte	0x1
	.byte	0x43
	.long	0x50
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x43
	.long	0x8e
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	0x8c
	.quad	.LFB517
	.quad	.LFE517
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.byte	0x29
	.long	0x8e
	.long	.LLST0
	.uleb128 0x12
	.string	"_c"
	.byte	0x1
	.byte	0x29
	.long	0x2d
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x50
	.long	.LLST1
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.long	0x2d
	.uleb128 0x15
	.long	.LASF42
	.byte	0x1
	.byte	0x2c
	.long	0x8e
	.long	.LLST2
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x2d
	.long	0x70
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.string	"vc"
	.byte	0x1
	.byte	0x2e
	.long	0xfe
	.uleb128 0x16
	.string	"mc"
	.byte	0x1
	.byte	0x2f
	.long	0xe8
	.byte	0x1
	.byte	0x61
	.uleb128 0x17
	.long	0x1de
	.quad	.LBB27
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2e
	.long	0x3b8
	.uleb128 0x18
	.long	0x1f2
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.long	0x109
	.quad	.LBB28
	.long	.Ldebug_ranges0+0x30
	.byte	0x2
	.value	0x27e
	.uleb128 0x18
	.long	0x1d1
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x1c5
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x1b9
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x1ad
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x1a1
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x195
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x189
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x17d
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x171
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x159
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x14d
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x141
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x135
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x129
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.long	0x11d
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LBB33
	.quad	.LBE33
	.long	0x462
	.uleb128 0x1b
	.string	"to"
	.byte	0x1
	.byte	0x38
	.long	0x8e
	.long	.LLST3
	.uleb128 0x1c
	.long	0x1ff
	.quad	.LBB34
	.quad	.LBE34
	.byte	0x1
	.byte	0x36
	.long	0x409
	.uleb128 0x1d
	.long	0x21b
	.long	.LLST4
	.uleb128 0x1d
	.long	0x20f
	.long	.LLST5
	.byte	0
	.uleb128 0x1c
	.long	0x1ff
	.quad	.LBB36
	.quad	.LBE36
	.byte	0x1
	.byte	0x37
	.long	0x437
	.uleb128 0x1d
	.long	0x21b
	.long	.LLST6
	.uleb128 0x1d
	.long	0x20f
	.long	.LLST7
	.byte	0
	.uleb128 0x1e
	.long	0x22e
	.quad	.LBB38
	.quad	.LBE38
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1d
	.long	0x24a
	.long	.LLST8
	.uleb128 0x1d
	.long	0x23e
	.long	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x257
	.quad	.LBB40
	.quad	.LBE40
	.byte	0x1
	.byte	0x32
	.uleb128 0x1d
	.long	0x286
	.long	.LLST10
	.uleb128 0x18
	.long	0x27c
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	0x273
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	0x268
	.long	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE517-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL5-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LFE517-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE517-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL3-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL4-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x9
	.byte	0x75
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x3
	.byte	0x72
	.sleb128 -16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE517-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB31-.Ltext0
	.quad	.LBE31-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"size_t"
.LASF19:
	.string	"uintptr_t"
.LASF35:
	.string	"__q01"
.LASF34:
	.string	"__q02"
.LASF33:
	.string	"__q03"
.LASF31:
	.string	"__q05"
.LASF30:
	.string	"__q06"
.LASF14:
	.string	"__v16qi"
.LASF27:
	.string	"__q09"
.LASF42:
	.string	"dest2"
.LASF18:
	.string	"uint64_t"
.LASF15:
	.string	"__m128i"
.LASF3:
	.string	"float"
.LASF41:
	.string	"dest"
.LASF7:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF40:
	.string	"_mm_store_si128"
.LASF45:
	.string	"/home/wizard/string_benchmark/memcpy_profile"
.LASF12:
	.string	"double"
.LASF20:
	.string	"tp_vector"
.LASF5:
	.string	"unsigned int"
.LASF46:
	.string	"memset_small"
.LASF11:
	.string	"long long unsigned int"
.LASF32:
	.string	"__q04"
.LASF26:
	.string	"__q10"
.LASF25:
	.string	"__q11"
.LASF24:
	.string	"__q12"
.LASF23:
	.string	"__q13"
.LASF22:
	.string	"__q14"
.LASF21:
	.string	"__q15"
.LASF47:
	.string	"memset_new"
.LASF10:
	.string	"sizetype"
.LASF44:
	.string	"variant/memset_new.c"
.LASF2:
	.string	"long long int"
.LASF1:
	.string	"char"
.LASF43:
	.string	"GNU C 4.7.1"
.LASF0:
	.string	"short int"
.LASF36:
	.string	"__q00"
.LASF16:
	.string	"uint16_t"
.LASF37:
	.string	"_mm_set_epi8"
.LASF17:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF9:
	.string	"signed char"
.LASF29:
	.string	"__q07"
.LASF28:
	.string	"__q08"
.LASF39:
	.string	"_mm_storeu_si128"
.LASF38:
	.string	"_mm_set1_epi8"
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
