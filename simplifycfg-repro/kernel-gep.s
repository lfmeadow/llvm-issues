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
	s_load_dwordx2 s[24:25], s[4:5], 0x20
	s_mov_b32 s7, 0
	s_mov_b64 s[26:27], -1
	s_mov_b64 s[18:19], 0
	s_waitcnt lgkmcnt(0)
	s_load_dwordx2 s[16:17], s[0:1], 0x8
	s_load_dwordx2 s[22:23], s[4:5], 0x60
	s_load_dwordx2 s[20:21], s[2:3], 0x0
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s16, -1
	s_addc_u32 s1, s17, -1
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
	s_cselect_b32 s18, s8, s7
.LBB0_2:
	s_mul_i32 s1, s18, s1
	s_mul_hi_u32 s7, s18, s0
	s_load_dwordx4 s[12:15], s[2:3], 0x8
	s_add_i32 s7, s7, s1
	s_mul_i32 s0, s18, s0
	s_sub_u32 s0, s6, s0
	s_subb_u32 s1, 0, s7
	s_mul_i32 s1, s1, 12
	s_mul_hi_u32 s2, s0, 12
	s_mul_i32 s19, s0, 12
	s_add_i32 s33, s2, s1
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s19, s13
	s_mul_hi_u32 s2, s19, s12
	v_mul_u32_u24_e32 v1, 0x1556, v0
	s_mul_i32 s0, s33, s12
	s_add_i32 s1, s2, s1
	s_mul_i32 s2, s15, s18
	s_mul_hi_u32 s3, s14, s18
	v_lshrrev_b32_e32 v57, 16, v1
	s_add_i32 s1, s1, s0
	s_mul_i32 s0, s19, s12
	s_add_i32 s3, s3, s2
	s_mul_i32 s2, s14, s18
	v_mul_lo_u16_e32 v1, 12, v57
	s_add_u32 s14, s2, s0
	v_sub_u16_e32 v190, v0, v1
	s_addc_u32 s15, s3, s1
	v_mov_b32_e32 v1, s33
	v_add_co_u32_e32 v169, vcc, s19, v190
	v_addc_co_u32_e32 v170, vcc, 0, v1, vcc
	s_add_u32 s0, s19, 12
	v_mov_b32_e32 v1, s16
	s_addc_u32 s1, s33, 0
	v_mov_b32_e32 v2, s17
	v_cmp_gt_u64_e32 vcc, s[0:1], v[1:2]
	v_cmp_le_u64_e64 s[0:1], s[0:1], v[1:2]
	s_and_b64 vcc, exec, vcc
	v_add_u32_e32 v188, 28, v57
	v_add_u32_e32 v186, 56, v57
	v_add_u32_e32 v49, 14, v57
	v_add_u32_e32 v187, 42, v57
	s_cbranch_vccnz .LBB0_4
; %bb.3:                                ; %if.then
	v_mad_u64_u32 v[1:2], s[2:3], s12, v190, 0
	v_mad_u64_u32 v[3:4], s[2:3], s20, v57, 0
	v_add_u32_e32 v189, 14, v57
	s_mov_b64 s[26:27], 0
	v_mad_u64_u32 v[5:6], s[2:3], s13, v190, v[2:3]
	v_mov_b32_e32 v2, v4
	v_mad_u64_u32 v[6:7], s[2:3], s21, v57, v[2:3]
	s_lshl_b64 s[2:3], s[14:15], 4
	s_add_u32 s6, s22, s2
	s_addc_u32 s2, s23, s3
	v_mov_b32_e32 v2, v5
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v7, s2
	v_mad_u64_u32 v[5:6], s[2:3], s20, v188, 0
	v_lshlrev_b64 v[1:2], 4, v[1:2]
	v_add_co_u32_e32 v9, vcc, s6, v1
	v_addc_co_u32_e32 v10, vcc, v7, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[3:4]
	v_mov_b32_e32 v3, v6
	v_mad_u64_u32 v[3:4], s[2:3], s21, v188, v[3:4]
	v_mad_u64_u32 v[7:8], s[2:3], s20, v186, 0
	v_add_co_u32_e32 v50, vcc, v9, v1
	v_mov_b32_e32 v6, v3
	v_mov_b32_e32 v3, v8
	v_addc_co_u32_e32 v51, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[5:6]
	v_mad_u64_u32 v[3:4], s[2:3], s21, v186, v[3:4]
	v_add_u32_e32 v6, 0x54, v57
	v_mad_u64_u32 v[4:5], s[2:3], s20, v6, 0
	v_add_co_u32_e32 v52, vcc, v9, v1
	v_mov_b32_e32 v8, v3
	v_mov_b32_e32 v3, v5
	v_addc_co_u32_e32 v53, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[7:8]
	v_mad_u64_u32 v[5:6], s[2:3], s21, v6, v[3:4]
	v_add_u32_e32 v8, 0x70, v57
	v_mad_u64_u32 v[6:7], s[2:3], s20, v8, 0
	v_add_co_u32_e32 v54, vcc, v9, v1
	v_mov_b32_e32 v3, v7
	v_addc_co_u32_e32 v55, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[4:5]
	v_mad_u64_u32 v[3:4], s[2:3], s21, v8, v[3:4]
	v_add_u32_e32 v8, 0x8c, v57
	v_mad_u64_u32 v[4:5], s[2:3], s20, v8, 0
	v_add_co_u32_e32 v58, vcc, v9, v1
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v3, v5
	v_addc_co_u32_e32 v59, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[6:7]
	v_mad_u64_u32 v[5:6], s[2:3], s21, v8, v[3:4]
	v_mad_u64_u32 v[6:7], s[2:3], s20, v189, 0
	v_add_co_u32_e32 v60, vcc, v9, v1
	v_mov_b32_e32 v3, v7
	v_addc_co_u32_e32 v61, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[4:5]
	v_mad_u64_u32 v[3:4], s[2:3], s21, v189, v[3:4]
	v_mad_u64_u32 v[4:5], s[2:3], s20, v187, 0
	v_add_co_u32_e32 v62, vcc, v9, v1
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v3, v5
	v_addc_co_u32_e32 v63, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[6:7]
	v_mad_u64_u32 v[5:6], s[2:3], s21, v187, v[3:4]
	v_add_u32_e32 v8, 0x46, v57
	v_mad_u64_u32 v[6:7], s[2:3], s20, v8, 0
	v_add_co_u32_e32 v64, vcc, v9, v1
	v_mov_b32_e32 v3, v7
	v_addc_co_u32_e32 v65, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[4:5]
	v_mad_u64_u32 v[3:4], s[2:3], s21, v8, v[3:4]
	v_add_u32_e32 v8, 0x62, v57
	v_mad_u64_u32 v[4:5], s[2:3], s20, v8, 0
	v_add_co_u32_e32 v66, vcc, v9, v1
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v3, v5
	v_addc_co_u32_e32 v67, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[6:7]
	v_mad_u64_u32 v[5:6], s[2:3], s21, v8, v[3:4]
	v_add_u32_e32 v8, 0x7e, v57
	v_mad_u64_u32 v[6:7], s[2:3], s20, v8, 0
	v_add_co_u32_e32 v68, vcc, v9, v1
	v_mov_b32_e32 v3, v7
	v_addc_co_u32_e32 v69, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[4:5]
	v_mad_u64_u32 v[3:4], s[2:3], s21, v8, v[3:4]
	v_add_u32_e32 v8, 0x9a, v57
	v_mad_u64_u32 v[4:5], s[2:3], s20, v8, 0
	v_add_co_u32_e32 v70, vcc, v9, v1
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v3, v5
	v_addc_co_u32_e32 v71, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[6:7]
	v_mad_u64_u32 v[5:6], s[2:3], s21, v8, v[3:4]
	v_add_co_u32_e32 v72, vcc, v9, v1
	v_addc_co_u32_e32 v73, vcc, v10, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[4:5]
	v_add_co_u32_e32 v74, vcc, v9, v1
	v_addc_co_u32_e32 v75, vcc, v10, v2, vcc
	global_load_dwordx4 v[1:4], v[50:51], off
	global_load_dwordx4 v[5:8], v[52:53], off
	global_load_dwordx4 v[21:24], v[54:55], off
	global_load_dwordx4 v[9:12], v[58:59], off
	global_load_dwordx4 v[29:32], v[60:61], off
	global_load_dwordx4 v[25:28], v[62:63], off
	global_load_dwordx4 v[13:16], v[64:65], off
	global_load_dwordx4 v[17:20], v[66:67], off
	global_load_dwordx4 v[41:44], v[68:69], off
	global_load_dwordx4 v[37:40], v[70:71], off
	global_load_dwordx4 v[45:48], v[72:73], off
	global_load_dwordx4 v[33:36], v[74:75], off
	s_branch .LBB0_5
.LBB0_4:
                                        ; implicit-def: $vgpr1_vgpr2
                                        ; implicit-def: $vgpr5_vgpr6
                                        ; implicit-def: $vgpr21_vgpr22
                                        ; implicit-def: $vgpr9_vgpr10
                                        ; implicit-def: $vgpr29_vgpr30
                                        ; implicit-def: $vgpr189
                                        ; implicit-def: $vgpr25_vgpr26
                                        ; implicit-def: $vgpr13_vgpr14
                                        ; implicit-def: $vgpr17_vgpr18
                                        ; implicit-def: $vgpr41_vgpr42
                                        ; implicit-def: $vgpr37_vgpr38
                                        ; implicit-def: $vgpr45_vgpr46
                                        ; implicit-def: $vgpr33_vgpr34
.LBB0_5:                                ; %Flow205
	s_load_dwordx2 s[6:7], s[4:5], 0x0
	s_load_dwordx2 s[2:3], s[24:25], 0x0
	s_load_dwordx4 s[8:11], s[24:25], 0x8
	s_andn2_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB0_11
; %bb.6:                                ; %if.then223
	v_cmp_le_u64_e32 vcc, s[16:17], v[169:170]
                                        ; implicit-def: $vgpr189
	s_and_saveexec_b64 s[24:25], vcc
	s_xor_b64 s[24:25], exec, s[24:25]
