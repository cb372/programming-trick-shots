	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_popCount               ## -- Begin function popCount
	.p2align	4, 0x90
_popCount:                              ## @popCount
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	andl	$1431655765, %eax       ## imm = 0x55555555
	subl	%eax, %edi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$858993459, %eax        ## imm = 0x33333333
	movl	-4(%rbp), %edi
	shrl	$2, %edi
	andl	$858993459, %edi        ## imm = 0x33333333
	addl	%edi, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %edi
	shrl	$4, %edi
	addl	%edi, %eax
	andl	$252645135, %eax        ## imm = 0xF0F0F0F
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %edi
	shrl	$8, %edi
	addl	%edi, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %edi
	shrl	$16, %edi
	addl	%edi, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$63, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$17459273, -4(%rbp)     ## imm = 0x10A6849
	movl	-4(%rbp), %edi
	callq	_popCount
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


.subsections_via_symbols
