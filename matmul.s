	.file	"matmul.c"
	.file	1 "C:/Users/hp/WorkBuddy/2026-11-10-14-42-16/lec3/src" "matmul.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	1 15 0                          # matmul.c:15:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -148(%rbp)
	movl	%edi, -152(%rbp)
	movq	%rsi, -160(%rbp)
.Ltmp0:
	.loc	1 16 9 prologue_end             # matmul.c:16:9
	leaq	-48(%rbp), %rdi
	leaq	.L__const.main.A(%rip), %rsi
	movl	$36, %edx
	callq	memcpy@PLT
	.loc	1 17 9                          # matmul.c:17:9
	leaq	-96(%rbp), %rdi
	leaq	.L__const.main.B(%rip), %rsi
	movl	$36, %edx
	callq	memcpy@PLT
	.loc	1 18 9                          # matmul.c:18:9
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	movl	$36, %edx
	callq	memset@PLT
.Ltmp1:
	.loc	1 20 14                         # matmul.c:20:14
	cmpl	$1, -152(%rbp)
	jle	.LBB0_10
# %bb.1:
.Ltmp2:
	.loc	1 21 22                         # matmul.c:21:22
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdi
	.loc	1 21 17 is_stmt 0               # matmul.c:21:17
	callq	atoi@PLT
	.loc	1 21 13                         # matmul.c:21:13
	movl	%eax, -164(%rbp)
.Ltmp3:
	.loc	1 22 18 is_stmt 1               # matmul.c:22:18
	movl	$0, -168(%rbp)
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
.Ltmp4:
	.loc	1 22 27 is_stmt 0               # matmul.c:22:27
	cmpl	$3, -168(%rbp)
.Ltmp5:
	.loc	1 22 9                          # matmul.c:22:9
	jge	.LBB0_9
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
.Ltmp6:
	.loc	1 23 22 is_stmt 1               # matmul.c:23:22
	movl	$0, -172(%rbp)
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp7:
	.loc	1 23 31 is_stmt 0               # matmul.c:23:31
	cmpl	$3, -172(%rbp)
.Ltmp8:
	.loc	1 23 13                         # matmul.c:23:13
	jge	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