; %bb.7:                                ; %if.then223.if.end387_crit_edge
	v_add_u32_e32 v189, 14, v57
                                        ; implicit-def: $vgpr49
; %bb.8:                                ; %Flow203
	s_or_saveexec_b64 s[24:25], s[24:25]
                                        ; implicit-def: $vgpr1_vgpr2
                                        ; implicit-def: $vgpr5_vgpr6
                                        ; implicit-def: $vgpr21_vgpr22
                                        ; implicit-def: $vgpr9_vgpr10
                                        ; implicit-def: $vgpr29_vgpr30
                                        ; implicit-def: $vgpr25_vgpr26
                                        ; implicit-def: $vgpr13_vgpr14
                                        ; implicit-def: $vgpr17_vgpr18
                                        ; implicit-def: $vgpr41_vgpr42
                                        ; implicit-def: $vgpr37_vgpr38
                                        ; implicit-def: $vgpr45_vgpr46
                                        ; implicit-def: $vgpr33_vgpr34
	s_xor_b64 exec, exec, s[24:25]
	s_cbranch_execz .LBB0_10
; %bb.9:                                ; %if.then229
	s_waitcnt vmcnt(11)
	v_mad_u64_u32 v[1:2], s[26:27], s12, v190, 0
	v_mad_u64_u32 v[3:4], s[26:27], s20, v57, 0
	s_waitcnt vmcnt(4)
	v_add_u32_e32 v18, 0x54, v57
	s_waitcnt vmcnt(3)
	v_add_u32_e32 v42, 0x62, v57
	v_mad_u64_u32 v[5:6], s[12:13], s13, v190, v[2:3]
	v_mov_b32_e32 v2, v4
	v_mad_u64_u32 v[6:7], s[12:13], s21, v57, v[2:3]
	s_lshl_b64 s[12:13], s[14:15], 4
	s_add_u32 s14, s22, s12
	s_addc_u32 s12, s23, s13
	v_mov_b32_e32 v2, v5
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v7, s12
	v_mad_u64_u32 v[5:6], s[12:13], s20, v188, 0
	v_lshlrev_b64 v[1:2], 4, v[1:2]
	v_mad_u64_u32 v[11:12], s[12:13], s20, v186, 0
	v_add_co_u32_e32 v52, vcc, s14, v1
	v_addc_co_u32_e32 v53, vcc, v7, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[3:4]
	v_mov_b32_e32 v3, v6
	v_mad_u64_u32 v[3:4], s[12:13], s21, v188, v[3:4]
	v_add_co_u32_e32 v9, vcc, v52, v1
	v_mov_b32_e32 v6, v3
	v_addc_co_u32_e32 v10, vcc, v53, v2, vcc
	v_lshlrev_b64 v[1:2], 4, v[5:6]
	v_add_u32_e32 v50, 0x9a, v57
	v_add_co_u32_e32 v13, vcc, v52, v1
	v_mov_b32_e32 v1, v12
	v_mad_u64_u32 v[15:16], s[12:13], s21, v186, v[1:2]
	v_mad_u64_u32 v[16:17], s[12:13], s20, v18, 0
	v_mov_b32_e32 v12, v15
	v_addc_co_u32_e32 v14, vcc, v53, v2, vcc
	global_load_dwordx4 v[1:4], v[9:10], off
	global_load_dwordx4 v[5:8], v[13:14], off
	v_lshlrev_b64 v[9:10], 4, v[11:12]
	v_mov_b32_e32 v11, v17
	v_mad_u64_u32 v[11:12], s[12:13], s21, v18, v[11:12]
	v_add_co_u32_e32 v13, vcc, v52, v9
	v_mov_b32_e32 v17, v11
	v_add_u32_e32 v11, 0x70, v57
	v_addc_co_u32_e32 v14, vcc, v53, v10, vcc
	v_lshlrev_b64 v[9:10], 4, v[16:17]
	v_mad_u64_u32 v[15:16], s[12:13], s20, v11, 0
	v_add_co_u32_e32 v17, vcc, v52, v9
	v_mov_b32_e32 v9, v16
	v_mad_u64_u32 v[19:20], s[12:13], s21, v11, v[9:10]
	v_add_u32_e32 v20, 0x8c, v57
	v_mad_u64_u32 v[25:26], s[12:13], s20, v20, 0
	v_addc_co_u32_e32 v18, vcc, v53, v10, vcc
	v_mov_b32_e32 v16, v19
	global_load_dwordx4 v[21:24], v[13:14], off
	global_load_dwordx4 v[9:12], v[17:18], off
	v_lshlrev_b64 v[13:14], 4, v[15:16]
	v_mov_b32_e32 v15, v26
	v_mad_u64_u32 v[17:18], s[12:13], s20, v49, 0
	v_mad_u64_u32 v[15:16], s[12:13], s21, v20, v[15:16]
	v_mad_u64_u32 v[18:19], s[12:13], s21, v49, v[18:19]
	v_mov_b32_e32 v26, v15
	v_mad_u64_u32 v[19:20], s[12:13], s20, v187, 0
	v_add_co_u32_e32 v13, vcc, v52, v13
	v_lshlrev_b64 v[15:16], 4, v[25:26]
	v_addc_co_u32_e32 v14, vcc, v53, v14, vcc
	v_add_co_u32_e32 v15, vcc, v52, v15
	v_addc_co_u32_e32 v16, vcc, v53, v16, vcc
	global_load_dwordx4 v[29:32], v[13:14], off
	global_load_dwordx4 v[25:28], v[15:16], off
	v_mov_b32_e32 v15, v20
	v_mad_u64_u32 v[15:16], s[12:13], s21, v187, v[15:16]
	v_lshlrev_b64 v[13:14], 4, v[17:18]
	v_mov_b32_e32 v189, v49
	v_mov_b32_e32 v20, v15
	v_add_u32_e32 v15, 0x46, v57
	s_waitcnt vmcnt(6)
	v_mad_u64_u32 v[35:36], s[12:13], s20, v15, 0
	v_add_co_u32_e32 v33, vcc, v52, v13
	v_addc_co_u32_e32 v34, vcc, v53, v14, vcc
	v_lshlrev_b64 v[13:14], 4, v[19:20]
	v_add_co_u32_e32 v37, vcc, v52, v13
	v_mov_b32_e32 v13, v36
	v_mad_u64_u32 v[39:40], s[12:13], s21, v15, v[13:14]
	v_mad_u64_u32 v[40:41], s[12:13], s20, v42, 0
	v_addc_co_u32_e32 v38, vcc, v53, v14, vcc
	global_load_dwordx4 v[13:16], v[33:34], off
	global_load_dwordx4 v[17:20], v[37:38], off
	v_add_u32_e32 v38, 0x7e, v57
	v_mov_b32_e32 v36, v39
	v_mad_u64_u32 v[45:46], s[12:13], s20, v38, 0
	v_lshlrev_b64 v[33:34], 4, v[35:36]
	v_mov_b32_e32 v35, v41
	v_mad_u64_u32 v[35:36], s[12:13], s21, v42, v[35:36]
	v_mov_b32_e32 v37, v46
	v_mad_u64_u32 v[46:47], s[12:13], s21, v38, v[37:38]
	v_mov_b32_e32 v41, v35
	v_mad_u64_u32 v[47:48], s[12:13], s20, v50, 0
	v_add_co_u32_e32 v33, vcc, v52, v33
	v_lshlrev_b64 v[35:36], 4, v[40:41]
	v_addc_co_u32_e32 v34, vcc, v53, v34, vcc
	v_add_co_u32_e32 v35, vcc, v52, v35
	v_addc_co_u32_e32 v36, vcc, v53, v36, vcc
	global_load_dwordx4 v[41:44], v[33:34], off
	global_load_dwordx4 v[37:40], v[35:36], off
	v_mov_b32_e32 v35, v48
	v_mad_u64_u32 v[35:36], s[12:13], s21, v50, v[35:36]
	v_lshlrev_b64 v[33:34], 4, v[45:46]
	v_add_co_u32_e32 v50, vcc, v52, v33
	v_mov_b32_e32 v48, v35
	v_addc_co_u32_e32 v51, vcc, v53, v34, vcc
	v_lshlrev_b64 v[33:34], 4, v[47:48]
	v_add_co_u32_e32 v52, vcc, v52, v33
	v_addc_co_u32_e32 v53, vcc, v53, v34, vcc
	global_load_dwordx4 v[45:48], v[50:51], off
	global_load_dwordx4 v[33:36], v[52:53], off
.LBB0_10:                               ; %Flow204
	s_or_b64 exec, exec, s[24:25]
