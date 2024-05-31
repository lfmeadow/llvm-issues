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
	s_mov_b64 s[34:35], 0
	s_waitcnt lgkmcnt(0)
	s_load_dwordx2 s[26:27], s[0:1], 0x8
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s26, -1
	s_addc_u32 s9, s27, -1
	s_lshr_b64 s[8:9], s[8:9], 4
	s_add_u32 s30, s8, 1
	s_addc_u32 s31, s9, 0
	v_mov_b32_e32 v1, s30
	v_mov_b32_e32 v2, s31
	v_cmp_lt_u64_e32 vcc, s[6:7], v[1:2]
	s_cbranch_vccnz .LBB0_2
; %bb.1:
	v_cvt_f32_u32_e32 v1, s30
	s_sub_i32 s8, 0, s30
	s_mov_b32 s35, s7
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s9, v1
	s_mul_i32 s8, s8, s9
	s_mul_hi_u32 s8, s9, s8
	s_add_i32 s9, s9, s8
	s_mul_hi_u32 s8, s6, s9
	s_mul_i32 s10, s8, s30
	s_sub_i32 s10, s6, s10
	s_add_i32 s9, s8, 1
	s_sub_i32 s11, s10, s30
	s_cmp_ge_u32 s10, s30
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s10, s11, s10
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s10, s30
	s_cselect_b32 s34, s9, s8
.LBB0_2:
	s_load_dwordx4 s[12:15], s[4:5], 0x68
	s_load_dwordx4 s[20:23], s[2:3], 0x0
	s_load_dwordx4 s[8:11], s[28:29], 0x0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s9, s34, s31
	s_mul_hi_u32 s16, s34, s30
	s_add_i32 s16, s16, s9
	s_mul_i32 s9, s34, s30
	s_sub_u32 s36, s6, s9
	s_subb_u32 s37, 0, s16
	v_mov_b32_e32 v1, s36
	v_alignbit_b32 v1, s37, v1, 28
	v_mul_lo_u32 v2, s22, v1
	s_load_dwordx2 s[24:25], s[4:5], 0x0
	s_load_dwordx4 s[16:19], s[4:5], 0x8
	s_lshl_b64 s[4:5], s[36:37], 4
	s_mul_hi_u32 s9, s22, s4
	v_mul_lo_u32 v1, s10, v1
	v_add_u32_e32 v2, s9, v2
	s_mul_i32 s9, s23, s4
	v_add_u32_e32 v5, s9, v2
	s_mul_i32 s9, s22, s4
	v_mov_b32_e32 v3, s9
	s_mul_hi_u32 s9, s10, s4
	v_add_u32_e32 v1, s9, v1
	s_mul_i32 s9, s11, s4
	s_waitcnt lgkmcnt(0)
	v_cmp_lt_u64_e64 s[36:37], s[18:19], 3
	v_add_u32_e32 v6, s9, v1
	s_mul_i32 s9, s10, s4
	v_mov_b32_e32 v4, s9
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
	s_mul_i32 s9, s46, s31
	s_mul_hi_u32 s11, s46, s30
	s_add_i32 s9, s11, s9
	s_mul_i32 s11, s47, s30
	s_add_i32 s31, s9, s11
	s_mul_i32 s9, s0, s47
	s_mul_hi_u32 s11, s0, s46
	s_add_i32 s9, s11, s9
	s_mul_i32 s11, s1, s46
	s_load_dwordx2 s[48:49], s[38:39], 0x0
	s_add_i32 s9, s9, s11
	s_mul_i32 s11, s0, s46
	s_sub_u32 s11, s34, s11
	s_subb_u32 s9, s35, s9
	s_load_dwordx2 s[34:35], s[36:37], 0x0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s21, s48, s9
	s_mul_hi_u32 s23, s48, s11
	s_add_i32 s21, s23, s21
	s_mul_i32 s23, s49, s11
	s_add_i32 s21, s21, s23
	v_mov_b32_e32 v7, s21
	s_mul_i32 s9, s34, s9
	s_mul_hi_u32 s21, s34, s11
	s_add_i32 s9, s21, s9
	s_mul_i32 s21, s35, s11
	s_add_i32 s9, s9, s21
	s_mul_i32 s23, s48, s11
	s_add_u32 s42, s42, 1
	v_add_co_u32_e32 v3, vcc, s23, v3
	s_addc_u32 s43, s43, 0
	v_addc_co_u32_e32 v5, vcc, v7, v5, vcc
	s_mul_i32 s11, s34, s11
	s_add_u32 s36, s36, 8
	v_mov_b32_e32 v7, s9
	v_add_co_u32_e32 v4, vcc, s11, v4
	s_addc_u32 s37, s37, 0
	v_addc_co_u32_e32 v6, vcc, v7, v6, vcc
	s_add_u32 s38, s38, 8
	s_addc_u32 s39, s39, 0
	v_cmp_ge_u64_e32 vcc, s[42:43], v[1:2]
	s_add_u32 s40, s40, 8
	s_mul_i32 s30, s46, s30
	s_addc_u32 s41, s41, 0
	s_mov_b64 s[34:35], s[0:1]
	s_cbranch_vccnz .LBB0_9
