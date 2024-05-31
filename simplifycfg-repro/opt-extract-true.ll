; ModuleID = 'opt-extract-true.bc'
source_filename = "llvm-link"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.rocfft_complex = type { double, double }

@lds_uchar = external hidden local_unnamed_addr addrspace(3) global [0 x i8], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) nocapture) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) nocapture) #0

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn
define protected amdgpu_kernel void @fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg(ptr addrspace(1) noalias nocapture noundef readnone %twiddles.coerce, ptr addrspace(1) nocapture noundef readnone %large_twiddles.coerce, ptr addrspace(1) noalias nocapture noundef readonly %lengths.coerce, ptr addrspace(1) noalias nocapture noundef readnone %stride_in.coerce, ptr addrspace(1) noalias nocapture noundef readonly %stride_out.coerce, i64 noundef %nbatch, i32 noundef %lds_padding, ptr addrspace(1) noalias nocapture noundef readnone %load_cb_fn.coerce, ptr addrspace(1) noalias nocapture noundef readnone %load_cb_data.coerce, i32 noundef %load_cb_lds_bytes, ptr addrspace(1) noalias nocapture noundef readnone %store_cb_fn.coerce, ptr addrspace(1) noalias nocapture noundef readnone %store_cb_data.coerce, ptr addrspace(1) noalias nocapture noundef readnone %buf_in.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %buf_out.coerce) local_unnamed_addr #1 {
entry:
  %t.i = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %R.sroa.86 = alloca %struct.rocfft_complex, align 16, addrspace(5)
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %R.sroa.86)
  %0 = load i64, ptr addrspace(1) %stride_out.coerce, align 8, !tbaa !6, !amdgpu.noclobber !10
  %arrayidx14 = getelementptr inbounds i8, ptr addrspace(1) %lengths.coerce, i64 8
  %1 = load i64, ptr addrspace(1) %arrayidx14, align 8, !tbaa !6
  %sub = add i64 %1, -1
  %div = udiv i64 %sub, 12
  %add = add nuw nsw i64 %div, 1
  %2 = tail call noundef i32 @llvm.amdgcn.workgroup.id.x()
  %conv = zext i32 %2 to i64
  %add.frozen = freeze i64 %add
  %div43 = udiv i64 %conv, %add.frozen
  %3 = mul i64 %div43, %add.frozen
  %rem.decomposed = sub i64 %conv, %3
  %mul = mul nuw nsw i64 %rem.decomposed, 12
  %arrayidx22 = getelementptr inbounds i8, ptr addrspace(1) %stride_out.coerce, i64 8
  %4 = load i64, ptr addrspace(1) %arrayidx22, align 8, !tbaa !6
  %mul23 = mul i64 %mul, %4
  %arrayidx47 = getelementptr inbounds i8, ptr addrspace(1) %stride_out.coerce, i64 16
  %5 = load i64, ptr addrspace(1) %arrayidx47, align 8, !tbaa !6, !amdgpu.noclobber !10
  %mul48 = mul i64 %5, %div43
  %add49 = add i64 %mul48, %mul23
  %6 = tail call noundef i32 @llvm.amdgcn.workitem.id.x(), !range !11, !noundef !10
  %rem52.lhs.trunc = trunc nuw nsw i32 %6 to i16
  %div6451 = udiv i16 %rem52.lhs.trunc, 12
  %7 = mul i16 %div6451, 12
  %rem5250.decomposed = sub i16 %rem52.lhs.trunc, %7
  %rem52.zext = zext nneg i16 %rem5250.decomposed to i32
  %conv53 = zext nneg i16 %rem5250.decomposed to i64
  %mul60 = add nuw nsw i64 %mul, 12
  %cmp62.not = icmp ugt i64 %mul60, %1
  %div64.zext = zext nneg i16 %div6451 to i32
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %t.i)
  %add91.i = add nuw nsw i32 %div64.zext, 14
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier(), !noalias !12
  fence syncscope("workgroup") acquire
  %arrayidx180.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) @lds_uchar, i32 %6
  %R.sroa.0.0.copyload1 = load double, ptr addrspace(3) %arrayidx180.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.7.0.arrayidx180.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx180.i, i32 8
  %R.sroa.7.0.copyload3 = load double, ptr addrspace(3) %R.sroa.7.0.arrayidx180.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %8 = mul nuw nsw i32 %div64.zext, 12
  %9 = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) @lds_uchar, i32 %8
  %10 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 4608
  %arrayidx188.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %10, i32 %rem52.zext
  %R.sroa.9.16.copyload5 = load double, ptr addrspace(3) %arrayidx188.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.14.16.arrayidx188.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx188.i, i32 8
  %R.sroa.14.16.copyload7 = load double, ptr addrspace(3) %R.sroa.14.16.arrayidx188.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %11 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 9216
  %arrayidx196.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %11, i32 %rem52.zext
  %R.sroa.16.32.copyload9 = load double, ptr addrspace(3) %arrayidx196.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.21.32.arrayidx196.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx196.i, i32 8
  %R.sroa.21.32.copyload11 = load double, ptr addrspace(3) %R.sroa.21.32.arrayidx196.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %12 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 13824
  %arrayidx204.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %12, i32 %rem52.zext
  %R.sroa.23.48.copyload13 = load double, ptr addrspace(3) %arrayidx204.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.28.48.arrayidx204.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx204.i, i32 8
  %R.sroa.28.48.copyload15 = load double, ptr addrspace(3) %R.sroa.28.48.arrayidx204.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %13 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 18432
  %arrayidx212.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %13, i32 %rem52.zext
  %R.sroa.30.64.copyload17 = load double, ptr addrspace(3) %arrayidx212.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.35.64.arrayidx212.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx212.i, i32 8
  %R.sroa.35.64.copyload19 = load double, ptr addrspace(3) %R.sroa.35.64.arrayidx212.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %14 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 23040
  %arrayidx220.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %14, i32 %rem52.zext
  %R.sroa.37.80.copyload21 = load double, ptr addrspace(3) %arrayidx220.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.42.80.arrayidx220.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx220.i, i32 8
  %R.sroa.42.80.copyload23 = load double, ptr addrspace(3) %R.sroa.42.80.arrayidx220.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %15 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 27648
  %arrayidx228.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %15, i32 %rem52.zext
  %R.sroa.44.96.copyload25 = load double, ptr addrspace(3) %arrayidx228.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.49.96.arrayidx228.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx228.i, i32 8
  %R.sroa.49.96.copyload27 = load double, ptr addrspace(3) %R.sroa.49.96.arrayidx228.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %cmp.i = icmp ult i32 %6, 120
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %mul234.i = mul nuw nsw i32 %add91.i, 12
  %16 = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) @lds_uchar, i32 %mul234.i
  %arrayidx237.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %16, i32 %rem52.zext
  %R.sroa.51.112.copyload29 = load double, ptr addrspace(3) %arrayidx237.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.56.112.arrayidx237.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx237.i, i32 8
  %R.sroa.56.112.copyload31 = load double, ptr addrspace(3) %R.sroa.56.112.arrayidx237.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %17 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 7296
  %arrayidx245.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %17, i32 %rem52.zext
  %R.sroa.58.128.copyload33 = load double, ptr addrspace(3) %arrayidx245.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.63.128.arrayidx245.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx245.i, i32 8
  %R.sroa.63.128.copyload35 = load double, ptr addrspace(3) %R.sroa.63.128.arrayidx245.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %18 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 11904
  %arrayidx253.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %18, i32 %rem52.zext
  %R.sroa.65.144.copyload37 = load double, ptr addrspace(3) %arrayidx253.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.70.144.arrayidx253.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx253.i, i32 8
  %R.sroa.70.144.copyload39 = load double, ptr addrspace(3) %R.sroa.70.144.arrayidx253.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %19 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 16512
  %arrayidx261.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %19, i32 %rem52.zext
  %R.sroa.72.160.copyload41 = load double, ptr addrspace(3) %arrayidx261.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.77.160.arrayidx261.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx261.i, i32 8
  %R.sroa.77.160.copyload43 = load double, ptr addrspace(3) %R.sroa.77.160.arrayidx261.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %20 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 21120
  %arrayidx269.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %20, i32 %rem52.zext
  %R.sroa.79.176.copyload45 = load double, ptr addrspace(3) %arrayidx269.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.84.176.arrayidx269.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx269.i, i32 8
  %R.sroa.84.176.copyload47 = load double, ptr addrspace(3) %R.sroa.84.176.arrayidx269.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %21 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 25728
  %arrayidx277.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %21, i32 %rem52.zext
  call void @llvm.memcpy.p5.p3.i64(ptr addrspace(5) noundef align 16 dereferenceable(16) %R.sroa.86, ptr addrspace(3) noundef align 16 dereferenceable(16) %arrayidx277.i, i64 16, i1 false), !tbaa.struct !17, !noalias !12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %R.sroa.84.0 = phi double [ %R.sroa.84.176.copyload47, %if.then.i ], [ undef, %entry ]
  %R.sroa.79.0 = phi double [ %R.sroa.79.176.copyload45, %if.then.i ], [ undef, %entry ]
  %R.sroa.77.0 = phi double [ %R.sroa.77.160.copyload43, %if.then.i ], [ undef, %entry ]
  %R.sroa.72.0 = phi double [ %R.sroa.72.160.copyload41, %if.then.i ], [ undef, %entry ]
  %R.sroa.70.0 = phi double [ %R.sroa.70.144.copyload39, %if.then.i ], [ undef, %entry ]
  %R.sroa.65.0 = phi double [ %R.sroa.65.144.copyload37, %if.then.i ], [ undef, %entry ]
  %R.sroa.63.0 = phi double [ %R.sroa.63.128.copyload35, %if.then.i ], [ undef, %entry ]
  %R.sroa.58.0 = phi double [ %R.sroa.58.128.copyload33, %if.then.i ], [ undef, %entry ]
  %R.sroa.56.0 = phi double [ %R.sroa.56.112.copyload31, %if.then.i ], [ undef, %entry ]
  %R.sroa.51.0 = phi double [ %R.sroa.51.112.copyload29, %if.then.i ], [ undef, %entry ]
  %rem289.i.lhs.trunc = trunc nuw nsw i16 %div6451 to i8
  %rem289.i52 = urem i8 %rem289.i.lhs.trunc, 6
  %rem289.i.zext = zext nneg i8 %rem289.i52 to i32
  %div623.i53 = udiv i16 %rem52.lhs.trunc, 72
  %narrow = mul nuw nsw i16 %div623.i53, 42
  %mul624.i = zext nneg i16 %narrow to i32
  %add628.i = add nuw nsw i32 %rem289.i.zext, %mul624.i
  %mul630.i = mul nuw nsw i32 %add628.i, 12
  %22 = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) @lds_uchar, i32 %mul630.i
  %arrayidx634.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %22, i32 %rem52.zext
  store double %R.sroa.0.0.copyload1, ptr addrspace(3) %arrayidx634.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.7.0.arrayidx634.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx634.i, i32 8
  store double %R.sroa.7.0.copyload3, ptr addrspace(3) %R.sroa.7.0.arrayidx634.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %23 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 1152
  %arrayidx648.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %23, i32 %rem52.zext
  store double %R.sroa.9.16.copyload5, ptr addrspace(3) %arrayidx648.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.14.16.arrayidx648.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx648.i, i32 8
  store double %R.sroa.14.16.copyload7, ptr addrspace(3) %R.sroa.14.16.arrayidx648.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %24 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 2304
  %arrayidx662.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %24, i32 %rem52.zext
  store double %R.sroa.16.32.copyload9, ptr addrspace(3) %arrayidx662.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.21.32.arrayidx662.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx662.i, i32 8
  store double %R.sroa.21.32.copyload11, ptr addrspace(3) %R.sroa.21.32.arrayidx662.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %25 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 3456
  %arrayidx676.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %25, i32 %rem52.zext
  store double %R.sroa.23.48.copyload13, ptr addrspace(3) %arrayidx676.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.28.48.arrayidx676.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx676.i, i32 8
  store double %R.sroa.28.48.copyload15, ptr addrspace(3) %R.sroa.28.48.arrayidx676.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %26 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 4608
  %arrayidx690.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %26, i32 %rem52.zext
  store double %R.sroa.30.64.copyload17, ptr addrspace(3) %arrayidx690.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.35.64.arrayidx690.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx690.i, i32 8
  store double %R.sroa.35.64.copyload19, ptr addrspace(3) %R.sroa.35.64.arrayidx690.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %27 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 5760
  %arrayidx704.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %27, i32 %rem52.zext
  store double %R.sroa.37.80.copyload21, ptr addrspace(3) %arrayidx704.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.42.80.arrayidx704.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx704.i, i32 8
  store double %R.sroa.42.80.copyload23, ptr addrspace(3) %R.sroa.42.80.arrayidx704.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %28 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 6912
  %arrayidx718.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %28, i32 %rem52.zext
  store double %R.sroa.44.96.copyload25, ptr addrspace(3) %arrayidx718.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.49.96.arrayidx718.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx718.i, i32 8
  store double %R.sroa.49.96.copyload27, ptr addrspace(3) %R.sroa.49.96.arrayidx718.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  br i1 %cmp.i, label %if.then721.i, label %mylabel