.LBB0_11:                               ; %if.end387
	s_waitcnt vmcnt(6)
	v_add_f64 v[49:50], v[27:28], v[11:12]
	v_add_f64 v[51:52], v[21:22], v[1:2]
	v_add_f64 v[55:56], v[25:26], v[9:10]
	v_add_f64 v[58:59], v[29:30], v[21:22]
	v_add_f64 v[21:22], v[21:22], -v[29:30]
	v_add_f64 v[62:63], v[9:10], -v[25:26]
	s_mov_b32 s14, 0xe8584caa
	s_mov_b32 s15, 0xbfebb67a
	v_fma_f64 v[49:50], v[49:50], -0.5, v[7:8]
	v_add_f64 v[29:30], v[29:30], v[51:52]
	v_fma_f64 v[51:52], v[55:56], -0.5, v[5:6]
	v_add_f64 v[55:56], v[11:12], -v[27:28]
	s_mov_b32 s13, 0x3febb67a
	s_mov_b32 s12, s14
	v_add_f64 v[53:54], v[23:24], v[3:4]
	v_add_f64 v[60:61], v[23:24], -v[31:32]
	v_add_f64 v[23:24], v[31:32], v[23:24]
	v_fma_f64 v[64:65], v[62:63], s[12:13], v[49:50]
	v_add_f64 v[5:6], v[9:10], v[5:6]
	v_fma_f64 v[9:10], v[62:63], s[14:15], v[49:50]
	v_fma_f64 v[49:50], v[55:56], s[14:15], v[51:52]
	v_fma_f64 v[1:2], v[58:59], -0.5, v[1:2]
	v_add_f64 v[7:8], v[11:12], v[7:8]
	v_add_f64 v[31:32], v[31:32], v[53:54]
	v_fma_f64 v[3:4], v[23:24], -0.5, v[3:4]
	v_fma_f64 v[23:24], v[55:56], s[12:13], v[51:52]
	v_add_f64 v[5:6], v[25:26], v[5:6]
	v_mul_f64 v[51:52], v[9:10], s[14:15]
	v_mul_f64 v[55:56], v[49:50], s[12:13]
	v_mul_f64 v[9:10], v[9:10], -0.5
	v_mul_f64 v[11:12], v[64:65], s[14:15]
	v_fma_f64 v[53:54], v[60:61], s[14:15], v[1:2]
	v_fma_f64 v[1:2], v[60:61], s[12:13], v[1:2]
	v_add_f64 v[7:8], v[27:28], v[7:8]
	v_fma_f64 v[58:59], v[21:22], s[12:13], v[3:4]
	v_fma_f64 v[3:4], v[21:22], s[14:15], v[3:4]
	v_fma_f64 v[60:61], v[23:24], -0.5, v[51:52]
	v_fma_f64 v[55:56], v[64:65], 0.5, v[55:56]
	v_fma_f64 v[9:10], v[23:24], s[12:13], v[9:10]
	v_add_f64 v[21:22], v[5:6], v[29:30]
	v_add_f64 v[29:30], v[29:30], -v[5:6]
	s_waitcnt vmcnt(0)
	v_add_f64 v[5:6], v[35:36], v[39:40]
	v_add_f64 v[63:64], v[33:34], v[37:38]
	v_fma_f64 v[11:12], v[49:50], 0.5, v[11:12]
	v_add_f64 v[23:24], v[7:8], v[31:32]
	v_add_f64 v[31:32], v[31:32], -v[7:8]
	v_add_f64 v[49:50], v[1:2], v[60:61]
	v_add_f64 v[27:28], v[58:59], v[55:56]
	v_add_f64 v[51:52], v[3:4], v[9:10]
	v_add_f64 v[55:56], v[58:59], -v[55:56]
	v_add_f64 v[7:8], v[41:42], v[13:14]
	v_add_f64 v[59:60], v[1:2], -v[60:61]
	v_add_f64 v[61:62], v[3:4], -v[9:10]
	v_fma_f64 v[1:2], v[5:6], -0.5, v[19:20]
	v_add_f64 v[3:4], v[37:38], -v[33:34]
	v_fma_f64 v[63:64], v[63:64], -0.5, v[17:18]
	v_add_f64 v[65:66], v[39:40], -v[35:36]
	v_add_f64 v[5:6], v[45:46], v[41:42]
	v_add_f64 v[41:42], v[41:42], -v[45:46]
	v_add_f64 v[7:8], v[45:46], v[7:8]
	v_add_f64 v[25:26], v[53:54], v[11:12]
	v_add_f64 v[53:54], v[53:54], -v[11:12]
	v_fma_f64 v[45:46], v[3:4], s[12:13], v[1:2]
	v_add_f64 v[11:12], v[43:44], v[15:16]
	v_add_f64 v[9:10], v[43:44], -v[47:48]
	v_add_f64 v[43:44], v[47:48], v[43:44]
	v_fma_f64 v[1:2], v[3:4], s[14:15], v[1:2]
	v_fma_f64 v[3:4], v[65:66], s[14:15], v[63:64]
	v_fma_f64 v[5:6], v[5:6], -0.5, v[13:14]
	v_add_f64 v[13:14], v[37:38], v[17:18]
	v_add_f64 v[17:18], v[39:40], v[19:20]
	v_mul_f64 v[19:20], v[45:46], s[14:15]
	v_add_f64 v[11:12], v[47:48], v[11:12]
	v_fma_f64 v[15:16], v[43:44], -0.5, v[15:16]
	v_lshlrev_b32_e32 v58, 4, v190
	v_mul_f64 v[43:44], v[3:4], s[12:13]
	v_fma_f64 v[37:38], v[9:10], s[14:15], v[5:6]
	v_fma_f64 v[39:40], v[9:10], s[12:13], v[5:6]
	v_fma_f64 v[5:6], v[65:66], s[12:13], v[63:64]
	v_mul_f64 v[9:10], v[1:2], s[14:15]
	v_mul_f64 v[1:2], v[1:2], -0.5
	v_add_f64 v[13:14], v[33:34], v[13:14]
	v_fma_f64 v[19:20], v[3:4], 0.5, v[19:20]
	v_add_f64 v[3:4], v[35:36], v[17:18]
	v_fma_f64 v[47:48], v[41:42], s[12:13], v[15:16]
	v_fma_f64 v[43:44], v[45:46], 0.5, v[43:44]
	v_fma_f64 v[41:42], v[41:42], s[14:15], v[15:16]
	v_fma_f64 v[15:16], v[5:6], -0.5, v[9:10]
	v_fma_f64 v[45:46], v[5:6], s[12:13], v[1:2]
	v_add_f64 v[33:34], v[13:14], v[7:8]
	v_add_f64 v[1:2], v[37:38], v[19:20]
	v_add_f64 v[35:36], v[3:4], v[11:12]
	v_add_f64 v[11:12], v[11:12], -v[3:4]
	v_add_f64 v[3:4], v[47:48], v[43:44]
	v_add_f64 v[9:10], v[7:8], -v[13:14]
	v_add_f64 v[5:6], v[39:40], v[15:16]
	v_add_f64 v[7:8], v[41:42], v[45:46]
	v_add_f64 v[13:14], v[37:38], -v[19:20]
	v_mul_u32_u24_e32 v37, 0x48, v57
	v_lshlrev_b32_e32 v37, 4, v37
	v_add_f64 v[17:18], v[39:40], -v[15:16]
	v_add_f64 v[15:16], v[47:48], -v[43:44]
	v_add3_u32 v37, 0, v37, v58
	v_add_f64 v[19:20], v[41:42], -v[45:46]
	ds_write_b128 v37, v[21:24]
	ds_write_b128 v37, v[25:28] offset:192
	ds_write_b128 v37, v[49:52] offset:384
	ds_write_b128 v37, v[29:32] offset:576
	ds_write_b128 v37, v[53:56] offset:768
	ds_write_b128 v37, v[59:62] offset:960
	v_mul_i32_i24_e32 v21, 0x48, v189
	v_lshl_add_u32 v21, v21, 4, 0
	s_movk_i32 s12, 0xfc40
	v_add_u32_e32 v22, v21, v58
	v_mad_i32_i24 v145, v57, s12, v37
	ds_write_b128 v22, v[33:36]
	ds_write_b128 v22, v[1:4] offset:192
	ds_write_b128 v22, v[5:8] offset:384
	ds_write_b128 v22, v[9:12] offset:576
	ds_write_b128 v22, v[13:16] offset:768
	ds_write_b128 v22, v[17:20] offset:960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[29:32], v145
	ds_read_b128 v[49:52], v145 offset:4608
	ds_read_b128 v[45:48], v145 offset:9216
	ds_read_b128 v[37:40], v145 offset:13824
	ds_read_b128 v[33:36], v145 offset:18432
	ds_read_b128 v[41:44], v145 offset:23040
	ds_read_b128 v[53:56], v145 offset:27648
	s_movk_i32 s12, 0x78
	v_cmp_gt_u32_e32 vcc, s12, v0
                                        ; implicit-def: $vgpr27_vgpr28
                                        ; implicit-def: $vgpr23_vgpr24
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB0_13
; %bb.12:                               ; %if.then.i
	v_mul_i32_i24_e32 v1, 0xfffffc40, v189
	v_add3_u32 v1, v21, v1, v58
	ds_read_b128 v[1:4], v1
	ds_read_b128 v[5:8], v145 offset:7296
	ds_read_b128 v[9:12], v145 offset:11904
	ds_read_b128 v[13:16], v145 offset:16512
	ds_read_b128 v[17:20], v145 offset:21120
	ds_read_b128 v[21:24], v145 offset:25728
	ds_read_b128 v[25:28], v145 offset:30336
