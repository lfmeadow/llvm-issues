	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx908"
	.amdhsa_code_object_version 5
	.protected	fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg ; -- Begin function fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg
	.globl	fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg
	.p2align	8
	.type	fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg,@function
fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg: ; @fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg
; %bb.0:                                ; %entry
	s_load_dwordx4 s[0:3], s[4:5], 0x10
	s_load_dwordx2 s[26:27], s[4:5], 0x20
	s_mov_b32 s7, 0
	s_mov_b64 s[24:25], -1
	s_mov_b64 s[16:17], 0
	s_waitcnt lgkmcnt(0)
	s_load_dwordx2 s[18:19], s[0:1], 0x8
	s_load_dwordx2 s[22:23], s[4:5], 0x60
	s_load_dwordx2 s[20:21], s[2:3], 0x0
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s18, -1
	s_addc_u32 s1, s19, -1
	s_add_u32 s8, 0, 0x55540000
	s_addc_u32 s9, 0, 0x55
	s_add_i32 s9, s9, 0x15555500
	s_mul_hi_u32 s13, s8, -12
	s_sub_i32 s13, s13, s8
	s_mul_i32 s14, s9, -12
	s_mul_i32 s10, s8, -12
	s_add_i32 s13, s13, s14
	s_mul_hi_u32 s11, s9, s10
	s_mul_i32 s12, s9, s10
	s_mul_i32 s15, s8, s13
	s_mul_hi_u32 s10, s8, s10
	s_mul_hi_u32 s14, s8, s13
	s_add_u32 s10, s10, s15
	s_addc_u32 s14, 0, s14
	s_add_u32 s10, s10, s12
	s_mul_hi_u32 s15, s9, s13
	s_addc_u32 s10, s14, s11
	s_addc_u32 s11, s15, 0
	s_mul_i32 s12, s9, s13
	s_add_u32 s10, s10, s12
	v_mov_b32_e32 v1, s10
	s_addc_u32 s11, 0, s11
	v_add_co_u32_e32 v1, vcc, s8, v1
	s_cmp_lg_u64 vcc, 0
	s_addc_u32 s8, s9, s11
	v_readfirstlane_b32 s11, v1
	s_mul_i32 s10, s0, s8
	s_mul_hi_u32 s12, s0, s11
	s_mul_hi_u32 s9, s0, s8
	s_add_u32 s10, s12, s10
	s_addc_u32 s9, 0, s9
	s_mul_hi_u32 s13, s1, s11
	s_mul_i32 s11, s1, s11
	s_add_u32 s10, s10, s11
	s_mul_hi_u32 s12, s1, s8
	s_addc_u32 s9, s9, s13
	s_addc_u32 s10, s12, 0
	s_mul_i32 s8, s1, s8
	s_add_u32 s8, s9, s8
	s_addc_u32 s9, 0, s10
	s_add_u32 s10, s8, 1
	s_addc_u32 s11, s9, 0
	s_add_u32 s12, s8, 2
	s_mul_i32 s14, s9, 12
	s_mul_hi_u32 s15, s8, 12
	s_addc_u32 s13, s9, 0
	s_add_i32 s15, s15, s14
	s_mul_i32 s14, s8, 12
	v_mov_b32_e32 v1, s14
	v_sub_co_u32_e32 v1, vcc, s0, v1
	s_cmp_lg_u64 vcc, 0
	s_subb_u32 s0, s1, s15
	v_subrev_co_u32_e32 v2, vcc, 12, v1
	s_cmp_lg_u64 vcc, 0
	s_subb_u32 s1, s0, 0
	v_readfirstlane_b32 s14, v2
	s_cmp_gt_u32 s14, 11
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 s1, 0
	s_cselect_b32 s1, s14, -1
	s_cmp_lg_u32 s1, 0
	s_cselect_b32 s1, s12, s10
	s_cselect_b32 s10, s13, s11
	v_readfirstlane_b32 s11, v1
	s_cmp_gt_u32 s11, 11
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s0, 0
	s_cselect_b32 s0, s11, -1
	s_cmp_lg_u32 s0, 0
	s_cselect_b32 s0, s1, s8
	s_cselect_b32 s9, s10, s9
	s_add_u32 s0, s0, 1
	s_addc_u32 s1, s9, 0
	v_mov_b32_e32 v2, s1
	v_mov_b32_e32 v1, s0
	v_cmp_lt_u64_e32 vcc, s[6:7], v[1:2]
	s_cbranch_vccnz .LBB0_2
; %bb.1:
	v_cvt_f32_u32_e32 v1, s0
	s_sub_i32 s7, 0, s0
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s8, v1
	s_mul_i32 s7, s7, s8
	s_mul_hi_u32 s7, s8, s7
	s_add_i32 s8, s8, s7
	s_mul_hi_u32 s7, s6, s8
	s_mul_i32 s9, s7, s0
	s_sub_i32 s9, s6, s9
	s_add_i32 s8, s7, 1
	s_sub_i32 s10, s9, s0
	s_cmp_ge_u32 s9, s0
	s_cselect_b32 s7, s8, s7
	s_cselect_b32 s9, s10, s9
	s_add_i32 s8, s7, 1
	s_cmp_ge_u32 s9, s0
	s_cselect_b32 s16, s8, s7
.LBB0_2:
	s_mul_i32 s1, s16, s1
	s_mul_hi_u32 s7, s16, s0
	s_load_dwordx4 s[12:15], s[2:3], 0x8
	s_add_i32 s7, s7, s1
	s_mul_i32 s0, s16, s0
	s_sub_u32 s0, s6, s0
	s_subb_u32 s1, 0, s7
	s_mul_i32 s1, s1, 12
	s_mul_hi_u32 s2, s0, 12
	s_mul_i32 s17, s0, 12
	s_add_i32 s33, s2, s1
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s17, s13
	s_mul_hi_u32 s2, s17, s12
	v_mul_u32_u24_e32 v1, 0x1556, v0
	s_mul_i32 s0, s33, s12
	s_add_i32 s1, s2, s1
	s_mul_i32 s6, s15, s16
	s_mul_hi_u32 s7, s14, s16
	v_lshrrev_b32_e32 v60, 16, v1
	s_add_i32 s1, s1, s0
	s_mul_i32 s0, s17, s12
	s_add_i32 s7, s7, s6
	s_mul_i32 s6, s14, s16
	v_mul_lo_u16_e32 v1, 12, v60
	s_add_u32 s14, s6, s0
	v_sub_u16_e32 v59, v0, v1
	s_addc_u32 s15, s7, s1
	v_mov_b32_e32 v1, s33
	v_add_co_u32_e32 v57, vcc, s17, v59
	s_load_dwordx2 s[2:3], s[26:27], 0x0
	s_load_dwordx4 s[8:11], s[26:27], 0x8
	v_addc_co_u32_e32 v58, vcc, 0, v1, vcc
	s_add_u32 s0, s17, 12
	v_mov_b32_e32 v1, s18
	s_addc_u32 s1, s33, 0
	v_mov_b32_e32 v2, s19
	v_cmp_gt_u64_e32 vcc, s[0:1], v[1:2]
	v_cmp_le_u64_e64 s[0:1], s[0:1], v[1:2]
	s_cbranch_vccz .LBB0_8
; %bb.3:                                ; %if.then223
	v_cmp_le_u64_e32 vcc, s[18:19], v[57:58]
                                        ; implicit-def: $vgpr61
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
; %bb.4:                                ; %if.then223.if.end387_crit_edge
	v_add_u32_e32 v61, 14, v60
; %bb.5:                                ; %Flow
	s_or_saveexec_b64 s[6:7], s[6:7]
                                        ; implicit-def: $vgpr1_vgpr2
                                        ; implicit-def: $vgpr5_vgpr6
                                        ; implicit-def: $vgpr13_vgpr14
                                        ; implicit-def: $vgpr9_vgpr10
                                        ; implicit-def: $vgpr25_vgpr26
                                        ; implicit-def: $vgpr17_vgpr18
                                        ; implicit-def: $vgpr21_vgpr22
                                        ; implicit-def: $vgpr29_vgpr30
                                        ; implicit-def: $vgpr37_vgpr38
                                        ; implicit-def: $vgpr33_vgpr34
                                        ; implicit-def: $vgpr45_vgpr46
                                        ; implicit-def: $vgpr41_vgpr42
	s_xor_b64 exec, exec, s[6:7]
	s_cbranch_execz .LBB0_7