if.then721.i:                                     ; preds = %if.end.i
  %div724.i.lhs.trunc = trunc nuw nsw i32 %add91.i to i8
  %div724.i54 = udiv i8 %div724.i.lhs.trunc, 6
  %div724.i.zext = zext nneg i8 %div724.i54 to i32
  %29 = mul nuw nsw i32 %div724.i.zext, 36
  %add729.i = add nuw nsw i32 %29, %add91.i
  %mul731.i = mul nuw nsw i32 %add729.i, 12
  %30 = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) @lds_uchar, i32 %mul731.i
  %arrayidx735.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %30, i32 %rem52.zext
  store double %R.sroa.51.0, ptr addrspace(3) %arrayidx735.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.56.112.arrayidx735.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx735.i, i32 8
  store double %R.sroa.56.0, ptr addrspace(3) %R.sroa.56.112.arrayidx735.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %31 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 1152
  %arrayidx749.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %31, i32 %rem52.zext
  store double %R.sroa.58.0, ptr addrspace(3) %arrayidx749.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.63.128.arrayidx749.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx749.i, i32 8
  store double %R.sroa.63.0, ptr addrspace(3) %R.sroa.63.128.arrayidx749.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %32 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 2304
  %arrayidx763.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %32, i32 %rem52.zext
  store double %R.sroa.65.0, ptr addrspace(3) %arrayidx763.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.70.144.arrayidx763.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx763.i, i32 8
  store double %R.sroa.70.0, ptr addrspace(3) %R.sroa.70.144.arrayidx763.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %33 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 3456
  %arrayidx777.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %33, i32 %rem52.zext
  store double %R.sroa.72.0, ptr addrspace(3) %arrayidx777.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.77.160.arrayidx777.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx777.i, i32 8
  store double %R.sroa.77.0, ptr addrspace(3) %R.sroa.77.160.arrayidx777.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %34 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 4608
  %arrayidx791.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %34, i32 %rem52.zext
  store double %R.sroa.79.0, ptr addrspace(3) %arrayidx791.i, align 16, !tbaa !15, !noalias !12
  %R.sroa.84.176.arrayidx791.i.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %arrayidx791.i, i32 8
  store double %R.sroa.84.0, ptr addrspace(3) %R.sroa.84.176.arrayidx791.i.sroa_idx, align 8, !tbaa !15, !noalias !12
  %35 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 5760
  %arrayidx805.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %35, i32 %rem52.zext
  call void @llvm.memcpy.p3.p5.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %arrayidx805.i, ptr addrspace(5) noundef align 16 dereferenceable(16) %R.sroa.86, i64 16, i1 false), !tbaa.struct !17, !noalias !12
  %36 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 6912
  %arrayidx819.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspace(3) %36, i32 %rem52.zext
  call void @llvm.memcpy.p3.p5.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %arrayidx819.i, ptr addrspace(5) noundef align 8 dereferenceable(16) %t.i, i64 16, i1 false)
  br label %mylabel

