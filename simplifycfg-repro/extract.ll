; ModuleID = 'extract.bc'
source_filename = "llvm-link"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%struct.rocfft_complex = type { double, double }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" = type { i8 }

@lds_uchar = external hidden addrspace(3) global [0 x i8], align 16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) nocapture) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) nocapture) #0

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg(ptr addrspace(1) noalias noundef %twiddles.coerce, ptr addrspace(1) noundef %large_twiddles.coerce, ptr addrspace(1) noalias noundef %lengths.coerce, ptr addrspace(1) noalias noundef %stride_in.coerce, ptr addrspace(1) noalias noundef %stride_out.coerce, i64 noundef %nbatch, i32 noundef %lds_padding, ptr addrspace(1) noalias noundef %load_cb_fn.coerce, ptr addrspace(1) noalias noundef %load_cb_data.coerce, i32 noundef %load_cb_lds_bytes, ptr addrspace(1) noalias noundef %store_cb_fn.coerce, ptr addrspace(1) noalias noundef %store_cb_data.coerce, ptr addrspace(1) noalias noundef %buf_in.coerce, ptr addrspace(1) noalias noundef %buf_out.coerce) local_unnamed_addr #1 {
entry:
  %t.i = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp.i585 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i445 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i443 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i441 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i439 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i437 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i435 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %ref.tmp.i = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %R = alloca [14 x %struct.rocfft_complex], align 16, addrspace(5)
  %R.ascast = addrspacecast ptr addrspace(5) %R to ptr
  %0 = addrspacecast ptr addrspace(1) %twiddles.coerce to ptr
  %1 = addrspacecast ptr addrspace(1) %large_twiddles.coerce to ptr
  %2 = addrspacecast ptr addrspace(1) %lengths.coerce to ptr
  %3 = addrspacecast ptr addrspace(1) %stride_in.coerce to ptr
  %4 = addrspacecast ptr addrspace(1) %stride_out.coerce to ptr
  %5 = addrspacecast ptr addrspace(1) %load_cb_fn.coerce to ptr
  %6 = addrspacecast ptr addrspace(1) %load_cb_data.coerce to ptr
  %7 = addrspacecast ptr addrspace(1) %store_cb_fn.coerce to ptr
  %8 = addrspacecast ptr addrspace(1) %store_cb_data.coerce to ptr
  %9 = addrspacecast ptr addrspace(1) %buf_in.coerce to ptr
  %10 = addrspacecast ptr addrspace(1) %buf_out.coerce to ptr
  call void @llvm.lifetime.start.p5(i64 224, ptr addrspace(5) %R) #6
  %11 = load i64, ptr %3, align 8, !tbaa !6
  %12 = load i64, ptr %4, align 8, !tbaa !6
  %arrayidx14 = getelementptr inbounds i64, ptr %2, i64 1
  %13 = load i64, ptr %arrayidx14, align 8, !tbaa !6
  %sub = sub i64 %13, 1
  %div = udiv i64 %sub, 12
  %add = add nuw nsw i64 %div, 1
  %ref.tmp.ascast.i = addrspacecast ptr addrspace(5) %ref.tmp.i to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i) #6
  %14 = call noundef i32 @llvm.amdgcn.workgroup.id.x()
  %15 = zext i32 %14 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i) #6
  %conv = zext i32 %14 to i64
  %rem = urem i64 %conv, %add
  %ref.tmp.ascast.i436 = addrspacecast ptr addrspace(5) %ref.tmp.i435 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i435) #6
  %16 = call noundef i32 @llvm.amdgcn.workgroup.id.x()
  %17 = zext i32 %16 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i435) #6
  %conv17 = zext i32 %16 to i64
  %div18 = udiv i64 %conv17, %add
  %mul = mul nuw nsw i64 %rem, 12
  %arrayidx19 = getelementptr inbounds i64, ptr %3, i64 1
  %18 = load i64, ptr %arrayidx19, align 8, !tbaa !6
  %mul20 = mul i64 %mul, %18
  %arrayidx22 = getelementptr inbounds i64, ptr %4, i64 1
  %19 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul23 = mul i64 %mul, %19
  br label %for.cond

for.cond:                                         ; preds = %entry
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %ref.tmp.ascast.i438 = addrspacecast ptr addrspace(5) %ref.tmp.i437 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i437) #6
  %20 = call noundef i32 @llvm.amdgcn.workgroup.id.x()
  %21 = zext i32 %20 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i437) #6
  %conv42 = zext i32 %20 to i64
  %div43 = udiv i64 %conv42, %add
  %arrayidx44 = getelementptr inbounds i64, ptr %3, i64 2
  %22 = load i64, ptr %arrayidx44, align 8, !tbaa !6
  %mul45 = mul i64 %div43, %22
  %add46 = add i64 %mul20, %mul45
  %arrayidx47 = getelementptr inbounds i64, ptr %4, i64 2
  %23 = load i64, ptr %arrayidx47, align 8, !tbaa !6
  %mul48 = mul i64 %div43, %23
  %add49 = add i64 %mul23, %mul48
  %ref.tmp.ascast.i440 = addrspacecast ptr addrspace(5) %ref.tmp.i439 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i439) #6
  %24 = call noundef i32 @llvm.amdgcn.workitem.id.x(), !range !10, !noundef !11
  %25 = zext nneg i32 %24 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i439) #6
  %rem52 = urem i32 %24, 12
  %conv53 = zext nneg i32 %rem52 to i64
  %add54 = add nuw nsw i64 %mul, %conv53
  %ref.tmp.ascast.i442 = addrspacecast ptr addrspace(5) %ref.tmp.i441 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i441) #6
  %26 = call noundef i32 @llvm.amdgcn.workitem.id.x(), !range !10, !noundef !11
  %27 = zext nneg i32 %26 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i441) #6
  %rem56 = urem i32 %26, 12
  %conv57 = zext nneg i32 %rem56 to i64
  %add59 = add nuw nsw i64 %rem, 1
  %mul60 = mul nuw nsw i64 %add59, 12
  %28 = load i64, ptr %arrayidx14, align 8, !tbaa !6
  %cmp62 = icmp ugt i64 %mul60, %28
  %cond = select i1 %cmp62, i1 false, i1 true
  %frombool = zext i1 %cond to i8
  %ref.tmp.ascast.i444 = addrspacecast ptr addrspace(5) %ref.tmp.i443 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i443) #6
  %29 = call noundef i32 @llvm.amdgcn.workitem.id.x(), !range !10, !noundef !11
  %30 = zext nneg i32 %29 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i443) #6
  %div64 = udiv i32 %29, 12
  %ref.tmp.ascast.i446 = addrspacecast ptr addrspace(5) %ref.tmp.i445 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i445) #6
  %31 = call noundef i32 @llvm.amdgcn.workitem.id.x(), !range !10, !noundef !11
  %32 = zext nneg i32 %31 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i445) #6
  %rem66 = urem i32 %31, 12
  br i1 %cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.cleanup
  %conv67 = zext nneg i32 %rem66 to i64
  %33 = load i64, ptr %arrayidx19, align 8, !tbaa !6
  %mul69 = mul i64 %conv67, %33
  %add70 = add i64 %add46, %mul69
  %conv74 = zext nneg i32 %div64 to i64
  %mul75 = mul i64 %conv74, %11
  %add76 = add i64 %add70, %mul75
  %arrayidx.i = getelementptr inbounds %struct.rocfft_complex, ptr %9, i64 %add76
  %retval.sroa.0.0.copyload.i = load double, ptr %arrayidx.i, align 8, !tbaa !12
  %retval.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i64 8
  %retval.sroa.2.0.copyload.i = load double, ptr %retval.sroa.2.0.arrayidx.sroa_idx.i, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.cleanup
  br i1 %cond, label %if.end387, label %if.then223