; %bb.6:                                ; %if.then229
	v_mad_u64_u32 v[1:2], s[24:25], s12, v59, 0
	v_mad_u64_u32 v[3:4], s[24:25], s20, v60, 0
	v_add_u32_e32 v8, 28, v60
	v_add_u32_e32 v18, 0x54, v60
	v_mad_u64_u32 v[5:6], s[24:25], s13, v59, v[2:3]
	v_mov_b32_e32 v2, v4
	v_mad_u64_u32 v[6:7], s[24:25], s21, v60, v[2:3]
	s_lshl_b64 s[24:25], s[14:15], 4
	s_add_u32 s26, s22, s24
	s_addc_u32 s24, s23, s25
	v_mov_b32_e32 v2, v5
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v7, s24
	v_mad_u64_u32 v[5:6], s[24:25], s20, v8, 0
	v_lshlrev_b64 v[1:2], 4, v[1:2]
	v_add_u32_e32 v27, 0x8c, v60
	v_add_co_u32_e32 v53, vcc, s26, v1
	v_addc_co_u32_e32 v54, vcc, v7, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[3:4]
	v_mov_b32_e32 v3, v6
	v_mad_u64_u32 v[3:4], s[24:25], s21, v8, v[3:4]
	v_add_co_u32_e32 v9, vcc, v53, v1
	v_mov_b32_e32 v6, v3
	v_add_u32_e32 v3, 56, v60
	v_mad_u64_u32 v[11:12], s[24:25], s20, v3, 0
	v_addc_co_u32_e32 v10, vcc, v54, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[5:6]
	v_add_u32_e32 v61, 14, v60
	v_add_co_u32_e32 v13, vcc, v53, v1
	v_mov_b32_e32 v1, v12
	v_mad_u64_u32 v[15:16], s[24:25], s21, v3, v[1:2]
	v_mad_u64_u32 v[16:17], s[24:25], s20, v18, 0
	v_mov_b32_e32 v12, v15
	v_addc_co_u32_e32 v14, vcc, v54, v2, vcc
	global_load_dwordx4 v[1:4], v[9:10], off
	global_load_dwordx4 v[5:8], v[13:14], off
	v_lshlrev_b64 v[9:10], 4, v[11:12]
	v_mov_b32_e32 v11, v17
	v_mad_u64_u32 v[11:12], s[24:25], s21, v18, v[11:12]
	v_add_co_u32_e32 v18, vcc, v53, v9
	v_mov_b32_e32 v17, v11
	v_add_u32_e32 v11, 0x70, v60
	v_mad_u64_u32 v[20:21], s[24:25], s20, v11, 0
	v_addc_co_u32_e32 v19, vcc, v54, v10, vcc
	v_lshlrev_b64 v[9:10], 4, v[16:17]
	v_add_u32_e32 v33, 42, v60
	v_add_co_u32_e32 v22, vcc, v53, v9
	v_mov_b32_e32 v9, v21
	v_mad_u64_u32 v[24:25], s[24:25], s21, v11, v[9:10]
	v_mad_u64_u32 v[25:26], s[24:25], s20, v27, 0
	v_addc_co_u32_e32 v23, vcc, v54, v10, vcc
	global_load_dwordx4 v[13:16], v[18:19], off
	global_load_dwordx4 v[9:12], v[22:23], off
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v19, v26
	v_lshlrev_b64 v[17:18], 4, v[20:21]
	v_mad_u64_u32 v[19:20], s[24:25], s21, v27, v[19:20]
	v_mad_u64_u32 v[23:24], s[24:25], s20, v61, 0
	v_add_co_u32_e32 v21, vcc, v53, v17
	v_mov_b32_e32 v26, v19
	v_addc_co_u32_e32 v22, vcc, v54, v18, vcc
	v_lshlrev_b64 v[17:18], 4, v[25:26]
	v_mad_u64_u32 v[31:32], s[24:25], s20, v33, 0
	v_add_co_u32_e32 v29, vcc, v53, v17
	v_mov_b32_e32 v17, v24
	v_mad_u64_u32 v[24:25], s[24:25], s21, v61, v[17:18]
	v_addc_co_u32_e32 v30, vcc, v54, v18, vcc
	global_load_dwordx4 v[25:28], v[21:22], off
	global_load_dwordx4 v[17:20], v[29:30], off
	v_lshlrev_b64 v[21:22], 4, v[23:24]
	v_mov_b32_e32 v23, v32
	v_mad_u64_u32 v[23:24], s[24:25], s21, v33, v[23:24]
	v_add_co_u32_e32 v33, vcc, v53, v21
	v_mov_b32_e32 v32, v23
	v_add_u32_e32 v23, 0x46, v60
	v_mad_u64_u32 v[35:36], s[24:25], s20, v23, 0
	v_addc_co_u32_e32 v34, vcc, v54, v22, vcc
	v_lshlrev_b64 v[21:22], 4, v[31:32]
	v_add_u32_e32 v42, 0x62, v60
	v_add_co_u32_e32 v37, vcc, v53, v21
	v_mov_b32_e32 v21, v36
	v_mad_u64_u32 v[39:40], s[24:25], s21, v23, v[21:22]
	v_mad_u64_u32 v[40:41], s[24:25], s20, v42, 0
	v_mov_b32_e32 v36, v39
	v_addc_co_u32_e32 v38, vcc, v54, v22, vcc
	global_load_dwordx4 v[21:24], v[33:34], off
	global_load_dwordx4 v[29:32], v[37:38], off
	v_lshlrev_b64 v[33:34], 4, v[35:36]
	v_mov_b32_e32 v35, v41
	v_mad_u64_u32 v[35:36], s[24:25], s21, v42, v[35:36]
	v_add_co_u32_e32 v42, vcc, v53, v33
	v_mov_b32_e32 v41, v35
	v_add_u32_e32 v35, 0x7e, v60
	v_mad_u64_u32 v[44:45], s[24:25], s20, v35, 0
	v_addc_co_u32_e32 v43, vcc, v54, v34, vcc
	v_lshlrev_b64 v[33:34], 4, v[40:41]
	v_add_u32_e32 v51, 0x9a, v60
	v_add_co_u32_e32 v46, vcc, v53, v33
	v_mov_b32_e32 v33, v45
	v_mad_u64_u32 v[48:49], s[24:25], s21, v35, v[33:34]
	v_mad_u64_u32 v[49:50], s[24:25], s20, v51, 0
	v_addc_co_u32_e32 v47, vcc, v54, v34, vcc
	global_load_dwordx4 v[37:40], v[42:43], off
	global_load_dwordx4 v[33:36], v[46:47], off
	v_mov_b32_e32 v45, v48
	v_mov_b32_e32 v43, v50
	v_lshlrev_b64 v[41:42], 4, v[44:45]
	v_mad_u64_u32 v[43:44], s[24:25], s21, v51, v[43:44]
	v_add_co_u32_e32 v51, vcc, v53, v41
	v_mov_b32_e32 v50, v43
	v_addc_co_u32_e32 v52, vcc, v54, v42, vcc
	v_lshlrev_b64 v[41:42], 4, v[49:50]
	v_add_co_u32_e32 v49, vcc, v53, v41
	v_addc_co_u32_e32 v50, vcc, v54, v42, vcc
	global_load_dwordx4 v[45:48], v[51:52], off
	global_load_dwordx4 v[41:44], v[49:50], off
.LBB0_7:                                ; %Flow219
	s_or_b64 exec, exec, s[6:7]
	s_mov_b64 s[24:25], 0
	s_branch .LBB0_9
.LBB0_8:
                                        ; implicit-def: $vgpr1_vgpr2
                                        ; implicit-def: $vgpr5_vgpr6
                                        ; implicit-def: $vgpr13_vgpr14
                                        ; implicit-def: $vgpr9_vgpr10
                                        ; implicit-def: $vgpr25_vgpr26
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr17_vgpr18
                                        ; implicit-def: $vgpr21_vgpr22
                                        ; implicit-def: $vgpr29_vgpr30
                                        ; implicit-def: $vgpr37_vgpr38
                                        ; implicit-def: $vgpr33_vgpr34
                                        ; implicit-def: $vgpr45_vgpr46
                                        ; implicit-def: $vgpr41_vgpr42
.LBB0_9:                                ; %Flow220
	s_load_dwordx2 s[6:7], s[4:5], 0x0
	s_andn2_b64 vcc, exec, s[24:25]
	v_add_u32_e32 v64, 28, v60
	v_add_u32_e32 v62, 56, v60
	v_add_u32_e32 v63, 42, v60
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ; %if.then
	s_waitcnt vmcnt(11)
	v_mad_u64_u32 v[1:2], s[24:25], s12, v59, 0
	v_mad_u64_u32 v[3:4], s[24:25], s20, v60, 0
	s_waitcnt vmcnt(6)
	v_add_u32_e32 v18, 0x54, v60
	v_add_u32_e32 v27, 0x8c, v60
	v_mad_u64_u32 v[5:6], s[12:13], s13, v59, v[2:3]
	v_mov_b32_e32 v2, v4
	v_mad_u64_u32 v[6:7], s[12:13], s21, v60, v[2:3]
	s_lshl_b64 s[12:13], s[14:15], 4
	s_add_u32 s14, s22, s12
	s_addc_u32 s12, s23, s13
	v_mov_b32_e32 v2, v5
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v7, s12
	v_mad_u64_u32 v[5:6], s[12:13], s20, v64, 0
	v_lshlrev_b64 v[1:2], 4, v[1:2]
	v_mad_u64_u32 v[11:12], s[12:13], s20, v62, 0
	v_add_co_u32_e32 v53, vcc, s14, v1
	v_addc_co_u32_e32 v54, vcc, v7, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[3:4]
	v_mov_b32_e32 v3, v6
	v_mad_u64_u32 v[3:4], s[12:13], s21, v64, v[3:4]
	v_add_co_u32_e32 v9, vcc, v53, v1
	v_mov_b32_e32 v6, v3
	v_addc_co_u32_e32 v10, vcc, v54, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[5:6]
	v_add_u32_e32 v61, 14, v60
	v_add_co_u32_e32 v13, vcc, v53, v1
	v_mov_b32_e32 v1, v12
	v_mad_u64_u32 v[15:16], s[12:13], s21, v62, v[1:2]
	v_mad_u64_u32 v[16:17], s[12:13], s20, v18, 0
	v_mov_b32_e32 v12, v15
	v_addc_co_u32_e32 v14, vcc, v54, v2, vcc
	global_load_dwordx4 v[1:4], v[9:10], off
	global_load_dwordx4 v[5:8], v[13:14], off
	v_lshlrev_b64 v[9:10], 4, v[11:12]
	v_mov_b32_e32 v11, v17
	v_mad_u64_u32 v[11:12], s[12:13], s21, v18, v[11:12]
	v_add_co_u32_e32 v18, vcc, v53, v9
	v_mov_b32_e32 v17, v11
	v_add_u32_e32 v11, 0x70, v60
	s_waitcnt vmcnt(7)
	v_mad_u64_u32 v[20:21], s[12:13], s20, v11, 0
	v_addc_co_u32_e32 v19, vcc, v54, v10, vcc
	v_lshlrev_b64 v[9:10], 4, v[16:17]
	s_waitcnt vmcnt(6)
	v_mad_u64_u32 v[31:32], s[12:13], s20, v63, 0
	v_add_co_u32_e32 v22, vcc, v53, v9
	v_mov_b32_e32 v9, v21
	v_mad_u64_u32 v[24:25], s[12:13], s21, v11, v[9:10]
	v_mad_u64_u32 v[25:26], s[12:13], s20, v27, 0
	v_addc_co_u32_e32 v23, vcc, v54, v10, vcc
	global_load_dwordx4 v[13:16], v[18:19], off
	global_load_dwordx4 v[9:12], v[22:23], off
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v19, v26
	v_lshlrev_b64 v[17:18], 4, v[20:21]
	v_mad_u64_u32 v[19:20], s[12:13], s21, v27, v[19:20]
	v_mad_u64_u32 v[23:24], s[12:13], s20, v61, 0
	v_add_co_u32_e32 v21, vcc, v53, v17
	v_mov_b32_e32 v26, v19
	v_addc_co_u32_e32 v22, vcc, v54, v18, vcc
	v_lshlrev_b64 v[17:18], 4, v[25:26]
	s_waitcnt vmcnt(4)
	v_add_u32_e32 v42, 0x62, v60
	v_add_co_u32_e32 v29, vcc, v53, v17
	v_mov_b32_e32 v17, v24
	v_mad_u64_u32 v[24:25], s[12:13], s21, v61, v[17:18]
	v_addc_co_u32_e32 v30, vcc, v54, v18, vcc
	global_load_dwordx4 v[25:28], v[21:22], off
	global_load_dwordx4 v[17:20], v[29:30], off
	v_lshlrev_b64 v[21:22], 4, v[23:24]
	v_mov_b32_e32 v23, v32
	v_mad_u64_u32 v[23:24], s[12:13], s21, v63, v[23:24]
	v_add_co_u32_e32 v33, vcc, v53, v21
	v_mov_b32_e32 v32, v23
	v_add_u32_e32 v23, 0x46, v60
	v_mad_u64_u32 v[35:36], s[12:13], s20, v23, 0
	v_addc_co_u32_e32 v34, vcc, v54, v22, vcc
	v_lshlrev_b64 v[21:22], 4, v[31:32]
	v_add_u32_e32 v51, 0x9a, v60
	v_add_co_u32_e32 v37, vcc, v53, v21
	v_mov_b32_e32 v21, v36
	v_mad_u64_u32 v[39:40], s[12:13], s21, v23, v[21:22]
	v_mad_u64_u32 v[40:41], s[12:13], s20, v42, 0
	v_mov_b32_e32 v36, v39
	v_addc_co_u32_e32 v38, vcc, v54, v22, vcc
	global_load_dwordx4 v[21:24], v[33:34], off
	global_load_dwordx4 v[29:32], v[37:38], off
	v_lshlrev_b64 v[33:34], 4, v[35:36]
	v_mov_b32_e32 v35, v41
	v_mad_u64_u32 v[35:36], s[12:13], s21, v42, v[35:36]
	v_add_co_u32_e32 v42, vcc, v53, v33
	v_mov_b32_e32 v41, v35
	v_add_u32_e32 v35, 0x7e, v60
	v_mad_u64_u32 v[44:45], s[12:13], s20, v35, 0
	v_addc_co_u32_e32 v43, vcc, v54, v34, vcc
	v_lshlrev_b64 v[33:34], 4, v[40:41]
	v_add_co_u32_e32 v46, vcc, v53, v33
	v_mov_b32_e32 v33, v45
	v_mad_u64_u32 v[48:49], s[12:13], s21, v35, v[33:34]
	v_mad_u64_u32 v[49:50], s[12:13], s20, v51, 0
	v_addc_co_u32_e32 v47, vcc, v54, v34, vcc
	global_load_dwordx4 v[37:40], v[42:43], off
	global_load_dwordx4 v[33:36], v[46:47], off
	v_mov_b32_e32 v45, v48
	v_mov_b32_e32 v43, v50
	v_lshlrev_b64 v[41:42], 4, v[44:45]
	v_mad_u64_u32 v[43:44], s[12:13], s21, v51, v[43:44]
	v_add_co_u32_e32 v51, vcc, v53, v41
	v_mov_b32_e32 v50, v43
	v_addc_co_u32_e32 v52, vcc, v54, v42, vcc
	v_lshlrev_b64 v[41:42], 4, v[49:50]
	v_add_co_u32_e32 v49, vcc, v53, v41
	v_addc_co_u32_e32 v50, vcc, v54, v42, vcc
	global_load_dwordx4 v[45:48], v[51:52], off
	global_load_dwordx4 v[41:44], v[49:50], off
