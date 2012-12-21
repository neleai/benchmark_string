	.file	"hooks.c"
	.comm	call_sites,24008,32
.globl b_strlen
	.bss
	.align 8
	.type	b_strlen, @object
	.size	b_strlen, 8
b_strlen:
	.zero	8
.globl b_strchr
	.align 8
	.type	b_strchr, @object
	.size	b_strchr, 8
b_strchr:
	.zero	8
.globl b_strstr
	.data
	.align 8
	.type	b_strstr, @object
	.size	b_strstr, 8
b_strstr:
	.quad	1
.globl b_memchr
	.bss
	.align 8
	.type	b_memchr, @object
	.size	b_memchr, 8
b_memchr:
	.zero	8
.globl b_strspn
	.data
	.align 8
	.type	b_strspn, @object
	.size	b_strspn, 8
b_strspn:
	.quad	1
.globl b_strcat
	.align 8
	.type	b_strcat, @object
	.size	b_strcat, 8
b_strcat:
	.quad	1
.globl b_strcpy
	.align 8
	.type	b_strcpy, @object
	.size	b_strcpy, 8
b_strcpy:
	.quad	6
.globl b_memcpy
	.align 8
	.type	b_memcpy, @object
	.size	b_memcpy, 8
b_memcpy:
	.quad	6
.globl b_strcmp
	.align 8
	.type	b_strcmp, @object
	.size	b_strcmp, 8
b_strcmp:
	.quad	6
.globl b_strcasecmp
	.align 8
	.type	b_strcasecmp, @object
	.size	b_strcasecmp, 8
b_strcasecmp:
	.quad	6
.globl b_strverscmp
	.align 8
	.type	b_strverscmp, @object
	.size	b_strverscmp, 8
b_strverscmp:
	.quad	6
.globl b_strdup
	.bss
	.align 8
	.type	b_strdup, @object
	.size	b_strdup, 8
b_strdup:
	.zero	8
.globl b_strrchr
	.align 8
	.type	b_strrchr, @object
	.size	b_strrchr, 8
b_strrchr:
	.zero	8
.globl b_bsearch
	.align 8
	.type	b_bsearch, @object
	.size	b_bsearch, 8
b_bsearch:
	.zero	8
.globl b_lsearch
	.align 8
	.type	b_lsearch, @object
	.size	b_lsearch, 8
b_lsearch:
	.zero	8
.globl b_memset
	.align 8
	.type	b_memset, @object
	.size	b_memset, 8
b_memset:
	.zero	8
.globl b_strtol
	.data
	.align 8
	.type	b_strtol, @object
	.size	b_strtol, 8
b_strtol:
	.quad	8
.globl b_malloc
	.align 8
	.type	b_malloc, @object
	.size	b_malloc, 8
b_malloc:
	.quad	8
.globl b_free
	.align 8
	.type	b_free, @object
	.size	b_free, 8
b_free:
	.quad	16
.globl b_qsort
	.align 8
	.type	b_qsort, @object
	.size	b_qsort, 8
b_qsort:
	.quad	8
.globl b_rand
	.align 8
	.type	b_rand, @object
	.size	b_rand, 8
b_rand:
	.quad	16
.globl b_asin
	.align 8
	.type	b_asin, @object
	.size	b_asin, 8
b_asin:
	.quad	16
.globl b_sin
	.align 8
	.type	b_sin, @object
	.size	b_sin, 8
b_sin:
	.quad	16
.globl b_sin2
	.align 8
	.type	b_sin2, @object
	.size	b_sin2, 8
b_sin2:
	.quad	16
.globl b_sin3
	.align 8
	.type	b_sin3, @object
	.size	b_sin3, 8
b_sin3:
	.quad	16
.globl b_erf
	.align 8
	.type	b_erf, @object
	.size	b_erf, 8
b_erf:
	.quad	16
.globl b_pow
	.align 8
	.type	b_pow, @object
	.size	b_pow, 8
b_pow:
	.quad	16
.globl b_bessel
	.align 8
	.type	b_bessel, @object
	.size	b_bessel, 8
b_bessel:
	.quad	16
.globl b_sinh
	.align 8
	.type	b_sinh, @object
	.size	b_sinh, 8
b_sinh:
	.quad	16
.globl b_malloc_lifetime
	.align 8
	.type	b_malloc_lifetime, @object
	.size	b_malloc_lifetime, 8
b_malloc_lifetime:
	.quad	8
	.comm	main_tid,8,8
	.local	libc_handle
	.comm	libc_handle,8,8
	.local	libm_handle
	.comm	libm_handle,8,8
	.text
.globl backtrace2
	.type	backtrace2, @function
backtrace2:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rbp, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	backtrace2, .-backtrace2
.globl x
	.bss
	.align 8
	.type	x, @object
	.size	x, 8
x:
	.zero	8
.globl r
	.align 8
	.type	r, @object
	.size	r, 8
r:
	.zero	8
	.comm	__malloc_hook2,8,8
	.comm	__free_hook2,8,8
	.comm	__realloc_hook2,8,8
	.text
	.type	rdtsc, @function
rdtsc:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
#APP
# 43 "hooks.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%edx, %ebx
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	movl	%eax, %r12d
	movl	%r12d, -20(%rbp)
	movl	%ebx, -24(%rbp)
	mov	-24(%rbp), %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	mov	-20(%rbp), %eax
	orq	%rdx, %rax
	popq	%rbx
	popq	%r12
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	rdtsc, .-rdtsc
	.section	.rodata
.LC0:
	.string	"/proc/%i/cmdline"
.LC1:
	.string	"r"
	.text
.globl binary_name
	.type	binary_name, @function
binary_name:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$48, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	call	getpid
	movl	%eax, %edx
	movl	$.LC0, %ecx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movl	$.LC1, %edx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	addq	-16(%rbp), %rax
	movb	$0, (%rax)
	addl	$1, -4(%rbp)
.L4:
	cmpl	$47, -4(%rbp)
	jle	.L5
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	fgets
	movq	-16(%rbp), %rax
	addq	$47, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	binary_name, .-binary_name
	.comm	mall_hash,8,8
	.section	.rodata
.LC2:
	.string	"libc.so.6"
.LC3:
	.string	"libm.so"
	.text
	.type	load_dl, @function