if.then223:                                       ; preds = %if.end
  %conv225 = zext nneg i32 %rem66 to i64
  %add226 = add nuw nsw i64 %mul, %conv225
  %69 = load i64, ptr %arrayidx14, align 8, !tbaa !6
  %cmp228 = icmp ult i64 %add226, %69
  br i1 %cmp228, label %if.then229, label %if.end387

if.then229:                                       ; preds = %if.then223
  br label %if.end387

if.end387:                                        ; preds = %if.then223, %if.then229, %if.end
  %ref.tmp.ascast.i586 = addrspacecast ptr addrspace(5) %ref.tmp.i585 to ptr
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp.i585) #6
  %106 = call noundef i32 @llvm.amdgcn.workitem.id.x(), !range !10, !noundef !11
  %107 = zext nneg i32 %106 to i64
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp.i585) #6
  %div389 = udiv i32 %106, 12
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %t.ascast.i = addrspacecast ptr addrspace(5) %t.i to ptr
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %t.i), !noalias !19
  %add.ptr1.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 1
  %add.ptr2.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 2
  %add.ptr3.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 3
  %add.ptr4.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 4
  %add.ptr5.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 5
  %add.ptr6.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 6
  %add.ptr7.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 7
  %add.ptr8.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 8
  %add.ptr9.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 9
  %add.ptr10.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 10
  %add.ptr11.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 11
  %mul.i = mul i32 %div389, 6
  %mul17.i = mul i32 %mul.i, 12
  %add18.i = add i32 %rem56, %mul17.i
  %idxprom.i = zext i32 %add18.i to i64
  %arrayidx19.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx19.i, ptr align 8 %R.ascast, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add28.i = add i32 %mul.i, 1
  %mul29.i = mul i32 %add28.i, 12
  %add30.i = add i32 %rem56, %mul29.i
  %idxprom32.i = zext i32 %add30.i to i64
  %arrayidx33.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom32.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx33.i, ptr align 8 %add.ptr1.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add42.i = add i32 %mul.i, 2
  %mul43.i = mul i32 %add42.i, 12
  %add44.i = add i32 %rem56, %mul43.i
  %idxprom46.i = zext i32 %add44.i to i64
  %arrayidx47.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom46.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx47.i, ptr align 8 %add.ptr2.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add56.i = add i32 %mul.i, 3
  %mul57.i = mul i32 %add56.i, 12
  %add58.i = add i32 %rem56, %mul57.i
  %idxprom60.i = zext i32 %add58.i to i64
  %arrayidx61.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom60.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx61.i, ptr align 8 %add.ptr3.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add70.i = add i32 %mul.i, 4
  %mul71.i = mul i32 %add70.i, 12
  %add72.i = add i32 %rem56, %mul71.i
  %idxprom74.i = zext i32 %add72.i to i64
  %arrayidx75.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom74.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx75.i, ptr align 8 %add.ptr4.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add84.i = add i32 %mul.i, 5
  %mul85.i = mul i32 %add84.i, 12
  %add86.i = add i32 %rem56, %mul85.i
  %idxprom88.i = zext i32 %add86.i to i64
  %arrayidx89.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx89.i, ptr align 8 %add.ptr5.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add91.i = add i32 %div389, 14
  %mul93.i = mul i32 %add91.i, 6
  %mul99.i = mul i32 %mul93.i, 12
  %add100.i = add i32 %rem56, %mul99.i
  %idxprom102.i = zext i32 %add100.i to i64
  %arrayidx103.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom102.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx103.i, ptr align 8 %add.ptr6.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add112.i = add i32 %mul93.i, 1
  %mul113.i = mul i32 %add112.i, 12
  %add114.i = add i32 %rem56, %mul113.i
  %idxprom116.i = zext i32 %add114.i to i64
  %arrayidx117.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom116.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx117.i, ptr align 8 %add.ptr7.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add126.i = add i32 %mul93.i, 2
  %mul127.i = mul i32 %add126.i, 12
  %add128.i = add i32 %rem56, %mul127.i
  %idxprom130.i = zext i32 %add128.i to i64
  %arrayidx131.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom130.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx131.i, ptr align 8 %add.ptr8.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add140.i = add i32 %mul93.i, 3
  %mul141.i = mul i32 %add140.i, 12
  %add142.i = add i32 %rem56, %mul141.i
  %idxprom144.i = zext i32 %add142.i to i64
  %arrayidx145.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom144.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx145.i, ptr align 8 %add.ptr9.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add154.i = add i32 %mul93.i, 4
  %mul155.i = mul i32 %add154.i, 12
  %add156.i = add i32 %rem56, %mul155.i
  %idxprom158.i = zext i32 %add156.i to i64
  %arrayidx159.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom158.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx159.i, ptr align 8 %add.ptr10.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add168.i = add i32 %mul93.i, 5
  %mul169.i = mul i32 %add168.i, 12
  %add170.i = add i32 %rem56, %mul169.i
  %idxprom172.i = zext i32 %add170.i to i64
  %arrayidx173.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom172.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx173.i, ptr align 8 %add.ptr11.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier(), !noalias !17
  fence syncscope("workgroup") acquire
  %mul177.i = mul i32 %div389, 12
  %add178.i = add i32 %rem56, %mul177.i
  %idxprom179.i = zext i32 %add178.i to i64
  %arrayidx180.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom179.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %R.ascast, ptr align 8 %arrayidx180.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add184.i = add i32 %div389, 24
  %mul185.i = mul i32 %add184.i, 12
  %add186.i = add i32 %rem56, %mul185.i
  %idxprom187.i = zext i32 %add186.i to i64
  %arrayidx188.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom187.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr1.i, ptr align 8 %arrayidx188.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add192.i = add i32 %div389, 48
  %mul193.i = mul i32 %add192.i, 12
  %add194.i = add i32 %rem56, %mul193.i
  %idxprom195.i = zext i32 %add194.i to i64
  %arrayidx196.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom195.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr2.i, ptr align 8 %arrayidx196.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add200.i = add i32 %div389, 72
  %mul201.i = mul i32 %add200.i, 12
  %add202.i = add i32 %rem56, %mul201.i
  %idxprom203.i = zext i32 %add202.i to i64
  %arrayidx204.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom203.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr3.i, ptr align 8 %arrayidx204.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add208.i = add i32 %div389, 96
  %mul209.i = mul i32 %add208.i, 12
  %add210.i = add i32 %rem56, %mul209.i
  %idxprom211.i = zext i32 %add210.i to i64
  %arrayidx212.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom211.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr4.i, ptr align 8 %arrayidx212.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add216.i = add i32 %div389, 120
  %mul217.i = mul i32 %add216.i, 12
  %add218.i = add i32 %rem56, %mul217.i
  %idxprom219.i = zext i32 %add218.i to i64
  %arrayidx220.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom219.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr5.i, ptr align 8 %arrayidx220.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add224.i = add i32 %div389, 144
  %mul225.i = mul i32 %add224.i, 12
  %add226.i = add i32 %rem56, %mul225.i
  %idxprom227.i = zext i32 %add226.i to i64
  %arrayidx228.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom227.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr6.i, ptr align 8 %arrayidx228.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %cmp.i = icmp ult i32 %add91.i, 24
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end387
  %mul234.i = mul i32 %add91.i, 12
  %add235.i = add i32 %rem56, %mul234.i
  %idxprom236.i = zext i32 %add235.i to i64
  %arrayidx237.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom236.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr7.i, ptr align 8 %arrayidx237.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add241.i = add nuw nsw i32 %add91.i, 24
  %mul242.i = mul i32 %add241.i, 12
  %add243.i = add i32 %rem56, %mul242.i
  %idxprom244.i = zext i32 %add243.i to i64
  %arrayidx245.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom244.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr8.i, ptr align 8 %arrayidx245.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add249.i = add nuw nsw i32 %add91.i, 48
  %mul250.i = mul i32 %add249.i, 12
  %add251.i = add i32 %rem56, %mul250.i
  %idxprom252.i = zext i32 %add251.i to i64
  %arrayidx253.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom252.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr9.i, ptr align 8 %arrayidx253.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add257.i = add nuw nsw i32 %add91.i, 72
  %mul258.i = mul i32 %add257.i, 12
  %add259.i = add i32 %rem56, %mul258.i
  %idxprom260.i = zext i32 %add259.i to i64
  %arrayidx261.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom260.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr10.i, ptr align 8 %arrayidx261.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add265.i = add nuw nsw i32 %add91.i, 96
  %mul266.i = mul i32 %add265.i, 12
  %add267.i = add i32 %rem56, %mul266.i
  %idxprom268.i = zext i32 %add267.i to i64
  %arrayidx269.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom268.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr11.i, ptr align 8 %arrayidx269.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add273.i = add nuw nsw i32 %add91.i, 120
  %mul274.i = mul i32 %add273.i, 12
  %add275.i = add i32 %rem56, %mul274.i
  %idxprom276.i = zext i32 %add275.i to i64
  %arrayidx277.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom276.i
  %arrayidx278.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx278.i, ptr align 8 %arrayidx277.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add281.i = add nuw nsw i32 %add91.i, 144
  %mul282.i = mul i32 %add281.i, 12
  %add283.i = add i32 %rem56, %mul282.i
  %idxprom284.i = zext i32 %add283.i to i64
  %arrayidx285.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom284.i
  %arrayidx286.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx286.i, ptr align 8 %arrayidx285.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end387
  %rem289.i = urem i32 %div389, 6
  %mul290.i = mul nuw nsw i32 6, %rem289.i
  %idxprom292.i = zext nneg i32 %mul290.i to i64
  %arrayidx293.i = getelementptr inbounds %struct.rocfft_complex, ptr %0, i64 %idxprom292.i
  %W.sroa.0.0.copyload.i = load double, ptr %arrayidx293.i, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %W.sroa.110.0.arrayidx293.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx293.i, i64 8
  %W.sroa.110.0.copyload.i = load double, ptr %W.sroa.110.0.arrayidx293.sroa_idx.i, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %rem447.i = urem i32 %add91.i, 6
  %arrayidx561.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 12
  %arrayidx588.i = getelementptr inbounds %struct.rocfft_complex, ptr %R.ascast, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx588.i, ptr align 8 %t.ascast.i, i64 16, i1 false), !tbaa.struct !23, !noalias !19
  %div623.i = udiv i32 %div389, 6
  %mul624.i = mul i32 %div623.i, 42
  %add628.i = add i32 %mul624.i, %rem289.i
  %mul630.i = mul i32 %add628.i, 12
  %add631.i = add i32 %rem56, %mul630.i
  %idxprom633.i = zext i32 %add631.i to i64
  %arrayidx634.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom633.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx634.i, ptr align 8 %R.ascast, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add643.i = add i32 %add628.i, 6
  %mul644.i = mul i32 %add643.i, 12
  %add645.i = add i32 %rem56, %mul644.i
  %idxprom647.i = zext i32 %add645.i to i64
  %arrayidx648.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom647.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx648.i, ptr align 8 %add.ptr1.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add657.i = add i32 %add628.i, 12
  %mul658.i = mul i32 %add657.i, 12
  %add659.i = add i32 %rem56, %mul658.i
  %idxprom661.i = zext i32 %add659.i to i64
  %arrayidx662.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom661.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx662.i, ptr align 8 %add.ptr2.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add671.i = add i32 %add628.i, 18
  %mul672.i = mul i32 %add671.i, 12
  %add673.i = add i32 %rem56, %mul672.i
  %idxprom675.i = zext i32 %add673.i to i64
  %arrayidx676.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom675.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx676.i, ptr align 8 %add.ptr3.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add685.i = add i32 %add628.i, 24
  %mul686.i = mul i32 %add685.i, 12
  %add687.i = add i32 %rem56, %mul686.i
  %idxprom689.i = zext i32 %add687.i to i64
  %arrayidx690.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom689.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx690.i, ptr align 8 %add.ptr4.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add699.i = add i32 %add628.i, 30
  %mul700.i = mul i32 %add699.i, 12
  %add701.i = add i32 %rem56, %mul700.i
  %idxprom703.i = zext i32 %add701.i to i64
  %arrayidx704.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom703.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx704.i, ptr align 8 %add.ptr5.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add713.i = add i32 %add628.i, 36
  %mul714.i = mul i32 %add713.i, 12
  %add715.i = add i32 %rem56, %mul714.i
  %idxprom717.i = zext i32 %add715.i to i64
  %arrayidx718.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom717.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx718.i, ptr align 8 %add.ptr6.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  br i1 %cmp.i, label %if.then721.i, label %mylabel