.LBB0_11:                               ; %if.end387
	s_waitcnt vmcnt(6)
	v_add_f64 v[49:50], v[19:20], v[11:12]
	v_add_f64 v[51:52], v[13:14], v[1:2]
	v_add_f64 v[55:56], v[17:18], v[9:10]
	v_add_f64 v[69:70], v[9:10], -v[17:18]
	s_mov_b32 s14, 0xe8584caa
	v_add_f64 v[53:54], v[15:16], v[3:4]
	v_add_f64 v[65:66], v[25:26], v[13:14]
	v_add_f64 v[13:14], v[13:14], -v[25:26]
	v_fma_f64 v[49:50], v[49:50], -0.5, v[7:8]
	v_add_f64 v[51:52], v[25:26], v[51:52]
	v_fma_f64 v[25:26], v[55:56], -0.5, v[5:6]
	v_add_f64 v[55:56], v[11:12], -v[19:20]
	s_mov_b32 s15, 0xbfebb67a
	s_mov_b32 s13, 0x3febb67a
	s_mov_b32 s12, s14
	v_add_f64 v[67:68], v[15:16], -v[27:28]
	v_fma_f64 v[71:72], v[69:70], s[12:13], v[49:50]
	v_add_f64 v[15:16], v[27:28], v[15:16]
	v_fma_f64 v[1:2], v[65:66], -0.5, v[1:2]
	v_add_f64 v[65:66], v[27:28], v[53:54]
	v_add_f64 v[5:6], v[9:10], v[5:6]
	v_fma_f64 v[9:10], v[69:70], s[14:15], v[49:50]
	v_fma_f64 v[27:28], v[55:56], s[14:15], v[25:26]
	v_add_f64 v[7:8], v[11:12], v[7:8]
	v_mul_f64 v[11:12], v[71:72], s[14:15]
	v_fma_f64 v[3:4], v[15:16], -0.5, v[3:4]
	v_fma_f64 v[25:26], v[55:56], s[12:13], v[25:26]
	v_fma_f64 v[15:16], v[67:68], s[14:15], v[1:2]
	v_add_f64 v[5:6], v[17:18], v[5:6]
	v_mul_f64 v[49:50], v[9:10], s[14:15]
	v_mul_f64 v[53:54], v[27:28], s[12:13]
	v_mul_f64 v[9:10], v[9:10], -0.5
	v_fma_f64 v[11:12], v[27:28], 0.5, v[11:12]
	v_fma_f64 v[1:2], v[67:68], s[12:13], v[1:2]
	v_add_f64 v[7:8], v[19:20], v[7:8]
	v_fma_f64 v[17:18], v[13:14], s[12:13], v[3:4]
	v_fma_f64 v[3:4], v[13:14], s[14:15], v[3:4]
	v_fma_f64 v[13:14], v[25:26], -0.5, v[49:50]
	v_fma_f64 v[19:20], v[71:72], 0.5, v[53:54]
	v_fma_f64 v[9:10], v[25:26], s[12:13], v[9:10]
	v_add_f64 v[25:26], v[5:6], v[51:52]
	v_add_f64 v[53:54], v[51:52], -v[5:6]
	s_waitcnt vmcnt(0)
	v_add_f64 v[5:6], v[43:44], v[35:36]
	v_add_f64 v[49:50], v[15:16], v[11:12]
	v_add_f64 v[71:72], v[15:16], -v[11:12]
	v_add_f64 v[15:16], v[41:42], v[33:34]
	v_add_f64 v[67:68], v[1:2], v[13:14]
	v_add_f64 v[69:70], v[3:4], v[9:10]
	v_add_f64 v[75:76], v[1:2], -v[13:14]
	v_add_f64 v[77:78], v[3:4], -v[9:10]
	v_fma_f64 v[1:2], v[5:6], -0.5, v[31:32]
	v_add_f64 v[3:4], v[33:34], -v[41:42]
	v_add_f64 v[51:52], v[17:18], v[19:20]
	v_add_f64 v[73:74], v[17:18], -v[19:20]
	v_add_f64 v[5:6], v[45:46], v[37:38]
	v_fma_f64 v[15:16], v[15:16], -0.5, v[29:30]
	v_add_f64 v[17:18], v[35:36], -v[43:44]
	v_add_f64 v[27:28], v[7:8], v[65:66]
	v_add_f64 v[55:56], v[65:66], -v[7:8]
	v_add_f64 v[7:8], v[37:38], v[21:22]
	v_add_f64 v[13:14], v[47:48], v[39:40]
	v_add_f64 v[19:20], v[37:38], -v[45:46]
	v_fma_f64 v[37:38], v[3:4], s[12:13], v[1:2]
	v_add_f64 v[9:10], v[39:40], -v[47:48]
	v_fma_f64 v[5:6], v[5:6], -0.5, v[21:22]
	v_fma_f64 v[1:2], v[3:4], s[14:15], v[1:2]
	v_fma_f64 v[3:4], v[17:18], s[14:15], v[15:16]
	v_add_f64 v[11:12], v[39:40], v[23:24]
	v_add_f64 v[21:22], v[33:34], v[29:30]
	v_add_f64 v[29:30], v[35:36], v[31:32]
	v_fma_f64 v[13:14], v[13:14], -0.5, v[23:24]
	v_mul_f64 v[23:24], v[37:38], s[14:15]
	v_fma_f64 v[33:34], v[9:10], s[14:15], v[5:6]
	v_fma_f64 v[35:36], v[9:10], s[12:13], v[5:6]
	v_fma_f64 v[5:6], v[17:18], s[12:13], v[15:16]
	v_mul_f64 v[15:16], v[3:4], s[12:13]
	v_mul_f64 v[9:10], v[1:2], s[14:15]
	v_mul_f64 v[1:2], v[1:2], -0.5
	v_add_f64 v[7:8], v[45:46], v[7:8]
	v_add_f64 v[11:12], v[47:48], v[11:12]
	v_add_f64 v[17:18], v[41:42], v[21:22]
	v_fma_f64 v[21:22], v[3:4], 0.5, v[23:24]
	v_add_f64 v[3:4], v[43:44], v[29:30]
	v_fma_f64 v[23:24], v[19:20], s[12:13], v[13:14]
	v_fma_f64 v[15:16], v[37:38], 0.5, v[15:16]
	v_fma_f64 v[19:20], v[19:20], s[14:15], v[13:14]
	v_fma_f64 v[39:40], v[5:6], -0.5, v[9:10]
	v_fma_f64 v[37:38], v[5:6], s[12:13], v[1:2]
	v_add_f64 v[29:30], v[17:18], v[7:8]
	v_add_f64 v[1:2], v[33:34], v[21:22]
	v_add_f64 v[31:32], v[3:4], v[11:12]
	v_add_f64 v[11:12], v[11:12], -v[3:4]
	v_add_f64 v[3:4], v[23:24], v[15:16]
	v_add_f64 v[9:10], v[7:8], -v[17:18]
	v_add_f64 v[5:6], v[35:36], v[39:40]
	v_add_f64 v[7:8], v[19:20], v[37:38]
	v_add_f64 v[13:14], v[33:34], -v[21:22]
	v_mul_u32_u24_e32 v21, 0x48, v60
	v_add_f64 v[15:16], v[23:24], -v[15:16]
	v_lshlrev_b32_e32 v21, 4, v21
	v_lshlrev_b32_e32 v66, 4, v59
	v_add_f64 v[17:18], v[35:36], -v[39:40]
	v_add_f64 v[19:20], v[19:20], -v[37:38]
	v_add3_u32 v22, 0, v21, v66
	v_mul_i32_i24_e32 v21, 0x48, v61
	v_lshl_add_u32 v21, v21, 4, 0
	s_movk_i32 s12, 0xfc40
	v_add_u32_e32 v23, v21, v66
	v_mad_i32_i24 v65, v60, s12, v22
	ds_write_b128 v22, v[25:28]
	ds_write_b128 v22, v[49:52] offset:192
	ds_write_b128 v22, v[67:70] offset:384
	ds_write_b128 v22, v[53:56] offset:576
	ds_write_b128 v22, v[71:74] offset:768
	ds_write_b128 v22, v[75:78] offset:960
	ds_write_b128 v23, v[29:32]
	ds_write_b128 v23, v[1:4] offset:192
	ds_write_b128 v23, v[5:8] offset:384
	ds_write_b128 v23, v[9:12] offset:576
	ds_write_b128 v23, v[13:16] offset:768
	ds_write_b128 v23, v[17:20] offset:960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[29:32], v65
	ds_read_b128 v[49:52], v65 offset:4608
	ds_read_b128 v[45:48], v65 offset:9216
	ds_read_b128 v[37:40], v65 offset:13824
	ds_read_b128 v[33:36], v65 offset:18432
	ds_read_b128 v[41:44], v65 offset:23040
	ds_read_b128 v[53:56], v65 offset:27648
	s_movk_i32 s12, 0x78
	v_cmp_gt_u32_e32 vcc, s12, v0
                                        ; implicit-def: $vgpr27_vgpr28
                                        ; implicit-def: $vgpr23_vgpr24
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB0_13
; %bb.12:                               ; %if.then.i
	v_mul_i32_i24_e32 v1, 0xfffffc40, v61
	v_add3_u32 v1, v21, v1, v66
	ds_read_b128 v[1:4], v1
	ds_read_b128 v[5:8], v65 offset:7296
	ds_read_b128 v[9:12], v65 offset:11904
	ds_read_b128 v[13:16], v65 offset:16512
	ds_read_b128 v[17:20], v65 offset:21120
	ds_read_b128 v[21:24], v65 offset:25728
	ds_read_b128 v[25:28], v65 offset:30336