.LBB0_5:                                ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	s_load_dwordx2 s[46:47], s[40:41], 0x0
	s_waitcnt lgkmcnt(0)
	s_or_b64 s[0:1], s[34:35], s[46:47]
	s_mov_b32 s45, s1
	s_cmp_lg_u64 s[44:45], 0
	s_cbranch_scc0 .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	v_cvt_f32_u32_e32 v7, s46
	v_cvt_f32_u32_e32 v8, s47
	s_sub_u32 s0, 0, s46
	s_subb_u32 s1, 0, s47
	v_mac_f32_e32 v7, 0x4f800000, v8
	v_rcp_f32_e32 v7, v7
	v_mul_f32_e32 v7, 0x5f7ffffc, v7
	v_mul_f32_e32 v8, 0x2f800000, v7
	v_trunc_f32_e32 v8, v8
	v_mac_f32_e32 v7, 0xcf800000, v8
	v_cvt_u32_f32_e32 v8, v8
	v_cvt_u32_f32_e32 v7, v7
	v_readfirstlane_b32 s9, v8
	v_readfirstlane_b32 s11, v7
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
	v_add_co_u32_e32 v7, vcc, s11, v7
	s_cmp_lg_u64 vcc, 0
	s_addc_u32 s9, s9, s21
	v_readfirstlane_b32 s21, v7
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
	v_add_co_u32_e32 v7, vcc, s0, v7
	s_cmp_lg_u64 vcc, 0
	s_addc_u32 s0, s9, s1
	v_readfirstlane_b32 s11, v7
	s_mul_i32 s9, s34, s0
	s_mul_hi_u32 s21, s34, s11
	s_mul_hi_u32 s1, s34, s0
	s_add_u32 s9, s21, s9
	s_addc_u32 s1, 0, s1
	s_mul_hi_u32 s23, s35, s11
	s_mul_i32 s11, s35, s11
	s_add_u32 s9, s9, s11
	s_mul_hi_u32 s21, s35, s0
	s_addc_u32 s1, s1, s23
	s_addc_u32 s9, s21, 0
	s_mul_i32 s0, s35, s0
	s_add_u32 s11, s1, s0
	s_addc_u32 s9, 0, s9
	s_mul_i32 s0, s46, s9
	s_mul_hi_u32 s1, s46, s11
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s47, s11
	s_add_i32 s21, s0, s1
	s_mul_i32 s1, s46, s11
	v_mov_b32_e32 v7, s1
	s_sub_i32 s0, s35, s21
	v_sub_co_u32_e32 v7, vcc, s34, v7
	s_cmp_lg_u64 vcc, 0
	s_subb_u32 s23, s0, s47
	v_subrev_co_u32_e64 v8, s[0:1], s46, v7
	s_cmp_lg_u64 s[0:1], 0
	s_subb_u32 s0, s23, 0
	s_cmp_ge_u32 s0, s47
	v_readfirstlane_b32 s23, v8
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
	s_subb_u32 s21, s35, s21
	s_cmp_ge_u32 s21, s47
	v_readfirstlane_b32 s33, v7
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
	v_cvt_f32_u32_e32 v7, s46
	s_sub_i32 s0, 0, s46
	v_rcp_iflag_f32_e32 v7, v7
	v_mul_f32_e32 v7, 0x4f7ffffe, v7
	v_cvt_u32_f32_e32 v7, v7
	v_readfirstlane_b32 s1, v7
	s_mul_i32 s0, s0, s1
	s_mul_hi_u32 s0, s1, s0
	s_add_i32 s1, s1, s0
	s_mul_hi_u32 s0, s34, s1
	s_mul_i32 s9, s0, s46
	s_sub_i32 s9, s34, s9
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
	v_mov_b32_e32 v1, s30
	v_mov_b32_e32 v2, s31
	v_cmp_lt_u64_e32 vcc, s[6:7], v[1:2]
	s_mov_b64 s[34:35], 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	v_cvt_f32_u32_e32 v1, s30
	s_sub_i32 s0, 0, s30
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s1, v1
	s_mul_i32 s0, s0, s1
	s_mul_hi_u32 s0, s1, s0
	s_add_i32 s1, s1, s0
	s_mul_hi_u32 s0, s6, s1
	s_mul_i32 s7, s0, s30
	s_sub_i32 s6, s6, s7
	s_add_i32 s1, s0, 1
	s_sub_i32 s7, s6, s30
	s_cmp_ge_u32 s6, s30
	s_cselect_b32 s0, s1, s0
	s_cselect_b32 s6, s7, s6
	s_add_i32 s1, s0, 1
	s_cmp_ge_u32 s6, s30
	s_cselect_b32 s34, s1, s0