mylabel:                                          ; preds = %if.then721.i, %if.end.i
  br i1 %cmp62.not, label %if.then609, label %if.then391

if.then391:                                       ; preds = %mylabel
  %mul394 = mul i64 %4, %conv53
  %div398.cmp = icmp ugt i32 %6, 1007
  %mul399 = select i1 %div398.cmp, i32 168, i32 0
  %rem402.urem = add nsw i32 %div64.zext, -84
  %rem402.cmp = icmp ult i32 %6, 1008
  %rem402 = select i1 %rem402.cmp, i32 %div64.zext, i32 %rem402.urem
  %add403 = add nuw nsw i32 %rem402, %mul399
  %conv405 = zext nneg i32 %add403 to i64
  %mul406 = mul i64 %0, %conv405
  %37 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %buf_out.coerce, i64 %add49
  %38 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %37, i64 %mul394
  %arrayidx.i589 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %38, i64 %mul406
  br label %if.end833.sink.split

if.then609:                                       ; preds = %mylabel
  %add612 = add nuw nsw i64 %mul, %conv53
  %cmp614 = icmp ult i64 %add612, %1
  br i1 %cmp614, label %if.then615, label %if.end833

if.then615:                                       ; preds = %if.then609
  %mul618 = mul i64 %4, %conv53
  %div622.cmp = icmp ugt i32 %6, 1007
  %mul623 = select i1 %div622.cmp, i32 168, i32 0
  %rem626.urem = add nsw i32 %div64.zext, -84
  %rem626.cmp = icmp ult i32 %6, 1008
  %rem626 = select i1 %rem626.cmp, i32 %div64.zext, i32 %rem626.urem
  %add627 = add nuw nsw i32 %rem626, %mul623
  %conv629 = zext nneg i32 %add627 to i64
  %mul630 = mul i64 %0, %conv629
  %39 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %buf_out.coerce, i64 %add49
  %40 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %39, i64 %mul618
  %arrayidx.i612 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %40, i64 %mul630
  br label %if.end833.sink.split