.LBB0_13:                               ; %if.end.i
	s_or_b64 exec, exec, s[12:13]
	v_mul_lo_u16_e32 v59, 43, v57
	v_lshrrev_b16_e32 v83, 8, v59
	v_mul_lo_u16_e32 v59, 6, v83
	v_sub_u16_e32 v59, v57, v59
	v_and_b32_e32 v84, 0xff, v59
	v_mul_u32_u24_e32 v59, 6, v84
	v_lshlrev_b32_e32 v85, 4, v59
	global_load_dwordx4 v[59:62], v85, s[6:7]
	global_load_dwordx4 v[63:66], v85, s[6:7] offset:16
	global_load_dwordx4 v[67:70], v85, s[6:7] offset:32
	global_load_dwordx4 v[71:74], v85, s[6:7] offset:48
	global_load_dwordx4 v[75:78], v85, s[6:7] offset:80
	global_load_dwordx4 v[79:82], v85, s[6:7] offset:64
	v_mad_u32_u24 v83, v83, 42, v84
	v_mul_u32_u24_e32 v95, 0xc0, v83
	s_mov_b32 s14, 0x37e14327
	s_mov_b32 s20, 0x36b3c0b5
	s_mov_b32 s26, 0xe976ee23
	s_mov_b32 s15, 0x3fe948f6
	s_mov_b32 s21, 0x3fac98ee
	s_mov_b32 s27, 0x3fe11646
	s_mov_b32 s22, 0x429ad128
	s_mov_b32 s23, 0xbfebfeb5
	s_mov_b32 s24, 0xaaaaaaaa
	s_mov_b32 s28, 0x5476071b
	s_mov_b32 s34, 0xb247c609
	s_mov_b32 s25, 0xbff2aaaa
	s_mov_b32 s29, 0x3fe77f67
	s_mov_b32 s31, 0xbfe77f67
	s_mov_b32 s35, 0xbfd5d0dc
	s_mov_b32 s30, s28
	s_mov_b32 s39, 0x3fd5d0dc
	s_mov_b32 s38, s34
	s_mov_b32 s36, 0x37c3f68c
	s_mov_b32 s37, 0xbfdc38aa
	s_load_dwordx2 s[12:13], s[4:5], 0x68
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	v_mul_f64 v[83:84], v[51:52], v[61:62]
	v_mul_f64 v[61:62], v[49:50], v[61:62]
	v_mul_f64 v[85:86], v[47:48], v[65:66]
	v_mul_f64 v[65:66], v[45:46], v[65:66]
	v_mul_f64 v[91:92], v[55:56], v[77:78]
	v_mul_f64 v[77:78], v[53:54], v[77:78]
	v_mul_f64 v[93:94], v[43:44], v[81:82]
	v_mul_f64 v[81:82], v[41:42], v[81:82]
	v_mul_f64 v[87:88], v[39:40], v[69:70]
	v_mul_f64 v[69:70], v[37:38], v[69:70]
	v_mul_f64 v[89:90], v[35:36], v[73:74]
	v_mul_f64 v[73:74], v[33:34], v[73:74]
	v_fma_f64 v[49:50], v[49:50], v[59:60], v[83:84]
	v_fma_f64 v[51:52], v[51:52], v[59:60], -v[61:62]
	v_fma_f64 v[45:46], v[45:46], v[63:64], v[85:86]
	v_fma_f64 v[47:48], v[47:48], v[63:64], -v[65:66]
	v_fma_f64 v[53:54], v[53:54], v[75:76], v[91:92]
	v_fma_f64 v[55:56], v[55:56], v[75:76], -v[77:78]
	v_fma_f64 v[41:42], v[41:42], v[79:80], v[93:94]
	v_fma_f64 v[43:44], v[43:44], v[79:80], -v[81:82]
	v_fma_f64 v[37:38], v[37:38], v[67:68], v[87:88]
	v_fma_f64 v[39:40], v[39:40], v[67:68], -v[69:70]
	v_fma_f64 v[33:34], v[33:34], v[71:72], v[89:90]
	v_fma_f64 v[35:36], v[35:36], v[71:72], -v[73:74]
	v_add_f64 v[59:60], v[49:50], v[53:54]
	v_add_f64 v[61:62], v[51:52], v[55:56]
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
	v_add_f64 v[37:38], v[53:54], v[59:60]
	v_add_f64 v[39:40], v[55:56], v[61:62]
	v_add_f64 v[63:64], v[53:54], -v[59:60]
	v_add_f64 v[65:66], v[55:56], -v[61:62]
	v_add_f64 v[59:60], v[59:60], -v[45:46]
	v_add_f64 v[61:62], v[61:62], -v[47:48]
	v_add_f64 v[53:54], v[45:46], -v[53:54]
	v_add_f64 v[55:56], v[47:48], -v[55:56]
	v_add_f64 v[67:68], v[33:34], v[41:42]
	v_add_f64 v[69:70], v[35:36], v[43:44]
	v_add_f64 v[71:72], v[33:34], -v[41:42]
	v_add_f64 v[73:74], v[35:36], -v[43:44]
	v_add_f64 v[37:38], v[45:46], v[37:38]
	v_add_f64 v[39:40], v[47:48], v[39:40]
	v_add_f64 v[41:42], v[41:42], -v[49:50]
	v_add_f64 v[43:44], v[43:44], -v[51:52]
	v_add_f64 v[33:34], v[49:50], -v[33:34]
	v_add_f64 v[35:36], v[51:52], -v[35:36]
	v_add_f64 v[45:46], v[67:68], v[49:50]
	v_add_f64 v[47:48], v[69:70], v[51:52]
	v_mul_f64 v[49:50], v[59:60], s[14:15]
	v_mul_f64 v[51:52], v[61:62], s[14:15]
	v_mul_f64 v[59:60], v[53:54], s[20:21]
	v_mul_f64 v[61:62], v[55:56], s[20:21]
	v_mul_f64 v[67:68], v[71:72], s[26:27]
	v_mul_f64 v[69:70], v[73:74], s[26:27]
	v_add_f64 v[29:30], v[29:30], v[37:38]
	v_add_f64 v[31:32], v[31:32], v[39:40]
	v_mul_f64 v[71:72], v[41:42], s[22:23]
	v_mul_f64 v[73:74], v[43:44], s[22:23]
	v_fma_f64 v[53:54], v[53:54], s[20:21], v[49:50]
	v_fma_f64 v[55:56], v[55:56], s[20:21], v[51:52]
	v_fma_f64 v[59:60], v[63:64], s[28:29], -v[59:60]
	v_fma_f64 v[61:62], v[65:66], s[28:29], -v[61:62]
	v_fma_f64 v[49:50], v[63:64], s[30:31], -v[49:50]
	v_fma_f64 v[51:52], v[65:66], s[30:31], -v[51:52]
	v_fma_f64 v[63:64], v[33:34], s[34:35], v[67:68]
	v_fma_f64 v[65:66], v[35:36], s[34:35], v[69:70]
	v_fma_f64 v[37:38], v[37:38], s[24:25], v[29:30]
	v_fma_f64 v[39:40], v[39:40], s[24:25], v[31:32]
	v_fma_f64 v[33:34], v[33:34], s[38:39], -v[71:72]
	v_fma_f64 v[35:36], v[35:36], s[38:39], -v[73:74]
	v_fma_f64 v[41:42], v[41:42], s[22:23], -v[67:68]
	v_fma_f64 v[43:44], v[43:44], s[22:23], -v[69:70]
	v_fma_f64 v[63:64], v[45:46], s[36:37], v[63:64]
	v_fma_f64 v[65:66], v[47:48], s[36:37], v[65:66]
	v_add_f64 v[53:54], v[53:54], v[37:38]
	v_add_f64 v[55:56], v[55:56], v[39:40]
	v_fma_f64 v[71:72], v[45:46], s[36:37], v[33:34]
	v_fma_f64 v[73:74], v[47:48], s[36:37], v[35:36]
	v_add_f64 v[49:50], v[49:50], v[37:38]
	v_add_f64 v[51:52], v[51:52], v[39:40]
	v_fma_f64 v[67:68], v[45:46], s[36:37], v[41:42]
	v_fma_f64 v[69:70], v[47:48], s[36:37], v[43:44]
	v_add_f64 v[45:46], v[59:60], v[37:38]
	v_add_f64 v[47:48], v[61:62], v[39:40]
	v_add_f64 v[33:34], v[65:66], v[53:54]
	v_add_f64 v[35:36], v[55:56], -v[63:64]
	v_add_f64 v[37:38], v[73:74], v[49:50]
	v_add_f64 v[39:40], v[51:52], -v[71:72]
	v_add_f64 v[49:50], v[49:50], -v[73:74]
	v_add_f64 v[51:52], v[71:72], v[51:52]
	v_add_f64 v[41:42], v[45:46], -v[69:70]
	v_add_f64 v[43:44], v[67:68], v[47:48]
	v_add_f64 v[45:46], v[69:70], v[45:46]
	v_add_f64 v[47:48], v[47:48], -v[67:68]
	v_add_f64 v[53:54], v[53:54], -v[65:66]
	v_add_f64 v[55:56], v[63:64], v[55:56]
	v_add3_u32 v59, 0, v95, v58
	ds_write_b128 v59, v[29:32]
	ds_write_b128 v59, v[33:36] offset:1152
	ds_write_b128 v59, v[37:40] offset:2304
	ds_write_b128 v59, v[41:44] offset:3456
	ds_write_b128 v59, v[45:48] offset:4608
	ds_write_b128 v59, v[49:52] offset:5760
	ds_write_b128 v59, v[53:56] offset:6912
	s_and_saveexec_b64 s[40:41], vcc
	s_cbranch_execz .LBB0_15
