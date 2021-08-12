	.file	"main.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC0:
	.string	"construct"
	.section	.text._ZN7AStructC2Ei,"axG",@progbits,_ZN7AStructC5Ei,comdat
	.align 2
	.weak	_ZN7AStructC2Ei
	.type	_ZN7AStructC2Ei, @function
_ZN7AStructC2Ei:
.LFB1575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1575:
	.size	_ZN7AStructC2Ei, .-_ZN7AStructC2Ei
	.weak	_ZN7AStructC1Ei
	.set	_ZN7AStructC1Ei,_ZN7AStructC2Ei
	.section	.rodata
.LC1:
	.string	"deconstruct"
	.section	.text._ZN7AStructD2Ev,"axG",@progbits,_ZN7AStructD5Ev,comdat
	.align 2
	.weak	_ZN7AStructD2Ev
	.type	_ZN7AStructD2Ev, @function
_ZN7AStructD2Ev:
.LFB1578:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1578
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1578:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN7AStructD2Ev,"aG",@progbits,_ZN7AStructD5Ev,comdat
.LLSDA1578:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1578-.LLSDACSB1578
.LLSDACSB1578:
.LLSDACSE1578:
	.section	.text._ZN7AStructD2Ev,"axG",@progbits,_ZN7AStructD5Ev,comdat
	.size	_ZN7AStructD2Ev, .-_ZN7AStructD2Ev
	.weak	_ZN7AStructD1Ev
	.set	_ZN7AStructD1Ev,_ZN7AStructD2Ev
	.section	.rodata
.LC2:
	.string	" "
	.text
	.globl	_Z4testO7AStructd
	.type	_Z4testO7AStructd, @function
_Z4testO7AStructd:
.LFB1580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1580:
	.size	_Z4testO7AStructd, .-_Z4testO7AStructd
	.globl	_Z4testOi
	.type	_Z4testOi, @function
_Z4testOi:
.LFB1581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1581:
	.size	_Z4testOi, .-_Z4testOi
	.section	.rodata
.LC3:
	.string	"after i="
.LC4:
	.string	"after 1 i="
.LC5:
	.string	"after 2 i="
.LC6:
	.string	"after 3 i="
.LC7:
	.string	"------------------------"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1584:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1584
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	$42, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_Z12fTestLRvalueIiEvRT_
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rdi
	call	_Z12fTestLRvalueIiEvOT_
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$2, -28(%rbp)
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12fTestLRvalueIiEvOT_
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$2, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_
	movq	%rax, %rdi
	call	_Z12fTestLRvalueIiEvOT_
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	leaq	-36(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN7AStructC1Ei
.LEHE0:
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-36(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_Z12test_forwardIJ7AStructfEEvDpRT_
	movl	$2, -36(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-36(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12test_forwardIJ7AStructfEEvDpRT_
	movl	$123, -20(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12test_forwardIJiEEvDpOT_
.LEHE1:
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7AStructD1Ev
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	%rax, %rbx
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7AStructD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1584:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1584:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1584-.LLSDACSB1584
.LLSDACSB1584:
	.uleb128 .LEHB0-.LFB1584
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1584
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L8-.LFB1584
	.uleb128 0
	.uleb128 .LEHB2-.LFB1584
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1584:
	.text
	.size	main, .-main
	.section	.rodata
.LC9:
	.string	"fTestLRvalue(T&),i="
	.section	.text._Z12fTestLRvalueIiEvRT_,"axG",@progbits,_Z12fTestLRvalueIiEvRT_,comdat
	.weak	_Z12fTestLRvalueIiEvRT_
	.type	_Z12fTestLRvalueIiEvRT_, @function
_Z12fTestLRvalueIiEvRT_:
.LFB1833:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	-8(%rbp), %rax
	movl	$456, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1833:
	.size	_Z12fTestLRvalueIiEvRT_, .-_Z12fTestLRvalueIiEvRT_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB1834:
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
.LFE1834:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
.LC10:
	.string	"fTestLRvalue(T&&),i="
	.section	.text._Z12fTestLRvalueIiEvOT_,"axG",@progbits,_Z12fTestLRvalueIiEvOT_,comdat
	.weak	_Z12fTestLRvalueIiEvOT_
	.type	_Z12fTestLRvalueIiEvOT_, @function
_Z12fTestLRvalueIiEvOT_:
.LFB1835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC10, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	-8(%rbp), %rax
	movl	$345, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1835:
	.size	_Z12fTestLRvalueIiEvOT_, .-_Z12fTestLRvalueIiEvOT_
	.section	.text._ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_,"axG",@progbits,_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_,comdat
	.weak	_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_
	.type	_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_, @function
_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_:
.LFB1836:
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
.LFE1836:
	.size	_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_, .-_ZSt4moveIiEONSt16remove_referenceIT_E4typeEOS1_
	.section	.text._ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB1838:
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
.LFE1838:
	.size	_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.rodata
.LC11:
	.string	"test_forward(Args&... args)"
	.section	.text._Z12test_forwardIJ7AStructfEEvDpRT_,"axG",@progbits,_Z12test_forwardIJ7AStructfEEvDpRT_,comdat
	.weak	_Z12test_forwardIJ7AStructfEEvDpRT_
	.type	_Z12test_forwardIJ7AStructfEEvDpRT_, @function
_Z12test_forwardIJ7AStructfEEvDpRT_:
.LFB1837:
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
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIfEOT_RNSt16remove_referenceIS0_E4typeE
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rbx, %xmm0
	movq	%rax, %rdi
	call	_Z4testO7AStructd
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1837:
	.size	_Z12test_forwardIJ7AStructfEEvDpRT_, .-_Z12test_forwardIJ7AStructfEEvDpRT_
	.section	.rodata
.LC12:
	.string	"test_forward(Args&&... args)"
	.section	.text._Z12test_forwardIJiEEvDpOT_,"axG",@progbits,_Z12test_forwardIJiEEvDpOT_,comdat
	.weak	_Z12test_forwardIJiEEvDpOT_
	.type	_Z12test_forwardIJiEEvDpOT_, @function
_Z12test_forwardIJiEEvDpOT_:
.LFB1839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdi
	call	_Z4testOi
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1839:
	.size	_Z12test_forwardIJiEEvDpOT_, .-_Z12test_forwardIJiEEvDpOT_
	.section	.text._ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB1952:
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
.LFE1952:
	.size	_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI7AStructEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB1953:
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
.LFE1953:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2095:
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
	jne	.L26
	cmpl	$65535, -8(%rbp)
	jne	.L26
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2095:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z4testO7AStructd, @function
_GLOBAL__sub_I__Z4testO7AStructd:
.LFB2096:
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
.LFE2096:
	.size	_GLOBAL__sub_I__Z4testO7AStructd, .-_GLOBAL__sub_I__Z4testO7AStructd
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__Z4testO7AStructd
	.section	.rodata
	.align 4
.LC8:
	.long	1074161254
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