if.end833.sink.split:                             ; preds = %if.then615, %if.then391
  %arrayidx.i612.sink94 = phi ptr addrspace(1) [ %arrayidx.i612, %if.then615 ], [ %arrayidx.i589, %if.then391 ]
  %add627.sink = phi i32 [ %add627, %if.then615 ], [ %add403, %if.then391 ]
  %.sink = phi ptr addrspace(1) [ %40, %if.then615 ], [ %38, %if.then391 ]
  store double %R.sroa.0.0.copyload1, ptr addrspace(1) %arrayidx.i612.sink94, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i613 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i612.sink94, i64 8
  store double %R.sroa.7.0.copyload3, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i613, align 8, !tbaa !15
  %add646 = add nuw nsw i32 %add627.sink, 84
  %conv647 = zext nneg i32 %add646 to i64
  %mul648 = mul i64 %0, %conv647
  %arrayidx.i614 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul648
  store double %R.sroa.9.16.copyload5, ptr addrspace(1) %arrayidx.i614, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i615 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i614, i64 8
  store double %R.sroa.14.16.copyload7, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i615, align 8, !tbaa !15
  %.cmp = icmp ult i32 %6, 840
  %41 = select i1 %.cmp, i32 0, i32 84
  %add663 = add nuw nsw i32 %add91.i, %41
  %conv665 = zext nneg i32 %add663 to i64
  %mul666 = mul i64 %0, %conv665
  %arrayidx.i616 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul666
  store double %R.sroa.16.32.copyload9, ptr addrspace(1) %arrayidx.i616, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i617 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i616, i64 8
  store double %R.sroa.21.32.copyload11, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i617, align 8, !tbaa !15
  %add682 = add nuw nsw i32 %add663, 84
  %conv683 = zext nneg i32 %add682 to i64
  %mul684 = mul i64 %0, %conv683
  %arrayidx.i618 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul684
  store double %R.sroa.23.48.copyload13, ptr addrspace(1) %arrayidx.i618, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i619 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i618, i64 8
  store double %R.sroa.28.48.copyload15, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i619, align 8, !tbaa !15
  %.cmp56 = icmp ult i32 %6, 672
  %add693 = select i1 %.cmp56, i32 28, i32 112
  %add699 = add nuw nsw i32 %add693, %div64.zext
  %conv701 = zext nneg i32 %add699 to i64
  %mul702 = mul i64 %0, %conv701
  %arrayidx.i620 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul702
  store double %R.sroa.30.64.copyload17, ptr addrspace(1) %arrayidx.i620, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i621 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i620, i64 8
  store double %R.sroa.35.64.copyload19, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i621, align 8, !tbaa !15
  %add718 = add nuw nsw i32 %add699, 84
  %conv719 = zext nneg i32 %add718 to i64
  %mul720 = mul i64 %0, %conv719
  %arrayidx.i622 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul720
  store double %R.sroa.37.80.copyload21, ptr addrspace(1) %arrayidx.i622, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i623 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i622, i64 8
  store double %R.sroa.42.80.copyload23, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i623, align 8, !tbaa !15
  %.cmp58 = icmp ult i32 %6, 504
  %add729 = select i1 %.cmp58, i32 42, i32 126
  %add735 = add nuw nsw i32 %add729, %div64.zext
  %conv737 = zext nneg i32 %add735 to i64
  %mul738 = mul i64 %0, %conv737
  %arrayidx.i624 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul738
  store double %R.sroa.44.96.copyload25, ptr addrspace(1) %arrayidx.i624, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i625 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i624, i64 8
  store double %R.sroa.49.96.copyload27, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i625, align 8, !tbaa !15
  %add754 = add nuw nsw i32 %add735, 84
  %conv755 = zext nneg i32 %add754 to i64
  %mul756 = mul i64 %0, %conv755
  %arrayidx.i626 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul756
  store double %R.sroa.51.0, ptr addrspace(1) %arrayidx.i626, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i627 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i626, i64 8
  store double %R.sroa.56.0, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i627, align 8, !tbaa !15
  %.cmp60 = icmp ult i32 %6, 336
  %add765 = select i1 %.cmp60, i32 56, i32 140
  %add771 = add nuw nsw i32 %add765, %div64.zext
  %conv773 = zext nneg i32 %add771 to i64
  %mul774 = mul i64 %0, %conv773
  %arrayidx.i628 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul774
  store double %R.sroa.58.0, ptr addrspace(1) %arrayidx.i628, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i629 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i628, i64 8
  store double %R.sroa.63.0, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i629, align 8, !tbaa !15
  %add790 = add nuw nsw i32 %add771, 84
  %conv791 = zext nneg i32 %add790 to i64
  %mul792 = mul i64 %0, %conv791
  %arrayidx.i630 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul792
  store double %R.sroa.65.0, ptr addrspace(1) %arrayidx.i630, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i631 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i630, i64 8
  store double %R.sroa.70.0, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i631, align 8, !tbaa !15
  %.cmp62 = icmp ult i32 %6, 168
  %add801 = select i1 %.cmp62, i32 70, i32 154
  %add807 = add nuw nsw i32 %add801, %div64.zext
  %conv809 = zext nneg i32 %add807 to i64
  %mul810 = mul i64 %0, %conv809
  %arrayidx.i632 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul810
  store double %R.sroa.72.0, ptr addrspace(1) %arrayidx.i632, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i633 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i632, i64 8
  store double %R.sroa.77.0, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i633, align 8, !tbaa !15
  %add826 = add nuw nsw i32 %add807, 84
  %conv827 = zext nneg i32 %add826 to i64
  %mul828 = mul i64 %0, %conv827
  %arrayidx.i634 = getelementptr %struct.rocfft_complex, ptr addrspace(1) %.sink, i64 %mul828
  store double %R.sroa.79.0, ptr addrspace(1) %arrayidx.i634, align 8, !tbaa !15
  %element.sroa.2.0.arrayidx.sroa_idx.i611 = getelementptr inbounds i8, ptr addrspace(1) %arrayidx.i634, i64 8
  store double %R.sroa.84.0, ptr addrspace(1) %element.sroa.2.0.arrayidx.sroa_idx.i611, align 8, !tbaa !15
  br label %if.end833

if.end833:                                        ; preds = %if.end833.sink.split, %if.then609
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %R.sroa.86)
  ret void
}

; Function Attrs: convergent nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p3.p5.i64(ptr addrspace(3) noalias nocapture writeonly, ptr addrspace(5) noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p5.p3.i64(ptr addrspace(5) noalias nocapture writeonly, ptr addrspace(3) noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { convergent mustprogress nofree norecurse nounwind willreturn "amdgpu-flat-work-group-size"="1,168" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #2 = { convergent nocallback nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!opencl.ocl.version = !{!4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"amdhsa_code_object_version", i32 500}
!1 = !{i32 1, !"amdgpu_printf_kind", !"hostcall"}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 2, i32 0}
!5 = !{!"AOMP_STANDALONE_19.0-2 clang version 19.0.0_AOMP_STANDALONE_19.0-2 (ssh://lmeadows@gerrit-git.amd.com:29418/lightning/ec/llvm-project f39dcaed48cb5a76eb932ff2f6d44db24ab90977)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{}
!11 = !{i32 0, i32 1024}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m: %twiddles"}
!14 = distinct !{!14, !"_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m"}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{i64 0, i64 8, !15, i64 8, i64 8, !15}
