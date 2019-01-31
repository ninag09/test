	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	__Z8toStringiiii        ## -- Begin function _Z8toStringiiii
	.p2align	4, 0x90
__Z8toStringiiii:                       ## @_Z8toStringiiii
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1288, %rsp             ## imm = 0x508
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rax
	xorl	%r9d, %r9d
	movl	$24, %r10d
	movl	%r10d, %r11d
	movl	%esi, -804(%rbp)
	movl	%edx, -808(%rbp)
	movl	%ecx, -812(%rbp)
	movl	%r8d, -816(%rbp)
	movb	$0, -817(%rbp)
	movq	%rdi, -800(%rbp)
	movq	-800(%rbp), %rbx
	movq	%rbx, -792(%rbp)
	movq	-792(%rbp), %rbx
	movq	%rbx, -784(%rbp)
	movq	-784(%rbp), %r14
	movq	%r14, -776(%rbp)
	movq	-776(%rbp), %r14
	movq	%r14, %r15
	movq	%r15, -768(%rbp)
	movq	-768(%rbp), %r15
	movq	%rdi, -1152(%rbp)       ## 8-byte Spill
	movq	%r15, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movq	%rax, -1160(%rbp)       ## 8-byte Spill
	movq	%rbx, -1168(%rbp)       ## 8-byte Spill
	movq	%r14, -1176(%rbp)       ## 8-byte Spill
	callq	_memset
	movq	-1176(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	-1168(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rdx
	movq	%rdx, -720(%rbp)
	movq	-720(%rbp), %rdx
	movq	%rdx, -712(%rbp)
	movq	-712(%rbp), %rdx
	movq	%rdx, -736(%rbp)
	movl	$0, -740(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$3, -740(%rbp)
	jae	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-736(%rbp), %rax
	movl	-740(%rbp), %ecx
	movl	%ecx, %edx
	movq	$0, (%rax,%rdx,8)
	movl	-740(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -740(%rbp)
	jmp	LBB0_1
LBB0_3:
	leaq	-1104(%rbp), %rax
	movq	%rax, -680(%rbp)
	movl	$24, -684(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, %rcx
	subq	$-128, %rcx
	movq	%rcx, -672(%rbp)
	movq	-672(%rbp), %rcx
	movq	%rcx, -664(%rbp)
	movq	-664(%rbp), %rdx
	movq	__ZTVNSt3__18ios_baseE@GOTPCREL(%rip), %rsi
	addq	$16, %rsi
	movq	%rsi, (%rdx)
	movq	__ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rdx
	addq	$16, %rdx
	movq	%rdx, (%rcx)
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdx
	addq	$24, %rdx
	movq	%rdx, (%rax)
	movq	%rcx, %rdx
	addq	$104, %rdx
	movq	%rdx, 128(%rax)
	addq	$64, %rcx
	movq	%rcx, 16(%rax)
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	%rax, -496(%rbp)
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rdx
	addq	$8, %rdx
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movq	-496(%rbp), %rcx
	movq	-504(%rbp), %rdx
	movq	-512(%rbp), %rsi
	movq	%rdx, %rdi
	addq	$8, %rdi
	movq	%rcx, -472(%rbp)
	movq	%rdi, -480(%rbp)
	movq	%rsi, -488(%rbp)
	movq	-472(%rbp), %rsi
	movq	-480(%rbp), %rdi
	movq	(%rdi), %r8
	movq	%r8, (%rsi)
	movq	8(%rdi), %rdi
	movq	(%rsi), %r8
	movq	-24(%r8), %r8
	movq	%rdi, (%rsi,%r8)
	movq	$0, 8(%rsi)
	movq	(%rsi), %rdi
	movq	-24(%rdi), %rdi
	addq	%rdi, %rsi
	movq	-488(%rbp), %rdi
	movq	%rsi, -456(%rbp)
	movq	%rdi, -464(%rbp)
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rdi
Ltmp0:
	movq	%rdi, -1184(%rbp)       ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-1184(%rbp), %r8        ## 8-byte Reload
	movq	%rsi, -1192(%rbp)       ## 8-byte Spill
	movq	%r8, %rsi
	movq	%rax, -1200(%rbp)       ## 8-byte Spill
	movq	%rcx, -1208(%rbp)       ## 8-byte Spill
	movq	%rdx, -1216(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__18ios_base4initEPv
Ltmp1:
	jmp	LBB0_4
LBB0_4:
	movq	-1192(%rbp), %rax       ## 8-byte Reload
	movq	$0, 136(%rax)
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	-1192(%rbp), %rcx       ## 8-byte Reload
	movl	%eax, 144(%rcx)
	movq	-1208(%rbp), %rdx       ## 8-byte Reload
	addq	$16, %rdx
	movq	-1216(%rbp), %rsi       ## 8-byte Reload
	addq	$24, %rsi
	movq	%rdx, -440(%rbp)
	movq	%rsi, -448(%rbp)
	movq	-440(%rbp), %rdx
	movq	-448(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rdx)
	movq	8(%rsi), %rsi
	movq	(%rdx), %rdi
	movq	-24(%rdi), %rdi
	movq	%rsi, (%rdx,%rdi)
	movq	-1216(%rbp), %rdx       ## 8-byte Reload
	movq	(%rdx), %rsi
	movq	-1208(%rbp), %rdi       ## 8-byte Reload
	movq	%rsi, (%rdi)
	movq	40(%rdx), %rsi
	movq	(%rdi), %r8
	movq	-24(%r8), %r8
	movq	%rsi, (%rdi,%r8)
	movq	48(%rdx), %rsi
	movq	%rsi, 16(%rdi)
	movq	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	movq	%rsi, %r8
	addq	$24, %r8
	movq	-1200(%rbp), %r9        ## 8-byte Reload
	movq	%r8, (%r9)
	movq	%rsi, %r8
	addq	$104, %r8
	movq	%r8, 128(%r9)
	addq	$64, %rsi
	movq	%rsi, 16(%r9)
	addq	$24, %r9
	movl	-684(%rbp), %eax
	movq	%r9, -648(%rbp)
	movl	%eax, -652(%rbp)
	movq	-648(%rbp), %rsi
	movl	-652(%rbp), %eax
	movq	%rsi, -632(%rbp)
	movl	%eax, -636(%rbp)
	movq	-632(%rbp), %rsi
Ltmp3:
	movq	%rsi, %rdi
	movq	%rsi, -1224(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp4:
	jmp	LBB0_5
LBB0_5:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	-1224(%rbp), %rdi       ## 8-byte Reload
	movq	%rcx, (%rdi)
	addq	$64, %rdi
	movq	%rdi, -624(%rbp)
	movq	-624(%rbp), %rcx
	movq	%rcx, -616(%rbp)
	movq	-616(%rbp), %rcx
	movq	%rcx, -608(%rbp)
	movq	-608(%rbp), %rdi
	movq	%rdi, -600(%rbp)
	movq	-600(%rbp), %rdi
	movq	%rdi, %r8
	movq	%r8, -592(%rbp)
	movq	-592(%rbp), %r8
	movq	%rdi, -1232(%rbp)       ## 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -1240(%rbp)       ## 8-byte Spill
	callq	_memset
	movq	-1232(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -584(%rbp)
	movq	-584(%rbp), %rcx
	movq	%rcx, -576(%rbp)
	movq	-1240(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -552(%rbp)
	movq	-552(%rbp), %rdx
	movq	%rdx, -544(%rbp)
	movq	-544(%rbp), %rdx
	movq	%rdx, -536(%rbp)
	movq	-536(%rbp), %rdx
	movq	%rdx, -560(%rbp)
	movl	$0, -564(%rbp)
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$3, -564(%rbp)
	jae	LBB0_11
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	movq	-560(%rbp), %rax
	movl	-564(%rbp), %ecx
	movl	%ecx, %edx
	movq	$0, (%rax,%rdx,8)
	movl	-564(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -564(%rbp)
	jmp	LBB0_6
LBB0_8:
Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -696(%rbp)
	movl	%ecx, -700(%rbp)
	jmp	LBB0_10
LBB0_9:
Ltmp5:
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rcx
	addq	$8, %rcx
	movl	%edx, %esi
	movq	%rax, -696(%rbp)
	movl	%esi, -700(%rbp)
	movq	-1200(%rbp), %rax       ## 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
LBB0_10:
	movq	-1200(%rbp), %rax       ## 8-byte Reload
	subq	$-128, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	-696(%rbp), %rax
	movl	-700(%rbp), %ecx
	movq	%rax, -1248(%rbp)       ## 8-byte Spill
	movl	%ecx, -1252(%rbp)       ## 4-byte Spill
	jmp	LBB0_27
LBB0_11:
	movq	-1224(%rbp), %rax       ## 8-byte Reload
	movq	$0, 88(%rax)
	movl	-636(%rbp), %ecx
	movl	%ecx, 96(%rax)
## %bb.12:
	leaq	-1088(%rbp), %rdi
	movl	-804(%rbp), %esi
Ltmp6:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp7:
	movq	%rax, -1264(%rbp)       ## 8-byte Spill
	jmp	LBB0_13
LBB0_13:
	leaq	-1088(%rbp), %rdi
	movl	-808(%rbp), %esi
Ltmp8:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp9:
	movq	%rax, -1272(%rbp)       ## 8-byte Spill
	jmp	LBB0_14
LBB0_14:
	leaq	-1088(%rbp), %rdi
	movl	-812(%rbp), %esi
Ltmp10:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp11:
	movq	%rax, -1280(%rbp)       ## 8-byte Spill
	jmp	LBB0_15
LBB0_15:
	leaq	-1088(%rbp), %rdi
	movl	-816(%rbp), %esi
Ltmp12:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp13:
	movq	%rax, -1288(%rbp)       ## 8-byte Spill
	jmp	LBB0_16
LBB0_16:
	leaq	-1104(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$24, %rax
Ltmp14:
	leaq	-1144(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
Ltmp15:
	jmp	LBB0_17
LBB0_17:
	jmp	LBB0_18
LBB0_18:
	leaq	-1144(%rbp), %rax
	movq	-1152(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -408(%rbp)
	movq	%rax, -416(%rbp)
	movq	-408(%rbp), %rax
	movq	-416(%rbp), %rdx
	movq	%rax, -392(%rbp)
	movq	%rdx, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rdx
	movq	%rdx, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-360(%rbp), %rsi
	movq	%rsi, -352(%rbp)
	movq	-352(%rbp), %rsi
	movq	%rsi, -344(%rbp)
	movq	-344(%rbp), %rsi
	movzbl	(%rsi), %edi
	movl	%edi, %esi
	andq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -1296(%rbp)       ## 8-byte Spill
	movq	%rdx, -1304(%rbp)       ## 8-byte Spill
	je	LBB0_20
## %bb.19:
	leaq	-377(%rbp), %rsi
	movq	-1304(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rcx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	movq	-288(%rbp), %rcx
	movq	16(%rcx), %rdi
	movb	$0, -377(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	movq	-1304(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	-232(%rbp), %rcx
	movq	-240(%rbp), %rsi
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rsi, 8(%rcx)
	jmp	LBB0_21
LBB0_20:
	leaq	-378(%rbp), %rsi
	movq	-1304(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rdi
	movb	$0, -378(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	movq	-1304(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	$0, -336(%rbp)
	movq	-328(%rbp), %rcx
	movq	-336(%rbp), %rsi
	shlq	$1, %rsi
	movb	%sil, %dl
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rcx
	movb	%dl, (%rcx)
LBB0_21:
	movq	-1296(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
Ltmp17:
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm
Ltmp18:
	jmp	LBB0_23
LBB0_22:
Ltmp19:
	movq	%rax, %rdi
	movq	%rdx, -1312(%rbp)       ## 8-byte Spill
	callq	___clang_call_terminate
LBB0_23:
	movq	-400(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-1296(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, -176(%rbp)
	movq	-176(%rbp), %rdx
	movq	(%rax), %rsi
	movq	%rsi, (%rdx)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rdx)
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	movq	-400(%rbp), %rax
	movq	%rcx, -152(%rbp)
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
LBB0_24:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$3, -60(%rbp)
	jae	LBB0_26
## %bb.25:                              ##   in Loop: Header=BB0_24 Depth=1
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	movq	$0, (%rax,%rdx,8)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	LBB0_24
LBB0_26:
	leaq	-1144(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	-1104(%rbp), %rdi
	movb	$1, -817(%rbp)
	callq	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	testb	$1, -817(%rbp)
	jne	LBB0_30
	jmp	LBB0_29
LBB0_27:
	movq	-1248(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1112(%rbp)
	movl	-1252(%rbp), %ecx       ## 4-byte Reload
	movl	%ecx, -1116(%rbp)
	jmp	LBB0_31
LBB0_28:
Ltmp16:
	leaq	-1104(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -1112(%rbp)
	movl	%ecx, -1116(%rbp)
	callq	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB0_31
LBB0_29:
	movq	-1152(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
LBB0_30:
	movq	-1160(%rbp), %rax       ## 8-byte Reload
	addq	$1288, %rsp             ## imm = 0x508
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_31:
	movq	-1152(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
## %bb.32:
	movq	-1112(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\343\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	91                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp3-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset6
Lset7 = Ltmp5-Lfunc_begin0              ##     jumps to Ltmp5
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp4-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp6-Ltmp4                     ##   Call between Ltmp4 and Ltmp6
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp6-Lfunc_begin0             ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Ltmp15-Ltmp6                   ##   Call between Ltmp6 and Ltmp15
	.long	Lset11
Lset12 = Ltmp16-Lfunc_begin0            ##     jumps to Ltmp16
	.long	Lset12
	.byte	0                       ##   On action: cleanup
Lset13 = Ltmp17-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset13
Lset14 = Ltmp18-Ltmp17                  ##   Call between Ltmp17 and Ltmp18
	.long	Lset14
Lset15 = Ltmp19-Lfunc_begin0            ##     jumps to Ltmp19
	.long	Lset15
	.byte	1                       ##   On action: 1
Lset16 = Ltmp18-Lfunc_begin0            ## >> Call Site 7 <<
	.long	Lset16
Lset17 = Lfunc_end0-Ltmp18              ##   Call between Ltmp18 and Lfunc_end0
	.long	Lset17
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	movq	-16(%rbp), %rsi         ## 8-byte Reload
	addq	$128, %rsi
	movq	%rsi, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              ## imm = 0x1B0
	movl	$0, -260(%rbp)
	movl	$2, -264(%rbp)
	movl	$0, -268(%rbp)
	movl	$0, -272(%rbp)
	movl	$0, -276(%rbp)
	movl	$0, -268(%rbp)
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
                                        ##       Child Loop BB2_5 Depth 3
	cmpl	$10, -268(%rbp)
	jge	LBB2_33
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	$0, -272(%rbp)
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_5 Depth 3
	cmpl	$10, -272(%rbp)
	jge	LBB2_31
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	movl	$0, -276(%rbp)
LBB2_5:                                 ##   Parent Loop BB2_1 Depth=1
                                        ##     Parent Loop BB2_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$10, -276(%rbp)
	jge	LBB2_29
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=3
	movl	-264(%rbp), %esi
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	leaq	-304(%rbp), %rdi
	callq	__Z8toStringiiii
	movl	-276(%rbp), %esi
	movl	-272(%rbp), %edx
	movl	-268(%rbp), %ecx
	movl	-264(%rbp), %r8d
Ltmp20:
	leaq	-328(%rbp), %rdi
	callq	__Z8toStringiiii
Ltmp21:
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_5 Depth=3
	leaq	-304(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -352(%rbp)        ## 8-byte Spill
	je	LBB2_9
## %bb.8:                               ##   in Loop: Header=BB2_5 Depth=3
	movq	-352(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -360(%rbp)        ## 8-byte Spill
	jmp	LBB2_10
LBB2_9:                                 ##   in Loop: Header=BB2_5 Depth=3
	movq	-352(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -360(%rbp)        ## 8-byte Spill
LBB2_10:                                ##   in Loop: Header=BB2_5 Depth=3
	movq	-360(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
Ltmp23:
	callq	_atoi
Ltmp24:
	movl	%eax, -364(%rbp)        ## 4-byte Spill
	jmp	LBB2_11
LBB2_11:                                ##   in Loop: Header=BB2_5 Depth=3
	leaq	-328(%rbp), %rax
	movl	-364(%rbp), %ecx        ## 4-byte Reload
	shll	$2, %ecx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	andq	$1, %rdx
	cmpq	$0, %rdx
	movl	%ecx, -368(%rbp)        ## 4-byte Spill
	movq	%rax, -376(%rbp)        ## 8-byte Spill
	je	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_5 Depth=3
	movq	-376(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -384(%rbp)        ## 8-byte Spill
	jmp	LBB2_14
LBB2_13:                                ##   in Loop: Header=BB2_5 Depth=3
	movq	-376(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -384(%rbp)        ## 8-byte Spill
LBB2_14:                                ##   in Loop: Header=BB2_5 Depth=3
	movq	-384(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
Ltmp25:
	callq	_atoi
Ltmp26:
	movl	%eax, -388(%rbp)        ## 4-byte Spill
	jmp	LBB2_15
LBB2_15:                                ##   in Loop: Header=BB2_5 Depth=3
	movl	-368(%rbp), %eax        ## 4-byte Reload
	movl	-388(%rbp), %ecx        ## 4-byte Reload
	cmpl	%ecx, %eax
	jne	LBB2_24
## %bb.16:                              ##   in Loop: Header=BB2_5 Depth=3
Ltmp27:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	-304(%rbp), %rsi
	callq	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
Ltmp28:
	movq	%rax, -400(%rbp)        ## 8-byte Spill
	jmp	LBB2_17
LBB2_17:                                ##   in Loop: Header=BB2_5 Depth=3
Ltmp29:
	leaq	L_.str(%rip), %rsi
	movq	-400(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp30:
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	jmp	LBB2_18
LBB2_18:                                ##   in Loop: Header=BB2_5 Depth=3
Ltmp31:
	leaq	-328(%rbp), %rsi
	movq	-408(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
Ltmp32:
	movq	%rax, -416(%rbp)        ## 8-byte Spill
	jmp	LBB2_19
LBB2_19:                                ##   in Loop: Header=BB2_5 Depth=3
	movq	-416(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -128(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rcx
Ltmp33:
	callq	*%rcx
Ltmp34:
	movq	%rax, -424(%rbp)        ## 8-byte Spill
	jmp	LBB2_20
LBB2_20:                                ##   in Loop: Header=BB2_5 Depth=3
	jmp	LBB2_21
LBB2_21:                                ##   in Loop: Header=BB2_5 Depth=3
	movl	$8, -344(%rbp)
	jmp	LBB2_25
LBB2_22:
Ltmp22:
	movl	%edx, %ecx
	movq	%rax, -336(%rbp)
	movl	%ecx, -340(%rbp)
	jmp	LBB2_28
LBB2_23:
Ltmp35:
	leaq	-328(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -336(%rbp)
	movl	%ecx, -340(%rbp)
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB2_28
LBB2_24:                                ##   in Loop: Header=BB2_5 Depth=3
	movl	$0, -344(%rbp)
LBB2_25:                                ##   in Loop: Header=BB2_5 Depth=3
	leaq	-328(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	-304(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-344(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -428(%rbp)        ## 4-byte Spill
	je	LBB2_26
	jmp	LBB2_36
LBB2_36:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-428(%rbp), %eax        ## 4-byte Reload
	subl	$8, %eax
	movl	%eax, -432(%rbp)        ## 4-byte Spill
	je	LBB2_29
	jmp	LBB2_35
LBB2_26:                                ##   in Loop: Header=BB2_5 Depth=3
	jmp	LBB2_27
LBB2_27:                                ##   in Loop: Header=BB2_5 Depth=3
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	LBB2_5
LBB2_28:
	leaq	-304(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB2_34
LBB2_29:                                ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_30
LBB2_30:                                ##   in Loop: Header=BB2_3 Depth=2
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	LBB2_3
LBB2_31:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_32
LBB2_32:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	LBB2_1
LBB2_33:
	xorl	%eax, %eax
	addq	$432, %rsp              ## imm = 0x1B0
	popq	%rbp
	retq
LBB2_34:
	movq	-336(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB2_35:
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\266\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset18 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset18
Lset19 = Ltmp20-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp20
	.long	Lset19
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp20-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset20
Lset21 = Ltmp21-Ltmp20                  ##   Call between Ltmp20 and Ltmp21
	.long	Lset21
Lset22 = Ltmp22-Lfunc_begin1            ##     jumps to Ltmp22
	.long	Lset22
	.byte	0                       ##   On action: cleanup
Lset23 = Ltmp23-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset23
Lset24 = Ltmp34-Ltmp23                  ##   Call between Ltmp23 and Ltmp34
	.long	Lset24
Lset25 = Ltmp35-Lfunc_begin1            ##     jumps to Ltmp35
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp34-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset26
Lset27 = Lfunc_end1-Ltmp34              ##   Call between Ltmp34 and Lfunc_end1
	.long	Lset27
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ## -- Begin function _ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	4, 0x90
__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              ## imm = 0x100
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movq	%rsi, -192(%rbp)
	movq	-192(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	andq	$1, %rax
	cmpq	$0, %rax
	movq	%rdi, -216(%rbp)        ## 8-byte Spill
	movq	%rsi, -224(%rbp)        ## 8-byte Spill
	je	LBB3_2
## %bb.1:
	movq	-224(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -232(%rbp)        ## 8-byte Spill
	jmp	LBB3_3
LBB3_2:
	movq	-224(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -232(%rbp)        ## 8-byte Spill
LBB3_3:
	movq	-232(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rsi, -240(%rbp)        ## 8-byte Spill
	movq	%rax, -248(%rbp)        ## 8-byte Spill
	je	LBB3_5
## %bb.4:
	movq	-248(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -256(%rbp)        ## 8-byte Spill
	jmp	LBB3_6
LBB3_5:
	movq	-248(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	sarl	$1, %edx
	movslq	%edx, %rcx
	movq	%rcx, -256(%rbp)        ## 8-byte Spill
LBB3_6:
	movq	-256(%rbp), %rax        ## 8-byte Reload
	movq	-216(%rbp), %rdi        ## 8-byte Reload
	movq	-240(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$256, %rsp              ## imm = 0x100
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ## -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	%rdi, %rcx
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movb	$10, -33(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
Ltmp36:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp37:
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB5_1
LBB5_1:
	movb	-33(%rbp), %al
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp38:
	movl	%edi, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-100(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp39:
	movb	%al, -113(%rbp)         ## 1-byte Spill
	jmp	LBB5_3
LBB5_2:
Ltmp40:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-56(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB5_3:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movb	-113(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-72(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	%rdi, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset28 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset28
Lset29 = Ltmp36-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp36
	.long	Lset29
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset30 = Ltmp36-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset30
Lset31 = Ltmp39-Ltmp36                  ##   Call between Ltmp36 and Ltmp39
	.long	Lset31
Lset32 = Ltmp40-Lfunc_begin2            ##     jumps to Ltmp40
	.long	Lset32
	.byte	0                       ##   On action: cleanup
Lset33 = Ltmp39-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset33
Lset34 = Lfunc_end2-Ltmp39              ##   Call between Ltmp39 and Lfunc_end2
	.long	Lset34
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev ## -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: ## @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movq	64(%rdi), %rax
	movq	(%rsi), %rcx
	movq	-24(%rcx), %rcx
	movq	%rax, (%rsi,%rcx)
	movq	72(%rdi), %rax
	movq	%rax, 16(%rsi)
	movq	%rsi, %rax
	addq	$24, %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	-24(%rbp), %rcx         ## 8-byte Reload
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$-16, %rdi
	popq	%rbp
	jmp	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
	popq	%rbp
	jmp	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$-16, %rdi
	popq	%rbp
	jmp	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
	popq	%rbp
	jmp	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	addq	$64, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$672, %rsp              ## imm = 0x2A0
	movq	%rdi, %rax
	movq	%rsi, -512(%rbp)
	movq	%rdx, -520(%rbp)
	movl	%ecx, -524(%rbp)
	movl	%r8d, -528(%rbp)
	movq	-512(%rbp), %rdx
	movq	88(%rdx), %rsi
	movq	%rdx, %r9
	movq	%r9, -504(%rbp)
	movq	-504(%rbp), %r9
	cmpq	48(%r9), %rsi
	movq	%rax, -552(%rbp)        ## 8-byte Spill
	movq	%rdi, -560(%rbp)        ## 8-byte Spill
	movq	%rdx, -568(%rbp)        ## 8-byte Spill
	jae	LBB15_2
## %bb.1:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-568(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 88(%rcx)
LBB15_2:
	movl	-528(%rbp), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	jne	LBB15_4
## %bb.3:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -576(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	callq	_memset
	movq	-24(%rbp), %rcx
	movq	-576(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
	jmp	LBB15_37
LBB15_4:
	movl	-528(%rbp), %eax
	andl	$24, %eax
	cmpl	$24, %eax
	jne	LBB15_7
## %bb.5:
	cmpl	$1, -524(%rbp)
	jne	LBB15_7
## %bb.6:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -64(%rbp)
	movq	$-1, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -584(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	callq	_memset
	movq	-56(%rbp), %rcx
	movq	-584(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
	jmp	LBB15_37
LBB15_7:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	cmpq	$0, 88(%rax)
	jne	LBB15_9
## %bb.8:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        ## 8-byte Spill
	jmp	LBB15_13
LBB15_9:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	88(%rax), %rcx
	addq	$64, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdx
	movq	%rdx, -160(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movq	-152(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	andq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -600(%rbp)        ## 8-byte Spill
	movq	%rax, -608(%rbp)        ## 8-byte Spill
	je	LBB15_11
## %bb.10:
	movq	-608(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -616(%rbp)        ## 8-byte Spill
	jmp	LBB15_12
LBB15_11:
	movq	-608(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -616(%rbp)        ## 8-byte Spill
LBB15_12:
	movq	-616(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-600(%rbp), %rcx        ## 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, -592(%rbp)        ## 8-byte Spill
LBB15_13:
	movq	-592(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -536(%rbp)
	movl	-524(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -620(%rbp)        ## 4-byte Spill
	je	LBB15_14
	jmp	LBB15_38
LBB15_38:
	movl	-620(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -624(%rbp)        ## 4-byte Spill
	je	LBB15_15
	jmp	LBB15_39
LBB15_39:
	movl	-620(%rbp), %eax        ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -628(%rbp)        ## 4-byte Spill
	je	LBB15_19
	jmp	LBB15_20
LBB15_14:
	movq	$0, -544(%rbp)
	jmp	LBB15_21
LBB15_15:
	movl	-528(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB15_17
## %bb.16:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	24(%rax), %rax
	movq	-568(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -544(%rbp)
	jmp	LBB15_18
LBB15_17:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	48(%rax), %rax
	movq	-568(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rcx
	movq	40(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -544(%rbp)
LBB15_18:
	jmp	LBB15_21
LBB15_19:
	movq	-536(%rbp), %rax
	movq	%rax, -544(%rbp)
	jmp	LBB15_21
LBB15_20:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	$-1, -248(%rbp)
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %r8
	movq	%rdi, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -640(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	callq	_memset
	movq	-232(%rbp), %rcx
	movq	-640(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
	jmp	LBB15_37
LBB15_21:
	movq	-520(%rbp), %rax
	addq	-544(%rbp), %rax
	movq	%rax, -544(%rbp)
	cmpq	$0, -544(%rbp)
	jl	LBB15_23
## %bb.22:
	movq	-536(%rbp), %rax
	cmpq	-544(%rbp), %rax
	jge	LBB15_24
LBB15_23:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -272(%rbp)
	movq	$-1, -280(%rbp)
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %r8
	movq	%rdi, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	-256(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -648(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	callq	_memset
	movq	-264(%rbp), %rcx
	movq	-648(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
	jmp	LBB15_37
LBB15_24:
	cmpq	$0, -544(%rbp)
	je	LBB15_32
## %bb.25:
	movl	-528(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB15_28
## %bb.26:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	LBB15_28
## %bb.27:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -312(%rbp)
	movq	$-1, -320(%rbp)
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %r8
	movq	%rdi, -296(%rbp)
	movq	%r8, -304(%rbp)
	movq	-296(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -656(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	callq	_memset
	movq	-304(%rbp), %rcx
	movq	-656(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
	jmp	LBB15_37
LBB15_28:
	movl	-528(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	LBB15_31
## %bb.29:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	LBB15_31
## %bb.30:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -352(%rbp)
	movq	$-1, -360(%rbp)
	movq	-352(%rbp), %rdi
	movq	-360(%rbp), %r8
	movq	%rdi, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	-336(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rdi, -664(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	callq	_memset
	movq	-344(%rbp), %rcx
	movq	-664(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
	jmp	LBB15_37
LBB15_31:
	jmp	LBB15_32
LBB15_32:
	movl	-528(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB15_34
## %bb.33:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	-568(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-568(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -376(%rbp)
	movq	-376(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	-544(%rbp), %rdx
	movq	-568(%rbp), %rsi        ## 8-byte Reload
	movq	88(%rsi), %rdi
	movq	%rax, -384(%rbp)
	movq	%rcx, -392(%rbp)
	movq	%rdx, -400(%rbp)
	movq	%rdi, -408(%rbp)
	movq	-384(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-400(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-408(%rbp), %rcx
	movq	%rcx, 32(%rax)
LBB15_34:
	movl	-528(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	LBB15_36
## %bb.35:
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	-568(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -416(%rbp)
	movq	-416(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-568(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -424(%rbp)
	movq	-424(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rax, -432(%rbp)
	movq	%rcx, -440(%rbp)
	movq	%rdx, -448(%rbp)
	movq	-432(%rbp), %rax
	movq	-440(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-448(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-568(%rbp), %rax        ## 8-byte Reload
	movq	-544(%rbp), %rcx
	movl	%ecx, %esi
	movq	%rax, -456(%rbp)
	movl	%esi, -460(%rbp)
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %esi
	movq	48(%rax), %rcx
	movslq	%esi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 48(%rax)
LBB15_36:
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	-544(%rbp), %rcx
	movq	-560(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -488(%rbp)
	movq	%rcx, -496(%rbp)
	movq	-488(%rbp), %rcx
	movq	-496(%rbp), %r8
	movq	%rcx, -472(%rbp)
	movq	%r8, -480(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rcx, %r8
	movq	%r8, %rdi
	movq	%rcx, -672(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-480(%rbp), %rcx
	movq	-672(%rbp), %rdx        ## 8-byte Reload
	movq	%rcx, 128(%rdx)
LBB15_37:
	movq	-552(%rbp), %rax        ## 8-byte Reload
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %r9
	movq	32(%r9), %r9
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdx
	movl	-20(%rbp), %r10d
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	*%r9
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	88(%rdi), %rax
	movq	%rdi, %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	cmpq	48(%rcx), %rax
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	jae	LBB17_2
## %bb.1:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 88(%rcx)
LBB17_2:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movl	96(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	LBB17_8
## %bb.3:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	cmpq	88(%rcx), %rax
	jae	LBB17_5
## %bb.4:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-120(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	movq	88(%rsi), %rdi
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 32(%rax)
LBB17_5:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	LBB17_7
## %bb.6:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movsbl	(%rax), %edi
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movl	%eax, -100(%rbp)
	jmp	LBB17_9
LBB17_7:
	jmp	LBB17_8
LBB17_8:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, -100(%rbp)
LBB17_9:
	movl	-100(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -160(%rbp)
	movl	%esi, -164(%rbp)
	movq	-160(%rbp), %rdi
	movq	88(%rdi), %rax
	movq	%rdi, %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	cmpq	48(%rcx), %rax
	movq	%rdi, -176(%rbp)        ## 8-byte Spill
	jae	LBB18_2
## %bb.1:
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 88(%rcx)
LBB18_2:
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jae	LBB18_9
## %bb.3:
	movl	-164(%rbp), %edi
	movl	%edi, -180(%rbp)        ## 4-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	-180(%rbp), %edi        ## 4-byte Reload
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB18_4
	jmp	LBB18_5
LBB18_4:
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-176(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	$-1, %rdx
	movq	-176(%rbp), %rsi        ## 8-byte Reload
	movq	88(%rsi), %rdi
	movq	%rax, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movl	-164(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE7not_eofEi
	movl	%eax, -148(%rbp)
	jmp	LBB18_10
LBB18_5:
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movl	96(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	LBB18_7
## %bb.6:
	movl	-164(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rcx
	movsbl	%al, %edi
	movsbl	-1(%rcx), %esi
	callq	__ZNSt3__111char_traitsIcE2eqEcc
	testb	$1, %al
	jne	LBB18_7
	jmp	LBB18_8
LBB18_7:
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-176(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	$-1, %rdx
	movq	-176(%rbp), %rsi        ## 8-byte Reload
	movq	88(%rsi), %rdi
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rdi, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-104(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-112(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movl	-164(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movl	-164(%rbp), %edi
	movl	%edi, -148(%rbp)
	jmp	LBB18_10
LBB18_8:
	jmp	LBB18_9
LBB18_9:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, -148(%rbp)
LBB18_10:
	movl	-148(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi ## -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
	.p2align	4, 0x90
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi: ## @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$896, %rsp              ## imm = 0x380
	movq	%rdi, -632(%rbp)
	movl	%esi, -636(%rbp)
	movq	-632(%rbp), %rdi
	movl	-636(%rbp), %esi
	movq	%rdi, -712(%rbp)        ## 8-byte Spill
	movl	%esi, -716(%rbp)        ## 4-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	-716(%rbp), %edi        ## 4-byte Reload
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB19_38
## %bb.1:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	24(%rax), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -608(%rbp)
	movq	-608(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -648(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	48(%rax), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -568(%rbp)
	movq	-568(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	LBB19_26
## %bb.2:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movl	96(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	LBB19_4
## %bb.3:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, -620(%rbp)
	jmp	LBB19_39
LBB19_4:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -728(%rbp)        ## 8-byte Spill
## %bb.5:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -736(%rbp)        ## 8-byte Spill
## %bb.6:
	movq	-728(%rbp), %rax        ## 8-byte Reload
	movq	-736(%rbp), %rcx        ## 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -656(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	88(%rax), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, -744(%rbp)        ## 8-byte Spill
	movq	%rax, -752(%rbp)        ## 8-byte Spill
## %bb.7:
	movq	-744(%rbp), %rax        ## 8-byte Reload
	movq	-752(%rbp), %rcx        ## 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -680(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	addq	$64, %rax
Ltmp41:
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp42:
	jmp	LBB19_8
LBB19_8:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	addq	$64, %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	addq	$64, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	andq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -760(%rbp)        ## 8-byte Spill
	movq	%rcx, -768(%rbp)        ## 8-byte Spill
	je	LBB19_10
## %bb.9:
	movq	-768(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	andq	$-2, %rcx
	movq	%rcx, -776(%rbp)        ## 8-byte Spill
	jmp	LBB19_11
LBB19_10:
	movl	$23, %eax
	movl	%eax, %ecx
	movq	%rcx, -776(%rbp)        ## 8-byte Spill
	jmp	LBB19_11
LBB19_11:
	movq	-776(%rbp), %rax        ## 8-byte Reload
	decq	%rax
	movq	-760(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
Ltmp43:
	xorl	%edx, %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc
Ltmp44:
	jmp	LBB19_12
LBB19_12:
	jmp	LBB19_13
LBB19_13:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	addq	$64, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -784(%rbp)        ## 8-byte Spill
	je	LBB19_15
## %bb.14:
	movq	-784(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -792(%rbp)        ## 8-byte Spill
	jmp	LBB19_16
LBB19_15:
	movq	-784(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, -792(%rbp)        ## 8-byte Spill
LBB19_16:
	movq	-792(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	-688(%rbp), %rcx
	movq	-688(%rbp), %rdx
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	addq	$64, %rsi
	movq	%rsi, -272(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rdi
	movq	%rdi, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movzbl	(%rdi), %r8d
	movl	%r8d, %edi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movq	%rax, -800(%rbp)        ## 8-byte Spill
	movq	%rcx, -808(%rbp)        ## 8-byte Spill
	movq	%rdx, -816(%rbp)        ## 8-byte Spill
	movq	%rsi, -824(%rbp)        ## 8-byte Spill
	je	LBB19_18
## %bb.17:
	movq	-824(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -832(%rbp)        ## 8-byte Spill
	jmp	LBB19_19
LBB19_18:
	movq	-824(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-224(%rbp), %rcx
	movzbl	(%rcx), %edx
	sarl	$1, %edx
	movslq	%edx, %rcx
	movq	%rcx, -832(%rbp)        ## 8-byte Spill
LBB19_19:
	movq	-832(%rbp), %rax        ## 8-byte Reload
	movq	-816(%rbp), %rcx        ## 8-byte Reload
	addq	%rax, %rcx
	movq	-800(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-808(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -288(%rbp)
	movq	%rcx, -296(%rbp)
	movq	-280(%rbp), %rcx
	movq	-288(%rbp), %rsi
	movq	%rsi, 48(%rcx)
	movq	%rsi, 40(%rcx)
	movq	-296(%rbp), %rsi
	movq	%rsi, 56(%rcx)
## %bb.20:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	-656(%rbp), %rcx
	movq	%rax, -304(%rbp)
	movq	%rcx, -312(%rbp)
	movq	-304(%rbp), %rax
	movq	-312(%rbp), %rcx
	addq	48(%rax), %rcx
	movq	%rcx, 48(%rax)
## %bb.21:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -840(%rbp)        ## 8-byte Spill
## %bb.22:
	movq	-840(%rbp), %rax        ## 8-byte Reload
	addq	-680(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 88(%rcx)
	jmp	LBB19_25
LBB19_23:
Ltmp45:
	movl	%edx, %ecx
	movq	%rax, -664(%rbp)
	movl	%ecx, -668(%rbp)
## %bb.24:
	movq	-664(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	%rax, -848(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, -620(%rbp)
	callq	___cxa_end_catch
	jmp	LBB19_39
LBB19_25:
	jmp	LBB19_26
LBB19_26:
	leaq	-368(%rbp), %rax
	leaq	-696(%rbp), %rcx
	movq	-712(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -336(%rbp)
	movq	-336(%rbp), %rdx
	movq	48(%rdx), %rdx
	addq	$1, %rdx
	movq	%rdx, -696(%rbp)
	movq	-712(%rbp), %rdx        ## 8-byte Reload
	addq	$88, %rdx
	movq	%rcx, -392(%rbp)
	movq	%rdx, -400(%rbp)
	movq	-392(%rbp), %rcx
	movq	-400(%rbp), %rdx
	movq	%rcx, -376(%rbp)
	movq	%rdx, -384(%rbp)
	movq	-376(%rbp), %rcx
	movq	-384(%rbp), %rdx
	movq	%rax, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	LBB19_28
## %bb.27:
	movq	-384(%rbp), %rax
	movq	%rax, -856(%rbp)        ## 8-byte Spill
	jmp	LBB19_29
LBB19_28:
	movq	-376(%rbp), %rax
	movq	%rax, -856(%rbp)        ## 8-byte Spill
LBB19_29:
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 88(%rcx)
	movl	96(%rcx), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	LBB19_34
## %bb.30:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	addq	$64, %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rcx
	movq	%rcx, -496(%rbp)
	movq	-496(%rbp), %rcx
	movq	%rcx, -488(%rbp)
	movq	-488(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -864(%rbp)        ## 8-byte Spill
	je	LBB19_32
## %bb.31:
	movq	-864(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rcx
	movq	%rcx, -432(%rbp)
	movq	-432(%rbp), %rcx
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -872(%rbp)        ## 8-byte Spill
	jmp	LBB19_33
LBB19_32:
	movq	-864(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rcx
	movq	%rcx, -472(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rcx, -464(%rbp)
	movq	-464(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	movq	-448(%rbp), %rcx
	movq	%rcx, -872(%rbp)        ## 8-byte Spill
LBB19_33:
	movq	-872(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -704(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	-704(%rbp), %rcx
	movq	-704(%rbp), %rdx
	addq	-648(%rbp), %rdx
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	movq	88(%rsi), %rdi
	movq	%rax, -528(%rbp)
	movq	%rcx, -536(%rbp)
	movq	%rdx, -544(%rbp)
	movq	%rdi, -552(%rbp)
	movq	-528(%rbp), %rax
	movq	-536(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-544(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-552(%rbp), %rcx
	movq	%rcx, 32(%rax)
LBB19_34:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movl	-636(%rbp), %ecx
	movb	%cl, %dl
	movq	%rax, -592(%rbp)
	movb	%dl, -593(%rbp)
	movq	-592(%rbp), %rax
	movq	48(%rax), %rsi
	cmpq	56(%rax), %rsi
	movq	%rax, -880(%rbp)        ## 8-byte Spill
	jne	LBB19_36
## %bb.35:
	movq	-880(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	104(%rcx), %rcx
	movsbl	-593(%rbp), %edi
	movq	%rcx, -888(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movq	-880(%rbp), %rdi        ## 8-byte Reload
	movl	%eax, %esi
	movq	-888(%rbp), %rcx        ## 8-byte Reload
	callq	*%rcx
	movl	%eax, -580(%rbp)
	jmp	LBB19_37
LBB19_36:
	movb	-593(%rbp), %al
	movq	-880(%rbp), %rcx        ## 8-byte Reload
	movq	48(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 48(%rcx)
	movb	%al, (%rdx)
	movsbl	-593(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movl	%eax, -580(%rbp)
LBB19_37:
	movl	-580(%rbp), %eax
	movl	%eax, -620(%rbp)
	jmp	LBB19_39
LBB19_38:
	movl	-636(%rbp), %edi
	callq	__ZNSt3__111char_traitsIcE7not_eofEi
	movl	%eax, -620(%rbp)
LBB19_39:
	movl	-620(%rbp), %eax
	addq	$896, %rsp              ## imm = 0x380
	popq	%rbp
	retq
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table19:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\242\200\200"          ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset35 = Ltmp41-Lfunc_begin3            ## >> Call Site 1 <<
	.long	Lset35
Lset36 = Ltmp44-Ltmp41                  ##   Call between Ltmp41 and Ltmp44
	.long	Lset36
Lset37 = Ltmp45-Lfunc_begin3            ##     jumps to Ltmp45
	.long	Lset37
	.byte	1                       ##   On action: 1
Lset38 = Ltmp44-Lfunc_begin3            ## >> Call Site 2 <<
	.long	Lset38
Lset39 = Lfunc_end3-Ltmp44              ##   Call between Ltmp44 and Lfunc_end3
	.long	Lset39
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE11to_int_typeEc ## -- Begin function _ZNSt3__111char_traitsIcE11to_int_typeEc
	.weak_definition	__ZNSt3__111char_traitsIcE11to_int_typeEc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11to_int_typeEc: ## @_ZNSt3__111char_traitsIcE11to_int_typeEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	cmpl	-8(%rbp), %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE7not_eofEi ## -- Begin function _ZNSt3__111char_traitsIcE7not_eofEi
	.weak_definition	__ZNSt3__111char_traitsIcE7not_eofEi
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE7not_eofEi:   ## @_ZNSt3__111char_traitsIcE7not_eofEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	-8(%rbp), %edi          ## 4-byte Reload
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB23_1
	jmp	LBB23_2
LBB23_1:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	xorl	$-1, %eax
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	jmp	LBB23_3
LBB23_2:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB23_3:
	movl	-12(%rbp), %eax         ## 4-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE2eqEcc ## -- Begin function _ZNSt3__111char_traitsIcE2eqEcc
	.weak_definition	__ZNSt3__111char_traitsIcE2eqEcc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE2eqEcc:       ## @_ZNSt3__111char_traitsIcE2eqEcc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movb	%dil, %cl
	movb	%cl, -1(%rbp)
	movb	%al, -2(%rbp)
	movsbl	-1(%rbp), %esi
	movsbl	-2(%rbp), %edi
	cmpl	%edi, %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE12to_char_typeEi ## -- Begin function _ZNSt3__111char_traitsIcE12to_char_typeEi
	.weak_definition	__ZNSt3__111char_traitsIcE12to_char_typeEi
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE12to_char_typeEi: ## @_ZNSt3__111char_traitsIcE12to_char_typeEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movb	%dil, %al
	movsbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv ## -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
	.weak_definition	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
	.p2align	4, 0x90
__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv: ## @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$784, %rsp              ## imm = 0x310
	movq	%rdi, %rax
	movq	%rsi, -656(%rbp)
	movq	-656(%rbp), %rsi
	movl	96(%rsi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	movq	%rax, -712(%rbp)        ## 8-byte Spill
	movq	%rdi, -720(%rbp)        ## 8-byte Spill
	movq	%rsi, -728(%rbp)        ## 8-byte Spill
	je	LBB27_4
## %bb.1:
	movq	-728(%rbp), %rax        ## 8-byte Reload
	movq	88(%rax), %rcx
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	cmpq	48(%rax), %rcx
	jae	LBB27_3
## %bb.2:
	movq	-728(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	48(%rax), %rax
	movq	-728(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 88(%rcx)
LBB27_3:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-664(%rbp), %rcx
	movq	-728(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-728(%rbp), %r8         ## 8-byte Reload
	movq	88(%r8), %r9
	addq	$64, %r8
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -16(%rbp)
	movq	-16(%rbp), %r8
	movq	%r8, -8(%rbp)
	movq	-720(%rbp), %r8         ## 8-byte Reload
	movq	%r8, -184(%rbp)
	movq	%rdi, -192(%rbp)
	movq	%r9, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-184(%rbp), %rcx
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %r9
	movq	-208(%rbp), %r10
	movq	%rcx, -144(%rbp)
	movq	%rdi, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	%r10, -168(%rbp)
	movq	-144(%rbp), %rcx
	movq	-168(%rbp), %rdi
	movq	%rcx, -128(%rbp)
	movq	%rdi, -136(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %r9
	movq	%rdi, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, %r9
	movq	%r9, -88(%rbp)
	movq	-88(%rbp), %r9
	movq	%rdi, -736(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rcx, -744(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-736(%rbp), %rcx        ## 8-byte Reload
	movq	-112(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-744(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_
	jmp	LBB27_11
LBB27_4:
	movq	-728(%rbp), %rax        ## 8-byte Reload
	movl	96(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	LBB27_6
## %bb.5:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-680(%rbp), %rcx
	movq	-728(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-728(%rbp), %r8         ## 8-byte Reload
	movq	%r8, -224(%rbp)
	movq	-224(%rbp), %r8
	movq	32(%r8), %r8
	movq	-728(%rbp), %r9         ## 8-byte Reload
	addq	$64, %r9
	movq	%r9, -264(%rbp)
	movq	-264(%rbp), %r9
	movq	%r9, -248(%rbp)
	movq	-248(%rbp), %r9
	movq	%r9, -240(%rbp)
	movq	-240(%rbp), %r9
	movq	%r9, -232(%rbp)
	movq	-720(%rbp), %r9         ## 8-byte Reload
	movq	%r9, -408(%rbp)
	movq	%rdi, -416(%rbp)
	movq	%r8, -424(%rbp)
	movq	%rcx, -432(%rbp)
	movq	-408(%rbp), %rcx
	movq	-416(%rbp), %rdi
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r10
	movq	%rcx, -368(%rbp)
	movq	%rdi, -376(%rbp)
	movq	%r8, -384(%rbp)
	movq	%r10, -392(%rbp)
	movq	-368(%rbp), %rcx
	movq	-392(%rbp), %rdi
	movq	%rcx, -352(%rbp)
	movq	%rdi, -360(%rbp)
	movq	-352(%rbp), %rdi
	movq	-360(%rbp), %r8
	movq	%rdi, -328(%rbp)
	movq	%r8, -336(%rbp)
	movq	-328(%rbp), %rdi
	movq	%rdi, %r8
	movq	%r8, -312(%rbp)
	movq	-312(%rbp), %r8
	movq	%rdi, -752(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -760(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-752(%rbp), %rcx        ## 8-byte Reload
	movq	-336(%rbp), %rdx
	movq	%rdx, -280(%rbp)
	movq	-280(%rbp), %rdx
	movq	%rcx, -296(%rbp)
	movq	%rdx, -304(%rbp)
	movq	-304(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	movq	-376(%rbp), %rsi
	movq	-384(%rbp), %rdx
	movq	-760(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_
	jmp	LBB27_11
LBB27_6:
	jmp	LBB27_7
LBB27_7:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-696(%rbp), %rcx
	movq	-728(%rbp), %rdi        ## 8-byte Reload
	addq	$64, %rdi
	movq	%rdi, -472(%rbp)
	movq	-472(%rbp), %rdi
	movq	%rdi, -456(%rbp)
	movq	-456(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%rdi, -440(%rbp)
	movq	-720(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -632(%rbp)
	movq	%rcx, -640(%rbp)
	movq	-632(%rbp), %rcx
	movq	-640(%rbp), %r8
	movq	%rcx, -608(%rbp)
	movq	%r8, -616(%rbp)
	movq	-608(%rbp), %rcx
	movq	-616(%rbp), %r8
	movq	%rcx, -592(%rbp)
	movq	%r8, -600(%rbp)
	movq	-592(%rbp), %r8
	movq	-600(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	%r8, %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, %rdi
	movq	%rcx, -768(%rbp)        ## 8-byte Spill
	movq	%r8, -776(%rbp)         ## 8-byte Spill
	callq	_memset
	movq	-776(%rbp), %rcx        ## 8-byte Reload
	movq	-576(%rbp), %rdx
	movq	%rdx, -520(%rbp)
	movq	-520(%rbp), %rdx
	movq	%rcx, -536(%rbp)
	movq	%rdx, -544(%rbp)
	movq	-544(%rbp), %rcx
	movq	%rcx, -528(%rbp)
	movq	-768(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -496(%rbp)
	movq	-496(%rbp), %rdx
	movq	%rdx, -488(%rbp)
	movq	-488(%rbp), %rdx
	movq	%rdx, -480(%rbp)
	movq	-480(%rbp), %rdx
	movq	%rdx, -504(%rbp)
	movl	$0, -508(%rbp)
LBB27_8:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$3, -508(%rbp)
	jae	LBB27_10
## %bb.9:                               ##   in Loop: Header=BB27_8 Depth=1
	movq	-504(%rbp), %rax
	movl	-508(%rbp), %ecx
	movl	%ecx, %edx
	movq	$0, (%rax,%rdx,8)
	movl	-508(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -508(%rbp)
	jmp	LBB27_8
LBB27_10:
	jmp	LBB27_11
LBB27_11:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	addq	$784, %rsp              ## imm = 0x310
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_ ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_
	.p2align	4, 0x90
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initIPcEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              ## imm = 0x1D0
	movq	%rdi, -400(%rbp)
	movq	%rsi, -408(%rbp)
	movq	%rdx, -416(%rbp)
	movq	-400(%rbp), %rdx
	movq	-408(%rbp), %rsi
	movq	-416(%rbp), %rdi
	movq	%rsi, -376(%rbp)
	movq	%rdi, -384(%rbp)
	movq	-376(%rbp), %rsi
	movq	-384(%rbp), %rdi
	movq	%rsi, -360(%rbp)
	movq	%rdi, -368(%rbp)
	movq	-368(%rbp), %rsi
	movq	-360(%rbp), %rdi
	subq	%rdi, %rsi
	movq	%rsi, -424(%rbp)
	movq	-424(%rbp), %rsi
	movq	%rdx, -344(%rbp)
	movq	-344(%rbp), %rdi
	movq	%rdi, -336(%rbp)
	movq	-336(%rbp), %rdi
	movq	%rdi, -328(%rbp)
	movq	-328(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movq	-320(%rbp), %rdi
	movq	%rdi, -296(%rbp)
	movq	-296(%rbp), %rdi
	movq	%rdi, -288(%rbp)
	movq	-288(%rbp), %rdi
	movq	%rdi, -272(%rbp)
	movq	$-1, -352(%rbp)
	movq	-352(%rbp), %rdi
	subq	$16, %rdi
	cmpq	%rdi, %rsi
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
	jbe	LBB28_2
## %bb.1:
	movq	-456(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
LBB28_2:
	cmpq	$23, -424(%rbp)
	jae	LBB28_4
## %bb.3:
	movq	-424(%rbp), %rax
	movq	-456(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	movq	-264(%rbp), %rdx
	shlq	$1, %rdx
	movb	%dl, %sil
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movb	%sil, (%rax)
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -432(%rbp)
	jmp	LBB28_8
LBB28_4:
	movq	-424(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$23, -16(%rbp)
	jae	LBB28_6
## %bb.5:
	movl	$23, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jmp	LBB28_7
LBB28_6:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, -464(%rbp)        ## 8-byte Spill
LBB28_7:
	movq	-464(%rbp), %rax        ## 8-byte Reload
	subq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-456(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-440(%rbp), %rdx
	addq	$1, %rdx
	movq	%rcx, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	%rcx, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	__Znwm
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	-456(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -160(%rbp)
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-440(%rbp), %rax
	addq	$1, %rax
	movq	%rcx, -192(%rbp)
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	-200(%rbp), %rdx
	orq	$1, %rdx
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-424(%rbp), %rax
	movq	%rcx, -224(%rbp)
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rdx, 8(%rax)
LBB28_8:
	jmp	LBB28_9
LBB28_9:                                ## =>This Inner Loop Header: Depth=1
	movq	-408(%rbp), %rax
	cmpq	-416(%rbp), %rax
	je	LBB28_12
## %bb.10:                              ##   in Loop: Header=BB28_9 Depth=1
	movq	-432(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
## %bb.11:                              ##   in Loop: Header=BB28_9 Depth=1
	movq	-408(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -432(%rbp)
	jmp	LBB28_9
LBB28_12:
	leaq	-441(%rbp), %rsi
	movq	-432(%rbp), %rdi
	movb	$0, -441(%rbp)
	callq	__ZNSt3__111char_traitsIcE6assignERcRKc
	addq	$464, %rsp              ## imm = 0x1D0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE6assignERcRKc ## -- Begin function _ZNSt3__111char_traitsIcE6assignERcRKc
	.weak_definition	__ZNSt3__111char_traitsIcE6assignERcRKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6assignERcRKc: ## @_ZNSt3__111char_traitsIcE6assignERcRKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movb	(%rsi), %al
	movq	-8(%rbp), %rsi
	movb	%al, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              ## imm = 0x180
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-184(%rbp), %rsi
Ltmp46:
	leaq	-216(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp47:
	jmp	LBB30_1
LBB30_1:
	leaq	-216(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -249(%rbp)         ## 1-byte Spill
## %bb.2:
	movb	-249(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB30_3
	jmp	LBB30_26
LBB30_3:
	leaq	-248(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -160(%rbp)
	movq	%rcx, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %edi
	movq	%rsi, -264(%rbp)        ## 8-byte Spill
	movl	%edi, -268(%rbp)        ## 4-byte Spill
## %bb.4:
	movl	-268(%rbp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB30_6
## %bb.5:
	movq	-192(%rbp), %rax
	addq	-200(%rbp), %rax
	movq	%rax, -280(%rbp)        ## 8-byte Spill
	jmp	LBB30_7
LBB30_6:
	movq	-192(%rbp), %rax
	movq	%rax, -280(%rbp)        ## 8-byte Spill
LBB30_7:
	movq	-280(%rbp), %rax        ## 8-byte Reload
	movq	-192(%rbp), %rcx
	addq	-200(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-184(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rdi), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rax, -288(%rbp)        ## 8-byte Spill
	movq	%rcx, -296(%rbp)        ## 8-byte Spill
	movq	%rdx, -304(%rbp)        ## 8-byte Spill
	movq	%rsi, -312(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	-312(%rbp), %rcx        ## 8-byte Reload
	movl	144(%rcx), %esi
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB30_8
	jmp	LBB30_13
LBB30_8:
	movq	-312(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movb	$32, -33(%rbp)
	movq	-32(%rbp), %rsi
Ltmp49:
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp50:
	jmp	LBB30_9
LBB30_9:
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
Ltmp51:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp52:
	movq	%rax, -320(%rbp)        ## 8-byte Spill
	jmp	LBB30_10
LBB30_10:
	movb	-33(%rbp), %al
	movq	-320(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp53:
	movl	%edi, -324(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-324(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -336(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-336(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp54:
	movb	%al, -337(%rbp)         ## 1-byte Spill
	jmp	LBB30_12
LBB30_11:
Ltmp55:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %ecx
	movq	%rax, -352(%rbp)        ## 8-byte Spill
	movl	%ecx, -356(%rbp)        ## 4-byte Spill
	jmp	LBB30_21
LBB30_12:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movb	-337(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movq	-312(%rbp), %rdi        ## 8-byte Reload
	movl	%ecx, 144(%rdi)
LBB30_13:
	movq	-312(%rbp), %rax        ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -357(%rbp)         ## 1-byte Spill
## %bb.14:
	movq	-248(%rbp), %rdi
Ltmp56:
	movb	-357(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-264(%rbp), %rsi        ## 8-byte Reload
	movq	-288(%rbp), %rdx        ## 8-byte Reload
	movq	-296(%rbp), %rcx        ## 8-byte Reload
	movq	-304(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp57:
	movq	%rax, -368(%rbp)        ## 8-byte Spill
	jmp	LBB30_15
LBB30_15:
	leaq	-240(%rbp), %rax
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB30_25
## %bb.16:
	movq	-184(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movl	$5, -116(%rbp)
	movq	-112(%rbp), %rax
	movl	-116(%rbp), %edx
	movq	%rax, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rax
	movl	32(%rax), %edx
	movl	-100(%rbp), %esi
	orl	%esi, %edx
Ltmp58:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp59:
	jmp	LBB30_17
LBB30_17:
	jmp	LBB30_18
LBB30_18:
	jmp	LBB30_25
LBB30_19:
Ltmp48:
	movl	%edx, %ecx
	movq	%rax, -224(%rbp)
	movl	%ecx, -228(%rbp)
	jmp	LBB30_22
LBB30_20:
Ltmp60:
	movl	%edx, %ecx
	movq	%rax, -352(%rbp)        ## 8-byte Spill
	movl	%ecx, -356(%rbp)        ## 4-byte Spill
	jmp	LBB30_21
LBB30_21:
	movl	-356(%rbp), %eax        ## 4-byte Reload
	movq	-352(%rbp), %rcx        ## 8-byte Reload
	leaq	-216(%rbp), %rdi
	movq	%rcx, -224(%rbp)
	movl	%eax, -228(%rbp)
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB30_22:
	movq	-224(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-184(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp61:
	movq	%rax, -376(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp62:
	jmp	LBB30_23
LBB30_23:
	callq	___cxa_end_catch
LBB30_24:
	movq	-184(%rbp), %rax
	addq	$384, %rsp              ## imm = 0x180
	popq	%rbp
	retq
LBB30_25:
	jmp	LBB30_26
LBB30_26:
	leaq	-216(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB30_24
LBB30_27:
Ltmp63:
	movl	%edx, %ecx
	movq	%rax, -224(%rbp)
	movl	%ecx, -228(%rbp)
Ltmp64:
	callq	___cxa_end_catch
Ltmp65:
	jmp	LBB30_28
LBB30_28:
	jmp	LBB30_29
LBB30_29:
	movq	-224(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB30_30:
Ltmp66:
	movq	%rax, %rdi
	movq	%rdx, -384(%rbp)        ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table30:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\201\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	117                     ## Call site table length
Lset40 = Ltmp46-Lfunc_begin4            ## >> Call Site 1 <<
	.long	Lset40
Lset41 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset41
Lset42 = Ltmp48-Lfunc_begin4            ##     jumps to Ltmp48
	.long	Lset42
	.byte	5                       ##   On action: 3
Lset43 = Ltmp49-Lfunc_begin4            ## >> Call Site 2 <<
	.long	Lset43
Lset44 = Ltmp50-Ltmp49                  ##   Call between Ltmp49 and Ltmp50
	.long	Lset44
Lset45 = Ltmp60-Lfunc_begin4            ##     jumps to Ltmp60
	.long	Lset45
	.byte	5                       ##   On action: 3
Lset46 = Ltmp51-Lfunc_begin4            ## >> Call Site 3 <<
	.long	Lset46
Lset47 = Ltmp54-Ltmp51                  ##   Call between Ltmp51 and Ltmp54
	.long	Lset47
Lset48 = Ltmp55-Lfunc_begin4            ##     jumps to Ltmp55
	.long	Lset48
	.byte	3                       ##   On action: 2
Lset49 = Ltmp56-Lfunc_begin4            ## >> Call Site 4 <<
	.long	Lset49
Lset50 = Ltmp59-Ltmp56                  ##   Call between Ltmp56 and Ltmp59
	.long	Lset50
Lset51 = Ltmp60-Lfunc_begin4            ##     jumps to Ltmp60
	.long	Lset51
	.byte	5                       ##   On action: 3
Lset52 = Ltmp59-Lfunc_begin4            ## >> Call Site 5 <<
	.long	Lset52
Lset53 = Ltmp61-Ltmp59                  ##   Call between Ltmp59 and Ltmp61
	.long	Lset53
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset54 = Ltmp61-Lfunc_begin4            ## >> Call Site 6 <<
	.long	Lset54
Lset55 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset55
Lset56 = Ltmp63-Lfunc_begin4            ##     jumps to Ltmp63
	.long	Lset56
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp62-Lfunc_begin4            ## >> Call Site 7 <<
	.long	Lset57
Lset58 = Ltmp64-Ltmp62                  ##   Call between Ltmp62 and Ltmp64
	.long	Lset58
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset59 = Ltmp64-Lfunc_begin4            ## >> Call Site 8 <<
	.long	Lset59
Lset60 = Ltmp65-Ltmp64                  ##   Call between Ltmp64 and Ltmp65
	.long	Lset60
Lset61 = Ltmp66-Lfunc_begin4            ##     jumps to Ltmp66
	.long	Lset61
	.byte	5                       ##   On action: 3
Lset62 = Ltmp65-Lfunc_begin4            ## >> Call Site 9 <<
	.long	Lset62
Lset63 = Lfunc_end4-Ltmp65              ##   Call between Ltmp65 and Lfunc_end4
	.long	Lset63
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              ## imm = 0x1E0
	movb	%r9b, %al
	movq	%rdi, -320(%rbp)
	movq	%rsi, -328(%rbp)
	movq	%rdx, -336(%rbp)
	movq	%rcx, -344(%rbp)
	movq	%r8, -352(%rbp)
	movb	%al, -353(%rbp)
	cmpq	$0, -320(%rbp)
	jne	LBB31_2
## %bb.1:
	movq	-320(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB31_26
LBB31_2:
	movq	-344(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -368(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpq	-368(%rbp), %rax
	jle	LBB31_4
## %bb.3:
	movq	-368(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -376(%rbp)
	jmp	LBB31_5
LBB31_4:
	movq	$0, -376(%rbp)
LBB31_5:
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jle	LBB31_9
## %bb.6:
	movq	-320(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	-384(%rbp), %rdx
	movq	%rax, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-384(%rbp), %rax
	je	LBB31_8
## %bb.7:
	movq	$0, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB31_26
LBB31_8:
	jmp	LBB31_9
LBB31_9:
	cmpq	$0, -376(%rbp)
	jle	LBB31_21
## %bb.10:
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-408(%rbp), %rcx
	movq	-376(%rbp), %rdi
	movb	-353(%rbp), %r8b
	movq	%rcx, -208(%rbp)
	movq	%rdi, -216(%rbp)
	movb	%r8b, -217(%rbp)
	movq	-208(%rbp), %rcx
	movq	-216(%rbp), %rdi
	movb	-217(%rbp), %r8b
	movq	%rcx, -184(%rbp)
	movq	%rdi, -192(%rbp)
	movb	%r8b, -193(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rdi
	movq	%rdi, %r9
	movq	%r9, -160(%rbp)
	movq	-160(%rbp), %r9
	movq	%rdi, -432(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-192(%rbp), %rsi
	movq	-440(%rbp), %rdi        ## 8-byte Reload
	movsbl	-193(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	leaq	-408(%rbp), %rcx
	movq	-320(%rbp), %rsi
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rdi
	movq	%rdi, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rdi
	movzbl	(%rdi), %eax
	movl	%eax, %edi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movq	%rsi, -448(%rbp)        ## 8-byte Spill
	movq	%rcx, -456(%rbp)        ## 8-byte Spill
	je	LBB31_12
## %bb.11:
	movq	-456(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	jmp	LBB31_13
LBB31_12:
	movq	-456(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
LBB31_13:
	movq	-464(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	-448(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
Ltmp67:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp68:
	movq	%rax, -472(%rbp)        ## 8-byte Spill
	jmp	LBB31_14
LBB31_14:
	jmp	LBB31_15
LBB31_15:
	movq	-472(%rbp), %rax        ## 8-byte Reload
	cmpq	-376(%rbp), %rax
	je	LBB31_18
## %bb.16:
	movq	$0, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	$1, -424(%rbp)
	jmp	LBB31_19
LBB31_17:
Ltmp69:
	leaq	-408(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -416(%rbp)
	movl	%ecx, -420(%rbp)
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB31_27
LBB31_18:
	movl	$0, -424(%rbp)
LBB31_19:
	leaq	-408(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-424(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -476(%rbp)        ## 4-byte Spill
	je	LBB31_20
	jmp	LBB31_29
LBB31_29:
	movl	-476(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -480(%rbp)        ## 4-byte Spill
	je	LBB31_26
	jmp	LBB31_28
LBB31_20:
	jmp	LBB31_21
LBB31_21:
	movq	-344(%rbp), %rax
	movq	-336(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jle	LBB31_25
## %bb.22:
	movq	-320(%rbp), %rax
	movq	-336(%rbp), %rcx
	movq	-384(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-384(%rbp), %rax
	je	LBB31_24
## %bb.23:
	movq	$0, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB31_26
LBB31_24:
	jmp	LBB31_25
LBB31_25:
	movq	-352(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	$0, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -296(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-320(%rbp), %rax
	movq	%rax, -312(%rbp)
LBB31_26:
	movq	-312(%rbp), %rax
	addq	$480, %rsp              ## imm = 0x1E0
	popq	%rbp
	retq
LBB31_27:
	movq	-416(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB31_28:
	ud2
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table31:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset64 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset64
Lset65 = Ltmp67-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp67
	.long	Lset65
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset66 = Ltmp67-Lfunc_begin5            ## >> Call Site 2 <<
	.long	Lset66
Lset67 = Ltmp68-Ltmp67                  ##   Call between Ltmp67 and Ltmp68
	.long	Lset67
Lset68 = Ltmp69-Lfunc_begin5            ##     jumps to Ltmp69
	.long	Lset68
	.byte	0                       ##   On action: cleanup
Lset69 = Ltmp68-Lfunc_begin5            ## >> Call Site 3 <<
	.long	Lset69
Lset70 = Lfunc_end5-Ltmp68              ##   Call between Ltmp68 and Lfunc_end5
	.long	Lset70
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ## -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" "

	.section	__DATA,__const
	.globl	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	128
	.quad	0
	.quad	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	112
	.quad	-16
	.quad	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	-128
	.quad	-128
	.quad	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev

	.globl	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE+64
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE+24
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE+64
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE+104
	.quad	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE+64
	.quad	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+104
	.quad	__ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE+64

	.globl	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE ## @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE
	.p2align	4
__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_14basic_iostreamIcS2_EE:
	.quad	128
	.quad	0
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev
	.quad	112
	.quad	-16
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE
	.quad	__ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZThn16_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-128
	.quad	-128
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_iostreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE ## @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE
	.p2align	4
__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE:
	.quad	128
	.quad	0
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
	.quad	-128
	.quad	-128
	.quad	__ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE ## @_ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE
	.p2align	4
__ZTCNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE16_NS_13basic_ostreamIcS2_EE:
	.quad	112
	.quad	0
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-112
	.quad	-112
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__114basic_iostreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	3
__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	0
	.quad	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.asciz	"NSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE ## @_ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.weak_definition	__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	4
__ZTINSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols
