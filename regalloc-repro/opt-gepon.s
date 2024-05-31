	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx908"
	.amdhsa_code_object_version 5
	.protected	fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite ; -- Begin function fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite
	.globl	fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite
	.p2align	8
	.type	fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite,@function
fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite: ; @fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite
; %bb.0:                                ; %entry
	s_load_dwordx4 s[0:3], s[4:5], 0x18
	s_load_dwordx2 s[28:29], s[4:5], 0x28
	s_mov_b32 s7, 0
	s_mov_b64 s[24:25], 0
	s_waitcnt lgkmcnt(0)
	s_load_dwordx2 s[30:31], s[0:1], 0x8
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s30, -1
	s_addc_u32 s9, s31, -1
	s_lshr_b64 s[8:9], s[8:9], 4
	s_add_u32 s34, s8, 1
	s_addc_u32 s35, s9, 0
	v_mov_b32_e32 v1, s34
	v_mov_b32_e32 v2, s35
	v_cmp_lt_u64_e32 vcc, s[6:7], v[1:2]
	s_cbranch_vccnz .LBB0_2
; %bb.1:
	v_cvt_f32_u32_e32 v1, s34
	s_sub_i32 s8, 0, s34
	s_mov_b32 s25, s7
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s9, v1
	s_mul_i32 s8, s8, s9
	s_mul_hi_u32 s8, s9, s8
	s_add_i32 s9, s9, s8
	s_mul_hi_u32 s8, s6, s9
	s_mul_i32 s10, s8, s34
	s_sub_i32 s10, s6, s10
	s_add_i32 s9, s8, 1
	s_sub_i32 s11, s10, s34
	s_cmp_ge_u32 s10, s34
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s10, s11, s10
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s10, s34
	s_cselect_b32 s24, s9, s8
.LBB0_2:
	s_load_dwordx4 s[12:15], s[4:5], 0x68
	s_load_dwordx4 s[20:23], s[2:3], 0x0
	s_load_dwordx4 s[8:11], s[28:29], 0x0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s9, s24, s35
	s_mul_hi_u32 s16, s24, s34
	s_add_i32 s16, s16, s9
	s_mul_i32 s9, s24, s34
	s_sub_u32 s36, s6, s9
	s_subb_u32 s37, 0, s16
	v_mov_b32_e32 v1, s36
	v_alignbit_b32 v1, s37, v1, 28
	v_mul_lo_u32 v2, s22, v1
	s_load_dwordx2 s[26:27], s[4:5], 0x0
	s_load_dwordx4 s[16:19], s[4:5], 0x8
	s_lshl_b64 s[4:5], s[36:37], 4
	s_mul_hi_u32 s9, s22, s4
	v_mul_lo_u32 v1, s10, v1
	v_add_u32_e32 v2, s9, v2
	s_mul_i32 s9, s23, s4
	v_add_u32_e32 v4, s9, v2
	s_mul_i32 s9, s22, s4
	v_mov_b32_e32 v3, s9
	s_mul_hi_u32 s9, s10, s4
	v_add_u32_e32 v1, s9, v1
	s_mul_i32 s9, s11, s4
	s_waitcnt lgkmcnt(0)
	v_cmp_lt_u64_e64 s[36:37], s[18:19], 3
	v_add_u32_e32 v5, s9, v1
	s_mul_i32 s9, s10, s4
	v_mov_b32_e32 v53, s9
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB0_11
; %bb.3:                                ; %for.body.preheader
	s_add_u32 s36, s28, 16
	s_addc_u32 s37, s29, 0
	s_add_u32 s38, s2, 16
	s_addc_u32 s39, s3, 0
	s_add_u32 s40, s0, 16
	v_mov_b32_e32 v1, s18
	s_addc_u32 s41, s1, 0
	s_mov_b64 s[42:43], 2
	s_mov_b32 s44, 0
	v_mov_b32_e32 v2, s19
	s_branch .LBB0_5
.LBB0_4:                                ;   in Loop: Header=BB0_5 Depth=1
	s_mul_i32 s9, s46, s35
	s_mul_hi_u32 s11, s46, s34
	s_add_i32 s9, s11, s9
	s_mul_i32 s11, s47, s34
	s_add_i32 s35, s9, s11
	s_mul_i32 s9, s0, s47
	s_mul_hi_u32 s11, s0, s46
	s_add_i32 s9, s11, s9
	s_mul_i32 s11, s1, s46
	s_load_dwordx2 s[48:49], s[38:39], 0x0
	s_add_i32 s9, s9, s11
	s_mul_i32 s11, s0, s46
	s_sub_u32 s11, s24, s11
	s_subb_u32 s9, s25, s9
	s_load_dwordx2 s[24:25], s[36:37], 0x0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s21, s48, s9
	s_mul_hi_u32 s23, s48, s11
	s_add_i32 s21, s23, s21
	s_mul_i32 s23, s49, s11
	s_add_i32 s21, s21, s23
	v_mov_b32_e32 v6, s21
	s_mul_i32 s9, s24, s9
	s_mul_hi_u32 s21, s24, s11
	s_add_i32 s9, s21, s9
	s_mul_i32 s21, s25, s11
	s_add_i32 s9, s9, s21
	s_mul_i32 s23, s48, s11
	s_add_u32 s42, s42, 1
	v_add_co_u32_e32 v3, vcc, s23, v3
	s_addc_u32 s43, s43, 0
	v_addc_co_u32_e32 v4, vcc, v6, v4, vcc
	s_mul_i32 s11, s24, s11
	s_add_u32 s36, s36, 8
	v_mov_b32_e32 v6, s9
	v_add_co_u32_e32 v53, vcc, s11, v53
	s_addc_u32 s37, s37, 0
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	s_add_u32 s38, s38, 8
	s_addc_u32 s39, s39, 0
	v_cmp_ge_u64_e32 vcc, s[42:43], v[1:2]
	s_add_u32 s40, s40, 8
	s_mul_i32 s34, s46, s34
	s_addc_u32 s41, s41, 0
	s_mov_b64 s[24:25], s[0:1]
	s_cbranch_vccnz .LBB0_9
.LBB0_5:                                ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	s_load_dwordx2 s[46:47], s[40:41], 0x0
	s_waitcnt lgkmcnt(0)
	s_or_b64 s[0:1], s[24:25], s[46:47]
	s_mov_b32 s45, s1
	s_cmp_lg_u64 s[44:45], 0
	s_cbranch_scc0 .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	v_cvt_f32_u32_e32 v6, s46
	v_cvt_f32_u32_e32 v7, s47
	s_sub_u32 s0, 0, s46
	s_subb_u32 s1, 0, s47
	v_mac_f32_e32 v6, 0x4f800000, v7
	v_rcp_f32_e32 v6, v6
	v_mul_f32_e32 v6, 0x5f7ffffc, v6
	v_mul_f32_e32 v7, 0x2f800000, v6
	v_trunc_f32_e32 v7, v7
	v_mac_f32_e32 v6, 0xcf800000, v7
	v_cvt_u32_f32_e32 v7, v7
	v_cvt_u32_f32_e32 v6, v6
	v_readfirstlane_b32 s9, v7
	v_readfirstlane_b32 s11, v6
	s_mul_i32 s21, s0, s9
	s_mul_hi_u32 s33, s0, s11
	s_mul_i32 s23, s1, s11
	s_add_i32 s21, s33, s21
	s_mul_i32 s45, s0, s11
	s_add_i32 s21, s21, s23
	s_mul_hi_u32 s23, s11, s21
	s_mul_i32 s33, s11, s21
	s_mul_hi_u32 s11, s11, s45
	s_add_u32 s11, s11, s33
	s_addc_u32 s23, 0, s23
	s_mul_hi_u32 s48, s9, s45
	s_mul_i32 s45, s9, s45
	s_add_u32 s11, s11, s45
	s_mul_hi_u32 s33, s9, s21
	s_addc_u32 s11, s23, s48
	s_addc_u32 s23, s33, 0
	s_mul_i32 s21, s9, s21
	s_add_u32 s11, s11, s21
	s_addc_u32 s21, 0, s23
	v_add_co_u32_e32 v6, vcc, s11, v6
	s_cmp_lg_u64 vcc, 0
	s_addc_u32 s9, s9, s21
	v_readfirstlane_b32 s21, v6
	s_mul_i32 s11, s0, s9
	s_mul_hi_u32 s23, s0, s21
	s_add_i32 s11, s23, s11
	s_mul_i32 s1, s1, s21
	s_add_i32 s11, s11, s1
	s_mul_i32 s0, s0, s21
	s_mul_hi_u32 s23, s9, s0
	s_mul_i32 s33, s9, s0
	s_mul_i32 s48, s21, s11
	s_mul_hi_u32 s0, s21, s0
	s_mul_hi_u32 s45, s21, s11
	s_add_u32 s0, s0, s48
	s_addc_u32 s21, 0, s45
	s_add_u32 s0, s0, s33
	s_mul_hi_u32 s1, s9, s11
	s_addc_u32 s0, s21, s23
	s_addc_u32 s1, s1, 0
	s_mul_i32 s11, s9, s11
	s_add_u32 s0, s0, s11
	s_addc_u32 s1, 0, s1
	v_add_co_u32_e32 v6, vcc, s0, v6
	s_cmp_lg_u64 vcc, 0
	s_addc_u32 s0, s9, s1
	v_readfirstlane_b32 s11, v6
	s_mul_i32 s9, s24, s0
	s_mul_hi_u32 s21, s24, s11
	s_mul_hi_u32 s1, s24, s0
	s_add_u32 s9, s21, s9
	s_addc_u32 s1, 0, s1
	s_mul_hi_u32 s23, s25, s11
	s_mul_i32 s11, s25, s11
	s_add_u32 s9, s9, s11
	s_mul_hi_u32 s21, s25, s0
	s_addc_u32 s1, s1, s23
	s_addc_u32 s9, s21, 0
	s_mul_i32 s0, s25, s0
	s_add_u32 s11, s1, s0
	s_addc_u32 s9, 0, s9
	s_mul_i32 s0, s46, s9
	s_mul_hi_u32 s1, s46, s11
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s47, s11
	s_add_i32 s21, s0, s1
	s_mul_i32 s1, s46, s11
	v_mov_b32_e32 v6, s1
	s_sub_i32 s0, s25, s21
	v_sub_co_u32_e32 v6, vcc, s24, v6
	s_cmp_lg_u64 vcc, 0
	s_subb_u32 s23, s0, s47
	v_subrev_co_u32_e64 v7, s[0:1], s46, v6
	s_cmp_lg_u64 s[0:1], 0
	s_subb_u32 s0, s23, 0
	s_cmp_ge_u32 s0, s47
	v_readfirstlane_b32 s23, v7
	s_cselect_b32 s1, -1, 0
	s_cmp_ge_u32 s23, s46
	s_cselect_b32 s23, -1, 0
	s_cmp_eq_u32 s0, s47
	s_cselect_b32 s0, s23, s1
	s_add_u32 s1, s11, 1
	s_addc_u32 s23, s9, 0
	s_add_u32 s33, s11, 2
	s_addc_u32 s45, s9, 0
	s_cmp_lg_u32 s0, 0
	s_cselect_b32 s0, s33, s1
	s_cselect_b32 s1, s45, s23
	s_cmp_lg_u64 vcc, 0
	s_subb_u32 s21, s25, s21
	s_cmp_ge_u32 s21, s47
	v_readfirstlane_b32 s33, v6
	s_cselect_b32 s23, -1, 0
	s_cmp_ge_u32 s33, s46
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s21, s47
	s_cselect_b32 s21, s33, s23
	s_cmp_lg_u32 s21, 0
	s_cselect_b32 s1, s1, s9
	s_cselect_b32 s0, s0, s11
	s_cbranch_execnz .LBB0_4
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_5 Depth=1
                                        ; implicit-def: $sgpr0_sgpr1
.LBB0_8:                                ;   in Loop: Header=BB0_5 Depth=1
	v_cvt_f32_u32_e32 v6, s46
	s_sub_i32 s0, 0, s46
	v_rcp_iflag_f32_e32 v6, v6
	v_mul_f32_e32 v6, 0x4f7ffffe, v6
	v_cvt_u32_f32_e32 v6, v6
	v_readfirstlane_b32 s1, v6
	s_mul_i32 s0, s0, s1
	s_mul_hi_u32 s0, s1, s0
	s_add_i32 s1, s1, s0
	s_mul_hi_u32 s0, s24, s1
	s_mul_i32 s9, s0, s46
	s_sub_i32 s9, s24, s9
	s_add_i32 s1, s0, 1
	s_sub_i32 s11, s9, s46
	s_cmp_ge_u32 s9, s46
	s_cselect_b32 s0, s1, s0
	s_cselect_b32 s9, s11, s9
	s_add_i32 s1, s0, 1
	s_cmp_ge_u32 s9, s46
	s_cselect_b32 s0, s1, s0
	s_mov_b32 s1, s44
	s_branch .LBB0_4
.LBB0_9:                                ; %for.cond.cleanup.loopexit
	v_mov_b32_e32 v1, s34
	v_mov_b32_e32 v2, s35
	v_cmp_lt_u64_e32 vcc, s[6:7], v[1:2]
	s_mov_b64 s[24:25], 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	v_cvt_f32_u32_e32 v1, s34
	s_sub_i32 s0, 0, s34
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s1, v1
	s_mul_i32 s0, s0, s1
	s_mul_hi_u32 s0, s1, s0
	s_add_i32 s1, s1, s0
	s_mul_hi_u32 s0, s6, s1
	s_mul_i32 s7, s0, s34
	s_sub_i32 s6, s6, s7
	s_add_i32 s1, s0, 1
	s_sub_i32 s7, s6, s34
	s_cmp_ge_u32 s6, s34
	s_cselect_b32 s0, s1, s0
	s_cselect_b32 s6, s7, s6
	s_add_i32 s1, s0, 1
	s_cmp_ge_u32 s6, s34
	s_cselect_b32 s24, s1, s0