load_dl:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movl	$2, %esi
	movl	$.LC2, %edi
	call	dlopen
	movq	%rax, libc_handle(%rip)
	movl	$2, %esi
	movl	$.LC3, %edi
	call	dlopen
	movq	%rax, libm_handle(%rip)
	call	pthread_self
	movq	%rax, main_tid(%rip)
	movl	$32, %esi
	movl	$1048640, %edi
	call	calloc
	movq	%rax, mall_hash(%rip)
	movq	__malloc_hook(%rip), %rax
	movq	%rax, __malloc_hook2(%rip)
	movl	$__malloc2, %eax
	movq	%rax, __malloc_hook(%rip)
	movq	__realloc_hook(%rip), %rax
	movq	%rax, __realloc_hook2(%rip)
	movl	$__realloc2, %eax
	movq	%rax, __realloc_hook(%rip)
	movq	__free_hook(%rip), %rax
	movq	%rax, __free_hook2(%rip)
	movl	$__free2, %eax
	movq	%rax, __free_hook(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	load_dl, .-load_dl
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	load_dl
	.comm	prof,183024,32
	.section	.rodata
.LC4:
	.string	"r+"
.LC5:
	.string	"/home/wizard/libc_profile"
	.text
	.type	save_cnt, @function
save_cnt:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movl	$.LC4, %edx
	movl	$.LC5, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	fopen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fileno
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$1, %ecx
	movl	$3, %edx
	movl	$199880, %esi
	movl	$0, %edi
	call	mmap
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L7
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$183024, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$prof, -80(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L9
.L10:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	-72(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	-72(%rbp), %rdx
	movq	(%rdx), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rdx), %rdx
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L9:
	movl	-20(%rbp), %eax
	cmpl	$22877, %eax
	jbe	.L10
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+5832(%rip), %rdx
	movq	prof+5840(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L11
.L13:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L12
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L12:
	addl	$1, -20(%rbp)
.L11:
	cmpl	$9, -20(%rbp)
	jle	.L13
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L14
.L16:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L15
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L15:
	addl	$1, -20(%rbp)
.L14:
	cmpl	$9, -20(%rbp)
	jle	.L16
	cmpl	$0, -24(%rbp)
	jne	.L17
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L17
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L17:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+11736(%rip), %rdx
	movq	prof+11744(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L18
.L20:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	560(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L19
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$560, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$560, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L19:
	addl	$1, -20(%rbp)
.L18:
	cmpl	$9, -20(%rbp)
	jle	.L20
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L21
.L23:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$560, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$560, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L22
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L22:
	addl	$1, -20(%rbp)
.L21:
	cmpl	$9, -20(%rbp)
	jle	.L23
	cmpl	$0, -24(%rbp)
	jne	.L24
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$560, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L24
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	560(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	560(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L24:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+17640(%rip), %rdx
	movq	prof+17648(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L25
.L27:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	1120(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L26
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$1120, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$1120, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L26:
	addl	$1, -20(%rbp)
.L25:
	cmpl	$9, -20(%rbp)
	jle	.L27
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L28
.L30:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$1120, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$1120, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L29
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L29:
	addl	$1, -20(%rbp)
.L28:
	cmpl	$9, -20(%rbp)
	jle	.L30
	cmpl	$0, -24(%rbp)
	jne	.L31
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$1120, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L31
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	1120(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	1120(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L31:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+23544(%rip), %rdx
	movq	prof+23552(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L32
.L34:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	1680(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L33
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$1680, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$1680, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L33:
	addl	$1, -20(%rbp)
.L32:
	cmpl	$9, -20(%rbp)
	jle	.L34
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L35
.L37:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$1680, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$1680, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L36
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L36:
	addl	$1, -20(%rbp)
.L35:
	cmpl	$9, -20(%rbp)
	jle	.L37
	cmpl	$0, -24(%rbp)
	jne	.L38
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$1680, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L38
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	1680(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	1680(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L38:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+29448(%rip), %rdx
	movq	prof+29456(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L39
.L41:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	2240(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L40
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$2240, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$2240, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L40:
	addl	$1, -20(%rbp)
.L39:
	cmpl	$9, -20(%rbp)
	jle	.L41
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L42
.L44:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$2240, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$2240, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L43
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L43:
	addl	$1, -20(%rbp)
.L42:
	cmpl	$9, -20(%rbp)
	jle	.L44
	cmpl	$0, -24(%rbp)
	jne	.L45
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$2240, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L45
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	2240(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	2240(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L45:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+35352(%rip), %rdx
	movq	prof+35360(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L46
.L48:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	2800(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L47
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$2800, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$2800, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L47:
	addl	$1, -20(%rbp)
.L46:
	cmpl	$9, -20(%rbp)
	jle	.L48
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L49
.L51:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$2800, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$2800, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L50
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L50:
	addl	$1, -20(%rbp)
.L49:
	cmpl	$9, -20(%rbp)
	jle	.L51
	cmpl	$0, -24(%rbp)
	jne	.L52
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$2800, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L52
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	2800(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	2800(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L52:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+41256(%rip), %rdx
	movq	prof+41264(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L53
.L55:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	3360(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L54
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$3360, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$3360, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L54:
	addl	$1, -20(%rbp)
.L53:
	cmpl	$9, -20(%rbp)
	jle	.L55
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L56
.L58:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$3360, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$3360, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L57
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L57:
	addl	$1, -20(%rbp)
.L56:
	cmpl	$9, -20(%rbp)
	jle	.L58
	cmpl	$0, -24(%rbp)
	jne	.L59
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$3360, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L59
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	3360(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	3360(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L59:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+47160(%rip), %rdx
	movq	prof+47168(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L60
.L62:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	3920(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L61
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$3920, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$3920, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L61:
	addl	$1, -20(%rbp)
.L60:
	cmpl	$9, -20(%rbp)
	jle	.L62
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L63
.L65:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$3920, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$3920, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L64
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L64:
	addl	$1, -20(%rbp)
.L63:
	cmpl	$9, -20(%rbp)
	jle	.L65
	cmpl	$0, -24(%rbp)
	jne	.L66
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$3920, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L66
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	3920(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	3920(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L66:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+53064(%rip), %rdx
	movq	prof+53072(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L67
.L69:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	4480(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L68
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$4480, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$4480, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L68:
	addl	$1, -20(%rbp)
.L67:
	cmpl	$9, -20(%rbp)
	jle	.L69
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L70
.L72:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$4480, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$4480, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L71
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L71:
	addl	$1, -20(%rbp)
.L70:
	cmpl	$9, -20(%rbp)
	jle	.L72
	cmpl	$0, -24(%rbp)
	jne	.L73
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$4480, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L73
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	4480(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	4480(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L73:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+58968(%rip), %rdx
	movq	prof+58976(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L74
.L76:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	5040(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L75
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$5040, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$5040, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L75:
	addl	$1, -20(%rbp)
.L74:
	cmpl	$9, -20(%rbp)
	jle	.L76
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L77
.L79:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$5040, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$5040, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L78
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L78:
	addl	$1, -20(%rbp)
.L77:
	cmpl	$9, -20(%rbp)
	jle	.L79
	cmpl	$0, -24(%rbp)
	jne	.L80
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$5040, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L80
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	5040(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	5040(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L80:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+64872(%rip), %rdx
	movq	prof+64880(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L81
.L83:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	5600(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L82
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$5600, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$5600, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L82:
	addl	$1, -20(%rbp)
.L81:
	cmpl	$9, -20(%rbp)
	jle	.L83
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L84
.L86:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$5600, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$5600, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L85
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L85:
	addl	$1, -20(%rbp)
.L84:
	cmpl	$9, -20(%rbp)
	jle	.L86
	cmpl	$0, -24(%rbp)
	jne	.L87
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$5600, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L87
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	5600(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	5600(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L87:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+70776(%rip), %rdx
	movq	prof+70784(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L88
.L90:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	6160(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L89
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$6160, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$6160, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L89:
	addl	$1, -20(%rbp)
.L88:
	cmpl	$9, -20(%rbp)
	jle	.L90
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L91
.L93:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$6160, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$6160, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L92
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L92:
	addl	$1, -20(%rbp)
.L91:
	cmpl	$9, -20(%rbp)
	jle	.L93
	cmpl	$0, -24(%rbp)
	jne	.L94
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$6160, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L94
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	6160(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	6160(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L94:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+76680(%rip), %rdx
	movq	prof+76688(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L95
.L97:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	6720(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L96
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$6720, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$6720, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L96:
	addl	$1, -20(%rbp)
.L95:
	cmpl	$9, -20(%rbp)
	jle	.L97
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L98
.L100:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$6720, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$6720, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L99
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L99:
	addl	$1, -20(%rbp)
.L98:
	cmpl	$9, -20(%rbp)
	jle	.L100
	cmpl	$0, -24(%rbp)
	jne	.L101
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$6720, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L101
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	6720(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	6720(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L101:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+82584(%rip), %rdx
	movq	prof+82592(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L102
.L104:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	7280(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L103
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$7280, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$7280, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L103:
	addl	$1, -20(%rbp)
.L102:
	cmpl	$9, -20(%rbp)
	jle	.L104
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L105
.L107:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$7280, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$7280, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L106
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L106:
	addl	$1, -20(%rbp)
.L105:
	cmpl	$9, -20(%rbp)
	jle	.L107
	cmpl	$0, -24(%rbp)
	jne	.L108
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$7280, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L108
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	7280(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	7280(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L108:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+88488(%rip), %rdx
	movq	prof+88496(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L109
.L111:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	7840(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L110
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$7840, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$7840, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L110:
	addl	$1, -20(%rbp)
.L109:
	cmpl	$9, -20(%rbp)
	jle	.L111
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L112
.L114:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$7840, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$7840, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L113
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L113:
	addl	$1, -20(%rbp)
.L112:
	cmpl	$9, -20(%rbp)
	jle	.L114
	cmpl	$0, -24(%rbp)
	jne	.L115
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$7840, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L115
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	7840(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	7840(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L115:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+94392(%rip), %rdx
	movq	prof+94400(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L116
.L118:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	8400(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L117
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$8400, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$8400, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L117:
	addl	$1, -20(%rbp)
.L116:
	cmpl	$9, -20(%rbp)
	jle	.L118
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L119
.L121:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$8400, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$8400, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L120
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L120:
	addl	$1, -20(%rbp)
.L119:
	cmpl	$9, -20(%rbp)
	jle	.L121
	cmpl	$0, -24(%rbp)
	jne	.L122
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$8400, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L122
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	8400(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	8400(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L122:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+100296(%rip), %rdx
	movq	prof+100304(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L123
.L125:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	8960(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L124
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$8960, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$8960, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L124:
	addl	$1, -20(%rbp)
.L123:
	cmpl	$9, -20(%rbp)
	jle	.L125
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L126
.L128:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$8960, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$8960, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L127
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L127:
	addl	$1, -20(%rbp)
.L126:
	cmpl	$9, -20(%rbp)
	jle	.L128
	cmpl	$0, -24(%rbp)
	jne	.L129
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$8960, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L129
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	8960(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	8960(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L129:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+106200(%rip), %rdx
	movq	prof+106208(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L130
.L132:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	9520(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L131
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$9520, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$9520, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L131:
	addl	$1, -20(%rbp)
.L130:
	cmpl	$9, -20(%rbp)
	jle	.L132
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L133
.L135:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$9520, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$9520, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L134
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L134:
	addl	$1, -20(%rbp)
.L133:
	cmpl	$9, -20(%rbp)
	jle	.L135
	cmpl	$0, -24(%rbp)
	jne	.L136
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$9520, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L136
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	9520(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	9520(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L136:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+112104(%rip), %rdx
	movq	prof+112112(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L137
.L139:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	10080(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L138
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$10080, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$10080, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L138:
	addl	$1, -20(%rbp)
.L137:
	cmpl	$9, -20(%rbp)
	jle	.L139
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L140
.L142:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$10080, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$10080, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L141
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L141:
	addl	$1, -20(%rbp)
.L140:
	cmpl	$9, -20(%rbp)
	jle	.L142
	cmpl	$0, -24(%rbp)
	jne	.L143
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$10080, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L143
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	10080(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	10080(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L143:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+118008(%rip), %rdx
	movq	prof+118016(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L144
.L146:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	10640(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L145
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$10640, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$10640, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L145:
	addl	$1, -20(%rbp)
.L144:
	cmpl	$9, -20(%rbp)
	jle	.L146
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L147
.L149:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$10640, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$10640, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L148
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L148:
	addl	$1, -20(%rbp)
.L147:
	cmpl	$9, -20(%rbp)
	jle	.L149
	cmpl	$0, -24(%rbp)
	jne	.L150
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$10640, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L150
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	10640(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	10640(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L150:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+123912(%rip), %rdx
	movq	prof+123920(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L151
.L153:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	11200(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L152
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$11200, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$11200, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L152:
	addl	$1, -20(%rbp)
.L151:
	cmpl	$9, -20(%rbp)
	jle	.L153
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L154
.L156:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$11200, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$11200, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L155
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L155:
	addl	$1, -20(%rbp)
.L154:
	cmpl	$9, -20(%rbp)
	jle	.L156
	cmpl	$0, -24(%rbp)
	jne	.L157
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$11200, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L157
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	11200(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	11200(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L157:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+129816(%rip), %rdx
	movq	prof+129824(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L158
.L160:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	11760(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L159
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$11760, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$11760, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L159:
	addl	$1, -20(%rbp)
.L158:
	cmpl	$9, -20(%rbp)
	jle	.L160
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L161
.L163:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$11760, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$11760, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L162
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L162:
	addl	$1, -20(%rbp)
.L161:
	cmpl	$9, -20(%rbp)
	jle	.L163
	cmpl	$0, -24(%rbp)
	jne	.L164
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$11760, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L164
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	11760(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	11760(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L164:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+135720(%rip), %rdx
	movq	prof+135728(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L165
.L167:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	12320(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L166
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$12320, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$12320, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L166:
	addl	$1, -20(%rbp)
.L165:
	cmpl	$9, -20(%rbp)
	jle	.L167
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L168
.L170:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$12320, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$12320, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L169
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L169:
	addl	$1, -20(%rbp)
.L168:
	cmpl	$9, -20(%rbp)
	jle	.L170
	cmpl	$0, -24(%rbp)
	jne	.L171
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$12320, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L171
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	12320(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	12320(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L171:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+141624(%rip), %rdx
	movq	prof+141632(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L172
.L174:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	12880(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L173
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$12880, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$12880, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L173:
	addl	$1, -20(%rbp)
.L172:
	cmpl	$9, -20(%rbp)
	jle	.L174
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L175
.L177:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$12880, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$12880, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L176
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L176:
	addl	$1, -20(%rbp)
.L175:
	cmpl	$9, -20(%rbp)
	jle	.L177
	cmpl	$0, -24(%rbp)
	jne	.L178
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$12880, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L178
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	12880(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	12880(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L178:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+147528(%rip), %rdx
	movq	prof+147536(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L179
.L181:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	13440(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L180
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$13440, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$13440, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L180:
	addl	$1, -20(%rbp)
.L179:
	cmpl	$9, -20(%rbp)
	jle	.L181
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L182
.L184:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$13440, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$13440, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L183
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L183:
	addl	$1, -20(%rbp)
.L182:
	cmpl	$9, -20(%rbp)
	jle	.L184
	cmpl	$0, -24(%rbp)
	jne	.L185
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$13440, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L185
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	13440(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	13440(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L185:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+153432(%rip), %rdx
	movq	prof+153440(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L186
.L188:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	14000(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L187
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$14000, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$14000, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L187:
	addl	$1, -20(%rbp)
.L186:
	cmpl	$9, -20(%rbp)
	jle	.L188
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L189
.L191:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$14000, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$14000, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L190
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L190:
	addl	$1, -20(%rbp)
.L189:
	cmpl	$9, -20(%rbp)
	jle	.L191
	cmpl	$0, -24(%rbp)
	jne	.L192
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$14000, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L192
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	14000(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	14000(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L192:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+159336(%rip), %rdx
	movq	prof+159344(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L193
.L195:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	14560(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L194
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$14560, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$14560, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L194:
	addl	$1, -20(%rbp)
.L193:
	cmpl	$9, -20(%rbp)
	jle	.L195
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L196
.L198:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$14560, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$14560, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L197
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L197:
	addl	$1, -20(%rbp)
.L196:
	cmpl	$9, -20(%rbp)
	jle	.L198
	cmpl	$0, -24(%rbp)
	jne	.L199
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$14560, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L199
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	14560(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	14560(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L199:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+165240(%rip), %rdx
	movq	prof+165248(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L200
.L202:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	15120(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L201
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$15120, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$15120, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L201:
	addl	$1, -20(%rbp)
.L200:
	cmpl	$9, -20(%rbp)
	jle	.L202
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L203
.L205:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$15120, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$15120, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L204
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L204:
	addl	$1, -20(%rbp)
.L203:
	cmpl	$9, -20(%rbp)
	jle	.L205
	cmpl	$0, -24(%rbp)
	jne	.L206
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$15120, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L206
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	15120(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	15120(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L206:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+171144(%rip), %rdx
	movq	prof+171152(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L207
.L209:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	15680(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L208
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$15680, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$15680, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L208:
	addl	$1, -20(%rbp)
.L207:
	cmpl	$9, -20(%rbp)
	jle	.L209
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L210
.L212:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$15680, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$15680, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L211
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L211:
	addl	$1, -20(%rbp)
.L210:
	cmpl	$9, -20(%rbp)
	jle	.L212
	cmpl	$0, -24(%rbp)
	jne	.L213
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$15680, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L213
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	15680(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	15680(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L213:
	movl	$0, %eax
	call	binary_name
	movq	%rax, -88(%rbp)
	movq	prof+177048(%rip), %rdx
	movq	prof+177056(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L214
.L216:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	16240(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L215
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$16240, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	addq	-96(%rbp), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$16240, %rax
	movq	%rcx, (%rax)
	movl	$1, -24(%rbp)
.L215:
	addl	$1, -20(%rbp)
.L214:
	cmpl	$9, -20(%rbp)
	jle	.L216
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L217
.L219:
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$16240, %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rbx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rbx,%rdx), %rax
	addq	$16240, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jbe	.L218
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.L218:
	addl	$1, -20(%rbp)
.L217:
	cmpl	$9, -20(%rbp)
	jle	.L219
	cmpl	$0, -24(%rbp)
	jne	.L220
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$16240, %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jae	.L220
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	16240(%rdx), %rax
	addq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	leaq	16240(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, (%rdx)
.L220:
	movq	-48(%rbp), %rax
	movl	$183024, %esi
	movq	%rax, %rdi
	call	munmap
.L7:
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	save_cnt, .-save_cnt
	.section	.dtors,"aw",@progbits
	.align 8
	.quad	save_cnt
	.text
.globl strnlen3
	.type	strnlen3, @function
strnlen3:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L222
.L224:
	addq	$1, -8(%rbp)
.L222:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	-48(%rbp), %rax
	je	.L223
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L224
.L223:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	strnlen3, .-strnlen3
	.comm	y,8,8
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+5848(%rip)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strnlen3
	movq	%rax, -48(%rbp)
	movq	prof+5848(%rip), %rdx
	movq	prof+5856(%rip), %rax
	cmpq	%rax, %rdx
	je	.L226
	movq	prof+5848(%rip), %rdx
	movq	prof+5856(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L226
	movq	prof+5848(%rip), %rdx
	movq	prof+5856(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$600, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$600, %rax
	movq	%rdx, prof+8(,%rax,8)
.L226:
	call	rdtsc
	movq	%rax, prof+5856(%rip)
	movq	b_strlen(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L227
	movq	-72(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L228
.L227:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L228:
	leaq	664(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$664, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+5832(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+5832(%rip)
	cmpq	$16, -48(%rbp)
	ja	.L229
	movq	prof(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof(%rip)
.L229:
	movq	b_strlen(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L230
	movq	-72(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L231
.L230:
	movq	-48(%rbp), %rax
.L231:
	movq	%rax, -24(%rbp)
	movq	prof+5856(%rip), %rdx
	movq	prof+5848(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L232
	cmpq	$999, -24(%rbp)
	jbe	.L233
	movq	$999, -24(%rbp)
.L233:
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	100(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$100, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	300(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+5856(%rip), %rbx
	movq	prof+5848(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$300, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L234
	movq	$99, -24(%rbp)
.L234:
	movq	-24(%rbp), %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$200, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+5856(%rip), %rcx
	movq	prof+5848(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$200, %rax
	movq	%rdx, prof+8(,%rax,8)
.L232:
	movq	b_strlen(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L235
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L236
	movq	$999, -32(%rbp)
.L236:
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	500(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$500, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L237
	movq	$99, -32(%rbp)
.L237:
	movq	-32(%rbp), %rax
	addq	$400, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$400, %rax
	movq	%rdx, prof+8(,%rax,8)
.L235:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L238
.L240:
	movl	-36(%rbp), %eax
	cltq
	movq	call_sites(,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	jne	.L239
	movl	$1, -40(%rbp)
.L239:
	addl	$1, -36(%rbp)
.L238:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+5896(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L240
	cmpl	$0, -40(%rbp)
	jne	.L241
	movq	prof+5896(%rip), %rax
	cmpq	$99, %rax
	ja	.L241
	movq	prof+5896(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, call_sites(,%rax,8)
	movq	prof+5896(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+5896(%rip)
.L241:
	movq	-48(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L242
	movq	prof+5832(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+5832(%rip)
	movq	prof+5840(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+5840(%rip)
.L242:
	movq	-48(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	strnlen, .-strnlen
.globl strlen
	.type	strlen, @function
strlen:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+5848(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	strlen3
	cltq
	movq	%rax, -48(%rbp)
	movq	prof+5848(%rip), %rdx
	movq	prof+5856(%rip), %rax
	cmpq	%rax, %rdx
	je	.L244
	movq	prof+5848(%rip), %rdx
	movq	prof+5856(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L244
	movq	prof+5848(%rip), %rdx
	movq	prof+5856(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$600, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$600, %rax
	movq	%rdx, prof+8(,%rax,8)
.L244:
	call	rdtsc
	movq	%rax, prof+5856(%rip)
	movq	b_strlen(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L245
	movq	-72(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L246
.L245:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L246:
	leaq	664(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$664, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+5832(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+5832(%rip)
	cmpq	$16, -48(%rbp)
	ja	.L247
	movq	prof(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof(%rip)
.L247:
	movq	b_strlen(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L248
	movq	-72(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L249
.L248:
	movq	-48(%rbp), %rax
.L249:
	movq	%rax, -24(%rbp)
	movq	prof+5856(%rip), %rdx
	movq	prof+5848(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L250
	cmpq	$999, -24(%rbp)
	jbe	.L251
	movq	$999, -24(%rbp)
.L251:
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	100(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$100, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	300(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+5856(%rip), %rbx
	movq	prof+5848(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$300, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L252
	movq	$99, -24(%rbp)
.L252:
	movq	-24(%rbp), %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$200, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+5856(%rip), %rcx
	movq	prof+5848(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$200, %rax
	movq	%rdx, prof+8(,%rax,8)
.L250:
	movq	b_strlen(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L253
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L254
	movq	$999, -32(%rbp)
.L254:
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	500(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$500, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L255
	movq	$99, -32(%rbp)
.L255:
	movq	-32(%rbp), %rax
	addq	$400, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$400, %rax
	movq	%rdx, prof+8(,%rax,8)
.L253:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L256
.L258:
	movl	-36(%rbp), %eax
	cltq
	movq	call_sites(,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	jne	.L257
	movl	$1, -40(%rbp)
.L257:
	addl	$1, -36(%rbp)
.L256:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+5896(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L258
	cmpl	$0, -40(%rbp)
	jne	.L259
	movq	prof+5896(%rip), %rax
	cmpq	$99, %rax
	ja	.L259
	movq	prof+5896(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, call_sites(,%rax,8)
	movq	prof+5896(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+5896(%rip)
.L259:
	movq	-48(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	strlen, .-strlen
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+70792(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L261
.L263:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-92(%rbp), %eax
	cmpb	%al, %dl
	jne	.L262
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L262:
	addq	$1, -24(%rbp)
.L261:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L263
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	prof+70792(%rip), %rdx
	movq	prof+70800(%rip), %rax
	cmpq	%rax, %rdx
	je	.L264
	movq	prof+70792(%rip), %rdx
	movq	prof+70800(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L264
	movq	prof+70792(%rip), %rdx
	movq	prof+70800(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$8718, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$8718, %rax
	movq	%rdx, prof+8(,%rax,8)
.L264:
	call	rdtsc
	movq	%rax, prof+70800(%rip)
	movq	b_strrchr(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L265
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L266
.L265:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L266:
	leaq	8782(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8782, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+70776(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70776(%rip)
	cmpq	$16, -64(%rbp)
	ja	.L267
	movq	prof+64944(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+64944(%rip)
.L267:
	movq	b_strrchr(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L268
	movq	-88(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L269
.L268:
	movq	-64(%rbp), %rax
.L269:
	movq	%rax, -40(%rbp)
	movq	prof+70800(%rip), %rdx
	movq	prof+70792(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L270
	cmpq	$999, -40(%rbp)
	jbe	.L271
	movq	$999, -40(%rbp)
.L271:
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8218(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8218, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8418(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+70800(%rip), %rbx
	movq	prof+70792(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$8418, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L272
	movq	$99, -40(%rbp)
.L272:
	movq	-40(%rbp), %rax
	addq	$8118, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8118, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rax
	addq	$8318, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+70800(%rip), %rcx
	movq	prof+70792(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-40(%rbp), %rax
	addq	$8318, %rax
	movq	%rdx, prof+8(,%rax,8)
.L270:
	movq	b_strrchr(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L273
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -48(%rbp)
	cmpq	$999, -48(%rbp)
	jbe	.L274
	movq	$999, -48(%rbp)
.L274:
	movq	-48(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8618(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8618, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L275
	movq	$99, -48(%rbp)
.L275:
	movq	-48(%rbp), %rax
	addq	$8518, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$8518, %rax
	movq	%rdx, prof+8(,%rax,8)
.L273:
	movl	$0, -56(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L276
.L278:
	movl	-52(%rbp), %eax
	cltq
	addq	$1100, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L277
	movl	$1, -56(%rbp)
.L277:
	addl	$1, -52(%rbp)
.L276:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+70840(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L278
	cmpl	$0, -56(%rbp)
	jne	.L279
	movq	prof+70840(%rip), %rax
	cmpq	$99, %rax
	ja	.L279
	movq	prof+70840(%rip), %rax
	leaq	1100(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+70840(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70840(%rip)
.L279:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L280
	movq	-24(%rbp), %rax
	jmp	.L281
.L280:
	movq	prof+70776(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+70776(%rip)
	movq	prof+70784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70784(%rip)
	movq	-24(%rbp), %rax
.L281:
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	strrchr, .-strrchr
.globl memrchr
	.type	memrchr, @function
memrchr:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+70792(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L283
.L285:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-92(%rbp), %eax
	cmpb	%al, %dl
	jne	.L284
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L284:
	addq	$1, -24(%rbp)
.L283:
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movl	-96(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jne	.L285
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	prof+70792(%rip), %rdx
	movq	prof+70800(%rip), %rax
	cmpq	%rax, %rdx
	je	.L286
	movq	prof+70792(%rip), %rdx
	movq	prof+70800(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L286
	movq	prof+70792(%rip), %rdx
	movq	prof+70800(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$8718, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$8718, %rax
	movq	%rdx, prof+8(,%rax,8)
.L286:
	call	rdtsc
	movq	%rax, prof+70800(%rip)
	movq	b_strrchr(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L287
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L288
.L287:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L288:
	leaq	8782(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8782, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+70776(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70776(%rip)
	cmpq	$16, -64(%rbp)
	ja	.L289
	movq	prof+64944(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+64944(%rip)
.L289:
	movq	b_strrchr(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L290
	movq	-88(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L291
.L290:
	movq	-64(%rbp), %rax
.L291:
	movq	%rax, -40(%rbp)
	movq	prof+70800(%rip), %rdx
	movq	prof+70792(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L292
	cmpq	$999, -40(%rbp)
	jbe	.L293
	movq	$999, -40(%rbp)
.L293:
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8218(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8218, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8418(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+70800(%rip), %rbx
	movq	prof+70792(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$8418, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L294
	movq	$99, -40(%rbp)
.L294:
	movq	-40(%rbp), %rax
	addq	$8118, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8118, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rax
	addq	$8318, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+70800(%rip), %rcx
	movq	prof+70792(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-40(%rbp), %rax
	addq	$8318, %rax
	movq	%rdx, prof+8(,%rax,8)
.L292:
	movq	b_strrchr(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L295
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -48(%rbp)
	cmpq	$999, -48(%rbp)
	jbe	.L296
	movq	$999, -48(%rbp)
.L296:
	movq	-48(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8618(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8618, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L297
	movq	$99, -48(%rbp)
.L297:
	movq	-48(%rbp), %rax
	addq	$8518, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$8518, %rax
	movq	%rdx, prof+8(,%rax,8)
.L295:
	movl	$0, -56(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L298
.L300:
	movl	-52(%rbp), %eax
	cltq
	addq	$1100, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L299
	movl	$1, -56(%rbp)
.L299:
	addl	$1, -52(%rbp)
.L298:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+70840(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L300
	cmpl	$0, -56(%rbp)
	jne	.L301
	movq	prof+70840(%rip), %rax
	cmpq	$99, %rax
	ja	.L301
	movq	prof+70840(%rip), %rax
	leaq	1100(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+70840(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70840(%rip)
.L301:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L302
	movq	-24(%rbp), %rax
	jmp	.L303
.L302:
	movq	prof+11736(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+11736(%rip)
	movq	prof+11744(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+11744(%rip)
	movq	-24(%rbp), %rax
.L303:
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	memrchr, .-memrchr
.globl strchr2
	.type	strchr2, @function
strchr2:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+11752(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L305
.L307:
	addq	$1, -24(%rbp)
.L305:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L306
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-76(%rbp), %eax
	cmpb	%al, %dl
	jne	.L307
.L306:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	prof+11752(%rip), %rdx
	movq	prof+11760(%rip), %rax
	cmpq	%rax, %rdx
	je	.L308
	movq	prof+11752(%rip), %rdx
	movq	prof+11760(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L308
	movq	prof+11752(%rip), %rdx
	movq	prof+11760(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$1338, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$1338, %rax
	movq	%rdx, prof+8(,%rax,8)
.L308:
	call	rdtsc
	movq	%rax, prof+11760(%rip)
	movq	b_strchr(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L309
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L310
.L309:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L310:
	leaq	1402(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$1402, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+11736(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+11736(%rip)
	cmpq	$16, -56(%rbp)
	ja	.L311
	movq	prof+5904(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+5904(%rip)
.L311:
	movq	b_strchr(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L312
	movq	-72(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L313
.L312:
	movq	-56(%rbp), %rax
.L313:
	movq	%rax, -32(%rbp)
	movq	prof+11760(%rip), %rdx
	movq	prof+11752(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L314
	cmpq	$999, -32(%rbp)
	jbe	.L315
	movq	$999, -32(%rbp)
.L315:
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	838(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$838, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1038(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+11760(%rip), %rbx
	movq	prof+11752(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$1038, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L316
	movq	$99, -32(%rbp)
.L316:
	movq	-32(%rbp), %rax
	addq	$738, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$738, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$938, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+11760(%rip), %rcx
	movq	prof+11752(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$938, %rax
	movq	%rdx, prof+8(,%rax,8)
.L314:
	movq	b_strchr(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L317
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L318
	movq	$999, -40(%rbp)
.L318:
	movq	-40(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1238(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$1238, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L319
	movq	$99, -40(%rbp)
.L319:
	movq	-40(%rbp), %rax
	addq	$1138, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$1138, %rax
	movq	%rdx, prof+8(,%rax,8)
.L317:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L320
.L322:
	movl	-44(%rbp), %eax
	cltq
	addq	$100, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L321
	movl	$1, -48(%rbp)
.L321:
	addl	$1, -44(%rbp)
.L320:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+11800(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L322
	cmpl	$0, -48(%rbp)
	jne	.L323
	movq	prof+11800(%rip), %rax
	cmpq	$99, %rax
	ja	.L323
	movq	prof+11800(%rip), %rax
	leaq	100(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+11800(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+11800(%rip)
.L323:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-76(%rbp), %eax
	cmpb	%al, %dl
	jne	.L324
	movq	-24(%rbp), %rax
	jmp	.L325
.L324:
	movq	prof+11736(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+11736(%rip)
	movq	prof+11744(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+11744(%rip)
	cmpl	$0, -80(%rbp)
	je	.L326
	movq	-24(%rbp), %rax
	jmp	.L327
.L326:
	movl	$0, %eax
.L327:
.L325:
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	strchr2, .-strchr2
.globl strchr
	.type	strchr, @function
strchr:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	strchr2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	strchr, .-strchr
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	strchr2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	strchrnul, .-strchrnul
.globl memchr
	.type	memchr, @function
memchr:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+29464(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L331
.L333:
	addq	$1, -24(%rbp)
.L331:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	-88(%rbp), %rax
	je	.L332
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-76(%rbp), %eax
	cmpb	%al, %dl
	jne	.L333
.L332:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	prof+29464(%rip), %rdx
	movq	prof+29472(%rip), %rax
	cmpq	%rax, %rdx
	je	.L334
	movq	prof+29464(%rip), %rdx
	movq	prof+29472(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L334
	movq	prof+29464(%rip), %rdx
	movq	prof+29472(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movslq	%eax, %rdx
	addq	$3552, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$3552, %rax
	movq	%rdx, prof+8(,%rax,8)
.L334:
	call	rdtsc
	movq	%rax, prof+29472(%rip)
	movq	b_memchr(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L335
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	jmp	.L336
.L335:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L336:
	leaq	3616(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$3616, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+29448(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+29448(%rip)
	cmpq	$16, -56(%rbp)
	ja	.L337
	movq	prof+23616(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+23616(%rip)
.L337:
	movq	b_memchr(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L338
	movq	-72(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	jmp	.L339
.L338:
	movq	-56(%rbp), %rax
.L339:
	movq	%rax, -32(%rbp)
	movq	prof+29472(%rip), %rdx
	movq	prof+29464(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	$1999999, %rax
	ja	.L340
	cmpq	$999, -32(%rbp)
	jbe	.L341
	movq	$999, -32(%rbp)
.L341:
	movq	-32(%rbp), %rbx
	movq	%rbx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3052(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$3052, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3252(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+29472(%rip), %rbx
	movq	prof+29464(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$3252, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L342
	movq	$99, -32(%rbp)
.L342:
	movq	-32(%rbp), %rax
	addq	$2952, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$2952, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$3152, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+29472(%rip), %rcx
	movq	prof+29464(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$3152, %rax
	movq	%rdx, prof+8(,%rax,8)
.L340:
	movq	b_memchr(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L343
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L344
	movq	$999, -40(%rbp)
.L344:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3452(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$3452, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L345
	movq	$99, -40(%rbp)
.L345:
	movq	-40(%rbp), %rax
	addq	$3352, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$3352, %rax
	movq	%rdx, prof+8(,%rax,8)
.L343:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L346
.L348:
	movl	-44(%rbp), %eax
	cltq
	addq	$400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L347
	movl	$1, -48(%rbp)
.L347:
	addl	$1, -44(%rbp)
.L346:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+29512(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L348
	cmpl	$0, -48(%rbp)
	jne	.L349
	movq	prof+29512(%rip), %rax
	cmpq	$99, %rax
	ja	.L349
	movq	prof+29512(%rip), %rax
	leaq	400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+29512(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+29512(%rip)
.L349:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	-88(%rbp), %rax
	je	.L350
	movq	-24(%rbp), %rax
	jmp	.L351
.L350:
	movq	prof+29448(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+29448(%rip)
	movq	prof+29456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+29456(%rip)
	movl	$0, %eax
.L351:
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	memchr, .-memchr
.globl rawmemchr
	.type	rawmemchr, @function
rawmemchr:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rawmemchr, .-rawmemchr
.globl strncpy
	.type	strncpy, @function
strncpy:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+35368(%rip)
	movq	$0, -24(%rbp)
	jmp	.L354
.L356:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L354:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L355
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L356
.L355:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L357
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movb	$0, (%rax)
.L357:
	movq	-24(%rbp), %rax
	movl	%eax, -52(%rbp)
	movq	prof+35368(%rip), %rdx
	movq	prof+35376(%rip), %rax
	cmpq	%rax, %rdx
	je	.L358
	movq	prof+35368(%rip), %rdx
	movq	prof+35376(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L358
	movq	prof+35368(%rip), %rdx
	movq	prof+35376(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$4290, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$4290, %rax
	movq	%rdx, prof+8(,%rax,8)
.L358:
	call	rdtsc
	movq	%rax, prof+35376(%rip)
	movq	b_strcpy(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L359
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L360
.L359:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L360:
	leaq	4354(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$4354, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+35352(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+35352(%rip)
	cmpl	$16, -52(%rbp)
	jg	.L361
	movq	prof+29520(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+29520(%rip)
.L361:
	movq	b_strcpy(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L362
	movl	-52(%rbp), %eax
	cltq
	jmp	.L363
.L362:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
.L363:
	movq	%rax, -32(%rbp)
	movq	prof+35376(%rip), %rdx
	movq	prof+35368(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L364
	cmpq	$999, -32(%rbp)
	jbe	.L365
	movq	$999, -32(%rbp)
.L365:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3790(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$3790, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3990(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+35376(%rip), %rbx
	movq	prof+35368(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$3990, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L366
	movq	$99, -32(%rbp)
.L366:
	movq	-32(%rbp), %rax
	addq	$3690, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$3690, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$3890, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+35376(%rip), %rcx
	movq	prof+35368(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$3890, %rax
	movq	%rdx, prof+8(,%rax,8)
.L364:
	movq	b_strcpy(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L367
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L368
	movq	$999, -40(%rbp)
.L368:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	4190(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$4190, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L369
	movq	$99, -40(%rbp)
.L369:
	movq	-40(%rbp), %rax
	addq	$4090, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$4090, %rax
	movq	%rdx, prof+8(,%rax,8)
.L367:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L370
.L372:
	movl	-44(%rbp), %eax
	cltq
	addq	$500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L371
	movl	$1, -48(%rbp)
.L371:
	addl	$1, -44(%rbp)
.L370:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+35416(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L372
	cmpl	$0, -48(%rbp)
	jne	.L373
	movq	prof+35416(%rip), %rax
	cmpq	$99, %rax
	ja	.L373
	movq	prof+35416(%rip), %rax
	leaq	500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+35416(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+35416(%rip)
.L373:
	movq	-72(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	strncpy, .-strncpy
.globl strcpy2
	.type	strcpy2, @function
strcpy2:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+35368(%rip)
	movq	$0, -24(%rbp)
	jmp	.L375
.L376:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L375:
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L376
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	%eax, -52(%rbp)
	movq	prof+35368(%rip), %rdx
	movq	prof+35376(%rip), %rax
	cmpq	%rax, %rdx
	je	.L377
	movq	prof+35368(%rip), %rdx
	movq	prof+35376(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L377
	movq	prof+35368(%rip), %rdx
	movq	prof+35376(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$4290, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$4290, %rax
	movq	%rdx, prof+8(,%rax,8)
.L377:
	call	rdtsc
	movq	%rax, prof+35376(%rip)
	movq	b_strcpy(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L378
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L379
.L378:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L379:
	leaq	4354(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$4354, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+35352(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+35352(%rip)
	cmpl	$16, -52(%rbp)
	jg	.L380
	movq	prof+29520(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+29520(%rip)
.L380:
	movq	b_strcpy(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L381
	movl	-52(%rbp), %eax
	cltq
	jmp	.L382
.L381:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
.L382:
	movq	%rax, -32(%rbp)
	movq	prof+35376(%rip), %rdx
	movq	prof+35368(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L383
	cmpq	$999, -32(%rbp)
	jbe	.L384
	movq	$999, -32(%rbp)
.L384:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3790(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$3790, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	3990(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+35376(%rip), %rbx
	movq	prof+35368(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$3990, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L385
	movq	$99, -32(%rbp)
.L385:
	movq	-32(%rbp), %rax
	addq	$3690, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$3690, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$3890, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+35376(%rip), %rcx
	movq	prof+35368(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$3890, %rax
	movq	%rdx, prof+8(,%rax,8)
.L383:
	movq	b_strcpy(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L386
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L387
	movq	$999, -40(%rbp)
.L387:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	4190(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$4190, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L388
	movq	$99, -40(%rbp)
.L388:
	movq	-40(%rbp), %rax
	addq	$4090, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$4090, %rax
	movq	%rdx, prof+8(,%rax,8)
.L386:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L389
.L391:
	movl	-44(%rbp), %eax
	cltq
	addq	$500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L390
	movl	$1, -48(%rbp)
.L390:
	addl	$1, -44(%rbp)
.L389:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+35416(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L391
	cmpl	$0, -48(%rbp)
	jne	.L392
	movq	prof+35416(%rip), %rax
	cmpq	$99, %rax
	ja	.L392
	movq	prof+35416(%rip), %rax
	leaq	500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+35416(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+35416(%rip)
.L392:
	cmpl	$0, -84(%rbp)
	je	.L393
	movl	-52(%rbp), %eax
	cltq
	addq	-72(%rbp), %rax
	jmp	.L394
.L393:
	movq	-72(%rbp), %rax
.L394:
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	strcpy2, .-strcpy2
.globl strcpy
	.type	strcpy, @function
strcpy:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcpy2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	strcpy, .-strcpy
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcpy2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	stpcpy, .-stpcpy
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+41272(%rip)
	movq	$0, -24(%rbp)
	jmp	.L398
.L399:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L398:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L399
	movq	-24(%rbp), %rax
	movl	%eax, -52(%rbp)
	movq	prof+41272(%rip), %rdx
	movq	prof+41280(%rip), %rax
	cmpq	%rax, %rdx
	je	.L400
	movq	prof+41272(%rip), %rdx
	movq	prof+41280(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L400
	movq	prof+41272(%rip), %rdx
	movq	prof+41280(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$5028, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$5028, %rax
	movq	%rdx, prof+8(,%rax,8)
.L400:
	call	rdtsc
	movq	%rax, prof+41280(%rip)
	movq	b_memcpy(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L401
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L402
.L401:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L402:
	leaq	5092(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$5092, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+41256(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+41256(%rip)
	cmpl	$16, -52(%rbp)
	jg	.L403
	movq	prof+35424(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+35424(%rip)
.L403:
	movq	b_memcpy(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L404
	movl	-52(%rbp), %eax
	cltq
	jmp	.L405
.L404:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
.L405:
	movq	%rax, -32(%rbp)
	movq	prof+41280(%rip), %rdx
	movq	prof+41272(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L406
	cmpq	$999, -32(%rbp)
	jbe	.L407
	movq	$999, -32(%rbp)
.L407:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	4528(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$4528, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	4728(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+41280(%rip), %rbx
	movq	prof+41272(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$4728, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L408
	movq	$99, -32(%rbp)
.L408:
	movq	-32(%rbp), %rax
	addq	$4428, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$4428, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$4628, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+41280(%rip), %rcx
	movq	prof+41272(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$4628, %rax
	movq	%rdx, prof+8(,%rax,8)
.L406:
	movq	b_memcpy(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L409
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L410
	movq	$999, -40(%rbp)
.L410:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	4928(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$4928, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L411
	movq	$99, -40(%rbp)
.L411:
	movq	-40(%rbp), %rax
	addq	$4828, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$4828, %rax
	movq	%rdx, prof+8(,%rax,8)
.L409:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L412
.L414:
	movl	-44(%rbp), %eax
	cltq
	addq	$600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L413
	movl	$1, -48(%rbp)
.L413:
	addl	$1, -44(%rbp)
.L412:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+41320(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L414
	cmpl	$0, -48(%rbp)
	jne	.L415
	movq	prof+41320(%rip), %rax
	cmpq	$99, %rax
	ja	.L415
	movq	prof+41320(%rip), %rax
	leaq	600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+41320(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+41320(%rip)
.L415:
	movq	-72(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	memcpy, .-memcpy
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L417
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -48(%rbp)
.L417:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	memccpy, .-memccpy
.globl strncat
	.type	strncat, @function
strncat:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+47176(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L419
.L421:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	addq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rdx), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L419:
	movq	-24(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jae	.L420
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L421
.L420:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	addq	-88(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movq	%rax, -64(%rbp)
	movq	prof+47176(%rip), %rdx
	movq	prof+47184(%rip), %rax
	cmpq	%rax, %rdx
	je	.L422
	movq	prof+47176(%rip), %rdx
	movq	prof+47184(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L422
	movq	prof+47176(%rip), %rdx
	movq	prof+47184(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$5766, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$5766, %rax
	movq	%rdx, prof+8(,%rax,8)
.L422:
	call	rdtsc
	movq	%rax, prof+47184(%rip)
	movq	b_strcat(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L423
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L424
.L423:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L424:
	leaq	5830(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$5830, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+47160(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+47160(%rip)
	cmpq	$16, -64(%rbp)
	ja	.L425
	movq	prof+41328(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+41328(%rip)
.L425:
	movq	b_strcat(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L426
	movq	-88(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L427
.L426:
	movq	-64(%rbp), %rax
.L427:
	movq	%rax, -32(%rbp)
	movq	prof+47184(%rip), %rdx
	movq	prof+47176(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L428
	cmpq	$999, -32(%rbp)
	jbe	.L429
	movq	$999, -32(%rbp)
.L429:
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	5266(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$5266, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	5466(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+47184(%rip), %rbx
	movq	prof+47176(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$5466, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L430
	movq	$99, -32(%rbp)
.L430:
	movq	-32(%rbp), %rax
	addq	$5166, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$5166, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$5366, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+47184(%rip), %rcx
	movq	prof+47176(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$5366, %rax
	movq	%rdx, prof+8(,%rax,8)
.L428:
	movq	b_strcat(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L431
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L432
	movq	$999, -40(%rbp)
.L432:
	movq	-40(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	5666(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$5666, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L433
	movq	$99, -40(%rbp)
.L433:
	movq	-40(%rbp), %rax
	addq	$5566, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$5566, %rax
	movq	%rdx, prof+8(,%rax,8)
.L431:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L434
.L436:
	movl	-44(%rbp), %eax
	cltq
	addq	$700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L435
	movl	$1, -48(%rbp)
.L435:
	addl	$1, -44(%rbp)
.L434:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+47224(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L436
	cmpl	$0, -48(%rbp)
	jne	.L437
	movq	prof+47224(%rip), %rax
	cmpq	$99, %rax
	ja	.L437
	movq	prof+47224(%rip), %rax
	leaq	700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+47224(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+47224(%rip)
.L437:
	movq	-88(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	strncat, .-strncat
.globl strcat
	.type	strcat, @function
strcat:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	strcat, .-strcat
.globl strcasecmp
	.type	strcasecmp, @function
strcasecmp:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+58984(%rip)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L440
	jmp	.L441
.L442:
	addq	$1, -24(%rbp)
.L441:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L440
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	je	.L442
.L440:
	movq	prof+58984(%rip), %rdx
	movq	prof+58992(%rip), %rax
	cmpq	%rax, %rdx
	je	.L443
	movq	prof+58984(%rip), %rdx
	movq	prof+58992(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L443
	movq	prof+58984(%rip), %rdx
	movq	prof+58992(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$7242, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$7242, %rax
	movq	%rdx, prof+8(,%rax,8)
.L443:
	call	rdtsc
	movq	%rax, prof+58992(%rip)
	movq	b_strcasecmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L444
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L445
.L444:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L445:
	leaq	7306(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$7306, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+58968(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+58968(%rip)
	cmpq	$16, -24(%rbp)
	ja	.L446
	movq	prof+53136(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+53136(%rip)
.L446:
	movq	b_strcasecmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L447
	movq	-72(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L448
.L447:
	movq	-24(%rbp), %rax
.L448:
	movq	%rax, -32(%rbp)
	movq	prof+58992(%rip), %rdx
	movq	prof+58984(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L449
	cmpq	$999, -32(%rbp)
	jbe	.L450
	movq	$999, -32(%rbp)
.L450:
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	6742(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$6742, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	6942(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+58992(%rip), %rbx
	movq	prof+58984(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$6942, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L451
	movq	$99, -32(%rbp)
.L451:
	movq	-32(%rbp), %rax
	addq	$6642, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$6642, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$6842, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+58992(%rip), %rcx
	movq	prof+58984(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$6842, %rax
	movq	%rdx, prof+8(,%rax,8)
.L449:
	movq	b_strcasecmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L452
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L453
	movq	$999, -40(%rbp)
.L453:
	movq	-40(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	7142(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$7142, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L454
	movq	$99, -40(%rbp)
.L454:
	movq	-40(%rbp), %rax
	addq	$7042, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$7042, %rax
	movq	%rdx, prof+8(,%rax,8)
.L452:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -56(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L455
.L457:
	movl	-44(%rbp), %eax
	cltq
	addq	$900, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	jne	.L456
	movl	$1, -48(%rbp)
.L456:
	addl	$1, -44(%rbp)
.L455:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+59032(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L457
	cmpl	$0, -48(%rbp)
	jne	.L458
	movq	prof+59032(%rip), %rax
	cmpq	$99, %rax
	ja	.L458
	movq	prof+59032(%rip), %rax
	leaq	900(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+59032(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+59032(%rip)
.L458:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	jge	.L459
	movl	$-1, %eax
	jmp	.L460
.L459:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	jle	.L461
	movl	$1, %eax
	jmp	.L460
.L461:
	movl	$0, %eax
.L460:
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	strcasecmp, .-strcasecmp
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -24(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+17656(%rip)
	jmp	.L463
.L465:
	addq	$1, -24(%rbp)
.L463:
	movq	-24(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.L464
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L465
.L464:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	prof+17656(%rip), %rdx
	movq	prof+17664(%rip), %rax
	cmpq	%rax, %rdx
	je	.L466
	movq	prof+17656(%rip), %rdx
	movq	prof+17664(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L466
	movq	prof+17656(%rip), %rdx
	movq	prof+17664(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$2076, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$2076, %rax
	movq	%rdx, prof+8(,%rax,8)
.L466:
	call	rdtsc
	movq	%rax, prof+17664(%rip)
	movq	b_strcmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L467
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L468
.L467:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L468:
	leaq	2140(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2140, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+17640(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17640(%rip)
	cmpq	$16, -64(%rbp)
	ja	.L469
	movq	prof+11808(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+11808(%rip)
.L469:
	movq	b_strcmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L470
	movq	-88(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L471
.L470:
	movq	-64(%rbp), %rax
.L471:
	movq	%rax, -40(%rbp)
	movq	prof+17664(%rip), %rdx
	movq	prof+17656(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L472
	cmpq	$999, -40(%rbp)
	jbe	.L473
	movq	$999, -40(%rbp)
.L473:
	movq	-40(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1576(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$1576, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1776(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+17664(%rip), %rbx
	movq	prof+17656(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$1776, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L474
	movq	$99, -40(%rbp)
.L474:
	movq	-40(%rbp), %rax
	addq	$1476, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$1476, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rax
	addq	$1676, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+17664(%rip), %rcx
	movq	prof+17656(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-40(%rbp), %rax
	addq	$1676, %rax
	movq	%rdx, prof+8(,%rax,8)
.L472:
	movq	b_strcmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L475
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -48(%rbp)
	cmpq	$999, -48(%rbp)
	jbe	.L476
	movq	$999, -48(%rbp)
.L476:
	movq	-48(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1976(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$1976, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L477
	movq	$99, -48(%rbp)
.L477:
	movq	-48(%rbp), %rax
	addq	$1876, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$1876, %rax
	movq	%rdx, prof+8(,%rax,8)
.L475:
	movl	$0, -56(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L478
.L480:
	movl	-52(%rbp), %eax
	cltq
	addq	$200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L479
	movl	$1, -56(%rbp)
.L479:
	addl	$1, -52(%rbp)
.L478:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+17704(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L480
	cmpl	$0, -56(%rbp)
	jne	.L481
	movq	prof+17704(%rip), %rax
	cmpq	$99, %rax
	ja	.L481
	movq	prof+17704(%rip), %rax
	leaq	200(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+17704(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17704(%rip)
.L481:
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L482
	movq	$0, -32(%rbp)
.L482:
	movq	-32(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	memcmp, .-memcmp
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-176(%rbp), %rax
	imulq	-168(%rbp), %rax
	movq	%rax, -96(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+76696(%rip)
	movq	$0, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L484
.L504:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	shrq	%rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	imulq	-176(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jns	.L485
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L484
.L485:
	cmpl	$0, -116(%rbp)
	jle	.L486
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L484
.L486:
	movq	prof+76696(%rip), %rdx
	movq	prof+76704(%rip), %rax
	cmpq	%rax, %rdx
	je	.L487
	movq	prof+76696(%rip), %rdx
	movq	prof+76704(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L487
	movq	prof+76696(%rip), %rdx
	movq	prof+76704(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$9456, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$9456, %rax
	movq	%rdx, prof+8(,%rax,8)
.L487:
	call	rdtsc
	movq	%rax, prof+76704(%rip)
	movq	b_bsearch(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L488
	movq	-88(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L489
.L488:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L489:
	leaq	9520(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$9520, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+76680(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76680(%rip)
	cmpq	$16, -96(%rbp)
	ja	.L490
	movq	prof+70848(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70848(%rip)
.L490:
	movq	b_bsearch(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L491
	movq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L492
.L491:
	movq	-96(%rbp), %rax
.L492:
	movq	%rax, -40(%rbp)
	movq	prof+76704(%rip), %rdx
	movq	prof+76696(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L493
	cmpq	$999, -40(%rbp)
	jbe	.L494
	movq	$999, -40(%rbp)
.L494:
	movq	-40(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-200(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8956(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8956, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-200(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9156(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+76704(%rip), %rbx
	movq	prof+76696(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$9156, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L495
	movq	$99, -40(%rbp)
.L495:
	movq	-40(%rbp), %rax
	addq	$8856, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8856, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rax
	addq	$9056, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+76704(%rip), %rcx
	movq	prof+76696(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-40(%rbp), %rax
	addq	$9056, %rax
	movq	%rdx, prof+8(,%rax,8)
.L493:
	movq	b_bsearch(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L496
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -48(%rbp)
	cmpq	$999, -48(%rbp)
	jbe	.L497
	movq	$999, -48(%rbp)
.L497:
	movq	-48(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-200(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9356(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$9356, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L498
	movq	$99, -48(%rbp)
.L498:
	movq	-48(%rbp), %rax
	addq	$9256, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$9256, %rax
	movq	%rdx, prof+8(,%rax,8)
.L496:
	movl	$0, -56(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -128(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L499
.L501:
	movl	-52(%rbp), %eax
	cltq
	addq	$1200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-128(%rbp), %rax
	jne	.L500
	movl	$1, -56(%rbp)
.L500:
	addl	$1, -52(%rbp)
.L499:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+76744(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L501
	cmpl	$0, -56(%rbp)
	jne	.L502
	movq	prof+76744(%rip), %rax
	cmpq	$99, %rax
	ja	.L502
	movq	prof+76744(%rip), %rax
	leaq	1200(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+76744(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76744(%rip)
.L502:
	movq	-112(%rbp), %rax
	jmp	.L503
.L484:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L504
	movq	prof+76680(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+76680(%rip)
	movq	prof+76688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76688(%rip)
	movq	prof+76696(%rip), %rdx
	movq	prof+76704(%rip), %rax
	cmpq	%rax, %rdx
	je	.L505
	movq	prof+76696(%rip), %rdx
	movq	prof+76704(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L505
	movq	prof+76696(%rip), %rdx
	movq	prof+76704(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$9456, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$9456, %rax
	movq	%rdx, prof+8(,%rax,8)
.L505:
	call	rdtsc
	movq	%rax, prof+76704(%rip)
	movq	b_bsearch(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L506
	movq	-88(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L507
.L506:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L507:
	leaq	9520(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$9520, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+76680(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76680(%rip)
	cmpq	$16, -96(%rbp)
	ja	.L508
	movq	prof+70848(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+70848(%rip)
.L508:
	movq	b_bsearch(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L509
	movq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L510
.L509:
	movq	-96(%rbp), %rax
.L510:
	movq	%rax, -64(%rbp)
	movq	prof+76704(%rip), %rdx
	movq	prof+76696(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L511
	cmpq	$999, -64(%rbp)
	jbe	.L512
	movq	$999, -64(%rbp)
.L512:
	movq	-64(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-200(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	8956(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8956, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-64(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-200(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9156(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+76704(%rip), %rbx
	movq	prof+76696(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$9156, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -64(%rbp)
	jbe	.L513
	movq	$99, -64(%rbp)
.L513:
	movq	-64(%rbp), %rax
	addq	$8856, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	$8856, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-64(%rbp), %rax
	addq	$9056, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+76704(%rip), %rcx
	movq	prof+76696(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-64(%rbp), %rax
	addq	$9056, %rax
	movq	%rdx, prof+8(,%rax,8)
.L511:
	movq	b_bsearch(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L514
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -72(%rbp)
	cmpq	$999, -72(%rbp)
	jbe	.L515
	movq	$999, -72(%rbp)
.L515:
	movq	-72(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-200(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9356(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$9356, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -72(%rbp)
	jbe	.L516
	movq	$99, -72(%rbp)
.L516:
	movq	-72(%rbp), %rax
	addq	$9256, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$9256, %rax
	movq	%rdx, prof+8(,%rax,8)
.L514:
	movl	$0, -80(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -136(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L517
.L519:
	movl	-76(%rbp), %eax
	cltq
	addq	$1200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-136(%rbp), %rax
	jne	.L518
	movl	$1, -80(%rbp)
.L518:
	addl	$1, -76(%rbp)
.L517:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+76744(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L519
	cmpl	$0, -80(%rbp)
	jne	.L520
	movq	prof+76744(%rip), %rax
	cmpq	$99, %rax
	ja	.L520
	movq	prof+76744(%rip), %rax
	leaq	1200(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+76744(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76744(%rip)
.L520:
	movl	$0, %eax
.L503:
	addq	$200, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	bsearch, .-bsearch
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	imulq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+82600(%rip)
	movq	-136(%rbp), %rax
	imulq	-144(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L522
.L541:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L523
	movq	prof+82600(%rip), %rdx
	movq	prof+82608(%rip), %rax
	cmpq	%rax, %rdx
	je	.L524
	movq	prof+82600(%rip), %rdx
	movq	prof+82608(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L524
	movq	prof+82600(%rip), %rdx
	movq	prof+82608(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$10194, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$10194, %rax
	movq	%rdx, prof+8(,%rax,8)
.L524:
	call	rdtsc
	movq	%rax, prof+82608(%rip)
	movq	b_lsearch(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L525
	movq	-72(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L526
.L525:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L526:
	leaq	10258(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10258, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+82584(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+82584(%rip)
	cmpq	$16, -80(%rbp)
	ja	.L527
	movq	prof+76752(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76752(%rip)
.L527:
	movq	b_lsearch(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L528
	movq	-72(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L529
.L528:
	movq	-80(%rbp), %rax
.L529:
	movq	%rax, -24(%rbp)
	movq	prof+82608(%rip), %rdx
	movq	prof+82600(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L530
	cmpq	$999, -24(%rbp)
	jbe	.L531
	movq	$999, -24(%rbp)
.L531:
	movq	-24(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-168(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9694(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$9694, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-168(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9894(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+82608(%rip), %rbx
	movq	prof+82600(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$9894, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L532
	movq	$99, -24(%rbp)
.L532:
	movq	-24(%rbp), %rax
	addq	$9594, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$9594, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$9794, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+82608(%rip), %rcx
	movq	prof+82600(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$9794, %rax
	movq	%rdx, prof+8(,%rax,8)
.L530:
	movq	b_lsearch(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L533
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L534
	movq	$999, -32(%rbp)
.L534:
	movq	-32(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-168(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	10094(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10094, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L535
	movq	$99, -32(%rbp)
.L535:
	movq	-32(%rbp), %rax
	addq	$9994, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$9994, %rax
	movq	%rdx, prof+8(,%rax,8)
.L533:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -96(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L536
.L538:
	movl	-36(%rbp), %eax
	cltq
	addq	$1300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-96(%rbp), %rax
	jne	.L537
	movl	$1, -40(%rbp)
.L537:
	addl	$1, -36(%rbp)
.L536:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+82648(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L538
	cmpl	$0, -40(%rbp)
	jne	.L539
	movq	prof+82648(%rip), %rax
	cmpq	$99, %rax
	ja	.L539
	movq	prof+82648(%rip), %rax
	leaq	1300(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+82648(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+82648(%rip)
.L539:
	movq	-128(%rbp), %rax
	jmp	.L540
.L523:
	movq	-144(%rbp), %rax
	addq	%rax, -128(%rbp)
.L522:
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L541
	movq	prof+82600(%rip), %rdx
	movq	prof+82608(%rip), %rax
	cmpq	%rax, %rdx
	je	.L542
	movq	prof+82600(%rip), %rdx
	movq	prof+82608(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L542
	movq	prof+82600(%rip), %rdx
	movq	prof+82608(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$10194, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$10194, %rax
	movq	%rdx, prof+8(,%rax,8)
.L542:
	call	rdtsc
	movq	%rax, prof+82608(%rip)
	movq	b_lsearch(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L543
	movq	-72(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L544
.L543:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L544:
	leaq	10258(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10258, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+82584(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+82584(%rip)
	cmpq	$16, -80(%rbp)
	ja	.L545
	movq	prof+76752(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+76752(%rip)
.L545:
	movq	b_lsearch(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L546
	movq	-72(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L547
.L546:
	movq	-80(%rbp), %rax
.L547:
	movq	%rax, -48(%rbp)
	movq	prof+82608(%rip), %rdx
	movq	prof+82600(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L548
	cmpq	$999, -48(%rbp)
	jbe	.L549
	movq	$999, -48(%rbp)
.L549:
	movq	-48(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-168(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9694(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$9694, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-48(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-168(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	9894(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+82608(%rip), %rbx
	movq	prof+82600(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$9894, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L550
	movq	$99, -48(%rbp)
.L550:
	movq	-48(%rbp), %rax
	addq	$9594, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$9594, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-48(%rbp), %rax
	addq	$9794, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+82608(%rip), %rcx
	movq	prof+82600(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-48(%rbp), %rax
	addq	$9794, %rax
	movq	%rdx, prof+8(,%rax,8)
.L548:
	movq	b_lsearch(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L551
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -56(%rbp)
	cmpq	$999, -56(%rbp)
	jbe	.L552
	movq	$999, -56(%rbp)
.L552:
	movq	-56(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-168(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	10094(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10094, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -56(%rbp)
	jbe	.L553
	movq	$99, -56(%rbp)
.L553:
	movq	-56(%rbp), %rax
	addq	$9994, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$9994, %rax
	movq	%rdx, prof+8(,%rax,8)
.L551:
	movl	$0, -64(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -104(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L554
.L556:
	movl	-60(%rbp), %eax
	cltq
	addq	$1300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-104(%rbp), %rax
	jne	.L555
	movl	$1, -64(%rbp)
.L555:
	addl	$1, -60(%rbp)
.L554:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+82648(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L556
	cmpl	$0, -64(%rbp)
	jne	.L557
	movq	prof+82648(%rip), %rax
	cmpq	$99, %rax
	ja	.L557
	movq	prof+82648(%rip), %rax
	leaq	1300(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+82648(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+82648(%rip)
.L557:
	movq	prof+82584(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+82584(%rip)
	movq	prof+82592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+82592(%rip)
	movl	$0, %eax
.L540:
	addq	$168, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	lsearch, .-lsearch
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+17656(%rip)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L559
	jmp	.L560
.L561:
	addq	$1, -24(%rbp)
.L560:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L559
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L559
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L561
.L559:
	movq	prof+17656(%rip), %rdx
	movq	prof+17664(%rip), %rax
	cmpq	%rax, %rdx
	je	.L562
	movq	prof+17656(%rip), %rdx
	movq	prof+17664(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L562
	movq	prof+17656(%rip), %rdx
	movq	prof+17664(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$2076, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$2076, %rax
	movq	%rdx, prof+8(,%rax,8)
.L562:
	call	rdtsc
	movq	%rax, prof+17664(%rip)
	movq	b_strcmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L563
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L564
.L563:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L564:
	leaq	2140(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2140, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+17640(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17640(%rip)
	cmpq	$16, -24(%rbp)
	ja	.L565
	movq	prof+11808(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+11808(%rip)
.L565:
	movq	b_strcmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L566
	movq	-72(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L567
.L566:
	movq	-24(%rbp), %rax
.L567:
	movq	%rax, -32(%rbp)
	movq	prof+17664(%rip), %rdx
	movq	prof+17656(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L568
	cmpq	$999, -32(%rbp)
	jbe	.L569
	movq	$999, -32(%rbp)
.L569:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1576(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$1576, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1776(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+17664(%rip), %rbx
	movq	prof+17656(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$1776, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L570
	movq	$99, -32(%rbp)
.L570:
	movq	-32(%rbp), %rax
	addq	$1476, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$1476, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$1676, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+17664(%rip), %rcx
	movq	prof+17656(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$1676, %rax
	movq	%rdx, prof+8(,%rax,8)
.L568:
	movq	b_strcmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L571
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L572
	movq	$999, -40(%rbp)
.L572:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	1976(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$1976, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L573
	movq	$99, -40(%rbp)
.L573:
	movq	-40(%rbp), %rax
	addq	$1876, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$1876, %rax
	movq	%rdx, prof+8(,%rax,8)
.L571:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -56(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L574
.L576:
	movl	-44(%rbp), %eax
	cltq
	addq	$200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-56(%rbp), %rax
	jne	.L575
	movl	$1, -48(%rbp)
.L575:
	addl	$1, -44(%rbp)
.L574:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+17704(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L576
	cmpl	$0, -48(%rbp)
	jne	.L577
	movq	prof+17704(%rip), %rax
	cmpq	$99, %rax
	ja	.L577
	movq	prof+17704(%rip), %rax
	leaq	200(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+17704(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17704(%rip)
.L577:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L578
	movl	$0, %eax
	jmp	.L579
.L578:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L580
	movl	$0, %eax
	jmp	.L579
.L580:
	movq	prof+17640(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+17640(%rip)
	movq	prof+17648(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17648(%rip)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jge	.L581
	movl	$-1, %eax
	jmp	.L579
.L581:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jle	.L582
	movl	$1, %eax
	jmp	.L579
.L582:
	jmp	.L558
.L579:
.L558:
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	strncmp, .-strncmp
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	strcmp, .-strcmp
.globl strndup
	.type	strndup, @function
strndup:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+64888(%rip)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strnlen
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movb	$0, (%rax)
	movq	prof+64888(%rip), %rdx
	movq	prof+64896(%rip), %rax
	cmpq	%rax, %rdx
	je	.L585
	movq	prof+64888(%rip), %rdx
	movq	prof+64896(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L585
	movq	prof+64888(%rip), %rdx
	movq	prof+64896(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$7980, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$7980, %rax
	movq	%rdx, prof+8(,%rax,8)
.L585:
	call	rdtsc
	movq	%rax, prof+64896(%rip)
	movq	b_strdup(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L586
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L587
.L586:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L587:
	leaq	8044(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$8044, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+64872(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+64872(%rip)
	cmpq	$16, -48(%rbp)
	ja	.L588
	movq	prof+59040(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+59040(%rip)
.L588:
	movq	b_strdup(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L589
	movq	-72(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L590
.L589:
	movq	-48(%rbp), %rax
.L590:
	movq	%rax, -24(%rbp)
	movq	prof+64896(%rip), %rdx
	movq	prof+64888(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L591
	cmpq	$999, -24(%rbp)
	jbe	.L592
	movq	$999, -24(%rbp)
.L592:
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	7480(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$7480, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	7680(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+64896(%rip), %rbx
	movq	prof+64888(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$7680, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L593
	movq	$99, -24(%rbp)
.L593:
	movq	-24(%rbp), %rax
	addq	$7380, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$7380, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$7580, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+64896(%rip), %rcx
	movq	prof+64888(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$7580, %rax
	movq	%rdx, prof+8(,%rax,8)
.L591:
	movq	b_strdup(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L594
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L595
	movq	$999, -32(%rbp)
.L595:
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	7880(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$7880, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L596
	movq	$99, -32(%rbp)
.L596:
	movq	-32(%rbp), %rax
	addq	$7780, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$7780, %rax
	movq	%rdx, prof+8(,%rax,8)
.L594:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L597
.L599:
	movl	-36(%rbp), %eax
	cltq
	addq	$1000, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L598
	movl	$1, -40(%rbp)
.L598:
	addl	$1, -36(%rbp)
.L597:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+64936(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L599
	cmpl	$0, -40(%rbp)
	jne	.L600
	movq	prof+64936(%rip), %rax
	cmpq	$99, %rax
	ja	.L600
	movq	prof+64936(%rip), %rax
	leaq	1000(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+64936(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+64936(%rip)
.L600:
	movq	-56(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	strndup, .-strndup
.globl strdup
	.type	strdup, @function
strdup:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	strndup
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	strdup, .-strdup
.globl strspn2
	.type	strspn2, @function
strspn2:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+53080(%rip)
	movq	$0, -24(%rbp)
.L624:
	movl	$0, -28(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L603
.L605:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L604
	movl	$1, -28(%rbp)
.L604:
	addq	$1, -40(%rbp)
.L603:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L605
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L606
	movl	-28(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.L607
.L606:
	movq	prof+53080(%rip), %rdx
	movq	prof+53088(%rip), %rax
	cmpq	%rax, %rdx
	je	.L608
	movq	prof+53080(%rip), %rdx
	movq	prof+53088(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L608
	movq	prof+53080(%rip), %rdx
	movq	prof+53088(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$6504, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$6504, %rax
	movq	%rdx, prof+8(,%rax,8)
.L608:
	call	rdtsc
	movq	%rax, prof+53088(%rip)
	movq	b_strspn(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L609
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L610
.L609:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L610:
	leaq	6568(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$6568, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+53064(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+53064(%rip)
	cmpq	$16, -24(%rbp)
	ja	.L611
	movq	prof+47232(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+47232(%rip)
.L611:
	movq	b_strspn(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L612
	movq	-88(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L613
.L612:
	movq	-24(%rbp), %rax
.L613:
	movq	%rax, -48(%rbp)
	movq	prof+53088(%rip), %rdx
	movq	prof+53080(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L614
	cmpq	$999, -48(%rbp)
	jbe	.L615
	movq	$999, -48(%rbp)
.L615:
	movq	-48(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	6004(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$6004, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-48(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	6204(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+53088(%rip), %rbx
	movq	prof+53080(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$6204, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L616
	movq	$99, -48(%rbp)
.L616:
	movq	-48(%rbp), %rax
	addq	$5904, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$5904, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-48(%rbp), %rax
	addq	$6104, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+53088(%rip), %rcx
	movq	prof+53080(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-48(%rbp), %rax
	addq	$6104, %rax
	movq	%rdx, prof+8(,%rax,8)
.L614:
	movq	b_strspn(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L617
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -56(%rbp)
	cmpq	$999, -56(%rbp)
	jbe	.L618
	movq	$999, -56(%rbp)
.L618:
	movq	-56(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	6404(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$6404, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -56(%rbp)
	jbe	.L619
	movq	$99, -56(%rbp)
.L619:
	movq	-56(%rbp), %rax
	addq	$6304, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$6304, %rax
	movq	%rdx, prof+8(,%rax,8)
.L617:
	movl	$0, -64(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L620
.L622:
	movl	-60(%rbp), %eax
	cltq
	addq	$800, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L621
	movl	$1, -64(%rbp)
.L621:
	addl	$1, -60(%rbp)
.L620:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+53128(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L622
	cmpl	$0, -64(%rbp)
	jne	.L623
	movq	prof+53128(%rip), %rax
	cmpq	$99, %rax
	ja	.L623
	movq	prof+53128(%rip), %rax
	leaq	800(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+53128(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+53128(%rip)
.L623:
	movq	-24(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L607:
	.cfi_restore_state
	addq	$1, -24(%rbp)
	jmp	.L624
	.cfi_endproc
.LFE31:
	.size	strspn2, .-strspn2
.globl strspn
	.type	strspn, @function
strspn:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strspn2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	strspn, .-strspn
.globl strcspn
	.type	strcspn, @function
strcspn:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strspn2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	strcspn, .-strcspn
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn
	addq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L628
	movq	-8(%rbp), %rax
	jmp	.L629
.L628:
	movl	$0, %eax
.L629:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	strpbrk, .-strpbrk
.globl strstr2
	.type	strstr2, @function
strstr2:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+23560(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L631
.L654:
	movq	$0, -24(%rbp)
	jmp	.L632
.L635:
	addq	$1, -24(%rbp)
.L632:
	movq	-24(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L633
	cmpl	$0, -132(%rbp)
	je	.L634
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	je	.L635
	jmp	.L633
.L634:
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	-128(%rbp), %rcx
	leaq	(%rcx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L635
.L633:
	movq	-24(%rbp), %rax
	movq	-128(%rbp), %rdx
	leaq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L636
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	prof+23560(%rip), %rdx
	movq	prof+23568(%rip), %rax
	cmpq	%rax, %rdx
	je	.L637
	movq	prof+23560(%rip), %rdx
	movq	prof+23568(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L637
	movq	prof+23560(%rip), %rdx
	movq	prof+23568(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$2814, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$2814, %rax
	movq	%rdx, prof+8(,%rax,8)
.L637:
	call	rdtsc
	movq	%rax, prof+23568(%rip)
	movq	b_strstr(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L638
	movq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L639
.L638:
	movq	-80(%rbp), %rax
	andl	$63, %eax
.L639:
	leaq	2878(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2878, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+23544(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+23544(%rip)
	cmpq	$16, -88(%rbp)
	ja	.L640
	movq	prof+17712(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17712(%rip)
.L640:
	movq	b_strstr(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L641
	movq	-80(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-80(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L642
.L641:
	movq	-88(%rbp), %rax
.L642:
	movq	%rax, -32(%rbp)
	movq	prof+23568(%rip), %rdx
	movq	prof+23560(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L643
	cmpq	$999, -32(%rbp)
	jbe	.L644
	movq	$999, -32(%rbp)
.L644:
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	2314(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2314, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	2514(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+23568(%rip), %rbx
	movq	prof+23560(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$2514, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L645
	movq	$99, -32(%rbp)
.L645:
	movq	-32(%rbp), %rax
	addq	$2214, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$2214, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$2414, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+23568(%rip), %rcx
	movq	prof+23560(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$2414, %rax
	movq	%rdx, prof+8(,%rax,8)
.L643:
	movq	b_strstr(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L646
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L647
	movq	$999, -40(%rbp)
.L647:
	movq	-40(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	2714(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2714, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L648
	movq	$99, -40(%rbp)
.L648:
	movq	-40(%rbp), %rax
	addq	$2614, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$2614, %rax
	movq	%rdx, prof+8(,%rax,8)
.L646:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -96(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L649
.L651:
	movl	-44(%rbp), %eax
	cltq
	addq	$300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-96(%rbp), %rax
	jne	.L650
	movl	$1, -48(%rbp)
.L650:
	addl	$1, -44(%rbp)
.L649:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+23608(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L651
	cmpl	$0, -48(%rbp)
	jne	.L652
	movq	prof+23608(%rip), %rax
	cmpq	$99, %rax
	ja	.L652
	movq	prof+23608(%rip), %rax
	leaq	300(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+23608(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+23608(%rip)
.L652:
	movq	-120(%rbp), %rax
	jmp	.L653
.L636:
	addq	$1, -120(%rbp)
.L631:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L654
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	prof+23560(%rip), %rdx
	movq	prof+23568(%rip), %rax
	cmpq	%rax, %rdx
	je	.L655
	movq	prof+23560(%rip), %rdx
	movq	prof+23568(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L655
	movq	prof+23560(%rip), %rdx
	movq	prof+23568(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$2814, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$2814, %rax
	movq	%rdx, prof+8(,%rax,8)
.L655:
	call	rdtsc
	movq	%rax, prof+23568(%rip)
	movq	b_strstr(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L656
	movq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L657
.L656:
	movq	-80(%rbp), %rax
	andl	$63, %eax
.L657:
	leaq	2878(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2878, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+23544(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+23544(%rip)
	cmpq	$16, -88(%rbp)
	ja	.L658
	movq	prof+17712(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+17712(%rip)
.L658:
	movq	b_strstr(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L659
	movq	-80(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-80(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L660
.L659:
	movq	-88(%rbp), %rax
.L660:
	movq	%rax, -56(%rbp)
	movq	prof+23568(%rip), %rdx
	movq	prof+23560(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L661
	cmpq	$999, -56(%rbp)
	jbe	.L662
	movq	$999, -56(%rbp)
.L662:
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	2314(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2314, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-56(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	2514(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+23568(%rip), %rbx
	movq	prof+23560(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$2514, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -56(%rbp)
	jbe	.L663
	movq	$99, -56(%rbp)
.L663:
	movq	-56(%rbp), %rax
	addq	$2214, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$2214, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-56(%rbp), %rax
	addq	$2414, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+23568(%rip), %rcx
	movq	prof+23560(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-56(%rbp), %rax
	addq	$2414, %rax
	movq	%rdx, prof+8(,%rax,8)
.L661:
	movq	b_strstr(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L664
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -64(%rbp)
	cmpq	$999, -64(%rbp)
	jbe	.L665
	movq	$999, -64(%rbp)
.L665:
	movq	-64(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	2714(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$2714, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -64(%rbp)
	jbe	.L666
	movq	$99, -64(%rbp)
.L666:
	movq	-64(%rbp), %rax
	addq	$2614, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	$2614, %rax
	movq	%rdx, prof+8(,%rax,8)
.L664:
	movl	$0, -72(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -104(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L667
.L669:
	movl	-68(%rbp), %eax
	cltq
	addq	$300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-104(%rbp), %rax
	jne	.L668
	movl	$1, -72(%rbp)
.L668:
	addl	$1, -68(%rbp)
.L667:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+23608(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L669
	cmpl	$0, -72(%rbp)
	jne	.L670
	movq	prof+23608(%rip), %rax
	cmpq	$99, %rax
	ja	.L670
	movq	prof+23608(%rip), %rax
	leaq	300(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+23608(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+23608(%rip)
.L670:
	movq	prof+23544(%rip), %rax
	subq	$1, %rax
	movq	%rax, prof+23544(%rip)
	movq	prof+23552(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+23552(%rip)
	movl	$0, %eax
.L653:
	addq	$152, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	strstr2, .-strstr2
.globl strstr
	.type	strstr, @function
strstr:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strstr2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	strstr, .-strstr
.globl strcasestr
	.type	strcasestr, @function
strcasestr:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strstr2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	strcasestr, .-strcasestr
.globl memset
	.type	memset, @function
memset:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+88504(%rip)
	movq	$0, -24(%rbp)
	jmp	.L674
.L675:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L674:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L675
	movq	prof+88504(%rip), %rdx
	movq	prof+88512(%rip), %rax
	cmpq	%rax, %rdx
	je	.L676
	movq	prof+88504(%rip), %rdx
	movq	prof+88512(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L676
	movq	prof+88504(%rip), %rdx
	movq	prof+88512(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$10932, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$10932, %rax
	movq	%rdx, prof+8(,%rax,8)
.L676:
	call	rdtsc
	movq	%rax, prof+88512(%rip)
	movq	b_memset(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L677
	movq	-72(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L678
.L677:
	movq	-72(%rbp), %rax
	andl	$63, %eax
.L678:
	leaq	10996(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10996, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+88488(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88488(%rip)
	cmpq	$16, -56(%rbp)
	ja	.L679
	movq	prof+82656(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+82656(%rip)
.L679:
	movq	b_memset(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L680
	movq	-72(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-72(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L681
.L680:
	movq	-56(%rbp), %rax
.L681:
	movq	%rax, -32(%rbp)
	movq	prof+88512(%rip), %rdx
	movq	prof+88504(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L682
	cmpq	$999, -32(%rbp)
	jbe	.L683
	movq	$999, -32(%rbp)
.L683:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	10432(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10432, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	10632(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+88512(%rip), %rbx
	movq	prof+88504(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$10632, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L684
	movq	$99, -32(%rbp)
.L684:
	movq	-32(%rbp), %rax
	addq	$10332, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$10332, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$10532, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+88512(%rip), %rcx
	movq	prof+88504(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$10532, %rax
	movq	%rdx, prof+8(,%rax,8)
.L682:
	movq	b_memset(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L685
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L686
	movq	$999, -40(%rbp)
.L686:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	10832(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$10832, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L687
	movq	$99, -40(%rbp)
.L687:
	movq	-40(%rbp), %rax
	addq	$10732, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$10732, %rax
	movq	%rdx, prof+8(,%rax,8)
.L685:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L688
.L690:
	movl	-44(%rbp), %eax
	cltq
	addq	$1400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L689
	movl	$1, -48(%rbp)
.L689:
	addl	$1, -44(%rbp)
.L688:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+88552(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L690
	cmpl	$0, -48(%rbp)
	jne	.L691
	movq	prof+88552(%rip), %rax
	cmpq	$99, %rax
	ja	.L691
	movq	prof+88552(%rip), %rax
	leaq	1400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+88552(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88552(%rip)
.L691:
	movq	-72(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	memset, .-memset
.globl bzero
	.type	bzero, @function
bzero:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	bzero, .-bzero
.globl strverscmp
	.type	strverscmp, @function
strverscmp:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -200(%rbp)
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	call	rdtsc
	movq	%rax, prof+94408(%rip)
	movq	-280(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L694
	movq	-24(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	cmpq	%rax, %rdx
	je	.L695
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L695
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$11670, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$11670, %rax
	movq	%rdx, prof+8(,%rax,8)
.L695:
	call	rdtsc
	movq	%rax, prof+94416(%rip)
	movq	b_strverscmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L696
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L697
.L696:
	movq	-192(%rbp), %rax
	andl	$63, %eax
.L697:
	leaq	11734(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11734, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+94392(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94392(%rip)
	cmpq	$16, -208(%rbp)
	ja	.L698
	movq	prof+88560(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88560(%rip)
.L698:
	movq	b_strverscmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L699
	movq	-192(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-192(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L700
.L699:
	movq	-208(%rbp), %rax
.L700:
	movq	%rax, -40(%rbp)
	movq	prof+94416(%rip), %rdx
	movq	prof+94408(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L701
	cmpq	$999, -40(%rbp)
	jbe	.L702
	movq	$999, -40(%rbp)
.L702:
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11170(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11170, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11370(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+94416(%rip), %rbx
	movq	prof+94408(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$11370, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L703
	movq	$99, -40(%rbp)
.L703:
	movq	-40(%rbp), %rax
	addq	$11070, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$11070, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-40(%rbp), %rax
	addq	$11270, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+94416(%rip), %rcx
	movq	prof+94408(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-40(%rbp), %rax
	addq	$11270, %rax
	movq	%rdx, prof+8(,%rax,8)
.L701:
	movq	b_strverscmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L704
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -48(%rbp)
	cmpq	$999, -48(%rbp)
	jbe	.L705
	movq	$999, -48(%rbp)
.L705:
	movq	-48(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11570(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11570, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -48(%rbp)
	jbe	.L706
	movq	$99, -48(%rbp)
.L706:
	movq	-48(%rbp), %rax
	addq	$11470, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	$11470, %rax
	movq	%rdx, prof+8(,%rax,8)
.L704:
	movl	$0, -56(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -216(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L707
.L709:
	movl	-52(%rbp), %eax
	cltq
	addq	$1500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-216(%rbp), %rax
	jne	.L708
	movl	$1, -56(%rbp)
.L708:
	addl	$1, -52(%rbp)
.L707:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+94456(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L709
	cmpl	$0, -56(%rbp)
	jne	.L710
	movq	prof+94456(%rip), %rax
	cmpq	$99, %rax
	ja	.L710
	movq	prof+94456(%rip), %rax
	leaq	1500(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+94456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94456(%rip)
.L710:
	movl	$0, %eax
	jmp	.L711
.L694:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -57(%rbp)
	addq	$1, -24(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -58(%rbp)
	addq	$1, -32(%rbp)
	cmpb	$48, -57(%rbp)
	sete	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-57(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%rbx,%rax), %eax
	movl	%eax, -64(%rbp)
	jmp	.L712
.L730:
	cmpb	$0, -57(%rbp)
	jne	.L713
	movq	-24(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	cmpq	%rax, %rdx
	je	.L714
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L714
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$11670, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$11670, %rax
	movq	%rdx, prof+8(,%rax,8)
.L714:
	call	rdtsc
	movq	%rax, prof+94416(%rip)
	movq	b_strverscmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L715
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L716
.L715:
	movq	-192(%rbp), %rax
	andl	$63, %eax
.L716:
	leaq	11734(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11734, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+94392(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94392(%rip)
	cmpq	$16, -208(%rbp)
	ja	.L717
	movq	prof+88560(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88560(%rip)
.L717:
	movq	b_strverscmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L718
	movq	-192(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-192(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L719
.L718:
	movq	-208(%rbp), %rax
.L719:
	movq	%rax, -72(%rbp)
	movq	prof+94416(%rip), %rdx
	movq	prof+94408(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L720
	cmpq	$999, -72(%rbp)
	jbe	.L721
	movq	$999, -72(%rbp)
.L721:
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11170(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11170, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-72(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11370(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+94416(%rip), %rbx
	movq	prof+94408(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$11370, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -72(%rbp)
	jbe	.L722
	movq	$99, -72(%rbp)
.L722:
	movq	-72(%rbp), %rax
	addq	$11070, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$11070, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-72(%rbp), %rax
	addq	$11270, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+94416(%rip), %rcx
	movq	prof+94408(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-72(%rbp), %rax
	addq	$11270, %rax
	movq	%rdx, prof+8(,%rax,8)
.L720:
	movq	b_strverscmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L723
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -80(%rbp)
	cmpq	$999, -80(%rbp)
	jbe	.L724
	movq	$999, -80(%rbp)
.L724:
	movq	-80(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11570(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11570, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -80(%rbp)
	jbe	.L725
	movq	$99, -80(%rbp)
.L725:
	movq	-80(%rbp), %rax
	addq	$11470, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	$11470, %rax
	movq	%rdx, prof+8(,%rax,8)
.L723:
	movl	$0, -88(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -232(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L726
.L728:
	movl	-84(%rbp), %eax
	cltq
	addq	$1500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-232(%rbp), %rax
	jne	.L727
	movl	$1, -88(%rbp)
.L727:
	addl	$1, -84(%rbp)
.L726:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+94456(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L728
	cmpl	$0, -88(%rbp)
	jne	.L729
	movq	prof+94456(%rip), %rax
	cmpq	$99, %rax
	ja	.L729
	movq	prof+94456(%rip), %rax
	leaq	1500(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+94456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94456(%rip)
.L729:
	movl	-220(%rbp), %eax
	jmp	.L711
.L713:
	movl	-64(%rbp), %eax
	cltq
	movzbl	next_state.4863(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -57(%rbp)
	addq	$1, -24(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -58(%rbp)
	addq	$1, -32(%rbp)
	cmpb	$48, -57(%rbp)
	sete	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-57(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%rbx,%rax), %eax
	addl	%eax, -64(%rbp)
.L712:
	movzbl	-57(%rbp), %edx
	movzbl	-58(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -220(%rbp)
	cmpl	$0, -220(%rbp)
	je	.L730
	movl	-64(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %r12d
	cmpb	$48, -58(%rbp)
	sete	%al
	movzbl	%al, %ebx
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-58(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%rbx,%rax), %eax
	leal	(%r12,%rax), %eax
	cltq
	movzbl	result_type.4864(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cmpl	$2, %eax
	je	.L732
	cmpl	$3, %eax
	je	.L803
	jmp	.L802
.L732:
	movq	-24(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -208(%rbp)
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	cmpq	%rax, %rdx
	je	.L734
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L734
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movslq	%eax, %rdx
	addq	$11670, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$11670, %rax
	movq	%rdx, prof+8(,%rax,8)
.L734:
	call	rdtsc
	movq	%rax, prof+94416(%rip)
	movq	b_strverscmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L735
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	jmp	.L736
.L735:
	movq	-192(%rbp), %rax
	andl	$63, %eax
.L736:
	leaq	11734(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11734, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+94392(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94392(%rip)
	cmpq	$16, -208(%rbp)
	ja	.L737
	movq	prof+88560(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88560(%rip)
.L737:
	movq	b_strverscmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L738
	movq	-192(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-192(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	jmp	.L739
.L738:
	movq	-208(%rbp), %rax
.L739:
	movq	%rax, -96(%rbp)
	movq	prof+94416(%rip), %rdx
	movq	prof+94408(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	$1999999, %rax
	ja	.L740
	cmpq	$999, -96(%rbp)
	jbe	.L741
	movq	$999, -96(%rbp)
.L741:
	movq	-96(%rbp), %rbx
	movq	%rbx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11170(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11170, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-96(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11370(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+94416(%rip), %rbx
	movq	prof+94408(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$11370, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -96(%rbp)
	jbe	.L742
	movq	$99, -96(%rbp)
.L742:
	movq	-96(%rbp), %rax
	addq	$11070, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	$11070, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-96(%rbp), %rax
	addq	$11270, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+94416(%rip), %rcx
	movq	prof+94408(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-96(%rbp), %rax
	addq	$11270, %rax
	movq	%rdx, prof+8(,%rax,8)
.L740:
	movq	b_strverscmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L743
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -104(%rbp)
	cmpq	$999, -104(%rbp)
	jbe	.L744
	movq	$999, -104(%rbp)
.L744:
	movq	-104(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11570(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11570, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -104(%rbp)
	jbe	.L745
	movq	$99, -104(%rbp)
.L745:
	movq	-104(%rbp), %rax
	addq	$11470, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	$11470, %rax
	movq	%rdx, prof+8(,%rax,8)
.L743:
	movl	$0, -112(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -240(%rbp)
	movl	$0, -108(%rbp)
	jmp	.L746
.L748:
	movl	-108(%rbp), %eax
	cltq
	addq	$1500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-240(%rbp), %rax
	jne	.L747
	movl	$1, -112(%rbp)
.L747:
	addl	$1, -108(%rbp)
.L746:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+94456(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L748
	cmpl	$0, -112(%rbp)
	jne	.L749
	movq	prof+94456(%rip), %rax
	cmpq	$99, %rax
	ja	.L749
	movq	prof+94456(%rip), %rax
	leaq	1500(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+94456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94456(%rip)
.L749:
	movl	-220(%rbp), %eax
	jmp	.L711
.L767:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	leaq	(%rdx,%rax), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	sete	%al
	addq	$1, -32(%rbp)
	testb	%al, %al
	je	.L750
	movq	-24(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	cmpq	%rax, %rdx
	je	.L751
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L751
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$11670, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$11670, %rax
	movq	%rdx, prof+8(,%rax,8)
.L751:
	call	rdtsc
	movq	%rax, prof+94416(%rip)
	movq	b_strverscmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L752
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L753
.L752:
	movq	-192(%rbp), %rax
	andl	$63, %eax
.L753:
	leaq	11734(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11734, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+94392(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94392(%rip)
	cmpq	$16, -208(%rbp)
	ja	.L754
	movq	prof+88560(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88560(%rip)
.L754:
	movq	b_strverscmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L755
	movq	-192(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-192(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L756
.L755:
	movq	-208(%rbp), %rax
.L756:
	movq	%rax, -120(%rbp)
	movq	prof+94416(%rip), %rdx
	movq	prof+94408(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L757
	cmpq	$999, -120(%rbp)
	jbe	.L758
	movq	$999, -120(%rbp)
.L758:
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11170(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11170, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-120(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11370(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+94416(%rip), %rbx
	movq	prof+94408(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$11370, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -120(%rbp)
	jbe	.L759
	movq	$99, -120(%rbp)
.L759:
	movq	-120(%rbp), %rax
	addq	$11070, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	$11070, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-120(%rbp), %rax
	addq	$11270, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+94416(%rip), %rcx
	movq	prof+94408(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-120(%rbp), %rax
	addq	$11270, %rax
	movq	%rdx, prof+8(,%rax,8)
.L757:
	movq	b_strverscmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L760
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -128(%rbp)
	cmpq	$999, -128(%rbp)
	jbe	.L761
	movq	$999, -128(%rbp)
.L761:
	movq	-128(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11570(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11570, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -128(%rbp)
	jbe	.L762
	movq	$99, -128(%rbp)
.L762:
	movq	-128(%rbp), %rax
	addq	$11470, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-128(%rbp), %rax
	addq	$11470, %rax
	movq	%rdx, prof+8(,%rax,8)
.L760:
	movl	$0, -136(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -248(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L763
.L765:
	movl	-132(%rbp), %eax
	cltq
	addq	$1500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-248(%rbp), %rax
	jne	.L764
	movl	$1, -136(%rbp)
.L764:
	addl	$1, -132(%rbp)
.L763:
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+94456(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L765
	cmpl	$0, -136(%rbp)
	jne	.L766
	movq	prof+94456(%rip), %rax
	cmpq	$99, %rax
	ja	.L766
	movq	prof+94456(%rip), %rax
	leaq	1500(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+94456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94456(%rip)
.L766:
	movl	$1, %eax
	jmp	.L711
.L803:
	nop
.L750:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	leaq	(%rdx,%rax), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	addq	$1, -24(%rbp)
	testb	%al, %al
	jne	.L767
	movq	-24(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	cmpq	%rax, %rdx
	je	.L768
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L768
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$11670, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$11670, %rax
	movq	%rdx, prof+8(,%rax,8)
.L768:
	call	rdtsc
	movq	%rax, prof+94416(%rip)
	movq	b_strverscmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L769
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L770
.L769:
	movq	-192(%rbp), %rax
	andl	$63, %eax
.L770:
	leaq	11734(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11734, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+94392(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94392(%rip)
	cmpq	$16, -208(%rbp)
	ja	.L771
	movq	prof+88560(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88560(%rip)
.L771:
	movq	b_strverscmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L772
	movq	-192(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-192(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L773
.L772:
	movq	-208(%rbp), %rax
.L773:
	movq	%rax, -144(%rbp)
	movq	prof+94416(%rip), %rdx
	movq	prof+94408(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L774
	cmpq	$999, -144(%rbp)
	jbe	.L775
	movq	$999, -144(%rbp)
.L775:
	movq	-144(%rbp), %rax
	movq	%rax, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11170(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11170, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-144(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11370(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+94416(%rip), %rbx
	movq	prof+94408(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$11370, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -144(%rbp)
	jbe	.L776
	movq	$99, -144(%rbp)
.L776:
	movq	-144(%rbp), %rax
	addq	$11070, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-144(%rbp), %rax
	addq	$11070, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-144(%rbp), %rax
	addq	$11270, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+94416(%rip), %rcx
	movq	prof+94408(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-144(%rbp), %rax
	addq	$11270, %rax
	movq	%rdx, prof+8(,%rax,8)
.L774:
	movq	b_strverscmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L777
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -152(%rbp)
	cmpq	$999, -152(%rbp)
	jbe	.L778
	movq	$999, -152(%rbp)
.L778:
	movq	-152(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11570(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11570, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -152(%rbp)
	jbe	.L779
	movq	$99, -152(%rbp)
.L779:
	movq	-152(%rbp), %rax
	addq	$11470, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-152(%rbp), %rax
	addq	$11470, %rax
	movq	%rdx, prof+8(,%rax,8)
.L777:
	movl	$0, -160(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -256(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L780
.L782:
	movl	-156(%rbp), %eax
	cltq
	addq	$1500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-256(%rbp), %rax
	jne	.L781
	movl	$1, -160(%rbp)
.L781:
	addl	$1, -156(%rbp)
.L780:
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+94456(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L782
	cmpl	$0, -160(%rbp)
	jne	.L783
	movq	prof+94456(%rip), %rax
	cmpq	$99, %rax
	ja	.L783
	movq	prof+94456(%rip), %rax
	leaq	1500(%rax), %rdx
	movq	-256(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+94456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94456(%rip)
.L783:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	leaq	(%rdx,%rax), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L784
	movl	-220(%rbp), %eax
	jmp	.L785
.L784:
	movl	$-1, %eax
.L785:
	jmp	.L711
.L802:
	movq	-24(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	cmpq	%rax, %rdx
	je	.L786
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L786
	movq	prof+94408(%rip), %rdx
	movq	prof+94416(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$11670, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$11670, %rax
	movq	%rdx, prof+8(,%rax,8)
.L786:
	call	rdtsc
	movq	%rax, prof+94416(%rip)
	movq	b_strverscmp(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L787
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L788
.L787:
	movq	-192(%rbp), %rax
	andl	$63, %eax
.L788:
	leaq	11734(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11734, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+94392(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94392(%rip)
	cmpq	$16, -208(%rbp)
	ja	.L789
	movq	prof+88560(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+88560(%rip)
.L789:
	movq	b_strverscmp(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L790
	movq	-192(%rbp), %rax
	addq	-208(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-192(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L791
.L790:
	movq	-208(%rbp), %rax
.L791:
	movq	%rax, -168(%rbp)
	movq	prof+94416(%rip), %rdx
	movq	prof+94408(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L792
	cmpq	$999, -168(%rbp)
	jbe	.L793
	movq	$999, -168(%rbp)
.L793:
	movq	-168(%rbp), %rax
	movq	%rax, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11170(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11170, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-168(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11370(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+94416(%rip), %rbx
	movq	prof+94408(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$11370, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -168(%rbp)
	jbe	.L794
	movq	$99, -168(%rbp)
.L794:
	movq	-168(%rbp), %rax
	addq	$11070, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-168(%rbp), %rax
	addq	$11070, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-168(%rbp), %rax
	addq	$11270, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+94416(%rip), %rcx
	movq	prof+94408(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-168(%rbp), %rax
	addq	$11270, %rax
	movq	%rdx, prof+8(,%rax,8)
.L792:
	movq	b_strverscmp(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L795
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -176(%rbp)
	cmpq	$999, -176(%rbp)
	jbe	.L796
	movq	$999, -176(%rbp)
.L796:
	movq	-176(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-296(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11570(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11570, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -176(%rbp)
	jbe	.L797
	movq	$99, -176(%rbp)
.L797:
	movq	-176(%rbp), %rax
	addq	$11470, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-176(%rbp), %rax
	addq	$11470, %rax
	movq	%rdx, prof+8(,%rax,8)
.L795:
	movl	$0, -184(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -264(%rbp)
	movl	$0, -180(%rbp)
	jmp	.L798
.L800:
	movl	-180(%rbp), %eax
	cltq
	addq	$1500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-264(%rbp), %rax
	jne	.L799
	movl	$1, -184(%rbp)
.L799:
	addl	$1, -180(%rbp)
.L798:
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+94456(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L800
	cmpl	$0, -184(%rbp)
	jne	.L801
	movq	prof+94456(%rip), %rax
	cmpq	$99, %rax
	ja	.L801
	movq	prof+94456(%rip), %rax
	leaq	1500(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+94456(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94456(%rip)
.L801:
	movl	-64(%rbp), %eax
.L711:
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	strverscmp, .-strverscmp
.globl strtol
	.type	strtol, @function
strtol:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+100312(%rip)
	movl	-100(%rbp), %edx
	leaq	-72(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoll
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L805
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L805:
	movq	prof+100312(%rip), %rdx
	movq	prof+100320(%rip), %rax
	cmpq	%rax, %rdx
	je	.L806
	movq	prof+100312(%rip), %rdx
	movq	prof+100320(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L806
	movq	prof+100312(%rip), %rdx
	movq	prof+100320(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movslq	%eax, %rdx
	addq	$12408, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$12408, %rax
	movq	%rdx, prof+8(,%rax,8)
.L806:
	call	rdtsc
	movq	%rax, prof+100320(%rip)
	movq	b_strtol(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L807
	movq	-88(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	jmp	.L808
.L807:
	movq	-88(%rbp), %rax
	andl	$63, %eax
.L808:
	leaq	12472(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$12472, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+100296(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+100296(%rip)
	cmpq	$16, -56(%rbp)
	ja	.L809
	movq	prof+94464(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+94464(%rip)
.L809:
	movq	b_strtol(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L810
	movq	-88(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-88(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	addq	$1, %rax
	jmp	.L811
.L810:
	movq	-56(%rbp), %rax
.L811:
	movq	%rax, -24(%rbp)
	movq	prof+100320(%rip), %rdx
	movq	prof+100312(%rip), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	cmpq	$1999999, %rax
	ja	.L812
	cmpq	$999, -24(%rbp)
	jbe	.L813
	movq	$999, -24(%rbp)
.L813:
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	11908(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$11908, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	12108(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+100320(%rip), %rbx
	movq	prof+100312(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$12108, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L814
	movq	$99, -24(%rbp)
.L814:
	movq	-24(%rbp), %rax
	addq	$11808, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$11808, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$12008, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+100320(%rip), %rcx
	movq	prof+100312(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$12008, %rax
	movq	%rdx, prof+8(,%rax,8)
.L812:
	movq	b_strtol(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L815
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L816
	movq	$999, -32(%rbp)
.L816:
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	12308(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$12308, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L817
	movq	$99, -32(%rbp)
.L817:
	movq	-32(%rbp), %rax
	addq	$12208, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$12208, %rax
	movq	%rdx, prof+8(,%rax,8)
.L815:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L818
.L820:
	movl	-36(%rbp), %eax
	cltq
	addq	$1600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L819
	movl	$1, -40(%rbp)
.L819:
	addl	$1, -36(%rbp)
.L818:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+100360(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L820
	cmpl	$0, -40(%rbp)
	jne	.L821
	movq	prof+100360(%rip), %rax
	cmpq	$99, %rax
	ja	.L821
	movq	prof+100360(%rip), %rax
	leaq	1600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+100360(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+100360(%rip)
.L821:
	movq	-48(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	strtol, .-strtol
.globl __malloc2
	.type	__malloc2, @function
__malloc2:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -88(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+106216(%rip)
	movq	__malloc_hook2(%rip), %rax
	movq	%rax, __malloc_hook(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -64(%rbp)
	movl	$__malloc2, %eax
	movq	%rax, __malloc_hook(%rip)
	movq	-88(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -88(%rbp)
	movq	prof+106216(%rip), %rdx
	movq	prof+106224(%rip), %rax
	cmpq	%rax, %rdx
	je	.L823
	movq	prof+106216(%rip), %rdx
	movq	prof+106224(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L823
	movq	prof+106216(%rip), %rdx
	movq	prof+106224(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$13146, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$13146, %rax
	movq	%rdx, prof+8(,%rax,8)
.L823:
	call	rdtsc
	movq	%rax, prof+106224(%rip)
	movq	b_malloc(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L824
	movq	-64(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L825
.L824:
	movq	-64(%rbp), %rax
	andl	$63, %eax
.L825:
	leaq	13210(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13210, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+106200(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106200(%rip)
	cmpq	$16, -88(%rbp)
	ja	.L826
	movq	prof+100368(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+100368(%rip)
.L826:
	movq	b_malloc(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L827
	movq	-64(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-64(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L828
.L827:
	movq	-88(%rbp), %rax
.L828:
	movq	%rax, -32(%rbp)
	movq	prof+106224(%rip), %rdx
	movq	prof+106216(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L829
	cmpq	$999, -32(%rbp)
	jbe	.L830
	movq	$999, -32(%rbp)
.L830:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	12646(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$12646, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	12846(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+106224(%rip), %rbx
	movq	prof+106216(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$12846, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L831
	movq	$99, -32(%rbp)
.L831:
	movq	-32(%rbp), %rax
	addq	$12546, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$12546, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$12746, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+106224(%rip), %rcx
	movq	prof+106216(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$12746, %rax
	movq	%rdx, prof+8(,%rax,8)
.L829:
	movq	b_malloc(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L832
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L833
	movq	$999, -40(%rbp)
.L833:
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13046(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13046, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L834
	movq	$99, -40(%rbp)
.L834:
	movq	-40(%rbp), %rax
	addq	$12946, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$12946, %rax
	movq	%rdx, prof+8(,%rax,8)
.L832:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L835
.L837:
	movl	-44(%rbp), %eax
	cltq
	addq	$1700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L836
	movl	$1, -48(%rbp)
.L836:
	addl	$1, -44(%rbp)
.L835:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+106264(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L837
	cmpl	$0, -48(%rbp)
	jne	.L838
	movq	prof+106264(%rip), %rax
	cmpq	$99, %rax
	ja	.L838
	movq	prof+106264(%rip), %rax
	leaq	1700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+106264(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106264(%rip)
.L838:
	call	pthread_self
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	imulq	$12373, %rax, %rax
	leaq	31(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	shrq	$44, %rdx
	addq	%rdx, %rax
	andl	$1048575, %eax
	subq	%rdx, %rax
	movl	%eax, -52(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L839
.L841:
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L840
	addl	$1, -52(%rbp)
.L840:
	addl	$1, -20(%rbp)
.L839:
	cmpl	$7, -20(%rbp)
	jle	.L841
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L842
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	prof+106224(%rip), %rax
	movq	%rax, 8(%rdx)
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 24(%rdx)
.L842:
	movq	main_tid(%rip), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_equal
	testl	%eax, %eax
	jne	.L843
	movq	prof+106232(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106232(%rip)
.L843:
	movq	-64(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	__malloc2, .-__malloc2
.globl __free2
	.type	__free2, @function
__free2:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, -120(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+118024(%rip)
	movq	__free_hook2(%rip), %rax
	movq	%rax, __free_hook(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$__free2, %eax
	movq	%rax, __free_hook(%rip)
	movq	prof+118024(%rip), %rdx
	movq	prof+118032(%rip), %rax
	cmpq	%rax, %rdx
	je	.L845
	movq	prof+118024(%rip), %rdx
	movq	prof+118032(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L845
	movq	prof+118024(%rip), %rdx
	movq	prof+118032(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$14622, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$14622, %rax
	movq	%rdx, prof+8(,%rax,8)
.L845:
	call	rdtsc
	movq	%rax, prof+118032(%rip)
	movq	b_free(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L846
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L847
.L846:
	movq	x(%rip), %rax
	andl	$63, %eax
.L847:
	leaq	14686(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$14686, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+118008(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+118008(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L848
	movq	prof+112176(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112176(%rip)
.L848:
	movq	b_free(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L849
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L850
.L849:
	movq	r(%rip), %rax
.L850:
	movq	%rax, -32(%rbp)
	movq	prof+118032(%rip), %rdx
	movq	prof+118024(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L851
	cmpq	$999, -32(%rbp)
	jbe	.L852
	movq	$999, -32(%rbp)
.L852:
	movq	-32(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-136(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	14122(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$14122, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-136(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	14322(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+118032(%rip), %rbx
	movq	prof+118024(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$14322, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L853
	movq	$99, -32(%rbp)
.L853:
	movq	-32(%rbp), %rax
	addq	$14022, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$14022, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$14222, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+118032(%rip), %rcx
	movq	prof+118024(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$14222, %rax
	movq	%rdx, prof+8(,%rax,8)
.L851:
	movq	b_free(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L854
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L855
	movq	$999, -40(%rbp)
.L855:
	movq	-40(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-136(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	14522(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$14522, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L856
	movq	$99, -40(%rbp)
.L856:
	movq	-40(%rbp), %rax
	addq	$14422, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$14422, %rax
	movq	%rdx, prof+8(,%rax,8)
.L854:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -88(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L857
.L859:
	movl	-44(%rbp), %eax
	cltq
	addq	$1900, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-88(%rbp), %rax
	jne	.L858
	movl	$1, -48(%rbp)
.L858:
	addl	$1, -44(%rbp)
.L857:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+118072(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L859
	cmpl	$0, -48(%rbp)
	jne	.L860
	movq	prof+118072(%rip), %rax
	cmpq	$99, %rax
	ja	.L860
	movq	prof+118072(%rip), %rax
	leaq	1900(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+118072(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+118072(%rip)
.L860:
	cmpq	$0, -120(%rbp)
	je	.L883
.L861:
	call	pthread_self
	movq	%rax, -96(%rbp)
	movq	main_tid(%rip), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_equal
	testl	%eax, %eax
	jne	.L863
	movq	prof+118040(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+118040(%rip)
.L863:
	movq	-120(%rbp), %rax
	imulq	$12373, %rax, %rax
	leaq	31(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	shrq	$44, %rdx
	addq	%rdx, %rax
	andl	$1048575, %eax
	subq	%rdx, %rax
	movl	%eax, -52(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L864
.L866:
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	je	.L865
	addl	$1, -52(%rbp)
.L865:
	addl	$1, -20(%rbp)
.L864:
	cmpl	$7, -20(%rbp)
	jle	.L866
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.L844
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, prof+112120(%rip)
	movq	prof+112120(%rip), %rdx
	movq	prof+112128(%rip), %rax
	cmpq	%rax, %rdx
	je	.L867
	movq	prof+112120(%rip), %rdx
	movq	prof+112128(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L867
	movq	prof+112120(%rip), %rdx
	movq	prof+112128(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$13884, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$13884, %rax
	movq	%rdx, prof+8(,%rax,8)
.L867:
	call	rdtsc
	movq	%rax, prof+112128(%rip)
	movq	b_malloc_lifetime(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L868
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L869
.L868:
	movq	x(%rip), %rax
	andl	$63, %eax
.L869:
	leaq	13948(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13948, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+112104(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112104(%rip)
	cmpq	$16, -104(%rbp)
	ja	.L870
	movq	prof+106272(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106272(%rip)
.L870:
	movq	b_malloc_lifetime(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L871
	movq	x(%rip), %rax
	addq	-104(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L872
.L871:
	movq	-104(%rbp), %rax
.L872:
	movq	%rax, -64(%rbp)
	movq	prof+112128(%rip), %rdx
	movq	prof+112120(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L873
	cmpq	$999, -64(%rbp)
	jbe	.L874
	movq	$999, -64(%rbp)
.L874:
	movq	-64(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-136(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13384(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13384, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-64(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-136(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13584(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+112128(%rip), %rbx
	movq	prof+112120(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$13584, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -64(%rbp)
	jbe	.L875
	movq	$99, -64(%rbp)
.L875:
	movq	-64(%rbp), %rax
	addq	$13284, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	$13284, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-64(%rbp), %rax
	addq	$13484, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+112128(%rip), %rcx
	movq	prof+112120(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-64(%rbp), %rax
	addq	$13484, %rax
	movq	%rdx, prof+8(,%rax,8)
.L873:
	movq	b_malloc_lifetime(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L876
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -72(%rbp)
	cmpq	$999, -72(%rbp)
	jbe	.L877
	movq	$999, -72(%rbp)
.L877:
	movq	-72(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-136(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13784(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13784, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -72(%rbp)
	jbe	.L878
	movq	$99, -72(%rbp)
.L878:
	movq	-72(%rbp), %rax
	addq	$13684, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$13684, %rax
	movq	%rdx, prof+8(,%rax,8)
.L876:
	movl	$0, -80(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -112(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L879
.L881:
	movl	-76(%rbp), %eax
	cltq
	addq	$1800, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-112(%rbp), %rax
	jne	.L880
	movl	$1, -80(%rbp)
.L880:
	addl	$1, -76(%rbp)
.L879:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+112168(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L881
	cmpl	$0, -80(%rbp)
	jne	.L882
	movq	prof+112168(%rip), %rax
	cmpq	$99, %rax
	ja	.L882
	movq	prof+112168(%rip), %rax
	leaq	1800(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+112168(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112168(%rip)
.L882:
	movq	mall_hash(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_equal
	testl	%eax, %eax
	jne	.L844
	movq	prof+112136(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112136(%rip)
	jmp	.L844
.L883:
	nop
.L844:
	addq	$136, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	__free2, .-__free2
.globl __realloc2
	.type	__realloc2, @function
__realloc2:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	.cfi_offset 3, -24
	call	pthread_self
	movq	%rax, -88(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L885
	movq	-136(%rbp), %rax
	imulq	$12373, %rax, %rax
	leaq	31(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	shrq	$44, %rdx
	addq	%rdx, %rax
	andl	$1048575, %eax
	subq	%rdx, %rax
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L886
.L888:
	movq	mall_hash(%rip), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	je	.L887
	addl	$1, -24(%rbp)
.L887:
	addl	$1, -20(%rbp)
.L886:
	cmpl	$7, -20(%rbp)
	jle	.L888
	movq	mall_hash(%rip), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.L885
	movq	mall_hash(%rip), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	mall_hash(%rip), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	mall_hash(%rip), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, prof+112120(%rip)
	movq	prof+112120(%rip), %rdx
	movq	prof+112128(%rip), %rax
	cmpq	%rax, %rdx
	je	.L889
	movq	prof+112120(%rip), %rdx
	movq	prof+112128(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L889
	movq	prof+112120(%rip), %rdx
	movq	prof+112128(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$13884, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$13884, %rax
	movq	%rdx, prof+8(,%rax,8)
.L889:
	call	rdtsc
	movq	%rax, prof+112128(%rip)
	movq	b_malloc_lifetime(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L890
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L891
.L890:
	movq	x(%rip), %rax
	andl	$63, %eax
.L891:
	leaq	13948(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13948, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+112104(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112104(%rip)
	cmpq	$16, -96(%rbp)
	ja	.L892
	movq	prof+106272(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106272(%rip)
.L892:
	movq	b_malloc_lifetime(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L893
	movq	x(%rip), %rax
	addq	-96(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L894
.L893:
	movq	-96(%rbp), %rax
.L894:
	movq	%rax, -32(%rbp)
	movq	prof+112128(%rip), %rdx
	movq	prof+112120(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L895
	cmpq	$999, -32(%rbp)
	jbe	.L896
	movq	$999, -32(%rbp)
.L896:
	movq	-32(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13384(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13384, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13584(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+112128(%rip), %rbx
	movq	prof+112120(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$13584, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L897
	movq	$99, -32(%rbp)
.L897:
	movq	-32(%rbp), %rax
	addq	$13284, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$13284, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-32(%rbp), %rax
	addq	$13484, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+112128(%rip), %rcx
	movq	prof+112120(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-32(%rbp), %rax
	addq	$13484, %rax
	movq	%rdx, prof+8(,%rax,8)
.L895:
	movq	b_malloc_lifetime(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L898
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	cmpq	$999, -40(%rbp)
	jbe	.L899
	movq	$999, -40(%rbp)
.L899:
	movq	-40(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13784(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13784, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -40(%rbp)
	jbe	.L900
	movq	$99, -40(%rbp)
.L900:
	movq	-40(%rbp), %rax
	addq	$13684, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$13684, %rax
	movq	%rdx, prof+8(,%rax,8)
.L898:
	movl	$0, -48(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -104(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L901
.L903:
	movl	-44(%rbp), %eax
	cltq
	addq	$1800, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-104(%rbp), %rax
	jne	.L902
	movl	$1, -48(%rbp)
.L902:
	addl	$1, -44(%rbp)
.L901:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+112168(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L903
	cmpl	$0, -48(%rbp)
	jne	.L904
	movq	prof+112168(%rip), %rax
	cmpq	$99, %rax
	ja	.L904
	movq	prof+112168(%rip), %rax
	leaq	1800(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+112168(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112168(%rip)
.L904:
	movq	mall_hash(%rip), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_equal
	testl	%eax, %eax
	jne	.L885
	movq	prof+112136(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+112136(%rip)
.L885:
	call	rdtsc
	movq	%rax, prof+106216(%rip)
	movq	__realloc_hook2(%rip), %rax
	movq	%rax, __realloc_hook(%rip)
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc
	movq	%rax, -112(%rbp)
	movl	$__realloc2, %eax
	movq	%rax, __realloc_hook(%rip)
	movq	prof+106216(%rip), %rdx
	movq	prof+106224(%rip), %rax
	cmpq	%rax, %rdx
	je	.L905
	movq	prof+106216(%rip), %rdx
	movq	prof+106224(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L905
	movq	prof+106216(%rip), %rdx
	movq	prof+106224(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$13146, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$13146, %rax
	movq	%rdx, prof+8(,%rax,8)
.L905:
	call	rdtsc
	movq	%rax, prof+106224(%rip)
	movq	b_malloc(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L906
	movq	-112(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L907
.L906:
	movq	-112(%rbp), %rax
	andl	$63, %eax
.L907:
	leaq	13210(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13210, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+106200(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106200(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L908
	movq	prof+100368(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+100368(%rip)
.L908:
	movq	b_malloc(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L909
	movq	-112(%rbp), %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-112(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L910
.L909:
	movq	r(%rip), %rax
.L910:
	movq	%rax, -56(%rbp)
	movq	prof+106224(%rip), %rdx
	movq	prof+106216(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L911
	cmpq	$999, -56(%rbp)
	jbe	.L912
	movq	$999, -56(%rbp)
.L912:
	movq	-56(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	12646(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$12646, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-56(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	12846(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+106224(%rip), %rbx
	movq	prof+106216(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$12846, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -56(%rbp)
	jbe	.L913
	movq	$99, -56(%rbp)
.L913:
	movq	-56(%rbp), %rax
	addq	$12546, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$12546, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-56(%rbp), %rax
	addq	$12746, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+106224(%rip), %rcx
	movq	prof+106216(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-56(%rbp), %rax
	addq	$12746, %rax
	movq	%rdx, prof+8(,%rax,8)
.L911:
	movq	b_malloc(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L914
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -64(%rbp)
	cmpq	$999, -64(%rbp)
	jbe	.L915
	movq	$999, -64(%rbp)
.L915:
	movq	-64(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-152(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	13046(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$13046, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -64(%rbp)
	jbe	.L916
	movq	$99, -64(%rbp)
.L916:
	movq	-64(%rbp), %rax
	addq	$12946, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	$12946, %rax
	movq	%rdx, prof+8(,%rax,8)
.L914:
	movl	$0, -72(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -120(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L917
.L919:
	movl	-68(%rbp), %eax
	cltq
	addq	$1700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-120(%rbp), %rax
	jne	.L918
	movl	$1, -72(%rbp)
.L918:
	addl	$1, -68(%rbp)
.L917:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+106264(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L919
	cmpl	$0, -72(%rbp)
	jne	.L920
	movq	prof+106264(%rip), %rax
	cmpq	$99, %rax
	ja	.L920
	movq	prof+106264(%rip), %rax
	leaq	1700(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+106264(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+106264(%rip)
.L920:
	movq	-144(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, r(%rip)
	movq	-112(%rbp), %rax
	imulq	$12373, %rax, %rax
	leaq	31(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	shrq	$44, %rdx
	addq	%rdx, %rax
	andl	$1048575, %eax
	subq	%rdx, %rax
	movl	%eax, -76(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L921
.L923:
	movq	mall_hash(%rip), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L922
	addl	$1, -76(%rbp)
.L922:
	addl	$1, -20(%rbp)
.L921:
	cmpl	$7, -20(%rbp)
	jle	.L923
	movq	mall_hash(%rip), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L924
	movq	mall_hash(%rip), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, (%rdx)
	movq	mall_hash(%rip), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	r(%rip), %rax
	movq	%rax, 16(%rdx)
	movq	mall_hash(%rip), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	prof+106224(%rip), %rax
	movq	%rax, 8(%rdx)
	movq	mall_hash(%rip), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rdx)
.L924:
	movq	-112(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	__realloc2, .-__realloc2
.globl qsort
	.type	qsort, @function
qsort:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	.cfi_offset 3, -24
	call	rdtsc
	movq	%rax, prof+123928(%rip)
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rbx
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	qsort_r
	movq	prof+123928(%rip), %rdx
	movq	prof+123936(%rip), %rax
	cmpq	%rax, %rdx
	je	.L926
	movq	prof+123928(%rip), %rdx
	movq	prof+123936(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L926
	movq	prof+123928(%rip), %rdx
	movq	prof+123936(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$15360, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$15360, %rax
	movq	%rdx, prof+8(,%rax,8)
.L926:
	call	rdtsc
	movq	%rax, prof+123936(%rip)
	movq	b_qsort(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L927
	movq	-48(%rbp), %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L928
.L927:
	movq	-48(%rbp), %rax
	andl	$63, %eax
.L928:
	leaq	15424(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15424, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+123912(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+123912(%rip)
	cmpq	$16, -56(%rbp)
	ja	.L929
	movq	prof+118080(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+118080(%rip)
.L929:
	movq	b_qsort(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L930
	movq	-48(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	-48(%rbp), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L931
.L930:
	movq	-56(%rbp), %rax
.L931:
	movq	%rax, -24(%rbp)
	movq	prof+123936(%rip), %rdx
	movq	prof+123928(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L932
	cmpq	$999, -24(%rbp)
	jbe	.L933
	movq	$999, -24(%rbp)
.L933:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	14860(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$14860, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15060(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+123936(%rip), %rbx
	movq	prof+123928(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$15060, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L934
	movq	$99, -24(%rbp)
.L934:
	movq	-24(%rbp), %rax
	addq	$14760, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$14760, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$14960, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+123936(%rip), %rcx
	movq	prof+123928(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$14960, %rax
	movq	%rdx, prof+8(,%rax,8)
.L932:
	movq	b_qsort(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L935
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L936
	movq	$999, -32(%rbp)
.L936:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15260(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15260, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L937
	movq	$99, -32(%rbp)
.L937:
	movq	-32(%rbp), %rax
	addq	$15160, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$15160, %rax
	movq	%rdx, prof+8(,%rax,8)
.L935:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L938
.L940:
	movl	-36(%rbp), %eax
	cltq
	addq	$2000, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L939
	movl	$1, -40(%rbp)
.L939:
	addl	$1, -36(%rbp)
.L938:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+123976(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L940
	cmpl	$0, -40(%rbp)
	jne	.L925
	movq	prof+123976(%rip), %rax
	cmpq	$99, %rax
	ja	.L925
	movq	prof+123976(%rip), %rax
	leaq	2000(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+123976(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+123976(%rip)
.L925:
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	qsort, .-qsort
	.section	.rodata
.LC6:
	.string	"rand"
	.text
.globl rand
	.type	rand, @function
rand:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	movl	$.LC6, %edx
	movq	libc_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+129832(%rip)
	movq	-48(%rbp), %rdx
	movl	$0, %eax
	call	*%rdx
	movl	%eax, -52(%rbp)
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	cmpq	%rax, %rdx
	je	.L943
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L943
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16098, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16098, %rax
	movq	%rdx, prof+8(,%rax,8)
.L943:
	call	rdtsc
	movq	%rax, prof+129840(%rip)
	movq	b_rand(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L944
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L945
.L944:
	movq	x(%rip), %rax
	andl	$63, %eax
.L945:
	leaq	16162(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16162, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+129816(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129816(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L946
	movq	prof+123984(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+123984(%rip)
.L946:
	movq	b_rand(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L947
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L948
.L947:
	movq	r(%rip), %rax
.L948:
	movq	%rax, -24(%rbp)
	movq	prof+129840(%rip), %rdx
	movq	prof+129832(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L949
	cmpq	$999, -24(%rbp)
	jbe	.L950
	movq	$999, -24(%rbp)
.L950:
	movq	-24(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-72(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15598(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15598, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-72(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15798(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+129840(%rip), %rbx
	movq	prof+129832(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$15798, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L951
	movq	$99, -24(%rbp)
.L951:
	movq	-24(%rbp), %rax
	addq	$15498, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$15498, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$15698, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+129840(%rip), %rcx
	movq	prof+129832(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$15698, %rax
	movq	%rdx, prof+8(,%rax,8)
.L949:
	movq	b_rand(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L952
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L953
	movq	$999, -32(%rbp)
.L953:
	movq	-32(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-72(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15998(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15998, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L954
	movq	$99, -32(%rbp)
.L954:
	movq	-32(%rbp), %rax
	addq	$15898, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$15898, %rax
	movq	%rdx, prof+8(,%rax,8)
.L952:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L955
.L957:
	movl	-36(%rbp), %eax
	cltq
	addq	$2100, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L956
	movl	$1, -40(%rbp)
.L956:
	addl	$1, -36(%rbp)
.L955:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+129880(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L957
	cmpl	$0, -40(%rbp)
	jne	.L958
	movq	prof+129880(%rip), %rax
	cmpq	$99, %rax
	ja	.L958
	movq	prof+129880(%rip), %rax
	leaq	2100(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+129880(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129880(%rip)
.L958:
	movl	-52(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	rand, .-rand
	.section	.rodata
.LC7:
	.string	"random"
	.text
.globl random
	.type	random, @function
random:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	movl	$.LC7, %edx
	movq	libc_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+129832(%rip)
	movq	-48(%rbp), %rdx
	movl	$0, %eax
	call	*%rdx
	movq	%rax, -56(%rbp)
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	cmpq	%rax, %rdx
	je	.L960
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L960
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16098, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16098, %rax
	movq	%rdx, prof+8(,%rax,8)
.L960:
	call	rdtsc
	movq	%rax, prof+129840(%rip)
	movq	b_rand(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L961
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L962
.L961:
	movq	x(%rip), %rax
	andl	$63, %eax
.L962:
	leaq	16162(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16162, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+129816(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129816(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L963
	movq	prof+123984(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+123984(%rip)
.L963:
	movq	b_rand(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L964
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L965
.L964:
	movq	r(%rip), %rax
.L965:
	movq	%rax, -24(%rbp)
	movq	prof+129840(%rip), %rdx
	movq	prof+129832(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L966
	cmpq	$999, -24(%rbp)
	jbe	.L967
	movq	$999, -24(%rbp)
.L967:
	movq	-24(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-72(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15598(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15598, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-72(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15798(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+129840(%rip), %rbx
	movq	prof+129832(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$15798, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L968
	movq	$99, -24(%rbp)
.L968:
	movq	-24(%rbp), %rax
	addq	$15498, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$15498, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$15698, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+129840(%rip), %rcx
	movq	prof+129832(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$15698, %rax
	movq	%rdx, prof+8(,%rax,8)
.L966:
	movq	b_rand(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L969
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L970
	movq	$999, -32(%rbp)
.L970:
	movq	-32(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-72(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15998(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15998, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L971
	movq	$99, -32(%rbp)
.L971:
	movq	-32(%rbp), %rax
	addq	$15898, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$15898, %rax
	movq	%rdx, prof+8(,%rax,8)
.L969:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L972
.L974:
	movl	-36(%rbp), %eax
	cltq
	addq	$2100, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L973
	movl	$1, -40(%rbp)
.L973:
	addl	$1, -36(%rbp)
.L972:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+129880(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L974
	cmpl	$0, -40(%rbp)
	jne	.L975
	movq	prof+129880(%rip), %rax
	cmpq	$99, %rax
	ja	.L975
	movq	prof+129880(%rip), %rax
	leaq	2100(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+129880(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129880(%rip)
.L975:
	movq	-56(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	random, .-random
	.section	.rodata
.LC8:
	.string	"rand_r"
	.text
.globl rand_r
	.type	rand_r, @function
rand_r:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movl	$.LC8, %edx
	movq	libc_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+129832(%rip)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -52(%rbp)
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	cmpq	%rax, %rdx
	je	.L977
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L977
	movq	prof+129832(%rip), %rdx
	movq	prof+129840(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16098, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16098, %rax
	movq	%rdx, prof+8(,%rax,8)
.L977:
	call	rdtsc
	movq	%rax, prof+129840(%rip)
	movq	b_rand(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L978
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L979
.L978:
	movq	x(%rip), %rax
	andl	$63, %eax
.L979:
	leaq	16162(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16162, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+129816(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129816(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L980
	movq	prof+123984(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+123984(%rip)
.L980:
	movq	b_rand(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L981
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L982
.L981:
	movq	r(%rip), %rax
.L982:
	movq	%rax, -24(%rbp)
	movq	prof+129840(%rip), %rdx
	movq	prof+129832(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L983
	cmpq	$999, -24(%rbp)
	jbe	.L984
	movq	$999, -24(%rbp)
.L984:
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15598(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15598, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15798(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+129840(%rip), %rbx
	movq	prof+129832(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$15798, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L985
	movq	$99, -24(%rbp)
.L985:
	movq	-24(%rbp), %rax
	addq	$15498, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$15498, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$15698, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+129840(%rip), %rcx
	movq	prof+129832(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$15698, %rax
	movq	%rdx, prof+8(,%rax,8)
.L983:
	movq	b_rand(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L986
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L987
	movq	$999, -32(%rbp)
.L987:
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-88(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	15998(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$15998, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L988
	movq	$99, -32(%rbp)
.L988:
	movq	-32(%rbp), %rax
	addq	$15898, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$15898, %rax
	movq	%rdx, prof+8(,%rax,8)
.L986:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L989
.L991:
	movl	-36(%rbp), %eax
	cltq
	addq	$2100, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L990
	movl	$1, -40(%rbp)
.L990:
	addl	$1, -36(%rbp)
.L989:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+129880(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L991
	cmpl	$0, -40(%rbp)
	jne	.L992
	movq	prof+129880(%rip), %rax
	cmpq	$99, %rax
	ja	.L992
	movq	prof+129880(%rip), %rax
	leaq	2100(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+129880(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129880(%rip)
.L992:
	movl	-52(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	rand_r, .-rand_r
	.section	.rodata
.LC9:
	.string	"sin"
	.text
.globl sin2
	.type	sin2, @function
sin2:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC9, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+171160(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+171160(%rip), %rdx
	movq	prof+171168(%rip), %rax
	cmpq	%rax, %rdx
	je	.L994
	movq	prof+171160(%rip), %rdx
	movq	prof+171168(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L994
	movq	prof+171160(%rip), %rdx
	movq	prof+171168(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$21264, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$21264, %rax
	movq	%rdx, prof+8(,%rax,8)
.L994:
	call	rdtsc
	movq	%rax, prof+171168(%rip)
	movq	b_sin2(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L995
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L996
.L995:
	movq	x(%rip), %rax
	andl	$63, %eax
.L996:
	leaq	21328(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$21328, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+171144(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+171144(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L997
	movq	prof+165312(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165312(%rip)
.L997:
	movq	b_sin2(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L998
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L999
.L998:
	movq	r(%rip), %rax
.L999:
	movq	%rax, -24(%rbp)
	movq	prof+171168(%rip), %rdx
	movq	prof+171160(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1000
	cmpq	$999, -24(%rbp)
	jbe	.L1001
	movq	$999, -24(%rbp)
.L1001:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20764(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20764, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20964(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+171168(%rip), %rbx
	movq	prof+171160(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20964, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1002
	movq	$99, -24(%rbp)
.L1002:
	movq	-24(%rbp), %rax
	addq	$20664, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$20664, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20864, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+171168(%rip), %rcx
	movq	prof+171160(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20864, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1000:
	movq	b_sin2(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1003
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1004
	movq	$999, -32(%rbp)
.L1004:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	21164(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$21164, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1005
	movq	$99, -32(%rbp)
.L1005:
	movq	-32(%rbp), %rax
	addq	$21064, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$21064, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1003:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1006
.L1008:
	movl	-36(%rbp), %eax
	cltq
	addq	$2800, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1007
	movl	$1, -40(%rbp)
.L1007:
	addl	$1, -36(%rbp)
.L1006:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+171208(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1008
	cmpl	$0, -40(%rbp)
	jne	.L1009
	movq	prof+171208(%rip), %rax
	cmpq	$99, %rax
	ja	.L1009
	movq	prof+171208(%rip), %rax
	leaq	2800(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+171208(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+171208(%rip)
.L1009:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	sin2, .-sin2
	.section	.rodata
.LC10:
	.string	"sinl"
	.text
.globl sin3
	.type	sin3, @function
sin3:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC10, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+177064(%rip)
	fldl	-72(%rbp)
	fstpt	(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpl	-56(%rbp)
	movq	prof+177064(%rip), %rdx
	movq	prof+177072(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1011
	movq	prof+177064(%rip), %rdx
	movq	prof+177072(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1011
	movq	prof+177064(%rip), %rdx
	movq	prof+177072(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$22002, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$22002, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1011:
	call	rdtsc
	movq	%rax, prof+177072(%rip)
	movq	b_sin3(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1012
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1013
.L1012:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1013:
	leaq	22066(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$22066, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+177048(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+177048(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1014
	movq	prof+171216(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+171216(%rip)
.L1014:
	movq	b_sin3(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1015
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1016
.L1015:
	movq	r(%rip), %rax
.L1016:
	movq	%rax, -24(%rbp)
	movq	prof+177072(%rip), %rdx
	movq	prof+177064(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1017
	cmpq	$999, -24(%rbp)
	jbe	.L1018
	movq	$999, -24(%rbp)
.L1018:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	21502(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$21502, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	21702(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+177072(%rip), %rbx
	movq	prof+177064(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$21702, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1019
	movq	$99, -24(%rbp)
.L1019:
	movq	-24(%rbp), %rax
	addq	$21402, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$21402, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$21602, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+177072(%rip), %rcx
	movq	prof+177064(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$21602, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1017:
	movq	b_sin3(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1020
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1021
	movq	$999, -32(%rbp)
.L1021:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	21902(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$21902, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1022
	movq	$99, -32(%rbp)
.L1022:
	movq	-32(%rbp), %rax
	addq	$21802, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$21802, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1020:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1023
.L1025:
	movl	-36(%rbp), %eax
	cltq
	addq	$2900, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1024
	movl	$1, -40(%rbp)
.L1024:
	addl	$1, -36(%rbp)
.L1023:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+177112(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1025
	cmpl	$0, -40(%rbp)
	jne	.L1026
	movq	prof+177112(%rip), %rax
	cmpq	$99, %rax
	ja	.L1026
	movq	prof+177112(%rip), %rax
	leaq	2900(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+177112(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+177112(%rip)
.L1026:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	sin3, .-sin3
.globl sin_seed
	.data
	.align 4
	.type	sin_seed, @object
	.size	sin_seed, 4
sin_seed:
	.long	42
	.text
.globl sin
	.type	sin, @function
sin:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movsd	%xmm0, -24(%rbp)
	movl	$sin_seed, %eax
	movq	%rax, %rdi
	call	rand_r
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1028
	movsd	-24(%rbp), %xmm0
	call	sin2
	jmp	.L1029
.L1028:
	movsd	-24(%rbp), %xmm0
	call	sin3
.L1029:
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	sin, .-sin
	.section	.rodata
.LC12:
	.string	"acos"
	.text
.globl acos
	.type	acos, @function
acos:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC12, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1031
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1031
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1031:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1032
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1033
.L1032:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1033:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1034
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1034:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1035
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1036
.L1035:
	movq	r(%rip), %rax
.L1036:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1037
	cmpq	$999, -24(%rbp)
	jbe	.L1038
	movq	$999, -24(%rbp)
.L1038:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1039
	movq	$99, -24(%rbp)
.L1039:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1037:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1040
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1041
	movq	$999, -32(%rbp)
.L1041:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1042
	movq	$99, -32(%rbp)
.L1042:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1040:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1043
.L1045:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1044
	movl	$1, -40(%rbp)
.L1044:
	addl	$1, -36(%rbp)
.L1043:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1045
	cmpl	$0, -40(%rbp)
	jne	.L1046
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1046
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1046:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	acos, .-acos
	.section	.rodata
.LC13:
	.string	"acosl"
	.text
.globl acosl
	.type	acosl, @function
acosl:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC13, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1048
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1048
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1048:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1049
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1050
.L1049:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1050:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1051
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1051:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1052
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1053
.L1052:
	movq	r(%rip), %rax
.L1053:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1054
	cmpq	$999, -24(%rbp)
	jbe	.L1055
	movq	$999, -24(%rbp)
.L1055:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1056
	movq	$99, -24(%rbp)
.L1056:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1054:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1057
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1058
	movq	$999, -32(%rbp)
.L1058:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1059
	movq	$99, -32(%rbp)
.L1059:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1057:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1060
.L1062:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1061
	movl	$1, -40(%rbp)
.L1061:
	addl	$1, -36(%rbp)
.L1060:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1062
	cmpl	$0, -40(%rbp)
	jne	.L1063
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1063
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1063:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	acosl, .-acosl
	.section	.rodata
.LC14:
	.string	"acosf"
	.text
.globl acosf
	.type	acosf, @function
acosf:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC14, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1065
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1065
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1065:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1066
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1067
.L1066:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1067:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1068
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1068:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1069
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1070
.L1069:
	movq	r(%rip), %rax
.L1070:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1071
	cmpq	$999, -24(%rbp)
	jbe	.L1072
	movq	$999, -24(%rbp)
.L1072:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1073
	movq	$99, -24(%rbp)
.L1073:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1071:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1074
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1075
	movq	$999, -32(%rbp)
.L1075:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1076
	movq	$99, -32(%rbp)
.L1076:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1074:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1077
.L1079:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1078
	movl	$1, -40(%rbp)
.L1078:
	addl	$1, -36(%rbp)
.L1077:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1079
	cmpl	$0, -40(%rbp)
	jne	.L1080
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1080
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1080:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	acosf, .-acosf
	.section	.rodata
.LC15:
	.string	"asin"
	.text
.globl asin
	.type	asin, @function
asin:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC15, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1082
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1082
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1082:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1083
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1084
.L1083:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1084:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1085
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1085:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1086
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1087
.L1086:
	movq	r(%rip), %rax
.L1087:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1088
	cmpq	$999, -24(%rbp)
	jbe	.L1089
	movq	$999, -24(%rbp)
.L1089:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1090
	movq	$99, -24(%rbp)
.L1090:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1088:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1091
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1092
	movq	$999, -32(%rbp)
.L1092:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1093
	movq	$99, -32(%rbp)
.L1093:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1091:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1094
.L1096:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1095
	movl	$1, -40(%rbp)
.L1095:
	addl	$1, -36(%rbp)
.L1094:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1096
	cmpl	$0, -40(%rbp)
	jne	.L1097
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1097
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1097:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	asin, .-asin
	.section	.rodata
.LC16:
	.string	"asinl"
	.text
.globl asinl
	.type	asinl, @function
asinl:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC16, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1099
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1099
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1099:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1100
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1101
.L1100:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1101:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1102
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1102:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1103
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1104
.L1103:
	movq	r(%rip), %rax
.L1104:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1105
	cmpq	$999, -24(%rbp)
	jbe	.L1106
	movq	$999, -24(%rbp)
.L1106:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1107
	movq	$99, -24(%rbp)
.L1107:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1105:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1108
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1109
	movq	$999, -32(%rbp)
.L1109:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1110
	movq	$99, -32(%rbp)
.L1110:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1108:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1111
.L1113:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1112
	movl	$1, -40(%rbp)
.L1112:
	addl	$1, -36(%rbp)
.L1111:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1113
	cmpl	$0, -40(%rbp)
	jne	.L1114
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1114
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1114:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	asinl, .-asinl
	.section	.rodata
.LC17:
	.string	"asinf"
	.text
.globl asinf
	.type	asinf, @function
asinf:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC17, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1116
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1116
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1116:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1117
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1118
.L1117:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1118:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1119
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1119:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1120
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1121
.L1120:
	movq	r(%rip), %rax
.L1121:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1122
	cmpq	$999, -24(%rbp)
	jbe	.L1123
	movq	$999, -24(%rbp)
.L1123:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1124
	movq	$99, -24(%rbp)
.L1124:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1122:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1125
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1126
	movq	$999, -32(%rbp)
.L1126:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1127
	movq	$99, -32(%rbp)
.L1127:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1125:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1128
.L1130:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1129
	movl	$1, -40(%rbp)
.L1129:
	addl	$1, -36(%rbp)
.L1128:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1130
	cmpl	$0, -40(%rbp)
	jne	.L1131
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1131
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1131:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	asinf, .-asinf
	.section	.rodata
.LC18:
	.string	"atan"
	.text
.globl atan
	.type	atan, @function
atan:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC18, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1133
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1133
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1133:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1134
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1135
.L1134:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1135:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1136
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1136:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1137
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1138
.L1137:
	movq	r(%rip), %rax
.L1138:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1139
	cmpq	$999, -24(%rbp)
	jbe	.L1140
	movq	$999, -24(%rbp)
.L1140:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1141
	movq	$99, -24(%rbp)
.L1141:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1139:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1142
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1143
	movq	$999, -32(%rbp)
.L1143:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1144
	movq	$99, -32(%rbp)
.L1144:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1142:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1145
.L1147:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1146
	movl	$1, -40(%rbp)
.L1146:
	addl	$1, -36(%rbp)
.L1145:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1147
	cmpl	$0, -40(%rbp)
	jne	.L1148
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1148
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1148:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	atan, .-atan
	.section	.rodata
.LC19:
	.string	"atanl"
	.text
.globl atanl
	.type	atanl, @function
atanl:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC19, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1150
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1150
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1150:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1151
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1152
.L1151:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1152:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1153
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1153:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1154
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1155
.L1154:
	movq	r(%rip), %rax
.L1155:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1156
	cmpq	$999, -24(%rbp)
	jbe	.L1157
	movq	$999, -24(%rbp)
.L1157:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1158
	movq	$99, -24(%rbp)
.L1158:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1156:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1159
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1160
	movq	$999, -32(%rbp)
.L1160:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1161
	movq	$99, -32(%rbp)
.L1161:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1159:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1162
.L1164:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1163
	movl	$1, -40(%rbp)
.L1163:
	addl	$1, -36(%rbp)
.L1162:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1164
	cmpl	$0, -40(%rbp)
	jne	.L1165
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1165
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1165:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	atanl, .-atanl
	.section	.rodata
.LC20:
	.string	"atanf"
	.text
.globl atanf
	.type	atanf, @function
atanf:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC20, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1167
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1167
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1167:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1168
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1169
.L1168:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1169:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1170
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1170:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1171
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1172
.L1171:
	movq	r(%rip), %rax
.L1172:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1173
	cmpq	$999, -24(%rbp)
	jbe	.L1174
	movq	$999, -24(%rbp)
.L1174:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1175
	movq	$99, -24(%rbp)
.L1175:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1173:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1176
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1177
	movq	$999, -32(%rbp)
.L1177:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1178
	movq	$99, -32(%rbp)
.L1178:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1176:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1179
.L1181:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1180
	movl	$1, -40(%rbp)
.L1180:
	addl	$1, -36(%rbp)
.L1179:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1181
	cmpl	$0, -40(%rbp)
	jne	.L1182
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1182
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1182:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	atanf, .-atanf
	.section	.rodata
.LC21:
	.string	"atan2"
	.text
.globl atan2
	.type	atan2, @function
atan2:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	$.LC21, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movsd	-80(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1184
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1184
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1184:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1185
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1186
.L1185:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1186:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1187
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1187:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1188
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1189
.L1188:
	movq	r(%rip), %rax
.L1189:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1190
	cmpq	$999, -24(%rbp)
	jbe	.L1191
	movq	$999, -24(%rbp)
.L1191:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1192
	movq	$99, -24(%rbp)
.L1192:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1190:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1193
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1194
	movq	$999, -32(%rbp)
.L1194:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1195
	movq	$99, -32(%rbp)
.L1195:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1193:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1196
.L1198:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1197
	movl	$1, -40(%rbp)
.L1197:
	addl	$1, -36(%rbp)
.L1196:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1198
	cmpl	$0, -40(%rbp)
	jne	.L1199
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1199
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1199:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	atan2, .-atan2
	.section	.rodata
.LC22:
	.string	"atan2l"
	.text
.globl atan2l
	.type	atan2l, @function
atan2l:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	movl	$.LC22, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	movq	%rax, 16(%rsp)
	movl	%edx, 24(%rsp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1201
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1201
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1201:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1202
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1203
.L1202:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1203:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1204
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1204:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1205
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1206
.L1205:
	movq	r(%rip), %rax
.L1206:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1207
	cmpq	$999, -24(%rbp)
	jbe	.L1208
	movq	$999, -24(%rbp)
.L1208:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1209
	movq	$99, -24(%rbp)
.L1209:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1207:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1210
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1211
	movq	$999, -32(%rbp)
.L1211:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1212
	movq	$99, -32(%rbp)
.L1212:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1210:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1213
.L1215:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1214
	movl	$1, -40(%rbp)
.L1214:
	addl	$1, -36(%rbp)
.L1213:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1215
	cmpl	$0, -40(%rbp)
	jne	.L1216
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1216
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1216:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$136, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	atan2l, .-atan2l
	.section	.rodata
.LC23:
	.string	"atan2f"
	.text
.globl atan2f
	.type	atan2f, @function
atan2f:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movss	%xmm1, -72(%rbp)
	movl	$.LC23, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+141640(%rip)
	movss	-72(%rbp), %xmm1
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1218
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1218
	movq	prof+141640(%rip), %rdx
	movq	prof+141648(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$17574, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$17574, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1218:
	call	rdtsc
	movq	%rax, prof+141648(%rip)
	movq	b_asin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1219
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1220
.L1219:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1220:
	leaq	17638(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17638, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+141624(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141624(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1221
	movq	prof+135792(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135792(%rip)
.L1221:
	movq	b_asin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1222
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1223
.L1222:
	movq	r(%rip), %rax
.L1223:
	movq	%rax, -24(%rbp)
	movq	prof+141648(%rip), %rdx
	movq	prof+141640(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1224
	cmpq	$999, -24(%rbp)
	jbe	.L1225
	movq	$999, -24(%rbp)
.L1225:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17074(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17074, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17274(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+141648(%rip), %rbx
	movq	prof+141640(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$17274, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1226
	movq	$99, -24(%rbp)
.L1226:
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16974, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+141648(%rip), %rcx
	movq	prof+141640(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17174, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1224:
	movq	b_asin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1227
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1228
	movq	$999, -32(%rbp)
.L1228:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17474(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17474, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1229
	movq	$99, -32(%rbp)
.L1229:
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$17374, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1227:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1230
.L1232:
	movl	-36(%rbp), %eax
	cltq
	addq	$2300, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1231
	movl	$1, -40(%rbp)
.L1231:
	addl	$1, -36(%rbp)
.L1230:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+141688(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1232
	cmpl	$0, -40(%rbp)
	jne	.L1233
	movq	prof+141688(%rip), %rax
	cmpq	$99, %rax
	ja	.L1233
	movq	prof+141688(%rip), %rax
	leaq	2300(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+141688(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141688(%rip)
.L1233:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	atan2f, .-atan2f
	.section	.rodata
.LC24:
	.string	"cos"
	.text
.globl cos
	.type	cos, @function
cos:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC24, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1235
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1235
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1235:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1236
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1237
.L1236:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1237:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1238
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1238:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1239
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1240
.L1239:
	movq	r(%rip), %rax
.L1240:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1241
	cmpq	$999, -24(%rbp)
	jbe	.L1242
	movq	$999, -24(%rbp)
.L1242:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1243
	movq	$99, -24(%rbp)
.L1243:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1241:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1244
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1245
	movq	$999, -32(%rbp)
.L1245:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1246
	movq	$99, -32(%rbp)
.L1246:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1244:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1247
.L1249:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1248
	movl	$1, -40(%rbp)
.L1248:
	addl	$1, -36(%rbp)
.L1247:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1249
	cmpl	$0, -40(%rbp)
	jne	.L1250
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1250
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1250:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	cos, .-cos
	.section	.rodata
.LC25:
	.string	"cosl"
	.text
.globl cosl
	.type	cosl, @function
cosl:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC25, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1252
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1252
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1252:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1253
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1254
.L1253:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1254:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1255
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1255:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1256
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1257
.L1256:
	movq	r(%rip), %rax
.L1257:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1258
	cmpq	$999, -24(%rbp)
	jbe	.L1259
	movq	$999, -24(%rbp)
.L1259:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1260
	movq	$99, -24(%rbp)
.L1260:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1258:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1261
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1262
	movq	$999, -32(%rbp)
.L1262:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1263
	movq	$99, -32(%rbp)
.L1263:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1261:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1264
.L1266:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1265
	movl	$1, -40(%rbp)
.L1265:
	addl	$1, -36(%rbp)
.L1264:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1266
	cmpl	$0, -40(%rbp)
	jne	.L1267
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1267
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1267:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	cosl, .-cosl
	.section	.rodata
.LC26:
	.string	"cosf"
	.text
.globl cosf
	.type	cosf, @function
cosf:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC26, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1269
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1269
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1269:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1270
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1271
.L1270:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1271:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1272
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1272:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1273
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1274
.L1273:
	movq	r(%rip), %rax
.L1274:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1275
	cmpq	$999, -24(%rbp)
	jbe	.L1276
	movq	$999, -24(%rbp)
.L1276:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1277
	movq	$99, -24(%rbp)
.L1277:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1275:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1278
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1279
	movq	$999, -32(%rbp)
.L1279:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1280
	movq	$99, -32(%rbp)
.L1280:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1278:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1281
.L1283:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1282
	movl	$1, -40(%rbp)
.L1282:
	addl	$1, -36(%rbp)
.L1281:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1283
	cmpl	$0, -40(%rbp)
	jne	.L1284
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1284
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1284:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	cosf, .-cosf
.globl sinl
	.type	sinl, @function
sinl:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC10, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1286
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1286
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1286:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1287
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1288
.L1287:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1288:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1289
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1289:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1290
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1291
.L1290:
	movq	r(%rip), %rax
.L1291:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1292
	cmpq	$999, -24(%rbp)
	jbe	.L1293
	movq	$999, -24(%rbp)
.L1293:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1294
	movq	$99, -24(%rbp)
.L1294:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1292:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1295
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1296
	movq	$999, -32(%rbp)
.L1296:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1297
	movq	$99, -32(%rbp)
.L1297:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1295:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1298
.L1300:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1299
	movl	$1, -40(%rbp)
.L1299:
	addl	$1, -36(%rbp)
.L1298:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1300
	cmpl	$0, -40(%rbp)
	jne	.L1301
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1301
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1301:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	sinl, .-sinl
	.section	.rodata
.LC27:
	.string	"sinf"
	.text
.globl sinf
	.type	sinf, @function
sinf:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC27, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1303
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1303
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1303:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1304
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1305
.L1304:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1305:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1306
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1306:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1307
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1308
.L1307:
	movq	r(%rip), %rax
.L1308:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1309
	cmpq	$999, -24(%rbp)
	jbe	.L1310
	movq	$999, -24(%rbp)
.L1310:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1311
	movq	$99, -24(%rbp)
.L1311:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1309:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1312
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1313
	movq	$999, -32(%rbp)
.L1313:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1314
	movq	$99, -32(%rbp)
.L1314:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1312:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1315
.L1317:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1316
	movl	$1, -40(%rbp)
.L1316:
	addl	$1, -36(%rbp)
.L1315:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1317
	cmpl	$0, -40(%rbp)
	jne	.L1318
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1318
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1318:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	sinf, .-sinf
	.section	.rodata
.LC28:
	.string	"tan"
	.text
.globl tan
	.type	tan, @function
tan:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC28, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1320
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1320
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1320:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1321
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1322
.L1321:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1322:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1323
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1323:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1324
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1325
.L1324:
	movq	r(%rip), %rax
.L1325:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1326
	cmpq	$999, -24(%rbp)
	jbe	.L1327
	movq	$999, -24(%rbp)
.L1327:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1328
	movq	$99, -24(%rbp)
.L1328:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1326:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1329
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1330
	movq	$999, -32(%rbp)
.L1330:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1331
	movq	$99, -32(%rbp)
.L1331:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1329:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1332
.L1334:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1333
	movl	$1, -40(%rbp)
.L1333:
	addl	$1, -36(%rbp)
.L1332:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1334
	cmpl	$0, -40(%rbp)
	jne	.L1335
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1335
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1335:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	tan, .-tan
	.section	.rodata
.LC29:
	.string	"tanl"
	.text
.globl tanl
	.type	tanl, @function
tanl:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC29, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1337
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1337
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1337:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1338
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1339
.L1338:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1339:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1340
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1340:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1341
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1342
.L1341:
	movq	r(%rip), %rax
.L1342:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1343
	cmpq	$999, -24(%rbp)
	jbe	.L1344
	movq	$999, -24(%rbp)
.L1344:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1345
	movq	$99, -24(%rbp)
.L1345:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1343:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1346
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1347
	movq	$999, -32(%rbp)
.L1347:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1348
	movq	$99, -32(%rbp)
.L1348:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1346:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1349
.L1351:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1350
	movl	$1, -40(%rbp)
.L1350:
	addl	$1, -36(%rbp)
.L1349:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1351
	cmpl	$0, -40(%rbp)
	jne	.L1352
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1352
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1352:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	tanl, .-tanl
	.section	.rodata
.LC30:
	.string	"tanf"
	.text
.globl tanf
	.type	tanf, @function
tanf:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC30, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1354
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1354
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1354:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1355
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1356
.L1355:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1356:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1357
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1357:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1358
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1359
.L1358:
	movq	r(%rip), %rax
.L1359:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1360
	cmpq	$999, -24(%rbp)
	jbe	.L1361
	movq	$999, -24(%rbp)
.L1361:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1362
	movq	$99, -24(%rbp)
.L1362:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1360:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1363
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1364
	movq	$999, -32(%rbp)
.L1364:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1365
	movq	$99, -32(%rbp)
.L1365:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1363:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1366
.L1368:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1367
	movl	$1, -40(%rbp)
.L1367:
	addl	$1, -36(%rbp)
.L1366:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1368
	cmpl	$0, -40(%rbp)
	jne	.L1369
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1369
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1369:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	tanf, .-tanf
	.section	.rodata
.LC31:
	.string	"sincos"
	.text
.globl sincos
	.type	sincos, @function
sincos:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movsd	%xmm0, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movl	$.LC31, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movsd	%xmm0, -56(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1371
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1371
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1371:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1372
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1373
.L1372:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1373:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1374
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1374:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1375
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1376
.L1375:
	movq	r(%rip), %rax
.L1376:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1377
	cmpq	$999, -24(%rbp)
	jbe	.L1378
	movq	$999, -24(%rbp)
.L1378:
	movq	-24(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-112(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-112(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1379
	movq	$99, -24(%rbp)
.L1379:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1377:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1380
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1381
	movq	$999, -32(%rbp)
.L1381:
	movq	-32(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-112(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1382
	movq	$99, -32(%rbp)
.L1382:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1380:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1383
.L1385:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1384
	movl	$1, -40(%rbp)
.L1384:
	addl	$1, -36(%rbp)
.L1383:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1385
	cmpl	$0, -40(%rbp)
	jne	.L1386
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1386
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1386:
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	sincos, .-sincos
	.section	.rodata
.LC32:
	.string	"sincosl"
	.text
.globl sincosl
	.type	sincosl, @function
sincosl:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$.LC32, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movq	-96(%rbp), %rbx
	movq	-88(%rbp), %rcx
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1388
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1388
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1388:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1389
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1390
.L1389:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1390:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1391
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1391:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1392
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1393
.L1392:
	movq	r(%rip), %rax
.L1393:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1394
	cmpq	$999, -24(%rbp)
	jbe	.L1395
	movq	$999, -24(%rbp)
.L1395:
	movq	-24(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1396
	movq	$99, -24(%rbp)
.L1396:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1394:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1397
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1398
	movq	$999, -32(%rbp)
.L1398:
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1399
	movq	$99, -32(%rbp)
.L1399:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1397:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1400
.L1402:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1401
	movl	$1, -40(%rbp)
.L1401:
	addl	$1, -36(%rbp)
.L1400:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1402
	cmpl	$0, -40(%rbp)
	jne	.L1403
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1403
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1403:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	-112(%rbp)
	addq	$136, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	sincosl, .-sincosl
	.section	.rodata
.LC33:
	.string	"sincosf"
	.text
.globl sincosf
	.type	sincosf, @function
sincosf:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	movss	%xmm0, -68(%rbp)
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movl	$.LC33, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+135736(%rip)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movss	%xmm0, -52(%rbp)
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1405
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1405
	movq	prof+135736(%rip), %rdx
	movq	prof+135744(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$16836, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$16836, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1405:
	call	rdtsc
	movq	%rax, prof+135744(%rip)
	movq	b_sin(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1406
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1407
.L1406:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1407:
	leaq	16900(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16900, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+135720(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135720(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1408
	movq	prof+129888(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+129888(%rip)
.L1408:
	movq	b_sin(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1409
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1410
.L1409:
	movq	r(%rip), %rax
.L1410:
	movq	%rax, -24(%rbp)
	movq	prof+135744(%rip), %rdx
	movq	prof+135736(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1411
	cmpq	$999, -24(%rbp)
	jbe	.L1412
	movq	$999, -24(%rbp)
.L1412:
	movq	-24(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-112(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16336(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16336, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-112(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16536(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+135744(%rip), %rbx
	movq	prof+135736(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$16536, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1413
	movq	$99, -24(%rbp)
.L1413:
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$16236, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+135744(%rip), %rcx
	movq	prof+135736(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$16436, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1411:
	movq	b_sin(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1414
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1415
	movq	$999, -32(%rbp)
.L1415:
	movq	-32(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-112(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16736(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$16736, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1416
	movq	$99, -32(%rbp)
.L1416:
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16636, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1414:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1417
.L1419:
	movl	-36(%rbp), %eax
	cltq
	addq	$2200, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1418
	movl	$1, -40(%rbp)
.L1418:
	addl	$1, -36(%rbp)
.L1417:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+135784(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1419
	cmpl	$0, -40(%rbp)
	jne	.L1420
	movq	prof+135784(%rip), %rax
	cmpq	$99, %rax
	ja	.L1420
	movq	prof+135784(%rip), %rax
	leaq	2200(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+135784(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+135784(%rip)
.L1420:
	movl	-52(%rbp), %eax
	movl	%eax, -100(%rbp)
	movss	-100(%rbp), %xmm0
	addq	$104, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	sincosf, .-sincosf
	.section	.rodata
.LC34:
	.string	"cosh"
	.text
.globl cosh
	.type	cosh, @function
cosh:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC34, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1422
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1422
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1422:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1423
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1424
.L1423:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1424:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1425
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1425:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1426
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1427
.L1426:
	movq	r(%rip), %rax
.L1427:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1428
	cmpq	$999, -24(%rbp)
	jbe	.L1429
	movq	$999, -24(%rbp)
.L1429:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1430
	movq	$99, -24(%rbp)
.L1430:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1428:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1431
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1432
	movq	$999, -32(%rbp)
.L1432:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1433
	movq	$99, -32(%rbp)
.L1433:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1431:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1434
.L1436:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1435
	movl	$1, -40(%rbp)
.L1435:
	addl	$1, -36(%rbp)
.L1434:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1436
	cmpl	$0, -40(%rbp)
	jne	.L1437
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1437
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1437:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	cosh, .-cosh
	.section	.rodata
.LC35:
	.string	"coshl"
	.text
.globl coshl
	.type	coshl, @function
coshl:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC35, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1439
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1439
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1439:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1440
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1441
.L1440:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1441:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1442
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1442:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1443
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1444
.L1443:
	movq	r(%rip), %rax
.L1444:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1445
	cmpq	$999, -24(%rbp)
	jbe	.L1446
	movq	$999, -24(%rbp)
.L1446:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1447
	movq	$99, -24(%rbp)
.L1447:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1445:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1448
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1449
	movq	$999, -32(%rbp)
.L1449:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1450
	movq	$99, -32(%rbp)
.L1450:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1448:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1451
.L1453:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1452
	movl	$1, -40(%rbp)
.L1452:
	addl	$1, -36(%rbp)
.L1451:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1453
	cmpl	$0, -40(%rbp)
	jne	.L1454
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1454
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1454:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	coshl, .-coshl
	.section	.rodata
.LC36:
	.string	"coshf"
	.text
.globl coshf
	.type	coshf, @function
coshf:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC36, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1456
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1456
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1456:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1457
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1458
.L1457:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1458:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1459
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1459:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1460
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1461
.L1460:
	movq	r(%rip), %rax
.L1461:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1462
	cmpq	$999, -24(%rbp)
	jbe	.L1463
	movq	$999, -24(%rbp)
.L1463:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1464
	movq	$99, -24(%rbp)
.L1464:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1462:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1465
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1466
	movq	$999, -32(%rbp)
.L1466:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1467
	movq	$99, -32(%rbp)
.L1467:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1465:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1468
.L1470:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1469
	movl	$1, -40(%rbp)
.L1469:
	addl	$1, -36(%rbp)
.L1468:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1470
	cmpl	$0, -40(%rbp)
	jne	.L1471
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1471
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1471:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	coshf, .-coshf
	.section	.rodata
.LC37:
	.string	"sinh"
	.text
.globl sinh
	.type	sinh, @function
sinh:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC37, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1473
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1473
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1473:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1474
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1475
.L1474:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1475:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1476
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1476:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1477
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1478
.L1477:
	movq	r(%rip), %rax
.L1478:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1479
	cmpq	$999, -24(%rbp)
	jbe	.L1480
	movq	$999, -24(%rbp)
.L1480:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1481
	movq	$99, -24(%rbp)
.L1481:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1479:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1482
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1483
	movq	$999, -32(%rbp)
.L1483:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1484
	movq	$99, -32(%rbp)
.L1484:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1482:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1485
.L1487:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1486
	movl	$1, -40(%rbp)
.L1486:
	addl	$1, -36(%rbp)
.L1485:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1487
	cmpl	$0, -40(%rbp)
	jne	.L1488
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1488
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1488:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	sinh, .-sinh
	.section	.rodata
.LC38:
	.string	"sinhl"
	.text
.globl sinhl
	.type	sinhl, @function
sinhl:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC38, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1490
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1490
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1490:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1491
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1492
.L1491:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1492:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1493
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1493:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1494
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1495
.L1494:
	movq	r(%rip), %rax
.L1495:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1496
	cmpq	$999, -24(%rbp)
	jbe	.L1497
	movq	$999, -24(%rbp)
.L1497:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1498
	movq	$99, -24(%rbp)
.L1498:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1496:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1499
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1500
	movq	$999, -32(%rbp)
.L1500:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1501
	movq	$99, -32(%rbp)
.L1501:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1499:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1502
.L1504:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1503
	movl	$1, -40(%rbp)
.L1503:
	addl	$1, -36(%rbp)
.L1502:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1504
	cmpl	$0, -40(%rbp)
	jne	.L1505
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1505
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1505:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	sinhl, .-sinhl
	.section	.rodata
.LC39:
	.string	"sinhf"
	.text
.globl sinhf
	.type	sinhf, @function
sinhf:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC39, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1507
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1507
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1507:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1508
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1509
.L1508:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1509:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1510
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1510:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1511
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1512
.L1511:
	movq	r(%rip), %rax
.L1512:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1513
	cmpq	$999, -24(%rbp)
	jbe	.L1514
	movq	$999, -24(%rbp)
.L1514:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1515
	movq	$99, -24(%rbp)
.L1515:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1513:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1516
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1517
	movq	$999, -32(%rbp)
.L1517:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1518
	movq	$99, -32(%rbp)
.L1518:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1516:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1519
.L1521:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1520
	movl	$1, -40(%rbp)
.L1520:
	addl	$1, -36(%rbp)
.L1519:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1521
	cmpl	$0, -40(%rbp)
	jne	.L1522
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1522
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1522:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	sinhf, .-sinhf
	.section	.rodata
.LC40:
	.string	"tanh"
	.text
.globl tanh
	.type	tanh, @function
tanh:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC40, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1524
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1524
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1524:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1525
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1526
.L1525:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1526:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1527
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1527:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1528
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1529
.L1528:
	movq	r(%rip), %rax
.L1529:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1530
	cmpq	$999, -24(%rbp)
	jbe	.L1531
	movq	$999, -24(%rbp)
.L1531:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1532
	movq	$99, -24(%rbp)
.L1532:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1530:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1533
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1534
	movq	$999, -32(%rbp)
.L1534:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1535
	movq	$99, -32(%rbp)
.L1535:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1533:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1536
.L1538:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1537
	movl	$1, -40(%rbp)
.L1537:
	addl	$1, -36(%rbp)
.L1536:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1538
	cmpl	$0, -40(%rbp)
	jne	.L1539
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1539
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1539:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	tanh, .-tanh
	.section	.rodata
.LC41:
	.string	"tanhl"
	.text
.globl tanhl
	.type	tanhl, @function
tanhl:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC41, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1541
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1541
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1541:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1542
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1543
.L1542:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1543:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1544
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1544:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1545
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1546
.L1545:
	movq	r(%rip), %rax
.L1546:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1547
	cmpq	$999, -24(%rbp)
	jbe	.L1548
	movq	$999, -24(%rbp)
.L1548:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1549
	movq	$99, -24(%rbp)
.L1549:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1547:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1550
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1551
	movq	$999, -32(%rbp)
.L1551:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1552
	movq	$99, -32(%rbp)
.L1552:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1550:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1553
.L1555:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1554
	movl	$1, -40(%rbp)
.L1554:
	addl	$1, -36(%rbp)
.L1553:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1555
	cmpl	$0, -40(%rbp)
	jne	.L1556
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1556
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1556:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	tanhl, .-tanhl
	.section	.rodata
.LC42:
	.string	"tanhf"
	.text
.globl tanhf
	.type	tanhf, @function
tanhf:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC42, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+147544(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1558
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1558
	movq	prof+147544(%rip), %rdx
	movq	prof+147552(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$18312, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$18312, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1558:
	call	rdtsc
	movq	%rax, prof+147552(%rip)
	movq	b_sinh(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1559
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1560
.L1559:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1560:
	leaq	18376(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18376, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+147528(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147528(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1561
	movq	prof+141696(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+141696(%rip)
.L1561:
	movq	b_sinh(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1562
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1563
.L1562:
	movq	r(%rip), %rax
.L1563:
	movq	%rax, -24(%rbp)
	movq	prof+147552(%rip), %rdx
	movq	prof+147544(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1564
	cmpq	$999, -24(%rbp)
	jbe	.L1565
	movq	$999, -24(%rbp)
.L1565:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	17812(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$17812, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18012(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+147552(%rip), %rbx
	movq	prof+147544(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18012, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1566
	movq	$99, -24(%rbp)
.L1566:
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17712, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+147552(%rip), %rcx
	movq	prof+147544(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$17912, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1564:
	movq	b_sinh(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1567
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1568
	movq	$999, -32(%rbp)
.L1568:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18212(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18212, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1569
	movq	$99, -32(%rbp)
.L1569:
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18112, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1567:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1570
.L1572:
	movl	-36(%rbp), %eax
	cltq
	addq	$2400, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1571
	movl	$1, -40(%rbp)
.L1571:
	addl	$1, -36(%rbp)
.L1570:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+147592(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1572
	cmpl	$0, -40(%rbp)
	jne	.L1573
	movq	prof+147592(%rip), %rax
	cmpq	$99, %rax
	ja	.L1573
	movq	prof+147592(%rip), %rax
	leaq	2400(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+147592(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147592(%rip)
.L1573:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	tanhf, .-tanhf
	.section	.rodata
.LC43:
	.string	"pow"
	.text
.globl pow
	.type	pow, @function
pow:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	$.LC43, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-80(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1575
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1575
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1575:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1576
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1577
.L1576:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1577:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1578
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1578:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1579
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1580
.L1579:
	movq	r(%rip), %rax
.L1580:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1581
	cmpq	$999, -24(%rbp)
	jbe	.L1582
	movq	$999, -24(%rbp)
.L1582:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1583
	movq	$99, -24(%rbp)
.L1583:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1581:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1584
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1585
	movq	$999, -32(%rbp)
.L1585:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1586
	movq	$99, -32(%rbp)
.L1586:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1584:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1587
.L1589:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1588
	movl	$1, -40(%rbp)
.L1588:
	addl	$1, -36(%rbp)
.L1587:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1589
	cmpl	$0, -40(%rbp)
	jne	.L1590
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1590
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1590:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	pow, .-pow
	.section	.rodata
.LC44:
	.string	"powl"
	.text
.globl powl
	.type	powl, @function
powl:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	movl	$.LC44, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	movq	%rax, 16(%rsp)
	movl	%edx, 24(%rsp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1592
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1592
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1592:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1593
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1594
.L1593:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1594:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1595
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1595:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1596
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1597
.L1596:
	movq	r(%rip), %rax
.L1597:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1598
	cmpq	$999, -24(%rbp)
	jbe	.L1599
	movq	$999, -24(%rbp)
.L1599:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1600
	movq	$99, -24(%rbp)
.L1600:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1598:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1601
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1602
	movq	$999, -32(%rbp)
.L1602:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1603
	movq	$99, -32(%rbp)
.L1603:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1601:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1604
.L1606:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1605
	movl	$1, -40(%rbp)
.L1605:
	addl	$1, -36(%rbp)
.L1604:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1606
	cmpl	$0, -40(%rbp)
	jne	.L1607
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1607
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1607:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$136, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	powl, .-powl
	.section	.rodata
.LC45:
	.string	"powf"
	.text
.globl powf
	.type	powf, @function
powf:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movss	%xmm1, -72(%rbp)
	movl	$.LC45, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-72(%rbp), %xmm1
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1609
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1609
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1609:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1610
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1611
.L1610:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1611:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1612
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1612:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1613
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1614
.L1613:
	movq	r(%rip), %rax
.L1614:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1615
	cmpq	$999, -24(%rbp)
	jbe	.L1616
	movq	$999, -24(%rbp)
.L1616:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1617
	movq	$99, -24(%rbp)
.L1617:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1615:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1618
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1619
	movq	$999, -32(%rbp)
.L1619:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1620
	movq	$99, -32(%rbp)
.L1620:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1618:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1621
.L1623:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1622
	movl	$1, -40(%rbp)
.L1622:
	addl	$1, -36(%rbp)
.L1621:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1623
	cmpl	$0, -40(%rbp)
	jne	.L1624
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1624
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1624:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	powf, .-powf
	.section	.rodata
.LC46:
	.string	"exp"
	.text
.globl exp
	.type	exp, @function
exp:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC46, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1626
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1626
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1626:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1627
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1628
.L1627:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1628:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1629
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1629:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1630
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1631
.L1630:
	movq	r(%rip), %rax
.L1631:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1632
	cmpq	$999, -24(%rbp)
	jbe	.L1633
	movq	$999, -24(%rbp)
.L1633:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1634
	movq	$99, -24(%rbp)
.L1634:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1632:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1635
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1636
	movq	$999, -32(%rbp)
.L1636:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1637
	movq	$99, -32(%rbp)
.L1637:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1635:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1638
.L1640:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1639
	movl	$1, -40(%rbp)
.L1639:
	addl	$1, -36(%rbp)
.L1638:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1640
	cmpl	$0, -40(%rbp)
	jne	.L1641
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1641
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1641:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	exp, .-exp
	.section	.rodata
.LC47:
	.string	"expl"
	.text
.globl expl
	.type	expl, @function
expl:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC47, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1643
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1643
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1643:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1644
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1645
.L1644:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1645:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1646
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1646:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1647
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1648
.L1647:
	movq	r(%rip), %rax
.L1648:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1649
	cmpq	$999, -24(%rbp)
	jbe	.L1650
	movq	$999, -24(%rbp)
.L1650:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1651
	movq	$99, -24(%rbp)
.L1651:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1649:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1652
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1653
	movq	$999, -32(%rbp)
.L1653:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1654
	movq	$99, -32(%rbp)
.L1654:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1652:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1655
.L1657:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1656
	movl	$1, -40(%rbp)
.L1656:
	addl	$1, -36(%rbp)
.L1655:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1657
	cmpl	$0, -40(%rbp)
	jne	.L1658
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1658
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1658:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	expl, .-expl
	.section	.rodata
.LC48:
	.string	"expf"
	.text
.globl expf
	.type	expf, @function
expf:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC48, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1660
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1660
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1660:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1661
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1662
.L1661:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1662:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1663
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1663:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1664
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1665
.L1664:
	movq	r(%rip), %rax
.L1665:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1666
	cmpq	$999, -24(%rbp)
	jbe	.L1667
	movq	$999, -24(%rbp)
.L1667:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1668
	movq	$99, -24(%rbp)
.L1668:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1666:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1669
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1670
	movq	$999, -32(%rbp)
.L1670:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1671
	movq	$99, -32(%rbp)
.L1671:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1669:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1672
.L1674:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1673
	movl	$1, -40(%rbp)
.L1673:
	addl	$1, -36(%rbp)
.L1672:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1674
	cmpl	$0, -40(%rbp)
	jne	.L1675
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1675
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1675:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	expf, .-expf
	.section	.rodata
.LC49:
	.string	"exp2"
	.text
.globl exp2
	.type	exp2, @function
exp2:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC49, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1677
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1677
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1677:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1678
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1679
.L1678:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1679:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1680
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1680:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1681
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1682
.L1681:
	movq	r(%rip), %rax
.L1682:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1683
	cmpq	$999, -24(%rbp)
	jbe	.L1684
	movq	$999, -24(%rbp)
.L1684:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1685
	movq	$99, -24(%rbp)
.L1685:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1683:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1686
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1687
	movq	$999, -32(%rbp)
.L1687:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1688
	movq	$99, -32(%rbp)
.L1688:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1686:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1689
.L1691:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1690
	movl	$1, -40(%rbp)
.L1690:
	addl	$1, -36(%rbp)
.L1689:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1691
	cmpl	$0, -40(%rbp)
	jne	.L1692
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1692
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1692:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	exp2, .-exp2
	.section	.rodata
.LC50:
	.string	"exp2l"
	.text
.globl exp2l
	.type	exp2l, @function
exp2l:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC50, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1694
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1694
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1694:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1695
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1696
.L1695:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1696:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1697
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1697:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1698
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1699
.L1698:
	movq	r(%rip), %rax
.L1699:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1700
	cmpq	$999, -24(%rbp)
	jbe	.L1701
	movq	$999, -24(%rbp)
.L1701:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1702
	movq	$99, -24(%rbp)
.L1702:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1700:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1703
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1704
	movq	$999, -32(%rbp)
.L1704:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1705
	movq	$99, -32(%rbp)
.L1705:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1703:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1706
.L1708:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1707
	movl	$1, -40(%rbp)
.L1707:
	addl	$1, -36(%rbp)
.L1706:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1708
	cmpl	$0, -40(%rbp)
	jne	.L1709
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1709
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1709:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	exp2l, .-exp2l
	.section	.rodata
.LC51:
	.string	"exp2f"
	.text
.globl exp2f
	.type	exp2f, @function
exp2f:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC51, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1711
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1711
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1711:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1712
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1713
.L1712:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1713:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1714
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1714:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1715
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1716
.L1715:
	movq	r(%rip), %rax
.L1716:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1717
	cmpq	$999, -24(%rbp)
	jbe	.L1718
	movq	$999, -24(%rbp)
.L1718:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1719
	movq	$99, -24(%rbp)
.L1719:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1717:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1720
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1721
	movq	$999, -32(%rbp)
.L1721:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1722
	movq	$99, -32(%rbp)
.L1722:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1720:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1723
.L1725:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1724
	movl	$1, -40(%rbp)
.L1724:
	addl	$1, -36(%rbp)
.L1723:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1725
	cmpl	$0, -40(%rbp)
	jne	.L1726
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1726
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1726:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	exp2f, .-exp2f
	.section	.rodata
.LC52:
	.string	"exp10"
	.text
.globl exp10
	.type	exp10, @function
exp10:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC52, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1728
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1728
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1728:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1729
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1730
.L1729:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1730:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1731
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1731:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1732
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1733
.L1732:
	movq	r(%rip), %rax
.L1733:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1734
	cmpq	$999, -24(%rbp)
	jbe	.L1735
	movq	$999, -24(%rbp)
.L1735:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1736
	movq	$99, -24(%rbp)
.L1736:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1734:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1737
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1738
	movq	$999, -32(%rbp)
.L1738:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1739
	movq	$99, -32(%rbp)
.L1739:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1737:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1740
.L1742:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1741
	movl	$1, -40(%rbp)
.L1741:
	addl	$1, -36(%rbp)
.L1740:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1742
	cmpl	$0, -40(%rbp)
	jne	.L1743
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1743
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1743:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	exp10, .-exp10
	.section	.rodata
.LC53:
	.string	"exp10l"
	.text
.globl exp10l
	.type	exp10l, @function
exp10l:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC53, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1745
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1745
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1745:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1746
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1747
.L1746:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1747:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1748
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1748:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1749
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1750
.L1749:
	movq	r(%rip), %rax
.L1750:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1751
	cmpq	$999, -24(%rbp)
	jbe	.L1752
	movq	$999, -24(%rbp)
.L1752:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1753
	movq	$99, -24(%rbp)
.L1753:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1751:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1754
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1755
	movq	$999, -32(%rbp)
.L1755:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1756
	movq	$99, -32(%rbp)
.L1756:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1754:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1757
.L1759:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1758
	movl	$1, -40(%rbp)
.L1758:
	addl	$1, -36(%rbp)
.L1757:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1759
	cmpl	$0, -40(%rbp)
	jne	.L1760
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1760
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1760:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	exp10l, .-exp10l
	.section	.rodata
.LC54:
	.string	"exp10f"
	.text
.globl exp10f
	.type	exp10f, @function
exp10f:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC54, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1762
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1762
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1762:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1763
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1764
.L1763:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1764:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1765
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1765:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1766
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1767
.L1766:
	movq	r(%rip), %rax
.L1767:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1768
	cmpq	$999, -24(%rbp)
	jbe	.L1769
	movq	$999, -24(%rbp)
.L1769:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1770
	movq	$99, -24(%rbp)
.L1770:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1768:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1771
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1772
	movq	$999, -32(%rbp)
.L1772:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1773
	movq	$99, -32(%rbp)
.L1773:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1771:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1774
.L1776:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1775
	movl	$1, -40(%rbp)
.L1775:
	addl	$1, -36(%rbp)
.L1774:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1776
	cmpl	$0, -40(%rbp)
	jne	.L1777
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1777
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1777:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	exp10f, .-exp10f
	.section	.rodata
.LC55:
	.string	"log"
	.text
.globl log
	.type	log, @function
log:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC55, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1779
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1779
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1779:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1780
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1781
.L1780:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1781:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1782
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1782:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1783
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1784
.L1783:
	movq	r(%rip), %rax
.L1784:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1785
	cmpq	$999, -24(%rbp)
	jbe	.L1786
	movq	$999, -24(%rbp)
.L1786:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1787
	movq	$99, -24(%rbp)
.L1787:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1785:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1788
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1789
	movq	$999, -32(%rbp)
.L1789:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1790
	movq	$99, -32(%rbp)
.L1790:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1788:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1791
.L1793:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1792
	movl	$1, -40(%rbp)
.L1792:
	addl	$1, -36(%rbp)
.L1791:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1793
	cmpl	$0, -40(%rbp)
	jne	.L1794
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1794
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1794:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	log, .-log
	.section	.rodata
.LC56:
	.string	"logl"
	.text
.globl logl
	.type	logl, @function
logl:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC56, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1796
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1796
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1796:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1797
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1798
.L1797:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1798:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1799
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1799:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1800
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1801
.L1800:
	movq	r(%rip), %rax
.L1801:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1802
	cmpq	$999, -24(%rbp)
	jbe	.L1803
	movq	$999, -24(%rbp)
.L1803:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1804
	movq	$99, -24(%rbp)
.L1804:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1802:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1805
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1806
	movq	$999, -32(%rbp)
.L1806:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1807
	movq	$99, -32(%rbp)
.L1807:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1805:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1808
.L1810:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1809
	movl	$1, -40(%rbp)
.L1809:
	addl	$1, -36(%rbp)
.L1808:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1810
	cmpl	$0, -40(%rbp)
	jne	.L1811
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1811
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1811:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	logl, .-logl
	.section	.rodata
.LC57:
	.string	"logf"
	.text
.globl logf
	.type	logf, @function
logf:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC57, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1813
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1813
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1813:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1814
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1815
.L1814:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1815:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1816
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1816:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1817
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1818
.L1817:
	movq	r(%rip), %rax
.L1818:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1819
	cmpq	$999, -24(%rbp)
	jbe	.L1820
	movq	$999, -24(%rbp)
.L1820:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1821
	movq	$99, -24(%rbp)
.L1821:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1819:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1822
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1823
	movq	$999, -32(%rbp)
.L1823:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1824
	movq	$99, -32(%rbp)
.L1824:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1822:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1825
.L1827:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1826
	movl	$1, -40(%rbp)
.L1826:
	addl	$1, -36(%rbp)
.L1825:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1827
	cmpl	$0, -40(%rbp)
	jne	.L1828
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1828
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1828:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	logf, .-logf
	.section	.rodata
.LC58:
	.string	"log2"
	.text
.globl log2
	.type	log2, @function
log2:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC58, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1830
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1830
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1830:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1831
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1832
.L1831:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1832:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1833
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1833:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1834
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1835
.L1834:
	movq	r(%rip), %rax
.L1835:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1836
	cmpq	$999, -24(%rbp)
	jbe	.L1837
	movq	$999, -24(%rbp)
.L1837:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1838
	movq	$99, -24(%rbp)
.L1838:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1836:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1839
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1840
	movq	$999, -32(%rbp)
.L1840:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1841
	movq	$99, -32(%rbp)
.L1841:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1839:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1842
.L1844:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1843
	movl	$1, -40(%rbp)
.L1843:
	addl	$1, -36(%rbp)
.L1842:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1844
	cmpl	$0, -40(%rbp)
	jne	.L1845
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1845
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1845:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	log2, .-log2
	.section	.rodata
.LC59:
	.string	"log2l"
	.text
.globl log2l
	.type	log2l, @function
log2l:
.LFB100:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC59, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1847
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1847
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1847:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1848
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1849
.L1848:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1849:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1850
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1850:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1851
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1852
.L1851:
	movq	r(%rip), %rax
.L1852:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1853
	cmpq	$999, -24(%rbp)
	jbe	.L1854
	movq	$999, -24(%rbp)
.L1854:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1855
	movq	$99, -24(%rbp)
.L1855:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1853:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1856
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1857
	movq	$999, -32(%rbp)
.L1857:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1858
	movq	$99, -32(%rbp)
.L1858:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1856:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1859
.L1861:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1860
	movl	$1, -40(%rbp)
.L1860:
	addl	$1, -36(%rbp)
.L1859:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1861
	cmpl	$0, -40(%rbp)
	jne	.L1862
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1862
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1862:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	log2l, .-log2l
	.section	.rodata
.LC60:
	.string	"log2f"
	.text
.globl log2f
	.type	log2f, @function
log2f:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC60, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1864
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1864
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1864:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1865
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1866
.L1865:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1866:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1867
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1867:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1868
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1869
.L1868:
	movq	r(%rip), %rax
.L1869:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1870
	cmpq	$999, -24(%rbp)
	jbe	.L1871
	movq	$999, -24(%rbp)
.L1871:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1872
	movq	$99, -24(%rbp)
.L1872:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1870:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1873
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1874
	movq	$999, -32(%rbp)
.L1874:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1875
	movq	$99, -32(%rbp)
.L1875:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1873:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1876
.L1878:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1877
	movl	$1, -40(%rbp)
.L1877:
	addl	$1, -36(%rbp)
.L1876:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1878
	cmpl	$0, -40(%rbp)
	jne	.L1879
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1879
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1879:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	log2f, .-log2f
	.section	.rodata
.LC61:
	.string	"sqrt"
	.text
.globl sqrt
	.type	sqrt, @function
sqrt:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC61, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1881
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1881
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1881:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1882
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1883
.L1882:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1883:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1884
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1884:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1885
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1886
.L1885:
	movq	r(%rip), %rax
.L1886:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1887
	cmpq	$999, -24(%rbp)
	jbe	.L1888
	movq	$999, -24(%rbp)
.L1888:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1889
	movq	$99, -24(%rbp)
.L1889:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1887:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1890
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1891
	movq	$999, -32(%rbp)
.L1891:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1892
	movq	$99, -32(%rbp)
.L1892:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1890:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1893
.L1895:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1894
	movl	$1, -40(%rbp)
.L1894:
	addl	$1, -36(%rbp)
.L1893:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1895
	cmpl	$0, -40(%rbp)
	jne	.L1896
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1896
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1896:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	sqrt, .-sqrt
	.section	.rodata
.LC62:
	.string	"sqrtl"
	.text
.globl sqrtl
	.type	sqrtl, @function
sqrtl:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC62, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1898
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1898
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1898:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1899
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1900
.L1899:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1900:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1901
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1901:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1902
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1903
.L1902:
	movq	r(%rip), %rax
.L1903:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1904
	cmpq	$999, -24(%rbp)
	jbe	.L1905
	movq	$999, -24(%rbp)
.L1905:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1906
	movq	$99, -24(%rbp)
.L1906:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1904:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1907
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1908
	movq	$999, -32(%rbp)
.L1908:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1909
	movq	$99, -32(%rbp)
.L1909:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1907:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1910
.L1912:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1911
	movl	$1, -40(%rbp)
.L1911:
	addl	$1, -36(%rbp)
.L1910:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1912
	cmpl	$0, -40(%rbp)
	jne	.L1913
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1913
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1913:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	sqrtl, .-sqrtl
	.section	.rodata
.LC63:
	.string	"sqrtf"
	.text
.globl sqrtf
	.type	sqrtf, @function
sqrtf:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC63, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1915
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1915
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1915:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1916
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1917
.L1916:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1917:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1918
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1918:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1919
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1920
.L1919:
	movq	r(%rip), %rax
.L1920:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1921
	cmpq	$999, -24(%rbp)
	jbe	.L1922
	movq	$999, -24(%rbp)
.L1922:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1923
	movq	$99, -24(%rbp)
.L1923:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1921:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1924
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1925
	movq	$999, -32(%rbp)
.L1925:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1926
	movq	$99, -32(%rbp)
.L1926:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1924:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1927
.L1929:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1928
	movl	$1, -40(%rbp)
.L1928:
	addl	$1, -36(%rbp)
.L1927:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1929
	cmpl	$0, -40(%rbp)
	jne	.L1930
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1930
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1930:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	sqrtf, .-sqrtf
	.section	.rodata
.LC64:
	.string	"cbrt"
	.text
.globl cbrt
	.type	cbrt, @function
cbrt:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC64, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1932
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1932
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1932:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1933
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1934
.L1933:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1934:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1935
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1935:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1936
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1937
.L1936:
	movq	r(%rip), %rax
.L1937:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1938
	cmpq	$999, -24(%rbp)
	jbe	.L1939
	movq	$999, -24(%rbp)
.L1939:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1940
	movq	$99, -24(%rbp)
.L1940:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1938:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1941
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1942
	movq	$999, -32(%rbp)
.L1942:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1943
	movq	$99, -32(%rbp)
.L1943:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1941:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1944
.L1946:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1945
	movl	$1, -40(%rbp)
.L1945:
	addl	$1, -36(%rbp)
.L1944:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1946
	cmpl	$0, -40(%rbp)
	jne	.L1947
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1947
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1947:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	cbrt, .-cbrt
	.section	.rodata
.LC65:
	.string	"cbrtl"
	.text
.globl cbrtl
	.type	cbrtl, @function
cbrtl:
.LFB106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC65, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1949
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1949
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1949:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1950
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1951
.L1950:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1951:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1952
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1952:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1953
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1954
.L1953:
	movq	r(%rip), %rax
.L1954:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1955
	cmpq	$999, -24(%rbp)
	jbe	.L1956
	movq	$999, -24(%rbp)
.L1956:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1957
	movq	$99, -24(%rbp)
.L1957:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1955:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1958
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1959
	movq	$999, -32(%rbp)
.L1959:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1960
	movq	$99, -32(%rbp)
.L1960:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1958:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1961
.L1963:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L1962
	movl	$1, -40(%rbp)
.L1962:
	addl	$1, -36(%rbp)
.L1961:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1963
	cmpl	$0, -40(%rbp)
	jne	.L1964
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1964
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1964:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	cbrtl, .-cbrtl
	.section	.rodata
.LC66:
	.string	"cbrtf"
	.text
.globl cbrtf
	.type	cbrtf, @function
cbrtf:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC66, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+153448(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1966
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1966
	movq	prof+153448(%rip), %rdx
	movq	prof+153456(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19050, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19050, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1966:
	call	rdtsc
	movq	%rax, prof+153456(%rip)
	movq	b_pow(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1967
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1968
.L1967:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1968:
	leaq	19114(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19114, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+153432(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153432(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1969
	movq	prof+147600(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+147600(%rip)
.L1969:
	movq	b_pow(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1970
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1971
.L1970:
	movq	r(%rip), %rax
.L1971:
	movq	%rax, -24(%rbp)
	movq	prof+153456(%rip), %rdx
	movq	prof+153448(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1972
	cmpq	$999, -24(%rbp)
	jbe	.L1973
	movq	$999, -24(%rbp)
.L1973:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18550(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18550, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18750(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+153456(%rip), %rbx
	movq	prof+153448(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$18750, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1974
	movq	$99, -24(%rbp)
.L1974:
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$18450, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+153456(%rip), %rcx
	movq	prof+153448(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$18650, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1972:
	movq	b_pow(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1975
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1976
	movq	$999, -32(%rbp)
.L1976:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	18950(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$18950, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1977
	movq	$99, -32(%rbp)
.L1977:
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$18850, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1975:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1978
.L1980:
	movl	-36(%rbp), %eax
	cltq
	addq	$2500, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1979
	movl	$1, -40(%rbp)
.L1979:
	addl	$1, -36(%rbp)
.L1978:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+153496(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1980
	cmpl	$0, -40(%rbp)
	jne	.L1981
	movq	prof+153496(%rip), %rax
	cmpq	$99, %rax
	ja	.L1981
	movq	prof+153496(%rip), %rax
	leaq	2500(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+153496(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153496(%rip)
.L1981:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	cbrtf, .-cbrtf
	.section	.rodata
.LC67:
	.string	"j0"
	.text
.globl j0
	.type	j0, @function
j0:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC67, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L1983
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L1983
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1983:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1984
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L1985
.L1984:
	movq	x(%rip), %rax
	andl	$63, %eax
.L1985:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L1986
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L1986:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1987
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L1988
.L1987:
	movq	r(%rip), %rax
.L1988:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L1989
	cmpq	$999, -24(%rbp)
	jbe	.L1990
	movq	$999, -24(%rbp)
.L1990:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L1991
	movq	$99, -24(%rbp)
.L1991:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1989:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L1992
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L1993
	movq	$999, -32(%rbp)
.L1993:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L1994
	movq	$99, -32(%rbp)
.L1994:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L1992:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L1995
.L1997:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L1996
	movl	$1, -40(%rbp)
.L1996:
	addl	$1, -36(%rbp)
.L1995:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L1997
	cmpl	$0, -40(%rbp)
	jne	.L1998
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L1998
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L1998:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	j0, .-j0
	.section	.rodata
.LC68:
	.string	"j0l"
	.text
.globl j0l
	.type	j0l, @function
j0l:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC68, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2000
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2000
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2000:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2001
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2002
.L2001:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2002:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2003
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2003:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2004
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2005
.L2004:
	movq	r(%rip), %rax
.L2005:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2006
	cmpq	$999, -24(%rbp)
	jbe	.L2007
	movq	$999, -24(%rbp)
.L2007:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2008
	movq	$99, -24(%rbp)
.L2008:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2006:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2009
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2010
	movq	$999, -32(%rbp)
.L2010:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2011
	movq	$99, -32(%rbp)
.L2011:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2009:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2012
.L2014:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2013
	movl	$1, -40(%rbp)
.L2013:
	addl	$1, -36(%rbp)
.L2012:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2014
	cmpl	$0, -40(%rbp)
	jne	.L2015
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2015
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2015:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	j0l, .-j0l
	.section	.rodata
.LC69:
	.string	"j0f"
	.text
.globl j0f
	.type	j0f, @function
j0f:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC69, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2017
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2017
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2017:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2018
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2019
.L2018:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2019:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2020
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2020:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2021
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2022
.L2021:
	movq	r(%rip), %rax
.L2022:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2023
	cmpq	$999, -24(%rbp)
	jbe	.L2024
	movq	$999, -24(%rbp)
.L2024:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2025
	movq	$99, -24(%rbp)
.L2025:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2023:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2026
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2027
	movq	$999, -32(%rbp)
.L2027:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2028
	movq	$99, -32(%rbp)
.L2028:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2026:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2029
.L2031:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2030
	movl	$1, -40(%rbp)
.L2030:
	addl	$1, -36(%rbp)
.L2029:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2031
	cmpl	$0, -40(%rbp)
	jne	.L2032
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2032
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2032:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	j0f, .-j0f
	.section	.rodata
.LC70:
	.string	"j1"
	.text
.globl j1
	.type	j1, @function
j1:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC70, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2034
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2034
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2034:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2035
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2036
.L2035:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2036:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2037
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2037:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2038
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2039
.L2038:
	movq	r(%rip), %rax
.L2039:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2040
	cmpq	$999, -24(%rbp)
	jbe	.L2041
	movq	$999, -24(%rbp)
.L2041:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2042
	movq	$99, -24(%rbp)
.L2042:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2040:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2043
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2044
	movq	$999, -32(%rbp)
.L2044:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2045
	movq	$99, -32(%rbp)
.L2045:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2043:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2046
.L2048:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2047
	movl	$1, -40(%rbp)
.L2047:
	addl	$1, -36(%rbp)
.L2046:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2048
	cmpl	$0, -40(%rbp)
	jne	.L2049
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2049
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2049:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	j1, .-j1
	.section	.rodata
.LC71:
	.string	"j1l"
	.text
.globl j1l
	.type	j1l, @function
j1l:
.LFB112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC71, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2051
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2051
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2051:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2052
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2053
.L2052:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2053:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2054
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2054:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2055
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2056
.L2055:
	movq	r(%rip), %rax
.L2056:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2057
	cmpq	$999, -24(%rbp)
	jbe	.L2058
	movq	$999, -24(%rbp)
.L2058:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2059
	movq	$99, -24(%rbp)
.L2059:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2057:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2060
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2061
	movq	$999, -32(%rbp)
.L2061:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2062
	movq	$99, -32(%rbp)
.L2062:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2060:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2063
.L2065:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2064
	movl	$1, -40(%rbp)
.L2064:
	addl	$1, -36(%rbp)
.L2063:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2065
	cmpl	$0, -40(%rbp)
	jne	.L2066
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2066
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2066:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	j1l, .-j1l
	.section	.rodata
.LC72:
	.string	"j1f"
	.text
.globl j1f
	.type	j1f, @function
j1f:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC72, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2068
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2068
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2068:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2069
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2070
.L2069:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2070:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2071
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2071:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2072
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2073
.L2072:
	movq	r(%rip), %rax
.L2073:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2074
	cmpq	$999, -24(%rbp)
	jbe	.L2075
	movq	$999, -24(%rbp)
.L2075:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2076
	movq	$99, -24(%rbp)
.L2076:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2074:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2077
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2078
	movq	$999, -32(%rbp)
.L2078:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2079
	movq	$99, -32(%rbp)
.L2079:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2077:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2080
.L2082:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2081
	movl	$1, -40(%rbp)
.L2081:
	addl	$1, -36(%rbp)
.L2080:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2082
	cmpl	$0, -40(%rbp)
	jne	.L2083
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2083
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2083:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	j1f, .-j1f
	.section	.rodata
.LC73:
	.string	"y0"
	.text
.globl y0
	.type	y0, @function
y0:
.LFB114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC73, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2085
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2085
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2085:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2086
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2087
.L2086:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2087:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2088
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2088:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2089
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2090
.L2089:
	movq	r(%rip), %rax
.L2090:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2091
	cmpq	$999, -24(%rbp)
	jbe	.L2092
	movq	$999, -24(%rbp)
.L2092:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2093
	movq	$99, -24(%rbp)
.L2093:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2091:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2094
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2095
	movq	$999, -32(%rbp)
.L2095:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2096
	movq	$99, -32(%rbp)
.L2096:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2094:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2097
.L2099:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2098
	movl	$1, -40(%rbp)
.L2098:
	addl	$1, -36(%rbp)
.L2097:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2099
	cmpl	$0, -40(%rbp)
	jne	.L2100
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2100
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2100:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	y0, .-y0
	.section	.rodata
.LC74:
	.string	"y0l"
	.text
.globl y0l
	.type	y0l, @function
y0l:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC74, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2102
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2102
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2102:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2103
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2104
.L2103:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2104:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2105
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2105:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2106
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2107
.L2106:
	movq	r(%rip), %rax
.L2107:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2108
	cmpq	$999, -24(%rbp)
	jbe	.L2109
	movq	$999, -24(%rbp)
.L2109:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2110
	movq	$99, -24(%rbp)
.L2110:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2108:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2111
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2112
	movq	$999, -32(%rbp)
.L2112:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2113
	movq	$99, -32(%rbp)
.L2113:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2111:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2114
.L2116:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2115
	movl	$1, -40(%rbp)
.L2115:
	addl	$1, -36(%rbp)
.L2114:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2116
	cmpl	$0, -40(%rbp)
	jne	.L2117
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2117
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2117:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	y0l, .-y0l
	.section	.rodata
.LC75:
	.string	"y0f"
	.text
.globl y0f
	.type	y0f, @function
y0f:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC75, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2119
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2119
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2119:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2120
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2121
.L2120:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2121:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2122
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2122:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2123
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2124
.L2123:
	movq	r(%rip), %rax
.L2124:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2125
	cmpq	$999, -24(%rbp)
	jbe	.L2126
	movq	$999, -24(%rbp)
.L2126:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2127
	movq	$99, -24(%rbp)
.L2127:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2125:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2128
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2129
	movq	$999, -32(%rbp)
.L2129:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2130
	movq	$99, -32(%rbp)
.L2130:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2128:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2131
.L2133:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2132
	movl	$1, -40(%rbp)
.L2132:
	addl	$1, -36(%rbp)
.L2131:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2133
	cmpl	$0, -40(%rbp)
	jne	.L2134
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2134
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2134:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	y0f, .-y0f
	.section	.rodata
.LC76:
	.string	"y1"
	.text
.globl y1
	.type	y1, @function
y1:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC76, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2136
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2136
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2136:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2137
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2138
.L2137:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2138:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2139
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2139:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2140
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2141
.L2140:
	movq	r(%rip), %rax
.L2141:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2142
	cmpq	$999, -24(%rbp)
	jbe	.L2143
	movq	$999, -24(%rbp)
.L2143:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2144
	movq	$99, -24(%rbp)
.L2144:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2142:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2145
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2146
	movq	$999, -32(%rbp)
.L2146:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2147
	movq	$99, -32(%rbp)
.L2147:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2145:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2148
.L2150:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2149
	movl	$1, -40(%rbp)
.L2149:
	addl	$1, -36(%rbp)
.L2148:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2150
	cmpl	$0, -40(%rbp)
	jne	.L2151
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2151
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2151:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	y1, .-y1
	.section	.rodata
.LC77:
	.string	"y1l"
	.text
.globl y1l
	.type	y1l, @function
y1l:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC77, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2153
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2153
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2153:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2154
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2155
.L2154:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2155:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2156
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2156:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2157
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2158
.L2157:
	movq	r(%rip), %rax
.L2158:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2159
	cmpq	$999, -24(%rbp)
	jbe	.L2160
	movq	$999, -24(%rbp)
.L2160:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2161
	movq	$99, -24(%rbp)
.L2161:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2159:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2162
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2163
	movq	$999, -32(%rbp)
.L2163:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2164
	movq	$99, -32(%rbp)
.L2164:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2162:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2165
.L2167:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2166
	movl	$1, -40(%rbp)
.L2166:
	addl	$1, -36(%rbp)
.L2165:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2167
	cmpl	$0, -40(%rbp)
	jne	.L2168
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2168
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2168:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	y1l, .-y1l
	.section	.rodata
.LC78:
	.string	"y1f"
	.text
.globl y1f
	.type	y1f, @function
y1f:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC78, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2170
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2170
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2170:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2171
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2172
.L2171:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2172:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2173
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2173:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2174
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2175
.L2174:
	movq	r(%rip), %rax
.L2175:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2176
	cmpq	$999, -24(%rbp)
	jbe	.L2177
	movq	$999, -24(%rbp)
.L2177:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2178
	movq	$99, -24(%rbp)
.L2178:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2176:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2179
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2180
	movq	$999, -32(%rbp)
.L2180:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2181
	movq	$99, -32(%rbp)
.L2181:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2179:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2182
.L2184:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2183
	movl	$1, -40(%rbp)
.L2183:
	addl	$1, -36(%rbp)
.L2182:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2184
	cmpl	$0, -40(%rbp)
	jne	.L2185
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2185
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2185:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	y1f, .-y1f
	.section	.rodata
.LC79:
	.string	"jn"
	.text
.globl jn
	.type	jn, @function
jn:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	$.LC79, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movsd	-80(%rbp), %xmm0
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
	movsd	%xmm0, -56(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2187
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2187
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2187:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2188
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2189
.L2188:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2189:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2190
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2190:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2191
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2192
.L2191:
	movq	r(%rip), %rax
.L2192:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2193
	cmpq	$999, -24(%rbp)
	jbe	.L2194
	movq	$999, -24(%rbp)
.L2194:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2195
	movq	$99, -24(%rbp)
.L2195:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2193:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2196
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2197
	movq	$999, -32(%rbp)
.L2197:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2198
	movq	$99, -32(%rbp)
.L2198:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2196:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2199
.L2201:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2200
	movl	$1, -40(%rbp)
.L2200:
	addl	$1, -36(%rbp)
.L2199:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2201
	cmpl	$0, -40(%rbp)
	jne	.L2202
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2202
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2202:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	jn, .-jn
	.section	.rodata
.LC80:
	.string	"jnl"
	.text
.globl jnl
	.type	jnl, @function
jnl:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	movl	%edi, -84(%rbp)
	movl	$.LC80, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movl	-84(%rbp), %ecx
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	movl	%ecx, %edi
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2204
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2204
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2204:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2205
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2206
.L2205:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2206:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2207
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2207:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2208
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2209
.L2208:
	movq	r(%rip), %rax
.L2209:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2210
	cmpq	$999, -24(%rbp)
	jbe	.L2211
	movq	$999, -24(%rbp)
.L2211:
	movq	-24(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2212
	movq	$99, -24(%rbp)
.L2212:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2210:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2213
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2214
	movq	$999, -32(%rbp)
.L2214:
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2215
	movq	$99, -32(%rbp)
.L2215:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2213:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2216
.L2218:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2217
	movl	$1, -40(%rbp)
.L2217:
	addl	$1, -36(%rbp)
.L2216:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2218
	cmpl	$0, -40(%rbp)
	jne	.L2219
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2219
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2219:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	-112(%rbp)
	addq	$136, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	jnl, .-jnl
	.section	.rodata
.LC81:
	.string	"jnf"
	.text
.globl jnf
	.type	jnf, @function
jnf:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, -68(%rbp)
	movss	%xmm0, -72(%rbp)
	movl	$.LC81, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movss	-72(%rbp), %xmm0
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
	movss	%xmm0, -52(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2221
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2221
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2221:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2222
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2223
.L2222:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2223:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2224
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2224:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2225
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2226
.L2225:
	movq	r(%rip), %rax
.L2226:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2227
	cmpq	$999, -24(%rbp)
	jbe	.L2228
	movq	$999, -24(%rbp)
.L2228:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2229
	movq	$99, -24(%rbp)
.L2229:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2227:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2230
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2231
	movq	$999, -32(%rbp)
.L2231:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2232
	movq	$99, -32(%rbp)
.L2232:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2230:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2233
.L2235:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2234
	movl	$1, -40(%rbp)
.L2234:
	addl	$1, -36(%rbp)
.L2233:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2235
	cmpl	$0, -40(%rbp)
	jne	.L2236
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2236
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2236:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	jnf, .-jnf
	.section	.rodata
.LC82:
	.string	"yn"
	.text
.globl yn
	.type	yn, @function
yn:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	$.LC82, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movsd	-80(%rbp), %xmm0
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
	movsd	%xmm0, -56(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2238
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2238
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2238:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2239
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2240
.L2239:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2240:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2241
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2241:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2242
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2243
.L2242:
	movq	r(%rip), %rax
.L2243:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2244
	cmpq	$999, -24(%rbp)
	jbe	.L2245
	movq	$999, -24(%rbp)
.L2245:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2246
	movq	$99, -24(%rbp)
.L2246:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2244:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2247
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2248
	movq	$999, -32(%rbp)
.L2248:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2249
	movq	$99, -32(%rbp)
.L2249:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2247:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2250
.L2252:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2251
	movl	$1, -40(%rbp)
.L2251:
	addl	$1, -36(%rbp)
.L2250:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2252
	cmpl	$0, -40(%rbp)
	jne	.L2253
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2253
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2253:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	yn, .-yn
	.section	.rodata
.LC83:
	.string	"ynl"
	.text
.globl ynl
	.type	ynl, @function
ynl:
.LFB124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	movl	%edi, -84(%rbp)
	movl	$.LC83, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movl	-84(%rbp), %ecx
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	movl	%ecx, %edi
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2255
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2255
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2255:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2256
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2257
.L2256:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2257:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2258
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2258:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2259
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2260
.L2259:
	movq	r(%rip), %rax
.L2260:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2261
	cmpq	$999, -24(%rbp)
	jbe	.L2262
	movq	$999, -24(%rbp)
.L2262:
	movq	-24(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2263
	movq	$99, -24(%rbp)
.L2263:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2261:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2264
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2265
	movq	$999, -32(%rbp)
.L2265:
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-120(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2266
	movq	$99, -32(%rbp)
.L2266:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2264:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2267
.L2269:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2268
	movl	$1, -40(%rbp)
.L2268:
	addl	$1, -36(%rbp)
.L2267:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2269
	cmpl	$0, -40(%rbp)
	jne	.L2270
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2270
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2270:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -112(%rbp)
	movl	%edx, -104(%rbp)
	fldt	-112(%rbp)
	addq	$136, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	ynl, .-ynl
	.section	.rodata
.LC84:
	.string	"ynf"
	.text
.globl ynf
	.type	ynf, @function
ynf:
.LFB125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, -68(%rbp)
	movss	%xmm0, -72(%rbp)
	movl	$.LC84, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+165256(%rip)
	movss	-72(%rbp), %xmm0
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
	movss	%xmm0, -52(%rbp)
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2272
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2272
	movq	prof+165256(%rip), %rdx
	movq	prof+165264(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$20526, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$20526, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2272:
	call	rdtsc
	movq	%rax, prof+165264(%rip)
	movq	b_bessel(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2273
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2274
.L2273:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2274:
	leaq	20590(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20590, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+165240(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165240(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2275
	movq	prof+159408(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159408(%rip)
.L2275:
	movq	b_bessel(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2276
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2277
.L2276:
	movq	r(%rip), %rax
.L2277:
	movq	%rax, -24(%rbp)
	movq	prof+165264(%rip), %rdx
	movq	prof+165256(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2278
	cmpq	$999, -24(%rbp)
	jbe	.L2279
	movq	$999, -24(%rbp)
.L2279:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20026(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20026, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20226(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+165264(%rip), %rbx
	movq	prof+165256(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$20226, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2280
	movq	$99, -24(%rbp)
.L2280:
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19926, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+165264(%rip), %rcx
	movq	prof+165256(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$20126, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2278:
	movq	b_bessel(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2281
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2282
	movq	$999, -32(%rbp)
.L2282:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	20426(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$20426, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2283
	movq	$99, -32(%rbp)
.L2283:
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$20326, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2281:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2284
.L2286:
	movl	-36(%rbp), %eax
	cltq
	addq	$2700, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2285
	movl	$1, -40(%rbp)
.L2285:
	addl	$1, -36(%rbp)
.L2284:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+165304(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2286
	cmpl	$0, -40(%rbp)
	jne	.L2287
	movq	prof+165304(%rip), %rax
	cmpq	$99, %rax
	ja	.L2287
	movq	prof+165304(%rip), %rax
	leaq	2700(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+165304(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+165304(%rip)
.L2287:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	ynf, .-ynf
	.section	.rodata
.LC85:
	.string	"erf"
	.text
.globl erf
	.type	erf, @function
erf:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC85, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2289
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2289
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2289:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2290
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2291
.L2290:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2291:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2292
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2292:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2293
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2294
.L2293:
	movq	r(%rip), %rax
.L2294:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2295
	cmpq	$999, -24(%rbp)
	jbe	.L2296
	movq	$999, -24(%rbp)
.L2296:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2297
	movq	$99, -24(%rbp)
.L2297:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2295:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2298
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2299
	movq	$999, -32(%rbp)
.L2299:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2300
	movq	$99, -32(%rbp)
.L2300:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2298:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2301
.L2303:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2302
	movl	$1, -40(%rbp)
.L2302:
	addl	$1, -36(%rbp)
.L2301:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2303
	cmpl	$0, -40(%rbp)
	jne	.L2304
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2304
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2304:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	erf, .-erf
	.section	.rodata
.LC86:
	.string	"erfl"
	.text
.globl erfl
	.type	erfl, @function
erfl:
.LFB127:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC86, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2306
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2306
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2306:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2307
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2308
.L2307:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2308:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2309
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2309:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2310
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2311
.L2310:
	movq	r(%rip), %rax
.L2311:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2312
	cmpq	$999, -24(%rbp)
	jbe	.L2313
	movq	$999, -24(%rbp)
.L2313:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2314
	movq	$99, -24(%rbp)
.L2314:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2312:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2315
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2316
	movq	$999, -32(%rbp)
.L2316:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2317
	movq	$99, -32(%rbp)
.L2317:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2315:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2318
.L2320:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2319
	movl	$1, -40(%rbp)
.L2319:
	addl	$1, -36(%rbp)
.L2318:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2320
	cmpl	$0, -40(%rbp)
	jne	.L2321
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2321
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2321:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	erfl, .-erfl
	.section	.rodata
.LC87:
	.string	"erff"
	.text
.globl erff
	.type	erff, @function
erff:
.LFB128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC87, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2323
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2323
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2323:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2324
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2325
.L2324:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2325:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2326
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2326:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2327
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2328
.L2327:
	movq	r(%rip), %rax
.L2328:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2329
	cmpq	$999, -24(%rbp)
	jbe	.L2330
	movq	$999, -24(%rbp)
.L2330:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2331
	movq	$99, -24(%rbp)
.L2331:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2329:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2332
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2333
	movq	$999, -32(%rbp)
.L2333:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2334
	movq	$99, -32(%rbp)
.L2334:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2332:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2335
.L2337:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2336
	movl	$1, -40(%rbp)
.L2336:
	addl	$1, -36(%rbp)
.L2335:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2337
	cmpl	$0, -40(%rbp)
	jne	.L2338
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2338
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2338:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	erff, .-erff
	.section	.rodata
.LC88:
	.string	"erfc"
	.text
.globl erfc
	.type	erfc, @function
erfc:
.LFB129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC88, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2340
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2340
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2340:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2341
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2342
.L2341:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2342:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2343
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2343:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2344
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2345
.L2344:
	movq	r(%rip), %rax
.L2345:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2346
	cmpq	$999, -24(%rbp)
	jbe	.L2347
	movq	$999, -24(%rbp)
.L2347:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2348
	movq	$99, -24(%rbp)
.L2348:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2346:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2349
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2350
	movq	$999, -32(%rbp)
.L2350:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2351
	movq	$99, -32(%rbp)
.L2351:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2349:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2352
.L2354:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2353
	movl	$1, -40(%rbp)
.L2353:
	addl	$1, -36(%rbp)
.L2352:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2354
	cmpl	$0, -40(%rbp)
	jne	.L2355
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2355
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2355:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	erfc, .-erfc
	.section	.rodata
.LC89:
	.string	"erfcl"
	.text
.globl erfcl
	.type	erfcl, @function
erfcl:
.LFB130:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC89, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2357
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2357
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2357:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2358
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2359
.L2358:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2359:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2360
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2360:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2361
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2362
.L2361:
	movq	r(%rip), %rax
.L2362:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2363
	cmpq	$999, -24(%rbp)
	jbe	.L2364
	movq	$999, -24(%rbp)
.L2364:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2365
	movq	$99, -24(%rbp)
.L2365:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2363:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2366
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2367
	movq	$999, -32(%rbp)
.L2367:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2368
	movq	$99, -32(%rbp)
.L2368:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2366:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2369
.L2371:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2370
	movl	$1, -40(%rbp)
.L2370:
	addl	$1, -36(%rbp)
.L2369:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2371
	cmpl	$0, -40(%rbp)
	jne	.L2372
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2372
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2372:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	erfcl, .-erfcl
	.section	.rodata
.LC90:
	.string	"erfcf"
	.text
.globl erfcf
	.type	erfcf, @function
erfcf:
.LFB131:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC90, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2374
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2374
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2374:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2375
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2376
.L2375:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2376:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2377
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2377:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2378
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2379
.L2378:
	movq	r(%rip), %rax
.L2379:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2380
	cmpq	$999, -24(%rbp)
	jbe	.L2381
	movq	$999, -24(%rbp)
.L2381:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2382
	movq	$99, -24(%rbp)
.L2382:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2380:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2383
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2384
	movq	$999, -32(%rbp)
.L2384:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2385
	movq	$99, -32(%rbp)
.L2385:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2383:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2386
.L2388:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2387
	movl	$1, -40(%rbp)
.L2387:
	addl	$1, -36(%rbp)
.L2386:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2388
	cmpl	$0, -40(%rbp)
	jne	.L2389
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2389
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2389:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	erfcf, .-erfcf
	.section	.rodata
.LC91:
	.string	"lgamma"
	.text
.globl lgamma
	.type	lgamma, @function
lgamma:
.LFB132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC91, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2391
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2391
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2391:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2392
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2393
.L2392:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2393:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2394
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2394:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2395
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2396
.L2395:
	movq	r(%rip), %rax
.L2396:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2397
	cmpq	$999, -24(%rbp)
	jbe	.L2398
	movq	$999, -24(%rbp)
.L2398:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2399
	movq	$99, -24(%rbp)
.L2399:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2397:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2400
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2401
	movq	$999, -32(%rbp)
.L2401:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2402
	movq	$99, -32(%rbp)
.L2402:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2400:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2403
.L2405:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2404
	movl	$1, -40(%rbp)
.L2404:
	addl	$1, -36(%rbp)
.L2403:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2405
	cmpl	$0, -40(%rbp)
	jne	.L2406
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2406
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2406:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	lgamma, .-lgamma
	.section	.rodata
.LC92:
	.string	"lgammal"
	.text
.globl lgammal
	.type	lgammal, @function
lgammal:
.LFB133:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC92, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2408
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2408
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2408:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2409
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2410
.L2409:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2410:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2411
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2411:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2412
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2413
.L2412:
	movq	r(%rip), %rax
.L2413:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2414
	cmpq	$999, -24(%rbp)
	jbe	.L2415
	movq	$999, -24(%rbp)
.L2415:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2416
	movq	$99, -24(%rbp)
.L2416:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2414:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2417
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2418
	movq	$999, -32(%rbp)
.L2418:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2419
	movq	$99, -32(%rbp)
.L2419:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2417:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2420
.L2422:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2421
	movl	$1, -40(%rbp)
.L2421:
	addl	$1, -36(%rbp)
.L2420:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2422
	cmpl	$0, -40(%rbp)
	jne	.L2423
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2423
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2423:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	lgammal, .-lgammal
	.section	.rodata
.LC93:
	.string	"lgammaf"
	.text
.globl lgammaf
	.type	lgammaf, @function
lgammaf:
.LFB134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC93, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2425
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2425
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2425:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2426
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2427
.L2426:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2427:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2428
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2428:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2429
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2430
.L2429:
	movq	r(%rip), %rax
.L2430:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2431
	cmpq	$999, -24(%rbp)
	jbe	.L2432
	movq	$999, -24(%rbp)
.L2432:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2433
	movq	$99, -24(%rbp)
.L2433:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2431:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2434
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2435
	movq	$999, -32(%rbp)
.L2435:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2436
	movq	$99, -32(%rbp)
.L2436:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2434:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2437
.L2439:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2438
	movl	$1, -40(%rbp)
.L2438:
	addl	$1, -36(%rbp)
.L2437:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2439
	cmpl	$0, -40(%rbp)
	jne	.L2440
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2440
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2440:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	lgammaf, .-lgammaf
	.section	.rodata
.LC94:
	.string	"tgamma"
	.text
.globl tgamma
	.type	tgamma, @function
tgamma:
.LFB135:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movsd	%xmm0, -72(%rbp)
	movl	$.LC94, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movsd	-72(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movsd	%xmm0, -56(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2442
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2442
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2442:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2443
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2444
.L2443:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2444:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2445
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2445:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2446
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2447
.L2446:
	movq	r(%rip), %rax
.L2447:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2448
	cmpq	$999, -24(%rbp)
	jbe	.L2449
	movq	$999, -24(%rbp)
.L2449:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2450
	movq	$99, -24(%rbp)
.L2450:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2448:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2451
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2452
	movq	$999, -32(%rbp)
.L2452:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2453
	movq	$99, -32(%rbp)
.L2453:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2451:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2454
.L2456:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2455
	movl	$1, -40(%rbp)
.L2455:
	addl	$1, -36(%rbp)
.L2454:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2456
	cmpl	$0, -40(%rbp)
	jne	.L2457
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2457
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2457:
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	tgamma, .-tgamma
	.section	.rodata
.LC95:
	.string	"tgammal"
	.text
.globl tgammal
	.type	tgammal, @function
tgammal:
.LFB136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	movl	$.LC95, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, (%rsp)
	movl	%edx, 8(%rsp)
	movq	-48(%rbp), %rax
	call	*%rax
	fstpt	-64(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2459
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2459
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2459:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2460
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2461
.L2460:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2461:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2462
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2462:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2463
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2464
.L2463:
	movq	r(%rip), %rax
.L2464:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2465
	cmpq	$999, -24(%rbp)
	jbe	.L2466
	movq	$999, -24(%rbp)
.L2466:
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2467
	movq	$99, -24(%rbp)
.L2467:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2465:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2468
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2469
	movq	$999, -32(%rbp)
.L2469:
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-104(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2470
	movq	$99, -32(%rbp)
.L2470:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2468:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2471
.L2473:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-72(%rbp), %rax
	jne	.L2472
	movl	$1, -40(%rbp)
.L2472:
	addl	$1, -36(%rbp)
.L2471:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2473
	cmpl	$0, -40(%rbp)
	jne	.L2474
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2474
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2474:
	movq	-64(%rbp), %rax
	movl	-56(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -88(%rbp)
	fldt	-96(%rbp)
	addq	$120, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	tgammal, .-tgammal
	.section	.rodata
.LC96:
	.string	"tgammaf"
	.text
.globl tgammaf
	.type	tgammaf, @function
tgammaf:
.LFB137:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	movss	%xmm0, -68(%rbp)
	movl	$.LC96, %edx
	movq	libm_handle(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	dlsym
	movq	%rax, -48(%rbp)
	call	rdtsc
	movq	%rax, prof+159352(%rip)
	movss	-68(%rbp), %xmm0
	movq	-48(%rbp), %rax
	call	*%rax
	movss	%xmm0, -52(%rbp)
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	cmpq	%rax, %rdx
	je	.L2476
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	subq	%rax, %rdx
	movabsq	$-2147483649, %rax
	cmpq	%rax, %rdx
	ja	.L2476
	movq	prof+159352(%rip), %rdx
	movq	prof+159360(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	$63, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movslq	%eax, %rdx
	addq	$19788, %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	addq	$19788, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2476:
	call	rdtsc
	movq	%rax, prof+159360(%rip)
	movq	b_erf(%rip), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L2477
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	y(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	jmp	.L2478
.L2477:
	movq	x(%rip), %rax
	andl	$63, %eax
.L2478:
	leaq	19852(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19852, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	prof+159336(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159336(%rip)
	movq	r(%rip), %rax
	cmpq	$16, %rax
	ja	.L2479
	movq	prof+153504(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+153504(%rip)
.L2479:
	movq	b_erf(%rip), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L2480
	movq	x(%rip), %rax
	movq	%rax, %rdx
	movq	r(%rip), %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movq	x(%rip), %rax
	shrq	$4, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	jmp	.L2481
.L2480:
	movq	r(%rip), %rax
.L2481:
	movq	%rax, -24(%rbp)
	movq	prof+159360(%rip), %rdx
	movq	prof+159352(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	cmpq	$1999999, %rax
	ja	.L2482
	cmpq	$999, -24(%rbp)
	jbe	.L2483
	movq	$999, -24(%rbp)
.L2483:
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19288(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19288, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19488(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	movq	prof+159360(%rip), %rbx
	movq	prof+159352(%rip), %rcx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rdx
	addq	$19488, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -24(%rbp)
	jbe	.L2484
	movq	$99, -24(%rbp)
.L2484:
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$19188, %rax
	movq	%rdx, prof+8(,%rax,8)
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	prof+8(,%rax,8), %rax
	movq	prof+159360(%rip), %rcx
	movq	prof+159352(%rip), %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	-24(%rbp), %rax
	addq	$19388, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2482:
	movq	b_erf(%rip), %rax
	andl	$1, %eax
	testb	%al, %al
	je	.L2485
	movq	y(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	cmpq	$999, -32(%rbp)
	jbe	.L2486
	movq	$999, -32(%rbp)
.L2486:
	movq	-32(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movabsq	$-3689348814741910323, %rdx
	movq	-96(%rbp), %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	19688(%rax), %rdx
	movq	prof+8(,%rdx,8), %rdx
	addq	$1, %rdx
	addq	$19688, %rax
	movq	%rdx, prof+8(,%rax,8)
	cmpq	$99, -32(%rbp)
	jbe	.L2487
	movq	$99, -32(%rbp)
.L2487:
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	prof+8(,%rax,8), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$19588, %rax
	movq	%rdx, prof+8(,%rax,8)
.L2485:
	movl	$0, -40(%rbp)
	movl	$0, %eax
	call	backtrace2
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2488
.L2490:
	movl	-36(%rbp), %eax
	cltq
	addq	$2600, %rax
	movq	call_sites(,%rax,8), %rax
	cmpq	-64(%rbp), %rax
	jne	.L2489
	movl	$1, -40(%rbp)
.L2489:
	addl	$1, -36(%rbp)
.L2488:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	prof+159400(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L2490
	cmpl	$0, -40(%rbp)
	jne	.L2491
	movq	prof+159400(%rip), %rax
	cmpq	$99, %rax
	ja	.L2491
	movq	prof+159400(%rip), %rax
	leaq	2600(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, call_sites(,%rdx,8)
	movq	prof+159400(%rip), %rax
	addq	$1, %rax
	movq	%rax, prof+159400(%rip)
.L2491:
	movl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	addq	$88, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	tgammaf, .-tgammaf
	.section	.rodata
	.type	next_state.4863, @object
	.size	next_state.4863, 12
next_state.4863:
	.byte	0
	.byte	3
	.byte	9
	.byte	0
	.byte	3
	.byte	3
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.byte	6
	.byte	9
	.align 32
	.type	result_type.4864, @object
	.size	result_type.4864, 36
result_type.4864:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	-1
	.byte	-1
	.byte	1
	.byte	3
	.byte	3
	.byte	1
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	-1
	.byte	2
	.byte	2
	.byte	-1
	.byte	2
	.byte	2
	.ident	"GCC: (Debian 4.5.3-12) 4.5.3"
	.section	.note.GNU-stack,"",@progbits
