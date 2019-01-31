	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_check
	.align	4, 0x90
_check:                                 ## @check
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
	xorl	%edi, %edi
	callq	_time
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	callq	_time
	testq	%rax, %rax
	jne	LBB1_1
## BB#2:
	leaq	L_.str.1(%rip), %rdi
LBB1_3:
	callq	_puts
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB1_1:
	leaq	L_.str(%rip), %rdi
	jmp	LBB1_3
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"a"

L_.str.1:                               ## @.str.1
	.asciz	"b"


.subsections_via_symbols