.LBB0_13:                               ; %if.end.i
	s_or_b64 exec, exec, s[12:13]
	v_mul_lo_u16_e32 v67, 43, v60
	v_lshrrev_b16_e32 v91, 8, v67
	v_mul_lo_u16_e32 v67, 6, v91
	v_sub_u16_e32 v67, v60, v67
	v_and_b32_e32 v92, 0xff, v67
	v_mul_u32_u24_e32 v67, 6, v92
	v_lshlrev_b32_e32 v93, 4, v67
	global_load_dwordx4 v[67:70], v93, s[6:7]
	global_load_dwordx4 v[71:74], v93, s[6:7] offset:16
	global_load_dwordx4 v[75:78], v93, s[6:7] offset:32
	global_load_dwordx4 v[79:82], v93, s[6:7] offset:48
	global_load_dwordx4 v[83:86], v93, s[6:7] offset:80
	global_load_dwordx4 v[87:90], v93, s[6:7] offset:64
	v_mad_u32_u24 v91, v91, 42, v92
	v_mul_u32_u24_e32 v103, 0xc0, v91
	s_mov_b32 s12, 0x37e14327
	s_mov_b32 s14, 0x36b3c0b5
	s_mov_b32 s24, 0xe976ee23
	s_mov_b32 s13, 0x3fe948f6
	s_mov_b32 s15, 0x3fac98ee
	s_mov_b32 s25, 0x3fe11646
	s_mov_b32 s20, 0x429ad128
	s_mov_b32 s21, 0xbfebfeb5
	s_mov_b32 s22, 0xaaaaaaaa
	s_mov_b32 s26, 0x5476071b
	s_mov_b32 s30, 0xb247c609
	s_mov_b32 s23, 0xbff2aaaa
	s_mov_b32 s27, 0x3fe77f67
	s_mov_b32 s29, 0xbfe77f67
	s_mov_b32 s31, 0xbfd5d0dc
	s_mov_b32 s28, s26
	s_mov_b32 s37, 0x3fd5d0dc
	s_mov_b32 s36, s30
	s_mov_b32 s34, 0x37c3f68c
	s_mov_b32 s35, 0xbfdc38aa
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	v_mul_f64 v[91:92], v[51:52], v[69:70]
	v_mul_f64 v[69:70], v[49:50], v[69:70]
	v_mul_f64 v[93:94], v[47:48], v[73:74]
	v_mul_f64 v[73:74], v[45:46], v[73:74]
	v_mul_f64 v[99:100], v[55:56], v[85:86]
	v_mul_f64 v[85:86], v[53:54], v[85:86]
	v_mul_f64 v[101:102], v[43:44], v[89:90]
	v_mul_f64 v[89:90], v[41:42], v[89:90]
	v_mul_f64 v[95:96], v[39:40], v[77:78]
	v_mul_f64 v[77:78], v[37:38], v[77:78]
	v_mul_f64 v[97:98], v[35:36], v[81:82]
	v_mul_f64 v[81:82], v[33:34], v[81:82]
	v_fma_f64 v[49:50], v[49:50], v[67:68], v[91:92]
	v_fma_f64 v[51:52], v[51:52], v[67:68], -v[69:70]
	v_fma_f64 v[45:46], v[45:46], v[71:72], v[93:94]
	v_fma_f64 v[47:48], v[47:48], v[71:72], -v[73:74]
	v_fma_f64 v[53:54], v[53:54], v[83:84], v[99:100]
	v_fma_f64 v[55:56], v[55:56], v[83:84], -v[85:86]
	v_fma_f64 v[41:42], v[41:42], v[87:88], v[101:102]
	v_fma_f64 v[43:44], v[43:44], v[87:88], -v[89:90]
	v_fma_f64 v[37:38], v[37:38], v[75:76], v[95:96]
	v_fma_f64 v[39:40], v[39:40], v[75:76], -v[77:78]
	v_fma_f64 v[33:34], v[33:34], v[79:80], v[97:98]
	v_fma_f64 v[35:36], v[35:36], v[79:80], -v[81:82]
	v_add_f64 v[67:68], v[49:50], v[53:54]
	v_add_f64 v[69:70], v[51:52], v[55:56]
	v_add_f64 v[49:50], v[49:50], -v[53:54]
	v_add_f64 v[51:52], v[51:52], -v[55:56]
	v_add_f64 v[53:54], v[45:46], v[41:42]
	v_add_f64 v[55:56], v[47:48], v[43:44]
	v_add_f64 v[41:42], v[45:46], -v[41:42]
	v_add_f64 v[43:44], v[47:48], -v[43:44]
	v_add_f64 v[45:46], v[37:38], v[33:34]
	v_add_f64 v[47:48], v[39:40], v[35:36]
	v_add_f64 v[33:34], v[33:34], -v[37:38]
	v_add_f64 v[35:36], v[35:36], -v[39:40]
	v_add_f64 v[37:38], v[53:54], v[67:68]
	v_add_f64 v[39:40], v[55:56], v[69:70]
	v_add_f64 v[71:72], v[53:54], -v[67:68]
	v_add_f64 v[73:74], v[55:56], -v[69:70]
	v_add_f64 v[67:68], v[67:68], -v[45:46]
	v_add_f64 v[69:70], v[69:70], -v[47:48]
	v_add_f64 v[53:54], v[45:46], -v[53:54]
	v_add_f64 v[55:56], v[47:48], -v[55:56]
	v_add_f64 v[75:76], v[33:34], v[41:42]
	v_add_f64 v[77:78], v[35:36], v[43:44]
	v_add_f64 v[79:80], v[33:34], -v[41:42]
	v_add_f64 v[81:82], v[35:36], -v[43:44]
	v_add_f64 v[37:38], v[45:46], v[37:38]
	v_add_f64 v[39:40], v[47:48], v[39:40]
	v_add_f64 v[41:42], v[41:42], -v[49:50]
	v_add_f64 v[43:44], v[43:44], -v[51:52]
	v_add_f64 v[33:34], v[49:50], -v[33:34]
	v_add_f64 v[35:36], v[51:52], -v[35:36]
	v_add_f64 v[45:46], v[75:76], v[49:50]
	v_add_f64 v[47:48], v[77:78], v[51:52]
	v_mul_f64 v[49:50], v[67:68], s[12:13]
	v_mul_f64 v[51:52], v[69:70], s[12:13]
	v_mul_f64 v[67:68], v[53:54], s[14:15]
	v_mul_f64 v[69:70], v[55:56], s[14:15]
	v_mul_f64 v[75:76], v[79:80], s[24:25]
	v_mul_f64 v[77:78], v[81:82], s[24:25]
	v_add_f64 v[29:30], v[29:30], v[37:38]
	v_add_f64 v[31:32], v[31:32], v[39:40]
	v_mul_f64 v[79:80], v[41:42], s[20:21]
	v_mul_f64 v[81:82], v[43:44], s[20:21]
	v_fma_f64 v[53:54], v[53:54], s[14:15], v[49:50]
	v_fma_f64 v[55:56], v[55:56], s[14:15], v[51:52]
	v_fma_f64 v[67:68], v[71:72], s[26:27], -v[67:68]
	v_fma_f64 v[69:70], v[73:74], s[26:27], -v[69:70]
	v_fma_f64 v[49:50], v[71:72], s[28:29], -v[49:50]
	v_fma_f64 v[51:52], v[73:74], s[28:29], -v[51:52]
	v_fma_f64 v[71:72], v[33:34], s[30:31], v[75:76]
	v_fma_f64 v[73:74], v[35:36], s[30:31], v[77:78]
	v_fma_f64 v[37:38], v[37:38], s[22:23], v[29:30]
	v_fma_f64 v[39:40], v[39:40], s[22:23], v[31:32]
	v_fma_f64 v[33:34], v[33:34], s[36:37], -v[79:80]
	v_fma_f64 v[35:36], v[35:36], s[36:37], -v[81:82]
	v_fma_f64 v[41:42], v[41:42], s[20:21], -v[75:76]
	v_fma_f64 v[43:44], v[43:44], s[20:21], -v[77:78]
	v_fma_f64 v[71:72], v[45:46], s[34:35], v[71:72]
	v_fma_f64 v[73:74], v[47:48], s[34:35], v[73:74]
	v_add_f64 v[53:54], v[53:54], v[37:38]
	v_add_f64 v[55:56], v[55:56], v[39:40]
	v_fma_f64 v[79:80], v[45:46], s[34:35], v[33:34]
	v_fma_f64 v[81:82], v[47:48], s[34:35], v[35:36]
	v_add_f64 v[49:50], v[49:50], v[37:38]
	v_add_f64 v[51:52], v[51:52], v[39:40]
	v_fma_f64 v[75:76], v[45:46], s[34:35], v[41:42]
	v_fma_f64 v[77:78], v[47:48], s[34:35], v[43:44]
	v_add_f64 v[45:46], v[67:68], v[37:38]
	v_add_f64 v[47:48], v[69:70], v[39:40]
	v_add_f64 v[33:34], v[73:74], v[53:54]
	v_add_f64 v[35:36], v[55:56], -v[71:72]
	v_add_f64 v[37:38], v[81:82], v[49:50]
	v_add_f64 v[39:40], v[51:52], -v[79:80]
	v_add_f64 v[49:50], v[49:50], -v[81:82]
	v_add_f64 v[51:52], v[79:80], v[51:52]
	v_add_f64 v[41:42], v[45:46], -v[77:78]
	v_add_f64 v[43:44], v[75:76], v[47:48]
	v_add_f64 v[45:46], v[77:78], v[45:46]
	v_add_f64 v[47:48], v[47:48], -v[75:76]
	v_add_f64 v[53:54], v[53:54], -v[73:74]
	v_add_f64 v[55:56], v[71:72], v[55:56]
	v_add3_u32 v67, 0, v103, v66
	ds_write_b128 v67, v[29:32]
	ds_write_b128 v67, v[33:36] offset:1152
	ds_write_b128 v67, v[37:40] offset:2304
	ds_write_b128 v67, v[41:44] offset:3456
	ds_write_b128 v67, v[45:48] offset:4608
	ds_write_b128 v67, v[49:52] offset:5760
	ds_write_b128 v67, v[53:56] offset:6912
	s_and_saveexec_b64 s[38:39], vcc
	s_cbranch_execz .LBB0_15