if.then721.i:                                      ; preds = %if.end.i
  %div724.i = udiv i32 %add91.i, 6
  %mul725.i = mul nuw nsw i32 %div724.i, 42
  %add729.i = add nuw nsw i32 %mul725.i, %rem447.i
  %mul731.i = mul i32 %add729.i, 12
  %add732.i = add i32 %rem56, %mul731.i
  %idxprom734.i = zext i32 %add732.i to i64
  %arrayidx735.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom734.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx735.i, ptr align 8 %add.ptr7.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add744.i = add nuw nsw i32 %add729.i, 6
  %mul745.i = mul i32 %add744.i, 12
  %add746.i = add i32 %rem56, %mul745.i
  %idxprom748.i = zext i32 %add746.i to i64
  %arrayidx749.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom748.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx749.i, ptr align 8 %add.ptr8.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add758.i = add nuw nsw i32 %add729.i, 12
  %mul759.i = mul i32 %add758.i, 12
  %add760.i = add i32 %rem56, %mul759.i
  %idxprom762.i = zext i32 %add760.i to i64
  %arrayidx763.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom762.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx763.i, ptr align 8 %add.ptr9.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add772.i = add nuw nsw i32 %add729.i, 18
  %mul773.i = mul i32 %add772.i, 12
  %add774.i = add i32 %rem56, %mul773.i
  %idxprom776.i = zext i32 %add774.i to i64
  %arrayidx777.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom776.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx777.i, ptr align 8 %add.ptr10.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add786.i = add nuw nsw i32 %add729.i, 24
  %mul787.i = mul i32 %add786.i, 12
  %add788.i = add i32 %rem56, %mul787.i
  %idxprom790.i = zext i32 %add788.i to i64
  %arrayidx791.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom790.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx791.i, ptr align 8 %add.ptr11.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add800.i = add nuw nsw i32 %add729.i, 30
  %mul801.i = mul i32 %add800.i, 12
  %add802.i = add i32 %rem56, %mul801.i
  %idxprom804.i = zext i32 %add802.i to i64
  %arrayidx805.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom804.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx805.i, ptr align 8 %arrayidx561.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  %add814.i = add nuw nsw i32 %add729.i, 36
  %mul815.i = mul i32 %add814.i, 12
  %add816.i = add i32 %rem56, %mul815.i
  %idxprom818.i = zext i32 %add816.i to i64
  %arrayidx819.i = getelementptr inbounds %struct.rocfft_complex, ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), i64 %idxprom818.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx819.i, ptr align 8 %arrayidx588.i, i64 16, i1 false), !tbaa.struct !23, !noalias !17
  br label %mylabel

