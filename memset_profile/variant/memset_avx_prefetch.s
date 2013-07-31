# 1 "memset_avx3.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "memset_avx3.S"
# 1 "sysdep.h" 1
# 2 "memset_avx3.S" 2
.text ;.globl memset_avx; .type memset_avx, @function;memset_avx:; .cfi_startproc
 vpxor %xmm0, %xmm0, %xmm0
 vmovd %esi, %xmm1
 lea (%rdi, %rdx), %r8
 vpshufb %xmm0, %xmm1, %xmm0
 mov %rdi, %rax
 cmp $256, %rdx
 jae .L256bytesormore
 xor %ecx, %ecx
 mov %sil, %cl
 mov %cl, %ch
 cmp $128, %rdx
 jb .Lless_128bytes
 vmovups %xmm0, (%rdi)
 vmovups %xmm0, 0x10(%rdi)
 vmovups %xmm0, 0x20(%rdi)
 vmovups %xmm0, 0x30(%rdi)
 vmovups %xmm0, 0x40(%rdi)
 vmovups %xmm0, 0x50(%rdi)
 vmovups %xmm0, 0x60(%rdi)
 vmovups %xmm0, 0x70(%rdi)
 vmovups %xmm0, -0x80(%r8)
 vmovups %xmm0, -0x70(%r8)
 vmovups %xmm0, -0x60(%r8)
 vmovups %xmm0, -0x50(%r8)
 vmovups %xmm0, -0x40(%r8)
 vmovups %xmm0, -0x30(%r8)
 vmovups %xmm0, -0x20(%r8)
 vmovups %xmm0, -0x10(%r8)
 ret
 .p2align 4
.Lless_128bytes:
 xor %esi, %esi
 mov %ecx, %esi
 shl $16, %ecx
 cmp $64, %edx
 jb .Lless_64bytes
 vmovups %xmm0, (%rdi)
 vmovups %xmm0, 0x10(%rdi)
 vmovups %xmm0, 0x20(%rdi)
 vmovups %xmm0, 0x30(%rdi)
 vmovups %xmm0, -0x40(%r8)
 vmovups %xmm0, -0x30(%r8)
 vmovups %xmm0, -0x20(%r8)
 vmovups %xmm0, -0x10(%r8)
 ret
 .p2align 4
.Lless_64bytes:
 orl %esi, %ecx
 mov %ecx, %esi
 cmp $32, %edx
 jb .Lless_32bytes
 vmovups %xmm0, (%rdi)
 vmovups %xmm0, 0x10(%rdi)
 vmovups %xmm0, -0x20(%r8)
 vmovups %xmm0, -0x10(%r8)
 ret
 .p2align 4
.Lless_32bytes:
 shl $32, %rcx
 cmp $16, %edx
 jb .Lless_16bytes
 vmovups %xmm0, (%rdi)
 vmovups %xmm0, -0x10(%r8)
 ret
 .p2align 4
.Lless_16bytes:
 or %rsi, %rcx
 cmp $8, %edx
 jb .Lless_8bytes
 mov %rcx, (%rdi)
 mov %rcx, -0x08(%r8)
 ret
 .p2align 4
.Lless_8bytes:
 cmp $4, %edx
 jb .Lless_4bytes
 mov %ecx, (%rdi)
 mov %ecx, -0x04(%r8)
 .p2align 4
.Lless_4bytes:
 cmp $2, %edx
 jb .Lless_2bytes
 mov %cx, (%rdi)
 mov %cx, -0x02(%r8)
 ret
 .p2align 4
.Lless_2bytes:
 cmp $1, %edx
 jb .Lless_1bytes
 mov %cl, (%rdi)
.Lless_1bytes:
 ret

 .p2align 4
.L256bytesormore:
 vinsertf128 $1, %xmm0, %ymm0, %ymm0
 vmovups %ymm0, (%rdi)
 mov %rdi, %r9
 and $-0x20, %rdi
 add $32, %rdi
 sub %rdi, %r9
 add %r9, %rdx
 cmp $4096, %rdx
 ja .Lgobble_data

 sub $0x80, %rdx
.Lgobble_128_loop:
 prefetcht0 0x1c0(%rdi)
 vmovaps %ymm0, (%rdi)
 prefetcht0 0x280(%rdi)
 vmovaps %ymm0, 0x20(%rdi)
 vmovaps %ymm0, 0x40(%rdi)
 vmovaps %ymm0, 0x60(%rdi)
 lea 0x80(%rdi), %rdi
 sub $0x80, %rdx
 jae .Lgobble_128_loop
 vmovups %ymm0, -0x80(%r8)
 vmovups %ymm0, -0x60(%r8)
 vmovups %ymm0, -0x40(%r8)
 vmovups %ymm0, -0x20(%r8)
 vzeroupper
 ret

 .p2align 4
.Lgobble_data:



 mov $2560000, %r9

 shl $4, %r9
 cmp %r9, %rdx
 ja .Lgobble_big_data
 mov %rax, %r9
 mov %esi, %eax
 mov %rdx, %rcx
 rep stosb
 mov %r9, %rax
 vzeroupper
 ret

 .p2align 4
.Lgobble_big_data:
 sub $0x80, %rdx
.Lgobble_big_data_loop:
 vmovntdq %ymm0, (%rdi)
 vmovntdq %ymm0, 0x20(%rdi)
 vmovntdq %ymm0, 0x40(%rdi)
 vmovntdq %ymm0, 0x60(%rdi)
 lea 0x80(%rdi), %rdi
 sub $0x80, %rdx
 jae .Lgobble_big_data_loop
 vmovups %ymm0, -0x80(%r8)
 vmovups %ymm0, -0x60(%r8)
 vmovups %ymm0, -0x40(%r8)
 vmovups %ymm0, -0x20(%r8)
 vzeroupper
 sfence
 ret

.cfi_endproc ; .size memset_avx, .-memset_avx