; %bb.14:                               ; %if.then721.i
	s_movk_i32 s42, 0xab
	v_mul_lo_u16_sdwa v29, v189, s42 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:BYTE_0 src1_sel:DWORD
	v_lshrrev_b16_e32 v67, 10, v29
	v_mul_lo_u16_e32 v29, 6, v67
	v_sub_u16_e32 v29, v189, v29
	v_and_b32_e32 v68, 0xff, v29
	v_mul_u32_u24_e32 v29, 6, v68
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
	v_mul_f64 v[59:60], v[11:12], v[39:40]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[61:62], v[23:24], v[43:44]
	s_waitcnt vmcnt(1)
	v_mul_f64 v[63:64], v[7:8], v[47:48]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[65:66], v[27:28], v[51:52]
	v_mul_f64 v[39:40], v[9:10], v[39:40]
	v_mul_f64 v[43:44], v[21:22], v[43:44]
	v_mul_f64 v[47:48], v[5:6], v[47:48]
	v_mul_f64 v[51:52], v[25:26], v[51:52]
	v_mul_f64 v[35:36], v[13:14], v[35:36]
	v_mul_f64 v[31:32], v[17:18], v[31:32]
	v_fma_f64 v[9:10], v[9:10], v[37:38], v[59:60]
	v_fma_f64 v[21:22], v[21:22], v[41:42], v[61:62]
	v_fma_f64 v[5:6], v[5:6], v[45:46], v[63:64]
	v_fma_f64 v[25:26], v[25:26], v[49:50], v[65:66]
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
	v_mad_u32_u24 v29, v67, 42, v68
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
	v_mul_f64 v[17:18], v[19:20], s[26:27]
	v_mul_f64 v[25:26], v[25:26], s[14:15]
	v_mul_f64 v[35:36], v[41:42], s[14:15]
	v_mul_f64 v[39:40], v[47:48], s[26:27]
	v_add_f64 v[3:4], v[3:4], v[27:28]
	v_add_f64 v[1:2], v[1:2], v[13:14]
	v_mul_f64 v[41:42], v[31:32], s[22:23]
	v_mul_f64 v[43:44], v[9:10], s[22:23]
	v_mul_f64 v[19:20], v[23:24], s[20:21]
	v_mul_f64 v[33:34], v[29:30], s[20:21]
	v_add_f64 v[7:8], v[45:46], v[7:8]
	v_fma_f64 v[45:46], v[21:22], s[34:35], v[17:18]
	v_fma_f64 v[23:24], v[23:24], s[20:21], v[25:26]
	v_fma_f64 v[29:30], v[29:30], s[20:21], v[35:36]
	v_fma_f64 v[47:48], v[15:16], s[34:35], v[39:40]
	v_fma_f64 v[27:28], v[27:28], s[24:25], v[3:4]
	v_fma_f64 v[13:14], v[13:14], s[24:25], v[1:2]
	v_fma_f64 v[21:22], v[21:22], s[38:39], -v[41:42]
	v_fma_f64 v[25:26], v[37:38], s[30:31], -v[25:26]
	v_fma_f64 v[35:36], v[5:6], s[30:31], -v[35:36]
	v_fma_f64 v[15:16], v[15:16], s[38:39], -v[43:44]
	v_fma_f64 v[19:20], v[37:38], s[28:29], -v[19:20]
	v_fma_f64 v[17:18], v[31:32], s[22:23], -v[17:18]
	v_fma_f64 v[9:10], v[9:10], s[22:23], -v[39:40]
	v_fma_f64 v[5:6], v[5:6], s[28:29], -v[33:34]
	v_fma_f64 v[31:32], v[11:12], s[36:37], v[45:46]
	v_fma_f64 v[33:34], v[7:8], s[36:37], v[47:48]
	v_add_f64 v[37:38], v[23:24], v[27:28]
	v_add_f64 v[29:30], v[29:30], v[13:14]
	v_fma_f64 v[21:22], v[11:12], s[36:37], v[21:22]
	v_add_f64 v[23:24], v[25:26], v[27:28]
	v_fma_f64 v[39:40], v[7:8], s[36:37], v[15:16]
	v_add_f64 v[35:36], v[35:36], v[13:14]
	v_fma_f64 v[17:18], v[11:12], s[36:37], v[17:18]
	v_add_f64 v[19:20], v[19:20], v[27:28]
	v_fma_f64 v[9:10], v[7:8], s[36:37], v[9:10]
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
	v_add3_u32 v29, 0, v49, v58
	ds_write_b128 v29, v[1:4]
	ds_write_b128 v29, v[25:28] offset:1152
	ds_write_b128 v29, v[21:24] offset:2304
	ds_write_b128 v29, v[17:20] offset:3456
	ds_write_b128 v29, v[13:16] offset:4608
	ds_write_b128 v29, v[9:12] offset:5760
	ds_write_b128 v29, v[5:8] offset:6912