.Ltmp9:
	.loc	1 23 53                         # matmul.c:23:53
	movl	-164(%rbp), %edx
	.loc	1 23 43                         # matmul.c:23:43
	movslq	-168(%rbp), %rcx
	leaq	-48(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-172(%rbp), %rcx
	.loc	1 23 51                         # matmul.c:23:51
	movl	%edx, (%rax,%rcx,4)
	.loc	1 23 66                         # matmul.c:23:66
	movl	-164(%rbp), %edx
	.loc	1 23 56                         # matmul.c:23:56
	movslq	-168(%rbp), %rcx
	leaq	-96(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-172(%rbp), %rcx
	.loc	1 23 64                         # matmul.c:23:64
	movl	%edx, (%rax,%rcx,4)
.Ltmp10:
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=2
	.loc	1 23 37                         # matmul.c:23:37
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	.loc	1 23 13                         # matmul.c:23:13
	jmp	.LBB0_4
.Ltmp11:
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 23 69                         # matmul.c:23:69
	jmp	.LBB0_8
.Ltmp12:
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	.loc	1 22 33 is_stmt 1               # matmul.c:22:33
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	.loc	1 22 9 is_stmt 0                # matmul.c:22:9
	jmp	.LBB0_2
.Ltmp13:
.LBB0_9:
	.loc	1 24 5 is_stmt 1                # matmul.c:24:5
	jmp	.LBB0_10
.Ltmp14:
.LBB0_10:
	.loc	1 28 14                         # matmul.c:28:14
	movl	$0, -176(%rbp)
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_15 Depth 3
.Ltmp15:
	.loc	1 28 23 is_stmt 0               # matmul.c:28:23
	cmpl	$3, -176(%rbp)
.Ltmp16:
	.loc	1 28 5                          # matmul.c:28:5
	jge	.LBB0_22
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
.Ltmp17:
	.loc	1 29 18 is_stmt 1               # matmul.c:29:18
	movl	$0, -180(%rbp)
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
.Ltmp18:
	.loc	1 29 27 is_stmt 0               # matmul.c:29:27
	cmpl	$3, -180(%rbp)
.Ltmp19:
	.loc	1 29 9                          # matmul.c:29:9
	jge	.LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
.Ltmp20:
	.loc	1 30 22 is_stmt 1               # matmul.c:30:22
	movl	$0, -184(%rbp)
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp21:
	.loc	1 30 31 is_stmt 0               # matmul.c:30:31
	cmpl	$3, -184(%rbp)
.Ltmp22:
	.loc	1 30 13                         # matmul.c:30:13
	jge	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
.Ltmp23:
	.loc	1 31 28 is_stmt 1               # matmul.c:31:28
	movslq	-176(%rbp), %rcx
	leaq	-48(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-184(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	.loc	1 31 38 is_stmt 0               # matmul.c:31:38
	movslq	-184(%rbp), %rcx
	leaq	-96(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-180(%rbp), %rcx
	.loc	1 31 36                         # matmul.c:31:36
	imull	(%rax,%rcx,4), %edx
	.loc	1 31 17                         # matmul.c:31:17
	movslq	-176(%rbp), %rcx
	leaq	-144(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-180(%rbp), %rcx
	.loc	1 31 25                         # matmul.c:31:25
	addl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=3
	.loc	1 30 37 is_stmt 1               # matmul.c:30:37
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	.loc	1 30 13 is_stmt 0               # matmul.c:30:13
	jmp	.LBB0_15
.Ltmp24:
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 31 44 is_stmt 1               # matmul.c:31:44
	jmp	.LBB0_19
.Ltmp25:
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=2
	.loc	1 29 33                         # matmul.c:29:33
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	.loc	1 29 9 is_stmt 0                # matmul.c:29:9
	jmp	.LBB0_13
.Ltmp26:
.LBB0_20:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 31 44 is_stmt 1               # matmul.c:31:44
	jmp	.LBB0_21
.Ltmp27:
.LBB0_21:                               #   in Loop: Header=BB0_11 Depth=1
	.loc	1 28 29                         # matmul.c:28:29
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	.loc	1 28 5 is_stmt 0                # matmul.c:28:5
	jmp	.LBB0_11
.Ltmp28:
.LBB0_22:
	.loc	1 33 14 is_stmt 1               # matmul.c:33:14
	movl	$0, -188(%rbp)
.LBB0_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
.Ltmp29:
	.loc	1 33 23 is_stmt 0               # matmul.c:33:23
	cmpl	$3, -188(%rbp)
.Ltmp30:
	.loc	1 33 5                          # matmul.c:33:5
	jge	.LBB0_30
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
.Ltmp31:
	.loc	1 34 18 is_stmt 1               # matmul.c:34:18
	movl	$0, -192(%rbp)
.LBB0_25:                               #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp32:
	.loc	1 34 27 is_stmt 0               # matmul.c:34:27
	cmpl	$3, -192(%rbp)
.Ltmp33:
	.loc	1 34 9                          # matmul.c:34:9
	jge	.LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=2
.Ltmp34:
	.loc	1 35 28 is_stmt 1               # matmul.c:35:28
	movslq	-188(%rbp), %rcx
	leaq	-144(%rbp), %rax
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-192(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	.loc	1 35 37 is_stmt 0               # matmul.c:35:37
	movl	-192(%rbp), %ecx
	movl	$32, %edx
	movl	$10, %eax
	.loc	1 35 39                         # matmul.c:35:39
	cmpl	$2, %ecx
	.loc	1 35 37                         # matmul.c:35:37
	cmovel	%eax, %edx
	.loc	1 35 13                         # matmul.c:35:13
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=2
	.loc	1 34 33 is_stmt 1               # matmul.c:34:33
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	.loc	1 34 9 is_stmt 0                # matmul.c:34:9
	jmp	.LBB0_25
.Ltmp35:
.LBB0_28:                               #   in Loop: Header=BB0_23 Depth=1
	.loc	1 35 60 is_stmt 1               # matmul.c:35:60
	jmp	.LBB0_29
.Ltmp36:
.LBB0_29:                               #   in Loop: Header=BB0_23 Depth=1
	.loc	1 33 29                         # matmul.c:33:29
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	.loc	1 33 5 is_stmt 0                # matmul.c:33:5
	jmp	.LBB0_23
.Ltmp37:
.LBB0_30:
	.loc	1 36 5 is_stmt 1                # matmul.c:36:5
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_32
# %bb.31:
	xorl	%eax, %eax
	.loc	1 36 5 epilogue_begin is_stmt 0 # matmul.c:36:5
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_32:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 0                           # matmul.c:0
	callq	__stack_chk_fail@PLT
.Ltmp38:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.A,@object        # @__const.main.A
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L__const.main.A:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
	.long	9                               # 0x9
	.size	.L__const.main.A, 36

	.type	.L__const.main.B,@object        # @__const.main.B
	.p2align	4, 0x0
.L__const.main.B:
	.long	9                               # 0x9
	.long	8                               # 0x8
	.long	7                               # 0x7
	.long	6                               # 0x6
	.long	5                               # 0x5
	.long	4                               # 0x4
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	1                               # 0x1
	.size	.L__const.main.B, 36

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d%c"
	.size	.L.str, 5

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1ba DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x11 DW_TAG_variable
	.long	59                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	.L.str
	.byte	3                               # Abbrev [3] 0x3b:0xc DW_TAG_array_type
	.long	71                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x40:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x47:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x4e:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x55:0x14c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	417                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x6e:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350~"
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x7d:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x8c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9a:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa9:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	434                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xb8:0x57 DW_TAG_lexical_block
	.quad	.Ltmp2                          # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp2                  # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0xc5:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334~"
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd4:0x3a DW_TAG_lexical_block
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp13-.Ltmp3                  # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0xe1:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330~"
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xf0:0x1d DW_TAG_lexical_block
	.quad	.Ltmp6                          # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp6                  # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0xfd:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\324~"
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x10f:0x57 DW_TAG_lexical_block
	.quad	.Ltmp14                         # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp14                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x11c:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320~"
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x12b:0x3a DW_TAG_lexical_block
	.quad	.Ltmp17                         # DW_AT_low_pc
	.long	.Ltmp27-.Ltmp17                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x138:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\314~"
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x147:0x1d DW_TAG_lexical_block
	.quad	.Ltmp20                         # DW_AT_low_pc
	.long	.Ltmp25-.Ltmp20                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x154:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310~"
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x166:0x3a DW_TAG_lexical_block
	.quad	.Ltmp28                         # DW_AT_low_pc
	.long	.Ltmp37-.Ltmp28                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x173:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\304~"
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x182:0x1d DW_TAG_lexical_block
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp31                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x18f:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300~"
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1a1:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x1a8:0x5 DW_TAG_pointer_type
	.long	429                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ad:0x5 DW_TAG_pointer_type
	.long	71                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x1b2:0x12 DW_TAG_array_type
	.long	417                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1b7:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	4                               # Abbrev [4] 0x1bd:0x6 DW_TAG_subrange_type
	.long	78                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 22.1.8"          # string offset=0
.Linfo_string1:
	.asciz	"matmul.c"                      # string offset=21
.Linfo_string2:
	.asciz	"C:/Users/hp/WorkBuddy/2026-11-10-14-42-16/lec3/src" # string offset=30
.Linfo_string3:
	.asciz	"char"                          # string offset=81
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=86
.Linfo_string5:
	.asciz	"main"                          # string offset=106
.Linfo_string6:
	.asciz	"int"                           # string offset=111
.Linfo_string7:
	.asciz	"argc"                          # string offset=115
.Linfo_string8:
	.asciz	"argv"                          # string offset=120
.Linfo_string9:
	.asciz	"A"                             # string offset=125
.Linfo_string10:
	.asciz	"B"                             # string offset=127
.Linfo_string11:
	.asciz	"C"                             # string offset=129
.Linfo_string12:
	.asciz	"v"                             # string offset=131
.Linfo_string13:
	.asciz	"i"                             # string offset=133
.Linfo_string14:
	.asciz	"j"                             # string offset=135
.Linfo_string15:
	.asciz	"k"                             # string offset=137
	.ident	"clang version 22.1.8"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym atoi
	.addrsig_sym printf
	.addrsig_sym __stack_chk_fail
	.section	.debug_line,"",@progbits
.Lline_table_start0:
