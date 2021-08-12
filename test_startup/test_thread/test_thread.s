	.file	"test_thread.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZNSt6thread2idC2Ev,"axG",@progbits,_ZNSt6thread2idC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread2idC2Ev
	.type	_ZNSt6thread2idC2Ev, @function
_ZNSt6thread2idC2Ev:
.LFB3109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3109:
	.size	_ZNSt6thread2idC2Ev, .-_ZNSt6thread2idC2Ev
	.weak	_ZNSt6thread2idC1Ev
	.set	_ZNSt6thread2idC1Ev,_ZNSt6thread2idC2Ev
	.section	.text._ZNSt6threadD2Ev,"axG",@progbits,_ZNSt6threadD5Ev,comdat
	.align 2
	.weak	_ZNSt6threadD2Ev
	.type	_ZNSt6threadD2Ev, @function
_ZNSt6threadD2Ev:
.LFB3116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6thread8joinableEv
	testb	%al, %al
	je	.L6
	call	_ZSt9terminatev
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3116:
	.size	_ZNSt6threadD2Ev, .-_ZNSt6threadD2Ev
	.weak	_ZNSt6threadD1Ev
	.set	_ZNSt6threadD1Ev,_ZNSt6threadD2Ev
	.section	.text._ZNSt6threadC2EOS_,"axG",@progbits,_ZNSt6threadC5EOS_,comdat
	.align 2
	.weak	_ZNSt6threadC2EOS_
	.type	_ZNSt6threadC2EOS_, @function
_ZNSt6threadC2EOS_:
.LFB3119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6thread4swapERS_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3119:
	.size	_ZNSt6threadC2EOS_, .-_ZNSt6threadC2EOS_
	.weak	_ZNSt6threadC1EOS_
	.set	_ZNSt6threadC1EOS_,_ZNSt6threadC2EOS_
	.section	.text._ZNSt6thread4swapERS_,"axG",@progbits,_ZNSt6thread4swapERS_,comdat
	.align 2
	.weak	_ZNSt6thread4swapERS_
	.type	_ZNSt6thread4swapERS_, @function
_ZNSt6thread4swapERS_:
.LFB3122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3122:
	.size	_ZNSt6thread4swapERS_, .-_ZNSt6thread4swapERS_
	.section	.text._ZNKSt6thread8joinableEv,"axG",@progbits,_ZNKSt6thread8joinableEv,comdat
	.align 2
	.weak	_ZNKSt6thread8joinableEv
	.type	_ZNKSt6thread8joinableEv, @function
_ZNKSt6thread8joinableEv:
.LFB3123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	(%rdx), %rdi
	call	_ZSteqNSt6thread2idES0_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3123:
	.size	_ZNKSt6thread8joinableEv, .-_ZNKSt6thread8joinableEv
	.section	.text._ZSteqNSt6thread2idES0_,"axG",@progbits,_ZSteqNSt6thread2idES0_,comdat
	.weak	_ZSteqNSt6thread2idES0_
	.type	_ZSteqNSt6thread2idES0_, @function
_ZSteqNSt6thread2idES0_:
.LFB3135:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3135:
	.size	_ZSteqNSt6thread2idES0_, .-_ZSteqNSt6thread2idES0_
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev:
.LFB3151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt6threadED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3151:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev:
.LFB3153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3153:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseISt6threadSaIS0_EEC1Ev,_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorISt6threadSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EEC2Ev
	.type	_ZNSt6vectorISt6threadSaIS0_EEC2Ev, @function
_ZNSt6vectorISt6threadSaIS0_EEC2Ev:
.LFB3155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3155:
	.size	_ZNSt6vectorISt6threadSaIS0_EEC2Ev, .-_ZNSt6vectorISt6threadSaIS0_EEC2Ev
	.weak	_ZNSt6vectorISt6threadSaIS0_EEC1Ev
	.set	_ZNSt6vectorISt6threadSaIS0_EEC1Ev,_ZNSt6vectorISt6threadSaIS0_EEC2Ev
	.section	.rodata