.LBB0_15:                               ; %_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m.exit
	s_or_b64 exec, exec, s[40:41]
	v_lshrrev_b16_e32 v5, 1, v189
	v_and_b32_e32 v5, 0x7f, v5
	v_mul_lo_u16_e32 v5, 49, v5
	v_lshrrev_b16_e32 v88, 10, v5
	v_mul_lo_u16_e32 v5, 49, v188
	v_lshrrev_b16_e32 v89, 11, v5
	v_mul_lo_u16_e32 v5, 42, v89
	v_sub_u16_e32 v5, v188, v5
	v_and_b32_e32 v90, 0xff, v5
	v_mul_lo_u16_e32 v5, 49, v187
	v_lshrrev_b16_e32 v91, 11, v5
	v_mul_lo_u16_e32 v5, 42, v91
	v_and_b32_e32 v87, 0xffff, v57
	v_sub_u16_e32 v5, v187, v5
	v_lshlrev_b32_e32 v1, 4, v87
	v_lshlrev_b32_e32 v13, 4, v90
	v_and_b32_e32 v92, 0xff, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_dwordx4 v[1:4], v1, s[6:7] offset:576
	v_lshlrev_b32_e32 v14, 4, v92
	global_load_dwordx4 v[5:8], v13, s[6:7] offset:576
	global_load_dwordx4 v[9:12], v14, s[6:7] offset:576
	v_mul_lo_u16_e32 v13, 49, v186
	v_lshrrev_b16_e32 v93, 11, v13
	v_mul_lo_u16_e32 v13, 42, v93
	v_add_u32_e32 v191, 0x46, v57
	v_sub_u16_e32 v13, v186, v13
	v_and_b32_e32 v94, 0xff, v13
	v_mul_lo_u16_e32 v13, 49, v191
	v_lshrrev_b16_e32 v95, 11, v13
	v_mul_lo_u16_e32 v21, 42, v88
	v_mul_lo_u16_e32 v13, 42, v95
	v_sub_u16_e32 v13, v191, v13
	v_sub_u16_e32 v21, v189, v21
	v_and_b32_e32 v96, 0xff, v13
	v_and_b32_e32 v97, 0xff, v21
	v_lshlrev_b32_e32 v22, 4, v94
	v_lshlrev_b32_e32 v23, 4, v96
	v_lshlrev_b32_e32 v21, 4, v97
	global_load_dwordx4 v[13:16], v22, s[6:7] offset:576
	global_load_dwordx4 v[17:20], v23, s[6:7] offset:576
	v_mul_i32_i24_e32 v53, 12, v189
	global_load_dwordx4 v[21:24], v21, s[6:7] offset:576
	ds_read_b128 v[25:28], v145
	ds_read_b128 v[29:32], v145 offset:16128
	ds_read_b128 v[33:36], v145 offset:18816
	ds_read_b128 v[37:40], v145 offset:21504
	ds_read_b128 v[41:44], v145 offset:24192
	ds_read_b128 v[45:48], v145 offset:26880
	ds_read_b128 v[49:52], v145 offset:29568
	v_mul_u32_u24_e32 v54, 12, v188
	v_lshlrev_b32_e32 v53, 4, v53
	v_lshlrev_b32_e32 v54, 4, v54
	v_add3_u32 v122, 0, v53, v58
	v_add3_u32 v121, 0, v54, v58
	ds_read_b128 v[53:56], v122
	ds_read_b128 v[59:62], v121
	ds_read_b128 v[63:66], v121 offset:2688
	ds_read_b128 v[67:70], v121 offset:5376
	ds_read_b128 v[71:74], v121 offset:8064
	s_movk_i32 s14, 0x54
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v180, v185
	v_mov_b32_e32 v178, v185
	v_mov_b32_e32 v176, v185
	v_mov_b32_e32 v174, v185
	v_mov_b32_e32 v172, v185
	s_load_dwordx2 s[4:5], s[4:5], 0x8
	s_mul_i32 s11, s11, s18
	v_mul_f64 v[75:76], v[31:32], v[3:4]
	v_mul_f64 v[3:4], v[29:30], v[3:4]
	v_mul_f64 v[77:78], v[39:40], v[7:8]
	v_mul_f64 v[7:8], v[37:38], v[7:8]
	v_mul_f64 v[79:80], v[43:44], v[11:12]
	v_mul_f64 v[11:12], v[41:42], v[11:12]
	v_fma_f64 v[29:30], v[29:30], v[1:2], v[75:76]
	v_fma_f64 v[3:4], v[31:32], v[1:2], -v[3:4]
	v_fma_f64 v[31:32], v[37:38], v[5:6], v[77:78]
	v_fma_f64 v[7:8], v[39:40], v[5:6], -v[7:8]
	v_fma_f64 v[37:38], v[41:42], v[9:10], v[79:80]
	v_fma_f64 v[11:12], v[43:44], v[9:10], -v[11:12]
	v_add_f64 v[1:2], v[25:26], -v[29:30]
	v_add_f64 v[3:4], v[27:28], -v[3:4]
	v_add_f64 v[5:6], v[59:60], -v[31:32]
	v_mul_f64 v[81:82], v[47:48], v[15:16]
	v_mul_f64 v[15:16], v[45:46], v[15:16]
	v_mul_f64 v[83:84], v[51:52], v[19:20]
	v_mul_f64 v[85:86], v[35:36], v[23:24]
	v_mul_f64 v[23:24], v[33:34], v[23:24]
	v_mul_f64 v[19:20], v[49:50], v[19:20]
	v_add_f64 v[7:8], v[61:62], -v[7:8]
	v_fma_f64 v[25:26], v[25:26], 2.0, -v[1:2]
	v_fma_f64 v[39:40], v[45:46], v[13:14], v[81:82]
	v_fma_f64 v[15:16], v[47:48], v[13:14], -v[15:16]
	v_fma_f64 v[41:42], v[49:50], v[17:18], v[83:84]
	v_fma_f64 v[33:34], v[33:34], v[21:22], v[85:86]
	v_fma_f64 v[23:24], v[35:36], v[21:22], -v[23:24]
	v_fma_f64 v[19:20], v[51:52], v[17:18], -v[19:20]
	v_fma_f64 v[27:28], v[27:28], 2.0, -v[3:4]
	v_add_f64 v[9:10], v[63:64], -v[37:38]
	v_add_f64 v[11:12], v[65:66], -v[11:12]
	v_add_f64 v[13:14], v[67:68], -v[39:40]
	v_add_f64 v[15:16], v[69:70], -v[15:16]
	v_add_f64 v[21:22], v[53:54], -v[33:34]
	v_add_f64 v[23:24], v[55:56], -v[23:24]
	v_mul_u32_u24_e32 v49, 12, v87
	v_fma_f64 v[29:30], v[59:60], 2.0, -v[5:6]
	v_fma_f64 v[31:32], v[61:62], 2.0, -v[7:8]
	v_lshlrev_b32_e32 v49, 4, v49
	v_add_f64 v[17:18], v[71:72], -v[41:42]
	v_add_f64 v[19:20], v[73:74], -v[19:20]
	v_fma_f64 v[45:46], v[53:54], 2.0, -v[21:22]
	v_fma_f64 v[47:48], v[55:56], 2.0, -v[23:24]
	v_add3_u32 v49, 0, v49, v58
	ds_write_b128 v49, v[25:28]
	ds_write_b128 v49, v[1:4] offset:8064
	v_mad_u32_u24 v1, v88, s14, v97
	v_fma_f64 v[33:34], v[63:64], 2.0, -v[9:10]
	v_fma_f64 v[35:36], v[65:66], 2.0, -v[11:12]
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v58
	ds_write_b128 v1, v[45:48]
	ds_write_b128 v1, v[21:24] offset:8064
	v_mad_u32_u24 v1, v89, s14, v90
	v_fma_f64 v[37:38], v[67:68], 2.0, -v[13:14]
	v_fma_f64 v[39:40], v[69:70], 2.0, -v[15:16]
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v58
	ds_write_b128 v1, v[29:32]
	ds_write_b128 v1, v[5:8] offset:8064
	v_mad_u32_u24 v1, v91, s14, v92
	v_fma_f64 v[41:42], v[71:72], 2.0, -v[17:18]
	v_fma_f64 v[43:44], v[73:74], 2.0, -v[19:20]
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v58
	ds_write_b128 v1, v[33:36]
	ds_write_b128 v1, v[9:12] offset:8064
	v_mad_u32_u24 v1, v93, s14, v94
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v58
	ds_write_b128 v1, v[37:40]
	ds_write_b128 v1, v[13:16] offset:8064
	v_mad_u32_u24 v1, v95, s14, v96
	v_mul_u32_u24_e32 v1, 0xc0, v1
	v_add3_u32 v1, 0, v1, v58
	s_movk_i32 s14, 0x3f0
	ds_write_b128 v1, v[41:44]
	ds_write_b128 v1, v[17:20] offset:8064
	v_add_u32_e32 v1, 0xffffffac, v57
	v_cmp_gt_u32_e32 vcc, s14, v0
	v_cndmask_b32_e32 v184, v1, v57, vcc
	v_lshlrev_b64 v[1:2], 4, v[184:185]
	v_mov_b32_e32 v5, s7
	v_add_co_u32_e32 v1, vcc, s6, v1
	v_addc_co_u32_e32 v2, vcc, v5, v2, vcc
	s_movk_i32 s7, 0x348
	v_add_u32_e32 v3, 0xffffffba, v57
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_cndmask_b32_e32 v179, v3, v189, vcc
	v_lshlrev_b64 v[3:4], 4, v[179:180]
	s_movk_i32 s7, 0x2a0
	v_add_co_u32_e32 v3, vcc, s6, v3
	v_addc_co_u32_e32 v4, vcc, v5, v4, vcc
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_dwordx4 v[105:108], v[1:2], off offset:1248
	global_load_dwordx4 v[101:104], v[3:4], off offset:1248
	v_subrev_u32_e32 v1, 56, v57
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_cndmask_b32_e32 v177, v1, v188, vcc
	v_lshlrev_b64 v[1:2], 4, v[177:178]
	s_movk_i32 s7, 0x1f8
	v_add_co_u32_e32 v1, vcc, s6, v1
	v_addc_co_u32_e32 v2, vcc, v5, v2, vcc
	v_subrev_u32_e32 v3, 42, v57
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_cndmask_b32_e32 v175, v3, v187, vcc
	v_lshlrev_b64 v[3:4], 4, v[175:176]
	s_movk_i32 s7, 0x150
	v_add_co_u32_e32 v3, vcc, s6, v3
	v_addc_co_u32_e32 v4, vcc, v5, v4, vcc
	global_load_dwordx4 v[109:112], v[1:2], off offset:1248
	global_load_dwordx4 v[97:100], v[3:4], off offset:1248
	v_subrev_u32_e32 v1, 28, v57
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_cndmask_b32_e32 v173, v1, v186, vcc
	v_lshlrev_b64 v[1:2], 4, v[173:174]
	s_movk_i32 s7, 0xa8
	v_add_co_u32_e32 v1, vcc, s6, v1
	v_addc_co_u32_e32 v2, vcc, v5, v2, vcc
	v_add_u32_e32 v3, -14, v57
	v_cmp_gt_u32_e32 vcc, s7, v0
	v_cndmask_b32_e32 v171, v3, v191, vcc
	v_lshlrev_b64 v[3:4], 4, v[171:172]
	v_add_u32_e32 v6, 0x54, v173
	v_add_co_u32_e32 v3, vcc, s6, v3
	v_addc_co_u32_e32 v4, vcc, v5, v4, vcc
	v_mul_lo_u32 v5, v169, v184
	global_load_dwordx4 v[117:120], v[1:2], off offset:1248
	global_load_dwordx4 v[113:116], v[3:4], off offset:1248
	v_mov_b32_e32 v1, 4
	v_mov_b32_e32 v4, 0x1000
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_add_u32_e32 v5, 0x54, v184
	v_mul_lo_u32 v5, v169, v5
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[89:92], v2, s[4:5]
	global_load_dwordx4 v[93:96], v3, s[4:5]
	v_add_u32_e32 v10, 0x54, v171
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_mul_lo_u32 v5, v169, v179
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[81:84], v2, s[4:5]
	global_load_dwordx4 v[85:88], v3, s[4:5]
	v_mul_lo_u32 v6, v169, v6
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_add_u32_e32 v5, 0x54, v179
	v_mul_lo_u32 v5, v169, v5
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[57:60], v2, s[4:5]
	global_load_dwordx4 v[61:64], v3, s[4:5]
	v_mul_lo_u32 v9, v169, v171
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_mul_lo_u32 v5, v169, v177
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[65:68], v2, s[4:5]
	global_load_dwordx4 v[69:72], v3, s[4:5]
	v_mul_lo_u32 v10, v169, v10
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_add_u32_e32 v5, 0x54, v177
	v_mul_lo_u32 v5, v169, v5
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[73:76], v2, s[4:5]
	global_load_dwordx4 v[77:80], v3, s[4:5]
	v_lshlrev_b32_sdwa v8, v1, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_mul_lo_u32 v5, v169, v175
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[33:36], v2, s[4:5]
	global_load_dwordx4 v[37:40], v3, s[4:5]
	v_bfe_u32 v6, v6, 8, 8
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_add_u32_e32 v5, 0x54, v175
	v_mul_lo_u32 v5, v169, v5
	v_lshl_or_b32 v3, v3, 4, v4
	global_load_dwordx4 v[41:44], v2, s[4:5]
	global_load_dwordx4 v[45:48], v3, s[4:5]
	v_lshlrev_b32_sdwa v11, v1, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_lshlrev_b32_sdwa v2, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v3, v5, 8, 8
	v_mul_lo_u32 v5, v169, v173
	v_bfe_u32 v9, v9, 8, 8
	v_lshl_or_b32 v3, v3, 4, v4
	v_lshl_or_b32 v6, v6, 4, v4
	v_lshlrev_b32_sdwa v7, v1, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v5, v5, 8, 8
	v_lshlrev_b32_sdwa v1, v1, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	v_bfe_u32 v10, v10, 8, 8
	v_lshl_or_b32 v5, v5, 4, v4
	v_lshl_or_b32 v9, v9, 4, v4
	v_lshl_or_b32 v10, v10, 4, v4
	global_load_dwordx4 v[49:52], v2, s[4:5]
	global_load_dwordx4 v[53:56], v3, s[4:5]
	global_load_dwordx4 v[25:28], v7, s[4:5]
	global_load_dwordx4 v[29:32], v5, s[4:5]
                                        ; kill: killed $vgpr3
                                        ; kill: killed $vgpr2
                                        ; kill: killed $vgpr5
                                        ; kill: killed $vgpr7
	global_load_dwordx4 v[17:20], v8, s[4:5]
	global_load_dwordx4 v[21:24], v6, s[4:5]
	s_nop 0
	global_load_dwordx4 v[5:8], v11, s[4:5]
	global_load_dwordx4 v[13:16], v9, s[4:5]
	s_nop 0
	global_load_dwordx4 v[1:4], v1, s[4:5]
	s_nop 0
	global_load_dwordx4 v[9:12], v10, s[4:5]
	ds_read_b128 v[137:140], v122
	ds_read_b128 v[133:136], v121
	ds_read_b128 v[129:132], v121 offset:2688
	ds_read_b128 v[125:128], v121 offset:5376
	ds_read_b128 v[121:124], v121 offset:8064
	ds_read_b128 v[141:144], v145
	ds_read_b128 v[165:168], v145 offset:16128
	ds_read_b128 v[161:164], v145 offset:18816
	ds_read_b128 v[157:160], v145 offset:21504
	ds_read_b128 v[153:156], v145 offset:24192
	ds_read_b128 v[149:152], v145 offset:26880
	ds_read_b128 v[145:148], v145 offset:29568
	s_mul_i32 s4, s8, s33
	s_mul_hi_u32 s5, s8, s19
	s_mul_i32 s6, s9, s19
	s_mul_hi_u32 s14, s10, s18
	s_add_i32 s4, s5, s4
	s_mul_i32 s7, s8, s19
	s_mul_i32 s10, s10, s18
	s_add_i32 s14, s14, s11
	s_add_i32 s5, s4, s6
	s_add_u32 s4, s10, s7
	s_addc_u32 s5, s14, s5
	s_andn2_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_17
; %bb.16:                               ; %if.then391
	v_mad_u64_u32 v[180:181], s[0:1], s8, v190, 0
	s_movk_i32 s0, 0x3ef
	v_mov_b32_e32 v172, 0xa8
	v_cmp_lt_u32_e32 vcc, s0, v0
	v_cndmask_b32_e32 v172, 0, v172, vcc
	v_add_u32_e32 v172, v184, v172
	v_mad_u64_u32 v[182:183], s[0:1], s2, v172, 0
	v_mov_b32_e32 v174, v181
	v_mad_u64_u32 v[192:193], s[0:1], s9, v190, v[174:175]
	v_mov_b32_e32 v174, v183
	v_mad_u64_u32 v[193:194], s[0:1], s3, v172, v[174:175]
	v_mov_b32_e32 v181, v192
	s_lshl_b64 s[0:1], s[4:5], 4
	s_add_u32 s0, s12, s0
	v_lshlrev_b64 v[180:181], 4, v[180:181]
	v_mov_b32_e32 v183, v193
	s_addc_u32 s1, s13, s1
	v_mov_b32_e32 v174, s1
	v_add_co_u32_e32 v180, vcc, s0, v180
	v_lshlrev_b64 v[182:183], 4, v[182:183]
	v_addc_co_u32_e32 v181, vcc, v174, v181, vcc
	v_add_co_u32_e32 v182, vcc, v180, v182
	v_addc_co_u32_e32 v183, vcc, v181, v183, vcc
	s_mov_b64 s[0:1], -1
	s_cbranch_execz .LBB0_18
	s_branch .LBB0_21