; %bb.14:                               ; %if.then721.i
	s_movk_i32 s40, 0xab
	v_mul_lo_u16_sdwa v29, v61, s40 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:BYTE_0 src1_sel:DWORD
	v_lshrrev_b16_e32 v75, 10, v29
	v_mul_lo_u16_e32 v29, 6, v75
	v_sub_u16_e32 v29, v61, v29
	v_and_b32_e32 v76, 0xff, v29
	v_mul_u32_u24_e32 v29, 6, v76
	v_lshlrev_b32_e32 v53, 4, v29
	global_load_dwordx4 v[29:32], v53, s[6:7] offset:48
	global_load_dwordx4 v[33:36], v53, s[6:7] offset:32
	global_load_dwordx4 v[37:40], v53, s[6:7] offset:16
	global_load_dwordx4 v[41:44], v53, s[6:7] offset:64
	global_load_dwordx4 v[45:48], v53, s[6:7]
	global_load_dwordx4 v[49:52], v53, s[6:7] offset:80
	s_waitcnt vmcnt(5)
	v_mul_f64 v[53:54], v[19:20], v[31:32]
	s_waitcnt vmcnt(4)
	v_mul_f64 v[55:56], v[15:16], v[35:36]
	s_waitcnt vmcnt(3)
	v_mul_f64 v[67:68], v[11:12], v[39:40]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[69:70], v[23:24], v[43:44]
	s_waitcnt vmcnt(1)
	v_mul_f64 v[71:72], v[7:8], v[47:48]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[73:74], v[27:28], v[51:52]
	v_mul_f64 v[39:40], v[9:10], v[39:40]
	v_mul_f64 v[43:44], v[21:22], v[43:44]
	v_mul_f64 v[47:48], v[5:6], v[47:48]
	v_mul_f64 v[51:52], v[25:26], v[51:52]
	v_mul_f64 v[35:36], v[13:14], v[35:36]
	v_mul_f64 v[31:32], v[17:18], v[31:32]
	v_fma_f64 v[9:10], v[9:10], v[37:38], v[67:68]
	v_fma_f64 v[21:22], v[21:22], v[41:42], v[69:70]
	v_fma_f64 v[5:6], v[5:6], v[45:46], v[71:72]
	v_fma_f64 v[25:26], v[25:26], v[49:50], v[73:74]
	v_fma_f64 v[11:12], v[11:12], v[37:38], -v[39:40]
	v_fma_f64 v[23:24], v[23:24], v[41:42], -v[43:44]
	v_fma_f64 v[7:8], v[7:8], v[45:46], -v[47:48]
	v_fma_f64 v[27:28], v[27:28], v[49:50], -v[51:52]
	v_fma_f64 v[17:18], v[17:18], v[29:30], v[53:54]
	v_fma_f64 v[13:14], v[13:14], v[33:34], v[55:56]
	v_fma_f64 v[15:16], v[15:16], v[33:34], -v[35:36]
	v_fma_f64 v[19:20], v[19:20], v[29:30], -v[31:32]
	v_add_f64 v[31:32], v[9:10], -v[21:22]
	v_add_f64 v[33:34], v[5:6], -v[25:26]
	v_add_f64 v[37:38], v[11:12], v[23:24]
	v_add_f64 v[39:40], v[7:8], v[27:28]
	v_add_f64 v[9:10], v[9:10], v[21:22]
	v_add_f64 v[5:6], v[5:6], v[25:26]
	v_mad_u32_u24 v29, v75, 42, v76
	v_mul_u32_u24_e32 v49, 0xc0, v29
	v_add_f64 v[29:30], v[17:18], -v[13:14]
	v_add_f64 v[35:36], v[15:16], v[19:20]
	v_add_f64 v[13:14], v[13:14], v[17:18]
	v_add_f64 v[15:16], v[19:20], -v[15:16]
	v_add_f64 v[11:12], v[11:12], -v[23:24]
	v_add_f64 v[7:8], v[7:8], -v[27:28]
	v_add_f64 v[27:28], v[37:38], v[39:40]
	v_add_f64 v[43:44], v[9:10], v[5:6]
	v_add_f64 v[17:18], v[29:30], v[31:32]
	v_add_f64 v[19:20], v[29:30], -v[31:32]
	v_add_f64 v[21:22], v[33:34], -v[29:30]
	v_add_f64 v[25:26], v[39:40], -v[35:36]
	v_add_f64 v[29:30], v[13:14], -v[9:10]
	v_add_f64 v[41:42], v[5:6], -v[13:14]
	v_add_f64 v[47:48], v[15:16], -v[11:12]
	v_add_f64 v[27:28], v[35:36], v[27:28]
	v_add_f64 v[13:14], v[13:14], v[43:44]
	v_add_f64 v[31:32], v[31:32], -v[33:34]
	v_add_f64 v[5:6], v[9:10], -v[5:6]
	v_add_f64 v[9:10], v[11:12], -v[7:8]
	v_add_f64 v[23:24], v[35:36], -v[37:38]
	v_add_f64 v[45:46], v[15:16], v[11:12]
	v_add_f64 v[15:16], v[7:8], -v[15:16]
	v_add_f64 v[37:38], v[37:38], -v[39:40]
	v_add_f64 v[11:12], v[17:18], v[33:34]
	v_mul_f64 v[17:18], v[19:20], s[24:25]
	v_mul_f64 v[25:26], v[25:26], s[12:13]
	v_mul_f64 v[35:36], v[41:42], s[12:13]
	v_mul_f64 v[39:40], v[47:48], s[24:25]
	v_add_f64 v[3:4], v[3:4], v[27:28]
	v_add_f64 v[1:2], v[1:2], v[13:14]
	v_mul_f64 v[41:42], v[31:32], s[20:21]
	v_mul_f64 v[43:44], v[9:10], s[20:21]
	v_mul_f64 v[19:20], v[23:24], s[14:15]
	v_mul_f64 v[33:34], v[29:30], s[14:15]
	v_add_f64 v[7:8], v[45:46], v[7:8]
	v_fma_f64 v[45:46], v[21:22], s[30:31], v[17:18]
	v_fma_f64 v[23:24], v[23:24], s[14:15], v[25:26]
	v_fma_f64 v[29:30], v[29:30], s[14:15], v[35:36]
	v_fma_f64 v[47:48], v[15:16], s[30:31], v[39:40]
	v_fma_f64 v[27:28], v[27:28], s[22:23], v[3:4]
	v_fma_f64 v[13:14], v[13:14], s[22:23], v[1:2]
	v_fma_f64 v[21:22], v[21:22], s[36:37], -v[41:42]
	v_fma_f64 v[25:26], v[37:38], s[28:29], -v[25:26]
	v_fma_f64 v[35:36], v[5:6], s[28:29], -v[35:36]
	v_fma_f64 v[15:16], v[15:16], s[36:37], -v[43:44]
	v_fma_f64 v[19:20], v[37:38], s[26:27], -v[19:20]
	v_fma_f64 v[17:18], v[31:32], s[20:21], -v[17:18]
	v_fma_f64 v[9:10], v[9:10], s[20:21], -v[39:40]
	v_fma_f64 v[5:6], v[5:6], s[26:27], -v[33:34]
	v_fma_f64 v[31:32], v[11:12], s[34:35], v[45:46]
	v_fma_f64 v[33:34], v[7:8], s[34:35], v[47:48]
	v_add_f64 v[37:38], v[23:24], v[27:28]
	v_add_f64 v[29:30], v[29:30], v[13:14]
	v_fma_f64 v[21:22], v[11:12], s[34:35], v[21:22]
	v_add_f64 v[23:24], v[25:26], v[27:28]
	v_fma_f64 v[39:40], v[7:8], s[34:35], v[15:16]
	v_add_f64 v[35:36], v[35:36], v[13:14]
	v_fma_f64 v[17:18], v[11:12], s[34:35], v[17:18]
	v_add_f64 v[19:20], v[19:20], v[27:28]
	v_fma_f64 v[9:10], v[7:8], s[34:35], v[9:10]
	v_add_f64 v[5:6], v[5:6], v[13:14]
	v_add_f64 v[27:28], v[37:38], -v[31:32]
	v_add_f64 v[25:26], v[33:34], v[29:30]
	v_add_f64 v[11:12], v[21:22], v[23:24]
	v_add_f64 v[23:24], v[23:24], -v[21:22]
	v_add_f64 v[21:22], v[39:40], v[35:36]
	v_add_f64 v[15:16], v[19:20], -v[17:18]
	v_add_f64 v[19:20], v[17:18], v[19:20]
	v_add_f64 v[17:18], v[5:6], -v[9:10]
	v_add_f64 v[13:14], v[9:10], v[5:6]
	v_add_f64 v[9:10], v[35:36], -v[39:40]
	v_add_f64 v[7:8], v[31:32], v[37:38]
	v_add_f64 v[5:6], v[29:30], -v[33:34]
	v_add3_u32 v29, 0, v49, v66
	ds_write_b128 v29, v[1:4]
	ds_write_b128 v29, v[25:28] offset:1152
	ds_write_b128 v29, v[21:24] offset:2304
	ds_write_b128 v29, v[17:20] offset:3456
	ds_write_b128 v29, v[13:16] offset:4608
	ds_write_b128 v29, v[9:12] offset:5760
	ds_write_b128 v29, v[5:8] offset:6912