.LBB0_11:                               ; %Flow95
	s_lshl_b64 s[0:1], s[18:19], 3
	s_add_u32 s2, s2, s0
	s_addc_u32 s3, s3, s1
	s_add_u32 s0, s28, s0
	s_addc_u32 s1, s29, s1
	s_load_dword s0, s[0:1], 0x0
	v_mov_b32_e32 v1, s26
	s_load_dword s2, s[2:3], 0x0
	v_and_b32_e32 v38, 15, v0
	v_mov_b32_e32 v2, s27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s0, s34
	v_add_u32_e32 v37, s0, v4
	s_add_u32 s0, s4, 16
	s_addc_u32 s1, s5, 0
	v_lshrrev_b32_e32 v39, 4, v0
	v_cmp_le_u64_e32 vcc, s[0:1], v[1:2]
	v_mul_lo_u32 v1, s22, v38
	v_mul_lo_u32 v2, s20, v39
	v_or_b32_e32 v35, s4, v38
	v_mov_b32_e32 v36, s5
	s_mul_i32 s2, s2, s34
	v_cmp_gt_u64_e64 s[0:1], s[26:27], v[35:36]
	v_add_u32_e32 v3, s2, v3
	s_or_b64 vcc, vcc, s[0:1]
	v_add_lshl_u32 v2, v1, v2, 4
	v_lshlrev_b32_e32 v3, 4, v3
	v_cndmask_b32_e32 v2, -1, v2, vcc
	s_mov_b32 s3, 0x20000
	s_mov_b32 s2, -2
	s_mov_b32 s0, s12
	s_mov_b32 s1, s13
	v_readfirstlane_b32 s4, v3
	s_mov_b32 s13, 0x3fee6f0e
	s_mov_b32 s19, 0x3fe2cf23
	s_mov_b32 s6, 0x372fe950
	s_mov_b32 s7, 0x3fd3c6ef
	v_mov_b32_e32 v36, 0x1000
	buffer_load_dwordx4 v[13:16], v2, s[0:3], s4 offen
	v_add_u32_e32 v2, 25, v39
	v_mul_lo_u32 v2, s20, v2
	v_add_lshl_u32 v2, v1, v2, 4
	v_cndmask_b32_e32 v2, -1, v2, vcc
	buffer_load_dwordx4 v[19:22], v2, s[0:3], s4 offen
	v_add_u32_e32 v2, 50, v39
	v_mul_lo_u32 v2, s20, v2
	v_add_lshl_u32 v2, v1, v2, 4
	v_cndmask_b32_e32 v2, -1, v2, vcc
	buffer_load_dwordx4 v[27:30], v2, s[0:3], s4 offen
	v_add_u32_e32 v2, 0x4b, v39
	v_mul_lo_u32 v2, s20, v2
	v_add_lshl_u32 v2, v1, v2, 4
	v_cndmask_b32_e32 v2, -1, v2, vcc
	buffer_load_dwordx4 v[23:26], v2, s[0:3], s4 offen
	v_add_u32_e32 v2, 0x64, v39
	v_mul_lo_u32 v2, s20, v2
	v_add_lshl_u32 v1, v1, v2, 4
	v_cndmask_b32_e32 v1, -1, v1, vcc
	buffer_load_dwordx4 v[31:34], v1, s[0:3], s4 offen
	s_mov_b32 s4, 0x134454ff
	s_mov_b32 s5, 0xbfee6f0e
	s_mov_b32 s12, s4
	s_mov_b32 s0, 0x4755a5e
	s_mov_b32 s1, 0xbfe2cf23
	s_mov_b32 s18, s0
	s_waitcnt vmcnt(3)
	v_add_f64 v[1:2], v[13:14], v[19:20]
	s_waitcnt vmcnt(2)
	v_add_f64 v[9:10], v[19:20], -v[27:28]
	v_add_f64 v[1:2], v[1:2], v[27:28]
	s_waitcnt vmcnt(1)
	v_add_f64 v[3:4], v[27:28], v[23:24]
	v_add_f64 v[11:12], v[29:30], -v[25:26]
	v_add_f64 v[1:2], v[1:2], v[23:24]
	v_fma_f64 v[3:4], v[3:4], -0.5, v[13:14]
	s_waitcnt vmcnt(0)
	v_add_f64 v[7:8], v[21:22], -v[33:34]
	v_add_f64 v[17:18], v[31:32], -v[23:24]
	v_add_f64 v[1:2], v[1:2], v[31:32]
	v_add_f64 v[40:41], v[23:24], -v[31:32]
	v_add_f64 v[23:24], v[27:28], -v[23:24]
	v_fma_f64 v[5:6], v[7:8], s[4:5], v[3:4]
	v_fma_f64 v[3:4], v[7:8], s[12:13], v[3:4]
	v_add_f64 v[9:10], v[9:10], v[17:18]
	v_add_f64 v[17:18], v[27:28], -v[19:20]
	v_add_f64 v[27:28], v[21:22], -v[29:30]
	v_fma_f64 v[5:6], v[11:12], s[0:1], v[5:6]
	v_fma_f64 v[3:4], v[11:12], s[18:19], v[3:4]
	v_add_f64 v[17:18], v[17:18], v[40:41]
	v_fma_f64 v[5:6], v[9:10], s[6:7], v[5:6]
	v_fma_f64 v[9:10], v[9:10], s[6:7], v[3:4]
	v_add_f64 v[3:4], v[19:20], v[31:32]
	v_add_f64 v[19:20], v[19:20], -v[31:32]
	v_add_f64 v[31:32], v[33:34], -v[25:26]
	v_fma_f64 v[3:4], v[3:4], -0.5, v[13:14]
	v_add_f64 v[27:28], v[27:28], v[31:32]
	v_fma_f64 v[13:14], v[11:12], s[12:13], v[3:4]
	v_fma_f64 v[3:4], v[11:12], s[4:5], v[3:4]
	v_fma_f64 v[13:14], v[7:8], s[0:1], v[13:14]
	v_fma_f64 v[3:4], v[7:8], s[18:19], v[3:4]
	v_add_f64 v[7:8], v[29:30], v[25:26]
	v_fma_f64 v[13:14], v[17:18], s[6:7], v[13:14]
	v_fma_f64 v[17:18], v[17:18], s[6:7], v[3:4]
	v_fma_f64 v[11:12], v[7:8], -0.5, v[15:16]
	v_add_f64 v[3:4], v[15:16], v[21:22]
	v_fma_f64 v[7:8], v[19:20], s[12:13], v[11:12]
	v_fma_f64 v[11:12], v[19:20], s[4:5], v[11:12]
	v_add_f64 v[3:4], v[3:4], v[29:30]
	v_fma_f64 v[7:8], v[23:24], s[18:19], v[7:8]
	v_fma_f64 v[11:12], v[23:24], s[0:1], v[11:12]
	v_add_f64 v[3:4], v[3:4], v[25:26]
	v_add_f64 v[25:26], v[25:26], -v[33:34]
	v_fma_f64 v[7:8], v[27:28], s[6:7], v[7:8]
	v_fma_f64 v[11:12], v[27:28], s[6:7], v[11:12]
	v_add_f64 v[27:28], v[21:22], v[33:34]
	v_add_f64 v[21:22], v[29:30], -v[21:22]
	v_add_f64 v[3:4], v[3:4], v[33:34]
	v_fma_f64 v[27:28], v[27:28], -0.5, v[15:16]
	v_add_f64 v[21:22], v[21:22], v[25:26]
	v_fma_f64 v[15:16], v[23:24], s[4:5], v[27:28]
	v_fma_f64 v[23:24], v[23:24], s[12:13], v[27:28]
	v_fma_f64 v[15:16], v[19:20], s[18:19], v[15:16]
	v_fma_f64 v[19:20], v[19:20], s[0:1], v[23:24]
	v_fma_f64 v[15:16], v[21:22], s[6:7], v[15:16]
	v_fma_f64 v[19:20], v[21:22], s[6:7], v[19:20]
	v_mul_u32_u24_e32 v21, 0x50, v39
	v_or_b32_e32 v21, v21, v38
	v_lshl_add_u32 v21, v21, 4, 0
	ds_write_b128 v21, v[1:4]
	ds_write_b128 v21, v[5:8] offset:256
	ds_write_b128 v21, v[13:16] offset:512
	ds_write_b128 v21, v[17:20] offset:768
	ds_write_b128 v21, v[9:12] offset:1024
	v_mul_lo_u16_e32 v17, 52, v39
	v_lshrrev_b16_e32 v19, 8, v17
	v_mul_lo_u16_e32 v17, 5, v19
	v_sub_u16_e32 v17, v39, v17
	v_and_b32_e32 v20, 0xff, v17
	v_lshl_add_u32 v21, v0, 4, 0
	v_lshlrev_b32_e32 v17, 6, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[1:4], v21
	ds_read_b128 v[22:25], v21 offset:6400
	ds_read_b128 v[13:16], v21 offset:12800
	ds_read_b128 v[9:12], v21 offset:19200
	ds_read_b128 v[5:8], v21 offset:25600
	global_load_dwordx4 v[26:29], v17, s[24:25] offset:48
	global_load_dwordx4 v[30:33], v17, s[24:25] offset:32
	global_load_dwordx4 v[40:43], v17, s[24:25] offset:16
	global_load_dwordx4 v[44:47], v17, s[24:25]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	v_mul_u32_u24_e32 v0, 0xa4, v0
	v_mul_f64 v[17:18], v[24:25], v[46:47]
	v_fma_f64 v[48:49], v[22:23], v[44:45], v[17:18]
	v_mul_f64 v[17:18], v[22:23], v[46:47]
	v_mul_f64 v[22:23], v[15:16], v[42:43]
	v_fma_f64 v[17:18], v[24:25], v[44:45], -v[17:18]
	v_fma_f64 v[24:25], v[13:14], v[40:41], v[22:23]
	v_mul_f64 v[13:14], v[13:14], v[42:43]
	v_fma_f64 v[40:41], v[15:16], v[40:41], -v[13:14]
	v_mul_f64 v[13:14], v[11:12], v[32:33]
	v_fma_f64 v[15:16], v[9:10], v[30:31], v[13:14]
	v_mul_f64 v[9:10], v[9:10], v[32:33]
	v_add_f64 v[13:14], v[48:49], -v[24:25]
	v_fma_f64 v[30:31], v[11:12], v[30:31], -v[9:10]
	v_mul_f64 v[9:10], v[7:8], v[28:29]
	v_fma_f64 v[11:12], v[5:6], v[26:27], v[9:10]
	v_mul_f64 v[5:6], v[5:6], v[28:29]
	v_add_f64 v[28:29], v[40:41], -v[30:31]
	v_add_f64 v[32:33], v[11:12], -v[15:16]
	v_fma_f64 v[26:27], v[7:8], v[26:27], -v[5:6]
	v_add_f64 v[7:8], v[24:25], v[15:16]
	v_add_f64 v[5:6], v[1:2], v[48:49]
	v_add_f64 v[42:43], v[15:16], -v[11:12]
	v_add_f64 v[13:14], v[13:14], v[32:33]
	v_add_f64 v[22:23], v[17:18], -v[26:27]
	v_fma_f64 v[7:8], v[7:8], -0.5, v[1:2]
	v_add_f64 v[32:33], v[24:25], -v[48:49]
	v_add_f64 v[5:6], v[5:6], v[24:25]
	v_add_f64 v[24:25], v[24:25], -v[15:16]
	v_fma_f64 v[9:10], v[22:23], s[4:5], v[7:8]
	v_fma_f64 v[7:8], v[22:23], s[12:13], v[7:8]
	v_add_f64 v[32:33], v[32:33], v[42:43]
	v_add_f64 v[5:6], v[5:6], v[15:16]
	v_add_f64 v[15:16], v[17:18], -v[40:41]
	v_add_f64 v[42:43], v[26:27], -v[30:31]
	v_fma_f64 v[9:10], v[28:29], s[0:1], v[9:10]
	v_fma_f64 v[7:8], v[28:29], s[18:19], v[7:8]
	v_add_f64 v[5:6], v[5:6], v[11:12]
	v_add_f64 v[15:16], v[15:16], v[42:43]
	v_fma_f64 v[9:10], v[13:14], s[6:7], v[9:10]
	v_fma_f64 v[13:14], v[13:14], s[6:7], v[7:8]
	v_add_f64 v[7:8], v[48:49], v[11:12]
	v_fma_f64 v[7:8], v[7:8], -0.5, v[1:2]
	v_fma_f64 v[1:2], v[28:29], s[12:13], v[7:8]
	v_fma_f64 v[7:8], v[28:29], s[4:5], v[7:8]
	v_add_f64 v[28:29], v[40:41], v[30:31]
	v_fma_f64 v[1:2], v[22:23], s[0:1], v[1:2]
	v_fma_f64 v[7:8], v[22:23], s[18:19], v[7:8]
	v_fma_f64 v[28:29], v[28:29], -0.5, v[3:4]
	v_fma_f64 v[1:2], v[32:33], s[6:7], v[1:2]
	v_fma_f64 v[22:23], v[32:33], s[6:7], v[7:8]
	v_add_f64 v[32:33], v[48:49], -v[11:12]
	v_add_f64 v[7:8], v[3:4], v[17:18]
	v_fma_f64 v[11:12], v[32:33], s[12:13], v[28:29]
	v_fma_f64 v[28:29], v[32:33], s[4:5], v[28:29]
	v_add_f64 v[7:8], v[7:8], v[40:41]
	v_fma_f64 v[11:12], v[24:25], s[18:19], v[11:12]
	v_fma_f64 v[28:29], v[24:25], s[0:1], v[28:29]
	v_add_f64 v[7:8], v[7:8], v[30:31]
	v_fma_f64 v[11:12], v[15:16], s[6:7], v[11:12]
	v_fma_f64 v[15:16], v[15:16], s[6:7], v[28:29]
	v_add_f64 v[28:29], v[17:18], v[26:27]
	v_add_f64 v[7:8], v[7:8], v[26:27]
	v_add_f64 v[17:18], v[40:41], -v[17:18]
	v_add_f64 v[26:27], v[30:31], -v[26:27]
	v_fma_f64 v[28:29], v[28:29], -0.5, v[3:4]
	v_add_f64 v[17:18], v[17:18], v[26:27]
	v_fma_f64 v[3:4], v[24:25], s[4:5], v[28:29]
	v_fma_f64 v[24:25], v[24:25], s[12:13], v[28:29]
	v_fma_f64 v[3:4], v[32:33], s[18:19], v[3:4]
	v_fma_f64 v[24:25], v[32:33], s[0:1], v[24:25]
	v_fma_f64 v[3:4], v[17:18], s[6:7], v[3:4]
	v_fma_f64 v[24:25], v[17:18], s[6:7], v[24:25]
	v_mad_u32_u24 v17, v19, 25, v20
	v_lshlrev_b32_e32 v18, 4, v38
	v_lshl_or_b32 v17, v17, 8, v18
	v_add_u32_e32 v17, 0, v17
	ds_write_b128 v17, v[5:8]
	ds_write_b128 v17, v[9:12] offset:1280
	ds_write_b128 v17, v[1:4] offset:2560
	ds_write_b128 v17, v[22:25] offset:3840
	ds_write_b128 v17, v[13:16] offset:5120
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[1:4], v21
	ds_read_b128 v[17:20], v21 offset:6400
	ds_read_b128 v[13:16], v21 offset:12800
	ds_read_b128 v[9:12], v21 offset:19200
	ds_read_b128 v[5:8], v21 offset:25600
	v_mul_lo_u16_e32 v21, 21, v39
	v_lshrrev_b16_e32 v21, 9, v21
	v_mul_lo_u16_e32 v21, 25, v21
	v_sub_u16_e32 v21, v39, v21
	v_and_b32_e32 v25, 0xff, v21
	v_lshlrev_b32_e32 v34, 6, v25
	global_load_dwordx4 v[21:24], v34, s[24:25] offset:368
	global_load_dwordx4 v[26:29], v34, s[24:25] offset:352
	global_load_dwordx4 v[30:33], v34, s[24:25] offset:336
	global_load_dwordx4 v[39:42], v34, s[24:25] offset:320
	v_mov_b32_e32 v34, 4
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_mul_f64 v[43:44], v[19:20], v[41:42]
	v_fma_f64 v[43:44], v[17:18], v[39:40], v[43:44]
	v_mul_f64 v[17:18], v[17:18], v[41:42]
	v_fma_f64 v[17:18], v[19:20], v[39:40], -v[17:18]
	s_waitcnt lgkmcnt(2)
	v_mul_f64 v[19:20], v[15:16], v[32:33]
	v_fma_f64 v[19:20], v[13:14], v[30:31], v[19:20]
	v_mul_f64 v[13:14], v[13:14], v[32:33]
	v_fma_f64 v[30:31], v[15:16], v[30:31], -v[13:14]
	s_waitcnt lgkmcnt(1)
	v_mul_f64 v[13:14], v[11:12], v[28:29]
	v_fma_f64 v[13:14], v[9:10], v[26:27], v[13:14]
	v_mul_f64 v[9:10], v[9:10], v[28:29]
	v_fma_f64 v[26:27], v[11:12], v[26:27], -v[9:10]
	s_waitcnt lgkmcnt(0)
	v_mul_f64 v[9:10], v[7:8], v[23:24]
	v_add_f64 v[11:12], v[43:44], -v[19:20]
	v_fma_f64 v[28:29], v[5:6], v[21:22], v[9:10]
	v_mul_f64 v[5:6], v[5:6], v[23:24]
	v_add_f64 v[23:24], v[30:31], -v[26:27]
	v_add_f64 v[15:16], v[28:29], -v[13:14]
	v_fma_f64 v[32:33], v[7:8], v[21:22], -v[5:6]
	v_add_f64 v[7:8], v[19:20], v[13:14]
	v_add_f64 v[5:6], v[1:2], v[43:44]
	v_add_f64 v[39:40], v[13:14], -v[28:29]
	v_add_f64 v[11:12], v[11:12], v[15:16]
	v_add_f64 v[21:22], v[17:18], -v[32:33]
	v_fma_f64 v[9:10], v[7:8], -0.5, v[1:2]
	v_add_f64 v[15:16], v[19:20], -v[43:44]
	v_add_f64 v[5:6], v[5:6], v[19:20]
	v_add_f64 v[19:20], v[19:20], -v[13:14]
	v_fma_f64 v[7:8], v[21:22], s[4:5], v[9:10]
	v_fma_f64 v[9:10], v[21:22], s[12:13], v[9:10]
	v_add_f64 v[39:40], v[15:16], v[39:40]
	v_add_f64 v[5:6], v[5:6], v[13:14]
	v_fma_f64 v[7:8], v[23:24], s[0:1], v[7:8]
	v_fma_f64 v[9:10], v[23:24], s[18:19], v[9:10]
	v_add_f64 v[5:6], v[5:6], v[28:29]
	v_fma_f64 v[7:8], v[11:12], s[6:7], v[7:8]
	v_fma_f64 v[11:12], v[11:12], s[6:7], v[9:10]
	v_add_f64 v[9:10], v[43:44], v[28:29]
	v_add_f64 v[28:29], v[43:44], -v[28:29]
	v_fma_f64 v[1:2], v[9:10], -0.5, v[1:2]
	v_fma_f64 v[9:10], v[23:24], s[12:13], v[1:2]
	v_fma_f64 v[1:2], v[23:24], s[4:5], v[1:2]
	v_fma_f64 v[9:10], v[21:22], s[0:1], v[9:10]
	v_fma_f64 v[1:2], v[21:22], s[18:19], v[1:2]
	v_fma_f64 v[15:16], v[39:40], s[6:7], v[9:10]
	v_fma_f64 v[9:10], v[39:40], s[6:7], v[1:2]
	v_add_f64 v[1:2], v[3:4], v[17:18]
	v_add_f64 v[39:40], v[32:33], -v[26:27]
	v_add_f64 v[1:2], v[1:2], v[30:31]
	v_add_f64 v[1:2], v[1:2], v[26:27]
	v_add_f64 v[23:24], v[1:2], v[32:33]
	v_add_f64 v[1:2], v[30:31], v[26:27]
	v_add_f64 v[26:27], v[26:27], -v[32:33]
	v_fma_f64 v[1:2], v[1:2], -0.5, v[3:4]
	v_fma_f64 v[21:22], v[28:29], s[12:13], v[1:2]
	v_fma_f64 v[1:2], v[28:29], s[4:5], v[1:2]
	v_fma_f64 v[13:14], v[19:20], s[18:19], v[21:22]
	v_add_f64 v[21:22], v[17:18], -v[30:31]
	v_fma_f64 v[1:2], v[19:20], s[0:1], v[1:2]
	v_add_f64 v[21:22], v[21:22], v[39:40]
	v_fma_f64 v[13:14], v[21:22], s[6:7], v[13:14]
	v_fma_f64 v[21:22], v[21:22], s[6:7], v[1:2]
	v_add_f64 v[1:2], v[17:18], v[32:33]
	v_add_f64 v[17:18], v[30:31], -v[17:18]
	v_fma_f64 v[1:2], v[1:2], -0.5, v[3:4]
	v_add_f64 v[26:27], v[17:18], v[26:27]
	v_fma_f64 v[3:4], v[19:20], s[4:5], v[1:2]
	v_fma_f64 v[1:2], v[19:20], s[12:13], v[1:2]
	v_fma_f64 v[3:4], v[28:29], s[18:19], v[3:4]
	v_fma_f64 v[1:2], v[28:29], s[0:1], v[1:2]
	s_movk_i32 s0, 0x7d
	v_mul_lo_u16_sdwa v0, v0, s0 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:DWORD
	v_add_u32_e32 v0, v0, v25
	s_mov_b32 s0, s14
	s_mov_b32 s1, s15
	v_fma_f64 v[17:18], v[26:27], s[6:7], v[3:4]
	v_fma_f64 v[19:20], v[26:27], s[6:7], v[1:2]
	v_mul_lo_u32 v26, v35, v25
	v_lshlrev_b32_sdwa v1, v34, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v26, v26, 8, 8
	v_lshl_or_b32 v26, v26, 4, v36
	global_load_dwordx4 v[1:4], v1, s[16:17]
	s_nop 0
	global_load_dwordx4 v[26:29], v26, s[16:17]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[30:31], v[3:4], v[28:29]
	v_fma_f64 v[30:31], v[1:2], v[26:27], -v[30:31]
	v_mul_f64 v[1:2], v[1:2], v[28:29]
	v_fma_f64 v[3:4], v[3:4], v[26:27], v[1:2]
	v_mul_f64 v[1:2], v[23:24], v[3:4]
	v_mul_f64 v[3:4], v[5:6], v[3:4]
	v_fma_f64 v[1:2], v[5:6], v[30:31], v[1:2]
	v_add_u32_e32 v5, 25, v25
	v_mul_lo_u32 v5, v35, v5
	v_fma_f64 v[3:4], v[23:24], v[30:31], -v[3:4]
	v_lshlrev_b32_sdwa v6, v34, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v5, v5, 8, 8
	v_lshl_or_b32 v5, v5, 4, v36
	global_load_dwordx4 v[26:29], v6, s[16:17]
	global_load_dwordx4 v[30:33], v5, s[16:17]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[5:6], v[28:29], v[32:33]
	v_fma_f64 v[23:24], v[26:27], v[30:31], -v[5:6]
	v_mul_f64 v[5:6], v[26:27], v[32:33]
	v_fma_f64 v[26:27], v[28:29], v[30:31], v[5:6]
	v_mul_f64 v[5:6], v[13:14], v[26:27]
	v_fma_f64 v[5:6], v[7:8], v[23:24], v[5:6]
	v_mul_f64 v[7:8], v[7:8], v[26:27]
	v_fma_f64 v[7:8], v[13:14], v[23:24], -v[7:8]
	v_add_u32_e32 v13, 50, v25
	v_mul_lo_u32 v13, v35, v13
	v_lshlrev_b32_sdwa v14, v34, v13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v13, v13, 8, 8
	v_lshl_or_b32 v13, v13, 4, v36
	global_load_dwordx4 v[26:29], v14, s[16:17]
	global_load_dwordx4 v[30:33], v13, s[16:17]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[13:14], v[28:29], v[32:33]
	v_fma_f64 v[23:24], v[26:27], v[30:31], -v[13:14]
	v_mul_f64 v[13:14], v[26:27], v[32:33]
	v_fma_f64 v[26:27], v[28:29], v[30:31], v[13:14]
	v_mul_f64 v[13:14], v[17:18], v[26:27]
	v_fma_f64 v[13:14], v[15:16], v[23:24], v[13:14]
	v_mul_f64 v[15:16], v[15:16], v[26:27]
	v_fma_f64 v[15:16], v[17:18], v[23:24], -v[15:16]
	v_add_u32_e32 v17, 0x4b, v25
	v_mul_lo_u32 v17, v35, v17
	v_lshlrev_b32_sdwa v18, v34, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v17, v17, 8, 8
	v_lshl_or_b32 v17, v17, 4, v36
	global_load_dwordx4 v[26:29], v18, s[16:17]
	global_load_dwordx4 v[30:33], v17, s[16:17]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[17:18], v[28:29], v[32:33]
	v_fma_f64 v[23:24], v[26:27], v[30:31], -v[17:18]
	v_mul_f64 v[17:18], v[26:27], v[32:33]
	v_fma_f64 v[26:27], v[28:29], v[30:31], v[17:18]
	v_mul_f64 v[17:18], v[19:20], v[26:27]
	v_fma_f64 v[17:18], v[9:10], v[23:24], v[17:18]
	v_mul_f64 v[9:10], v[9:10], v[26:27]
	v_fma_f64 v[19:20], v[19:20], v[23:24], -v[9:10]
	v_add_u32_e32 v9, 0x64, v25
	v_mul_lo_u32 v9, v35, v9
	v_lshlrev_b32_sdwa v10, v34, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v9, v9, 8, 8
	v_lshl_or_b32 v9, v9, 4, v36
	global_load_dwordx4 v[26:29], v10, s[16:17]
	global_load_dwordx4 v[30:33], v9, s[16:17]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[9:10], v[28:29], v[32:33]
	v_fma_f64 v[23:24], v[26:27], v[30:31], -v[9:10]
	v_mul_f64 v[9:10], v[26:27], v[32:33]
	v_fma_f64 v[26:27], v[28:29], v[30:31], v[9:10]
	v_mul_f64 v[9:10], v[21:22], v[26:27]
	v_fma_f64 v[9:10], v[11:12], v[23:24], v[9:10]
	v_mul_f64 v[11:12], v[11:12], v[26:27]
	v_fma_f64 v[11:12], v[21:22], v[23:24], -v[11:12]
	v_mul_lo_u32 v21, s10, v38
	v_mul_lo_u32 v22, s8, v0
	v_lshlrev_b32_e32 v23, 4, v37
	v_readfirstlane_b32 s4, v23
	v_add_lshl_u32 v22, v21, v22, 4
	v_cndmask_b32_e32 v22, -1, v22, vcc
	s_nop 2
	buffer_store_dwordx4 v[1:4], v22, s[0:3], s4 offen
	v_add_u32_e32 v1, 25, v0
	v_mul_lo_u32 v1, s8, v1
	v_add_lshl_u32 v1, v21, v1, 4
	v_cndmask_b32_e32 v1, -1, v1, vcc
	buffer_store_dwordx4 v[5:8], v1, s[0:3], s4 offen
	v_add_u32_e32 v1, 50, v0
	v_mul_lo_u32 v1, s8, v1
	v_add_lshl_u32 v1, v21, v1, 4
	v_cndmask_b32_e32 v1, -1, v1, vcc
	buffer_store_dwordx4 v[13:16], v1, s[0:3], s4 offen
	v_add_u32_e32 v1, 0x4b, v0
	v_add_u32_e32 v0, 0x64, v0
	v_mul_lo_u32 v1, s8, v1
	v_mul_lo_u32 v0, s8, v0
	v_add_lshl_u32 v1, v21, v1, 4
	v_add_lshl_u32 v0, v21, v0, 4
	v_cndmask_b32_e32 v1, -1, v1, vcc
	v_cndmask_b32_e32 v0, -1, v0, vcc
	buffer_store_dwordx4 v[17:20], v1, s[0:3], s4 offen
	buffer_store_dwordx4 v[9:12], v0, s[0:3], s4 offen
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
		.amdhsa_next_free_vgpr 50
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
; codeLenInByte = 4488
; NumSgprs: 54
; NumVgprs: 50
; NumAgprs: 0
; TotalNumVgprs: 50
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 6
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 50
; Occupancy: 4
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
    .vgpr_count:     50
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx908
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