.LBB0_17:
	s_mov_b64 s[0:1], 0
                                        ; implicit-def: $vgpr180_vgpr181
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr182_vgpr183
.LBB0_18:                               ; %if.then609
	v_cmp_gt_u64_e32 vcc, s[16:17], v[169:170]
                                        ; implicit-def: $vgpr180_vgpr181
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr182_vgpr183
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB0_20
; %bb.19:                               ; %if.then615
	v_mad_u64_u32 v[169:170], s[10:11], s8, v190, 0
	s_movk_i32 s8, 0x3ef
	v_mov_b32_e32 v172, 0xa8
	v_cmp_lt_u32_e32 vcc, s8, v0
	v_cndmask_b32_e32 v0, 0, v172, vcc
	v_add_u32_e32 v172, v184, v0
	v_mad_u64_u32 v[182:183], s[10:11], s2, v172, 0
	v_mov_b32_e32 v0, v170
	s_waitcnt vmcnt(1)
	v_mad_u64_u32 v[180:181], s[8:9], s9, v190, v[0:1]
	v_mov_b32_e32 v0, v183
	v_mad_u64_u32 v[183:184], s[8:9], s3, v172, v[0:1]
	v_mov_b32_e32 v170, v180
	s_lshl_b64 s[4:5], s[4:5], 4
	s_add_u32 s4, s12, s4
	v_lshlrev_b64 v[169:170], 4, v[169:170]
	s_addc_u32 s5, s13, s5
	v_mov_b32_e32 v0, s5
	v_add_co_u32_e32 v180, vcc, s4, v169
	v_addc_co_u32_e32 v181, vcc, v0, v170, vcc
	v_lshlrev_b64 v[169:170], 4, v[182:183]
	s_or_b64 s[0:1], s[0:1], exec
	v_add_co_u32_e32 v182, vcc, v180, v169
	v_addc_co_u32_e32 v183, vcc, v181, v170, vcc
.LBB0_20:                               ; %Flow202
	s_or_b64 exec, exec, s[6:7]
.LBB0_21:                               ; %Flow201
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execnz .LBB0_23
; %bb.22:                               ; %if.end833
	s_endpgm