.LBB0_15:                               ; %_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m.exit
	s_or_b64 exec, exec, s[38:39]
	v_lshrrev_b16_e32 v5, 1, v61
	v_and_b32_e32 v5, 0x7f, v5
	v_mul_lo_u16_e32 v5, 49, v5
	v_lshrrev_b16_e32 v99, 10, v5
	v_mul_lo_u16_e32 v5, 42, v99
	v_sub_u16_e32 v5, v61, v5
	v_and_b32_e32 v100, 0xff, v5
	v_mul_lo_u16_e32 v5, 49, v64
	v_lshrrev_b16_e32 v101, 11, v5
	v_mul_lo_u16_e32 v6, 49, v63
	v_mul_lo_u16_e32 v5, 42, v101
	v_lshrrev_b16_e32 v103, 11, v6
	v_sub_u16_e32 v5, v64, v5
	v_mul_lo_u16_e32 v6, 42, v103
	v_and_b32_e32 v56, 0xffff, v60
	v_and_b32_e32 v102, 0xff, v5
	v_sub_u16_e32 v6, v63, v6
	v_lshlrev_b32_e32 v1, 4, v56
	v_lshlrev_b32_e32 v5, 4, v102
	v_and_b32_e32 v104, 0xff, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_u32_e32 v7, 0x46, v60
	global_load_dwordx4 v[1:4], v1, s[6:7] offset:576
	v_lshlrev_b32_e32 v6, 4, v104
	global_load_dwordx4 v[10:13], v5, s[6:7] offset:576
	global_load_dwordx4 v[14:17], v6, s[6:7] offset:576
	v_mul_lo_u16_e32 v5, 49, v62
	v_lshrrev_b16_e32 v105, 11, v5
	v_mul_lo_u16_e32 v6, 49, v7
	v_mul_lo_u16_e32 v5, 42, v105
	v_lshrrev_b16_e32 v107, 11, v6
	v_sub_u16_e32 v5, v62, v5
	v_mul_lo_u16_e32 v6, 42, v107
	v_and_b32_e32 v106, 0xff, v5
	v_sub_u16_e32 v6, v7, v6
	v_lshlrev_b32_e32 v5, 4, v106
	v_and_b32_e32 v108, 0xff, v6
	global_load_dwordx4 v[18:21], v5, s[6:7] offset:576
	v_lshlrev_b32_e32 v5, 4, v108
	global_load_dwordx4 v[22:25], v5, s[6:7] offset:576
	v_lshlrev_b32_e32 v5, 4, v100
	global_load_dwordx4 v[26:29], v5, s[6:7] offset:576
	ds_read_b128 v[30:33], v65
	ds_read_b128 v[34:37], v65 offset:16128
	v_mul_i32_i24_e32 v5, 12, v61
	v_mul_u32_u24_e32 v6, 12, v64
	v_lshlrev_b32_e32 v5, 4, v5
	v_lshlrev_b32_e32 v6, 4, v6
	v_add3_u32 v9, 0, v5, v66
	v_add3_u32 v8, 0, v6, v66
	ds_read_b128 v[38:41], v65 offset:18816
	ds_read_b128 v[42:45], v65 offset:21504
	ds_read_b128 v[46:49], v65 offset:24192
	ds_read_b128 v[50:53], v65 offset:26880
	ds_read_b128 v[67:70], v8
	ds_read_b128 v[71:74], v8 offset:2688
	ds_read_b128 v[75:78], v8 offset:5376
	ds_read_b128 v[79:82], v8 offset:8064
	ds_read_b128 v[83:86], v9
	ds_read_b128 v[87:90], v65 offset:29568
	s_movk_i32 s12, 0x54
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	v_cmp_gt_u64_e32 vcc, s[18:19], v[57:58]
	s_or_b64 s[0:1], s[0:1], vcc
	v_mul_f64 v[5:6], v[36:37], v[3:4]
	v_mul_f64 v[3:4], v[34:35], v[3:4]
	v_mul_f64 v[54:55], v[44:45], v[12:13]
	v_mul_f64 v[12:13], v[42:43], v[12:13]
	v_mul_f64 v[91:92], v[48:49], v[16:17]
	v_mul_f64 v[16:17], v[46:47], v[16:17]
	v_fma_f64 v[5:6], v[34:35], v[1:2], v[5:6]
	v_fma_f64 v[3:4], v[36:37], v[1:2], -v[3:4]
	v_fma_f64 v[34:35], v[42:43], v[10:11], v[54:55]
	v_fma_f64 v[12:13], v[44:45], v[10:11], -v[12:13]
	v_fma_f64 v[36:37], v[46:47], v[14:15], v[91:92]
	v_fma_f64 v[16:17], v[48:49], v[14:15], -v[16:17]
	v_mul_f64 v[93:94], v[52:53], v[20:21]
	v_mul_f64 v[20:21], v[50:51], v[20:21]
	v_mul_f64 v[95:96], v[89:90], v[24:25]
	v_mul_f64 v[24:25], v[87:88], v[24:25]
	v_mul_f64 v[97:98], v[40:41], v[28:29]
	v_mul_f64 v[28:29], v[38:39], v[28:29]
	v_add_f64 v[1:2], v[30:31], -v[5:6]
	v_add_f64 v[3:4], v[32:33], -v[3:4]
	v_fma_f64 v[42:43], v[50:51], v[18:19], v[93:94]
	v_fma_f64 v[20:21], v[52:53], v[18:19], -v[20:21]
	v_add_f64 v[10:11], v[67:68], -v[34:35]
	v_add_f64 v[12:13], v[69:70], -v[12:13]
	v_fma_f64 v[38:39], v[38:39], v[26:27], v[97:98]
	v_fma_f64 v[28:29], v[40:41], v[26:27], -v[28:29]
	v_fma_f64 v[44:45], v[87:88], v[22:23], v[95:96]
	v_fma_f64 v[24:25], v[89:90], v[22:23], -v[24:25]
	v_fma_f64 v[30:31], v[30:31], 2.0, -v[1:2]
	v_fma_f64 v[32:33], v[32:33], 2.0, -v[3:4]
	v_add_f64 v[14:15], v[71:72], -v[36:37]
	v_add_f64 v[16:17], v[73:74], -v[16:17]
	v_add_f64 v[26:27], v[83:84], -v[38:39]
	v_add_f64 v[28:29], v[85:86], -v[28:29]
	v_add_f64 v[18:19], v[75:76], -v[42:43]
	v_add_f64 v[20:21], v[77:78], -v[20:21]
	v_mul_u32_u24_e32 v5, 12, v56
	v_fma_f64 v[34:35], v[67:68], 2.0, -v[10:11]
	v_fma_f64 v[36:37], v[69:70], 2.0, -v[12:13]
	v_lshlrev_b32_e32 v5, 4, v5
	v_fma_f64 v[50:51], v[83:84], 2.0, -v[26:27]
	v_fma_f64 v[52:53], v[85:86], 2.0, -v[28:29]
	v_add_f64 v[22:23], v[79:80], -v[44:45]
	v_add_f64 v[24:25], v[81:82], -v[24:25]
	v_add3_u32 v5, 0, v5, v66
	ds_write_b128 v5, v[30:33]
	ds_write_b128 v5, v[1:4] offset:8064
	v_mad_u32_u24 v1, v99, s12, v100
	v_fma_f64 v[38:39], v[71:72], 2.0, -v[14:15]
	v_fma_f64 v[40:41], v[73:74], 2.0, -v[16:17]
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v66
	ds_write_b128 v1, v[50:53]
	ds_write_b128 v1, v[26:29] offset:8064
	v_mad_u32_u24 v1, v101, s12, v102
	v_fma_f64 v[42:43], v[75:76], 2.0, -v[18:19]
	v_fma_f64 v[44:45], v[77:78], 2.0, -v[20:21]
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v66
	ds_write_b128 v1, v[34:37]
	ds_write_b128 v1, v[10:13] offset:8064
	v_mad_u32_u24 v1, v103, s12, v104
	v_fma_f64 v[46:47], v[79:80], 2.0, -v[22:23]
	v_fma_f64 v[48:49], v[81:82], 2.0, -v[24:25]
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v66
	ds_write_b128 v1, v[38:41]
	ds_write_b128 v1, v[14:17] offset:8064
	v_mad_u32_u24 v1, v105, s12, v106
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v66
	ds_write_b128 v1, v[42:45]
	ds_write_b128 v1, v[18:21] offset:8064
	v_mad_u32_u24 v1, v107, s12, v108
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v66
	ds_write_b128 v1, v[46:49]
	ds_write_b128 v1, v[22:25] offset:8064
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[12:13], s[0:1]
	s_cbranch_execz .LBB0_17
