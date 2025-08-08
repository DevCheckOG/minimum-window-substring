	.file	"minimum-window-substring.c"
	.text
	.globl	minWindow
	.p2align	4
	.type	minWindow,@function
minWindow:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1120, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1056(%rbp)
	movq	%rsi, -1064(%rbp)
	movq	-1056(%rbp), %rdi
	callq	strlen@PLT

	movl	%eax, -1068(%rbp)
	movq	-1064(%rbp), %rdi
	callq	strlen@PLT

	movl	%eax, -1072(%rbp)
	leaq	-528(%rbp), %rdi
	xorl	%esi, %esi
	movl	$512, %edx
	callq	memset@PLT
	leaq	-1040(%rbp), %rdi
	xorl	%esi, %esi
	movl	$512, %edx
	callq	memset@PLT
	movl	$0, -1076(%rbp)
	movl	-1068(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1080(%rbp)
	movl	$0, -1084(%rbp)
	movl	$0, -1088(%rbp)
	movl	$0, -1092(%rbp)
.LBB0_1:
	movl	-1092(%rbp), %eax
	cmpl	-1072(%rbp), %eax
	jge	.LBB0_4
# %bb.2:
	movq	-1064(%rbp), %rax
	movslq	-1092(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -1040(%rbp,%rax,4)
	movl	-1076(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1076(%rbp)
# %bb.3:
	movl	-1092(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1092(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -1096(%rbp)
	movl	$0, -1100(%rbp)
.LBB0_5:

	movl	-1100(%rbp), %eax
	cmpl	-1068(%rbp), %eax
	jge	.LBB0_20
# %bb.6:
	movq	-1056(%rbp), %rax
	movslq	-1100(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	cmpl	$0, -1040(%rbp,%rax,4)
	jle	.LBB0_10
# %bb.7:
	movq	-1056(%rbp), %rax
	movslq	-1100(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	movl	-528(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -528(%rbp,%rax,4)
	movq	-1056(%rbp), %rax
	movslq	-1100(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	movl	-528(%rbp,%rax,4), %eax
	movq	-1056(%rbp), %rcx
	movslq	-1100(%rbp), %rdx
	movsbq	(%rcx,%rdx), %rcx
	cmpl	-1040(%rbp,%rcx,4), %eax
	jg	.LBB0_9
# %bb.8:
	movl	-1076(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1076(%rbp)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movl	-1100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1100(%rbp)
.LBB0_11:

	cmpl	$0, -1076(%rbp)
	jne	.LBB0_19
# %bb.12:
	movl	-1100(%rbp), %eax
	subl	-1096(%rbp), %eax
	cmpl	-1080(%rbp), %eax
	jge	.LBB0_14
# %bb.13:
	movl	-1100(%rbp), %eax
	subl	-1096(%rbp), %eax
	movl	%eax, -1080(%rbp)
	movl	-1096(%rbp), %eax
	movl	%eax, -1088(%rbp)
.LBB0_14:
	movq	-1056(%rbp), %rax
	movslq	-1096(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	cmpl	$0, -1040(%rbp,%rax,4)
	jle	.LBB0_18
# %bb.15:
	movq	-1056(%rbp), %rax
	movslq	-1096(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	movl	-528(%rbp,%rax,4), %ecx
	addl	$-1, %ecx
	movl	%ecx, -528(%rbp,%rax,4)
	movq	-1056(%rbp), %rax
	movslq	-1096(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	movl	-528(%rbp,%rax,4), %eax
	movq	-1056(%rbp), %rcx
	movslq	-1096(%rbp), %rdx
	movsbq	(%rcx,%rdx), %rcx
	cmpl	-1040(%rbp,%rcx,4), %eax
	jge	.LBB0_17
# %bb.16:
	movl	-1076(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1076(%rbp)
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movl	-1096(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1096(%rbp)
	jmp	.LBB0_11
.LBB0_19:
	jmp	.LBB0_5
.LBB0_20:
	movl	-1080(%rbp), %eax
	movl	-1068(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_22
# %bb.21:
	leaq	.L.str(%rip), %rax
	movq	%rax, -1048(%rbp)
	jmp	.LBB0_23
.LBB0_22:
	movl	-1080(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$0, %rdi
	callq	malloc@PLT
	movq	%rax, -1112(%rbp)
	movq	-1112(%rbp), %rdi
	movq	-1056(%rbp), %rsi
	movslq	-1088(%rbp), %rax
	addq	%rax, %rsi
	movslq	-1080(%rbp), %rdx
	callq	strncpy@PLT
	movq	-1112(%rbp), %rax
	movslq	-1080(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-1112(%rbp), %rax
	movq	%rax, -1048(%rbp)
.LBB0_23:
	movq	-1048(%rbp), %rax
	movq	%rax, -1120(%rbp)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_25
# %bb.24:
	movq	-1120(%rbp), %rax
	addq	$1120, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_25:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end0:
	.size	minWindow, .Lfunc_end0-minWindow
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	main.s(%rip), %rdi
	leaq	main.t(%rip), %rsi
	callq	minWindow
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-16(%rbp), %rdi
	callq	free@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	main.s,@object
	.data
main.s:
	.asciz	"ADOBECODEBANC"
	.size	main.s, 14

	.type	main.t,@object
main.t:
	.asciz	"ABC"
	.size	main.t, 4

	.type	.L.str.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym minWindow
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym strncpy
	.addrsig_sym printf
	.addrsig_sym free
	.addrsig_sym __stack_chk_fail
	.addrsig_sym main.s
	.addrsig_sym main.t