.LBB0_23:                               ; %if.end833.sink.split
	s_waitcnt vmcnt(29) lgkmcnt(5)
	v_mul_f64 v[169:170], v[167:168], v[107:108]
	v_mul_f64 v[107:108], v[165:166], v[107:108]
	s_waitcnt vmcnt(28) lgkmcnt(4)
	v_mul_f64 v[184:185], v[163:164], v[103:104]
	v_mul_f64 v[103:104], v[161:162], v[103:104]
	s_waitcnt vmcnt(27) lgkmcnt(3)
	v_mul_f64 v[192:193], v[159:160], v[111:112]
	v_mul_f64 v[111:112], v[157:158], v[111:112]
	v_fma_f64 v[165:166], v[165:166], v[105:106], v[169:170]
	v_fma_f64 v[105:106], v[167:168], v[105:106], -v[107:108]
	v_fma_f64 v[107:108], v[161:162], v[101:102], v[184:185]
	s_waitcnt vmcnt(26) lgkmcnt(2)
	v_mul_f64 v[161:162], v[155:156], v[99:100]
	v_fma_f64 v[101:102], v[163:164], v[101:102], -v[103:104]
	v_fma_f64 v[103:104], v[157:158], v[109:110], v[192:193]
	v_mul_f64 v[99:100], v[153:154], v[99:100]
	s_waitcnt vmcnt(25) lgkmcnt(1)
	v_mul_f64 v[157:158], v[151:152], v[119:120]
	v_fma_f64 v[109:110], v[159:160], v[109:110], -v[111:112]
	v_mul_f64 v[111:112], v[149:150], v[119:120]
	s_waitcnt vmcnt(24) lgkmcnt(0)
	v_mul_f64 v[119:120], v[147:148], v[115:116]
	v_add_f64 v[105:106], v[143:144], -v[105:106]
	v_fma_f64 v[153:154], v[153:154], v[97:98], v[161:162]
	v_mul_f64 v[115:116], v[145:146], v[115:116]
	v_add_f64 v[159:160], v[141:142], -v[165:166]
	v_fma_f64 v[97:98], v[155:156], v[97:98], -v[99:100]
	v_fma_f64 v[99:100], v[149:150], v[117:118], v[157:158]
	v_fma_f64 v[111:112], v[151:152], v[117:118], -v[111:112]
	v_fma_f64 v[117:118], v[145:146], v[113:114], v[119:120]
	v_fma_f64 v[119:120], v[143:144], 2.0, -v[105:106]
	s_waitcnt vmcnt(22)
	v_mul_f64 v[143:144], v[89:90], v[95:96]
	v_fma_f64 v[113:114], v[147:148], v[113:114], -v[115:116]
	v_fma_f64 v[115:116], v[141:142], 2.0, -v[159:160]
	v_mul_f64 v[95:96], v[91:92], v[95:96]
	s_waitcnt vmcnt(20)
	v_mul_f64 v[145:146], v[83:84], v[87:88]
	v_add_f64 v[111:112], v[127:128], -v[111:112]
	v_add_f64 v[107:108], v[137:138], -v[107:108]
	v_add_f64 v[101:102], v[139:140], -v[101:102]
	v_fma_f64 v[91:92], v[91:92], v[93:94], v[143:144]
	v_mul_f64 v[143:144], v[81:82], v[87:88]
	v_add_f64 v[97:98], v[131:132], -v[97:98]
	v_fma_f64 v[89:90], v[89:90], v[93:94], -v[95:96]
	v_add_f64 v[141:142], v[129:130], -v[153:154]
	v_fma_f64 v[95:96], v[127:128], 2.0, -v[111:112]
	s_waitcnt vmcnt(18)
	v_mul_f64 v[127:128], v[57:58], v[63:64]
	v_fma_f64 v[137:138], v[137:138], 2.0, -v[107:108]
	v_mul_f64 v[93:94], v[119:120], v[91:92]
	v_mul_f64 v[91:92], v[115:116], v[91:92]
	v_fma_f64 v[83:84], v[83:84], v[85:86], v[143:144]
	v_fma_f64 v[139:140], v[139:140], 2.0, -v[101:102]
	v_mul_f64 v[63:64], v[59:60], v[63:64]
	v_fma_f64 v[81:82], v[81:82], v[85:86], -v[145:146]
	v_fma_f64 v[59:60], v[59:60], v[61:62], v[127:128]
	v_add_f64 v[103:104], v[133:134], -v[103:104]
	v_fma_f64 v[87:88], v[115:116], v[89:90], v[93:94]
	v_fma_f64 v[89:90], v[119:120], v[89:90], -v[91:92]
	s_waitcnt vmcnt(16)
	v_mul_f64 v[91:92], v[65:66], v[71:72]
	v_mul_f64 v[71:72], v[67:68], v[71:72]
	s_waitcnt vmcnt(14)
	v_mul_f64 v[93:94], v[73:74], v[79:80]
	v_mul_f64 v[79:80], v[75:76], v[79:80]
	v_mul_f64 v[85:86], v[105:106], v[83:84]
	v_mul_f64 v[83:84], v[159:160], v[83:84]
	v_add_f64 v[109:110], v[135:136], -v[109:110]
	v_fma_f64 v[131:132], v[131:132], 2.0, -v[97:98]
	v_fma_f64 v[67:68], v[67:68], v[69:70], v[91:92]
	v_fma_f64 v[69:70], v[65:66], v[69:70], -v[71:72]
	v_fma_f64 v[71:72], v[75:76], v[77:78], v[93:94]
	v_fma_f64 v[73:74], v[73:74], v[77:78], -v[79:80]
	s_waitcnt vmcnt(12)
	v_mul_f64 v[75:76], v[33:34], v[39:40]
	s_waitcnt vmcnt(10)
	v_mul_f64 v[79:80], v[41:42], v[47:48]
	v_mul_f64 v[39:40], v[35:36], v[39:40]
	v_mul_f64 v[47:48], v[43:44], v[47:48]
	v_fma_f64 v[129:130], v[129:130], 2.0, -v[141:142]
	v_fma_f64 v[63:64], v[57:58], v[61:62], -v[63:64]
	v_mul_f64 v[61:62], v[139:140], v[59:60]
	v_mul_f64 v[91:92], v[137:138], v[59:60]
	v_fma_f64 v[35:36], v[35:36], v[37:38], v[75:76]
	v_fma_f64 v[43:44], v[43:44], v[45:46], v[79:80]
	v_fma_f64 v[57:58], v[159:160], v[81:82], v[85:86]
	v_fma_f64 v[59:60], v[105:106], v[81:82], -v[83:84]
	s_waitcnt vmcnt(8)
	v_mul_f64 v[81:82], v[49:50], v[55:56]
	v_fma_f64 v[37:38], v[33:34], v[37:38], -v[39:40]
	v_mul_f64 v[33:34], v[51:52], v[55:56]
	s_waitcnt vmcnt(4)
	v_mul_f64 v[55:56], v[17:18], v[23:24]
	v_mul_f64 v[39:40], v[109:110], v[35:36]
	v_mul_f64 v[35:36], v[103:104], v[35:36]
	v_fma_f64 v[41:42], v[41:42], v[45:46], -v[47:48]
	v_mul_f64 v[45:46], v[131:132], v[43:44]
	v_mul_f64 v[47:48], v[25:26], v[31:32]
	v_fma_f64 v[51:52], v[51:52], v[53:54], v[81:82]
	v_mul_f64 v[43:44], v[129:130], v[43:44]
	v_mul_f64 v[31:32], v[27:28], v[31:32]
	v_mul_f64 v[23:24], v[19:20], v[23:24]
	v_fma_f64 v[19:20], v[19:20], v[21:22], v[55:56]
	v_add_f64 v[99:100], v[125:126], -v[99:100]
	v_fma_f64 v[49:50], v[49:50], v[53:54], -v[33:34]
	v_fma_f64 v[33:34], v[103:104], v[37:38], v[39:40]
	v_fma_f64 v[35:36], v[109:110], v[37:38], -v[35:36]
	v_fma_f64 v[37:38], v[129:130], v[41:42], v[45:46]
	v_fma_f64 v[45:46], v[27:28], v[29:30], v[47:48]
	v_fma_f64 v[39:40], v[131:132], v[41:42], -v[43:44]
	v_mul_f64 v[41:42], v[141:142], v[51:52]
	v_fma_f64 v[25:26], v[25:26], v[29:30], -v[31:32]
	s_waitcnt vmcnt(2)
	v_mul_f64 v[31:32], v[5:6], v[15:16]
	s_waitcnt vmcnt(0)
	v_mul_f64 v[47:48], v[1:2], v[11:12]
	v_fma_f64 v[21:22], v[17:18], v[21:22], -v[23:24]
	v_mul_f64 v[23:24], v[111:112], v[19:20]
	v_add_f64 v[113:114], v[123:124], -v[113:114]
	v_fma_f64 v[125:126], v[125:126], 2.0, -v[99:100]
	v_mul_f64 v[43:44], v[95:96], v[45:46]
	v_add_f64 v[117:118], v[121:122], -v[117:118]
	v_fma_f64 v[29:30], v[97:98], v[49:50], -v[41:42]
	v_mul_f64 v[41:42], v[7:8], v[15:16]
	v_mul_f64 v[11:12], v[3:4], v[11:12]
	v_fma_f64 v[7:8], v[7:8], v[13:14], v[31:32]
	v_fma_f64 v[31:32], v[3:4], v[9:10], v[47:48]
	v_fma_f64 v[3:4], v[99:100], v[21:22], v[23:24]
	v_mul_f64 v[19:20], v[99:100], v[19:20]
	v_fma_f64 v[123:124], v[123:124], 2.0, -v[113:114]
	v_fma_f64 v[15:16], v[125:126], v[25:26], v[43:44]
	v_add_u32_e32 v43, 0x54, v172
	v_fma_f64 v[121:122], v[121:122], 2.0, -v[117:118]
	v_mul_f64 v[45:46], v[125:126], v[45:46]
	v_fma_f64 v[13:14], v[5:6], v[13:14], -v[41:42]
	v_mad_u64_u32 v[41:42], s[0:1], s2, v43, 0
	v_fma_f64 v[0:1], v[1:2], v[9:10], -v[11:12]
	v_fma_f64 v[5:6], v[111:112], v[21:22], -v[19:20]
	v_mov_b32_e32 v2, v42
	v_mad_u64_u32 v[19:20], s[0:1], s3, v43, v[2:3]
	v_mul_f64 v[23:24], v[123:124], v[7:8]
	v_sub_u32_e32 v2, v189, v179
	v_fma_f64 v[17:18], v[95:96], v[25:26], -v[45:46]
	v_mul_f64 v[25:26], v[121:122], v[7:8]
	v_mul_f64 v[11:12], v[113:114], v[31:32]
	v_mul_f64 v[31:32], v[117:118], v[31:32]
	v_add_u32_e32 v22, v2, v189
	v_mov_b32_e32 v42, v19
	v_mad_u64_u32 v[19:20], s[0:1], s2, v22, 0
	v_fma_f64 v[7:8], v[121:122], v[13:14], v[23:24]
	v_add_u32_e32 v23, 0x54, v22
	v_mov_b32_e32 v2, v20
	v_mad_u64_u32 v[20:21], s[0:1], s3, v22, v[2:3]
	v_mad_u64_u32 v[21:22], s[0:1], s2, v23, 0
	v_fma_f64 v[9:10], v[123:124], v[13:14], -v[25:26]
	v_fma_f64 v[11:12], v[117:118], v[0:1], v[11:12]
	v_fma_f64 v[13:14], v[113:114], v[0:1], -v[31:32]
	v_lshlrev_b64 v[0:1], 4, v[41:42]
	v_fma_f64 v[61:62], v[137:138], v[63:64], v[61:62]
	v_fma_f64 v[63:64], v[139:140], v[63:64], -v[91:92]
	v_fma_f64 v[133:134], v[133:134], 2.0, -v[103:104]
	v_fma_f64 v[135:136], v[135:136], 2.0, -v[109:110]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v2, v22
	global_store_dwordx4 v[182:183], v[87:90], off
	global_store_dwordx4 v[0:1], v[57:60], off
	v_lshlrev_b64 v[0:1], 4, v[19:20]
	v_mad_u64_u32 v[19:20], s[0:1], s3, v23, v[2:3]
	v_mul_f64 v[65:66], v[101:102], v[67:68]
	v_mul_f64 v[67:68], v[107:108], v[67:68]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v22, v19
	v_sub_u32_e32 v2, v188, v177
	global_store_dwordx4 v[0:1], v[61:64], off
	v_lshlrev_b64 v[0:1], 4, v[21:22]
	v_add_u32_e32 v22, v2, v188
	v_mul_f64 v[77:78], v[135:136], v[71:72]
	v_mul_f64 v[71:72], v[133:134], v[71:72]
	v_mad_u64_u32 v[19:20], s[0:1], s2, v22, 0
	v_fma_f64 v[65:66], v[107:108], v[69:70], v[65:66]
	v_fma_f64 v[67:68], v[101:102], v[69:70], -v[67:68]
	v_mov_b32_e32 v2, v20
	v_mad_u64_u32 v[20:21], s[0:1], s3, v22, v[2:3]
	v_add_u32_e32 v23, 0x54, v22
	v_mad_u64_u32 v[21:22], s[0:1], s2, v23, 0
	v_fma_f64 v[69:70], v[133:134], v[73:74], v[77:78]
	v_fma_f64 v[71:72], v[135:136], v[73:74], -v[71:72]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v2, v22
	global_store_dwordx4 v[0:1], v[65:68], off
	v_lshlrev_b64 v[0:1], 4, v[19:20]
	v_mad_u64_u32 v[19:20], s[0:1], s3, v23, v[2:3]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v22, v19
	v_sub_u32_e32 v2, v187, v175
	global_store_dwordx4 v[0:1], v[69:72], off
	v_lshlrev_b64 v[0:1], 4, v[21:22]
	v_add_u32_e32 v22, v2, v187
	v_mad_u64_u32 v[19:20], s[0:1], s2, v22, 0
	v_add_u32_e32 v23, 0x54, v22
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_mov_b32_e32 v2, v20
	v_mad_u64_u32 v[20:21], s[0:1], s3, v22, v[2:3]
	v_mad_u64_u32 v[21:22], s[0:1], s2, v23, 0
	v_mul_f64 v[53:54], v[97:98], v[51:52]
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v2, v22
	global_store_dwordx4 v[0:1], v[33:36], off
	v_lshlrev_b64 v[0:1], 4, v[19:20]
	v_mad_u64_u32 v[19:20], s[0:1], s3, v23, v[2:3]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v22, v19
	v_sub_u32_e32 v2, v186, v173
	global_store_dwordx4 v[0:1], v[37:40], off
	v_lshlrev_b64 v[0:1], 4, v[21:22]
	v_add_u32_e32 v22, v2, v186
	v_mad_u64_u32 v[19:20], s[0:1], s2, v22, 0
	v_fma_f64 v[27:28], v[141:142], v[49:50], v[53:54]
	v_add_u32_e32 v23, 0x54, v22
	v_mov_b32_e32 v2, v20
	v_mad_u64_u32 v[20:21], s[0:1], s3, v22, v[2:3]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_mad_u64_u32 v[21:22], s[0:1], s2, v23, 0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	global_store_dwordx4 v[0:1], v[27:30], off
	v_lshlrev_b64 v[0:1], 4, v[19:20]
	v_mov_b32_e32 v2, v22
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_mad_u64_u32 v[19:20], s[0:1], s3, v23, v[2:3]
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_sub_u32_e32 v2, v191, v171
	global_store_dwordx4 v[0:1], v[15:18], off
	v_mov_b32_e32 v22, v19
	v_add_u32_e32 v18, v2, v191
	v_mad_u64_u32 v[15:16], s[0:1], s2, v18, 0
	v_add_u32_e32 v19, 0x54, v18
	v_lshlrev_b64 v[0:1], 4, v[21:22]
	v_mov_b32_e32 v2, v16
	v_mad_u64_u32 v[16:17], s[0:1], s3, v18, v[2:3]
	v_mad_u64_u32 v[17:18], s[0:1], s2, v19, 0
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v2, v18
	global_store_dwordx4 v[0:1], v[3:6], off
	v_lshlrev_b64 v[0:1], 4, v[15:16]
	v_mad_u64_u32 v[2:3], s[0:1], s3, v19, v[2:3]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	v_mov_b32_e32 v18, v2
	global_store_dwordx4 v[0:1], v[7:10], off
	v_lshlrev_b64 v[0:1], 4, v[17:18]
	v_add_co_u32_e32 v0, vcc, v180, v0
	v_addc_co_u32_e32 v1, vcc, v181, v1, vcc
	global_store_dwordx4 v[0:1], v[11:14], off
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
		.amdhsa_next_free_vgpr 195
		.amdhsa_next_free_sgpr 43
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
; codeLenInByte = 9592
; NumSgprs: 47
; NumVgprs: 195
; NumAgprs: 0
; TotalNumVgprs: 195
; ScratchSize: 0
; MemoryBound: 1
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 48
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 195
; Occupancy: 1
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
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     195
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx908
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
