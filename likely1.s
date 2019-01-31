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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$0, -4(%rbp)
	callq	_time
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	LBB0_2
## BB#1:
	leaq	L_.str(%rip), %rdi
	callq	_puts
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB0_2:
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"a"


.subsections_via_symbols