mylabel: ; preds = %if.end.i, %if.then721.i
  br i1 %cond, label %if.then391, label %if.end607

if.then391:                                       ; preds = %mylabel
  %conv392 = zext nneg i32 %rem66 to i64
  %720 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul394 = mul i64 %conv392, %720
  %add395 = add i64 %add49, %mul394
  %div398 = udiv i32 %div64, 84
  %mul399 = mul nuw nsw i32 %div398, 168
  %rem402 = urem i32 %div64, 84
  %add403 = add nuw nsw i32 %mul399, %rem402
  %conv405 = zext nneg i32 %add403 to i64
  %mul406 = mul i64 %conv405, %12
  %add407 = add i64 %add395, %mul406
  %agg.tmp.sroa.0.0.copyload = load double, ptr %R.ascast, align 16, !tbaa !12
  %agg.tmp.sroa.2.0.arrayidx408.sroa_idx = getelementptr inbounds i8, ptr %R.ascast, i64 8
  %agg.tmp.sroa.2.0.copyload = load double, ptr %agg.tmp.sroa.2.0.arrayidx408.sroa_idx, align 8, !tbaa !12
  %arrayidx.i589 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add407
  store double %agg.tmp.sroa.0.0.copyload, ptr %arrayidx.i589, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i589, i64 8
  store double %agg.tmp.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i, align 8, !tbaa !12
  %721 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul411 = mul i64 %conv392, %721
  %add412 = add i64 %add49, %mul411
  %add421 = add nuw nsw i32 %add403, 84
  %conv422 = zext nneg i32 %add421 to i64
  %mul423 = mul i64 %conv422, %12
  %add424 = add i64 %add412, %mul423
  %arrayidx426 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  %agg.tmp425.sroa.0.0.copyload = load double, ptr %arrayidx426, align 16, !tbaa !12
  %agg.tmp425.sroa.2.0.arrayidx426.sroa_idx = getelementptr inbounds i8, ptr %arrayidx426, i64 8
  %agg.tmp425.sroa.2.0.copyload = load double, ptr %agg.tmp425.sroa.2.0.arrayidx426.sroa_idx, align 8, !tbaa !12
  %arrayidx.i590 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add424
  store double %agg.tmp425.sroa.0.0.copyload, ptr %arrayidx.i590, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i591 = getelementptr inbounds i8, ptr %arrayidx.i590, i64 8
  store double %agg.tmp425.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i591, align 8, !tbaa !12
  %722 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul429 = mul i64 %conv392, %722
  %add430 = add i64 %add49, %mul429
  %add432 = add nuw nsw i32 %div64, 14
  %div433 = udiv i32 %add432, 84
  %mul434 = mul nuw nsw i32 %div433, 168
  %rem437 = urem i32 %add432, 84
  %add438 = add nuw nsw i32 %mul434, %rem437
  %conv440 = zext nneg i32 %add438 to i64
  %mul441 = mul i64 %conv440, %12
  %add442 = add i64 %add430, %mul441
  %arrayidx444 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  %agg.tmp443.sroa.0.0.copyload = load double, ptr %arrayidx444, align 16, !tbaa !12
  %agg.tmp443.sroa.2.0.arrayidx444.sroa_idx = getelementptr inbounds i8, ptr %arrayidx444, i64 8
  %agg.tmp443.sroa.2.0.copyload = load double, ptr %agg.tmp443.sroa.2.0.arrayidx444.sroa_idx, align 8, !tbaa !12
  %arrayidx.i592 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add442
  store double %agg.tmp443.sroa.0.0.copyload, ptr %arrayidx.i592, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i593 = getelementptr inbounds i8, ptr %arrayidx.i592, i64 8
  store double %agg.tmp443.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i593, align 8, !tbaa !12
  %723 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul447 = mul i64 %conv392, %723
  %add448 = add i64 %add49, %mul447
  %add457 = add nuw nsw i32 %add438, 84
  %conv458 = zext nneg i32 %add457 to i64
  %mul459 = mul i64 %conv458, %12
  %add460 = add i64 %add448, %mul459
  %arrayidx462 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  %agg.tmp461.sroa.0.0.copyload = load double, ptr %arrayidx462, align 16, !tbaa !12
  %agg.tmp461.sroa.2.0.arrayidx462.sroa_idx = getelementptr inbounds i8, ptr %arrayidx462, i64 8
  %agg.tmp461.sroa.2.0.copyload = load double, ptr %agg.tmp461.sroa.2.0.arrayidx462.sroa_idx, align 8, !tbaa !12
  %arrayidx.i594 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add460
  store double %agg.tmp461.sroa.0.0.copyload, ptr %arrayidx.i594, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i595 = getelementptr inbounds i8, ptr %arrayidx.i594, i64 8
  store double %agg.tmp461.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i595, align 8, !tbaa !12
  %724 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul465 = mul i64 %conv392, %724
  %add466 = add i64 %add49, %mul465
  %add468 = add nuw nsw i32 %div64, 28
  %div469 = udiv i32 %add468, 84
  %mul470 = mul nuw nsw i32 %div469, 168
  %rem473 = urem i32 %add468, 84
  %add474 = add nuw nsw i32 %mul470, %rem473
  %conv476 = zext nneg i32 %add474 to i64
  %mul477 = mul i64 %conv476, %12
  %add478 = add i64 %add466, %mul477
  %arrayidx480 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  %agg.tmp479.sroa.0.0.copyload = load double, ptr %arrayidx480, align 16, !tbaa !12
  %agg.tmp479.sroa.2.0.arrayidx480.sroa_idx = getelementptr inbounds i8, ptr %arrayidx480, i64 8
  %agg.tmp479.sroa.2.0.copyload = load double, ptr %agg.tmp479.sroa.2.0.arrayidx480.sroa_idx, align 8, !tbaa !12
  %arrayidx.i596 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add478
  store double %agg.tmp479.sroa.0.0.copyload, ptr %arrayidx.i596, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i597 = getelementptr inbounds i8, ptr %arrayidx.i596, i64 8
  store double %agg.tmp479.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i597, align 8, !tbaa !12
  %725 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul483 = mul i64 %conv392, %725
  %add484 = add i64 %add49, %mul483
  %add493 = add nuw nsw i32 %add474, 84
  %conv494 = zext nneg i32 %add493 to i64
  %mul495 = mul i64 %conv494, %12
  %add496 = add i64 %add484, %mul495
  %arrayidx498 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 5
  %agg.tmp497.sroa.0.0.copyload = load double, ptr %arrayidx498, align 16, !tbaa !12
  %agg.tmp497.sroa.2.0.arrayidx498.sroa_idx = getelementptr inbounds i8, ptr %arrayidx498, i64 8
  %agg.tmp497.sroa.2.0.copyload = load double, ptr %agg.tmp497.sroa.2.0.arrayidx498.sroa_idx, align 8, !tbaa !12
  %arrayidx.i598 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add496
  store double %agg.tmp497.sroa.0.0.copyload, ptr %arrayidx.i598, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i599 = getelementptr inbounds i8, ptr %arrayidx.i598, i64 8
  store double %agg.tmp497.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i599, align 8, !tbaa !12
  %726 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul501 = mul i64 %conv392, %726
  %add502 = add i64 %add49, %mul501
  %add504 = add nuw nsw i32 %div64, 42
  %div505 = udiv i32 %add504, 84
  %mul506 = mul nuw nsw i32 %div505, 168
  %rem509 = urem i32 %add504, 84
  %add510 = add nuw nsw i32 %mul506, %rem509
  %conv512 = zext nneg i32 %add510 to i64
  %mul513 = mul i64 %conv512, %12
  %add514 = add i64 %add502, %mul513
  %arrayidx516 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 6
  %agg.tmp515.sroa.0.0.copyload = load double, ptr %arrayidx516, align 16, !tbaa !12
  %agg.tmp515.sroa.2.0.arrayidx516.sroa_idx = getelementptr inbounds i8, ptr %arrayidx516, i64 8
  %agg.tmp515.sroa.2.0.copyload = load double, ptr %agg.tmp515.sroa.2.0.arrayidx516.sroa_idx, align 8, !tbaa !12
  %arrayidx.i600 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add514
  store double %agg.tmp515.sroa.0.0.copyload, ptr %arrayidx.i600, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i601 = getelementptr inbounds i8, ptr %arrayidx.i600, i64 8
  store double %agg.tmp515.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i601, align 8, !tbaa !12
  %727 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul519 = mul i64 %conv392, %727
  %add520 = add i64 %add49, %mul519
  %add529 = add nuw nsw i32 %add510, 84
  %conv530 = zext nneg i32 %add529 to i64
  %mul531 = mul i64 %conv530, %12
  %add532 = add i64 %add520, %mul531
  %arrayidx534 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 7
  %agg.tmp533.sroa.0.0.copyload = load double, ptr %arrayidx534, align 16, !tbaa !12
  %agg.tmp533.sroa.2.0.arrayidx534.sroa_idx = getelementptr inbounds i8, ptr %arrayidx534, i64 8
  %agg.tmp533.sroa.2.0.copyload = load double, ptr %agg.tmp533.sroa.2.0.arrayidx534.sroa_idx, align 8, !tbaa !12
  %arrayidx.i602 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add532
  store double %agg.tmp533.sroa.0.0.copyload, ptr %arrayidx.i602, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i603 = getelementptr inbounds i8, ptr %arrayidx.i602, i64 8
  store double %agg.tmp533.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i603, align 8, !tbaa !12
  %728 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul537 = mul i64 %conv392, %728
  %add538 = add i64 %add49, %mul537
  %add540 = add nuw nsw i32 %div64, 56
  %div541 = udiv i32 %add540, 84
  %mul542 = mul nuw nsw i32 %div541, 168
  %rem545 = urem i32 %add540, 84
  %add546 = add nuw nsw i32 %mul542, %rem545
  %conv548 = zext nneg i32 %add546 to i64
  %mul549 = mul i64 %conv548, %12
  %add550 = add i64 %add538, %mul549
  %arrayidx552 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 8
  %agg.tmp551.sroa.0.0.copyload = load double, ptr %arrayidx552, align 16, !tbaa !12
  %agg.tmp551.sroa.2.0.arrayidx552.sroa_idx = getelementptr inbounds i8, ptr %arrayidx552, i64 8
  %agg.tmp551.sroa.2.0.copyload = load double, ptr %agg.tmp551.sroa.2.0.arrayidx552.sroa_idx, align 8, !tbaa !12
  %arrayidx.i604 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add550
  store double %agg.tmp551.sroa.0.0.copyload, ptr %arrayidx.i604, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i605 = getelementptr inbounds i8, ptr %arrayidx.i604, i64 8
  store double %agg.tmp551.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i605, align 8, !tbaa !12
  %729 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul555 = mul i64 %conv392, %729
  %add556 = add i64 %add49, %mul555
  %add565 = add nuw nsw i32 %add546, 84
  %conv566 = zext nneg i32 %add565 to i64
  %mul567 = mul i64 %conv566, %12
  %add568 = add i64 %add556, %mul567
  %arrayidx570 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 9
  %agg.tmp569.sroa.0.0.copyload = load double, ptr %arrayidx570, align 16, !tbaa !12
  %agg.tmp569.sroa.2.0.arrayidx570.sroa_idx = getelementptr inbounds i8, ptr %arrayidx570, i64 8
  %agg.tmp569.sroa.2.0.copyload = load double, ptr %agg.tmp569.sroa.2.0.arrayidx570.sroa_idx, align 8, !tbaa !12
  %arrayidx.i606 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add568
  store double %agg.tmp569.sroa.0.0.copyload, ptr %arrayidx.i606, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i607 = getelementptr inbounds i8, ptr %arrayidx.i606, i64 8
  store double %agg.tmp569.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i607, align 8, !tbaa !12
  %730 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul573 = mul i64 %conv392, %730
  %add574 = add i64 %add49, %mul573
  %add576 = add nuw nsw i32 %div64, 70
  %div577 = udiv i32 %add576, 84
  %mul578 = mul nuw nsw i32 %div577, 168
  %rem581 = urem i32 %add576, 84
  %add582 = add nuw nsw i32 %mul578, %rem581
  %conv584 = zext nneg i32 %add582 to i64
  %mul585 = mul i64 %conv584, %12
  %add586 = add i64 %add574, %mul585
  %arrayidx588 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 10
  %agg.tmp587.sroa.0.0.copyload = load double, ptr %arrayidx588, align 16, !tbaa !12
  %agg.tmp587.sroa.2.0.arrayidx588.sroa_idx = getelementptr inbounds i8, ptr %arrayidx588, i64 8
  %agg.tmp587.sroa.2.0.copyload = load double, ptr %agg.tmp587.sroa.2.0.arrayidx588.sroa_idx, align 8, !tbaa !12
  %arrayidx.i608 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add586
  store double %agg.tmp587.sroa.0.0.copyload, ptr %arrayidx.i608, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i609 = getelementptr inbounds i8, ptr %arrayidx.i608, i64 8
  store double %agg.tmp587.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i609, align 8, !tbaa !12
  %731 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul591 = mul i64 %conv392, %731
  %add592 = add i64 %add49, %mul591
  %add601 = add nuw nsw i32 %add582, 84
  %conv602 = zext nneg i32 %add601 to i64
  %mul603 = mul i64 %conv602, %12
  %add604 = add i64 %add592, %mul603
  %arrayidx606 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 11
  %agg.tmp605.sroa.0.0.copyload = load double, ptr %arrayidx606, align 16, !tbaa !12
  %agg.tmp605.sroa.2.0.arrayidx606.sroa_idx = getelementptr inbounds i8, ptr %arrayidx606, i64 8
  %agg.tmp605.sroa.2.0.copyload = load double, ptr %agg.tmp605.sroa.2.0.arrayidx606.sroa_idx, align 8, !tbaa !12
  %arrayidx.i610 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add604
  store double %agg.tmp605.sroa.0.0.copyload, ptr %arrayidx.i610, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i611 = getelementptr inbounds i8, ptr %arrayidx.i610, i64 8
  store double %agg.tmp605.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i611, align 8, !tbaa !12
  br label %if.end607