.LC0:
	.string	"Print from thread_"
	.text
	.align 2
	.type	_ZZ9spawnTestvENKUlvE_clEv, @function
_ZZ9spawnTestvENKUlvE_clEv:
.LFB3157:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3157:
	.size	_ZZ9spawnTestvENKUlvE_clEv, .-_ZZ9spawnTestvENKUlvE_clEv
	.globl	_Z9spawnTestv
	.type	_Z9spawnTestv, @function
_Z9spawnTestv:
.LFB3147:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3147
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EEC1Ev
	movl	$0, -36(%rbp)
.L19:
	movl	-36(%rbp), %eax
	cmpl	$15, %eax
	jg	.L25
	leaq	-36(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6threadC1IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_
.LEHE0:
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_
.LEHE1:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L19
.L24:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	movq	%rbx, %rax
	jmp	.L22
.L23:
.L22:
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L25:
	nop
	movq	-56(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3147:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3147-.LLSDACSB3147
.LLSDACSB3147:
	.uleb128 .LEHB0-.LFB3147
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L23-.LFB3147
	.uleb128 0
	.uleb128 .LEHB1-.LFB3147
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L24-.LFB3147
	.uleb128 0
	.uleb128 .LEHB2-.LFB3147
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3147:
	.text
	.size	_Z9spawnTestv, .-_Z9spawnTestv
	.section	.rodata
.LC1:
	.string	"Print from main"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3164:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3164
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9spawnTestv
.LEHE3:
	leaq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE5beginEv
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE3endEv
	movq	%rax, -80(%rbp)
.L28:
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	je	.L27
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt6thread4joinEv
.LEHE4:
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv
	jmp	.L28
.L27:
	movl	$1, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EED1Ev
	movl	%ebx, %eax
	jmp	.L32
.L31:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L32:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3164:
	.section	.gcc_except_table
.LLSDA3164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3164-.LLSDACSB3164
.LLSDACSB3164:
	.uleb128 .LEHB3-.LFB3164
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3164
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L31-.LFB3164
	.uleb128 0
	.uleb128 .LEHB5-.LFB3164
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE3164:
	.text
	.size	main, .-main
	.section	.text._ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"axG",@progbits,_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,comdat
	.weak	_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.type	_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, @function
_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB3447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_
	movq	-24(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_
	movq	-32(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3447:
	.size	_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, .-_ZSt4swapINSt6thread2idEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev:
.LFB3450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt6threadEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3450:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt6threadED2Ev,"axG",@progbits,_ZNSaISt6threadED5Ev,comdat
	.align 2
	.weak	_ZNSaISt6threadED2Ev
	.type	_ZNSaISt6threadED2Ev, @function
_ZNSaISt6threadED2Ev:
.LFB3453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3453:
	.size	_ZNSaISt6threadED2Ev, .-_ZNSaISt6threadED2Ev
	.weak	_ZNSaISt6threadED1Ev
	.set	_ZNSaISt6threadED1Ev,_ZNSaISt6threadED2Ev
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev:
.LFB3456:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3456
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3456:
	.section	.gcc_except_table
.LLSDA3456:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3456-.LLSDACSB3456
.LLSDACSB3456:
.LLSDACSE3456:
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev, .-_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseISt6threadSaIS0_EED1Ev,_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev
	.section	.text._ZNSt6vectorISt6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.type	_ZNSt6vectorISt6threadSaIS0_EED2Ev, @function
_ZNSt6vectorISt6threadSaIS0_EED2Ev:
.LFB3459:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3459
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3459:
	.section	.gcc_except_table
.LLSDA3459:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3459-.LLSDACSB3459
.LLSDACSB3459:
.LLSDACSE3459:
	.section	.text._ZNSt6vectorISt6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorISt6threadSaIS0_EED2Ev, .-_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.weak	_ZNSt6vectorISt6threadSaIS0_EED1Ev
	.set	_ZNSt6vectorISt6threadSaIS0_EED1Ev,_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.text
	.align 2
	.type	_ZNSt6threadC2IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_, @function
_ZNSt6threadC2IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_:
.LFB3467:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3467
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	$pthread_create, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6thread14__make_invokerIZ9spawnTestvEUlvE_JEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNS4_IT0_E4typeEEEEEOS5_DpOS8_
	leaq	-40(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEESt10unique_ptrINS_6_StateESt14default_deleteIS7_EEOT_
.LEHE6:
	movq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE7:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	jmp	.L41
.L40:
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L41:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3467:
	.section	.gcc_except_table
.LLSDA3467:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3467-.LLSDACSB3467
.LLSDACSB3467:
	.uleb128 .LEHB6-.LFB3467
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB3467
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L40-.LFB3467
	.uleb128 0
	.uleb128 .LEHB8-.LFB3467
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3467:
	.text
	.size	_ZNSt6threadC2IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_, .-_ZNSt6threadC2IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_
	.set	_ZNSt6threadC1IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_,_ZNSt6threadC2IZ9spawnTestvEUlvE_JEvEEOT_DpOT0_
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_
	.type	_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_, @function
_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_:
.LFB3469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3469:
	.size	_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_, .-_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EE5beginEv
	.type	_ZNSt6vectorISt6threadSaIS0_EE5beginEv, @function
_ZNSt6vectorISt6threadSaIS0_EE5beginEv:
.LFB3473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3473:
	.size	_ZNSt6vectorISt6threadSaIS0_EE5beginEv, .-_ZNSt6vectorISt6threadSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EE3endEv
	.type	_ZNSt6vectorISt6threadSaIS0_EE3endEv, @function
_ZNSt6vectorISt6threadSaIS0_EE3endEv:
.LFB3474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3474:
	.size	_ZNSt6vectorISt6threadSaIS0_EE3endEv, .-_ZNSt6vectorISt6threadSaIS0_EE3endEv
	.section	.text._ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB3475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3475:
	.size	_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv:
.LFB3476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3476:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv:
.LFB3477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3477:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB3559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3559:
	.size	_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSaISt6threadEC2Ev,"axG",@progbits,_ZNSaISt6threadEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt6threadEC2Ev
	.type	_ZNSaISt6threadEC2Ev, @function
_ZNSaISt6threadEC2Ev:
.LFB3561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3561:
	.size	_ZNSaISt6threadEC2Ev, .-_ZNSaISt6threadEC2Ev
	.weak	_ZNSaISt6threadEC1Ev
	.set	_ZNSaISt6threadEC1Ev,_ZNSaISt6threadEC2Ev
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB3564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3564:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6threadED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6threadED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev:
.LFB3567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3567:
	.size	_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6threadED1Ev,_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m:
.LFB3569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3569:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3570:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E:
.LFB3571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt6threadEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3571:
	.size	_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E
	.text
	.type	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3575:
	.size	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	.align 2
	.type	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2IJS0_ELb1EEEDpOT_, @function
_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2IJS0_ELb1EEEDpOT_:
.LFB3583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2IS0_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3583:
	.size	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2IJS0_ELb1EEEDpOT_, .-_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2IJS0_ELb1EEEDpOT_
	.set	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC1IJS0_ELb1EEEDpOT_,_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2IJS0_ELb1EEEDpOT_
	.align 2
	.type	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2IS0_EEOT_, @function
_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2IS0_EEOT_:
.LFB3586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EEC2IS0_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3586:
	.size	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2IS0_EEOT_, .-_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2IS0_EEOT_
	.align 2
	.type	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EEC2IS0_EEOT_, @function
_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EEC2IS0_EEOT_:
.LFB3589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	-8(%rbp), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3589:
	.size	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EEC2IS0_EEOT_, .-_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EEC2IS0_EEOT_
	.type	_ZNSt6thread14__make_invokerIZ9spawnTestvEUlvE_JEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNS4_IT0_E4typeEEEEEOS5_DpOS8_, @function
_ZNSt6thread14__make_invokerIZ9spawnTestvEUlvE_JEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNS4_IT0_E4typeEEEEEOS5_DpOS8_:
.LFB3576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC1IJS0_ELb1EEEDpOT_
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3576:
	.size	_ZNSt6thread14__make_invokerIZ9spawnTestvEUlvE_JEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNS4_IT0_E4typeEEEEEOS5_DpOS8_, .-_ZNSt6thread14__make_invokerIZ9spawnTestvEUlvE_JEEENS_8_InvokerISt5tupleIJNSt5decayIT_E4typeEDpNS4_IT0_E4typeEEEEEOS5_DpOS8_
	.type	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEESt10unique_ptrINS_6_StateESt14default_deleteIS7_EEOT_, @function
_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEESt10unique_ptrINS_6_StateESt14default_deleteIS7_EEOT_:
.LFB3591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %r12
	movl	$16, %edi
	call	_Znwm
	movq	%rax, %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC1EOS5_
	movq	-24(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_
	movq	-24(%rbp), %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3591:
	.size	_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEESt10unique_ptrINS_6_StateESt14default_deleteIS7_EEOT_, .-_ZNSt6thread13_S_make_stateINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEESt10unique_ptrINS_6_StateESt14default_deleteIS7_EEOT_
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev:
.LFB3610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
.L74:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3610:
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev
	.set	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED1Ev,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev
	.section	.text._ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_:
.LFB3612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3612:
	.size	_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.type	_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, @function
_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_:
.LFB3613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L78
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L79
.L78:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE3endEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L79:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE4backEv
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3613:
	.size	_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_, .-_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB3622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3622:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB3624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3624:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6threadEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev:
.LFB3670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3670:
	.size	_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt6threadEC1Ev,_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m:
.LFB3672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3672:
	.size	_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m
	.section	.text._ZSt8_DestroyIPSt6threadEvT_S2_,"axG",@progbits,_ZSt8_DestroyIPSt6threadEvT_S2_,comdat
	.weak	_ZSt8_DestroyIPSt6threadEvT_S2_
	.type	_ZSt8_DestroyIPSt6threadEvT_S2_, @function
_ZSt8_DestroyIPSt6threadEvT_S2_:
.LFB3673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3673:
	.size	_ZSt8_DestroyIPSt6threadEvT_S2_, .-_ZSt8_DestroyIPSt6threadEvT_S2_
	.text
	.type	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEOT_RNSt16remove_referenceIS6_E4typeE, @function
_ZSt7forwardINSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB3676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3676:
	.size	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardINSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZNSt6thread6_StateC2Ev,"axG",@progbits,_ZNSt6thread6_StateC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread6_StateC2Ev
	.type	_ZNSt6thread6_StateC2Ev, @function
_ZNSt6thread6_StateC2Ev:
.LFB3679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$_ZTVNSt6thread6_StateE+16, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3679:
	.size	_ZNSt6thread6_StateC2Ev, .-_ZNSt6thread6_StateC2Ev
	.weak	_ZNSt6thread6_StateC1Ev
	.set	_ZNSt6thread6_StateC1Ev,_ZNSt6thread6_StateC2Ev
	.text
	.align 2
	.type	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2EOS1_, @function
_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2EOS1_:
.LFB3683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2EOS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3683:
	.size	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2EOS1_, .-_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2EOS1_
	.set	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC1EOS1_,_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC2EOS1_
	.align 2
	.type	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC2EOS4_, @function
_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC2EOS4_:
.LFB3685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJZ9spawnTestvEUlvE_EEC1EOS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3685:
	.size	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC2EOS4_, .-_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC2EOS4_
	.set	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC1EOS4_,_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC2EOS4_
	.align 2
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC2EOS5_, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC2EOS5_:
.LFB3687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread6_StateC2Ev
	movl	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE+16, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardINSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEC1EOS4_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3687:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC2EOS5_, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC2EOS5_
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC1EOS5_,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEC2EOS5_
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_:
.LFB3694:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3694
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3694:
	.section	.gcc_except_table
.LLSDA3694:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3694-.LLSDACSB3694
.LLSDACSB3694:
.LLSDACSE3694:
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_
	.set	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC1IS3_vEEPS1_,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv:
.LFB3696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3696:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	.type	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv, @function
_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv:
.LFB3697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3697:
	.size	_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv, .-_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv
	.section	.text._ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB3698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3698:
	.size	_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_,"axG",@progbits,_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
	.type	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_, @function
_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_:
.LFB3699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L102
	movq	(%rax), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L102:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3699:
	.size	_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_, .-_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_
	.section	.text._ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3700:
	.size	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB3701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3701:
	.size	_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.section	.rodata
.LC2:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB3702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movl	$.LC2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE5beginEv
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	$0, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -64(%rbp)
	addq	$8, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-32(%rbp), %rdx
	sarq	$3, %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3702:
	.size	_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE4backEv,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt6threadSaIS0_EE4backEv
	.type	_ZNSt6vectorISt6threadSaIS0_EE4backEv, @function
_ZNSt6vectorISt6threadSaIS0_EE4backEv:
.LFB3705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE3endEv
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3705:
	.size	_ZNSt6vectorISt6threadSaIS0_EE4backEv, .-_ZNSt6vectorISt6threadSaIS0_EE4backEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m:
.LFB3750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3750:
	.size	_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_:
.LFB3751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L113:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L114
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt6threadEPT_RS1_
	movq	%rax, %rdi
	call	_ZSt8_DestroyISt6threadEvPT_
	addq	$8, -8(%rbp)
	jmp	.L113
.L114:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3751:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_
	.text
	.align 2
	.type	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2EOS1_, @function
_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2EOS1_:
.LFB3753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EE7_M_headERS1_
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EEC2IS0_EEOT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3753:
	.size	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2EOS1_, .-_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EEC2EOS1_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC5EPS1_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_:
.LFB3756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv
	movq	%rbx, (%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3756:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_
	.set	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC1EPS1_,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_
	.section	.text._ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3758:
	.size	_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv:
.LFB3759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3759:
	.size	_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB3760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6threadC1EOS_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3760:
	.size	_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc:
.LFB3761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L123
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc
.L123:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv
	cmpq	%rax, -24(%rbp)
	jb	.L124
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv
	cmpq	%rax, -24(%rbp)
	jbe	.L125
.L124:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv
	jmp	.L126
.L125:
	movq	-24(%rbp), %rax
.L126:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3761:
	.size	_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB3762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3762:
	.size	_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIPSt6threadSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm:
.LFB3763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L131
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m
	jmp	.L133
.L131:
	movl	$0, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3763:
	.size	_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, @function
_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB3764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3764:
	.size	_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_
	.type	_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_, @function
_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_:
.LFB3765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3765:
	.size	_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_, .-_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl:
.LFB3766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3766:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEmiEl
	.section	.text._ZSt11__addressofISt6threadEPT_RS1_,"axG",@progbits,_ZSt11__addressofISt6threadEPT_RS1_,comdat
	.weak	_ZSt11__addressofISt6threadEPT_RS1_
	.type	_ZSt11__addressofISt6threadEPT_RS1_, @function
_ZSt11__addressofISt6threadEPT_RS1_:
.LFB3811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3811:
	.size	_ZSt11__addressofISt6threadEPT_RS1_, .-_ZSt11__addressofISt6threadEPT_RS1_
	.section	.text._ZSt8_DestroyISt6threadEvPT_,"axG",@progbits,_ZSt8_DestroyISt6threadEvPT_,comdat
	.weak	_ZSt8_DestroyISt6threadEvPT_
	.type	_ZSt8_DestroyISt6threadEvPT_, @function
_ZSt8_DestroyISt6threadEvPT_:
.LFB3812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3812:
	.size	_ZSt8_DestroyISt6threadEvPT_, .-_ZSt8_DestroyISt6threadEvPT_
	.text
	.type	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EE7_M_headERS1_, @function
_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EE7_M_headERS1_:
.LFB3813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EE7_M_headERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3813:
	.size	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EE7_M_headERS1_, .-_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EE7_M_headERS1_
	.section	.text._ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv,"axG",@progbits,_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC5IS2_S4_Lb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.type	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, @function
_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv:
.LFB3815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3815:
	.size	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, .-_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.weak	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	.set	_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv,_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.section	.text._ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB3817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3817:
	.size	_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3818:
	.size	_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv:
.LFB3819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3819:
	.size	_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv
	.section	.text._ZNKSt6vectorISt6threadSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv, @function
_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv:
.LFB3820:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3820:
	.size	_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv, .-_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L154
	movq	-16(%rbp), %rax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3821:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m:
.LFB3822:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3822:
	.size	_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE:
.LFB3823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3823:
	.size	_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorISt6threadSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_:
.LFB3824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6threadD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3824:
	.size	_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_
	.text
	.type	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EE7_M_headERS1_, @function
_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EE7_M_headERS1_:
.LFB3849:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3849:
	.size	_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EE7_M_headERS1_, .-_ZNSt10_Head_baseILm0EZ9spawnTestvEUlvE_Lb0EE7_M_headERS1_
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev:
.LFB3851:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3851:
	.size	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev, .-_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC1Ev,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_:
.LFB3853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3853:
	.size	_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB3854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3854:
	.size	_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_:
.LFB3855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movabsq	$1152921504606846975, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3855:
	.size	_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorISt6threadSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3856:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3856:
	.size	_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv:
.LFB3857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L173
	call	_ZSt17__throw_bad_allocv
.L173:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3857:
	.size	_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt6threadET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt6threadET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt6threadET_S2_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3858:
	.size	_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev:
.LFB3870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3870:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev:
.LFB3873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3873:
	.size	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev, .-_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC1Ev,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_:
.LFB3875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3875:
	.size	_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_:
.LFB3876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3876:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_
	.section	.text._ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_:
.LFB3877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3877:
	.size	_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L186
	movq	-16(%rbp), %rax
	jmp	.L187
.L186:
	movq	-8(%rbp), %rax
.L187:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3878:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv:
.LFB3879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3879:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv
	.section	.text._ZSt12__niter_baseIPSt6threadET_S2_,"axG",@progbits,_ZSt12__niter_baseIPSt6threadET_S2_,comdat
	.weak	_ZSt12__niter_baseIPSt6threadET_S2_
	.type	_ZSt12__niter_baseIPSt6threadET_S2_, @function
_ZSt12__niter_baseIPSt6threadET_S2_:
.LFB3880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3880:
	.size	_ZSt12__niter_baseIPSt6threadET_S2_, .-_ZSt12__niter_baseIPSt6threadET_S2_
	.section	.text._ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L194:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L193
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt6threadEPT_RS1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt6threadEPT_RS1_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_
	addq	$8, -40(%rbp)
	addq	$8, -24(%rbp)
	jmp	.L194
.L193:
	movq	-24(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3881:
	.size	_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt14__relocate_a_1IPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev:
.LFB3885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3885:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_:
.LFB3887:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3887:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_, .-_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_
	.section	.text._ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_:
.LFB3888:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt6threadEPT_RS1_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3888:
	.size	_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_
	.section	.rodata
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEE6_M_runEv
	.text
	.align 2
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED2Ev:
.LFB3890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE+16, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread6_StateD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3890:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED2Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED2Ev
	.align 2
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED0Ev:
.LFB3892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3892:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEED0Ev
	.section	.rodata
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE, 73
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE:
	.string	"*NSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE"
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3909:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L204
	cmpl	$65535, -8(%rbp)
	jne	.L204
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L204:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3909:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align 2
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEE6_M_runEv:
.LFB3910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEclEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3910:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEEE6_M_runEv
	.align 2
	.type	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEclEv, @function
_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEclEv:
.LFB3911:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3911:
	.size	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEclEv, .-_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEEclEv
	.align 2
	.type	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE, @function
_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE:
.LFB3912:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt5tupleIJZ9spawnTestvEUlvE_EEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdi
	call	_ZSt3getILm0EJZ9spawnTestvEUlvE_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS5_
	movq	%rax, %rdi
	call	_ZSt8__invokeIZ9spawnTestvEUlvE_JEENSt15__invoke_resultIT_JDpT0_EE4typeEOS2_DpOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3912:
	.size	_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE, .-_ZNSt6thread8_InvokerISt5tupleIJZ9spawnTestvEUlvE_EEE9_M_invokeIJLm0EEEEvSt12_Index_tupleIJXspT_EEE
	.type	_ZSt4moveIRSt5tupleIJZ9spawnTestvEUlvE_EEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt5tupleIJZ9spawnTestvEUlvE_EEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB3914:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3914:
	.size	_ZSt4moveIRSt5tupleIJZ9spawnTestvEUlvE_EEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt5tupleIJZ9spawnTestvEUlvE_EEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt3getILm0EJZ9spawnTestvEUlvE_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS5_, @function
_ZSt3getILm0EJZ9spawnTestvEUlvE_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS5_:
.LFB3915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJZ9spawnTestvEUlvE_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_
	movq	%rax, %rdi
	call	_ZSt7forwardIOZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3915:
	.size	_ZSt3getILm0EJZ9spawnTestvEUlvE_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS5_, .-_ZSt3getILm0EJZ9spawnTestvEUlvE_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS5_
	.type	_ZSt8__invokeIZ9spawnTestvEUlvE_JEENSt15__invoke_resultIT_JDpT0_EE4typeEOS2_DpOS3_, @function
_ZSt8__invokeIZ9spawnTestvEUlvE_JEENSt15__invoke_resultIT_JDpT0_EE4typeEOS2_DpOS3_:
.LFB3916:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdi
	call	_ZSt13__invoke_implIvZ9spawnTestvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3916:
	.size	_ZSt8__invokeIZ9spawnTestvEUlvE_JEENSt15__invoke_resultIT_JDpT0_EE4typeEOS2_DpOS3_, .-_ZSt8__invokeIZ9spawnTestvEUlvE_JEENSt15__invoke_resultIT_JDpT0_EE4typeEOS2_DpOS3_
	.type	_ZSt3getILm0EJZ9spawnTestvEUlvE_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_, @function
_ZSt3getILm0EJZ9spawnTestvEUlvE_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_:
.LFB3917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EZ9spawnTestvEUlvE_JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3917:
	.size	_ZSt3getILm0EJZ9spawnTestvEUlvE_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_, .-_ZSt3getILm0EJZ9spawnTestvEUlvE_EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_
	.type	_ZSt7forwardIOZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIOZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3918:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3918:
	.size	_ZSt7forwardIOZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIOZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt13__invoke_implIvZ9spawnTestvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_, @function
_ZSt13__invoke_implIvZ9spawnTestvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_:
.LFB3919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIZ9spawnTestvEUlvE_EOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdi
	call	_ZZ9spawnTestvENKUlvE_clEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3919:
	.size	_ZSt13__invoke_implIvZ9spawnTestvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_, .-_ZSt13__invoke_implIvZ9spawnTestvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_
	.type	_ZSt12__get_helperILm0EZ9spawnTestvEUlvE_JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE, @function
_ZSt12__get_helperILm0EZ9spawnTestvEUlvE_JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE:
.LFB3920:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJZ9spawnTestvEUlvE_EE7_M_headERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3920:
	.size	_ZSt12__get_helperILm0EZ9spawnTestvEUlvE_JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE, .-_ZSt12__get_helperILm0EZ9spawnTestvEUlvE_JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE
	.type	_GLOBAL__sub_I__Z9spawnTestv, @function
_GLOBAL__sub_I__Z9spawnTestv:
.LFB3921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3921:
	.size	_GLOBAL__sub_I__Z9spawnTestv, .-_GLOBAL__sub_I__Z9spawnTestv
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__Z9spawnTestv
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
