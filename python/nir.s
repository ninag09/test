	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	L_.str(%rip), %rdi
	leaq	-112(%rbp), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.1(%rip), %rdi
	leaq	-112(%rbp), %rsi
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	cmpq	-8(%rbp), %rsi
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	jne	LBB0_2
## BB#1:
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s"

L_.str.1:                               ## @.str.1
	.asciz	"%s\n"


.subsections_via_symbols