if.end607:                                        ; preds = %if.then391, %mylabel
  br i1 %cond, label %if.end833, label %if.then609

if.then609:                                       ; preds = %if.end607
  %conv611 = zext nneg i32 %rem66 to i64
  %add612 = add nuw nsw i64 %mul, %conv611
  %732 = load i64, ptr %arrayidx14, align 8, !tbaa !6
  %cmp614 = icmp ult i64 %add612, %732
  br i1 %cmp614, label %if.then615, label %if.end833

if.then615:                                       ; preds = %if.then609
  %733 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul618 = mul i64 %conv611, %733
  %add619 = add i64 %add49, %mul618
  %div622 = udiv i32 %div64, 84
  %mul623 = mul nuw nsw i32 %div622, 168
  %rem626 = urem i32 %div64, 84
  %add627 = add nuw nsw i32 %mul623, %rem626
  %conv629 = zext nneg i32 %add627 to i64
  %mul630 = mul i64 %conv629, %12
  %add631 = add i64 %add619, %mul630
  %agg.tmp632.sroa.0.0.copyload = load double, ptr %R.ascast, align 16, !tbaa !12
  %agg.tmp632.sroa.2.0.arrayidx633.sroa_idx = getelementptr inbounds i8, ptr %R.ascast, i64 8
  %agg.tmp632.sroa.2.0.copyload = load double, ptr %agg.tmp632.sroa.2.0.arrayidx633.sroa_idx, align 8, !tbaa !12
  %arrayidx.i612 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add631
  store double %agg.tmp632.sroa.0.0.copyload, ptr %arrayidx.i612, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i613 = getelementptr inbounds i8, ptr %arrayidx.i612, i64 8
  store double %agg.tmp632.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i613, align 8, !tbaa !12
  %734 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul636 = mul i64 %conv611, %734
  %add637 = add i64 %add49, %mul636
  %add646 = add nuw nsw i32 %add627, 84
  %conv647 = zext nneg i32 %add646 to i64
  %mul648 = mul i64 %conv647, %12
  %add649 = add i64 %add637, %mul648
  %arrayidx651 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  %agg.tmp650.sroa.0.0.copyload = load double, ptr %arrayidx651, align 16, !tbaa !12
  %agg.tmp650.sroa.2.0.arrayidx651.sroa_idx = getelementptr inbounds i8, ptr %arrayidx651, i64 8
  %agg.tmp650.sroa.2.0.copyload = load double, ptr %agg.tmp650.sroa.2.0.arrayidx651.sroa_idx, align 8, !tbaa !12
  %arrayidx.i614 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add649
  store double %agg.tmp650.sroa.0.0.copyload, ptr %arrayidx.i614, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i615 = getelementptr inbounds i8, ptr %arrayidx.i614, i64 8
  store double %agg.tmp650.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i615, align 8, !tbaa !12
  %735 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul654 = mul i64 %conv611, %735
  %add655 = add i64 %add49, %mul654
  %add657 = add nuw nsw i32 %div64, 14
  %div658 = udiv i32 %add657, 84
  %mul659 = mul nuw nsw i32 %div658, 168
  %rem662 = urem i32 %add657, 84
  %add663 = add nuw nsw i32 %mul659, %rem662
  %conv665 = zext nneg i32 %add663 to i64
  %mul666 = mul i64 %conv665, %12
  %add667 = add i64 %add655, %mul666
  %arrayidx669 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  %agg.tmp668.sroa.0.0.copyload = load double, ptr %arrayidx669, align 16, !tbaa !12
  %agg.tmp668.sroa.2.0.arrayidx669.sroa_idx = getelementptr inbounds i8, ptr %arrayidx669, i64 8
  %agg.tmp668.sroa.2.0.copyload = load double, ptr %agg.tmp668.sroa.2.0.arrayidx669.sroa_idx, align 8, !tbaa !12
  %arrayidx.i616 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add667
  store double %agg.tmp668.sroa.0.0.copyload, ptr %arrayidx.i616, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i617 = getelementptr inbounds i8, ptr %arrayidx.i616, i64 8
  store double %agg.tmp668.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i617, align 8, !tbaa !12
  %736 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul672 = mul i64 %conv611, %736
  %add673 = add i64 %add49, %mul672
  %add682 = add nuw nsw i32 %add663, 84
  %conv683 = zext nneg i32 %add682 to i64
  %mul684 = mul i64 %conv683, %12
  %add685 = add i64 %add673, %mul684
  %arrayidx687 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  %agg.tmp686.sroa.0.0.copyload = load double, ptr %arrayidx687, align 16, !tbaa !12
  %agg.tmp686.sroa.2.0.arrayidx687.sroa_idx = getelementptr inbounds i8, ptr %arrayidx687, i64 8
  %agg.tmp686.sroa.2.0.copyload = load double, ptr %agg.tmp686.sroa.2.0.arrayidx687.sroa_idx, align 8, !tbaa !12
  %arrayidx.i618 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add685
  store double %agg.tmp686.sroa.0.0.copyload, ptr %arrayidx.i618, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i619 = getelementptr inbounds i8, ptr %arrayidx.i618, i64 8
  store double %agg.tmp686.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i619, align 8, !tbaa !12
  %737 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul690 = mul i64 %conv611, %737
  %add691 = add i64 %add49, %mul690
  %add693 = add nuw nsw i32 %div64, 28
  %div694 = udiv i32 %add693, 84
  %mul695 = mul nuw nsw i32 %div694, 168
  %rem698 = urem i32 %add693, 84
  %add699 = add nuw nsw i32 %mul695, %rem698
  %conv701 = zext nneg i32 %add699 to i64
  %mul702 = mul i64 %conv701, %12
  %add703 = add i64 %add691, %mul702
  %arrayidx705 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  %agg.tmp704.sroa.0.0.copyload = load double, ptr %arrayidx705, align 16, !tbaa !12
  %agg.tmp704.sroa.2.0.arrayidx705.sroa_idx = getelementptr inbounds i8, ptr %arrayidx705, i64 8
  %agg.tmp704.sroa.2.0.copyload = load double, ptr %agg.tmp704.sroa.2.0.arrayidx705.sroa_idx, align 8, !tbaa !12
  %arrayidx.i620 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add703
  store double %agg.tmp704.sroa.0.0.copyload, ptr %arrayidx.i620, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i621 = getelementptr inbounds i8, ptr %arrayidx.i620, i64 8
  store double %agg.tmp704.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i621, align 8, !tbaa !12
  %738 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul708 = mul i64 %conv611, %738
  %add709 = add i64 %add49, %mul708
  %add718 = add nuw nsw i32 %add699, 84
  %conv719 = zext nneg i32 %add718 to i64
  %mul720 = mul i64 %conv719, %12
  %add721 = add i64 %add709, %mul720
  %arrayidx723 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 5
  %agg.tmp722.sroa.0.0.copyload = load double, ptr %arrayidx723, align 16, !tbaa !12
  %agg.tmp722.sroa.2.0.arrayidx723.sroa_idx = getelementptr inbounds i8, ptr %arrayidx723, i64 8
  %agg.tmp722.sroa.2.0.copyload = load double, ptr %agg.tmp722.sroa.2.0.arrayidx723.sroa_idx, align 8, !tbaa !12
  %arrayidx.i622 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add721
  store double %agg.tmp722.sroa.0.0.copyload, ptr %arrayidx.i622, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i623 = getelementptr inbounds i8, ptr %arrayidx.i622, i64 8
  store double %agg.tmp722.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i623, align 8, !tbaa !12
  %739 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul726 = mul i64 %conv611, %739
  %add727 = add i64 %add49, %mul726
  %add729 = add nuw nsw i32 %div64, 42
  %div730 = udiv i32 %add729, 84
  %mul731 = mul nuw nsw i32 %div730, 168
  %rem734 = urem i32 %add729, 84
  %add735 = add nuw nsw i32 %mul731, %rem734
  %conv737 = zext nneg i32 %add735 to i64
  %mul738 = mul i64 %conv737, %12
  %add739 = add i64 %add727, %mul738
  %arrayidx741 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 6
  %agg.tmp740.sroa.0.0.copyload = load double, ptr %arrayidx741, align 16, !tbaa !12
  %agg.tmp740.sroa.2.0.arrayidx741.sroa_idx = getelementptr inbounds i8, ptr %arrayidx741, i64 8
  %agg.tmp740.sroa.2.0.copyload = load double, ptr %agg.tmp740.sroa.2.0.arrayidx741.sroa_idx, align 8, !tbaa !12
  %arrayidx.i624 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add739
  store double %agg.tmp740.sroa.0.0.copyload, ptr %arrayidx.i624, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i625 = getelementptr inbounds i8, ptr %arrayidx.i624, i64 8
  store double %agg.tmp740.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i625, align 8, !tbaa !12
  %740 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul744 = mul i64 %conv611, %740
  %add745 = add i64 %add49, %mul744
  %add754 = add nuw nsw i32 %add735, 84
  %conv755 = zext nneg i32 %add754 to i64
  %mul756 = mul i64 %conv755, %12
  %add757 = add i64 %add745, %mul756
  %arrayidx759 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 7
  %agg.tmp758.sroa.0.0.copyload = load double, ptr %arrayidx759, align 16, !tbaa !12
  %agg.tmp758.sroa.2.0.arrayidx759.sroa_idx = getelementptr inbounds i8, ptr %arrayidx759, i64 8
  %agg.tmp758.sroa.2.0.copyload = load double, ptr %agg.tmp758.sroa.2.0.arrayidx759.sroa_idx, align 8, !tbaa !12
  %arrayidx.i626 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add757
  store double %agg.tmp758.sroa.0.0.copyload, ptr %arrayidx.i626, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i627 = getelementptr inbounds i8, ptr %arrayidx.i626, i64 8
  store double %agg.tmp758.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i627, align 8, !tbaa !12
  %741 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul762 = mul i64 %conv611, %741
  %add763 = add i64 %add49, %mul762
  %add765 = add nuw nsw i32 %div64, 56
  %div766 = udiv i32 %add765, 84
  %mul767 = mul nuw nsw i32 %div766, 168
  %rem770 = urem i32 %add765, 84
  %add771 = add nuw nsw i32 %mul767, %rem770
  %conv773 = zext nneg i32 %add771 to i64
  %mul774 = mul i64 %conv773, %12
  %add775 = add i64 %add763, %mul774
  %arrayidx777 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 8
  %agg.tmp776.sroa.0.0.copyload = load double, ptr %arrayidx777, align 16, !tbaa !12
  %agg.tmp776.sroa.2.0.arrayidx777.sroa_idx = getelementptr inbounds i8, ptr %arrayidx777, i64 8
  %agg.tmp776.sroa.2.0.copyload = load double, ptr %agg.tmp776.sroa.2.0.arrayidx777.sroa_idx, align 8, !tbaa !12
  %arrayidx.i628 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add775
  store double %agg.tmp776.sroa.0.0.copyload, ptr %arrayidx.i628, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i629 = getelementptr inbounds i8, ptr %arrayidx.i628, i64 8
  store double %agg.tmp776.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i629, align 8, !tbaa !12
  %742 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul780 = mul i64 %conv611, %742
  %add781 = add i64 %add49, %mul780
  %add790 = add nuw nsw i32 %add771, 84
  %conv791 = zext nneg i32 %add790 to i64
  %mul792 = mul i64 %conv791, %12
  %add793 = add i64 %add781, %mul792
  %arrayidx795 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 9
  %agg.tmp794.sroa.0.0.copyload = load double, ptr %arrayidx795, align 16, !tbaa !12
  %agg.tmp794.sroa.2.0.arrayidx795.sroa_idx = getelementptr inbounds i8, ptr %arrayidx795, i64 8
  %agg.tmp794.sroa.2.0.copyload = load double, ptr %agg.tmp794.sroa.2.0.arrayidx795.sroa_idx, align 8, !tbaa !12
  %arrayidx.i630 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add793
  store double %agg.tmp794.sroa.0.0.copyload, ptr %arrayidx.i630, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i631 = getelementptr inbounds i8, ptr %arrayidx.i630, i64 8
  store double %agg.tmp794.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i631, align 8, !tbaa !12
  %743 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul798 = mul i64 %conv611, %743
  %add799 = add i64 %add49, %mul798
  %add801 = add nuw nsw i32 %div64, 70
  %div802 = udiv i32 %add801, 84
  %mul803 = mul nuw nsw i32 %div802, 168
  %rem806 = urem i32 %add801, 84
  %add807 = add nuw nsw i32 %mul803, %rem806
  %conv809 = zext nneg i32 %add807 to i64
  %mul810 = mul i64 %conv809, %12
  %add811 = add i64 %add799, %mul810
  %arrayidx813 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 10
  %agg.tmp812.sroa.0.0.copyload = load double, ptr %arrayidx813, align 16, !tbaa !12
  %agg.tmp812.sroa.2.0.arrayidx813.sroa_idx = getelementptr inbounds i8, ptr %arrayidx813, i64 8
  %agg.tmp812.sroa.2.0.copyload = load double, ptr %agg.tmp812.sroa.2.0.arrayidx813.sroa_idx, align 8, !tbaa !12
  %arrayidx.i632 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add811
  store double %agg.tmp812.sroa.0.0.copyload, ptr %arrayidx.i632, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i633 = getelementptr inbounds i8, ptr %arrayidx.i632, i64 8
  store double %agg.tmp812.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i633, align 8, !tbaa !12
  %744 = load i64, ptr %arrayidx22, align 8, !tbaa !6
  %mul816 = mul i64 %conv611, %744
  %add817 = add i64 %add49, %mul816
  %add826 = add nuw nsw i32 %add807, 84
  %conv827 = zext nneg i32 %add826 to i64
  %mul828 = mul i64 %conv827, %12
  %add829 = add i64 %add817, %mul828
  %arrayidx831 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 11
  %agg.tmp830.sroa.0.0.copyload = load double, ptr %arrayidx831, align 16, !tbaa !12
  %agg.tmp830.sroa.2.0.arrayidx831.sroa_idx = getelementptr inbounds i8, ptr %arrayidx831, i64 8
  %agg.tmp830.sroa.2.0.copyload = load double, ptr %agg.tmp830.sroa.2.0.arrayidx831.sroa_idx, align 8, !tbaa !12
  %arrayidx.i634 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 %add829
  store double %agg.tmp830.sroa.0.0.copyload, ptr %arrayidx.i634, align 8, !tbaa !12
  %element.sroa.2.0.arrayidx.sroa_idx.i635 = getelementptr inbounds i8, ptr %arrayidx.i634, i64 8
  store double %agg.tmp830.sroa.2.0.copyload, ptr %element.sroa.2.0.arrayidx.sroa_idx.i635, align 8, !tbaa !12
  br label %if.end833

if.end833:                                        ; preds = %if.then609, %if.then615, %if.end607
  call void @llvm.lifetime.end.p5(i64 224, ptr addrspace(5) %R) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: convergent nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.x() #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workgroup.id.x() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,168" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

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
!10 = !{i32 0, i32 1024}
!11 = !{}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m: %lds_complex"}
!16 = distinct !{!16, !"_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m: %twiddles"}
!19 = !{!15, !18}
!20 = !{!21, !13, i64 0}
!21 = !{!"_ZTS14rocfft_complexIdE", !13, i64 0, !13, i64 8}
!22 = !{!21, !13, i64 8}
!23 = !{i64 0, i64 8, !12, i64 8, i64 8, !12}