; %bb.16:                               ; %if.end833.sink.split
	s_movk_i32 s0, 0xa8
	v_add_u32_e32 v1, -14, v60
	v_cmp_gt_u32_e32 vcc, s0, v0
	v_cndmask_b32_e32 v5, v1, v7, vcc
	v_mov_b32_e32 v6, 0
	v_lshlrev_b64 v[1:2], 4, v[5:6]
	v_mov_b32_e32 v10, s7
	v_add_co_u32_e32 v1, vcc, s6, v1
	v_add_u32_e32 v3, 0x54, v5
	v_addc_co_u32_e32 v2, vcc, v10, v2, vcc
	v_mul_lo_u32 v12, v57, v3
	global_load_dwordx4 v[1:4], v[1:2], off offset:1248
	s_load_dwordx2 s[0:1], s[4:5], 0x8
	v_mul_lo_u32 v14, v57, v5
	v_mov_b32_e32 v11, 4
	v_lshlrev_b32_sdwa v13, v11, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v15, v12, 8, 8
	v_mov_b32_e32 v12, 0x1000
	v_lshl_or_b32 v15, v15, 4, v12
	s_waitcnt lgkmcnt(0)
	global_load_dwordx4 v[16:19], v13, s[0:1]
	global_load_dwordx4 v[20:23], v15, s[0:1]
	v_lshlrev_b32_sdwa v13, v11, v14 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v14, v14, 8, 8
	v_lshl_or_b32 v14, v14, 4, v12
	global_load_dwordx4 v[24:27], v13, s[0:1]
	global_load_dwordx4 v[28:31], v14, s[0:1]
	s_movk_i32 s7, 0x150
	v_subrev_u32_e32 v13, 28, v60
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_cndmask_b32_e32 v110, v13, v62, vcc
	v_mov_b32_e32 v111, v6
	v_lshlrev_b64 v[13:14], 4, v[110:111]
	v_mul_lo_u32 v15, v57, v110
	v_add_co_u32_e32 v13, vcc, s6, v13
	v_addc_co_u32_e32 v14, vcc, v10, v14, vcc
	global_load_dwordx4 v[32:35], v[13:14], off offset:1248
	v_add_u32_e32 v13, 0x54, v110
	v_mul_lo_u32 v13, v57, v13
	s_movk_i32 s7, 0x1f8
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_mov_b32_e32 v112, v6
	v_lshlrev_b32_sdwa v14, v11, v13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v13, v13, 8, 8
	v_lshl_or_b32 v13, v13, 4, v12
	global_load_dwordx4 v[36:39], v14, s[0:1]
	global_load_dwordx4 v[40:43], v13, s[0:1]
	v_lshlrev_b32_sdwa v13, v11, v15 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v14, v15, 8, 8
	v_lshl_or_b32 v14, v14, 4, v12
	global_load_dwordx4 v[44:47], v13, s[0:1]
	global_load_dwordx4 v[48:51], v14, s[0:1]
	v_subrev_u32_e32 v13, 42, v60
	v_cndmask_b32_e32 v111, v13, v63, vcc
	v_lshlrev_b64 v[13:14], 4, v[111:112]
	s_movk_i32 s7, 0x2a0
	v_add_co_u32_e32 v13, vcc, s6, v13
	v_addc_co_u32_e32 v14, vcc, v10, v14, vcc
	global_load_dwordx4 v[52:55], v[13:14], off offset:1248
	v_add_u32_e32 v13, 0x54, v111
	v_mul_lo_u32 v13, v57, v13
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_mov_b32_e32 v113, v6
	v_add_u32_e32 v15, 0x1f80, v8
	v_lshlrev_b32_sdwa v14, v11, v13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v13, v13, 8, 8
	v_lshl_or_b32 v13, v13, 4, v12
	global_load_dwordx4 v[66:69], v14, s[0:1]
	global_load_dwordx4 v[70:73], v13, s[0:1]
	v_mul_lo_u32 v13, v57, v111
	s_movk_i32 s7, 0x348
	v_mov_b32_e32 v118, v6
	v_mov_b32_e32 v123, v6
	v_lshlrev_b32_sdwa v14, v11, v13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v13, v13, 8, 8
	v_lshl_or_b32 v13, v13, 4, v12
	global_load_dwordx4 v[74:77], v14, s[0:1]
	global_load_dwordx4 v[78:81], v13, s[0:1]
	ds_read_b128 v[82:85], v65 offset:29568
	ds_read_b128 v[86:89], v9
	v_subrev_u32_e32 v13, 56, v60
	v_cndmask_b32_e32 v112, v13, v64, vcc
	v_lshlrev_b64 v[13:14], 4, v[112:113]
	v_add_u32_e32 v9, 0xa80, v8
	v_add_co_u32_e32 v13, vcc, s6, v13
	v_addc_co_u32_e32 v14, vcc, v10, v14, vcc
	global_load_dwordx4 v[90:93], v[13:14], off offset:1248
	v_cmp_gt_u32_e32 vcc, s7, v0
	s_movk_i32 s7, 0x3f0
	s_load_dwordx2 s[4:5], s[4:5], 0x68
	s_waitcnt vmcnt(15) lgkmcnt(0)
	v_mul_f64 v[94:95], v[84:85], v[3:4]
	v_mul_f64 v[3:4], v[82:83], v[3:4]
	v_fma_f64 v[13:14], v[82:83], v[1:2], v[94:95]
	v_fma_f64 v[98:99], v[84:85], v[1:2], -v[3:4]
	ds_read_b128 v[1:4], v15
	ds_read_b128 v[94:97], v65 offset:26880
	s_waitcnt vmcnt(13)
	v_mul_f64 v[100:101], v[16:17], v[22:23]
	v_mul_f64 v[22:23], v[18:19], v[22:23]
	s_waitcnt vmcnt(11)
	v_mul_f64 v[102:103], v[24:25], v[30:31]
	v_add_u32_e32 v15, 0x1500, v8
	s_waitcnt lgkmcnt(1)
	v_add_f64 v[13:14], v[1:2], -v[13:14]
	v_add_f64 v[104:105], v[3:4], -v[98:99]
	ds_read_b128 v[82:85], v15
	v_mul_f64 v[30:31], v[26:27], v[30:31]
	v_fma_f64 v[18:19], v[18:19], v[20:21], v[100:101]
	ds_read_b128 v[98:101], v65 offset:24192
	v_fma_f64 v[15:16], v[16:17], v[20:21], -v[22:23]
	s_waitcnt vmcnt(10) lgkmcnt(2)
	v_mul_f64 v[106:107], v[96:97], v[34:35]
	v_fma_f64 v[20:21], v[1:2], 2.0, -v[13:14]
	v_fma_f64 v[1:2], v[26:27], v[28:29], v[102:103]
	v_fma_f64 v[22:23], v[3:4], 2.0, -v[104:105]
	v_mul_f64 v[26:27], v[94:95], v[34:35]
	v_mul_f64 v[3:4], v[13:14], v[18:19]
	v_mul_f64 v[17:18], v[104:105], v[18:19]
	v_fma_f64 v[24:25], v[24:25], v[28:29], -v[30:31]
	v_fma_f64 v[28:29], v[94:95], v[32:33], v[106:107]
	s_waitcnt vmcnt(8)
	v_mul_f64 v[30:31], v[36:37], v[42:43]
	v_mul_f64 v[34:35], v[20:21], v[1:2]
	v_mul_f64 v[94:95], v[22:23], v[1:2]
	v_fma_f64 v[26:27], v[96:97], v[32:33], -v[26:27]
	v_mul_f64 v[32:33], v[38:39], v[42:43]
	v_fma_f64 v[1:2], v[13:14], v[15:16], v[17:18]
	v_fma_f64 v[3:4], v[104:105], v[15:16], -v[3:4]
	s_waitcnt lgkmcnt(1)
	v_add_f64 v[42:43], v[82:83], -v[28:29]
	v_fma_f64 v[17:18], v[38:39], v[40:41], v[30:31]
	v_fma_f64 v[15:16], v[22:23], v[24:25], -v[34:35]
	v_fma_f64 v[13:14], v[20:21], v[24:25], v[94:95]
	s_waitcnt vmcnt(6)
	v_mul_f64 v[19:20], v[44:45], v[50:51]
	v_add_f64 v[25:26], v[84:85], -v[26:27]
	s_waitcnt vmcnt(5) lgkmcnt(0)
	v_mul_f64 v[23:24], v[100:101], v[54:55]
	v_fma_f64 v[29:30], v[36:37], v[40:41], -v[32:33]
	v_mul_f64 v[21:22], v[46:47], v[50:51]
	v_mul_f64 v[31:32], v[98:99], v[54:55]
	v_fma_f64 v[33:34], v[82:83], 2.0, -v[42:43]
	v_mul_f64 v[27:28], v[42:43], v[17:18]
	v_fma_f64 v[35:36], v[46:47], v[48:49], v[19:20]
	v_fma_f64 v[37:38], v[84:85], 2.0, -v[25:26]
	v_fma_f64 v[46:47], v[98:99], v[52:53], v[23:24]
	v_mul_f64 v[39:40], v[25:26], v[17:18]
	v_fma_f64 v[44:45], v[44:45], v[48:49], -v[21:22]
	v_fma_f64 v[31:32], v[100:101], v[52:53], -v[31:32]
	ds_read_b128 v[17:20], v9
	ds_read_b128 v[21:24], v8
	v_mul_f64 v[50:51], v[33:34], v[35:36]
	s_waitcnt vmcnt(3)
	v_mul_f64 v[48:49], v[66:67], v[72:73]
	v_mul_f64 v[35:36], v[37:38], v[35:36]
	s_waitcnt lgkmcnt(1)
	v_add_f64 v[84:85], v[17:18], -v[46:47]
	s_waitcnt vmcnt(1)
	v_mul_f64 v[46:47], v[76:77], v[80:81]
	v_add_f64 v[113:114], v[19:20], -v[31:32]
	v_mul_f64 v[52:53], v[68:69], v[72:73]
	v_fma_f64 v[27:28], v[25:26], v[29:30], -v[27:28]
	v_fma_f64 v[31:32], v[37:38], v[44:45], -v[50:51]
	v_add_u32_e32 v37, 0x54, v112
	v_mul_lo_u32 v41, v57, v37
	v_fma_f64 v[8:9], v[68:69], v[70:71], v[48:49]
	v_fma_f64 v[25:26], v[42:43], v[29:30], v[39:40]
	v_fma_f64 v[29:30], v[33:34], v[44:45], v[35:36]
	v_lshlrev_b32_sdwa v49, v11, v41 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v41, v41, 8, 8
	v_fma_f64 v[115:116], v[74:75], v[78:79], -v[46:47]
	ds_read_b128 v[33:36], v65 offset:21504
	ds_read_b128 v[37:40], v65 offset:18816
	v_lshl_or_b32 v50, v41, 4, v12
	global_load_dwordx4 v[41:44], v49, s[0:1]
	global_load_dwordx4 v[45:48], v50, s[0:1]
	v_add_u32_e32 v49, 0xffffffba, v60
	v_cndmask_b32_e32 v117, v49, v61, vcc
	v_mul_lo_u32 v51, v57, v112
	v_lshlrev_b64 v[49:50], 4, v[117:118]
	v_fma_f64 v[102:103], v[66:67], v[70:71], -v[52:53]
	v_add_co_u32_e32 v49, vcc, s6, v49
	v_addc_co_u32_e32 v50, vcc, v10, v50, vcc
	v_lshlrev_b32_sdwa v58, v11, v51 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v53, v51, 8, 8
	global_load_dwordx4 v[49:52], v[49:50], off offset:1248
	v_add_u32_e32 v54, 0x54, v117
	v_mul_lo_u32 v70, v57, v54
	v_lshl_or_b32 v71, v53, 4, v12
	global_load_dwordx4 v[53:56], v58, s[0:1]
	global_load_dwordx4 v[66:69], v71, s[0:1]
	s_waitcnt vmcnt(5) lgkmcnt(1)
	v_mul_f64 v[94:95], v[33:34], v[92:93]
	v_mul_f64 v[92:93], v[35:36], v[92:93]
	v_lshlrev_b32_sdwa v58, v11, v70 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v70, v70, 8, 8
	v_mul_f64 v[74:75], v[74:75], v[80:81]
	v_lshl_or_b32 v96, v70, 4, v12
	global_load_dwordx4 v[70:73], v58, s[0:1]
	global_load_dwordx4 v[80:83], v96, s[0:1]
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_fma_f64 v[118:119], v[35:36], v[90:91], -v[94:95]
	v_fma_f64 v[120:121], v[33:34], v[90:91], v[92:93]
	v_add_u32_e32 v33, 0xffffffac, v60
	v_cndmask_b32_e32 v122, v33, v60, vcc
	v_lshlrev_b64 v[33:34], 4, v[122:123]
	v_mul_lo_u32 v58, v57, v117
	v_add_co_u32_e32 v33, vcc, s6, v33
	v_addc_co_u32_e32 v34, vcc, v10, v34, vcc
	global_load_dwordx4 v[33:36], v[33:34], off offset:1248
	v_add_u32_e32 v6, 0x54, v122
	v_lshlrev_b32_sdwa v94, v11, v58 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v58, v58, 8, 8
	v_mul_lo_u32 v6, v57, v6
	v_fma_f64 v[78:79], v[76:77], v[78:79], v[74:75]
	v_lshl_or_b32 v10, v58, 4, v12
	global_load_dwordx4 v[74:77], v94, s[0:1]
	global_load_dwordx4 v[90:93], v10, s[0:1]
	v_mul_f64 v[104:105], v[84:85], v[8:9]
	v_mul_f64 v[8:9], v[113:114], v[8:9]
	v_lshlrev_b32_sdwa v10, v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v6, v6, 8, 8
	v_lshl_or_b32 v6, v6, 4, v12
	global_load_dwordx4 v[94:97], v10, s[0:1]
	global_load_dwordx4 v[98:101], v6, s[0:1]
	v_mul_lo_u32 v6, v57, v122
	v_fma_f64 v[17:18], v[17:18], 2.0, -v[84:85]
	v_fma_f64 v[104:105], v[113:114], v[102:103], -v[104:105]
	v_fma_f64 v[102:103], v[84:85], v[102:103], v[8:9]
	v_lshlrev_b32_sdwa v57, v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v6, v6, 8, 8
	v_lshl_or_b32 v6, v6, 4, v12
	global_load_dwordx4 v[8:11], v57, s[0:1]
	global_load_dwordx4 v[106:109], v6, s[0:1]
	v_fma_f64 v[19:20], v[19:20], 2.0, -v[113:114]
	v_mul_f64 v[57:58], v[17:18], v[78:79]
	s_mul_i32 s0, s8, s33
	s_mul_hi_u32 s1, s8, s17
	s_add_i32 s0, s1, s0
	s_mul_i32 s1, s9, s17
	s_mul_i32 s6, s11, s16
	s_mul_hi_u32 s7, s10, s16
	v_mul_f64 v[78:79], v[19:20], v[78:79]
	v_fma_f64 v[19:20], v[19:20], v[115:116], -v[57:58]
	v_add_f64 v[57:58], v[23:24], -v[118:119]
	s_add_i32 s1, s0, s1
	s_mul_i32 s0, s8, s17
	s_add_i32 s7, s7, s6
	s_mul_i32 s6, s10, s16
	v_mov_b32_e32 v6, 0xa8
	v_fma_f64 v[17:18], v[17:18], v[115:116], v[78:79]
	s_lshl_b64 s[6:7], s[6:7], 4
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	s_lshl_b64 s[0:1], s[0:1], 4
	s_add_u32 s4, s4, s0
	s_addc_u32 s0, s5, s1
	s_waitcnt vmcnt(12)
	v_mul_f64 v[84:85], v[43:44], v[47:48]
	v_mul_f64 v[47:48], v[41:42], v[47:48]
	v_fma_f64 v[41:42], v[41:42], v[45:46], -v[84:85]
	v_add_f64 v[84:85], v[21:22], -v[120:121]
	v_fma_f64 v[43:44], v[43:44], v[45:46], v[47:48]
	v_fma_f64 v[45:46], v[23:24], 2.0, -v[57:58]
	s_waitcnt vmcnt(11) lgkmcnt(0)
	v_mul_f64 v[78:79], v[39:40], v[51:52]
	v_mul_f64 v[23:24], v[37:38], v[51:52]
	s_waitcnt vmcnt(9)
	v_mul_f64 v[113:114], v[53:54], v[68:69]
	v_mul_f64 v[47:48], v[55:56], v[68:69]
	v_fma_f64 v[68:69], v[21:22], 2.0, -v[84:85]
	v_fma_f64 v[37:38], v[37:38], v[49:50], v[78:79]
	v_mul_f64 v[78:79], v[84:85], v[43:44]
	s_waitcnt vmcnt(7)
	v_mul_f64 v[51:52], v[70:71], v[82:83]
	v_fma_f64 v[55:56], v[55:56], v[66:67], v[113:114]
	v_mul_f64 v[113:114], v[57:58], v[43:44]
	v_fma_f64 v[43:44], v[39:40], v[49:50], -v[23:24]
	v_mul_f64 v[49:50], v[72:73], v[82:83]
	v_add_f64 v[82:83], v[86:87], -v[37:38]
	ds_read_b128 v[21:24], v65
	ds_read_b128 v[37:40], v65 offset:16128
	v_fma_f64 v[53:54], v[53:54], v[66:67], -v[47:48]
	v_fma_f64 v[51:52], v[72:73], v[80:81], v[51:52]
	v_mul_f64 v[47:48], v[68:69], v[55:56]
	v_mul_f64 v[55:56], v[45:46], v[55:56]
	v_add_f64 v[65:66], v[88:89], -v[43:44]
	s_waitcnt vmcnt(6) lgkmcnt(0)
	v_mul_f64 v[72:73], v[39:40], v[35:36]
	v_fma_f64 v[43:44], v[57:58], v[41:42], -v[78:79]
	v_mul_f64 v[57:58], v[37:38], v[35:36]
	v_fma_f64 v[49:50], v[70:71], v[80:81], -v[49:50]
	v_mul_f64 v[70:71], v[82:83], v[51:52]
	v_fma_f64 v[47:48], v[45:46], v[53:54], -v[47:48]
	v_fma_f64 v[45:46], v[68:69], v[53:54], v[55:56]
	s_waitcnt vmcnt(4)
	v_mul_f64 v[53:54], v[74:75], v[92:93]
	v_fma_f64 v[37:38], v[37:38], v[33:34], v[72:73]
	v_fma_f64 v[67:68], v[86:87], 2.0, -v[82:83]
	v_fma_f64 v[33:34], v[39:40], v[33:34], -v[57:58]
	v_mul_f64 v[57:58], v[76:77], v[92:93]
	v_fma_f64 v[39:40], v[88:89], 2.0, -v[65:66]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[55:56], v[94:95], v[100:101]
	v_fma_f64 v[35:36], v[65:66], v[49:50], -v[70:71]
	v_fma_f64 v[53:54], v[76:77], v[90:91], v[53:54]
	v_add_f64 v[37:38], v[21:22], -v[37:38]
	v_mul_f64 v[69:70], v[96:97], v[100:101]
	v_add_f64 v[71:72], v[23:24], -v[33:34]
	v_mul_f64 v[33:34], v[65:66], v[51:52]
	v_fma_f64 v[51:52], v[74:75], v[90:91], -v[57:58]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[57:58], v[8:9], v[108:109]
	v_fma_f64 v[55:56], v[96:97], v[98:99], v[55:56]
	v_mul_f64 v[65:66], v[67:68], v[53:54]
	v_mul_f64 v[53:54], v[39:40], v[53:54]
	v_mul_f64 v[75:76], v[10:11], v[108:109]
	v_fma_f64 v[77:78], v[21:22], 2.0, -v[37:38]
	v_fma_f64 v[69:70], v[94:95], v[98:99], -v[69:70]
	v_fma_f64 v[33:34], v[82:83], v[49:50], v[33:34]
	v_fma_f64 v[10:11], v[10:11], v[106:107], v[57:58]
	v_fma_f64 v[57:58], v[23:24], 2.0, -v[71:72]
	v_mul_f64 v[73:74], v[37:38], v[55:56]
	v_mul_f64 v[55:56], v[71:72], v[55:56]
	v_fma_f64 v[21:22], v[67:68], v[51:52], v[53:54]
	v_mad_u64_u32 v[53:54], s[10:11], s8, v59, 0
	s_movk_i32 s8, 0x3ef
	v_cmp_lt_u32_e32 vcc, s8, v0
	v_fma_f64 v[23:24], v[39:40], v[51:52], -v[65:66]
	v_fma_f64 v[8:9], v[8:9], v[106:107], -v[75:76]
	v_mul_f64 v[49:50], v[77:78], v[10:11]
	v_mul_f64 v[51:52], v[57:58], v[10:11]
	v_cndmask_b32_e32 v0, 0, v6, vcc
	v_add_u32_e32 v6, v122, v0
	v_fma_f64 v[37:38], v[37:38], v[69:70], v[55:56]
	v_mad_u64_u32 v[55:56], s[10:11], s2, v6, 0
	v_mov_b32_e32 v0, v54
	v_mad_u64_u32 v[59:60], s[8:9], s9, v59, v[0:1]
	v_mov_b32_e32 v0, v56
	v_mad_u64_u32 v[65:66], s[8:9], s3, v6, v[0:1]
	v_fma_f64 v[10:11], v[57:58], v[8:9], -v[49:50]
	v_fma_f64 v[8:9], v[77:78], v[8:9], v[51:52]
	v_mov_b32_e32 v54, v59
	v_add_u32_e32 v6, 0x54, v6
	v_lshlrev_b64 v[49:50], 4, v[53:54]
	v_mov_b32_e32 v0, s0
	v_mad_u64_u32 v[51:52], s[0:1], s2, v6, 0
	v_mov_b32_e32 v56, v65
	v_add_co_u32_e32 v54, vcc, s4, v49
	v_addc_co_u32_e32 v57, vcc, v0, v50, vcc
	v_lshlrev_b64 v[49:50], 4, v[55:56]
	v_mov_b32_e32 v0, v52
	v_mad_u64_u32 v[52:53], s[0:1], s3, v6, v[0:1]
	v_add_co_u32_e32 v49, vcc, v54, v49
	v_sub_u32_e32 v0, v61, v117
	v_addc_co_u32_e32 v50, vcc, v57, v50, vcc
	v_add_u32_e32 v6, v0, v61
	global_store_dwordx4 v[49:50], v[8:11], off
	v_fma_f64 v[39:40], v[71:72], v[69:70], -v[73:74]
	v_mad_u64_u32 v[10:11], s[0:1], s2, v6, 0
	v_lshlrev_b64 v[8:9], 4, v[51:52]
	v_fma_f64 v[41:42], v[84:85], v[41:42], v[113:114]
	v_mov_b32_e32 v0, v11
	v_mad_u64_u32 v[11:12], s[0:1], s3, v6, v[0:1]
	v_add_u32_e32 v6, 0x54, v6
	v_mad_u64_u32 v[49:50], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mov_b32_e32 v0, v50
	global_store_dwordx4 v[8:9], v[37:40], off
	v_lshlrev_b64 v[8:9], 4, v[10:11]
	v_mad_u64_u32 v[10:11], s[0:1], s3, v6, v[0:1]
	v_sub_u32_e32 v0, v64, v112
	v_add_u32_e32 v6, v0, v64
	v_mov_b32_e32 v50, v10
	v_mad_u64_u32 v[10:11], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_mov_b32_e32 v0, v11
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mad_u64_u32 v[11:12], s[0:1], s3, v6, v[0:1]
	v_add_u32_e32 v6, 0x54, v6
	global_store_dwordx4 v[8:9], v[21:24], off
	v_lshlrev_b64 v[8:9], 4, v[49:50]
	v_mad_u64_u32 v[21:22], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mov_b32_e32 v0, v22
	global_store_dwordx4 v[8:9], v[33:36], off
	v_lshlrev_b64 v[8:9], 4, v[10:11]
	v_mad_u64_u32 v[10:11], s[0:1], s3, v6, v[0:1]
	v_sub_u32_e32 v0, v63, v111
	v_add_u32_e32 v6, v0, v63
	v_mov_b32_e32 v22, v10
	v_mad_u64_u32 v[10:11], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_mov_b32_e32 v0, v11
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mad_u64_u32 v[11:12], s[0:1], s3, v6, v[0:1]
	v_add_u32_e32 v6, 0x54, v6
	global_store_dwordx4 v[8:9], v[45:48], off
	v_lshlrev_b64 v[8:9], 4, v[21:22]
	v_mad_u64_u32 v[21:22], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mov_b32_e32 v0, v22
	global_store_dwordx4 v[8:9], v[41:44], off
	v_lshlrev_b64 v[8:9], 4, v[10:11]
	v_mad_u64_u32 v[10:11], s[0:1], s3, v6, v[0:1]
	v_sub_u32_e32 v0, v62, v110
	v_add_u32_e32 v6, v0, v62
	v_mov_b32_e32 v22, v10
	v_mad_u64_u32 v[10:11], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_mov_b32_e32 v0, v11
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mad_u64_u32 v[11:12], s[0:1], s3, v6, v[0:1]
	v_add_u32_e32 v6, 0x54, v6
	global_store_dwordx4 v[8:9], v[17:20], off
	v_lshlrev_b64 v[8:9], 4, v[21:22]
	v_mad_u64_u32 v[17:18], s[0:1], s2, v6, 0
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mov_b32_e32 v0, v18
	global_store_dwordx4 v[8:9], v[102:105], off
	v_lshlrev_b64 v[8:9], 4, v[10:11]
	v_mad_u64_u32 v[10:11], s[0:1], s3, v6, v[0:1]
	v_sub_u32_e32 v0, v7, v5
	v_add_u32_e32 v11, v0, v7
	v_add_co_u32_e32 v8, vcc, v54, v8
	v_mad_u64_u32 v[5:6], s[0:1], s2, v11, 0
	v_addc_co_u32_e32 v9, vcc, v57, v9, vcc
	v_mov_b32_e32 v18, v10
	global_store_dwordx4 v[8:9], v[29:32], off
	v_lshlrev_b64 v[8:9], 4, v[17:18]
	v_mov_b32_e32 v0, v6
	v_add_co_u32_e32 v7, vcc, v54, v8
	v_addc_co_u32_e32 v8, vcc, v57, v9, vcc
	v_mad_u64_u32 v[9:10], s[0:1], s3, v11, v[0:1]
	v_add_u32_e32 v12, 0x54, v11
	v_mad_u64_u32 v[10:11], s[0:1], s2, v12, 0
	global_store_dwordx4 v[7:8], v[25:28], off
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v0, v11
	v_mad_u64_u32 v[7:8], s[0:1], s3, v12, v[0:1]
	v_lshlrev_b64 v[5:6], 4, v[5:6]
	v_add_co_u32_e32 v5, vcc, v54, v5
	v_addc_co_u32_e32 v6, vcc, v57, v6, vcc
	v_mov_b32_e32 v11, v7
	global_store_dwordx4 v[5:6], v[13:16], off
	v_lshlrev_b64 v[5:6], 4, v[10:11]
	v_add_co_u32_e32 v5, vcc, v54, v5
	v_addc_co_u32_e32 v6, vcc, v57, v6, vcc
	global_store_dwordx4 v[5:6], v[1:4], off