.LBB0_11:                               ; %Flow63
	s_lshl_b64 s[0:1], s[18:19], 3
	s_add_u32 s2, s2, s0
	s_addc_u32 s3, s3, s1
	s_add_u32 s28, s28, s0
	v_and_b32_e32 v54, 15, v0
	s_addc_u32 s29, s29, s1
	v_lshrrev_b32_e32 v23, 4, v0
	s_add_u32 s0, s4, 16
	v_mul_lo_u32 v5, s22, v54
	v_mul_lo_u32 v4, s20, v23
	v_mov_b32_e32 v1, s30
	v_or_b32_e32 v21, s4, v54
	v_mov_b32_e32 v22, s5
	s_addc_u32 s1, s5, 0
	v_mov_b32_e32 v2, s31
	v_cmp_le_u64_e32 vcc, s[0:1], v[1:2]
	v_cmp_gt_u64_e64 s[0:1], s[30:31], v[21:22]
	v_add_lshl_u32 v1, v5, v4, 4
	s_or_b64 vcc, vcc, s[0:1]
	v_cndmask_b32_e32 v6, -1, v1, vcc
	v_add_u32_e32 v1, 25, v23
	v_mul_lo_u32 v1, s20, v1
	s_load_dword s2, s[2:3], 0x0
	s_mov_b32 s3, 0x20000
	s_mov_b32 s0, s12
	v_add_lshl_u32 v1, v5, v1, 4
	v_cndmask_b32_e32 v7, -1, v1, vcc
	v_add_u32_e32 v1, 50, v23
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s2, s24
	v_mul_lo_u32 v8, s20, v1
	v_add_u32_e32 v3, s2, v3
	v_lshlrev_b32_e32 v2, 4, v3
	s_mov_b32 s2, -2
	s_mov_b32 s1, s13
	v_readfirstlane_b32 s4, v2
	v_add_u32_e32 v1, 0x4b, v23
	v_mul_lo_u32 v9, s20, v1
	s_nop 2
	buffer_load_dwordx4 v[1:4], v6, s[0:3], s4 offen
	buffer_load_dwordx4 v[13:16], v7, s[0:3], s4 offen
	v_add_lshl_u32 v6, v5, v8, 4
	v_add_u32_e32 v8, 0x64, v23
	v_mul_lo_u32 v8, s20, v8
	v_add_lshl_u32 v7, v5, v9, 4
	v_cndmask_b32_e32 v6, -1, v6, vcc
	v_cndmask_b32_e32 v7, -1, v7, vcc
	v_add_lshl_u32 v5, v5, v8, 4
	v_cndmask_b32_e32 v5, -1, v5, vcc
	buffer_load_dwordx4 v[17:20], v6, s[0:3], s4 offen
	buffer_load_dwordx4 v[9:12], v7, s[0:3], s4 offen
	s_mov_b32 s12, 0x134454ff
	buffer_load_dwordx4 v[5:8], v5, s[0:3], s4 offen
	s_mov_b32 s13, 0xbfee6f0e
	s_mov_b32 s21, 0x3fee6f0e
	s_mov_b32 s20, s12
	s_mov_b32 s6, 0x4755a5e
	s_mov_b32 s7, 0xbfe2cf23
	s_mov_b32 s19, 0x3fe2cf23
	s_mov_b32 s18, s6
	s_mov_b32 s4, 0x372fe950
	s_mov_b32 s5, 0x3fd3c6ef
	v_mul_lo_u16_e32 v25, 52, v23
	v_lshrrev_b16_e32 v25, 8, v25
	v_mul_lo_u16_e32 v52, 5, v25
	v_mul_u32_u24_e32 v24, 0x50, v23
	v_lshlrev_b32_e32 v22, 4, v54
	v_lshlrev_b32_e32 v24, 4, v24
	v_add3_u32 v24, 0, v24, v22
	s_load_dword s0, s[28:29], 0x0
	s_movk_i32 s1, 0x7d
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s0, s24
	v_add_u32_e32 v53, s0, v53
	v_lshlrev_b32_e32 v53, 4, v53
	v_readfirstlane_b32 s9, v53
	s_mov_b32 s0, s14
	s_waitcnt vmcnt(3)
	v_add_f64 v[26:27], v[1:2], v[13:14]
	v_add_f64 v[44:45], v[3:4], v[15:16]
	s_waitcnt vmcnt(2)
	v_add_f64 v[34:35], v[13:14], -v[17:18]
	s_waitcnt vmcnt(1)
	v_add_f64 v[28:29], v[17:18], v[9:10]
	v_add_f64 v[46:47], v[19:20], v[11:12]
	s_waitcnt vmcnt(0)
	v_add_f64 v[36:37], v[5:6], -v[9:10]
	v_add_f64 v[38:39], v[13:14], v[5:6]
	v_add_f64 v[55:56], v[15:16], v[7:8]
	v_add_f64 v[30:31], v[15:16], -v[7:8]
	v_add_f64 v[32:33], v[19:20], -v[11:12]
	v_add_f64 v[40:41], v[17:18], -v[13:14]
	v_add_f64 v[13:14], v[13:14], -v[5:6]
	v_add_f64 v[48:49], v[17:18], -v[9:10]
	v_add_f64 v[50:51], v[15:16], -v[19:20]
	v_add_f64 v[15:16], v[19:20], -v[15:16]
	v_add_f64 v[34:35], v[34:35], v[36:37]
	v_add_f64 v[36:37], v[11:12], -v[7:8]
	v_add_f64 v[17:18], v[26:27], v[17:18]
	v_fma_f64 v[26:27], v[28:29], -0.5, v[1:2]
	v_fma_f64 v[1:2], v[38:39], -0.5, v[1:2]
	v_add_f64 v[19:20], v[44:45], v[19:20]
	v_fma_f64 v[38:39], v[46:47], -0.5, v[3:4]
	v_fma_f64 v[3:4], v[55:56], -0.5, v[3:4]
	v_add_f64 v[42:43], v[9:10], -v[5:6]
	v_add_f64 v[57:58], v[7:8], -v[11:12]
	v_add_f64 v[36:37], v[15:16], v[36:37]
	v_add_f64 v[9:10], v[17:18], v[9:10]
	v_fma_f64 v[15:16], v[30:31], s[12:13], v[26:27]
	v_add_f64 v[11:12], v[19:20], v[11:12]
	v_fma_f64 v[19:20], v[13:14], s[20:21], v[38:39]
	v_fma_f64 v[17:18], v[30:31], s[20:21], v[26:27]
	v_fma_f64 v[26:27], v[32:33], s[20:21], v[1:2]
	v_fma_f64 v[44:45], v[48:49], s[12:13], v[3:4]
	v_add_f64 v[28:29], v[40:41], v[42:43]
	v_fma_f64 v[42:43], v[32:33], s[12:13], v[1:2]
	v_fma_f64 v[46:47], v[48:49], s[20:21], v[3:4]
	v_fma_f64 v[38:39], v[13:14], s[12:13], v[38:39]
	v_add_f64 v[40:41], v[50:51], v[57:58]
	v_add_f64 v[1:2], v[9:10], v[5:6]
	v_fma_f64 v[5:6], v[32:33], s[6:7], v[15:16]
	v_add_f64 v[3:4], v[11:12], v[7:8]
	v_fma_f64 v[7:8], v[48:49], s[18:19], v[19:20]
	v_fma_f64 v[15:16], v[30:31], s[6:7], v[26:27]
	v_fma_f64 v[11:12], v[13:14], s[18:19], v[44:45]
	v_fma_f64 v[9:10], v[32:33], s[18:19], v[17:18]
	v_fma_f64 v[17:18], v[30:31], s[18:19], v[42:43]
	v_fma_f64 v[19:20], v[13:14], s[6:7], v[46:47]
	v_fma_f64 v[30:31], v[48:49], s[6:7], v[38:39]
	v_fma_f64 v[5:6], v[34:35], s[4:5], v[5:6]
	v_fma_f64 v[7:8], v[40:41], s[4:5], v[7:8]
	v_fma_f64 v[13:14], v[28:29], s[4:5], v[15:16]
	v_fma_f64 v[15:16], v[36:37], s[4:5], v[11:12]
	v_fma_f64 v[9:10], v[34:35], s[4:5], v[9:10]
	v_fma_f64 v[26:27], v[28:29], s[4:5], v[17:18]
	v_fma_f64 v[28:29], v[36:37], s[4:5], v[19:20]
	v_fma_f64 v[11:12], v[40:41], s[4:5], v[30:31]
	v_sub_u16_e32 v17, v23, v52
	v_and_b32_e32 v17, 0xff, v17
	v_lshlrev_b32_e32 v18, 6, v17
	ds_write_b128 v24, v[1:4]
	ds_write_b128 v24, v[5:8] offset:256
	ds_write_b128 v24, v[13:16] offset:512
	ds_write_b128 v24, v[26:29] offset:768
	ds_write_b128 v24, v[9:12] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_dwordx4 v[13:16], v18, s[26:27]
	global_load_dwordx4 v[9:12], v18, s[26:27] offset:16
	global_load_dwordx4 v[5:8], v18, s[26:27] offset:32
	global_load_dwordx4 v[1:4], v18, s[26:27] offset:48
	v_and_b32_e32 v18, 0x1f0, v0
	v_lshlrev_b32_e32 v18, 4, v18
	v_add3_u32 v24, 0, v18, v22
	v_mul_u32_u24_e32 v20, 25, v25
	ds_read_b128 v[25:28], v24
	ds_read_b128 v[29:32], v24 offset:6400
	ds_read_b128 v[33:36], v24 offset:12800
	ds_read_b128 v[37:40], v24 offset:19200
	ds_read_b128 v[41:44], v24 offset:25600
	v_mul_lo_u16_e32 v19, 21, v23
	v_lshrrev_b16_e32 v18, 9, v19
	v_mul_lo_u16_e32 v18, 25, v18
	v_sub_u16_e32 v23, v23, v18
	v_and_b32_e32 v55, 0xff, v23
	v_lshlrev_b32_e32 v56, 6, v55
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	v_mul_u32_u24_e32 v0, 0xa4, v0
	v_mul_lo_u16_sdwa v0, v0, s1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_add_u32_e32 v0, v0, v55
	v_add_u32_e32 v53, 0x4b, v0
	s_mov_b32 s1, s15
	v_mul_f64 v[18:19], v[31:32], v[15:16]
	v_mul_f64 v[15:16], v[29:30], v[15:16]
	v_mul_f64 v[45:46], v[35:36], v[11:12]
	v_mul_f64 v[11:12], v[33:34], v[11:12]
	v_mul_f64 v[47:48], v[39:40], v[7:8]
	v_mul_f64 v[7:8], v[37:38], v[7:8]
	v_mul_f64 v[49:50], v[41:42], v[3:4]
	v_mul_f64 v[3:4], v[43:44], v[3:4]
	v_fma_f64 v[18:19], v[29:30], v[13:14], v[18:19]
	v_fma_f64 v[13:14], v[31:32], v[13:14], -v[15:16]
	v_fma_f64 v[15:16], v[33:34], v[9:10], v[45:46]
	v_fma_f64 v[9:10], v[35:36], v[9:10], -v[11:12]
	v_fma_f64 v[11:12], v[37:38], v[5:6], v[47:48]
	v_fma_f64 v[5:6], v[39:40], v[5:6], -v[7:8]
	v_fma_f64 v[29:30], v[43:44], v[1:2], -v[49:50]
	v_fma_f64 v[1:2], v[41:42], v[1:2], v[3:4]
	v_add_lshl_u32 v7, v20, v17, 8
	v_add3_u32 v57, 0, v7, v22
	v_add_f64 v[3:4], v[25:26], v[18:19]
	v_add_f64 v[43:44], v[27:28], v[13:14]
	v_add_f64 v[7:8], v[15:16], v[11:12]
	v_add_f64 v[45:46], v[9:10], v[5:6]
	v_add_f64 v[51:52], v[13:14], v[29:30]
	v_add_f64 v[37:38], v[18:19], v[1:2]
	v_add_f64 v[22:23], v[13:14], -v[29:30]
	v_add_f64 v[31:32], v[9:10], -v[5:6]
	v_add_f64 v[33:34], v[18:19], -v[15:16]
	v_add_f64 v[35:36], v[1:2], -v[11:12]
	v_add_f64 v[39:40], v[15:16], -v[18:19]
	v_add_f64 v[41:42], v[11:12], -v[1:2]
	v_add_f64 v[17:18], v[18:19], -v[1:2]
	v_add_f64 v[19:20], v[15:16], -v[11:12]
	v_add_f64 v[47:48], v[13:14], -v[9:10]
	v_add_f64 v[13:14], v[9:10], -v[13:14]
	v_add_f64 v[3:4], v[3:4], v[15:16]
	v_add_f64 v[15:16], v[5:6], -v[29:30]
	v_fma_f64 v[7:8], v[7:8], -0.5, v[25:26]
	v_fma_f64 v[25:26], v[37:38], -0.5, v[25:26]
	v_add_f64 v[9:10], v[43:44], v[9:10]
	v_fma_f64 v[37:38], v[45:46], -0.5, v[27:28]
	v_fma_f64 v[27:28], v[51:52], -0.5, v[27:28]
	v_add_f64 v[49:50], v[29:30], -v[5:6]
	v_add_f64 v[33:34], v[33:34], v[35:36]
	v_add_f64 v[35:36], v[39:40], v[41:42]
	v_add_f64 v[41:42], v[13:14], v[15:16]
	v_add_f64 v[3:4], v[3:4], v[11:12]
	v_fma_f64 v[11:12], v[22:23], s[12:13], v[7:8]
	v_fma_f64 v[7:8], v[22:23], s[20:21], v[7:8]
	v_fma_f64 v[13:14], v[31:32], s[20:21], v[25:26]
	v_fma_f64 v[15:16], v[31:32], s[12:13], v[25:26]
	v_add_f64 v[5:6], v[9:10], v[5:6]
	v_fma_f64 v[9:10], v[17:18], s[20:21], v[37:38]
	v_fma_f64 v[25:26], v[17:18], s[12:13], v[37:38]
	v_fma_f64 v[37:38], v[19:20], s[12:13], v[27:28]
	v_fma_f64 v[27:28], v[19:20], s[20:21], v[27:28]
	v_add_f64 v[39:40], v[47:48], v[49:50]
	v_fma_f64 v[11:12], v[31:32], s[6:7], v[11:12]
	v_fma_f64 v[7:8], v[31:32], s[18:19], v[7:8]
	v_fma_f64 v[13:14], v[22:23], s[6:7], v[13:14]
	v_fma_f64 v[15:16], v[22:23], s[18:19], v[15:16]
	v_fma_f64 v[22:23], v[19:20], s[18:19], v[9:10]
	v_add_f64 v[1:2], v[3:4], v[1:2]
	v_add_f64 v[3:4], v[5:6], v[29:30]
	v_fma_f64 v[29:30], v[17:18], s[18:19], v[37:38]
	v_fma_f64 v[27:28], v[17:18], s[6:7], v[27:28]
	v_fma_f64 v[25:26], v[19:20], s[6:7], v[25:26]
	v_fma_f64 v[5:6], v[33:34], s[4:5], v[11:12]
	v_fma_f64 v[9:10], v[33:34], s[4:5], v[7:8]
	v_fma_f64 v[7:8], v[39:40], s[4:5], v[22:23]
	v_fma_f64 v[13:14], v[35:36], s[4:5], v[13:14]
	v_fma_f64 v[17:18], v[35:36], s[4:5], v[15:16]
	v_fma_f64 v[15:16], v[41:42], s[4:5], v[29:30]
	v_fma_f64 v[19:20], v[41:42], s[4:5], v[27:28]
	v_fma_f64 v[11:12], v[39:40], s[4:5], v[25:26]
	ds_write_b128 v57, v[1:4]
	ds_write_b128 v57, v[5:8] offset:1280
	ds_write_b128 v57, v[13:16] offset:2560
	ds_write_b128 v57, v[17:20] offset:3840
	ds_write_b128 v57, v[9:12] offset:5120
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_dwordx4 v[13:16], v56, s[26:27] offset:320
	global_load_dwordx4 v[9:12], v56, s[26:27] offset:336
	global_load_dwordx4 v[1:4], v56, s[26:27] offset:368
	global_load_dwordx4 v[5:8], v56, s[26:27] offset:352
	v_mul_lo_u32 v17, v21, v55
	v_add_u32_e32 v18, 25, v55
	v_mul_lo_u32 v18, v21, v18
	v_mov_b32_e32 v51, 4
	v_mov_b32_e32 v52, 0x1000
	v_lshlrev_b32_sdwa v19, v51, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v17, v17, 8, 8
	v_lshl_or_b32 v17, v17, 4, v52
	global_load_dwordx4 v[29:32], v19, s[16:17]
	global_load_dwordx4 v[33:36], v17, s[16:17]
	v_lshlrev_b32_sdwa v17, v51, v18 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v18, v18, 8, 8
	v_lshl_or_b32 v18, v18, 4, v52
	global_load_dwordx4 v[37:40], v17, s[16:17]
	global_load_dwordx4 v[41:44], v18, s[16:17]
	ds_read_b128 v[17:20], v24 offset:6400
	ds_read_b128 v[25:28], v24 offset:12800
	ds_read_b128 v[45:48], v24 offset:19200
	v_add_u32_e32 v56, 0x4b, v55
	v_add_u32_e32 v57, 0x64, v55
	v_mul_lo_u32 v56, v21, v56
	v_mul_lo_u32 v57, v21, v57
	v_lshlrev_b32_sdwa v62, v51, v56 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	s_waitcnt vmcnt(7) lgkmcnt(2)
	v_mul_f64 v[22:23], v[19:20], v[15:16]
	v_mul_f64 v[49:50], v[17:18], v[15:16]
	v_add_u32_e32 v15, 50, v55
	v_mul_lo_u32 v58, v21, v15
	v_lshlrev_b32_sdwa v59, v51, v58 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_fma_f64 v[15:16], v[17:18], v[13:14], v[22:23]
	s_waitcnt vmcnt(6) lgkmcnt(1)
	v_mul_f64 v[22:23], v[27:28], v[11:12]
	v_mul_f64 v[11:12], v[25:26], v[11:12]
	v_fma_f64 v[13:14], v[19:20], v[13:14], -v[49:50]
	ds_read_b128 v[17:20], v24 offset:25600
	v_bfe_u32 v58, v58, 8, 8
	v_lshlrev_b32_sdwa v51, v51, v57 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_fma_f64 v[49:50], v[25:26], v[9:10], v[22:23]
	v_fma_f64 v[9:10], v[27:28], v[9:10], -v[11:12]
	s_waitcnt vmcnt(4) lgkmcnt(1)
	v_mul_f64 v[11:12], v[47:48], v[7:8]
	v_mul_f64 v[7:8], v[45:46], v[7:8]
	s_waitcnt lgkmcnt(0)
	v_mul_f64 v[21:22], v[19:20], v[3:4]
	v_mul_f64 v[3:4], v[17:18], v[3:4]
	v_bfe_u32 v23, v56, 8, 8
	v_bfe_u32 v56, v57, 8, 8
	v_lshl_or_b32 v57, v58, 4, v52
	v_lshl_or_b32 v23, v23, 4, v52
	v_fma_f64 v[60:61], v[45:46], v[5:6], v[11:12]
	v_fma_f64 v[27:28], v[47:48], v[5:6], -v[7:8]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[5:6], v[31:32], v[35:36]
	v_mul_f64 v[7:8], v[29:30], v[35:36]
	v_fma_f64 v[25:26], v[17:18], v[1:2], v[21:22]
	v_fma_f64 v[17:18], v[19:20], v[1:2], -v[3:4]
	global_load_dwordx4 v[19:22], v59, s[16:17]
	global_load_dwordx4 v[45:48], v57, s[16:17]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[1:2], v[39:40], v[43:44]
	v_mul_f64 v[43:44], v[37:38], v[43:44]
	v_lshl_or_b32 v52, v56, 4, v52
	v_fma_f64 v[3:4], v[29:30], v[33:34], -v[5:6]
	v_fma_f64 v[11:12], v[31:32], v[33:34], v[7:8]
	global_load_dwordx4 v[29:32], v62, s[16:17]
	global_load_dwordx4 v[33:36], v23, s[16:17]
	v_add_f64 v[64:65], v[15:16], -v[49:50]
	v_add_f64 v[68:69], v[49:50], -v[15:16]
	v_fma_f64 v[1:2], v[37:38], v[41:42], -v[1:2]
	v_fma_f64 v[5:6], v[39:40], v[41:42], v[43:44]
	global_load_dwordx4 v[37:40], v51, s[16:17]
	global_load_dwordx4 v[41:44], v52, s[16:17]
	ds_read_b128 v[56:59], v24
	v_add_f64 v[66:67], v[25:26], -v[60:61]
	s_waitcnt lgkmcnt(0)
	v_add_f64 v[62:63], v[56:57], v[15:16]
	s_waitcnt vmcnt(4)
	v_mul_f64 v[7:8], v[21:22], v[47:48]
	v_mul_f64 v[47:48], v[19:20], v[47:48]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[51:52], v[31:32], v[35:36]
	v_mul_f64 v[35:36], v[29:30], v[35:36]
	v_fma_f64 v[7:8], v[19:20], v[45:46], -v[7:8]
	v_fma_f64 v[19:20], v[21:22], v[45:46], v[47:48]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[45:46], v[39:40], v[43:44]
	v_mul_f64 v[43:44], v[37:38], v[43:44]
	v_fma_f64 v[21:22], v[29:30], v[33:34], -v[51:52]
	v_fma_f64 v[29:30], v[31:32], v[33:34], v[35:36]
	v_add_f64 v[35:36], v[15:16], v[25:26]
	v_add_f64 v[33:34], v[49:50], v[60:61]
	v_add_f64 v[51:52], v[58:59], v[13:14]
	v_fma_f64 v[23:24], v[37:38], v[41:42], -v[45:46]
	v_fma_f64 v[31:32], v[39:40], v[41:42], v[43:44]
	v_add_f64 v[39:40], v[13:14], v[17:18]
	v_add_f64 v[37:38], v[9:10], v[27:28]
	v_add_f64 v[15:16], v[15:16], -v[25:26]
	v_fma_f64 v[45:46], v[35:36], -0.5, v[56:57]
	v_add_f64 v[35:36], v[13:14], -v[9:10]
	v_fma_f64 v[47:48], v[33:34], -0.5, v[56:57]
	v_add_f64 v[56:57], v[27:28], -v[17:18]
	v_add_f64 v[51:52], v[51:52], v[9:10]
	v_fma_f64 v[41:42], v[39:40], -0.5, v[58:59]
	v_add_f64 v[39:40], v[17:18], -v[27:28]
	v_fma_f64 v[43:44], v[37:38], -0.5, v[58:59]
	v_mul_lo_u32 v58, s10, v54
	v_mul_lo_u32 v59, s8, v0
	v_add_f64 v[33:34], v[60:61], -v[25:26]
	v_add_f64 v[37:38], v[64:65], v[66:67]
	v_add_f64 v[35:36], v[35:36], v[39:40]
	v_add_f64 v[39:40], v[9:10], -v[13:14]
	v_add_f64 v[13:14], v[13:14], -v[17:18]
	v_add_f64 v[9:10], v[9:10], -v[27:28]
	v_add_f64 v[27:28], v[51:52], v[27:28]
	v_add_f64 v[33:34], v[68:69], v[33:34]
	v_add_f64 v[39:40], v[39:40], v[56:57]
	v_add_f64 v[56:57], v[62:63], v[49:50]
	v_fma_f64 v[51:52], v[13:14], s[12:13], v[47:48]
	v_fma_f64 v[47:48], v[13:14], s[20:21], v[47:48]
	v_add_f64 v[49:50], v[49:50], -v[60:61]
	v_add_f64 v[17:18], v[27:28], v[17:18]
	v_add_f64 v[54:55], v[56:57], v[60:61]
	v_mul_lo_u32 v60, s8, v53
	v_add_lshl_u32 v53, v58, v59, 4
	v_cndmask_b32_e32 v59, -1, v53, vcc
	v_fma_f64 v[51:52], v[9:10], s[6:7], v[51:52]
	v_fma_f64 v[27:28], v[49:50], s[12:13], v[41:42]
	v_fma_f64 v[41:42], v[49:50], s[20:21], v[41:42]
	v_add_u32_e32 v57, 50, v0
	v_add_f64 v[25:26], v[54:55], v[25:26]
	v_fma_f64 v[53:54], v[9:10], s[20:21], v[45:46]
	v_fma_f64 v[45:46], v[9:10], s[12:13], v[45:46]
	v_fma_f64 v[9:10], v[9:10], s[18:19], v[47:48]
	v_fma_f64 v[47:48], v[15:16], s[20:21], v[43:44]
	v_fma_f64 v[43:44], v[15:16], s[12:13], v[43:44]
	v_fma_f64 v[27:28], v[15:16], s[18:19], v[27:28]
	v_fma_f64 v[15:16], v[15:16], s[6:7], v[41:42]
	v_fma_f64 v[41:42], v[37:38], s[4:5], v[51:52]
	v_fma_f64 v[53:54], v[13:14], s[6:7], v[53:54]
	v_fma_f64 v[13:14], v[13:14], s[18:19], v[45:46]
	v_fma_f64 v[37:38], v[37:38], s[4:5], v[9:10]
	v_fma_f64 v[45:46], v[49:50], s[18:19], v[47:48]
	v_fma_f64 v[43:44], v[49:50], s[6:7], v[43:44]
	v_mul_f64 v[9:10], v[17:18], v[11:12]
	v_mul_f64 v[11:12], v[25:26], v[11:12]
	v_fma_f64 v[27:28], v[39:40], s[4:5], v[27:28]
	v_fma_f64 v[47:48], v[33:34], s[4:5], v[53:54]
	v_fma_f64 v[33:34], v[33:34], s[4:5], v[13:14]
	v_fma_f64 v[39:40], v[39:40], s[4:5], v[15:16]
	v_fma_f64 v[45:46], v[35:36], s[4:5], v[45:46]
	v_fma_f64 v[35:36], v[35:36], s[4:5], v[43:44]
	v_fma_f64 v[9:10], v[25:26], v[3:4], v[9:10]
	v_fma_f64 v[11:12], v[17:18], v[3:4], -v[11:12]
	v_mul_f64 v[13:14], v[27:28], v[19:20]
	v_mul_f64 v[15:16], v[47:48], v[19:20]
	v_mul_f64 v[19:20], v[33:34], v[29:30]
	v_mul_f64 v[17:18], v[39:40], v[29:30]
	v_mul_f64 v[3:4], v[45:46], v[5:6]
	v_mul_f64 v[5:6], v[41:42], v[5:6]
	v_mul_f64 v[25:26], v[35:36], v[31:32]
	v_mul_f64 v[29:30], v[37:38], v[31:32]
	v_add_u32_e32 v56, 25, v0
	v_mul_lo_u32 v57, s8, v57
	v_fma_f64 v[13:14], v[47:48], v[7:8], v[13:14]
	v_fma_f64 v[15:16], v[27:28], v[7:8], -v[15:16]
	v_fma_f64 v[3:4], v[41:42], v[1:2], v[3:4]
	v_fma_f64 v[5:6], v[45:46], v[1:2], -v[5:6]
	v_fma_f64 v[17:18], v[33:34], v[21:22], v[17:18]
	v_fma_f64 v[19:20], v[39:40], v[21:22], -v[19:20]
	v_fma_f64 v[21:22], v[37:38], v[23:24], v[25:26]
	v_fma_f64 v[23:24], v[35:36], v[23:24], -v[29:30]
	v_mul_lo_u32 v56, s8, v56
	v_add_u32_e32 v0, 0x64, v0
	v_mul_lo_u32 v0, s8, v0
	v_add_lshl_u32 v55, v58, v57, 4
	v_add_lshl_u32 v56, v58, v56, 4
	v_cndmask_b32_e32 v1, -1, v55, vcc
	v_cndmask_b32_e32 v56, -1, v56, vcc
	buffer_store_dwordx4 v[9:12], v59, s[0:3], s9 offen
	buffer_store_dwordx4 v[3:6], v56, s[0:3], s9 offen
	buffer_store_dwordx4 v[13:16], v1, s[0:3], s9 offen
	v_add_lshl_u32 v1, v58, v60, 4
	v_add_lshl_u32 v0, v58, v0, 4
	v_cndmask_b32_e32 v1, -1, v1, vcc
	v_cndmask_b32_e32 v0, -1, v0, vcc
	buffer_store_dwordx4 v[17:20], v1, s[0:3], s9 offen
	buffer_store_dwordx4 v[21:24], v0, s[0:3], s9 offen
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 70
		.amdhsa_next_free_sgpr 50
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite, .Lfunc_end0-fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite
                                        ; -- End function
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4504
; NumSgprs: 54
; NumVgprs: 70
; NumAgprs: 0
; TotalNumVgprs: 70
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 6
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 70
; Occupancy: 3
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.protected	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE ; @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.type	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,"aG",@progbits,_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE,comdat
	.weak	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE, 1

	.protected	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE ; @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.type	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,@object
	.section	.rodata._ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,"aG",@progbits,_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE,comdat
	.weak	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE:
	.zero	1
	.size	_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE, 1

	.type	__hip_cuid_8edb34f756686994,@object ; @__hip_cuid_8edb34f756686994
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_8edb34f756686994
__hip_cuid_8edb34f756686994:
	.byte	0                               ; 0x0
	.size	__hip_cuid_8edb34f756686994, 1

	.ident	"AOMP_STANDALONE_19.0-2 clang version 19.0.0_AOMP_STANDALONE_19.0-2 (ssh://lmeadows@gerrit-git.amd.com:29418/lightning/ec/llvm-project f39dcaed48cb5a76eb932ff2f6d44db24ab90977)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.addrsig_sym __hip_cuid_8edb34f756686994
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     0
    .args:
      - .actual_access:  read_only
        .address_space:  global
        .name:           twiddles.coerce
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .name:           large_twiddles.coerce
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .name:           dim
        .offset:         16
        .size:           8
        .value_kind:     by_value
      - .actual_access:  read_only
        .address_space:  global
        .name:           lengths.coerce
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           stride_in.coerce
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           stride_out.coerce
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .name:           nbatch
        .offset:         48
        .size:           8
        .value_kind:     by_value
      - .name:           lds_padding
        .offset:         56
        .size:           4
        .value_kind:     by_value
      - .actual_access:  read_only
        .address_space:  global
        .name:           load_cb_fn.coerce
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           load_cb_data.coerce
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .name:           load_cb_lds_bytes
        .offset:         80
        .size:           4
        .value_kind:     by_value
      - .actual_access:  read_only
        .address_space:  global
        .name:           store_cb_fn.coerce
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           store_cb_data.coerce
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .name:           buf_in.coerce
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .name:           buf_out.coerce
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 400
    .name:           fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     70
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx908
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