.LBB0_17:                               ; %if.end833
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 112
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
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 41
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
	.size	fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg, .Lfunc_end0-fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg
                                        ; -- End function
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9500
; NumSgprs: 45
; NumVgprs: 124
; NumAgprs: 0
; TotalNumVgprs: 124
; ScratchSize: 0
; MemoryBound: 1
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 124
; Occupancy: 2
; WaveLimiterHint : 1
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

	.type	__hip_cuid_49c165a49d8ef15e,@object ; @__hip_cuid_49c165a49d8ef15e
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_49c165a49d8ef15e
__hip_cuid_49c165a49d8ef15e:
	.byte	0                               ; 0x0
	.size	__hip_cuid_49c165a49d8ef15e, 1

	.ident	"AOMP_STANDALONE_19.0-2 clang version 19.0.0_AOMP_STANDALONE_19.0-2 (ssh://lmeadows@gerrit-git.amd.com:29418/lightning/ec/llvm-project f39dcaed48cb5a76eb932ff2f6d44db24ab90977)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE
	.addrsig_sym _ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE
	.addrsig_sym __hip_cuid_49c165a49d8ef15e
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
      - .actual_access:  read_only
        .address_space:  global
        .name:           lengths.coerce
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           stride_in.coerce
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           stride_out.coerce
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .name:           nbatch
        .offset:         40
        .size:           8
        .value_kind:     by_value
      - .name:           lds_padding
        .offset:         48
        .size:           4
        .value_kind:     by_value
      - .actual_access:  read_only
        .address_space:  global
        .name:           load_cb_fn.coerce
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           load_cb_data.coerce
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .name:           load_cb_lds_bytes
        .offset:         72
        .size:           4
        .value_kind:     by_value
      - .actual_access:  read_only
        .address_space:  global
        .name:           store_cb_fn.coerce
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           store_cb_data.coerce
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .name:           buf_in.coerce
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  write_only
        .address_space:  global
        .name:           buf_out.coerce
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 168
    .name:           fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx908
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
