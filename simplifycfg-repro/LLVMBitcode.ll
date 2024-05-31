; ModuleID = 'LLVMBitcode.bc'
source_filename = "llvm-link"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%0 = type { i64, i64, i32, i32 }
%1 = type { [64 x [8 x i64]] }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" = type { i8 }
%struct.rocfft_complex = type { double, double }

$_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv = comdat any

$_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv = comdat any

$_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m = comdat any

$_Z9InvRad6B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_ = comdat any

$_Z13__syncthreadsv = comdat any

$_ZN14rocfft_complexIdEC2Edd = comdat any

$_Z9InvRad7B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_S3_ = comdat any

$_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_ = comdat any

$_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m = comdat any

$_ZNK14rocfft_complexIdEmiERKS0_ = comdat any

$_ZmlIddE14rocfft_complexIT0_ERKT_RKS2_ = comdat any

$_ZN14rocfft_complexIdEmIERKS0_ = comdat any

$_ZNK14rocfft_complexIdEplERKS0_ = comdat any

$_ZN14rocfft_complexIdEmLIdEERDaRKT_ = comdat any

$_ZNK14rocfft_complexIdEngEv = comdat any

$_ZN14rocfft_complexIdEpLERKS0_ = comdat any

$_ZNK15__HIP_ThreadIdxclEj = comdat any

$_ZNK14__HIP_BlockIdxclEj = comdat any

$_Z16store_cb_defaultI14rocfft_complexIdEEvPT_mS2_PvS4_ = comdat any

$_Z15load_cb_defaultI14rocfft_complexIdEET_PS2_mPvS4_ = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = comdat any

@llvm.compiler.used = appending addrspace(1) global [3 x ptr] [ptr addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr), ptr addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr), ptr addrspacecast (ptr addrspace(1) @__hip_cuid_49c165a49d8ef15e to ptr)], section "llvm.metadata"
@__const.__assert_fail.fmt = private unnamed_addr addrspace(4) constant [47 x i8] c"%s:%u: %s: Device-side assertion `%s' failed.\0A\00", align 16
@lds_uchar = external hidden addrspace(3) global [0 x i8], align 16
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" undef, comdat, align 1
@__hip_cuid_49c165a49d8ef15e = addrspace(1) global i8 0
@__oclc_ABI_version = weak_odr hidden local_unnamed_addr addrspace(4) constant i32 500

; Function Attrs: convergent mustprogress noreturn nounwind
define weak void @__cxa_pure_virtual() #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: convergent mustprogress noreturn nounwind
define weak void @__cxa_deleted_virtual() #0 {
entry:
  call void @llvm.trap()
  unreachable
}

; Function Attrs: convergent mustprogress noinline nounwind
define weak hidden void @__assert_fail(ptr noundef %assertion, ptr noundef %file, i32 noundef %line, ptr noundef %function) #2 {
entry:
  %assertion.addr = alloca ptr, align 8, addrspace(5)
  %file.addr = alloca ptr, align 8, addrspace(5)
  %line.addr = alloca i32, align 4, addrspace(5)
  %function.addr = alloca ptr, align 8, addrspace(5)
  %fmt = alloca [47 x i8], align 16, addrspace(5)
  %msg = alloca i64, align 8, addrspace(5)
  %len = alloca i32, align 4, addrspace(5)
  %tmp = alloca ptr, align 8, addrspace(5)
  %tmp6 = alloca ptr, align 8, addrspace(5)
  %tmp23 = alloca ptr, align 8, addrspace(5)
  %tmp38 = alloca ptr, align 8, addrspace(5)
  %assertion.addr.ascast = addrspacecast ptr addrspace(5) %assertion.addr to ptr
  %file.addr.ascast = addrspacecast ptr addrspace(5) %file.addr to ptr
  %line.addr.ascast = addrspacecast ptr addrspace(5) %line.addr to ptr
  %function.addr.ascast = addrspacecast ptr addrspace(5) %function.addr to ptr
  %fmt.ascast = addrspacecast ptr addrspace(5) %fmt to ptr
  %msg.ascast = addrspacecast ptr addrspace(5) %msg to ptr
  %len.ascast = addrspacecast ptr addrspace(5) %len to ptr
  %tmp.ascast = addrspacecast ptr addrspace(5) %tmp to ptr
  %tmp6.ascast = addrspacecast ptr addrspace(5) %tmp6 to ptr
  %tmp23.ascast = addrspacecast ptr addrspace(5) %tmp23 to ptr
  %tmp38.ascast = addrspacecast ptr addrspace(5) %tmp38 to ptr
  store ptr %assertion, ptr %assertion.addr.ascast, align 8, !tbaa !6
  store ptr %file, ptr %file.addr.ascast, align 8, !tbaa !6
  store i32 %line, ptr %line.addr.ascast, align 4, !tbaa !10
  store ptr %function, ptr %function.addr.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 47, ptr addrspace(5) %fmt) #10
  call void @llvm.memcpy.p0.p4.i64(ptr align 16 %fmt.ascast, ptr addrspace(4) align 16 @__const.__assert_fail.fmt, i64 47, i1 false)
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %msg) #10
  %call = call i64 @__ockl_fprintf_stderr_begin() #18
  store i64 %call, ptr %msg.ascast, align 8, !tbaa !12
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %len) #10
  store i32 0, ptr %len.ascast, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %tmp) #10
  %arraydecay = getelementptr inbounds [47 x i8], ptr %fmt.ascast, i64 0, i64 0
  store ptr %arraydecay, ptr %tmp.ascast, align 8, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %0 = load ptr, ptr %tmp.ascast, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %tmp.ascast, align 8, !tbaa !6
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %tmp.ascast, align 8, !tbaa !6
  %arraydecay1 = getelementptr inbounds [47 x i8], ptr %fmt.ascast, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %len.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %tmp) #10
  br label %do.cond

do.cond:                                          ; preds = %while.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %msg.ascast, align 8, !tbaa !12
  %arraydecay2 = getelementptr inbounds [47 x i8], ptr %fmt.ascast, i64 0, i64 0
  %4 = load i32, ptr %len.ascast, align 4, !tbaa !10
  %conv3 = sext i32 %4 to i64
  %call4 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %3, ptr noundef %arraydecay2, i64 noundef %conv3, i32 noundef 0) #18
  store i64 %call4, ptr %msg.ascast, align 8, !tbaa !12
  br label %do.body5

do.body5:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %tmp6) #10
  %5 = load ptr, ptr %file.addr.ascast, align 8, !tbaa !6
  store ptr %5, ptr %tmp6.ascast, align 8, !tbaa !6
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %do.body5
  %6 = load ptr, ptr %tmp6.ascast, align 8, !tbaa !6
  %incdec.ptr8 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr8, ptr %tmp6.ascast, align 8, !tbaa !6
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %tobool9 = icmp ne i8 %7, 0
  br i1 %tobool9, label %while.body10, label %while.end11

while.body10:                                     ; preds = %while.cond7
  br label %while.cond7, !llvm.loop !17

while.end11:                                      ; preds = %while.cond7
  %8 = load ptr, ptr %tmp6.ascast, align 8, !tbaa !6
  %9 = load ptr, ptr %file.addr.ascast, align 8, !tbaa !6
  %sub.ptr.lhs.cast12 = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast13 = ptrtoint ptr %9 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  store i32 %conv15, ptr %len.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %tmp6) #10
  br label %do.cond16

do.cond16:                                        ; preds = %while.end11
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  %10 = load i64, ptr %msg.ascast, align 8, !tbaa !12
  %11 = load ptr, ptr %file.addr.ascast, align 8, !tbaa !6
  %12 = load i32, ptr %len.ascast, align 4, !tbaa !10
  %conv18 = sext i32 %12 to i64
  %call19 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %10, ptr noundef %11, i64 noundef %conv18, i32 noundef 0) #18
  store i64 %call19, ptr %msg.ascast, align 8, !tbaa !12
  %13 = load i64, ptr %msg.ascast, align 8, !tbaa !12
  %14 = load i32, ptr %line.addr.ascast, align 4, !tbaa !10
  %conv20 = zext i32 %14 to i64
  %call21 = call i64 @__ockl_fprintf_append_args(i64 noundef %13, i32 noundef 1, i64 noundef %conv20, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0) #18
  store i64 %call21, ptr %msg.ascast, align 8, !tbaa !12
  br label %do.body22

do.body22:                                        ; preds = %do.end17
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %tmp23) #10
  %15 = load ptr, ptr %function.addr.ascast, align 8, !tbaa !6
  store ptr %15, ptr %tmp23.ascast, align 8, !tbaa !6
  br label %while.cond24

while.cond24:                                     ; preds = %while.body27, %do.body22
  %16 = load ptr, ptr %tmp23.ascast, align 8, !tbaa !6
  %incdec.ptr25 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr25, ptr %tmp23.ascast, align 8, !tbaa !6
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %tobool26 = icmp ne i8 %17, 0
  br i1 %tobool26, label %while.body27, label %while.end28

while.body27:                                     ; preds = %while.cond24
  br label %while.cond24, !llvm.loop !18

while.end28:                                      ; preds = %while.cond24
  %18 = load ptr, ptr %tmp23.ascast, align 8, !tbaa !6
  %19 = load ptr, ptr %function.addr.ascast, align 8, !tbaa !6
  %sub.ptr.lhs.cast29 = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast30 = ptrtoint ptr %19 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %conv32 = trunc i64 %sub.ptr.sub31 to i32
  store i32 %conv32, ptr %len.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %tmp23) #10
  br label %do.cond33

do.cond33:                                        ; preds = %while.end28
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %20 = load i64, ptr %msg.ascast, align 8, !tbaa !12
  %21 = load ptr, ptr %function.addr.ascast, align 8, !tbaa !6
  %22 = load i32, ptr %len.ascast, align 4, !tbaa !10
  %conv35 = sext i32 %22 to i64
  %call36 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %20, ptr noundef %21, i64 noundef %conv35, i32 noundef 0) #18
  store i64 %call36, ptr %msg.ascast, align 8, !tbaa !12
  br label %do.body37

do.body37:                                        ; preds = %do.end34
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %tmp38) #10
  %23 = load ptr, ptr %assertion.addr.ascast, align 8, !tbaa !6
  store ptr %23, ptr %tmp38.ascast, align 8, !tbaa !6
  br label %while.cond39

while.cond39:                                     ; preds = %while.body42, %do.body37
  %24 = load ptr, ptr %tmp38.ascast, align 8, !tbaa !6
  %incdec.ptr40 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr40, ptr %tmp38.ascast, align 8, !tbaa !6
  %25 = load i8, ptr %24, align 1, !tbaa !14
  %tobool41 = icmp ne i8 %25, 0
  br i1 %tobool41, label %while.body42, label %while.end43

while.body42:                                     ; preds = %while.cond39
  br label %while.cond39, !llvm.loop !19

while.end43:                                      ; preds = %while.cond39
  %26 = load ptr, ptr %tmp38.ascast, align 8, !tbaa !6
  %27 = load ptr, ptr %assertion.addr.ascast, align 8, !tbaa !6
  %sub.ptr.lhs.cast44 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast45 = ptrtoint ptr %27 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %conv47 = trunc i64 %sub.ptr.sub46 to i32
  store i32 %conv47, ptr %len.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %tmp38) #10
  br label %do.cond48

do.cond48:                                        ; preds = %while.end43
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %28 = load i64, ptr %msg.ascast, align 8, !tbaa !12
  %29 = load ptr, ptr %assertion.addr.ascast, align 8, !tbaa !6
  %30 = load i32, ptr %len.ascast, align 4, !tbaa !10
  %conv50 = sext i32 %30 to i64
  %call51 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %28, ptr noundef %29, i64 noundef %conv50, i32 noundef 1) #18
  call void @llvm.trap()
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %len) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %msg) #10
  call void @llvm.lifetime.end.p5(i64 47, ptr addrspace(5) %fmt) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p4.i64(ptr noalias nocapture writeonly, ptr addrspace(4) noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_fprintf_stderr_begin() #5 {
  %1 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef 33, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %2 = extractelement <2 x i64> %1, i64 0
  ret i64 %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) nocapture) #3

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_fprintf_append_string_n(i64 noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) #5 {
  %5 = icmp eq i32 %3, 0
  %6 = or i64 %0, 2
  %7 = select i1 %5, i64 %0, i64 %6
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = and i64 %7, -225
  %11 = or disjoint i64 %10, 32
  %12 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %11, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %454

13:                                               ; preds = %4
  %14 = and i64 %7, 2
  %15 = and i64 %7, -3
  %16 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %15, i64 0
  br label %17

17:                                               ; preds = %443, %13
  %18 = phi i64 [ %2, %13 ], [ %451, %443 ]
  %19 = phi ptr [ %1, %13 ], [ %452, %443 ]
  %20 = phi <2 x i64> [ %16, %13 ], [ %450, %443 ]
  %21 = icmp ugt i64 %18, 56
  %22 = extractelement <2 x i64> %20, i64 0
  %23 = or i64 %22, %14
  %24 = insertelement <2 x i64> poison, i64 %23, i64 0
  %25 = select i1 %21, <2 x i64> %20, <2 x i64> %24
  %26 = tail call i64 @llvm.umin.i64(i64 %18, i64 56)
  %27 = trunc nuw nsw i64 %26 to i32
  %28 = extractelement <2 x i64> %25, i64 0
  %29 = icmp ugt i64 %18, 7
  br i1 %29, label %32, label %30

30:                                               ; preds = %17
  %31 = icmp eq i64 %18, 0
  br i1 %31, label %85, label %72

32:                                               ; preds = %17
  %33 = load i8, ptr %19, align 1, !tbaa !20
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i8, ptr %19, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !20
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 8
  %39 = or disjoint i64 %38, %34
  %40 = getelementptr inbounds i8, ptr %19, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !20
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 16
  %44 = or disjoint i64 %39, %43
  %45 = getelementptr inbounds i8, ptr %19, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !20
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 24
  %49 = or disjoint i64 %44, %48
  %50 = getelementptr inbounds i8, ptr %19, i64 4
  %51 = load i8, ptr %50, align 1, !tbaa !20
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 32
  %54 = or disjoint i64 %49, %53
  %55 = getelementptr inbounds i8, ptr %19, i64 5
  %56 = load i8, ptr %55, align 1, !tbaa !20
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 40
  %59 = or i64 %54, %58
  %60 = getelementptr inbounds i8, ptr %19, i64 6
  %61 = load i8, ptr %60, align 1, !tbaa !20
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 48
  %64 = or i64 %59, %63
  %65 = getelementptr inbounds i8, ptr %19, i64 7
  %66 = load i8, ptr %65, align 1, !tbaa !20
  %67 = zext i8 %66 to i64
  %68 = shl nuw i64 %67, 56
  %69 = or i64 %64, %68
  %70 = add nsw i32 %27, -8
  %71 = getelementptr inbounds i8, ptr %19, i64 8
  br label %85

72:                                               ; preds = %72, %30
  %73 = phi i32 [ %83, %72 ], [ 0, %30 ]
  %74 = phi i64 [ %82, %72 ], [ 0, %30 ]
  %75 = zext nneg i32 %73 to i64
  %76 = getelementptr inbounds i8, ptr %19, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !20
  %78 = zext i8 %77 to i64
  %79 = shl i32 %73, 3
  %80 = zext nneg i32 %79 to i64
  %81 = shl nuw i64 %78, %80
  %82 = or i64 %81, %74
  %83 = add nuw nsw i32 %73, 1
  %84 = icmp eq i32 %83, %27
  br i1 %84, label %85, label %72

85:                                               ; preds = %72, %32, %30
  %86 = phi ptr [ %71, %32 ], [ %19, %30 ], [ %19, %72 ]
  %87 = phi i32 [ %70, %32 ], [ 0, %30 ], [ 0, %72 ]
  %88 = phi i64 [ %69, %32 ], [ 0, %30 ], [ %82, %72 ]
  %89 = icmp ugt i32 %87, 7
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %145, label %132

92:                                               ; preds = %85
  %93 = load i8, ptr %86, align 1, !tbaa !20
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i8, ptr %86, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !20
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 8
  %99 = or disjoint i64 %98, %94
  %100 = getelementptr inbounds i8, ptr %86, i64 2
  %101 = load i8, ptr %100, align 1, !tbaa !20
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 16
  %104 = or disjoint i64 %99, %103
  %105 = getelementptr inbounds i8, ptr %86, i64 3
  %106 = load i8, ptr %105, align 1, !tbaa !20
  %107 = zext i8 %106 to i64
  %108 = shl nuw nsw i64 %107, 24
  %109 = or disjoint i64 %104, %108
  %110 = getelementptr inbounds i8, ptr %86, i64 4
  %111 = load i8, ptr %110, align 1, !tbaa !20
  %112 = zext i8 %111 to i64
  %113 = shl nuw nsw i64 %112, 32
  %114 = or disjoint i64 %109, %113
  %115 = getelementptr inbounds i8, ptr %86, i64 5
  %116 = load i8, ptr %115, align 1, !tbaa !20
  %117 = zext i8 %116 to i64
  %118 = shl nuw nsw i64 %117, 40
  %119 = or i64 %114, %118
  %120 = getelementptr inbounds i8, ptr %86, i64 6
  %121 = load i8, ptr %120, align 1, !tbaa !20
  %122 = zext i8 %121 to i64
  %123 = shl nuw nsw i64 %122, 48
  %124 = or i64 %119, %123
  %125 = getelementptr inbounds i8, ptr %86, i64 7
  %126 = load i8, ptr %125, align 1, !tbaa !20
  %127 = zext i8 %126 to i64
  %128 = shl nuw i64 %127, 56
  %129 = or i64 %124, %128
  %130 = add nsw i32 %87, -8
  %131 = getelementptr inbounds i8, ptr %86, i64 8
  br label %145

132:                                              ; preds = %132, %90
  %133 = phi i32 [ %143, %132 ], [ 0, %90 ]
  %134 = phi i64 [ %142, %132 ], [ 0, %90 ]
  %135 = zext nneg i32 %133 to i64
  %136 = getelementptr inbounds i8, ptr %86, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !20
  %138 = zext i8 %137 to i64
  %139 = shl i32 %133, 3
  %140 = zext nneg i32 %139 to i64
  %141 = shl nuw i64 %138, %140
  %142 = or i64 %141, %134
  %143 = add nuw nsw i32 %133, 1
  %144 = icmp eq i32 %143, %87
  br i1 %144, label %145, label %132

145:                                              ; preds = %132, %92, %90
  %146 = phi ptr [ %131, %92 ], [ %86, %90 ], [ %86, %132 ]
  %147 = phi i32 [ %130, %92 ], [ 0, %90 ], [ 0, %132 ]
  %148 = phi i64 [ %129, %92 ], [ 0, %90 ], [ %142, %132 ]
  %149 = icmp ugt i32 %147, 7
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = icmp eq i32 %147, 0
  br i1 %151, label %205, label %192

152:                                              ; preds = %145
  %153 = load i8, ptr %146, align 1, !tbaa !20
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds i8, ptr %146, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !20
  %157 = zext i8 %156 to i64
  %158 = shl nuw nsw i64 %157, 8
  %159 = or disjoint i64 %158, %154
  %160 = getelementptr inbounds i8, ptr %146, i64 2
  %161 = load i8, ptr %160, align 1, !tbaa !20
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 16
  %164 = or disjoint i64 %159, %163
  %165 = getelementptr inbounds i8, ptr %146, i64 3
  %166 = load i8, ptr %165, align 1, !tbaa !20
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 24
  %169 = or disjoint i64 %164, %168
  %170 = getelementptr inbounds i8, ptr %146, i64 4
  %171 = load i8, ptr %170, align 1, !tbaa !20
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 32
  %174 = or disjoint i64 %169, %173
  %175 = getelementptr inbounds i8, ptr %146, i64 5
  %176 = load i8, ptr %175, align 1, !tbaa !20
  %177 = zext i8 %176 to i64
  %178 = shl nuw nsw i64 %177, 40
  %179 = or i64 %174, %178
  %180 = getelementptr inbounds i8, ptr %146, i64 6
  %181 = load i8, ptr %180, align 1, !tbaa !20
  %182 = zext i8 %181 to i64
  %183 = shl nuw nsw i64 %182, 48
  %184 = or i64 %179, %183
  %185 = getelementptr inbounds i8, ptr %146, i64 7
  %186 = load i8, ptr %185, align 1, !tbaa !20
  %187 = zext i8 %186 to i64
  %188 = shl nuw i64 %187, 56
  %189 = or i64 %184, %188
  %190 = add nsw i32 %147, -8
  %191 = getelementptr inbounds i8, ptr %146, i64 8
  br label %205

192:                                              ; preds = %192, %150
  %193 = phi i32 [ %203, %192 ], [ 0, %150 ]
  %194 = phi i64 [ %202, %192 ], [ 0, %150 ]
  %195 = zext nneg i32 %193 to i64
  %196 = getelementptr inbounds i8, ptr %146, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !20
  %198 = zext i8 %197 to i64
  %199 = shl i32 %193, 3
  %200 = zext nneg i32 %199 to i64
  %201 = shl nuw i64 %198, %200
  %202 = or i64 %201, %194
  %203 = add nuw nsw i32 %193, 1
  %204 = icmp eq i32 %203, %147
  br i1 %204, label %205, label %192

205:                                              ; preds = %192, %152, %150
  %206 = phi ptr [ %191, %152 ], [ %146, %150 ], [ %146, %192 ]
  %207 = phi i32 [ %190, %152 ], [ 0, %150 ], [ 0, %192 ]
  %208 = phi i64 [ %189, %152 ], [ 0, %150 ], [ %202, %192 ]
  %209 = icmp ugt i32 %207, 7
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  %211 = icmp eq i32 %207, 0
  br i1 %211, label %265, label %252

212:                                              ; preds = %205
  %213 = load i8, ptr %206, align 1, !tbaa !20
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds i8, ptr %206, i64 1
  %216 = load i8, ptr %215, align 1, !tbaa !20
  %217 = zext i8 %216 to i64
  %218 = shl nuw nsw i64 %217, 8
  %219 = or disjoint i64 %218, %214
  %220 = getelementptr inbounds i8, ptr %206, i64 2
  %221 = load i8, ptr %220, align 1, !tbaa !20
  %222 = zext i8 %221 to i64
  %223 = shl nuw nsw i64 %222, 16
  %224 = or disjoint i64 %219, %223
  %225 = getelementptr inbounds i8, ptr %206, i64 3
  %226 = load i8, ptr %225, align 1, !tbaa !20
  %227 = zext i8 %226 to i64
  %228 = shl nuw nsw i64 %227, 24
  %229 = or disjoint i64 %224, %228
  %230 = getelementptr inbounds i8, ptr %206, i64 4
  %231 = load i8, ptr %230, align 1, !tbaa !20
  %232 = zext i8 %231 to i64
  %233 = shl nuw nsw i64 %232, 32
  %234 = or disjoint i64 %229, %233
  %235 = getelementptr inbounds i8, ptr %206, i64 5
  %236 = load i8, ptr %235, align 1, !tbaa !20
  %237 = zext i8 %236 to i64
  %238 = shl nuw nsw i64 %237, 40
  %239 = or i64 %234, %238
  %240 = getelementptr inbounds i8, ptr %206, i64 6
  %241 = load i8, ptr %240, align 1, !tbaa !20
  %242 = zext i8 %241 to i64
  %243 = shl nuw nsw i64 %242, 48
  %244 = or i64 %239, %243
  %245 = getelementptr inbounds i8, ptr %206, i64 7
  %246 = load i8, ptr %245, align 1, !tbaa !20
  %247 = zext i8 %246 to i64
  %248 = shl nuw i64 %247, 56
  %249 = or i64 %244, %248
  %250 = add nsw i32 %207, -8
  %251 = getelementptr inbounds i8, ptr %206, i64 8
  br label %265

252:                                              ; preds = %252, %210
  %253 = phi i32 [ %263, %252 ], [ 0, %210 ]
  %254 = phi i64 [ %262, %252 ], [ 0, %210 ]
  %255 = zext nneg i32 %253 to i64
  %256 = getelementptr inbounds i8, ptr %206, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !20
  %258 = zext i8 %257 to i64
  %259 = shl i32 %253, 3
  %260 = zext nneg i32 %259 to i64
  %261 = shl nuw i64 %258, %260
  %262 = or i64 %261, %254
  %263 = add nuw nsw i32 %253, 1
  %264 = icmp eq i32 %263, %207
  br i1 %264, label %265, label %252

265:                                              ; preds = %252, %212, %210
  %266 = phi ptr [ %251, %212 ], [ %206, %210 ], [ %206, %252 ]
  %267 = phi i32 [ %250, %212 ], [ 0, %210 ], [ 0, %252 ]
  %268 = phi i64 [ %249, %212 ], [ 0, %210 ], [ %262, %252 ]
  %269 = icmp ugt i32 %267, 7
  br i1 %269, label %272, label %270

270:                                              ; preds = %265
  %271 = icmp eq i32 %267, 0
  br i1 %271, label %325, label %312

272:                                              ; preds = %265
  %273 = load i8, ptr %266, align 1, !tbaa !20
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds i8, ptr %266, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !20
  %277 = zext i8 %276 to i64
  %278 = shl nuw nsw i64 %277, 8
  %279 = or disjoint i64 %278, %274
  %280 = getelementptr inbounds i8, ptr %266, i64 2
  %281 = load i8, ptr %280, align 1, !tbaa !20
  %282 = zext i8 %281 to i64
  %283 = shl nuw nsw i64 %282, 16
  %284 = or disjoint i64 %279, %283
  %285 = getelementptr inbounds i8, ptr %266, i64 3
  %286 = load i8, ptr %285, align 1, !tbaa !20
  %287 = zext i8 %286 to i64
  %288 = shl nuw nsw i64 %287, 24
  %289 = or disjoint i64 %284, %288
  %290 = getelementptr inbounds i8, ptr %266, i64 4
  %291 = load i8, ptr %290, align 1, !tbaa !20
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, 32
  %294 = or disjoint i64 %289, %293
  %295 = getelementptr inbounds i8, ptr %266, i64 5
  %296 = load i8, ptr %295, align 1, !tbaa !20
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, 40
  %299 = or i64 %294, %298
  %300 = getelementptr inbounds i8, ptr %266, i64 6
  %301 = load i8, ptr %300, align 1, !tbaa !20
  %302 = zext i8 %301 to i64
  %303 = shl nuw nsw i64 %302, 48
  %304 = or i64 %299, %303
  %305 = getelementptr inbounds i8, ptr %266, i64 7
  %306 = load i8, ptr %305, align 1, !tbaa !20
  %307 = zext i8 %306 to i64
  %308 = shl nuw i64 %307, 56
  %309 = or i64 %304, %308
  %310 = add nsw i32 %267, -8
  %311 = getelementptr inbounds i8, ptr %266, i64 8
  br label %325

312:                                              ; preds = %312, %270
  %313 = phi i32 [ %323, %312 ], [ 0, %270 ]
  %314 = phi i64 [ %322, %312 ], [ 0, %270 ]
  %315 = zext nneg i32 %313 to i64
  %316 = getelementptr inbounds i8, ptr %266, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !20
  %318 = zext i8 %317 to i64
  %319 = shl i32 %313, 3
  %320 = zext nneg i32 %319 to i64
  %321 = shl nuw i64 %318, %320
  %322 = or i64 %321, %314
  %323 = add nuw nsw i32 %313, 1
  %324 = icmp eq i32 %323, %267
  br i1 %324, label %325, label %312

325:                                              ; preds = %312, %272, %270
  %326 = phi ptr [ %311, %272 ], [ %266, %270 ], [ %266, %312 ]
  %327 = phi i32 [ %310, %272 ], [ 0, %270 ], [ 0, %312 ]
  %328 = phi i64 [ %309, %272 ], [ 0, %270 ], [ %322, %312 ]
  %329 = icmp ugt i32 %327, 7
  br i1 %329, label %332, label %330

330:                                              ; preds = %325
  %331 = icmp eq i32 %327, 0
  br i1 %331, label %385, label %372

332:                                              ; preds = %325
  %333 = load i8, ptr %326, align 1, !tbaa !20
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds i8, ptr %326, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !20
  %337 = zext i8 %336 to i64
  %338 = shl nuw nsw i64 %337, 8
  %339 = or disjoint i64 %338, %334
  %340 = getelementptr inbounds i8, ptr %326, i64 2
  %341 = load i8, ptr %340, align 1, !tbaa !20
  %342 = zext i8 %341 to i64
  %343 = shl nuw nsw i64 %342, 16
  %344 = or disjoint i64 %339, %343
  %345 = getelementptr inbounds i8, ptr %326, i64 3
  %346 = load i8, ptr %345, align 1, !tbaa !20
  %347 = zext i8 %346 to i64
  %348 = shl nuw nsw i64 %347, 24
  %349 = or disjoint i64 %344, %348
  %350 = getelementptr inbounds i8, ptr %326, i64 4
  %351 = load i8, ptr %350, align 1, !tbaa !20
  %352 = zext i8 %351 to i64
  %353 = shl nuw nsw i64 %352, 32
  %354 = or disjoint i64 %349, %353
  %355 = getelementptr inbounds i8, ptr %326, i64 5
  %356 = load i8, ptr %355, align 1, !tbaa !20
  %357 = zext i8 %356 to i64
  %358 = shl nuw nsw i64 %357, 40
  %359 = or i64 %354, %358
  %360 = getelementptr inbounds i8, ptr %326, i64 6
  %361 = load i8, ptr %360, align 1, !tbaa !20
  %362 = zext i8 %361 to i64
  %363 = shl nuw nsw i64 %362, 48
  %364 = or i64 %359, %363
  %365 = getelementptr inbounds i8, ptr %326, i64 7
  %366 = load i8, ptr %365, align 1, !tbaa !20
  %367 = zext i8 %366 to i64
  %368 = shl nuw i64 %367, 56
  %369 = or i64 %364, %368
  %370 = add nsw i32 %327, -8
  %371 = getelementptr inbounds i8, ptr %326, i64 8
  br label %385

372:                                              ; preds = %372, %330
  %373 = phi i32 [ %383, %372 ], [ 0, %330 ]
  %374 = phi i64 [ %382, %372 ], [ 0, %330 ]
  %375 = zext nneg i32 %373 to i64
  %376 = getelementptr inbounds i8, ptr %326, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !20
  %378 = zext i8 %377 to i64
  %379 = shl i32 %373, 3
  %380 = zext nneg i32 %379 to i64
  %381 = shl nuw i64 %378, %380
  %382 = or i64 %381, %374
  %383 = add nuw nsw i32 %373, 1
  %384 = icmp eq i32 %383, %327
  br i1 %384, label %385, label %372

385:                                              ; preds = %372, %332, %330
  %386 = phi ptr [ %371, %332 ], [ %326, %330 ], [ %326, %372 ]
  %387 = phi i32 [ %370, %332 ], [ 0, %330 ], [ 0, %372 ]
  %388 = phi i64 [ %369, %332 ], [ 0, %330 ], [ %382, %372 ]
  %389 = icmp ugt i32 %387, 7
  br i1 %389, label %392, label %390

390:                                              ; preds = %385
  %391 = icmp eq i32 %387, 0
  br i1 %391, label %443, label %430

392:                                              ; preds = %385
  %393 = load i8, ptr %386, align 1, !tbaa !20
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds i8, ptr %386, i64 1
  %396 = load i8, ptr %395, align 1, !tbaa !20
  %397 = zext i8 %396 to i64
  %398 = shl nuw nsw i64 %397, 8
  %399 = or disjoint i64 %398, %394
  %400 = getelementptr inbounds i8, ptr %386, i64 2
  %401 = load i8, ptr %400, align 1, !tbaa !20
  %402 = zext i8 %401 to i64
  %403 = shl nuw nsw i64 %402, 16
  %404 = or disjoint i64 %399, %403
  %405 = getelementptr inbounds i8, ptr %386, i64 3
  %406 = load i8, ptr %405, align 1, !tbaa !20
  %407 = zext i8 %406 to i64
  %408 = shl nuw nsw i64 %407, 24
  %409 = or disjoint i64 %404, %408
  %410 = getelementptr inbounds i8, ptr %386, i64 4
  %411 = load i8, ptr %410, align 1, !tbaa !20
  %412 = zext i8 %411 to i64
  %413 = shl nuw nsw i64 %412, 32
  %414 = or disjoint i64 %409, %413
  %415 = getelementptr inbounds i8, ptr %386, i64 5
  %416 = load i8, ptr %415, align 1, !tbaa !20
  %417 = zext i8 %416 to i64
  %418 = shl nuw nsw i64 %417, 40
  %419 = or i64 %414, %418
  %420 = getelementptr inbounds i8, ptr %386, i64 6
  %421 = load i8, ptr %420, align 1, !tbaa !20
  %422 = zext i8 %421 to i64
  %423 = shl nuw nsw i64 %422, 48
  %424 = or i64 %419, %423
  %425 = getelementptr inbounds i8, ptr %386, i64 7
  %426 = load i8, ptr %425, align 1, !tbaa !20
  %427 = zext i8 %426 to i64
  %428 = shl nuw i64 %427, 56
  %429 = or i64 %424, %428
  br label %443

430:                                              ; preds = %430, %390
  %431 = phi i32 [ %441, %430 ], [ 0, %390 ]
  %432 = phi i64 [ %440, %430 ], [ 0, %390 ]
  %433 = zext nneg i32 %431 to i64
  %434 = getelementptr inbounds i8, ptr %386, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !20
  %436 = zext i8 %435 to i64
  %437 = shl i32 %431, 3
  %438 = zext nneg i32 %437 to i64
  %439 = shl nuw i64 %436, %438
  %440 = or i64 %439, %432
  %441 = add nuw nsw i32 %431, 1
  %442 = icmp eq i32 %441, %387
  br i1 %442, label %443, label %430

443:                                              ; preds = %430, %392, %390
  %444 = phi i64 [ %429, %392 ], [ 0, %390 ], [ %440, %430 ]
  %445 = shl nuw nsw i64 %26, 2
  %446 = add nuw nsw i64 %445, 28
  %447 = and i64 %446, 480
  %448 = and i64 %28, -225
  %449 = or i64 %448, %447
  %450 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %449, i64 noundef %88, i64 noundef %148, i64 noundef %208, i64 noundef %268, i64 noundef %328, i64 noundef %388, i64 noundef %444) #18
  %451 = sub i64 %18, %26
  %452 = getelementptr inbounds i8, ptr %19, i64 %26
  %453 = icmp eq i64 %451, 0
  br i1 %453, label %454, label %17

454:                                              ; preds = %443, %9
  %455 = phi <2 x i64> [ %12, %9 ], [ %450, %443 ]
  %456 = extractelement <2 x i64> %455, i64 0
  ret i64 %456
}

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_fprintf_append_args(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) #5 {
  %11 = icmp eq i32 %9, 0
  %12 = or i64 %0, 2
  %13 = select i1 %11, i64 %0, i64 %12
  %14 = and i64 %13, -225
  %15 = zext i32 %1 to i64
  %16 = shl nuw nsw i64 %15, 5
  %17 = or i64 %14, %16
  %18 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %17, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #18
  %19 = extractelement <2 x i64> %18, i64 0
  ret i64 %19
}

; Function Attrs: convergent norecurse nounwind
define internal <2 x i64> @__ockl_hostcall_preview(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #5 {
  %10 = load i32, ptr addrspace(4) @__oclc_ABI_version, align 4, !tbaa !23
  %11 = icmp slt i32 %10, 500
  %12 = tail call ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr()
  %13 = select i1 %11, i64 24, i64 80
  %14 = getelementptr inbounds i8, ptr addrspace(4) %12, i64 %13
  %15 = load i64, ptr addrspace(4) %14, align 8, !tbaa !25
  %16 = inttoptr i64 %15 to ptr addrspace(1)
  %17 = addrspacecast ptr addrspace(1) %16 to ptr
  %18 = tail call <2 x i64> @__ockl_hostcall_internal(ptr noundef %17, i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #19
  ret <2 x i64> %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #6

; Function Attrs: convergent norecurse nounwind
define internal <2 x i64> @__ockl_hostcall_internal(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #5 {
  %11 = tail call i32 @__ockl_lane_u32() #18
  %12 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %11)
  %13 = addrspacecast ptr %0 to ptr addrspace(1)
  %14 = icmp eq i32 %11, %12
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr addrspace(1) %13, i64 24
  %17 = load atomic i64, ptr addrspace(1) %16 syncscope("one-as") acquire, align 8
  %18 = getelementptr i8, ptr addrspace(1) %13, i64 40
  %19 = load ptr addrspace(1), ptr addrspace(1) %13, align 8, !tbaa !27
  %20 = load i64, ptr addrspace(1) %18, align 8, !tbaa !31
  %21 = and i64 %20, %17
  %22 = getelementptr inbounds %0, ptr addrspace(1) %19, i64 %21
  %23 = load atomic i64, ptr addrspace(1) %22 syncscope("one-as") monotonic, align 8
  %24 = cmpxchg ptr addrspace(1) %16, i64 %17, i64 %23 syncscope("one-as") acquire monotonic, align 8
  %25 = extractvalue { i64, i1 } %24, 1
  %26 = extractvalue { i64, i1 } %24, 0
  br i1 %25, label %37, label %27

27:                                               ; preds = %27, %15
  %28 = phi i64 [ %36, %27 ], [ %26, %15 ]
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  %29 = load ptr addrspace(1), ptr addrspace(1) %13, align 8, !tbaa !27
  %30 = load i64, ptr addrspace(1) %18, align 8, !tbaa !31
  %31 = and i64 %30, %28
  %32 = getelementptr inbounds %0, ptr addrspace(1) %29, i64 %31
  %33 = load atomic i64, ptr addrspace(1) %32 syncscope("one-as") monotonic, align 8
  %34 = cmpxchg ptr addrspace(1) %16, i64 %28, i64 %33 syncscope("one-as") acquire monotonic, align 8
  %35 = extractvalue { i64, i1 } %34, 1
  %36 = extractvalue { i64, i1 } %34, 0
  br i1 %35, label %37, label %27

37:                                               ; preds = %27, %15, %10
  %38 = phi i64 [ 0, %10 ], [ %26, %15 ], [ %36, %27 ]
  %39 = trunc i64 %38 to i32
  %40 = lshr i64 %38, 32
  %41 = trunc nuw i64 %40 to i32
  %42 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %39)
  %43 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %41)
  %44 = zext i32 %43 to i64
  %45 = shl nuw i64 %44, 32
  %46 = zext i32 %42 to i64
  %47 = or disjoint i64 %45, %46
  %48 = load ptr addrspace(1), ptr addrspace(1) %13, align 8, !tbaa !27
  %49 = getelementptr i8, ptr addrspace(1) %13, i64 40
  %50 = load i64, ptr addrspace(1) %49, align 8, !tbaa !31
  %51 = and i64 %47, %50
  %52 = getelementptr inbounds %0, ptr addrspace(1) %48, i64 %51
  %53 = getelementptr i8, ptr addrspace(1) %13, i64 8
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8, !tbaa !32
  %55 = getelementptr inbounds %1, ptr addrspace(1) %54, i64 %51
  %56 = tail call i64 @llvm.amdgcn.ballot.i64(i1 true)
  br i1 %14, label %57, label %61

57:                                               ; preds = %37
  %58 = getelementptr inbounds i8, ptr addrspace(1) %52, i64 16
  %59 = getelementptr inbounds i8, ptr addrspace(1) %52, i64 8
  %60 = getelementptr inbounds i8, ptr addrspace(1) %52, i64 20
  store i32 %1, ptr addrspace(1) %58, align 8, !tbaa !33
  store i64 %56, ptr addrspace(1) %59, align 8, !tbaa !35
  store i32 1, ptr addrspace(1) %60, align 4, !tbaa !36
  br label %61

61:                                               ; preds = %57, %37
  %62 = zext i32 %11 to i64
  %63 = getelementptr inbounds [64 x [8 x i64]], ptr addrspace(1) %55, i64 0, i64 %62
  store i64 %2, ptr addrspace(1) %63, align 8, !tbaa !25
  %64 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 8
  store i64 %3, ptr addrspace(1) %64, align 8, !tbaa !25
  %65 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 16
  store i64 %4, ptr addrspace(1) %65, align 8, !tbaa !25
  %66 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 24
  store i64 %5, ptr addrspace(1) %66, align 8, !tbaa !25
  %67 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 32
  store i64 %6, ptr addrspace(1) %67, align 8, !tbaa !25
  %68 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 40
  store i64 %7, ptr addrspace(1) %68, align 8, !tbaa !25
  %69 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 48
  store i64 %8, ptr addrspace(1) %69, align 8, !tbaa !25
  %70 = getelementptr inbounds i8, ptr addrspace(1) %63, i64 56
  store i64 %9, ptr addrspace(1) %70, align 8, !tbaa !25
  br i1 %14, label %71, label %87

71:                                               ; preds = %61
  %72 = getelementptr inbounds i8, ptr addrspace(1) %13, i64 32
  %73 = load atomic i64, ptr addrspace(1) %72 syncscope("one-as") monotonic, align 8
  %74 = load i64, ptr addrspace(1) %49, align 8, !tbaa !31
  %75 = and i64 %74, %47
  %76 = getelementptr inbounds %0, ptr addrspace(1) %48, i64 %75
  store i64 %73, ptr addrspace(1) %76, align 8, !tbaa !37
  %77 = cmpxchg ptr addrspace(1) %72, i64 %73, i64 %47 syncscope("one-as") release monotonic, align 8
  %78 = extractvalue { i64, i1 } %77, 1
  br i1 %78, label %84, label %79

79:                                               ; preds = %79, %71
  %80 = phi { i64, i1 } [ %82, %79 ], [ %77, %71 ]
  %81 = extractvalue { i64, i1 } %80, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  store i64 %81, ptr addrspace(1) %76, align 8, !tbaa !37
  %82 = cmpxchg ptr addrspace(1) %72, i64 %81, i64 %47 syncscope("one-as") release monotonic, align 8
  %83 = extractvalue { i64, i1 } %82, 1
  br i1 %83, label %84, label %79

84:                                               ; preds = %79, %71
  %85 = getelementptr inbounds i8, ptr addrspace(1) %13, i64 16
  %86 = load i64, ptr addrspace(1) %85, align 8
  tail call void @__ockl_hsa_signal_add(i64 %86, i64 noundef 1, i32 noundef 3) #18
  br label %87

87:                                               ; preds = %84, %61
  %88 = getelementptr inbounds i8, ptr addrspace(1) %52, i64 20
  br label %89

89:                                               ; preds = %97, %87
  br i1 %14, label %90, label %93

90:                                               ; preds = %89
  %91 = load atomic i32, ptr addrspace(1) %88 syncscope("one-as") acquire, align 4
  %92 = and i32 %91, 1
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi i32 [ %92, %90 ], [ 1, %89 ]
  %95 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  br label %89

98:                                               ; preds = %93
  %99 = load i64, ptr addrspace(1) %63, align 8, !tbaa !25
  %100 = load i64, ptr addrspace(1) %64, align 8, !tbaa !25
  br i1 %14, label %101, label %119

101:                                              ; preds = %98
  %102 = load i64, ptr addrspace(1) %49, align 8, !tbaa !31
  %103 = add i64 %102, 1
  %104 = add i64 %103, %47
  %105 = icmp eq i64 %104, 0
  %106 = select i1 %105, i64 %103, i64 %104
  %107 = getelementptr inbounds i8, ptr addrspace(1) %13, i64 24
  %108 = load atomic i64, ptr addrspace(1) %107 syncscope("one-as") monotonic, align 8
  %109 = load ptr addrspace(1), ptr addrspace(1) %13, align 8, !tbaa !27
  %110 = and i64 %106, %102
  %111 = getelementptr inbounds %0, ptr addrspace(1) %109, i64 %110
  store i64 %108, ptr addrspace(1) %111, align 8, !tbaa !37
  %112 = cmpxchg ptr addrspace(1) %107, i64 %108, i64 %106 syncscope("one-as") release monotonic, align 8
  %113 = extractvalue { i64, i1 } %112, 1
  br i1 %113, label %119, label %114

114:                                              ; preds = %114, %101
  %115 = phi { i64, i1 } [ %117, %114 ], [ %112, %101 ]
  %116 = extractvalue { i64, i1 } %115, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  store i64 %116, ptr addrspace(1) %111, align 8, !tbaa !37
  %117 = cmpxchg ptr addrspace(1) %107, i64 %116, i64 %106 syncscope("one-as") release monotonic, align 8
  %118 = extractvalue { i64, i1 } %117, 1
  br i1 %118, label %119, label %114

119:                                              ; preds = %114, %101, %98
  %120 = insertelement <2 x i64> poison, i64 %99, i64 0
  %121 = insertelement <2 x i64> %120, i64 %100, i64 1
  ret <2 x i64> %121
}

; Function Attrs: alwaysinline convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal i32 @__ockl_lane_u32() local_unnamed_addr #7 {
  %1 = tail call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0)
  %2 = tail call i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %1)
  ret i32 %2
}

; Function Attrs: convergent nocallback nofree nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.readfirstlane(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.amdgcn.s.sleep(i32 immarg) #9

; Function Attrs: convergent nocallback nofree nounwind willreturn memory(none)
declare i64 @llvm.amdgcn.ballot.i64(i1) #8

; Function Attrs: convergent norecurse nounwind
define internal void @__ockl_hsa_signal_add(i64 %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = inttoptr i64 %0 to ptr addrspace(1)
  %5 = getelementptr inbounds i8, ptr addrspace(1) %4, i64 8
  switch i32 %2, label %6 [
    i32 1, label %8
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
  ]

6:                                                ; preds = %3
  %7 = atomicrmw add ptr addrspace(1) %5, i64 %1 syncscope("one-as") monotonic, align 8
  br label %16

8:                                                ; preds = %3, %3
  %9 = atomicrmw add ptr addrspace(1) %5, i64 %1 syncscope("one-as") acquire, align 8
  br label %16

10:                                               ; preds = %3
  %11 = atomicrmw add ptr addrspace(1) %5, i64 %1 syncscope("one-as") release, align 8
  br label %16

12:                                               ; preds = %3
  %13 = atomicrmw add ptr addrspace(1) %5, i64 %1 syncscope("one-as") acq_rel, align 8
  br label %16

14:                                               ; preds = %3
  %15 = atomicrmw add ptr addrspace(1) %5, i64 %1 seq_cst, align 8
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %6
  %17 = getelementptr inbounds i8, ptr addrspace(1) %4, i64 16
  %18 = load i64, ptr addrspace(1) %17, align 16, !tbaa !38
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = inttoptr i64 %18 to ptr addrspace(1)
  %22 = getelementptr inbounds i8, ptr addrspace(1) %4, i64 24
  %23 = load i32, ptr addrspace(1) %22, align 8, !tbaa !40
  %24 = zext i32 %23 to i64
  store atomic i64 %24, ptr addrspace(1) %21 syncscope("one-as") release, align 8
  %25 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %23)
  %26 = and i32 %25, 255
  tail call void @llvm.amdgcn.s.sendmsg(i32 1, i32 %26)
  br label %27

27:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.amdgcn.s.sendmsg(i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.mbcnt.lo(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.amdgcn.mbcnt.hi(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: convergent mustprogress noinline nounwind
define weak hidden void @__assertfail() #2 {
entry:
  call void @llvm.trap()
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @fft_rtc_back_len168_factors_6_7_2_2_wgs_168_tpt_14_dim2_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg(ptr addrspace(1) noalias noundef %twiddles.coerce, ptr addrspace(1) noundef %large_twiddles.coerce, ptr addrspace(1) noalias noundef %lengths.coerce, ptr addrspace(1) noalias noundef %stride_in.coerce, ptr addrspace(1) noalias noundef %stride_out.coerce, i64 noundef %nbatch, i32 noundef %lds_padding, ptr addrspace(1) noalias noundef %load_cb_fn.coerce, ptr addrspace(1) noalias noundef %load_cb_data.coerce, i32 noundef %load_cb_lds_bytes, ptr addrspace(1) noalias noundef %store_cb_fn.coerce, ptr addrspace(1) noalias noundef %store_cb_data.coerce, ptr addrspace(1) noalias noundef %buf_in.coerce, ptr addrspace(1) noalias noundef %buf_out.coerce) #12 {
entry:
  %twiddles = alloca ptr, align 8, addrspace(5)
  %large_twiddles = alloca ptr, align 8, addrspace(5)
  %lengths = alloca ptr, align 8, addrspace(5)
  %stride_in = alloca ptr, align 8, addrspace(5)
  %stride_out = alloca ptr, align 8, addrspace(5)
  %load_cb_fn = alloca ptr, align 8, addrspace(5)
  %load_cb_data = alloca ptr, align 8, addrspace(5)
  %store_cb_fn = alloca ptr, align 8, addrspace(5)
  %store_cb_data = alloca ptr, align 8, addrspace(5)
  %buf_in = alloca ptr, align 8, addrspace(5)
  %buf_out = alloca ptr, align 8, addrspace(5)
  %twiddles.addr = alloca ptr, align 8, addrspace(5)
  %large_twiddles.addr = alloca ptr, align 8, addrspace(5)
  %lengths.addr = alloca ptr, align 8, addrspace(5)
  %stride_in.addr = alloca ptr, align 8, addrspace(5)
  %stride_out.addr = alloca ptr, align 8, addrspace(5)
  %nbatch.addr = alloca i64, align 8, addrspace(5)
  %lds_padding.addr = alloca i32, align 4, addrspace(5)
  %load_cb_fn.addr = alloca ptr, align 8, addrspace(5)
  %load_cb_data.addr = alloca ptr, align 8, addrspace(5)
  %load_cb_lds_bytes.addr = alloca i32, align 4, addrspace(5)
  %store_cb_fn.addr = alloca ptr, align 8, addrspace(5)
  %store_cb_data.addr = alloca ptr, align 8, addrspace(5)
  %buf_in.addr = alloca ptr, align 8, addrspace(5)
  %buf_out.addr = alloca ptr, align 8, addrspace(5)
  %R = alloca [14 x %struct.rocfft_complex], align 16, addrspace(5)
  %lds_real = alloca ptr, align 8, addrspace(5)
  %lds_complex = alloca ptr, align 8, addrspace(5)
  %offset_in = alloca i64, align 8, addrspace(5)
  %offset_out = alloca i64, align 8, addrspace(5)
  %offset_lds = alloca i32, align 4, addrspace(5)
  %stride_lds = alloca i32, align 4, addrspace(5)
  %batch = alloca i64, align 8, addrspace(5)
  %transform = alloca i64, align 8, addrspace(5)
  %direct_load_to_reg = alloca i8, align 1, addrspace(5)
  %direct_store_from_reg = alloca i8, align 1, addrspace(5)
  %lds_linear = alloca i8, align 1, addrspace(5)
  %lds_is_real = alloca i8, align 1, addrspace(5)
  %load_cb = alloca ptr, align 8, addrspace(5)
  %store_cb = alloca ptr, align 8, addrspace(5)
  %dim = alloca i64, align 8, addrspace(5)
  %stride0_in = alloca i64, align 8, addrspace(5)
  %stride0_out = alloca i64, align 8, addrspace(5)
  %tile_index = alloca i64, align 8, addrspace(5)
  %num_of_tiles = alloca i64, align 8, addrspace(5)
  %plength = alloca i64, align 8, addrspace(5)
  %remaining = alloca i64, align 8, addrspace(5)
  %index_along_d = alloca i64, align 8, addrspace(5)
  %d = alloca i32, align 4, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %in_bound = alloca i8, align 1, addrspace(5)
  %thread = alloca i32, align 4, addrspace(5)
  %tid_hor = alloca i32, align 4, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp79 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp92 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp105 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp118 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp131 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp144 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp157 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp170 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp183 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp196 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp209 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp230 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp243 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp256 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp269 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp282 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp295 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp308 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp321 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp334 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp347 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp360 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp373 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %thread_in_device = alloca i32, align 4, addrspace(5)
  %agg.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp425 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp443 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp461 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp479 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp497 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp515 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp533 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp551 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp569 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp587 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp605 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp632 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp650 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp668 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp686 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp704 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp722 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp740 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp758 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp776 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp794 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp812 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp830 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %twiddles.ascast = addrspacecast ptr addrspace(5) %twiddles to ptr
  %large_twiddles.ascast = addrspacecast ptr addrspace(5) %large_twiddles to ptr
  %lengths.ascast = addrspacecast ptr addrspace(5) %lengths to ptr
  %stride_in.ascast = addrspacecast ptr addrspace(5) %stride_in to ptr
  %stride_out.ascast = addrspacecast ptr addrspace(5) %stride_out to ptr
  %load_cb_fn.ascast = addrspacecast ptr addrspace(5) %load_cb_fn to ptr
  %load_cb_data.ascast = addrspacecast ptr addrspace(5) %load_cb_data to ptr
  %store_cb_fn.ascast = addrspacecast ptr addrspace(5) %store_cb_fn to ptr
  %store_cb_data.ascast = addrspacecast ptr addrspace(5) %store_cb_data to ptr
  %buf_in.ascast = addrspacecast ptr addrspace(5) %buf_in to ptr
  %buf_out.ascast = addrspacecast ptr addrspace(5) %buf_out to ptr
  %twiddles.addr.ascast = addrspacecast ptr addrspace(5) %twiddles.addr to ptr
  %large_twiddles.addr.ascast = addrspacecast ptr addrspace(5) %large_twiddles.addr to ptr
  %lengths.addr.ascast = addrspacecast ptr addrspace(5) %lengths.addr to ptr
  %stride_in.addr.ascast = addrspacecast ptr addrspace(5) %stride_in.addr to ptr
  %stride_out.addr.ascast = addrspacecast ptr addrspace(5) %stride_out.addr to ptr
  %nbatch.addr.ascast = addrspacecast ptr addrspace(5) %nbatch.addr to ptr
  %lds_padding.addr.ascast = addrspacecast ptr addrspace(5) %lds_padding.addr to ptr
  %load_cb_fn.addr.ascast = addrspacecast ptr addrspace(5) %load_cb_fn.addr to ptr
  %load_cb_data.addr.ascast = addrspacecast ptr addrspace(5) %load_cb_data.addr to ptr
  %load_cb_lds_bytes.addr.ascast = addrspacecast ptr addrspace(5) %load_cb_lds_bytes.addr to ptr
  %store_cb_fn.addr.ascast = addrspacecast ptr addrspace(5) %store_cb_fn.addr to ptr
  %store_cb_data.addr.ascast = addrspacecast ptr addrspace(5) %store_cb_data.addr to ptr
  %buf_in.addr.ascast = addrspacecast ptr addrspace(5) %buf_in.addr to ptr
  %buf_out.addr.ascast = addrspacecast ptr addrspace(5) %buf_out.addr to ptr
  %R.ascast = addrspacecast ptr addrspace(5) %R to ptr
  %lds_real.ascast = addrspacecast ptr addrspace(5) %lds_real to ptr
  %lds_complex.ascast = addrspacecast ptr addrspace(5) %lds_complex to ptr
  %offset_in.ascast = addrspacecast ptr addrspace(5) %offset_in to ptr
  %offset_out.ascast = addrspacecast ptr addrspace(5) %offset_out to ptr
  %offset_lds.ascast = addrspacecast ptr addrspace(5) %offset_lds to ptr
  %stride_lds.ascast = addrspacecast ptr addrspace(5) %stride_lds to ptr
  %batch.ascast = addrspacecast ptr addrspace(5) %batch to ptr
  %transform.ascast = addrspacecast ptr addrspace(5) %transform to ptr
  %direct_load_to_reg.ascast = addrspacecast ptr addrspace(5) %direct_load_to_reg to ptr
  %direct_store_from_reg.ascast = addrspacecast ptr addrspace(5) %direct_store_from_reg to ptr
  %lds_linear.ascast = addrspacecast ptr addrspace(5) %lds_linear to ptr
  %lds_is_real.ascast = addrspacecast ptr addrspace(5) %lds_is_real to ptr
  %load_cb.ascast = addrspacecast ptr addrspace(5) %load_cb to ptr
  %store_cb.ascast = addrspacecast ptr addrspace(5) %store_cb to ptr
  %dim.ascast = addrspacecast ptr addrspace(5) %dim to ptr
  %stride0_in.ascast = addrspacecast ptr addrspace(5) %stride0_in to ptr
  %stride0_out.ascast = addrspacecast ptr addrspace(5) %stride0_out to ptr
  %tile_index.ascast = addrspacecast ptr addrspace(5) %tile_index to ptr
  %num_of_tiles.ascast = addrspacecast ptr addrspace(5) %num_of_tiles to ptr
  %plength.ascast = addrspacecast ptr addrspace(5) %plength to ptr
  %remaining.ascast = addrspacecast ptr addrspace(5) %remaining to ptr
  %index_along_d.ascast = addrspacecast ptr addrspace(5) %index_along_d to ptr
  %d.ascast = addrspacecast ptr addrspace(5) %d to ptr
  %in_bound.ascast = addrspacecast ptr addrspace(5) %in_bound to ptr
  %thread.ascast = addrspacecast ptr addrspace(5) %thread to ptr
  %tid_hor.ascast = addrspacecast ptr addrspace(5) %tid_hor to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  %ref.tmp79.ascast = addrspacecast ptr addrspace(5) %ref.tmp79 to ptr
  %ref.tmp92.ascast = addrspacecast ptr addrspace(5) %ref.tmp92 to ptr
  %ref.tmp105.ascast = addrspacecast ptr addrspace(5) %ref.tmp105 to ptr
  %ref.tmp118.ascast = addrspacecast ptr addrspace(5) %ref.tmp118 to ptr
  %ref.tmp131.ascast = addrspacecast ptr addrspace(5) %ref.tmp131 to ptr
  %ref.tmp144.ascast = addrspacecast ptr addrspace(5) %ref.tmp144 to ptr
  %ref.tmp157.ascast = addrspacecast ptr addrspace(5) %ref.tmp157 to ptr
  %ref.tmp170.ascast = addrspacecast ptr addrspace(5) %ref.tmp170 to ptr
  %ref.tmp183.ascast = addrspacecast ptr addrspace(5) %ref.tmp183 to ptr
  %ref.tmp196.ascast = addrspacecast ptr addrspace(5) %ref.tmp196 to ptr
  %ref.tmp209.ascast = addrspacecast ptr addrspace(5) %ref.tmp209 to ptr
  %ref.tmp230.ascast = addrspacecast ptr addrspace(5) %ref.tmp230 to ptr
  %ref.tmp243.ascast = addrspacecast ptr addrspace(5) %ref.tmp243 to ptr
  %ref.tmp256.ascast = addrspacecast ptr addrspace(5) %ref.tmp256 to ptr
  %ref.tmp269.ascast = addrspacecast ptr addrspace(5) %ref.tmp269 to ptr
  %ref.tmp282.ascast = addrspacecast ptr addrspace(5) %ref.tmp282 to ptr
  %ref.tmp295.ascast = addrspacecast ptr addrspace(5) %ref.tmp295 to ptr
  %ref.tmp308.ascast = addrspacecast ptr addrspace(5) %ref.tmp308 to ptr
  %ref.tmp321.ascast = addrspacecast ptr addrspace(5) %ref.tmp321 to ptr
  %ref.tmp334.ascast = addrspacecast ptr addrspace(5) %ref.tmp334 to ptr
  %ref.tmp347.ascast = addrspacecast ptr addrspace(5) %ref.tmp347 to ptr
  %ref.tmp360.ascast = addrspacecast ptr addrspace(5) %ref.tmp360 to ptr
  %ref.tmp373.ascast = addrspacecast ptr addrspace(5) %ref.tmp373 to ptr
  %thread_in_device.ascast = addrspacecast ptr addrspace(5) %thread_in_device to ptr
  %agg.tmp.ascast = addrspacecast ptr addrspace(5) %agg.tmp to ptr
  %agg.tmp425.ascast = addrspacecast ptr addrspace(5) %agg.tmp425 to ptr
  %agg.tmp443.ascast = addrspacecast ptr addrspace(5) %agg.tmp443 to ptr
  %agg.tmp461.ascast = addrspacecast ptr addrspace(5) %agg.tmp461 to ptr
  %agg.tmp479.ascast = addrspacecast ptr addrspace(5) %agg.tmp479 to ptr
  %agg.tmp497.ascast = addrspacecast ptr addrspace(5) %agg.tmp497 to ptr
  %agg.tmp515.ascast = addrspacecast ptr addrspace(5) %agg.tmp515 to ptr
  %agg.tmp533.ascast = addrspacecast ptr addrspace(5) %agg.tmp533 to ptr
  %agg.tmp551.ascast = addrspacecast ptr addrspace(5) %agg.tmp551 to ptr
  %agg.tmp569.ascast = addrspacecast ptr addrspace(5) %agg.tmp569 to ptr
  %agg.tmp587.ascast = addrspacecast ptr addrspace(5) %agg.tmp587 to ptr
  %agg.tmp605.ascast = addrspacecast ptr addrspace(5) %agg.tmp605 to ptr
  %agg.tmp632.ascast = addrspacecast ptr addrspace(5) %agg.tmp632 to ptr
  %agg.tmp650.ascast = addrspacecast ptr addrspace(5) %agg.tmp650 to ptr
  %agg.tmp668.ascast = addrspacecast ptr addrspace(5) %agg.tmp668 to ptr
  %agg.tmp686.ascast = addrspacecast ptr addrspace(5) %agg.tmp686 to ptr
  %agg.tmp704.ascast = addrspacecast ptr addrspace(5) %agg.tmp704 to ptr
  %agg.tmp722.ascast = addrspacecast ptr addrspace(5) %agg.tmp722 to ptr
  %agg.tmp740.ascast = addrspacecast ptr addrspace(5) %agg.tmp740 to ptr
  %agg.tmp758.ascast = addrspacecast ptr addrspace(5) %agg.tmp758 to ptr
  %agg.tmp776.ascast = addrspacecast ptr addrspace(5) %agg.tmp776 to ptr
  %agg.tmp794.ascast = addrspacecast ptr addrspace(5) %agg.tmp794 to ptr
  %agg.tmp812.ascast = addrspacecast ptr addrspace(5) %agg.tmp812 to ptr
  %agg.tmp830.ascast = addrspacecast ptr addrspace(5) %agg.tmp830 to ptr
  %0 = addrspacecast ptr addrspace(1) %twiddles.coerce to ptr
  store ptr %0, ptr %twiddles.ascast, align 8
  %twiddles1 = load ptr, ptr %twiddles.ascast, align 8, !tbaa !6
  %1 = addrspacecast ptr addrspace(1) %large_twiddles.coerce to ptr
  store ptr %1, ptr %large_twiddles.ascast, align 8
  %large_twiddles2 = load ptr, ptr %large_twiddles.ascast, align 8, !tbaa !6
  %2 = addrspacecast ptr addrspace(1) %lengths.coerce to ptr
  store ptr %2, ptr %lengths.ascast, align 8
  %lengths3 = load ptr, ptr %lengths.ascast, align 8, !tbaa !6
  %3 = addrspacecast ptr addrspace(1) %stride_in.coerce to ptr
  store ptr %3, ptr %stride_in.ascast, align 8
  %stride_in4 = load ptr, ptr %stride_in.ascast, align 8, !tbaa !6
  %4 = addrspacecast ptr addrspace(1) %stride_out.coerce to ptr
  store ptr %4, ptr %stride_out.ascast, align 8
  %stride_out5 = load ptr, ptr %stride_out.ascast, align 8, !tbaa !6
  %5 = addrspacecast ptr addrspace(1) %load_cb_fn.coerce to ptr
  store ptr %5, ptr %load_cb_fn.ascast, align 8
  %load_cb_fn6 = load ptr, ptr %load_cb_fn.ascast, align 8, !tbaa !6
  %6 = addrspacecast ptr addrspace(1) %load_cb_data.coerce to ptr
  store ptr %6, ptr %load_cb_data.ascast, align 8
  %load_cb_data7 = load ptr, ptr %load_cb_data.ascast, align 8, !tbaa !6
  %7 = addrspacecast ptr addrspace(1) %store_cb_fn.coerce to ptr
  store ptr %7, ptr %store_cb_fn.ascast, align 8
  %store_cb_fn8 = load ptr, ptr %store_cb_fn.ascast, align 8, !tbaa !6
  %8 = addrspacecast ptr addrspace(1) %store_cb_data.coerce to ptr
  store ptr %8, ptr %store_cb_data.ascast, align 8
  %store_cb_data9 = load ptr, ptr %store_cb_data.ascast, align 8, !tbaa !6
  %9 = addrspacecast ptr addrspace(1) %buf_in.coerce to ptr
  store ptr %9, ptr %buf_in.ascast, align 8
  %buf_in10 = load ptr, ptr %buf_in.ascast, align 8, !tbaa !6
  %10 = addrspacecast ptr addrspace(1) %buf_out.coerce to ptr
  store ptr %10, ptr %buf_out.ascast, align 8
  %buf_out11 = load ptr, ptr %buf_out.ascast, align 8, !tbaa !6
  store ptr %twiddles1, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  store ptr %large_twiddles2, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  store ptr %lengths3, ptr %lengths.addr.ascast, align 8, !tbaa !6
  store ptr %stride_in4, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  store ptr %stride_out5, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  store i64 %nbatch, ptr %nbatch.addr.ascast, align 8, !tbaa !41
  store i32 %lds_padding, ptr %lds_padding.addr.ascast, align 4, !tbaa !10
  store ptr %load_cb_fn6, ptr %load_cb_fn.addr.ascast, align 8, !tbaa !6
  store ptr %load_cb_data7, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  store i32 %load_cb_lds_bytes, ptr %load_cb_lds_bytes.addr.ascast, align 4, !tbaa !10
  store ptr %store_cb_fn8, ptr %store_cb_fn.addr.ascast, align 8, !tbaa !6
  store ptr %store_cb_data9, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  store ptr %buf_in10, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  store ptr %buf_out11, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 224, ptr addrspace(5) %R) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %lds_real) #10
  store ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), ptr %lds_real.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %lds_complex) #10
  store ptr addrspacecast (ptr addrspace(3) @lds_uchar to ptr), ptr %lds_complex.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %offset_in) #10
  store i64 0, ptr %offset_in.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %offset_out) #10
  store i64 0, ptr %offset_out.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %offset_lds) #10
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %stride_lds) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %batch) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %transform) #10
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %direct_load_to_reg) #10
  store i8 1, ptr %direct_load_to_reg.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %direct_store_from_reg) #10
  store i8 1, ptr %direct_store_from_reg.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %lds_linear) #10
  store i8 0, ptr %lds_linear.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %lds_is_real) #10
  store i8 0, ptr %lds_is_real.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %load_cb) #10
  %11 = load ptr, ptr %load_cb_fn.addr.ascast, align 8, !tbaa !6
  %call = call noundef ptr @_ZL11get_load_cbI14rocfft_complexIdEL12CallbackType0EEN13callback_typeIT_E4loadEPv(ptr noundef %11) #18
  store ptr %call, ptr %load_cb.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %store_cb) #10
  %12 = load ptr, ptr %store_cb_fn.addr.ascast, align 8, !tbaa !6
  %call12 = call noundef ptr @_ZL12get_store_cbI14rocfft_complexIdEL12CallbackType0EEN13callback_typeIT_E5storeEPv(ptr noundef %12) #18
  store ptr %call12, ptr %store_cb.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %dim) #10
  store i64 2, ptr %dim.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %stride0_in) #10
  %13 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 0
  %14 = load i64, ptr %arrayidx, align 8, !tbaa !41
  store i64 %14, ptr %stride0_in.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %stride0_out) #10
  %15 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx13 = getelementptr inbounds i64, ptr %15, i64 0
  %16 = load i64, ptr %arrayidx13, align 8, !tbaa !41
  store i64 %16, ptr %stride0_out.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %tile_index) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %num_of_tiles) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %plength) #10
  store i64 1, ptr %plength.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %remaining) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %index_along_d) #10
  %17 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx14 = getelementptr inbounds i64, ptr %17, i64 1
  %18 = load i64, ptr %arrayidx14, align 8, !tbaa !41
  %sub = sub i64 %18, 1
  %div = udiv i64 %sub, 12
  %add = add i64 %div, 1
  store i64 %add, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  %19 = load i64, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  store i64 %19, ptr %plength.ascast, align 8, !tbaa !41
  %call15 = call noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr)) #18
  %conv = zext i32 %call15 to i64
  %20 = load i64, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  %rem = urem i64 %conv, %20
  store i64 %rem, ptr %tile_index.ascast, align 8, !tbaa !41
  %call16 = call noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr)) #18
  %conv17 = zext i32 %call16 to i64
  %21 = load i64, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  %div18 = udiv i64 %conv17, %21
  store i64 %div18, ptr %remaining.ascast, align 8, !tbaa !41
  %22 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul = mul i64 %22, 12
  %23 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 1
  %24 = load i64, ptr %arrayidx19, align 8, !tbaa !41
  %mul20 = mul i64 %mul, %24
  store i64 %mul20, ptr %offset_in.ascast, align 8, !tbaa !41
  %25 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul21 = mul i64 %25, 12
  %26 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx22 = getelementptr inbounds i64, ptr %26, i64 1
  %27 = load i64, ptr %arrayidx22, align 8, !tbaa !41
  %mul23 = mul i64 %mul21, %27
  store i64 %mul23, ptr %offset_out.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %d) #10
  store i32 2, ptr %d.ascast, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %conv24 = sext i32 %28 to i64
  %cmp = icmp ult i64 %conv24, 2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %d) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, ptr %plength.ascast, align 8, !tbaa !41
  %30 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %31 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %30, i64 %idxprom
  %32 = load i64, ptr %arrayidx25, align 8, !tbaa !41
  %mul26 = mul i64 %29, %32
  store i64 %mul26, ptr %plength.ascast, align 8, !tbaa !41
  %33 = load i64, ptr %remaining.ascast, align 8, !tbaa !41
  %34 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %35 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom27 = sext i32 %35 to i64
  %arrayidx28 = getelementptr inbounds i64, ptr %34, i64 %idxprom27
  %36 = load i64, ptr %arrayidx28, align 8, !tbaa !41
  %rem29 = urem i64 %33, %36
  store i64 %rem29, ptr %index_along_d.ascast, align 8, !tbaa !41
  %37 = load i64, ptr %remaining.ascast, align 8, !tbaa !41
  %38 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %39 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom30 = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds i64, ptr %38, i64 %idxprom30
  %40 = load i64, ptr %arrayidx31, align 8, !tbaa !41
  %div32 = udiv i64 %37, %40
  store i64 %div32, ptr %remaining.ascast, align 8, !tbaa !41
  %41 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %42 = load i64, ptr %index_along_d.ascast, align 8, !tbaa !41
  %43 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %44 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom33 = sext i32 %44 to i64
  %arrayidx34 = getelementptr inbounds i64, ptr %43, i64 %idxprom33
  %45 = load i64, ptr %arrayidx34, align 8, !tbaa !41
  %mul35 = mul i64 %42, %45
  %add36 = add i64 %41, %mul35
  store i64 %add36, ptr %offset_in.ascast, align 8, !tbaa !41
  %46 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %47 = load i64, ptr %index_along_d.ascast, align 8, !tbaa !41
  %48 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %49 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom37 = sext i32 %49 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %48, i64 %idxprom37
  %50 = load i64, ptr %arrayidx38, align 8, !tbaa !41
  %mul39 = mul i64 %47, %50
  %add40 = add i64 %46, %mul39
  store i64 %add40, ptr %offset_out.ascast, align 8, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %d.ascast, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond.cleanup
  %call41 = call noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr)) #18
  %conv42 = zext i32 %call41 to i64
  %52 = load i64, ptr %plength.ascast, align 8, !tbaa !41
  %div43 = udiv i64 %conv42, %52
  store i64 %div43, ptr %batch.ascast, align 8, !tbaa !41
  %53 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %54 = load i64, ptr %batch.ascast, align 8, !tbaa !41
  %55 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx44 = getelementptr inbounds i64, ptr %55, i64 2
  %56 = load i64, ptr %arrayidx44, align 8, !tbaa !41
  %mul45 = mul i64 %54, %56
  %add46 = add i64 %53, %mul45
  store i64 %add46, ptr %offset_in.ascast, align 8, !tbaa !41
  %57 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %58 = load i64, ptr %batch.ascast, align 8, !tbaa !41
  %59 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx47 = getelementptr inbounds i64, ptr %59, i64 2
  %60 = load i64, ptr %arrayidx47, align 8, !tbaa !41
  %mul48 = mul i64 %58, %60
  %add49 = add i64 %57, %mul48
  store i64 %add49, ptr %offset_out.ascast, align 8, !tbaa !41
  %61 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul50 = mul i64 %61, 12
  %call51 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #18
  %rem52 = urem i32 %call51, 12
  %conv53 = zext i32 %rem52 to i64
  %add54 = add i64 %mul50, %conv53
  store i64 %add54, ptr %transform.ascast, align 8, !tbaa !41
  store i32 12, ptr %stride_lds.ascast, align 4, !tbaa !10
  %call55 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #18
  %rem56 = urem i32 %call55, 12
  %conv57 = zext i32 %rem56 to i64
  %conv58 = trunc i64 %conv57 to i32
  store i32 %conv58, ptr %offset_lds.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %in_bound) #10
  %62 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %add59 = add i64 %62, 1
  %mul60 = mul i64 %add59, 12
  %63 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx61 = getelementptr inbounds i64, ptr %63, i64 1
  %64 = load i64, ptr %arrayidx61, align 8, !tbaa !41
  %cmp62 = icmp ugt i64 %mul60, %64
  %65 = zext i1 %cmp62 to i64
  %cond = select i1 %cmp62, i1 false, i1 true
  %frombool = zext i1 %cond to i8
  store i8 %frombool, ptr %in_bound.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %thread) #10
  %call63 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #18
  %div64 = udiv i32 %call63, 12
  store i32 %div64, ptr %thread.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %tid_hor) #10
  %call65 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #18
  %rem66 = urem i32 %call65, 12
  store i32 %rem66, ptr %tid_hor.ascast, align 4, !tbaa !10
  %66 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool = trunc i8 %66 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %67 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %68 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %69 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %70 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv67 = zext i32 %70 to i64
  %71 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx68 = getelementptr inbounds i64, ptr %71, i64 1
  %72 = load i64, ptr %arrayidx68, align 8, !tbaa !41
  %mul69 = mul i64 %conv67, %72
  %add70 = add i64 %69, %mul69
  %73 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add71 = add i32 %73, 0
  %add72 = add i32 %add71, 0
  %add73 = add i32 %add72, 0
  %conv74 = zext i32 %add73 to i64
  %74 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul75 = mul i64 %conv74, %74
  %add76 = add i64 %add70, %mul75
  %75 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call77 = call %struct.rocfft_complex %67(ptr noundef %68, i64 noundef %add76, ptr noundef %75, ptr noundef null) #18
  %76 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 0
  %77 = extractvalue %struct.rocfft_complex %call77, 0
  store double %77, ptr %76, align 8
  %78 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 1
  %79 = extractvalue %struct.rocfft_complex %call77, 1
  store double %79, ptr %78, align 8
  %arrayidx78 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx78, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp79) #10
  %80 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %81 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %82 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %83 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv80 = zext i32 %83 to i64
  %84 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx81 = getelementptr inbounds i64, ptr %84, i64 1
  %85 = load i64, ptr %arrayidx81, align 8, !tbaa !41
  %mul82 = mul i64 %conv80, %85
  %add83 = add i64 %82, %mul82
  %86 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add84 = add i32 %86, 0
  %add85 = add i32 %add84, 0
  %add86 = add i32 %add85, 28
  %conv87 = zext i32 %add86 to i64
  %87 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul88 = mul i64 %conv87, %87
  %add89 = add i64 %add83, %mul88
  %88 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call90 = call %struct.rocfft_complex %80(ptr noundef %81, i64 noundef %add89, ptr noundef %88, ptr noundef null) #18
  %89 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp79.ascast, i32 0, i32 0
  %90 = extractvalue %struct.rocfft_complex %call90, 0
  store double %90, ptr %89, align 8
  %91 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp79.ascast, i32 0, i32 1
  %92 = extractvalue %struct.rocfft_complex %call90, 1
  store double %92, ptr %91, align 8
  %arrayidx91 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx91, ptr align 8 %ref.tmp79.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp79) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp92) #10
  %93 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %94 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %95 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %96 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv93 = zext i32 %96 to i64
  %97 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx94 = getelementptr inbounds i64, ptr %97, i64 1
  %98 = load i64, ptr %arrayidx94, align 8, !tbaa !41
  %mul95 = mul i64 %conv93, %98
  %add96 = add i64 %95, %mul95
  %99 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add97 = add i32 %99, 0
  %add98 = add i32 %add97, 0
  %add99 = add i32 %add98, 56
  %conv100 = zext i32 %add99 to i64
  %100 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul101 = mul i64 %conv100, %100
  %add102 = add i64 %add96, %mul101
  %101 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call103 = call %struct.rocfft_complex %93(ptr noundef %94, i64 noundef %add102, ptr noundef %101, ptr noundef null) #18
  %102 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp92.ascast, i32 0, i32 0
  %103 = extractvalue %struct.rocfft_complex %call103, 0
  store double %103, ptr %102, align 8
  %104 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp92.ascast, i32 0, i32 1
  %105 = extractvalue %struct.rocfft_complex %call103, 1
  store double %105, ptr %104, align 8
  %arrayidx104 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx104, ptr align 8 %ref.tmp92.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp92) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp105) #10
  %106 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %107 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %108 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %109 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv106 = zext i32 %109 to i64
  %110 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx107 = getelementptr inbounds i64, ptr %110, i64 1
  %111 = load i64, ptr %arrayidx107, align 8, !tbaa !41
  %mul108 = mul i64 %conv106, %111
  %add109 = add i64 %108, %mul108
  %112 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add110 = add i32 %112, 0
  %add111 = add i32 %add110, 0
  %add112 = add i32 %add111, 84
  %conv113 = zext i32 %add112 to i64
  %113 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul114 = mul i64 %conv113, %113
  %add115 = add i64 %add109, %mul114
  %114 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call116 = call %struct.rocfft_complex %106(ptr noundef %107, i64 noundef %add115, ptr noundef %114, ptr noundef null) #18
  %115 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp105.ascast, i32 0, i32 0
  %116 = extractvalue %struct.rocfft_complex %call116, 0
  store double %116, ptr %115, align 8
  %117 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp105.ascast, i32 0, i32 1
  %118 = extractvalue %struct.rocfft_complex %call116, 1
  store double %118, ptr %117, align 8
  %arrayidx117 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx117, ptr align 8 %ref.tmp105.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp105) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp118) #10
  %119 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %120 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %121 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %122 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv119 = zext i32 %122 to i64
  %123 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx120 = getelementptr inbounds i64, ptr %123, i64 1
  %124 = load i64, ptr %arrayidx120, align 8, !tbaa !41
  %mul121 = mul i64 %conv119, %124
  %add122 = add i64 %121, %mul121
  %125 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add123 = add i32 %125, 0
  %add124 = add i32 %add123, 0
  %add125 = add i32 %add124, 112
  %conv126 = zext i32 %add125 to i64
  %126 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul127 = mul i64 %conv126, %126
  %add128 = add i64 %add122, %mul127
  %127 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call129 = call %struct.rocfft_complex %119(ptr noundef %120, i64 noundef %add128, ptr noundef %127, ptr noundef null) #18
  %128 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp118.ascast, i32 0, i32 0
  %129 = extractvalue %struct.rocfft_complex %call129, 0
  store double %129, ptr %128, align 8
  %130 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp118.ascast, i32 0, i32 1
  %131 = extractvalue %struct.rocfft_complex %call129, 1
  store double %131, ptr %130, align 8
  %arrayidx130 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx130, ptr align 8 %ref.tmp118.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp118) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp131) #10
  %132 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %133 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %134 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %135 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv132 = zext i32 %135 to i64
  %136 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx133 = getelementptr inbounds i64, ptr %136, i64 1
  %137 = load i64, ptr %arrayidx133, align 8, !tbaa !41
  %mul134 = mul i64 %conv132, %137
  %add135 = add i64 %134, %mul134
  %138 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add136 = add i32 %138, 0
  %add137 = add i32 %add136, 0
  %add138 = add i32 %add137, 140
  %conv139 = zext i32 %add138 to i64
  %139 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul140 = mul i64 %conv139, %139
  %add141 = add i64 %add135, %mul140
  %140 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call142 = call %struct.rocfft_complex %132(ptr noundef %133, i64 noundef %add141, ptr noundef %140, ptr noundef null) #18
  %141 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp131.ascast, i32 0, i32 0
  %142 = extractvalue %struct.rocfft_complex %call142, 0
  store double %142, ptr %141, align 8
  %143 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp131.ascast, i32 0, i32 1
  %144 = extractvalue %struct.rocfft_complex %call142, 1
  store double %144, ptr %143, align 8
  %arrayidx143 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx143, ptr align 8 %ref.tmp131.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp131) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp144) #10
  %145 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %146 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %147 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %148 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv145 = zext i32 %148 to i64
  %149 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx146 = getelementptr inbounds i64, ptr %149, i64 1
  %150 = load i64, ptr %arrayidx146, align 8, !tbaa !41
  %mul147 = mul i64 %conv145, %150
  %add148 = add i64 %147, %mul147
  %151 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add149 = add i32 %151, 0
  %add150 = add i32 %add149, 14
  %add151 = add i32 %add150, 0
  %conv152 = zext i32 %add151 to i64
  %152 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul153 = mul i64 %conv152, %152
  %add154 = add i64 %add148, %mul153
  %153 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call155 = call %struct.rocfft_complex %145(ptr noundef %146, i64 noundef %add154, ptr noundef %153, ptr noundef null) #18
  %154 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp144.ascast, i32 0, i32 0
  %155 = extractvalue %struct.rocfft_complex %call155, 0
  store double %155, ptr %154, align 8
  %156 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp144.ascast, i32 0, i32 1
  %157 = extractvalue %struct.rocfft_complex %call155, 1
  store double %157, ptr %156, align 8
  %arrayidx156 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx156, ptr align 8 %ref.tmp144.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp144) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp157) #10
  %158 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %159 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %160 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %161 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv158 = zext i32 %161 to i64
  %162 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx159 = getelementptr inbounds i64, ptr %162, i64 1
  %163 = load i64, ptr %arrayidx159, align 8, !tbaa !41
  %mul160 = mul i64 %conv158, %163
  %add161 = add i64 %160, %mul160
  %164 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add162 = add i32 %164, 0
  %add163 = add i32 %add162, 14
  %add164 = add i32 %add163, 28
  %conv165 = zext i32 %add164 to i64
  %165 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul166 = mul i64 %conv165, %165
  %add167 = add i64 %add161, %mul166
  %166 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call168 = call %struct.rocfft_complex %158(ptr noundef %159, i64 noundef %add167, ptr noundef %166, ptr noundef null) #18
  %167 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp157.ascast, i32 0, i32 0
  %168 = extractvalue %struct.rocfft_complex %call168, 0
  store double %168, ptr %167, align 8
  %169 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp157.ascast, i32 0, i32 1
  %170 = extractvalue %struct.rocfft_complex %call168, 1
  store double %170, ptr %169, align 8
  %arrayidx169 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx169, ptr align 8 %ref.tmp157.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp157) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp170) #10
  %171 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %172 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %173 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %174 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv171 = zext i32 %174 to i64
  %175 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx172 = getelementptr inbounds i64, ptr %175, i64 1
  %176 = load i64, ptr %arrayidx172, align 8, !tbaa !41
  %mul173 = mul i64 %conv171, %176
  %add174 = add i64 %173, %mul173
  %177 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add175 = add i32 %177, 0
  %add176 = add i32 %add175, 14
  %add177 = add i32 %add176, 56
  %conv178 = zext i32 %add177 to i64
  %178 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul179 = mul i64 %conv178, %178
  %add180 = add i64 %add174, %mul179
  %179 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call181 = call %struct.rocfft_complex %171(ptr noundef %172, i64 noundef %add180, ptr noundef %179, ptr noundef null) #18
  %180 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp170.ascast, i32 0, i32 0
  %181 = extractvalue %struct.rocfft_complex %call181, 0
  store double %181, ptr %180, align 8
  %182 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp170.ascast, i32 0, i32 1
  %183 = extractvalue %struct.rocfft_complex %call181, 1
  store double %183, ptr %182, align 8
  %arrayidx182 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx182, ptr align 8 %ref.tmp170.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp170) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp183) #10
  %184 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %185 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %186 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %187 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv184 = zext i32 %187 to i64
  %188 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx185 = getelementptr inbounds i64, ptr %188, i64 1
  %189 = load i64, ptr %arrayidx185, align 8, !tbaa !41
  %mul186 = mul i64 %conv184, %189
  %add187 = add i64 %186, %mul186
  %190 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add188 = add i32 %190, 0
  %add189 = add i32 %add188, 14
  %add190 = add i32 %add189, 84
  %conv191 = zext i32 %add190 to i64
  %191 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul192 = mul i64 %conv191, %191
  %add193 = add i64 %add187, %mul192
  %192 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call194 = call %struct.rocfft_complex %184(ptr noundef %185, i64 noundef %add193, ptr noundef %192, ptr noundef null) #18
  %193 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp183.ascast, i32 0, i32 0
  %194 = extractvalue %struct.rocfft_complex %call194, 0
  store double %194, ptr %193, align 8
  %195 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp183.ascast, i32 0, i32 1
  %196 = extractvalue %struct.rocfft_complex %call194, 1
  store double %196, ptr %195, align 8
  %arrayidx195 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx195, ptr align 8 %ref.tmp183.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp183) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp196) #10
  %197 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %198 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %199 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %200 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv197 = zext i32 %200 to i64
  %201 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx198 = getelementptr inbounds i64, ptr %201, i64 1
  %202 = load i64, ptr %arrayidx198, align 8, !tbaa !41
  %mul199 = mul i64 %conv197, %202
  %add200 = add i64 %199, %mul199
  %203 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add201 = add i32 %203, 0
  %add202 = add i32 %add201, 14
  %add203 = add i32 %add202, 112
  %conv204 = zext i32 %add203 to i64
  %204 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul205 = mul i64 %conv204, %204
  %add206 = add i64 %add200, %mul205
  %205 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call207 = call %struct.rocfft_complex %197(ptr noundef %198, i64 noundef %add206, ptr noundef %205, ptr noundef null) #18
  %206 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp196.ascast, i32 0, i32 0
  %207 = extractvalue %struct.rocfft_complex %call207, 0
  store double %207, ptr %206, align 8
  %208 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp196.ascast, i32 0, i32 1
  %209 = extractvalue %struct.rocfft_complex %call207, 1
  store double %209, ptr %208, align 8
  %arrayidx208 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx208, ptr align 8 %ref.tmp196.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp196) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp209) #10
  %210 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %211 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %212 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %213 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv210 = zext i32 %213 to i64
  %214 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx211 = getelementptr inbounds i64, ptr %214, i64 1
  %215 = load i64, ptr %arrayidx211, align 8, !tbaa !41
  %mul212 = mul i64 %conv210, %215
  %add213 = add i64 %212, %mul212
  %216 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add214 = add i32 %216, 0
  %add215 = add i32 %add214, 14
  %add216 = add i32 %add215, 140
  %conv217 = zext i32 %add216 to i64
  %217 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul218 = mul i64 %conv217, %217
  %add219 = add i64 %add213, %mul218
  %218 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call220 = call %struct.rocfft_complex %210(ptr noundef %211, i64 noundef %add219, ptr noundef %218, ptr noundef null) #18
  %219 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp209.ascast, i32 0, i32 0
  %220 = extractvalue %struct.rocfft_complex %call220, 0
  store double %220, ptr %219, align 8
  %221 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp209.ascast, i32 0, i32 1
  %222 = extractvalue %struct.rocfft_complex %call220, 1
  store double %222, ptr %221, align 8
  %arrayidx221 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx221, ptr align 8 %ref.tmp209.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp209) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %223 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool222 = trunc i8 %223 to i1
  br i1 %tobool222, label %if.end387, label %if.then223

if.then223:                                       ; preds = %if.end
  %224 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul224 = mul i64 %224, 12
  %225 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv225 = zext i32 %225 to i64
  %add226 = add i64 %mul224, %conv225
  %226 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx227 = getelementptr inbounds i64, ptr %226, i64 1
  %227 = load i64, ptr %arrayidx227, align 8, !tbaa !41
  %cmp228 = icmp ult i64 %add226, %227
  br i1 %cmp228, label %if.then229, label %if.end386

if.then229:                                       ; preds = %if.then223
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp230) #10
  %228 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %229 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %230 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %231 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv231 = zext i32 %231 to i64
  %232 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx232 = getelementptr inbounds i64, ptr %232, i64 1
  %233 = load i64, ptr %arrayidx232, align 8, !tbaa !41
  %mul233 = mul i64 %conv231, %233
  %add234 = add i64 %230, %mul233
  %234 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add235 = add i32 %234, 0
  %add236 = add i32 %add235, 0
  %add237 = add i32 %add236, 0
  %conv238 = zext i32 %add237 to i64
  %235 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul239 = mul i64 %conv238, %235
  %add240 = add i64 %add234, %mul239
  %236 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call241 = call %struct.rocfft_complex %228(ptr noundef %229, i64 noundef %add240, ptr noundef %236, ptr noundef null) #18
  %237 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp230.ascast, i32 0, i32 0
  %238 = extractvalue %struct.rocfft_complex %call241, 0
  store double %238, ptr %237, align 8
  %239 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp230.ascast, i32 0, i32 1
  %240 = extractvalue %struct.rocfft_complex %call241, 1
  store double %240, ptr %239, align 8
  %arrayidx242 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx242, ptr align 8 %ref.tmp230.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp230) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp243) #10
  %241 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %242 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %243 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %244 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv244 = zext i32 %244 to i64
  %245 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx245 = getelementptr inbounds i64, ptr %245, i64 1
  %246 = load i64, ptr %arrayidx245, align 8, !tbaa !41
  %mul246 = mul i64 %conv244, %246
  %add247 = add i64 %243, %mul246
  %247 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add248 = add i32 %247, 0
  %add249 = add i32 %add248, 0
  %add250 = add i32 %add249, 28
  %conv251 = zext i32 %add250 to i64
  %248 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul252 = mul i64 %conv251, %248
  %add253 = add i64 %add247, %mul252
  %249 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call254 = call %struct.rocfft_complex %241(ptr noundef %242, i64 noundef %add253, ptr noundef %249, ptr noundef null) #18
  %250 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp243.ascast, i32 0, i32 0
  %251 = extractvalue %struct.rocfft_complex %call254, 0
  store double %251, ptr %250, align 8
  %252 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp243.ascast, i32 0, i32 1
  %253 = extractvalue %struct.rocfft_complex %call254, 1
  store double %253, ptr %252, align 8
  %arrayidx255 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx255, ptr align 8 %ref.tmp243.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp243) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp256) #10
  %254 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %255 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %256 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %257 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv257 = zext i32 %257 to i64
  %258 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx258 = getelementptr inbounds i64, ptr %258, i64 1
  %259 = load i64, ptr %arrayidx258, align 8, !tbaa !41
  %mul259 = mul i64 %conv257, %259
  %add260 = add i64 %256, %mul259
  %260 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add261 = add i32 %260, 0
  %add262 = add i32 %add261, 0
  %add263 = add i32 %add262, 56
  %conv264 = zext i32 %add263 to i64
  %261 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul265 = mul i64 %conv264, %261
  %add266 = add i64 %add260, %mul265
  %262 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call267 = call %struct.rocfft_complex %254(ptr noundef %255, i64 noundef %add266, ptr noundef %262, ptr noundef null) #18
  %263 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp256.ascast, i32 0, i32 0
  %264 = extractvalue %struct.rocfft_complex %call267, 0
  store double %264, ptr %263, align 8
  %265 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp256.ascast, i32 0, i32 1
  %266 = extractvalue %struct.rocfft_complex %call267, 1
  store double %266, ptr %265, align 8
  %arrayidx268 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx268, ptr align 8 %ref.tmp256.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp256) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp269) #10
  %267 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %268 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %269 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %270 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv270 = zext i32 %270 to i64
  %271 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx271 = getelementptr inbounds i64, ptr %271, i64 1
  %272 = load i64, ptr %arrayidx271, align 8, !tbaa !41
  %mul272 = mul i64 %conv270, %272
  %add273 = add i64 %269, %mul272
  %273 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add274 = add i32 %273, 0
  %add275 = add i32 %add274, 0
  %add276 = add i32 %add275, 84
  %conv277 = zext i32 %add276 to i64
  %274 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul278 = mul i64 %conv277, %274
  %add279 = add i64 %add273, %mul278
  %275 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call280 = call %struct.rocfft_complex %267(ptr noundef %268, i64 noundef %add279, ptr noundef %275, ptr noundef null) #18
  %276 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp269.ascast, i32 0, i32 0
  %277 = extractvalue %struct.rocfft_complex %call280, 0
  store double %277, ptr %276, align 8
  %278 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp269.ascast, i32 0, i32 1
  %279 = extractvalue %struct.rocfft_complex %call280, 1
  store double %279, ptr %278, align 8
  %arrayidx281 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx281, ptr align 8 %ref.tmp269.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp269) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp282) #10
  %280 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %281 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %282 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %283 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv283 = zext i32 %283 to i64
  %284 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx284 = getelementptr inbounds i64, ptr %284, i64 1
  %285 = load i64, ptr %arrayidx284, align 8, !tbaa !41
  %mul285 = mul i64 %conv283, %285
  %add286 = add i64 %282, %mul285
  %286 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add287 = add i32 %286, 0
  %add288 = add i32 %add287, 0
  %add289 = add i32 %add288, 112
  %conv290 = zext i32 %add289 to i64
  %287 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul291 = mul i64 %conv290, %287
  %add292 = add i64 %add286, %mul291
  %288 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call293 = call %struct.rocfft_complex %280(ptr noundef %281, i64 noundef %add292, ptr noundef %288, ptr noundef null) #18
  %289 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp282.ascast, i32 0, i32 0
  %290 = extractvalue %struct.rocfft_complex %call293, 0
  store double %290, ptr %289, align 8
  %291 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp282.ascast, i32 0, i32 1
  %292 = extractvalue %struct.rocfft_complex %call293, 1
  store double %292, ptr %291, align 8
  %arrayidx294 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx294, ptr align 8 %ref.tmp282.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp282) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp295) #10
  %293 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %294 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %295 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %296 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv296 = zext i32 %296 to i64
  %297 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx297 = getelementptr inbounds i64, ptr %297, i64 1
  %298 = load i64, ptr %arrayidx297, align 8, !tbaa !41
  %mul298 = mul i64 %conv296, %298
  %add299 = add i64 %295, %mul298
  %299 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add300 = add i32 %299, 0
  %add301 = add i32 %add300, 0
  %add302 = add i32 %add301, 140
  %conv303 = zext i32 %add302 to i64
  %300 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul304 = mul i64 %conv303, %300
  %add305 = add i64 %add299, %mul304
  %301 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call306 = call %struct.rocfft_complex %293(ptr noundef %294, i64 noundef %add305, ptr noundef %301, ptr noundef null) #18
  %302 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp295.ascast, i32 0, i32 0
  %303 = extractvalue %struct.rocfft_complex %call306, 0
  store double %303, ptr %302, align 8
  %304 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp295.ascast, i32 0, i32 1
  %305 = extractvalue %struct.rocfft_complex %call306, 1
  store double %305, ptr %304, align 8
  %arrayidx307 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx307, ptr align 8 %ref.tmp295.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp295) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp308) #10
  %306 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %307 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %308 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %309 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv309 = zext i32 %309 to i64
  %310 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx310 = getelementptr inbounds i64, ptr %310, i64 1
  %311 = load i64, ptr %arrayidx310, align 8, !tbaa !41
  %mul311 = mul i64 %conv309, %311
  %add312 = add i64 %308, %mul311
  %312 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add313 = add i32 %312, 0
  %add314 = add i32 %add313, 14
  %add315 = add i32 %add314, 0
  %conv316 = zext i32 %add315 to i64
  %313 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul317 = mul i64 %conv316, %313
  %add318 = add i64 %add312, %mul317
  %314 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call319 = call %struct.rocfft_complex %306(ptr noundef %307, i64 noundef %add318, ptr noundef %314, ptr noundef null) #18
  %315 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp308.ascast, i32 0, i32 0
  %316 = extractvalue %struct.rocfft_complex %call319, 0
  store double %316, ptr %315, align 8
  %317 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp308.ascast, i32 0, i32 1
  %318 = extractvalue %struct.rocfft_complex %call319, 1
  store double %318, ptr %317, align 8
  %arrayidx320 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx320, ptr align 8 %ref.tmp308.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp308) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp321) #10
  %319 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %320 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %321 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %322 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv322 = zext i32 %322 to i64
  %323 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx323 = getelementptr inbounds i64, ptr %323, i64 1
  %324 = load i64, ptr %arrayidx323, align 8, !tbaa !41
  %mul324 = mul i64 %conv322, %324
  %add325 = add i64 %321, %mul324
  %325 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add326 = add i32 %325, 0
  %add327 = add i32 %add326, 14
  %add328 = add i32 %add327, 28
  %conv329 = zext i32 %add328 to i64
  %326 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul330 = mul i64 %conv329, %326
  %add331 = add i64 %add325, %mul330
  %327 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call332 = call %struct.rocfft_complex %319(ptr noundef %320, i64 noundef %add331, ptr noundef %327, ptr noundef null) #18
  %328 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp321.ascast, i32 0, i32 0
  %329 = extractvalue %struct.rocfft_complex %call332, 0
  store double %329, ptr %328, align 8
  %330 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp321.ascast, i32 0, i32 1
  %331 = extractvalue %struct.rocfft_complex %call332, 1
  store double %331, ptr %330, align 8
  %arrayidx333 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx333, ptr align 8 %ref.tmp321.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp321) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp334) #10
  %332 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %333 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %334 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %335 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv335 = zext i32 %335 to i64
  %336 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx336 = getelementptr inbounds i64, ptr %336, i64 1
  %337 = load i64, ptr %arrayidx336, align 8, !tbaa !41
  %mul337 = mul i64 %conv335, %337
  %add338 = add i64 %334, %mul337
  %338 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add339 = add i32 %338, 0
  %add340 = add i32 %add339, 14
  %add341 = add i32 %add340, 56
  %conv342 = zext i32 %add341 to i64
  %339 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul343 = mul i64 %conv342, %339
  %add344 = add i64 %add338, %mul343
  %340 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call345 = call %struct.rocfft_complex %332(ptr noundef %333, i64 noundef %add344, ptr noundef %340, ptr noundef null) #18
  %341 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp334.ascast, i32 0, i32 0
  %342 = extractvalue %struct.rocfft_complex %call345, 0
  store double %342, ptr %341, align 8
  %343 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp334.ascast, i32 0, i32 1
  %344 = extractvalue %struct.rocfft_complex %call345, 1
  store double %344, ptr %343, align 8
  %arrayidx346 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx346, ptr align 8 %ref.tmp334.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp334) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp347) #10
  %345 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %346 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %347 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %348 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv348 = zext i32 %348 to i64
  %349 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx349 = getelementptr inbounds i64, ptr %349, i64 1
  %350 = load i64, ptr %arrayidx349, align 8, !tbaa !41
  %mul350 = mul i64 %conv348, %350
  %add351 = add i64 %347, %mul350
  %351 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add352 = add i32 %351, 0
  %add353 = add i32 %add352, 14
  %add354 = add i32 %add353, 84
  %conv355 = zext i32 %add354 to i64
  %352 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul356 = mul i64 %conv355, %352
  %add357 = add i64 %add351, %mul356
  %353 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call358 = call %struct.rocfft_complex %345(ptr noundef %346, i64 noundef %add357, ptr noundef %353, ptr noundef null) #18
  %354 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp347.ascast, i32 0, i32 0
  %355 = extractvalue %struct.rocfft_complex %call358, 0
  store double %355, ptr %354, align 8
  %356 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp347.ascast, i32 0, i32 1
  %357 = extractvalue %struct.rocfft_complex %call358, 1
  store double %357, ptr %356, align 8
  %arrayidx359 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx359, ptr align 8 %ref.tmp347.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp347) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp360) #10
  %358 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %359 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %360 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %361 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv361 = zext i32 %361 to i64
  %362 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx362 = getelementptr inbounds i64, ptr %362, i64 1
  %363 = load i64, ptr %arrayidx362, align 8, !tbaa !41
  %mul363 = mul i64 %conv361, %363
  %add364 = add i64 %360, %mul363
  %364 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add365 = add i32 %364, 0
  %add366 = add i32 %add365, 14
  %add367 = add i32 %add366, 112
  %conv368 = zext i32 %add367 to i64
  %365 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul369 = mul i64 %conv368, %365
  %add370 = add i64 %add364, %mul369
  %366 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call371 = call %struct.rocfft_complex %358(ptr noundef %359, i64 noundef %add370, ptr noundef %366, ptr noundef null) #18
  %367 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp360.ascast, i32 0, i32 0
  %368 = extractvalue %struct.rocfft_complex %call371, 0
  store double %368, ptr %367, align 8
  %369 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp360.ascast, i32 0, i32 1
  %370 = extractvalue %struct.rocfft_complex %call371, 1
  store double %370, ptr %369, align 8
  %arrayidx372 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx372, ptr align 8 %ref.tmp360.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp360) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp373) #10
  %371 = load ptr, ptr %load_cb.ascast, align 8, !tbaa !6
  %372 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %373 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %374 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv374 = zext i32 %374 to i64
  %375 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx375 = getelementptr inbounds i64, ptr %375, i64 1
  %376 = load i64, ptr %arrayidx375, align 8, !tbaa !41
  %mul376 = mul i64 %conv374, %376
  %add377 = add i64 %373, %mul376
  %377 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add378 = add i32 %377, 0
  %add379 = add i32 %add378, 14
  %add380 = add i32 %add379, 140
  %conv381 = zext i32 %add380 to i64
  %378 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul382 = mul i64 %conv381, %378
  %add383 = add i64 %add377, %mul382
  %379 = load ptr, ptr %load_cb_data.addr.ascast, align 8, !tbaa !6
  %call384 = call %struct.rocfft_complex %371(ptr noundef %372, i64 noundef %add383, ptr noundef %379, ptr noundef null) #18
  %380 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp373.ascast, i32 0, i32 0
  %381 = extractvalue %struct.rocfft_complex %call384, 0
  store double %381, ptr %380, align 8
  %382 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp373.ascast, i32 0, i32 1
  %383 = extractvalue %struct.rocfft_complex %call384, 1
  store double %383, ptr %382, align 8
  %arrayidx385 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx385, ptr align 8 %ref.tmp373.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp373) #10
  br label %if.end386

if.end386:                                        ; preds = %if.then229, %if.then223
  br label %if.end387

if.end387:                                        ; preds = %if.end386, %if.end
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %thread_in_device) #10
  %call388 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #18
  %div389 = udiv i32 %call388, 12
  store i32 %div389, ptr %thread_in_device.ascast, align 4, !tbaa !10
  %arraydecay = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  %384 = load ptr, ptr %lds_real.ascast, align 8, !tbaa !6
  %385 = load ptr, ptr %lds_complex.ascast, align 8, !tbaa !6
  %386 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %387 = load i32, ptr %stride_lds.ascast, align 4, !tbaa !10
  %388 = load i32, ptr %offset_lds.ascast, align 4, !tbaa !10
  %389 = load i32, ptr %thread_in_device.ascast, align 4, !tbaa !10
  %390 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %391 = load i64, ptr %transform.ascast, align 8, !tbaa !41
  call void @_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m(ptr noundef %arraydecay, ptr noundef %384, ptr noundef %385, ptr noundef %386, i32 noundef %387, i32 noundef %388, i32 noundef %389, i1 noundef zeroext true, ptr noundef %390, i64 noundef %391) #18
  %392 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool390 = trunc i8 %392 to i1
  br i1 %tobool390, label %if.then391, label %if.end607

if.then391:                                       ; preds = %if.end387
  %393 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %394 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %395 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %396 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv392 = zext i32 %396 to i64
  %397 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx393 = getelementptr inbounds i64, ptr %397, i64 1
  %398 = load i64, ptr %arrayidx393, align 8, !tbaa !41
  %mul394 = mul i64 %conv392, %398
  %add395 = add i64 %395, %mul394
  %399 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add396 = add i32 %399, 0
  %add397 = add i32 %add396, 0
  %div398 = udiv i32 %add397, 84
  %mul399 = mul i32 %div398, 168
  %400 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add400 = add i32 %400, 0
  %add401 = add i32 %add400, 0
  %rem402 = urem i32 %add401, 84
  %add403 = add i32 %mul399, %rem402
  %add404 = add i32 %add403, 0
  %conv405 = zext i32 %add404 to i64
  %401 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul406 = mul i64 %conv405, %401
  %add407 = add i64 %add395, %mul406
  %arrayidx408 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp.ascast, ptr align 16 %arrayidx408, i64 16, i1 false), !tbaa.struct !48
  %402 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %403 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp.ascast, i32 0, i32 0
  %404 = load double, ptr %403, align 8
  %405 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp.ascast, i32 0, i32 1
  %406 = load double, ptr %405, align 8
  call void %393(ptr noundef %394, i64 noundef %add407, double %404, double %406, ptr noundef %402, ptr noundef null) #18
  %407 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %408 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %409 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %410 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv409 = zext i32 %410 to i64
  %411 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx410 = getelementptr inbounds i64, ptr %411, i64 1
  %412 = load i64, ptr %arrayidx410, align 8, !tbaa !41
  %mul411 = mul i64 %conv409, %412
  %add412 = add i64 %409, %mul411
  %413 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add413 = add i32 %413, 0
  %add414 = add i32 %add413, 0
  %div415 = udiv i32 %add414, 84
  %mul416 = mul i32 %div415, 168
  %414 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add417 = add i32 %414, 0
  %add418 = add i32 %add417, 0
  %rem419 = urem i32 %add418, 84
  %add420 = add i32 %mul416, %rem419
  %add421 = add i32 %add420, 84
  %conv422 = zext i32 %add421 to i64
  %415 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul423 = mul i64 %conv422, %415
  %add424 = add i64 %add412, %mul423
  %arrayidx426 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp425.ascast, ptr align 16 %arrayidx426, i64 16, i1 false), !tbaa.struct !48
  %416 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %417 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp425.ascast, i32 0, i32 0
  %418 = load double, ptr %417, align 8
  %419 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp425.ascast, i32 0, i32 1
  %420 = load double, ptr %419, align 8
  call void %407(ptr noundef %408, i64 noundef %add424, double %418, double %420, ptr noundef %416, ptr noundef null) #18
  %421 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %422 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %423 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %424 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv427 = zext i32 %424 to i64
  %425 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx428 = getelementptr inbounds i64, ptr %425, i64 1
  %426 = load i64, ptr %arrayidx428, align 8, !tbaa !41
  %mul429 = mul i64 %conv427, %426
  %add430 = add i64 %423, %mul429
  %427 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add431 = add i32 %427, 0
  %add432 = add i32 %add431, 14
  %div433 = udiv i32 %add432, 84
  %mul434 = mul i32 %div433, 168
  %428 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add435 = add i32 %428, 0
  %add436 = add i32 %add435, 14
  %rem437 = urem i32 %add436, 84
  %add438 = add i32 %mul434, %rem437
  %add439 = add i32 %add438, 0
  %conv440 = zext i32 %add439 to i64
  %429 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul441 = mul i64 %conv440, %429
  %add442 = add i64 %add430, %mul441
  %arrayidx444 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp443.ascast, ptr align 16 %arrayidx444, i64 16, i1 false), !tbaa.struct !48
  %430 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %431 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp443.ascast, i32 0, i32 0
  %432 = load double, ptr %431, align 8
  %433 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp443.ascast, i32 0, i32 1
  %434 = load double, ptr %433, align 8
  call void %421(ptr noundef %422, i64 noundef %add442, double %432, double %434, ptr noundef %430, ptr noundef null) #18
  %435 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %436 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %437 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %438 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv445 = zext i32 %438 to i64
  %439 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx446 = getelementptr inbounds i64, ptr %439, i64 1
  %440 = load i64, ptr %arrayidx446, align 8, !tbaa !41
  %mul447 = mul i64 %conv445, %440
  %add448 = add i64 %437, %mul447
  %441 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add449 = add i32 %441, 0
  %add450 = add i32 %add449, 14
  %div451 = udiv i32 %add450, 84
  %mul452 = mul i32 %div451, 168
  %442 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add453 = add i32 %442, 0
  %add454 = add i32 %add453, 14
  %rem455 = urem i32 %add454, 84
  %add456 = add i32 %mul452, %rem455
  %add457 = add i32 %add456, 84
  %conv458 = zext i32 %add457 to i64
  %443 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul459 = mul i64 %conv458, %443
  %add460 = add i64 %add448, %mul459
  %arrayidx462 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp461.ascast, ptr align 16 %arrayidx462, i64 16, i1 false), !tbaa.struct !48
  %444 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %445 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp461.ascast, i32 0, i32 0
  %446 = load double, ptr %445, align 8
  %447 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp461.ascast, i32 0, i32 1
  %448 = load double, ptr %447, align 8
  call void %435(ptr noundef %436, i64 noundef %add460, double %446, double %448, ptr noundef %444, ptr noundef null) #18
  %449 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %450 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %451 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %452 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv463 = zext i32 %452 to i64
  %453 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx464 = getelementptr inbounds i64, ptr %453, i64 1
  %454 = load i64, ptr %arrayidx464, align 8, !tbaa !41
  %mul465 = mul i64 %conv463, %454
  %add466 = add i64 %451, %mul465
  %455 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add467 = add i32 %455, 0
  %add468 = add i32 %add467, 28
  %div469 = udiv i32 %add468, 84
  %mul470 = mul i32 %div469, 168
  %456 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add471 = add i32 %456, 0
  %add472 = add i32 %add471, 28
  %rem473 = urem i32 %add472, 84
  %add474 = add i32 %mul470, %rem473
  %add475 = add i32 %add474, 0
  %conv476 = zext i32 %add475 to i64
  %457 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul477 = mul i64 %conv476, %457
  %add478 = add i64 %add466, %mul477
  %arrayidx480 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp479.ascast, ptr align 16 %arrayidx480, i64 16, i1 false), !tbaa.struct !48
  %458 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %459 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp479.ascast, i32 0, i32 0
  %460 = load double, ptr %459, align 8
  %461 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp479.ascast, i32 0, i32 1
  %462 = load double, ptr %461, align 8
  call void %449(ptr noundef %450, i64 noundef %add478, double %460, double %462, ptr noundef %458, ptr noundef null) #18
  %463 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %464 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %465 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %466 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv481 = zext i32 %466 to i64
  %467 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx482 = getelementptr inbounds i64, ptr %467, i64 1
  %468 = load i64, ptr %arrayidx482, align 8, !tbaa !41
  %mul483 = mul i64 %conv481, %468
  %add484 = add i64 %465, %mul483
  %469 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add485 = add i32 %469, 0
  %add486 = add i32 %add485, 28
  %div487 = udiv i32 %add486, 84
  %mul488 = mul i32 %div487, 168
  %470 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add489 = add i32 %470, 0
  %add490 = add i32 %add489, 28
  %rem491 = urem i32 %add490, 84
  %add492 = add i32 %mul488, %rem491
  %add493 = add i32 %add492, 84
  %conv494 = zext i32 %add493 to i64
  %471 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul495 = mul i64 %conv494, %471
  %add496 = add i64 %add484, %mul495
  %arrayidx498 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp497.ascast, ptr align 16 %arrayidx498, i64 16, i1 false), !tbaa.struct !48
  %472 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %473 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp497.ascast, i32 0, i32 0
  %474 = load double, ptr %473, align 8
  %475 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp497.ascast, i32 0, i32 1
  %476 = load double, ptr %475, align 8
  call void %463(ptr noundef %464, i64 noundef %add496, double %474, double %476, ptr noundef %472, ptr noundef null) #18
  %477 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %478 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %479 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %480 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv499 = zext i32 %480 to i64
  %481 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx500 = getelementptr inbounds i64, ptr %481, i64 1
  %482 = load i64, ptr %arrayidx500, align 8, !tbaa !41
  %mul501 = mul i64 %conv499, %482
  %add502 = add i64 %479, %mul501
  %483 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add503 = add i32 %483, 0
  %add504 = add i32 %add503, 42
  %div505 = udiv i32 %add504, 84
  %mul506 = mul i32 %div505, 168
  %484 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add507 = add i32 %484, 0
  %add508 = add i32 %add507, 42
  %rem509 = urem i32 %add508, 84
  %add510 = add i32 %mul506, %rem509
  %add511 = add i32 %add510, 0
  %conv512 = zext i32 %add511 to i64
  %485 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul513 = mul i64 %conv512, %485
  %add514 = add i64 %add502, %mul513
  %arrayidx516 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp515.ascast, ptr align 16 %arrayidx516, i64 16, i1 false), !tbaa.struct !48
  %486 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %487 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp515.ascast, i32 0, i32 0
  %488 = load double, ptr %487, align 8
  %489 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp515.ascast, i32 0, i32 1
  %490 = load double, ptr %489, align 8
  call void %477(ptr noundef %478, i64 noundef %add514, double %488, double %490, ptr noundef %486, ptr noundef null) #18
  %491 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %492 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %493 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %494 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv517 = zext i32 %494 to i64
  %495 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx518 = getelementptr inbounds i64, ptr %495, i64 1
  %496 = load i64, ptr %arrayidx518, align 8, !tbaa !41
  %mul519 = mul i64 %conv517, %496
  %add520 = add i64 %493, %mul519
  %497 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add521 = add i32 %497, 0
  %add522 = add i32 %add521, 42
  %div523 = udiv i32 %add522, 84
  %mul524 = mul i32 %div523, 168
  %498 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add525 = add i32 %498, 0
  %add526 = add i32 %add525, 42
  %rem527 = urem i32 %add526, 84
  %add528 = add i32 %mul524, %rem527
  %add529 = add i32 %add528, 84
  %conv530 = zext i32 %add529 to i64
  %499 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul531 = mul i64 %conv530, %499
  %add532 = add i64 %add520, %mul531
  %arrayidx534 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp533.ascast, ptr align 16 %arrayidx534, i64 16, i1 false), !tbaa.struct !48
  %500 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %501 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp533.ascast, i32 0, i32 0
  %502 = load double, ptr %501, align 8
  %503 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp533.ascast, i32 0, i32 1
  %504 = load double, ptr %503, align 8
  call void %491(ptr noundef %492, i64 noundef %add532, double %502, double %504, ptr noundef %500, ptr noundef null) #18
  %505 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %506 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %507 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %508 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv535 = zext i32 %508 to i64
  %509 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx536 = getelementptr inbounds i64, ptr %509, i64 1
  %510 = load i64, ptr %arrayidx536, align 8, !tbaa !41
  %mul537 = mul i64 %conv535, %510
  %add538 = add i64 %507, %mul537
  %511 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add539 = add i32 %511, 0
  %add540 = add i32 %add539, 56
  %div541 = udiv i32 %add540, 84
  %mul542 = mul i32 %div541, 168
  %512 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add543 = add i32 %512, 0
  %add544 = add i32 %add543, 56
  %rem545 = urem i32 %add544, 84
  %add546 = add i32 %mul542, %rem545
  %add547 = add i32 %add546, 0
  %conv548 = zext i32 %add547 to i64
  %513 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul549 = mul i64 %conv548, %513
  %add550 = add i64 %add538, %mul549
  %arrayidx552 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp551.ascast, ptr align 16 %arrayidx552, i64 16, i1 false), !tbaa.struct !48
  %514 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %515 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp551.ascast, i32 0, i32 0
  %516 = load double, ptr %515, align 8
  %517 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp551.ascast, i32 0, i32 1
  %518 = load double, ptr %517, align 8
  call void %505(ptr noundef %506, i64 noundef %add550, double %516, double %518, ptr noundef %514, ptr noundef null) #18
  %519 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %520 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %521 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %522 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv553 = zext i32 %522 to i64
  %523 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx554 = getelementptr inbounds i64, ptr %523, i64 1
  %524 = load i64, ptr %arrayidx554, align 8, !tbaa !41
  %mul555 = mul i64 %conv553, %524
  %add556 = add i64 %521, %mul555
  %525 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add557 = add i32 %525, 0
  %add558 = add i32 %add557, 56
  %div559 = udiv i32 %add558, 84
  %mul560 = mul i32 %div559, 168
  %526 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add561 = add i32 %526, 0
  %add562 = add i32 %add561, 56
  %rem563 = urem i32 %add562, 84
  %add564 = add i32 %mul560, %rem563
  %add565 = add i32 %add564, 84
  %conv566 = zext i32 %add565 to i64
  %527 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul567 = mul i64 %conv566, %527
  %add568 = add i64 %add556, %mul567
  %arrayidx570 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp569.ascast, ptr align 16 %arrayidx570, i64 16, i1 false), !tbaa.struct !48
  %528 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %529 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp569.ascast, i32 0, i32 0
  %530 = load double, ptr %529, align 8
  %531 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp569.ascast, i32 0, i32 1
  %532 = load double, ptr %531, align 8
  call void %519(ptr noundef %520, i64 noundef %add568, double %530, double %532, ptr noundef %528, ptr noundef null) #18
  %533 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %534 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %535 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %536 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv571 = zext i32 %536 to i64
  %537 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx572 = getelementptr inbounds i64, ptr %537, i64 1
  %538 = load i64, ptr %arrayidx572, align 8, !tbaa !41
  %mul573 = mul i64 %conv571, %538
  %add574 = add i64 %535, %mul573
  %539 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add575 = add i32 %539, 0
  %add576 = add i32 %add575, 70
  %div577 = udiv i32 %add576, 84
  %mul578 = mul i32 %div577, 168
  %540 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add579 = add i32 %540, 0
  %add580 = add i32 %add579, 70
  %rem581 = urem i32 %add580, 84
  %add582 = add i32 %mul578, %rem581
  %add583 = add i32 %add582, 0
  %conv584 = zext i32 %add583 to i64
  %541 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul585 = mul i64 %conv584, %541
  %add586 = add i64 %add574, %mul585
  %arrayidx588 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp587.ascast, ptr align 16 %arrayidx588, i64 16, i1 false), !tbaa.struct !48
  %542 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %543 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp587.ascast, i32 0, i32 0
  %544 = load double, ptr %543, align 8
  %545 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp587.ascast, i32 0, i32 1
  %546 = load double, ptr %545, align 8
  call void %533(ptr noundef %534, i64 noundef %add586, double %544, double %546, ptr noundef %542, ptr noundef null) #18
  %547 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %548 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %549 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %550 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv589 = zext i32 %550 to i64
  %551 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx590 = getelementptr inbounds i64, ptr %551, i64 1
  %552 = load i64, ptr %arrayidx590, align 8, !tbaa !41
  %mul591 = mul i64 %conv589, %552
  %add592 = add i64 %549, %mul591
  %553 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add593 = add i32 %553, 0
  %add594 = add i32 %add593, 70
  %div595 = udiv i32 %add594, 84
  %mul596 = mul i32 %div595, 168
  %554 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add597 = add i32 %554, 0
  %add598 = add i32 %add597, 70
  %rem599 = urem i32 %add598, 84
  %add600 = add i32 %mul596, %rem599
  %add601 = add i32 %add600, 84
  %conv602 = zext i32 %add601 to i64
  %555 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul603 = mul i64 %conv602, %555
  %add604 = add i64 %add592, %mul603
  %arrayidx606 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp605.ascast, ptr align 16 %arrayidx606, i64 16, i1 false), !tbaa.struct !48
  %556 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %557 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp605.ascast, i32 0, i32 0
  %558 = load double, ptr %557, align 8
  %559 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp605.ascast, i32 0, i32 1
  %560 = load double, ptr %559, align 8
  call void %547(ptr noundef %548, i64 noundef %add604, double %558, double %560, ptr noundef %556, ptr noundef null) #18
  br label %if.end607

if.end607:                                        ; preds = %if.then391, %if.end387
  %561 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool608 = trunc i8 %561 to i1
  br i1 %tobool608, label %if.end833, label %if.then609

if.then609:                                       ; preds = %if.end607
  %562 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul610 = mul i64 %562, 12
  %563 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv611 = zext i32 %563 to i64
  %add612 = add i64 %mul610, %conv611
  %564 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx613 = getelementptr inbounds i64, ptr %564, i64 1
  %565 = load i64, ptr %arrayidx613, align 8, !tbaa !41
  %cmp614 = icmp ult i64 %add612, %565
  br i1 %cmp614, label %if.then615, label %if.end832

if.then615:                                       ; preds = %if.then609
  %566 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %567 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %568 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %569 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv616 = zext i32 %569 to i64
  %570 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx617 = getelementptr inbounds i64, ptr %570, i64 1
  %571 = load i64, ptr %arrayidx617, align 8, !tbaa !41
  %mul618 = mul i64 %conv616, %571
  %add619 = add i64 %568, %mul618
  %572 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add620 = add i32 %572, 0
  %add621 = add i32 %add620, 0
  %div622 = udiv i32 %add621, 84
  %mul623 = mul i32 %div622, 168
  %573 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add624 = add i32 %573, 0
  %add625 = add i32 %add624, 0
  %rem626 = urem i32 %add625, 84
  %add627 = add i32 %mul623, %rem626
  %add628 = add i32 %add627, 0
  %conv629 = zext i32 %add628 to i64
  %574 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul630 = mul i64 %conv629, %574
  %add631 = add i64 %add619, %mul630
  %arrayidx633 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp632.ascast, ptr align 16 %arrayidx633, i64 16, i1 false), !tbaa.struct !48
  %575 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %576 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp632.ascast, i32 0, i32 0
  %577 = load double, ptr %576, align 8
  %578 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp632.ascast, i32 0, i32 1
  %579 = load double, ptr %578, align 8
  call void %566(ptr noundef %567, i64 noundef %add631, double %577, double %579, ptr noundef %575, ptr noundef null) #18
  %580 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %581 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %582 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %583 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv634 = zext i32 %583 to i64
  %584 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx635 = getelementptr inbounds i64, ptr %584, i64 1
  %585 = load i64, ptr %arrayidx635, align 8, !tbaa !41
  %mul636 = mul i64 %conv634, %585
  %add637 = add i64 %582, %mul636
  %586 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add638 = add i32 %586, 0
  %add639 = add i32 %add638, 0
  %div640 = udiv i32 %add639, 84
  %mul641 = mul i32 %div640, 168
  %587 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add642 = add i32 %587, 0
  %add643 = add i32 %add642, 0
  %rem644 = urem i32 %add643, 84
  %add645 = add i32 %mul641, %rem644
  %add646 = add i32 %add645, 84
  %conv647 = zext i32 %add646 to i64
  %588 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul648 = mul i64 %conv647, %588
  %add649 = add i64 %add637, %mul648
  %arrayidx651 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp650.ascast, ptr align 16 %arrayidx651, i64 16, i1 false), !tbaa.struct !48
  %589 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %590 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp650.ascast, i32 0, i32 0
  %591 = load double, ptr %590, align 8
  %592 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp650.ascast, i32 0, i32 1
  %593 = load double, ptr %592, align 8
  call void %580(ptr noundef %581, i64 noundef %add649, double %591, double %593, ptr noundef %589, ptr noundef null) #18
  %594 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %595 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %596 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %597 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv652 = zext i32 %597 to i64
  %598 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx653 = getelementptr inbounds i64, ptr %598, i64 1
  %599 = load i64, ptr %arrayidx653, align 8, !tbaa !41
  %mul654 = mul i64 %conv652, %599
  %add655 = add i64 %596, %mul654
  %600 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add656 = add i32 %600, 0
  %add657 = add i32 %add656, 14
  %div658 = udiv i32 %add657, 84
  %mul659 = mul i32 %div658, 168
  %601 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add660 = add i32 %601, 0
  %add661 = add i32 %add660, 14
  %rem662 = urem i32 %add661, 84
  %add663 = add i32 %mul659, %rem662
  %add664 = add i32 %add663, 0
  %conv665 = zext i32 %add664 to i64
  %602 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul666 = mul i64 %conv665, %602
  %add667 = add i64 %add655, %mul666
  %arrayidx669 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp668.ascast, ptr align 16 %arrayidx669, i64 16, i1 false), !tbaa.struct !48
  %603 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %604 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp668.ascast, i32 0, i32 0
  %605 = load double, ptr %604, align 8
  %606 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp668.ascast, i32 0, i32 1
  %607 = load double, ptr %606, align 8
  call void %594(ptr noundef %595, i64 noundef %add667, double %605, double %607, ptr noundef %603, ptr noundef null) #18
  %608 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %609 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %610 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %611 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv670 = zext i32 %611 to i64
  %612 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx671 = getelementptr inbounds i64, ptr %612, i64 1
  %613 = load i64, ptr %arrayidx671, align 8, !tbaa !41
  %mul672 = mul i64 %conv670, %613
  %add673 = add i64 %610, %mul672
  %614 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add674 = add i32 %614, 0
  %add675 = add i32 %add674, 14
  %div676 = udiv i32 %add675, 84
  %mul677 = mul i32 %div676, 168
  %615 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add678 = add i32 %615, 0
  %add679 = add i32 %add678, 14
  %rem680 = urem i32 %add679, 84
  %add681 = add i32 %mul677, %rem680
  %add682 = add i32 %add681, 84
  %conv683 = zext i32 %add682 to i64
  %616 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul684 = mul i64 %conv683, %616
  %add685 = add i64 %add673, %mul684
  %arrayidx687 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp686.ascast, ptr align 16 %arrayidx687, i64 16, i1 false), !tbaa.struct !48
  %617 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %618 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp686.ascast, i32 0, i32 0
  %619 = load double, ptr %618, align 8
  %620 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp686.ascast, i32 0, i32 1
  %621 = load double, ptr %620, align 8
  call void %608(ptr noundef %609, i64 noundef %add685, double %619, double %621, ptr noundef %617, ptr noundef null) #18
  %622 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %623 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %624 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %625 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv688 = zext i32 %625 to i64
  %626 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx689 = getelementptr inbounds i64, ptr %626, i64 1
  %627 = load i64, ptr %arrayidx689, align 8, !tbaa !41
  %mul690 = mul i64 %conv688, %627
  %add691 = add i64 %624, %mul690
  %628 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add692 = add i32 %628, 0
  %add693 = add i32 %add692, 28
  %div694 = udiv i32 %add693, 84
  %mul695 = mul i32 %div694, 168
  %629 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add696 = add i32 %629, 0
  %add697 = add i32 %add696, 28
  %rem698 = urem i32 %add697, 84
  %add699 = add i32 %mul695, %rem698
  %add700 = add i32 %add699, 0
  %conv701 = zext i32 %add700 to i64
  %630 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul702 = mul i64 %conv701, %630
  %add703 = add i64 %add691, %mul702
  %arrayidx705 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp704.ascast, ptr align 16 %arrayidx705, i64 16, i1 false), !tbaa.struct !48
  %631 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %632 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp704.ascast, i32 0, i32 0
  %633 = load double, ptr %632, align 8
  %634 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp704.ascast, i32 0, i32 1
  %635 = load double, ptr %634, align 8
  call void %622(ptr noundef %623, i64 noundef %add703, double %633, double %635, ptr noundef %631, ptr noundef null) #18
  %636 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %637 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %638 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %639 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv706 = zext i32 %639 to i64
  %640 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx707 = getelementptr inbounds i64, ptr %640, i64 1
  %641 = load i64, ptr %arrayidx707, align 8, !tbaa !41
  %mul708 = mul i64 %conv706, %641
  %add709 = add i64 %638, %mul708
  %642 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add710 = add i32 %642, 0
  %add711 = add i32 %add710, 28
  %div712 = udiv i32 %add711, 84
  %mul713 = mul i32 %div712, 168
  %643 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add714 = add i32 %643, 0
  %add715 = add i32 %add714, 28
  %rem716 = urem i32 %add715, 84
  %add717 = add i32 %mul713, %rem716
  %add718 = add i32 %add717, 84
  %conv719 = zext i32 %add718 to i64
  %644 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul720 = mul i64 %conv719, %644
  %add721 = add i64 %add709, %mul720
  %arrayidx723 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp722.ascast, ptr align 16 %arrayidx723, i64 16, i1 false), !tbaa.struct !48
  %645 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %646 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp722.ascast, i32 0, i32 0
  %647 = load double, ptr %646, align 8
  %648 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp722.ascast, i32 0, i32 1
  %649 = load double, ptr %648, align 8
  call void %636(ptr noundef %637, i64 noundef %add721, double %647, double %649, ptr noundef %645, ptr noundef null) #18
  %650 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %651 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %652 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %653 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv724 = zext i32 %653 to i64
  %654 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx725 = getelementptr inbounds i64, ptr %654, i64 1
  %655 = load i64, ptr %arrayidx725, align 8, !tbaa !41
  %mul726 = mul i64 %conv724, %655
  %add727 = add i64 %652, %mul726
  %656 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add728 = add i32 %656, 0
  %add729 = add i32 %add728, 42
  %div730 = udiv i32 %add729, 84
  %mul731 = mul i32 %div730, 168
  %657 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add732 = add i32 %657, 0
  %add733 = add i32 %add732, 42
  %rem734 = urem i32 %add733, 84
  %add735 = add i32 %mul731, %rem734
  %add736 = add i32 %add735, 0
  %conv737 = zext i32 %add736 to i64
  %658 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul738 = mul i64 %conv737, %658
  %add739 = add i64 %add727, %mul738
  %arrayidx741 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp740.ascast, ptr align 16 %arrayidx741, i64 16, i1 false), !tbaa.struct !48
  %659 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %660 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp740.ascast, i32 0, i32 0
  %661 = load double, ptr %660, align 8
  %662 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp740.ascast, i32 0, i32 1
  %663 = load double, ptr %662, align 8
  call void %650(ptr noundef %651, i64 noundef %add739, double %661, double %663, ptr noundef %659, ptr noundef null) #18
  %664 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %665 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %666 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %667 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv742 = zext i32 %667 to i64
  %668 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx743 = getelementptr inbounds i64, ptr %668, i64 1
  %669 = load i64, ptr %arrayidx743, align 8, !tbaa !41
  %mul744 = mul i64 %conv742, %669
  %add745 = add i64 %666, %mul744
  %670 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add746 = add i32 %670, 0
  %add747 = add i32 %add746, 42
  %div748 = udiv i32 %add747, 84
  %mul749 = mul i32 %div748, 168
  %671 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add750 = add i32 %671, 0
  %add751 = add i32 %add750, 42
  %rem752 = urem i32 %add751, 84
  %add753 = add i32 %mul749, %rem752
  %add754 = add i32 %add753, 84
  %conv755 = zext i32 %add754 to i64
  %672 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul756 = mul i64 %conv755, %672
  %add757 = add i64 %add745, %mul756
  %arrayidx759 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp758.ascast, ptr align 16 %arrayidx759, i64 16, i1 false), !tbaa.struct !48
  %673 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %674 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp758.ascast, i32 0, i32 0
  %675 = load double, ptr %674, align 8
  %676 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp758.ascast, i32 0, i32 1
  %677 = load double, ptr %676, align 8
  call void %664(ptr noundef %665, i64 noundef %add757, double %675, double %677, ptr noundef %673, ptr noundef null) #18
  %678 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %679 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %680 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %681 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv760 = zext i32 %681 to i64
  %682 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx761 = getelementptr inbounds i64, ptr %682, i64 1
  %683 = load i64, ptr %arrayidx761, align 8, !tbaa !41
  %mul762 = mul i64 %conv760, %683
  %add763 = add i64 %680, %mul762
  %684 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add764 = add i32 %684, 0
  %add765 = add i32 %add764, 56
  %div766 = udiv i32 %add765, 84
  %mul767 = mul i32 %div766, 168
  %685 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add768 = add i32 %685, 0
  %add769 = add i32 %add768, 56
  %rem770 = urem i32 %add769, 84
  %add771 = add i32 %mul767, %rem770
  %add772 = add i32 %add771, 0
  %conv773 = zext i32 %add772 to i64
  %686 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul774 = mul i64 %conv773, %686
  %add775 = add i64 %add763, %mul774
  %arrayidx777 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp776.ascast, ptr align 16 %arrayidx777, i64 16, i1 false), !tbaa.struct !48
  %687 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %688 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp776.ascast, i32 0, i32 0
  %689 = load double, ptr %688, align 8
  %690 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp776.ascast, i32 0, i32 1
  %691 = load double, ptr %690, align 8
  call void %678(ptr noundef %679, i64 noundef %add775, double %689, double %691, ptr noundef %687, ptr noundef null) #18
  %692 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %693 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %694 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %695 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv778 = zext i32 %695 to i64
  %696 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx779 = getelementptr inbounds i64, ptr %696, i64 1
  %697 = load i64, ptr %arrayidx779, align 8, !tbaa !41
  %mul780 = mul i64 %conv778, %697
  %add781 = add i64 %694, %mul780
  %698 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add782 = add i32 %698, 0
  %add783 = add i32 %add782, 56
  %div784 = udiv i32 %add783, 84
  %mul785 = mul i32 %div784, 168
  %699 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add786 = add i32 %699, 0
  %add787 = add i32 %add786, 56
  %rem788 = urem i32 %add787, 84
  %add789 = add i32 %mul785, %rem788
  %add790 = add i32 %add789, 84
  %conv791 = zext i32 %add790 to i64
  %700 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul792 = mul i64 %conv791, %700
  %add793 = add i64 %add781, %mul792
  %arrayidx795 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp794.ascast, ptr align 16 %arrayidx795, i64 16, i1 false), !tbaa.struct !48
  %701 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %702 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp794.ascast, i32 0, i32 0
  %703 = load double, ptr %702, align 8
  %704 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp794.ascast, i32 0, i32 1
  %705 = load double, ptr %704, align 8
  call void %692(ptr noundef %693, i64 noundef %add793, double %703, double %705, ptr noundef %701, ptr noundef null) #18
  %706 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %707 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %708 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %709 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv796 = zext i32 %709 to i64
  %710 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx797 = getelementptr inbounds i64, ptr %710, i64 1
  %711 = load i64, ptr %arrayidx797, align 8, !tbaa !41
  %mul798 = mul i64 %conv796, %711
  %add799 = add i64 %708, %mul798
  %712 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add800 = add i32 %712, 0
  %add801 = add i32 %add800, 70
  %div802 = udiv i32 %add801, 84
  %mul803 = mul i32 %div802, 168
  %713 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add804 = add i32 %713, 0
  %add805 = add i32 %add804, 70
  %rem806 = urem i32 %add805, 84
  %add807 = add i32 %mul803, %rem806
  %add808 = add i32 %add807, 0
  %conv809 = zext i32 %add808 to i64
  %714 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul810 = mul i64 %conv809, %714
  %add811 = add i64 %add799, %mul810
  %arrayidx813 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp812.ascast, ptr align 16 %arrayidx813, i64 16, i1 false), !tbaa.struct !48
  %715 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %716 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp812.ascast, i32 0, i32 0
  %717 = load double, ptr %716, align 8
  %718 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp812.ascast, i32 0, i32 1
  %719 = load double, ptr %718, align 8
  call void %706(ptr noundef %707, i64 noundef %add811, double %717, double %719, ptr noundef %715, ptr noundef null) #18
  %720 = load ptr, ptr %store_cb.ascast, align 8, !tbaa !6
  %721 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %722 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %723 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv814 = zext i32 %723 to i64
  %724 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx815 = getelementptr inbounds i64, ptr %724, i64 1
  %725 = load i64, ptr %arrayidx815, align 8, !tbaa !41
  %mul816 = mul i64 %conv814, %725
  %add817 = add i64 %722, %mul816
  %726 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add818 = add i32 %726, 0
  %add819 = add i32 %add818, 70
  %div820 = udiv i32 %add819, 84
  %mul821 = mul i32 %div820, 168
  %727 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add822 = add i32 %727, 0
  %add823 = add i32 %add822, 70
  %rem824 = urem i32 %add823, 84
  %add825 = add i32 %mul821, %rem824
  %add826 = add i32 %add825, 84
  %conv827 = zext i32 %add826 to i64
  %728 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul828 = mul i64 %conv827, %728
  %add829 = add i64 %add817, %mul828
  %arrayidx831 = getelementptr inbounds [14 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp830.ascast, ptr align 16 %arrayidx831, i64 16, i1 false), !tbaa.struct !48
  %729 = load ptr, ptr %store_cb_data.addr.ascast, align 8, !tbaa !6
  %730 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp830.ascast, i32 0, i32 0
  %731 = load double, ptr %730, align 8
  %732 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp830.ascast, i32 0, i32 1
  %733 = load double, ptr %732, align 8
  call void %720(ptr noundef %721, i64 noundef %add829, double %731, double %733, ptr noundef %729, ptr noundef null) #18
  br label %if.end832

if.end832:                                        ; preds = %if.then615, %if.then609
  br label %if.end833

if.end833:                                        ; preds = %if.end832, %if.end607
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %thread_in_device) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %tid_hor) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %thread) #10
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %in_bound) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %index_along_d) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %remaining) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %plength) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %num_of_tiles) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %tile_index) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %stride0_out) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %stride0_in) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %dim) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %store_cb) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %load_cb) #10
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %lds_is_real) #10
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %lds_linear) #10
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %direct_store_from_reg) #10
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %direct_load_to_reg) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %transform) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %batch) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %stride_lds) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %offset_lds) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %offset_out) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %offset_in) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %lds_complex) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %lds_real) #10
  call void @llvm.lifetime.end.p5(i64 224, ptr addrspace(5) %R) #10
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define internal noundef ptr @_ZL11get_load_cbI14rocfft_complexIdEL12CallbackType0EEN13callback_typeIT_E4loadEPv(ptr noundef %ptr) #13 {
entry:
  %retval = alloca ptr, align 8, addrspace(5)
  %ptr.addr = alloca ptr, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %ptr.addr.ascast = addrspacecast ptr addrspace(5) %ptr.addr to ptr
  store ptr %ptr, ptr %ptr.addr.ascast, align 8, !tbaa !6
  ret ptr @_Z15load_cb_defaultI14rocfft_complexIdEET_PS2_mPvS4_
}

; Function Attrs: convergent mustprogress nounwind
define internal noundef ptr @_ZL12get_store_cbI14rocfft_complexIdEL12CallbackType0EEN13callback_typeIT_E5storeEPv(ptr noundef %ptr) #13 {
entry:
  %retval = alloca ptr, align 8, addrspace(5)
  %ptr.addr = alloca ptr, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %ptr.addr.ascast = addrspacecast ptr addrspace(5) %ptr.addr to ptr
  store ptr %ptr, ptr %ptr.addr.ascast, align 8, !tbaa !6
  ret ptr @_Z16store_cb_defaultI14rocfft_complexIdEEvPT_mS2_PvS4_
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #13 comdat align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %ref.tmp = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  %call = call noundef i32 @_ZNK14__HIP_BlockIdxclEj(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.ascast, i32 noundef 0) #18
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  ret i32 %call
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #13 comdat align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %ref.tmp = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  %call = call noundef i32 @_ZNK15__HIP_ThreadIdxclEj(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.ascast, i32 noundef 0) #18
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  ret i32 %call
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z29inverse_length168_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m(ptr noundef %R, ptr noalias noundef %lds_real, ptr noalias noundef %lds_complex, ptr noalias noundef %twiddles, i32 noundef %stride_lds, i32 noundef %offset_lds, i32 noundef %thread, i1 noundef zeroext %write, ptr noundef %large_twiddles, i64 noundef %trans_local) #13 comdat {
entry:
  %R.addr = alloca ptr, align 8, addrspace(5)
  %lds_real.addr = alloca ptr, align 8, addrspace(5)
  %lds_complex.addr = alloca ptr, align 8, addrspace(5)
  %twiddles.addr = alloca ptr, align 8, addrspace(5)
  %stride_lds.addr = alloca i32, align 4, addrspace(5)
  %offset_lds.addr = alloca i32, align 4, addrspace(5)
  %thread.addr = alloca i32, align 4, addrspace(5)
  %write.addr = alloca i8, align 1, addrspace(5)
  %large_twiddles.addr = alloca ptr, align 8, addrspace(5)
  %trans_local.addr = alloca i64, align 8, addrspace(5)
  %W = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %t = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %lstride = alloca i32, align 4, addrspace(5)
  %l_offset = alloca i32, align 4, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp317 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp344 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp371 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp398 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp425 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp452 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp479 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp506 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp533 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp560 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp587 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp924 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp951 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp978 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1005 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1032 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1059 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1362 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1389 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1416 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1443 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1470 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1497 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1529 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1535 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1555 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1563 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1583 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1591 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1611 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1619 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1639 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1647 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1667 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1675 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1695 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1703 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1723 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1731 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1751 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1759 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1779 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1787 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1807 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1815 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1835 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1843 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %R.addr.ascast = addrspacecast ptr addrspace(5) %R.addr to ptr
  %lds_real.addr.ascast = addrspacecast ptr addrspace(5) %lds_real.addr to ptr
  %lds_complex.addr.ascast = addrspacecast ptr addrspace(5) %lds_complex.addr to ptr
  %twiddles.addr.ascast = addrspacecast ptr addrspace(5) %twiddles.addr to ptr
  %stride_lds.addr.ascast = addrspacecast ptr addrspace(5) %stride_lds.addr to ptr
  %offset_lds.addr.ascast = addrspacecast ptr addrspace(5) %offset_lds.addr to ptr
  %thread.addr.ascast = addrspacecast ptr addrspace(5) %thread.addr to ptr
  %write.addr.ascast = addrspacecast ptr addrspace(5) %write.addr to ptr
  %large_twiddles.addr.ascast = addrspacecast ptr addrspace(5) %large_twiddles.addr to ptr
  %trans_local.addr.ascast = addrspacecast ptr addrspace(5) %trans_local.addr to ptr
  %W.ascast = addrspacecast ptr addrspace(5) %W to ptr
  %t.ascast = addrspacecast ptr addrspace(5) %t to ptr
  %lstride.ascast = addrspacecast ptr addrspace(5) %lstride to ptr
  %l_offset.ascast = addrspacecast ptr addrspace(5) %l_offset to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  %ref.tmp317.ascast = addrspacecast ptr addrspace(5) %ref.tmp317 to ptr
  %ref.tmp344.ascast = addrspacecast ptr addrspace(5) %ref.tmp344 to ptr
  %ref.tmp371.ascast = addrspacecast ptr addrspace(5) %ref.tmp371 to ptr
  %ref.tmp398.ascast = addrspacecast ptr addrspace(5) %ref.tmp398 to ptr
  %ref.tmp425.ascast = addrspacecast ptr addrspace(5) %ref.tmp425 to ptr
  %ref.tmp452.ascast = addrspacecast ptr addrspace(5) %ref.tmp452 to ptr
  %ref.tmp479.ascast = addrspacecast ptr addrspace(5) %ref.tmp479 to ptr
  %ref.tmp506.ascast = addrspacecast ptr addrspace(5) %ref.tmp506 to ptr
  %ref.tmp533.ascast = addrspacecast ptr addrspace(5) %ref.tmp533 to ptr
  %ref.tmp560.ascast = addrspacecast ptr addrspace(5) %ref.tmp560 to ptr
  %ref.tmp587.ascast = addrspacecast ptr addrspace(5) %ref.tmp587 to ptr
  %ref.tmp924.ascast = addrspacecast ptr addrspace(5) %ref.tmp924 to ptr
  %ref.tmp951.ascast = addrspacecast ptr addrspace(5) %ref.tmp951 to ptr
  %ref.tmp978.ascast = addrspacecast ptr addrspace(5) %ref.tmp978 to ptr
  %ref.tmp1005.ascast = addrspacecast ptr addrspace(5) %ref.tmp1005 to ptr
  %ref.tmp1032.ascast = addrspacecast ptr addrspace(5) %ref.tmp1032 to ptr
  %ref.tmp1059.ascast = addrspacecast ptr addrspace(5) %ref.tmp1059 to ptr
  %ref.tmp1362.ascast = addrspacecast ptr addrspace(5) %ref.tmp1362 to ptr
  %ref.tmp1389.ascast = addrspacecast ptr addrspace(5) %ref.tmp1389 to ptr
  %ref.tmp1416.ascast = addrspacecast ptr addrspace(5) %ref.tmp1416 to ptr
  %ref.tmp1443.ascast = addrspacecast ptr addrspace(5) %ref.tmp1443 to ptr
  %ref.tmp1470.ascast = addrspacecast ptr addrspace(5) %ref.tmp1470 to ptr
  %ref.tmp1497.ascast = addrspacecast ptr addrspace(5) %ref.tmp1497 to ptr
  %ref.tmp1529.ascast = addrspacecast ptr addrspace(5) %ref.tmp1529 to ptr
  %ref.tmp1535.ascast = addrspacecast ptr addrspace(5) %ref.tmp1535 to ptr
  %ref.tmp1555.ascast = addrspacecast ptr addrspace(5) %ref.tmp1555 to ptr
  %ref.tmp1563.ascast = addrspacecast ptr addrspace(5) %ref.tmp1563 to ptr
  %ref.tmp1583.ascast = addrspacecast ptr addrspace(5) %ref.tmp1583 to ptr
  %ref.tmp1591.ascast = addrspacecast ptr addrspace(5) %ref.tmp1591 to ptr
  %ref.tmp1611.ascast = addrspacecast ptr addrspace(5) %ref.tmp1611 to ptr
  %ref.tmp1619.ascast = addrspacecast ptr addrspace(5) %ref.tmp1619 to ptr
  %ref.tmp1639.ascast = addrspacecast ptr addrspace(5) %ref.tmp1639 to ptr
  %ref.tmp1647.ascast = addrspacecast ptr addrspace(5) %ref.tmp1647 to ptr
  %ref.tmp1667.ascast = addrspacecast ptr addrspace(5) %ref.tmp1667 to ptr
  %ref.tmp1675.ascast = addrspacecast ptr addrspace(5) %ref.tmp1675 to ptr
  %ref.tmp1695.ascast = addrspacecast ptr addrspace(5) %ref.tmp1695 to ptr
  %ref.tmp1703.ascast = addrspacecast ptr addrspace(5) %ref.tmp1703 to ptr
  %ref.tmp1723.ascast = addrspacecast ptr addrspace(5) %ref.tmp1723 to ptr
  %ref.tmp1731.ascast = addrspacecast ptr addrspace(5) %ref.tmp1731 to ptr
  %ref.tmp1751.ascast = addrspacecast ptr addrspace(5) %ref.tmp1751 to ptr
  %ref.tmp1759.ascast = addrspacecast ptr addrspace(5) %ref.tmp1759 to ptr
  %ref.tmp1779.ascast = addrspacecast ptr addrspace(5) %ref.tmp1779 to ptr
  %ref.tmp1787.ascast = addrspacecast ptr addrspace(5) %ref.tmp1787 to ptr
  %ref.tmp1807.ascast = addrspacecast ptr addrspace(5) %ref.tmp1807 to ptr
  %ref.tmp1815.ascast = addrspacecast ptr addrspace(5) %ref.tmp1815 to ptr
  %ref.tmp1835.ascast = addrspacecast ptr addrspace(5) %ref.tmp1835 to ptr
  %ref.tmp1843.ascast = addrspacecast ptr addrspace(5) %ref.tmp1843 to ptr
  store ptr %R, ptr %R.addr.ascast, align 8, !tbaa !6
  store ptr %lds_real, ptr %lds_real.addr.ascast, align 8, !tbaa !6
  store ptr %lds_complex, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  store ptr %twiddles, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  store i32 %stride_lds, ptr %stride_lds.addr.ascast, align 4, !tbaa !10
  store i32 %offset_lds, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  store i32 %thread, ptr %thread.addr.ascast, align 4, !tbaa !10
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr.ascast, align 1, !tbaa !43
  store ptr %large_twiddles, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  store i64 %trans_local, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %W) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %t) #10
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %lstride) #10
  %0 = load i32, ptr %stride_lds.addr.ascast, align 4, !tbaa !10
  store i32 %0, ptr %lstride.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %l_offset) #10
  %1 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds %struct.rocfft_complex, ptr %1, i64 0
  %2 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1 = getelementptr inbounds %struct.rocfft_complex, ptr %2, i64 1
  %3 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr2 = getelementptr inbounds %struct.rocfft_complex, ptr %3, i64 2
  %4 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr3 = getelementptr inbounds %struct.rocfft_complex, ptr %4, i64 3
  %5 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr4 = getelementptr inbounds %struct.rocfft_complex, ptr %5, i64 4
  %6 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr5 = getelementptr inbounds %struct.rocfft_complex, ptr %6, i64 5
  call void @_Z9InvRad6B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_(ptr noundef %add.ptr, ptr noundef %add.ptr1, ptr noundef %add.ptr2, ptr noundef %add.ptr3, ptr noundef %add.ptr4, ptr noundef %add.ptr5) #18
  %7 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr6 = getelementptr inbounds %struct.rocfft_complex, ptr %7, i64 6
  %8 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr7 = getelementptr inbounds %struct.rocfft_complex, ptr %8, i64 7
  %9 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr8 = getelementptr inbounds %struct.rocfft_complex, ptr %9, i64 8
  %10 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr9 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 9
  %11 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr10 = getelementptr inbounds %struct.rocfft_complex, ptr %11, i64 10
  %12 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr11 = getelementptr inbounds %struct.rocfft_complex, ptr %12, i64 11
  call void @_Z9InvRad6B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_(ptr noundef %add.ptr6, ptr noundef %add.ptr7, ptr noundef %add.ptr8, ptr noundef %add.ptr9, ptr noundef %add.ptr10, ptr noundef %add.ptr11) #18
  %13 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %14 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add = add i32 %14, 0
  %add12 = add i32 %add, 0
  %div = udiv i32 %add12, 1
  %mul = mul i32 %div, 6
  %15 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add13 = add i32 %15, 0
  %add14 = add i32 %add13, 0
  %rem = urem i32 %add14, 1
  %add15 = add i32 %mul, %rem
  %add16 = add i32 %add15, 0
  %16 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul17 = mul i32 %add16, %16
  %add18 = add i32 %13, %mul17
  store i32 %add18, ptr %l_offset.ascast, align 4, !tbaa !10
  %17 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds %struct.rocfft_complex, ptr %17, i64 0
  %18 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %19 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom = zext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds %struct.rocfft_complex, ptr %18, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx19, ptr align 8 %arrayidx, i64 16, i1 false), !tbaa.struct !48
  %20 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %21 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add20 = add i32 %21, 0
  %add21 = add i32 %add20, 0
  %div22 = udiv i32 %add21, 1
  %mul23 = mul i32 %div22, 6
  %22 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add24 = add i32 %22, 0
  %add25 = add i32 %add24, 0
  %rem26 = urem i32 %add25, 1
  %add27 = add i32 %mul23, %rem26
  %add28 = add i32 %add27, 1
  %23 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul29 = mul i32 %add28, %23
  %add30 = add i32 %20, %mul29
  store i32 %add30, ptr %l_offset.ascast, align 4, !tbaa !10
  %24 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx31 = getelementptr inbounds %struct.rocfft_complex, ptr %24, i64 1
  %25 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %26 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom32 = zext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds %struct.rocfft_complex, ptr %25, i64 %idxprom32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx33, ptr align 8 %arrayidx31, i64 16, i1 false), !tbaa.struct !48
  %27 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %28 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add34 = add i32 %28, 0
  %add35 = add i32 %add34, 0
  %div36 = udiv i32 %add35, 1
  %mul37 = mul i32 %div36, 6
  %29 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add38 = add i32 %29, 0
  %add39 = add i32 %add38, 0
  %rem40 = urem i32 %add39, 1
  %add41 = add i32 %mul37, %rem40
  %add42 = add i32 %add41, 2
  %30 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul43 = mul i32 %add42, %30
  %add44 = add i32 %27, %mul43
  store i32 %add44, ptr %l_offset.ascast, align 4, !tbaa !10
  %31 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx45 = getelementptr inbounds %struct.rocfft_complex, ptr %31, i64 2
  %32 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %33 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom46 = zext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds %struct.rocfft_complex, ptr %32, i64 %idxprom46
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx47, ptr align 8 %arrayidx45, i64 16, i1 false), !tbaa.struct !48
  %34 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %35 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add48 = add i32 %35, 0
  %add49 = add i32 %add48, 0
  %div50 = udiv i32 %add49, 1
  %mul51 = mul i32 %div50, 6
  %36 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add52 = add i32 %36, 0
  %add53 = add i32 %add52, 0
  %rem54 = urem i32 %add53, 1
  %add55 = add i32 %mul51, %rem54
  %add56 = add i32 %add55, 3
  %37 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul57 = mul i32 %add56, %37
  %add58 = add i32 %34, %mul57
  store i32 %add58, ptr %l_offset.ascast, align 4, !tbaa !10
  %38 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx59 = getelementptr inbounds %struct.rocfft_complex, ptr %38, i64 3
  %39 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %40 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom60 = zext i32 %40 to i64
  %arrayidx61 = getelementptr inbounds %struct.rocfft_complex, ptr %39, i64 %idxprom60
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx61, ptr align 8 %arrayidx59, i64 16, i1 false), !tbaa.struct !48
  %41 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %42 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add62 = add i32 %42, 0
  %add63 = add i32 %add62, 0
  %div64 = udiv i32 %add63, 1
  %mul65 = mul i32 %div64, 6
  %43 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add66 = add i32 %43, 0
  %add67 = add i32 %add66, 0
  %rem68 = urem i32 %add67, 1
  %add69 = add i32 %mul65, %rem68
  %add70 = add i32 %add69, 4
  %44 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul71 = mul i32 %add70, %44
  %add72 = add i32 %41, %mul71
  store i32 %add72, ptr %l_offset.ascast, align 4, !tbaa !10
  %45 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx73 = getelementptr inbounds %struct.rocfft_complex, ptr %45, i64 4
  %46 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %47 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom74 = zext i32 %47 to i64
  %arrayidx75 = getelementptr inbounds %struct.rocfft_complex, ptr %46, i64 %idxprom74
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx75, ptr align 8 %arrayidx73, i64 16, i1 false), !tbaa.struct !48
  %48 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %49 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add76 = add i32 %49, 0
  %add77 = add i32 %add76, 0
  %div78 = udiv i32 %add77, 1
  %mul79 = mul i32 %div78, 6
  %50 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add80 = add i32 %50, 0
  %add81 = add i32 %add80, 0
  %rem82 = urem i32 %add81, 1
  %add83 = add i32 %mul79, %rem82
  %add84 = add i32 %add83, 5
  %51 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul85 = mul i32 %add84, %51
  %add86 = add i32 %48, %mul85
  store i32 %add86, ptr %l_offset.ascast, align 4, !tbaa !10
  %52 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx87 = getelementptr inbounds %struct.rocfft_complex, ptr %52, i64 5
  %53 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %54 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom88 = zext i32 %54 to i64
  %arrayidx89 = getelementptr inbounds %struct.rocfft_complex, ptr %53, i64 %idxprom88
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx89, ptr align 8 %arrayidx87, i64 16, i1 false), !tbaa.struct !48
  %55 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %56 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add90 = add i32 %56, 0
  %add91 = add i32 %add90, 14
  %div92 = udiv i32 %add91, 1
  %mul93 = mul i32 %div92, 6
  %57 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add94 = add i32 %57, 0
  %add95 = add i32 %add94, 14
  %rem96 = urem i32 %add95, 1
  %add97 = add i32 %mul93, %rem96
  %add98 = add i32 %add97, 0
  %58 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul99 = mul i32 %add98, %58
  %add100 = add i32 %55, %mul99
  store i32 %add100, ptr %l_offset.ascast, align 4, !tbaa !10
  %59 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx101 = getelementptr inbounds %struct.rocfft_complex, ptr %59, i64 6
  %60 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %61 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom102 = zext i32 %61 to i64
  %arrayidx103 = getelementptr inbounds %struct.rocfft_complex, ptr %60, i64 %idxprom102
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx103, ptr align 8 %arrayidx101, i64 16, i1 false), !tbaa.struct !48
  %62 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %63 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add104 = add i32 %63, 0
  %add105 = add i32 %add104, 14
  %div106 = udiv i32 %add105, 1
  %mul107 = mul i32 %div106, 6
  %64 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add108 = add i32 %64, 0
  %add109 = add i32 %add108, 14
  %rem110 = urem i32 %add109, 1
  %add111 = add i32 %mul107, %rem110
  %add112 = add i32 %add111, 1
  %65 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul113 = mul i32 %add112, %65
  %add114 = add i32 %62, %mul113
  store i32 %add114, ptr %l_offset.ascast, align 4, !tbaa !10
  %66 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx115 = getelementptr inbounds %struct.rocfft_complex, ptr %66, i64 7
  %67 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %68 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom116 = zext i32 %68 to i64
  %arrayidx117 = getelementptr inbounds %struct.rocfft_complex, ptr %67, i64 %idxprom116
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx117, ptr align 8 %arrayidx115, i64 16, i1 false), !tbaa.struct !48
  %69 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %70 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add118 = add i32 %70, 0
  %add119 = add i32 %add118, 14
  %div120 = udiv i32 %add119, 1
  %mul121 = mul i32 %div120, 6
  %71 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add122 = add i32 %71, 0
  %add123 = add i32 %add122, 14
  %rem124 = urem i32 %add123, 1
  %add125 = add i32 %mul121, %rem124
  %add126 = add i32 %add125, 2
  %72 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul127 = mul i32 %add126, %72
  %add128 = add i32 %69, %mul127
  store i32 %add128, ptr %l_offset.ascast, align 4, !tbaa !10
  %73 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx129 = getelementptr inbounds %struct.rocfft_complex, ptr %73, i64 8
  %74 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %75 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom130 = zext i32 %75 to i64
  %arrayidx131 = getelementptr inbounds %struct.rocfft_complex, ptr %74, i64 %idxprom130
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx131, ptr align 8 %arrayidx129, i64 16, i1 false), !tbaa.struct !48
  %76 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %77 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add132 = add i32 %77, 0
  %add133 = add i32 %add132, 14
  %div134 = udiv i32 %add133, 1
  %mul135 = mul i32 %div134, 6
  %78 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add136 = add i32 %78, 0
  %add137 = add i32 %add136, 14
  %rem138 = urem i32 %add137, 1
  %add139 = add i32 %mul135, %rem138
  %add140 = add i32 %add139, 3
  %79 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul141 = mul i32 %add140, %79
  %add142 = add i32 %76, %mul141
  store i32 %add142, ptr %l_offset.ascast, align 4, !tbaa !10
  %80 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx143 = getelementptr inbounds %struct.rocfft_complex, ptr %80, i64 9
  %81 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %82 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom144 = zext i32 %82 to i64
  %arrayidx145 = getelementptr inbounds %struct.rocfft_complex, ptr %81, i64 %idxprom144
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx145, ptr align 8 %arrayidx143, i64 16, i1 false), !tbaa.struct !48
  %83 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %84 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add146 = add i32 %84, 0
  %add147 = add i32 %add146, 14
  %div148 = udiv i32 %add147, 1
  %mul149 = mul i32 %div148, 6
  %85 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add150 = add i32 %85, 0
  %add151 = add i32 %add150, 14
  %rem152 = urem i32 %add151, 1
  %add153 = add i32 %mul149, %rem152
  %add154 = add i32 %add153, 4
  %86 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul155 = mul i32 %add154, %86
  %add156 = add i32 %83, %mul155
  store i32 %add156, ptr %l_offset.ascast, align 4, !tbaa !10
  %87 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx157 = getelementptr inbounds %struct.rocfft_complex, ptr %87, i64 10
  %88 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %89 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom158 = zext i32 %89 to i64
  %arrayidx159 = getelementptr inbounds %struct.rocfft_complex, ptr %88, i64 %idxprom158
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx159, ptr align 8 %arrayidx157, i64 16, i1 false), !tbaa.struct !48
  %90 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %91 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add160 = add i32 %91, 0
  %add161 = add i32 %add160, 14
  %div162 = udiv i32 %add161, 1
  %mul163 = mul i32 %div162, 6
  %92 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add164 = add i32 %92, 0
  %add165 = add i32 %add164, 14
  %rem166 = urem i32 %add165, 1
  %add167 = add i32 %mul163, %rem166
  %add168 = add i32 %add167, 5
  %93 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul169 = mul i32 %add168, %93
  %add170 = add i32 %90, %mul169
  store i32 %add170, ptr %l_offset.ascast, align 4, !tbaa !10
  %94 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx171 = getelementptr inbounds %struct.rocfft_complex, ptr %94, i64 11
  %95 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %96 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom172 = zext i32 %96 to i64
  %arrayidx173 = getelementptr inbounds %struct.rocfft_complex, ptr %95, i64 %idxprom172
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx173, ptr align 8 %arrayidx171, i64 16, i1 false), !tbaa.struct !48
  call void @_Z13__syncthreadsv() #18
  %97 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %98 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add174 = add i32 %98, 0
  %add175 = add i32 %add174, 0
  %add176 = add i32 %add175, 0
  %99 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul177 = mul i32 %add176, %99
  %add178 = add i32 %97, %mul177
  store i32 %add178, ptr %l_offset.ascast, align 4, !tbaa !10
  %100 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %101 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom179 = zext i32 %101 to i64
  %arrayidx180 = getelementptr inbounds %struct.rocfft_complex, ptr %100, i64 %idxprom179
  %102 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx181 = getelementptr inbounds %struct.rocfft_complex, ptr %102, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx181, ptr align 8 %arrayidx180, i64 16, i1 false), !tbaa.struct !48
  %103 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %104 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add182 = add i32 %104, 0
  %add183 = add i32 %add182, 0
  %add184 = add i32 %add183, 24
  %105 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul185 = mul i32 %add184, %105
  %add186 = add i32 %103, %mul185
  store i32 %add186, ptr %l_offset.ascast, align 4, !tbaa !10
  %106 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %107 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom187 = zext i32 %107 to i64
  %arrayidx188 = getelementptr inbounds %struct.rocfft_complex, ptr %106, i64 %idxprom187
  %108 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx189 = getelementptr inbounds %struct.rocfft_complex, ptr %108, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx189, ptr align 8 %arrayidx188, i64 16, i1 false), !tbaa.struct !48
  %109 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %110 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add190 = add i32 %110, 0
  %add191 = add i32 %add190, 0
  %add192 = add i32 %add191, 48
  %111 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul193 = mul i32 %add192, %111
  %add194 = add i32 %109, %mul193
  store i32 %add194, ptr %l_offset.ascast, align 4, !tbaa !10
  %112 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %113 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom195 = zext i32 %113 to i64
  %arrayidx196 = getelementptr inbounds %struct.rocfft_complex, ptr %112, i64 %idxprom195
  %114 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx197 = getelementptr inbounds %struct.rocfft_complex, ptr %114, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx197, ptr align 8 %arrayidx196, i64 16, i1 false), !tbaa.struct !48
  %115 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %116 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add198 = add i32 %116, 0
  %add199 = add i32 %add198, 0
  %add200 = add i32 %add199, 72
  %117 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul201 = mul i32 %add200, %117
  %add202 = add i32 %115, %mul201
  store i32 %add202, ptr %l_offset.ascast, align 4, !tbaa !10
  %118 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %119 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom203 = zext i32 %119 to i64
  %arrayidx204 = getelementptr inbounds %struct.rocfft_complex, ptr %118, i64 %idxprom203
  %120 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx205 = getelementptr inbounds %struct.rocfft_complex, ptr %120, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx205, ptr align 8 %arrayidx204, i64 16, i1 false), !tbaa.struct !48
  %121 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %122 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add206 = add i32 %122, 0
  %add207 = add i32 %add206, 0
  %add208 = add i32 %add207, 96
  %123 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul209 = mul i32 %add208, %123
  %add210 = add i32 %121, %mul209
  store i32 %add210, ptr %l_offset.ascast, align 4, !tbaa !10
  %124 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %125 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom211 = zext i32 %125 to i64
  %arrayidx212 = getelementptr inbounds %struct.rocfft_complex, ptr %124, i64 %idxprom211
  %126 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx213 = getelementptr inbounds %struct.rocfft_complex, ptr %126, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx213, ptr align 8 %arrayidx212, i64 16, i1 false), !tbaa.struct !48
  %127 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %128 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add214 = add i32 %128, 0
  %add215 = add i32 %add214, 0
  %add216 = add i32 %add215, 120
  %129 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul217 = mul i32 %add216, %129
  %add218 = add i32 %127, %mul217
  store i32 %add218, ptr %l_offset.ascast, align 4, !tbaa !10
  %130 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %131 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom219 = zext i32 %131 to i64
  %arrayidx220 = getelementptr inbounds %struct.rocfft_complex, ptr %130, i64 %idxprom219
  %132 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx221 = getelementptr inbounds %struct.rocfft_complex, ptr %132, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx221, ptr align 8 %arrayidx220, i64 16, i1 false), !tbaa.struct !48
  %133 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %134 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add222 = add i32 %134, 0
  %add223 = add i32 %add222, 0
  %add224 = add i32 %add223, 144
  %135 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul225 = mul i32 %add224, %135
  %add226 = add i32 %133, %mul225
  store i32 %add226, ptr %l_offset.ascast, align 4, !tbaa !10
  %136 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %137 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom227 = zext i32 %137 to i64
  %arrayidx228 = getelementptr inbounds %struct.rocfft_complex, ptr %136, i64 %idxprom227
  %138 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx229 = getelementptr inbounds %struct.rocfft_complex, ptr %138, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx229, ptr align 8 %arrayidx228, i64 16, i1 false), !tbaa.struct !48
  %139 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add230 = add i32 %139, 14
  %cmp = icmp ult i32 %add230, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %140 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %141 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add231 = add i32 %141, 14
  %add232 = add i32 %add231, 0
  %add233 = add i32 %add232, 0
  %142 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul234 = mul i32 %add233, %142
  %add235 = add i32 %140, %mul234
  store i32 %add235, ptr %l_offset.ascast, align 4, !tbaa !10
  %143 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %144 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom236 = zext i32 %144 to i64
  %arrayidx237 = getelementptr inbounds %struct.rocfft_complex, ptr %143, i64 %idxprom236
  %145 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx238 = getelementptr inbounds %struct.rocfft_complex, ptr %145, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx238, ptr align 8 %arrayidx237, i64 16, i1 false), !tbaa.struct !48
  %146 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %147 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add239 = add i32 %147, 14
  %add240 = add i32 %add239, 0
  %add241 = add i32 %add240, 24
  %148 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul242 = mul i32 %add241, %148
  %add243 = add i32 %146, %mul242
  store i32 %add243, ptr %l_offset.ascast, align 4, !tbaa !10
  %149 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %150 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom244 = zext i32 %150 to i64
  %arrayidx245 = getelementptr inbounds %struct.rocfft_complex, ptr %149, i64 %idxprom244
  %151 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx246 = getelementptr inbounds %struct.rocfft_complex, ptr %151, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx246, ptr align 8 %arrayidx245, i64 16, i1 false), !tbaa.struct !48
  %152 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %153 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add247 = add i32 %153, 14
  %add248 = add i32 %add247, 0
  %add249 = add i32 %add248, 48
  %154 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul250 = mul i32 %add249, %154
  %add251 = add i32 %152, %mul250
  store i32 %add251, ptr %l_offset.ascast, align 4, !tbaa !10
  %155 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %156 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom252 = zext i32 %156 to i64
  %arrayidx253 = getelementptr inbounds %struct.rocfft_complex, ptr %155, i64 %idxprom252
  %157 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx254 = getelementptr inbounds %struct.rocfft_complex, ptr %157, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx254, ptr align 8 %arrayidx253, i64 16, i1 false), !tbaa.struct !48
  %158 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %159 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add255 = add i32 %159, 14
  %add256 = add i32 %add255, 0
  %add257 = add i32 %add256, 72
  %160 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul258 = mul i32 %add257, %160
  %add259 = add i32 %158, %mul258
  store i32 %add259, ptr %l_offset.ascast, align 4, !tbaa !10
  %161 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %162 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom260 = zext i32 %162 to i64
  %arrayidx261 = getelementptr inbounds %struct.rocfft_complex, ptr %161, i64 %idxprom260
  %163 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx262 = getelementptr inbounds %struct.rocfft_complex, ptr %163, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx262, ptr align 8 %arrayidx261, i64 16, i1 false), !tbaa.struct !48
  %164 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %165 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add263 = add i32 %165, 14
  %add264 = add i32 %add263, 0
  %add265 = add i32 %add264, 96
  %166 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul266 = mul i32 %add265, %166
  %add267 = add i32 %164, %mul266
  store i32 %add267, ptr %l_offset.ascast, align 4, !tbaa !10
  %167 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %168 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom268 = zext i32 %168 to i64
  %arrayidx269 = getelementptr inbounds %struct.rocfft_complex, ptr %167, i64 %idxprom268
  %169 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx270 = getelementptr inbounds %struct.rocfft_complex, ptr %169, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx270, ptr align 8 %arrayidx269, i64 16, i1 false), !tbaa.struct !48
  %170 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %171 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add271 = add i32 %171, 14
  %add272 = add i32 %add271, 0
  %add273 = add i32 %add272, 120
  %172 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul274 = mul i32 %add273, %172
  %add275 = add i32 %170, %mul274
  store i32 %add275, ptr %l_offset.ascast, align 4, !tbaa !10
  %173 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %174 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom276 = zext i32 %174 to i64
  %arrayidx277 = getelementptr inbounds %struct.rocfft_complex, ptr %173, i64 %idxprom276
  %175 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx278 = getelementptr inbounds %struct.rocfft_complex, ptr %175, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx278, ptr align 8 %arrayidx277, i64 16, i1 false), !tbaa.struct !48
  %176 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %177 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add279 = add i32 %177, 14
  %add280 = add i32 %add279, 0
  %add281 = add i32 %add280, 144
  %178 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul282 = mul i32 %add281, %178
  %add283 = add i32 %176, %mul282
  store i32 %add283, ptr %l_offset.ascast, align 4, !tbaa !10
  %179 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %180 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom284 = zext i32 %180 to i64
  %arrayidx285 = getelementptr inbounds %struct.rocfft_complex, ptr %179, i64 %idxprom284
  %181 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx286 = getelementptr inbounds %struct.rocfft_complex, ptr %181, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx286, ptr align 8 %arrayidx285, i64 16, i1 false), !tbaa.struct !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %182 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %183 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add287 = add i32 %183, 0
  %add288 = add i32 %add287, 0
  %rem289 = urem i32 %add288, 6
  %mul290 = mul i32 6, %rem289
  %add291 = add i32 0, %mul290
  %idxprom292 = zext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds %struct.rocfft_complex, ptr %182, i64 %idxprom292
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx293, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %184 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx294 = getelementptr inbounds %struct.rocfft_complex, ptr %184, i64 1
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx294, i32 0, i32 0
  %185 = load double, ptr %x, align 8, !tbaa !51
  %x295 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %186 = load double, ptr %x295, align 8, !tbaa !51
  %mul296 = fmul contract double %185, %186
  %187 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx297 = getelementptr inbounds %struct.rocfft_complex, ptr %187, i64 1
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx297, i32 0, i32 1
  %188 = load double, ptr %y, align 8, !tbaa !53
  %y298 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %189 = load double, ptr %y298, align 8, !tbaa !53
  %mul299 = fmul contract double %188, %189
  %add300 = fadd contract double %mul296, %mul299
  %190 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx301 = getelementptr inbounds %struct.rocfft_complex, ptr %190, i64 1
  %y302 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx301, i32 0, i32 1
  %191 = load double, ptr %y302, align 8, !tbaa !53
  %x303 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %192 = load double, ptr %x303, align 8, !tbaa !51
  %mul304 = fmul contract double %191, %192
  %193 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx305 = getelementptr inbounds %struct.rocfft_complex, ptr %193, i64 1
  %x306 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx305, i32 0, i32 0
  %194 = load double, ptr %x306, align 8, !tbaa !51
  %y307 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %195 = load double, ptr %y307, align 8, !tbaa !53
  %mul308 = fmul contract double %194, %195
  %sub = fsub contract double %mul304, %mul308
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.ascast, double noundef %add300, double noundef %sub) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %196 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx309 = getelementptr inbounds %struct.rocfft_complex, ptr %196, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx309, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %197 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %198 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add310 = add i32 %198, 0
  %add311 = add i32 %add310, 0
  %rem312 = urem i32 %add311, 6
  %mul313 = mul i32 6, %rem312
  %add314 = add i32 1, %mul313
  %idxprom315 = zext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds %struct.rocfft_complex, ptr %197, i64 %idxprom315
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx316, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp317) #10
  %199 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx318 = getelementptr inbounds %struct.rocfft_complex, ptr %199, i64 2
  %x319 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx318, i32 0, i32 0
  %200 = load double, ptr %x319, align 8, !tbaa !51
  %x320 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %201 = load double, ptr %x320, align 8, !tbaa !51
  %mul321 = fmul contract double %200, %201
  %202 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx322 = getelementptr inbounds %struct.rocfft_complex, ptr %202, i64 2
  %y323 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx322, i32 0, i32 1
  %203 = load double, ptr %y323, align 8, !tbaa !53
  %y324 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %204 = load double, ptr %y324, align 8, !tbaa !53
  %mul325 = fmul contract double %203, %204
  %add326 = fadd contract double %mul321, %mul325
  %205 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx327 = getelementptr inbounds %struct.rocfft_complex, ptr %205, i64 2
  %y328 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx327, i32 0, i32 1
  %206 = load double, ptr %y328, align 8, !tbaa !53
  %x329 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %207 = load double, ptr %x329, align 8, !tbaa !51
  %mul330 = fmul contract double %206, %207
  %208 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx331 = getelementptr inbounds %struct.rocfft_complex, ptr %208, i64 2
  %x332 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx331, i32 0, i32 0
  %209 = load double, ptr %x332, align 8, !tbaa !51
  %y333 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %210 = load double, ptr %y333, align 8, !tbaa !53
  %mul334 = fmul contract double %209, %210
  %sub335 = fsub contract double %mul330, %mul334
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp317.ascast, double noundef %add326, double noundef %sub335) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp317.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp317) #10
  %211 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx336 = getelementptr inbounds %struct.rocfft_complex, ptr %211, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx336, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %212 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %213 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add337 = add i32 %213, 0
  %add338 = add i32 %add337, 0
  %rem339 = urem i32 %add338, 6
  %mul340 = mul i32 6, %rem339
  %add341 = add i32 2, %mul340
  %idxprom342 = zext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds %struct.rocfft_complex, ptr %212, i64 %idxprom342
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx343, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp344) #10
  %214 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx345 = getelementptr inbounds %struct.rocfft_complex, ptr %214, i64 3
  %x346 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx345, i32 0, i32 0
  %215 = load double, ptr %x346, align 8, !tbaa !51
  %x347 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %216 = load double, ptr %x347, align 8, !tbaa !51
  %mul348 = fmul contract double %215, %216
  %217 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx349 = getelementptr inbounds %struct.rocfft_complex, ptr %217, i64 3
  %y350 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx349, i32 0, i32 1
  %218 = load double, ptr %y350, align 8, !tbaa !53
  %y351 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %219 = load double, ptr %y351, align 8, !tbaa !53
  %mul352 = fmul contract double %218, %219
  %add353 = fadd contract double %mul348, %mul352
  %220 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx354 = getelementptr inbounds %struct.rocfft_complex, ptr %220, i64 3
  %y355 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx354, i32 0, i32 1
  %221 = load double, ptr %y355, align 8, !tbaa !53
  %x356 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %222 = load double, ptr %x356, align 8, !tbaa !51
  %mul357 = fmul contract double %221, %222
  %223 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx358 = getelementptr inbounds %struct.rocfft_complex, ptr %223, i64 3
  %x359 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx358, i32 0, i32 0
  %224 = load double, ptr %x359, align 8, !tbaa !51
  %y360 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %225 = load double, ptr %y360, align 8, !tbaa !53
  %mul361 = fmul contract double %224, %225
  %sub362 = fsub contract double %mul357, %mul361
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp344.ascast, double noundef %add353, double noundef %sub362) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp344.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp344) #10
  %226 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx363 = getelementptr inbounds %struct.rocfft_complex, ptr %226, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx363, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %227 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %228 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add364 = add i32 %228, 0
  %add365 = add i32 %add364, 0
  %rem366 = urem i32 %add365, 6
  %mul367 = mul i32 6, %rem366
  %add368 = add i32 3, %mul367
  %idxprom369 = zext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds %struct.rocfft_complex, ptr %227, i64 %idxprom369
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx370, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp371) #10
  %229 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx372 = getelementptr inbounds %struct.rocfft_complex, ptr %229, i64 4
  %x373 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx372, i32 0, i32 0
  %230 = load double, ptr %x373, align 8, !tbaa !51
  %x374 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %231 = load double, ptr %x374, align 8, !tbaa !51
  %mul375 = fmul contract double %230, %231
  %232 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx376 = getelementptr inbounds %struct.rocfft_complex, ptr %232, i64 4
  %y377 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx376, i32 0, i32 1
  %233 = load double, ptr %y377, align 8, !tbaa !53
  %y378 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %234 = load double, ptr %y378, align 8, !tbaa !53
  %mul379 = fmul contract double %233, %234
  %add380 = fadd contract double %mul375, %mul379
  %235 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx381 = getelementptr inbounds %struct.rocfft_complex, ptr %235, i64 4
  %y382 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx381, i32 0, i32 1
  %236 = load double, ptr %y382, align 8, !tbaa !53
  %x383 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %237 = load double, ptr %x383, align 8, !tbaa !51
  %mul384 = fmul contract double %236, %237
  %238 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx385 = getelementptr inbounds %struct.rocfft_complex, ptr %238, i64 4
  %x386 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx385, i32 0, i32 0
  %239 = load double, ptr %x386, align 8, !tbaa !51
  %y387 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %240 = load double, ptr %y387, align 8, !tbaa !53
  %mul388 = fmul contract double %239, %240
  %sub389 = fsub contract double %mul384, %mul388
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp371.ascast, double noundef %add380, double noundef %sub389) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp371.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp371) #10
  %241 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx390 = getelementptr inbounds %struct.rocfft_complex, ptr %241, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx390, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %242 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %243 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add391 = add i32 %243, 0
  %add392 = add i32 %add391, 0
  %rem393 = urem i32 %add392, 6
  %mul394 = mul i32 6, %rem393
  %add395 = add i32 4, %mul394
  %idxprom396 = zext i32 %add395 to i64
  %arrayidx397 = getelementptr inbounds %struct.rocfft_complex, ptr %242, i64 %idxprom396
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx397, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp398) #10
  %244 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx399 = getelementptr inbounds %struct.rocfft_complex, ptr %244, i64 5
  %x400 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx399, i32 0, i32 0
  %245 = load double, ptr %x400, align 8, !tbaa !51
  %x401 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %246 = load double, ptr %x401, align 8, !tbaa !51
  %mul402 = fmul contract double %245, %246
  %247 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx403 = getelementptr inbounds %struct.rocfft_complex, ptr %247, i64 5
  %y404 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx403, i32 0, i32 1
  %248 = load double, ptr %y404, align 8, !tbaa !53
  %y405 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %249 = load double, ptr %y405, align 8, !tbaa !53
  %mul406 = fmul contract double %248, %249
  %add407 = fadd contract double %mul402, %mul406
  %250 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx408 = getelementptr inbounds %struct.rocfft_complex, ptr %250, i64 5
  %y409 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx408, i32 0, i32 1
  %251 = load double, ptr %y409, align 8, !tbaa !53
  %x410 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %252 = load double, ptr %x410, align 8, !tbaa !51
  %mul411 = fmul contract double %251, %252
  %253 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx412 = getelementptr inbounds %struct.rocfft_complex, ptr %253, i64 5
  %x413 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx412, i32 0, i32 0
  %254 = load double, ptr %x413, align 8, !tbaa !51
  %y414 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %255 = load double, ptr %y414, align 8, !tbaa !53
  %mul415 = fmul contract double %254, %255
  %sub416 = fsub contract double %mul411, %mul415
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp398.ascast, double noundef %add407, double noundef %sub416) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp398.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp398) #10
  %256 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx417 = getelementptr inbounds %struct.rocfft_complex, ptr %256, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx417, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %257 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %258 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add418 = add i32 %258, 0
  %add419 = add i32 %add418, 0
  %rem420 = urem i32 %add419, 6
  %mul421 = mul i32 6, %rem420
  %add422 = add i32 5, %mul421
  %idxprom423 = zext i32 %add422 to i64
  %arrayidx424 = getelementptr inbounds %struct.rocfft_complex, ptr %257, i64 %idxprom423
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx424, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp425) #10
  %259 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx426 = getelementptr inbounds %struct.rocfft_complex, ptr %259, i64 6
  %x427 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx426, i32 0, i32 0
  %260 = load double, ptr %x427, align 8, !tbaa !51
  %x428 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %261 = load double, ptr %x428, align 8, !tbaa !51
  %mul429 = fmul contract double %260, %261
  %262 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx430 = getelementptr inbounds %struct.rocfft_complex, ptr %262, i64 6
  %y431 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx430, i32 0, i32 1
  %263 = load double, ptr %y431, align 8, !tbaa !53
  %y432 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %264 = load double, ptr %y432, align 8, !tbaa !53
  %mul433 = fmul contract double %263, %264
  %add434 = fadd contract double %mul429, %mul433
  %265 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx435 = getelementptr inbounds %struct.rocfft_complex, ptr %265, i64 6
  %y436 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx435, i32 0, i32 1
  %266 = load double, ptr %y436, align 8, !tbaa !53
  %x437 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %267 = load double, ptr %x437, align 8, !tbaa !51
  %mul438 = fmul contract double %266, %267
  %268 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx439 = getelementptr inbounds %struct.rocfft_complex, ptr %268, i64 6
  %x440 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx439, i32 0, i32 0
  %269 = load double, ptr %x440, align 8, !tbaa !51
  %y441 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %270 = load double, ptr %y441, align 8, !tbaa !53
  %mul442 = fmul contract double %269, %270
  %sub443 = fsub contract double %mul438, %mul442
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp425.ascast, double noundef %add434, double noundef %sub443) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp425.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp425) #10
  %271 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx444 = getelementptr inbounds %struct.rocfft_complex, ptr %271, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx444, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %272 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %273 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add445 = add i32 %273, 14
  %add446 = add i32 %add445, 0
  %rem447 = urem i32 %add446, 6
  %mul448 = mul i32 6, %rem447
  %add449 = add i32 0, %mul448
  %idxprom450 = zext i32 %add449 to i64
  %arrayidx451 = getelementptr inbounds %struct.rocfft_complex, ptr %272, i64 %idxprom450
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx451, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp452) #10
  %274 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx453 = getelementptr inbounds %struct.rocfft_complex, ptr %274, i64 8
  %x454 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx453, i32 0, i32 0
  %275 = load double, ptr %x454, align 8, !tbaa !51
  %x455 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %276 = load double, ptr %x455, align 8, !tbaa !51
  %mul456 = fmul contract double %275, %276
  %277 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx457 = getelementptr inbounds %struct.rocfft_complex, ptr %277, i64 8
  %y458 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx457, i32 0, i32 1
  %278 = load double, ptr %y458, align 8, !tbaa !53
  %y459 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %279 = load double, ptr %y459, align 8, !tbaa !53
  %mul460 = fmul contract double %278, %279
  %add461 = fadd contract double %mul456, %mul460
  %280 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx462 = getelementptr inbounds %struct.rocfft_complex, ptr %280, i64 8
  %y463 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx462, i32 0, i32 1
  %281 = load double, ptr %y463, align 8, !tbaa !53
  %x464 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %282 = load double, ptr %x464, align 8, !tbaa !51
  %mul465 = fmul contract double %281, %282
  %283 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx466 = getelementptr inbounds %struct.rocfft_complex, ptr %283, i64 8
  %x467 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx466, i32 0, i32 0
  %284 = load double, ptr %x467, align 8, !tbaa !51
  %y468 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %285 = load double, ptr %y468, align 8, !tbaa !53
  %mul469 = fmul contract double %284, %285
  %sub470 = fsub contract double %mul465, %mul469
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp452.ascast, double noundef %add461, double noundef %sub470) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp452.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp452) #10
  %286 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx471 = getelementptr inbounds %struct.rocfft_complex, ptr %286, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx471, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %287 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %288 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add472 = add i32 %288, 14
  %add473 = add i32 %add472, 0
  %rem474 = urem i32 %add473, 6
  %mul475 = mul i32 6, %rem474
  %add476 = add i32 1, %mul475
  %idxprom477 = zext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds %struct.rocfft_complex, ptr %287, i64 %idxprom477
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx478, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp479) #10
  %289 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx480 = getelementptr inbounds %struct.rocfft_complex, ptr %289, i64 9
  %x481 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx480, i32 0, i32 0
  %290 = load double, ptr %x481, align 8, !tbaa !51
  %x482 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %291 = load double, ptr %x482, align 8, !tbaa !51
  %mul483 = fmul contract double %290, %291
  %292 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx484 = getelementptr inbounds %struct.rocfft_complex, ptr %292, i64 9
  %y485 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx484, i32 0, i32 1
  %293 = load double, ptr %y485, align 8, !tbaa !53
  %y486 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %294 = load double, ptr %y486, align 8, !tbaa !53
  %mul487 = fmul contract double %293, %294
  %add488 = fadd contract double %mul483, %mul487
  %295 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx489 = getelementptr inbounds %struct.rocfft_complex, ptr %295, i64 9
  %y490 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx489, i32 0, i32 1
  %296 = load double, ptr %y490, align 8, !tbaa !53
  %x491 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %297 = load double, ptr %x491, align 8, !tbaa !51
  %mul492 = fmul contract double %296, %297
  %298 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx493 = getelementptr inbounds %struct.rocfft_complex, ptr %298, i64 9
  %x494 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx493, i32 0, i32 0
  %299 = load double, ptr %x494, align 8, !tbaa !51
  %y495 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %300 = load double, ptr %y495, align 8, !tbaa !53
  %mul496 = fmul contract double %299, %300
  %sub497 = fsub contract double %mul492, %mul496
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp479.ascast, double noundef %add488, double noundef %sub497) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp479.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp479) #10
  %301 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx498 = getelementptr inbounds %struct.rocfft_complex, ptr %301, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx498, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %302 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %303 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add499 = add i32 %303, 14
  %add500 = add i32 %add499, 0
  %rem501 = urem i32 %add500, 6
  %mul502 = mul i32 6, %rem501
  %add503 = add i32 2, %mul502
  %idxprom504 = zext i32 %add503 to i64
  %arrayidx505 = getelementptr inbounds %struct.rocfft_complex, ptr %302, i64 %idxprom504
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx505, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp506) #10
  %304 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx507 = getelementptr inbounds %struct.rocfft_complex, ptr %304, i64 10
  %x508 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx507, i32 0, i32 0
  %305 = load double, ptr %x508, align 8, !tbaa !51
  %x509 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %306 = load double, ptr %x509, align 8, !tbaa !51
  %mul510 = fmul contract double %305, %306
  %307 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx511 = getelementptr inbounds %struct.rocfft_complex, ptr %307, i64 10
  %y512 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx511, i32 0, i32 1
  %308 = load double, ptr %y512, align 8, !tbaa !53
  %y513 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %309 = load double, ptr %y513, align 8, !tbaa !53
  %mul514 = fmul contract double %308, %309
  %add515 = fadd contract double %mul510, %mul514
  %310 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx516 = getelementptr inbounds %struct.rocfft_complex, ptr %310, i64 10
  %y517 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx516, i32 0, i32 1
  %311 = load double, ptr %y517, align 8, !tbaa !53
  %x518 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %312 = load double, ptr %x518, align 8, !tbaa !51
  %mul519 = fmul contract double %311, %312
  %313 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx520 = getelementptr inbounds %struct.rocfft_complex, ptr %313, i64 10
  %x521 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx520, i32 0, i32 0
  %314 = load double, ptr %x521, align 8, !tbaa !51
  %y522 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %315 = load double, ptr %y522, align 8, !tbaa !53
  %mul523 = fmul contract double %314, %315
  %sub524 = fsub contract double %mul519, %mul523
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp506.ascast, double noundef %add515, double noundef %sub524) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp506.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp506) #10
  %316 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx525 = getelementptr inbounds %struct.rocfft_complex, ptr %316, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx525, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %317 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %318 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add526 = add i32 %318, 14
  %add527 = add i32 %add526, 0
  %rem528 = urem i32 %add527, 6
  %mul529 = mul i32 6, %rem528
  %add530 = add i32 3, %mul529
  %idxprom531 = zext i32 %add530 to i64
  %arrayidx532 = getelementptr inbounds %struct.rocfft_complex, ptr %317, i64 %idxprom531
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx532, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp533) #10
  %319 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx534 = getelementptr inbounds %struct.rocfft_complex, ptr %319, i64 11
  %x535 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx534, i32 0, i32 0
  %320 = load double, ptr %x535, align 8, !tbaa !51
  %x536 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %321 = load double, ptr %x536, align 8, !tbaa !51
  %mul537 = fmul contract double %320, %321
  %322 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx538 = getelementptr inbounds %struct.rocfft_complex, ptr %322, i64 11
  %y539 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx538, i32 0, i32 1
  %323 = load double, ptr %y539, align 8, !tbaa !53
  %y540 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %324 = load double, ptr %y540, align 8, !tbaa !53
  %mul541 = fmul contract double %323, %324
  %add542 = fadd contract double %mul537, %mul541
  %325 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx543 = getelementptr inbounds %struct.rocfft_complex, ptr %325, i64 11
  %y544 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx543, i32 0, i32 1
  %326 = load double, ptr %y544, align 8, !tbaa !53
  %x545 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %327 = load double, ptr %x545, align 8, !tbaa !51
  %mul546 = fmul contract double %326, %327
  %328 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx547 = getelementptr inbounds %struct.rocfft_complex, ptr %328, i64 11
  %x548 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx547, i32 0, i32 0
  %329 = load double, ptr %x548, align 8, !tbaa !51
  %y549 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %330 = load double, ptr %y549, align 8, !tbaa !53
  %mul550 = fmul contract double %329, %330
  %sub551 = fsub contract double %mul546, %mul550
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp533.ascast, double noundef %add542, double noundef %sub551) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp533.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp533) #10
  %331 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx552 = getelementptr inbounds %struct.rocfft_complex, ptr %331, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx552, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %332 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %333 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add553 = add i32 %333, 14
  %add554 = add i32 %add553, 0
  %rem555 = urem i32 %add554, 6
  %mul556 = mul i32 6, %rem555
  %add557 = add i32 4, %mul556
  %idxprom558 = zext i32 %add557 to i64
  %arrayidx559 = getelementptr inbounds %struct.rocfft_complex, ptr %332, i64 %idxprom558
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx559, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp560) #10
  %334 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx561 = getelementptr inbounds %struct.rocfft_complex, ptr %334, i64 12
  %x562 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx561, i32 0, i32 0
  %335 = load double, ptr %x562, align 8, !tbaa !51
  %x563 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %336 = load double, ptr %x563, align 8, !tbaa !51
  %mul564 = fmul contract double %335, %336
  %337 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx565 = getelementptr inbounds %struct.rocfft_complex, ptr %337, i64 12
  %y566 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx565, i32 0, i32 1
  %338 = load double, ptr %y566, align 8, !tbaa !53
  %y567 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %339 = load double, ptr %y567, align 8, !tbaa !53
  %mul568 = fmul contract double %338, %339
  %add569 = fadd contract double %mul564, %mul568
  %340 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx570 = getelementptr inbounds %struct.rocfft_complex, ptr %340, i64 12
  %y571 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx570, i32 0, i32 1
  %341 = load double, ptr %y571, align 8, !tbaa !53
  %x572 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %342 = load double, ptr %x572, align 8, !tbaa !51
  %mul573 = fmul contract double %341, %342
  %343 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx574 = getelementptr inbounds %struct.rocfft_complex, ptr %343, i64 12
  %x575 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx574, i32 0, i32 0
  %344 = load double, ptr %x575, align 8, !tbaa !51
  %y576 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %345 = load double, ptr %y576, align 8, !tbaa !53
  %mul577 = fmul contract double %344, %345
  %sub578 = fsub contract double %mul573, %mul577
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp560.ascast, double noundef %add569, double noundef %sub578) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp560.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp560) #10
  %346 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx579 = getelementptr inbounds %struct.rocfft_complex, ptr %346, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx579, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %347 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %348 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add580 = add i32 %348, 14
  %add581 = add i32 %add580, 0
  %rem582 = urem i32 %add581, 6
  %mul583 = mul i32 6, %rem582
  %add584 = add i32 5, %mul583
  %idxprom585 = zext i32 %add584 to i64
  %arrayidx586 = getelementptr inbounds %struct.rocfft_complex, ptr %347, i64 %idxprom585
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx586, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp587) #10
  %349 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx588 = getelementptr inbounds %struct.rocfft_complex, ptr %349, i64 13
  %x589 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx588, i32 0, i32 0
  %350 = load double, ptr %x589, align 8, !tbaa !51
  %x590 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %351 = load double, ptr %x590, align 8, !tbaa !51
  %mul591 = fmul contract double %350, %351
  %352 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx592 = getelementptr inbounds %struct.rocfft_complex, ptr %352, i64 13
  %y593 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx592, i32 0, i32 1
  %353 = load double, ptr %y593, align 8, !tbaa !53
  %y594 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %354 = load double, ptr %y594, align 8, !tbaa !53
  %mul595 = fmul contract double %353, %354
  %add596 = fadd contract double %mul591, %mul595
  %355 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx597 = getelementptr inbounds %struct.rocfft_complex, ptr %355, i64 13
  %y598 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx597, i32 0, i32 1
  %356 = load double, ptr %y598, align 8, !tbaa !53
  %x599 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %357 = load double, ptr %x599, align 8, !tbaa !51
  %mul600 = fmul contract double %356, %357
  %358 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx601 = getelementptr inbounds %struct.rocfft_complex, ptr %358, i64 13
  %x602 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx601, i32 0, i32 0
  %359 = load double, ptr %x602, align 8, !tbaa !51
  %y603 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %360 = load double, ptr %y603, align 8, !tbaa !53
  %mul604 = fmul contract double %359, %360
  %sub605 = fsub contract double %mul600, %mul604
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp587.ascast, double noundef %add596, double noundef %sub605) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp587.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp587) #10
  %361 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx606 = getelementptr inbounds %struct.rocfft_complex, ptr %361, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx606, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %362 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr607 = getelementptr inbounds %struct.rocfft_complex, ptr %362, i64 0
  %363 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr608 = getelementptr inbounds %struct.rocfft_complex, ptr %363, i64 1
  %364 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr609 = getelementptr inbounds %struct.rocfft_complex, ptr %364, i64 2
  %365 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr610 = getelementptr inbounds %struct.rocfft_complex, ptr %365, i64 3
  %366 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr611 = getelementptr inbounds %struct.rocfft_complex, ptr %366, i64 4
  %367 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr612 = getelementptr inbounds %struct.rocfft_complex, ptr %367, i64 5
  %368 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr613 = getelementptr inbounds %struct.rocfft_complex, ptr %368, i64 6
  call void @_Z9InvRad7B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_S3_(ptr noundef %add.ptr607, ptr noundef %add.ptr608, ptr noundef %add.ptr609, ptr noundef %add.ptr610, ptr noundef %add.ptr611, ptr noundef %add.ptr612, ptr noundef %add.ptr613) #18
  %369 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr614 = getelementptr inbounds %struct.rocfft_complex, ptr %369, i64 7
  %370 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr615 = getelementptr inbounds %struct.rocfft_complex, ptr %370, i64 8
  %371 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr616 = getelementptr inbounds %struct.rocfft_complex, ptr %371, i64 9
  %372 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr617 = getelementptr inbounds %struct.rocfft_complex, ptr %372, i64 10
  %373 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr618 = getelementptr inbounds %struct.rocfft_complex, ptr %373, i64 11
  %374 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr619 = getelementptr inbounds %struct.rocfft_complex, ptr %374, i64 12
  %375 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr620 = getelementptr inbounds %struct.rocfft_complex, ptr %375, i64 13
  call void @_Z9InvRad7B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_S3_(ptr noundef %add.ptr614, ptr noundef %add.ptr615, ptr noundef %add.ptr616, ptr noundef %add.ptr617, ptr noundef %add.ptr618, ptr noundef %add.ptr619, ptr noundef %add.ptr620) #18
  call void @_Z13__syncthreadsv() #18
  %376 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %377 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add621 = add i32 %377, 0
  %add622 = add i32 %add621, 0
  %div623 = udiv i32 %add622, 6
  %mul624 = mul i32 %div623, 42
  %378 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add625 = add i32 %378, 0
  %add626 = add i32 %add625, 0
  %rem627 = urem i32 %add626, 6
  %add628 = add i32 %mul624, %rem627
  %add629 = add i32 %add628, 0
  %379 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul630 = mul i32 %add629, %379
  %add631 = add i32 %376, %mul630
  store i32 %add631, ptr %l_offset.ascast, align 4, !tbaa !10
  %380 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx632 = getelementptr inbounds %struct.rocfft_complex, ptr %380, i64 0
  %381 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %382 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom633 = zext i32 %382 to i64
  %arrayidx634 = getelementptr inbounds %struct.rocfft_complex, ptr %381, i64 %idxprom633
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx634, ptr align 8 %arrayidx632, i64 16, i1 false), !tbaa.struct !48
  %383 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %384 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add635 = add i32 %384, 0
  %add636 = add i32 %add635, 0
  %div637 = udiv i32 %add636, 6
  %mul638 = mul i32 %div637, 42
  %385 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add639 = add i32 %385, 0
  %add640 = add i32 %add639, 0
  %rem641 = urem i32 %add640, 6
  %add642 = add i32 %mul638, %rem641
  %add643 = add i32 %add642, 6
  %386 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul644 = mul i32 %add643, %386
  %add645 = add i32 %383, %mul644
  store i32 %add645, ptr %l_offset.ascast, align 4, !tbaa !10
  %387 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx646 = getelementptr inbounds %struct.rocfft_complex, ptr %387, i64 1
  %388 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %389 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom647 = zext i32 %389 to i64
  %arrayidx648 = getelementptr inbounds %struct.rocfft_complex, ptr %388, i64 %idxprom647
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx648, ptr align 8 %arrayidx646, i64 16, i1 false), !tbaa.struct !48
  %390 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %391 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add649 = add i32 %391, 0
  %add650 = add i32 %add649, 0
  %div651 = udiv i32 %add650, 6
  %mul652 = mul i32 %div651, 42
  %392 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add653 = add i32 %392, 0
  %add654 = add i32 %add653, 0
  %rem655 = urem i32 %add654, 6
  %add656 = add i32 %mul652, %rem655
  %add657 = add i32 %add656, 12
  %393 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul658 = mul i32 %add657, %393
  %add659 = add i32 %390, %mul658
  store i32 %add659, ptr %l_offset.ascast, align 4, !tbaa !10
  %394 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx660 = getelementptr inbounds %struct.rocfft_complex, ptr %394, i64 2
  %395 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %396 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom661 = zext i32 %396 to i64
  %arrayidx662 = getelementptr inbounds %struct.rocfft_complex, ptr %395, i64 %idxprom661
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx662, ptr align 8 %arrayidx660, i64 16, i1 false), !tbaa.struct !48
  %397 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %398 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add663 = add i32 %398, 0
  %add664 = add i32 %add663, 0
  %div665 = udiv i32 %add664, 6
  %mul666 = mul i32 %div665, 42
  %399 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add667 = add i32 %399, 0
  %add668 = add i32 %add667, 0
  %rem669 = urem i32 %add668, 6
  %add670 = add i32 %mul666, %rem669
  %add671 = add i32 %add670, 18
  %400 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul672 = mul i32 %add671, %400
  %add673 = add i32 %397, %mul672
  store i32 %add673, ptr %l_offset.ascast, align 4, !tbaa !10
  %401 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx674 = getelementptr inbounds %struct.rocfft_complex, ptr %401, i64 3
  %402 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %403 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom675 = zext i32 %403 to i64
  %arrayidx676 = getelementptr inbounds %struct.rocfft_complex, ptr %402, i64 %idxprom675
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx676, ptr align 8 %arrayidx674, i64 16, i1 false), !tbaa.struct !48
  %404 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %405 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add677 = add i32 %405, 0
  %add678 = add i32 %add677, 0
  %div679 = udiv i32 %add678, 6
  %mul680 = mul i32 %div679, 42
  %406 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add681 = add i32 %406, 0
  %add682 = add i32 %add681, 0
  %rem683 = urem i32 %add682, 6
  %add684 = add i32 %mul680, %rem683
  %add685 = add i32 %add684, 24
  %407 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul686 = mul i32 %add685, %407
  %add687 = add i32 %404, %mul686
  store i32 %add687, ptr %l_offset.ascast, align 4, !tbaa !10
  %408 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx688 = getelementptr inbounds %struct.rocfft_complex, ptr %408, i64 4
  %409 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %410 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom689 = zext i32 %410 to i64
  %arrayidx690 = getelementptr inbounds %struct.rocfft_complex, ptr %409, i64 %idxprom689
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx690, ptr align 8 %arrayidx688, i64 16, i1 false), !tbaa.struct !48
  %411 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %412 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add691 = add i32 %412, 0
  %add692 = add i32 %add691, 0
  %div693 = udiv i32 %add692, 6
  %mul694 = mul i32 %div693, 42
  %413 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add695 = add i32 %413, 0
  %add696 = add i32 %add695, 0
  %rem697 = urem i32 %add696, 6
  %add698 = add i32 %mul694, %rem697
  %add699 = add i32 %add698, 30
  %414 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul700 = mul i32 %add699, %414
  %add701 = add i32 %411, %mul700
  store i32 %add701, ptr %l_offset.ascast, align 4, !tbaa !10
  %415 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx702 = getelementptr inbounds %struct.rocfft_complex, ptr %415, i64 5
  %416 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %417 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom703 = zext i32 %417 to i64
  %arrayidx704 = getelementptr inbounds %struct.rocfft_complex, ptr %416, i64 %idxprom703
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx704, ptr align 8 %arrayidx702, i64 16, i1 false), !tbaa.struct !48
  %418 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %419 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add705 = add i32 %419, 0
  %add706 = add i32 %add705, 0
  %div707 = udiv i32 %add706, 6
  %mul708 = mul i32 %div707, 42
  %420 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add709 = add i32 %420, 0
  %add710 = add i32 %add709, 0
  %rem711 = urem i32 %add710, 6
  %add712 = add i32 %mul708, %rem711
  %add713 = add i32 %add712, 36
  %421 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul714 = mul i32 %add713, %421
  %add715 = add i32 %418, %mul714
  store i32 %add715, ptr %l_offset.ascast, align 4, !tbaa !10
  %422 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx716 = getelementptr inbounds %struct.rocfft_complex, ptr %422, i64 6
  %423 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %424 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom717 = zext i32 %424 to i64
  %arrayidx718 = getelementptr inbounds %struct.rocfft_complex, ptr %423, i64 %idxprom717
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx718, ptr align 8 %arrayidx716, i64 16, i1 false), !tbaa.struct !48
  %425 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add719 = add i32 %425, 14
  %cmp720 = icmp ult i32 %add719, 24
  br i1 %cmp720, label %if.then721, label %if.end820

if.then721:                                       ; preds = %if.end
  %426 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %427 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add722 = add i32 %427, 14
  %add723 = add i32 %add722, 0
  %div724 = udiv i32 %add723, 6
  %mul725 = mul i32 %div724, 42
  %428 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add726 = add i32 %428, 14
  %add727 = add i32 %add726, 0
  %rem728 = urem i32 %add727, 6
  %add729 = add i32 %mul725, %rem728
  %add730 = add i32 %add729, 0
  %429 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul731 = mul i32 %add730, %429
  %add732 = add i32 %426, %mul731
  store i32 %add732, ptr %l_offset.ascast, align 4, !tbaa !10
  %430 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx733 = getelementptr inbounds %struct.rocfft_complex, ptr %430, i64 7
  %431 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %432 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom734 = zext i32 %432 to i64
  %arrayidx735 = getelementptr inbounds %struct.rocfft_complex, ptr %431, i64 %idxprom734
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx735, ptr align 8 %arrayidx733, i64 16, i1 false), !tbaa.struct !48
  %433 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %434 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add736 = add i32 %434, 14
  %add737 = add i32 %add736, 0
  %div738 = udiv i32 %add737, 6
  %mul739 = mul i32 %div738, 42
  %435 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add740 = add i32 %435, 14
  %add741 = add i32 %add740, 0
  %rem742 = urem i32 %add741, 6
  %add743 = add i32 %mul739, %rem742
  %add744 = add i32 %add743, 6
  %436 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul745 = mul i32 %add744, %436
  %add746 = add i32 %433, %mul745
  store i32 %add746, ptr %l_offset.ascast, align 4, !tbaa !10
  %437 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx747 = getelementptr inbounds %struct.rocfft_complex, ptr %437, i64 8
  %438 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %439 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom748 = zext i32 %439 to i64
  %arrayidx749 = getelementptr inbounds %struct.rocfft_complex, ptr %438, i64 %idxprom748
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx749, ptr align 8 %arrayidx747, i64 16, i1 false), !tbaa.struct !48
  %440 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %441 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add750 = add i32 %441, 14
  %add751 = add i32 %add750, 0
  %div752 = udiv i32 %add751, 6
  %mul753 = mul i32 %div752, 42
  %442 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add754 = add i32 %442, 14
  %add755 = add i32 %add754, 0
  %rem756 = urem i32 %add755, 6
  %add757 = add i32 %mul753, %rem756
  %add758 = add i32 %add757, 12
  %443 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul759 = mul i32 %add758, %443
  %add760 = add i32 %440, %mul759
  store i32 %add760, ptr %l_offset.ascast, align 4, !tbaa !10
  %444 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx761 = getelementptr inbounds %struct.rocfft_complex, ptr %444, i64 9
  %445 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %446 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom762 = zext i32 %446 to i64
  %arrayidx763 = getelementptr inbounds %struct.rocfft_complex, ptr %445, i64 %idxprom762
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx763, ptr align 8 %arrayidx761, i64 16, i1 false), !tbaa.struct !48
  %447 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %448 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add764 = add i32 %448, 14
  %add765 = add i32 %add764, 0
  %div766 = udiv i32 %add765, 6
  %mul767 = mul i32 %div766, 42
  %449 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add768 = add i32 %449, 14
  %add769 = add i32 %add768, 0
  %rem770 = urem i32 %add769, 6
  %add771 = add i32 %mul767, %rem770
  %add772 = add i32 %add771, 18
  %450 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul773 = mul i32 %add772, %450
  %add774 = add i32 %447, %mul773
  store i32 %add774, ptr %l_offset.ascast, align 4, !tbaa !10
  %451 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx775 = getelementptr inbounds %struct.rocfft_complex, ptr %451, i64 10
  %452 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %453 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom776 = zext i32 %453 to i64
  %arrayidx777 = getelementptr inbounds %struct.rocfft_complex, ptr %452, i64 %idxprom776
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx777, ptr align 8 %arrayidx775, i64 16, i1 false), !tbaa.struct !48
  %454 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %455 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add778 = add i32 %455, 14
  %add779 = add i32 %add778, 0
  %div780 = udiv i32 %add779, 6
  %mul781 = mul i32 %div780, 42
  %456 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add782 = add i32 %456, 14
  %add783 = add i32 %add782, 0
  %rem784 = urem i32 %add783, 6
  %add785 = add i32 %mul781, %rem784
  %add786 = add i32 %add785, 24
  %457 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul787 = mul i32 %add786, %457
  %add788 = add i32 %454, %mul787
  store i32 %add788, ptr %l_offset.ascast, align 4, !tbaa !10
  %458 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx789 = getelementptr inbounds %struct.rocfft_complex, ptr %458, i64 11
  %459 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %460 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom790 = zext i32 %460 to i64
  %arrayidx791 = getelementptr inbounds %struct.rocfft_complex, ptr %459, i64 %idxprom790
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx791, ptr align 8 %arrayidx789, i64 16, i1 false), !tbaa.struct !48
  %461 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %462 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add792 = add i32 %462, 14
  %add793 = add i32 %add792, 0
  %div794 = udiv i32 %add793, 6
  %mul795 = mul i32 %div794, 42
  %463 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add796 = add i32 %463, 14
  %add797 = add i32 %add796, 0
  %rem798 = urem i32 %add797, 6
  %add799 = add i32 %mul795, %rem798
  %add800 = add i32 %add799, 30
  %464 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul801 = mul i32 %add800, %464
  %add802 = add i32 %461, %mul801
  store i32 %add802, ptr %l_offset.ascast, align 4, !tbaa !10
  %465 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx803 = getelementptr inbounds %struct.rocfft_complex, ptr %465, i64 12
  %466 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %467 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom804 = zext i32 %467 to i64
  %arrayidx805 = getelementptr inbounds %struct.rocfft_complex, ptr %466, i64 %idxprom804
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx805, ptr align 8 %arrayidx803, i64 16, i1 false), !tbaa.struct !48
  %468 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %469 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add806 = add i32 %469, 14
  %add807 = add i32 %add806, 0
  %div808 = udiv i32 %add807, 6
  %mul809 = mul i32 %div808, 42
  %470 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add810 = add i32 %470, 14
  %add811 = add i32 %add810, 0
  %rem812 = urem i32 %add811, 6
  %add813 = add i32 %mul809, %rem812
  %add814 = add i32 %add813, 36
  %471 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul815 = mul i32 %add814, %471
  %add816 = add i32 %468, %mul815
  store i32 %add816, ptr %l_offset.ascast, align 4, !tbaa !10
  %472 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx817 = getelementptr inbounds %struct.rocfft_complex, ptr %472, i64 13
  %473 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %474 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom818 = zext i32 %474 to i64
  %arrayidx819 = getelementptr inbounds %struct.rocfft_complex, ptr %473, i64 %idxprom818
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx819, ptr align 8 %arrayidx817, i64 16, i1 false), !tbaa.struct !48
  br label %if.end820

if.end820:                                        ; preds = %if.then721, %if.end
  call void @_Z13__syncthreadsv() #18
  %475 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %476 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add821 = add i32 %476, 0
  %add822 = add i32 %add821, 0
  %add823 = add i32 %add822, 0
  %477 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul824 = mul i32 %add823, %477
  %add825 = add i32 %475, %mul824
  store i32 %add825, ptr %l_offset.ascast, align 4, !tbaa !10
  %478 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %479 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom826 = zext i32 %479 to i64
  %arrayidx827 = getelementptr inbounds %struct.rocfft_complex, ptr %478, i64 %idxprom826
  %480 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx828 = getelementptr inbounds %struct.rocfft_complex, ptr %480, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx828, ptr align 8 %arrayidx827, i64 16, i1 false), !tbaa.struct !48
  %481 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %482 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add829 = add i32 %482, 0
  %add830 = add i32 %add829, 0
  %add831 = add i32 %add830, 84
  %483 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul832 = mul i32 %add831, %483
  %add833 = add i32 %481, %mul832
  store i32 %add833, ptr %l_offset.ascast, align 4, !tbaa !10
  %484 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %485 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom834 = zext i32 %485 to i64
  %arrayidx835 = getelementptr inbounds %struct.rocfft_complex, ptr %484, i64 %idxprom834
  %486 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx836 = getelementptr inbounds %struct.rocfft_complex, ptr %486, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx836, ptr align 8 %arrayidx835, i64 16, i1 false), !tbaa.struct !48
  %487 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %488 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add837 = add i32 %488, 0
  %add838 = add i32 %add837, 14
  %add839 = add i32 %add838, 0
  %489 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul840 = mul i32 %add839, %489
  %add841 = add i32 %487, %mul840
  store i32 %add841, ptr %l_offset.ascast, align 4, !tbaa !10
  %490 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %491 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom842 = zext i32 %491 to i64
  %arrayidx843 = getelementptr inbounds %struct.rocfft_complex, ptr %490, i64 %idxprom842
  %492 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx844 = getelementptr inbounds %struct.rocfft_complex, ptr %492, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx844, ptr align 8 %arrayidx843, i64 16, i1 false), !tbaa.struct !48
  %493 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %494 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add845 = add i32 %494, 0
  %add846 = add i32 %add845, 14
  %add847 = add i32 %add846, 84
  %495 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul848 = mul i32 %add847, %495
  %add849 = add i32 %493, %mul848
  store i32 %add849, ptr %l_offset.ascast, align 4, !tbaa !10
  %496 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %497 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom850 = zext i32 %497 to i64
  %arrayidx851 = getelementptr inbounds %struct.rocfft_complex, ptr %496, i64 %idxprom850
  %498 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx852 = getelementptr inbounds %struct.rocfft_complex, ptr %498, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx852, ptr align 8 %arrayidx851, i64 16, i1 false), !tbaa.struct !48
  %499 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %500 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add853 = add i32 %500, 0
  %add854 = add i32 %add853, 28
  %add855 = add i32 %add854, 0
  %501 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul856 = mul i32 %add855, %501
  %add857 = add i32 %499, %mul856
  store i32 %add857, ptr %l_offset.ascast, align 4, !tbaa !10
  %502 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %503 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom858 = zext i32 %503 to i64
  %arrayidx859 = getelementptr inbounds %struct.rocfft_complex, ptr %502, i64 %idxprom858
  %504 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx860 = getelementptr inbounds %struct.rocfft_complex, ptr %504, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx860, ptr align 8 %arrayidx859, i64 16, i1 false), !tbaa.struct !48
  %505 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %506 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add861 = add i32 %506, 0
  %add862 = add i32 %add861, 28
  %add863 = add i32 %add862, 84
  %507 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul864 = mul i32 %add863, %507
  %add865 = add i32 %505, %mul864
  store i32 %add865, ptr %l_offset.ascast, align 4, !tbaa !10
  %508 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %509 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom866 = zext i32 %509 to i64
  %arrayidx867 = getelementptr inbounds %struct.rocfft_complex, ptr %508, i64 %idxprom866
  %510 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx868 = getelementptr inbounds %struct.rocfft_complex, ptr %510, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx868, ptr align 8 %arrayidx867, i64 16, i1 false), !tbaa.struct !48
  %511 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %512 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add869 = add i32 %512, 0
  %add870 = add i32 %add869, 42
  %add871 = add i32 %add870, 0
  %513 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul872 = mul i32 %add871, %513
  %add873 = add i32 %511, %mul872
  store i32 %add873, ptr %l_offset.ascast, align 4, !tbaa !10
  %514 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %515 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom874 = zext i32 %515 to i64
  %arrayidx875 = getelementptr inbounds %struct.rocfft_complex, ptr %514, i64 %idxprom874
  %516 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx876 = getelementptr inbounds %struct.rocfft_complex, ptr %516, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx876, ptr align 8 %arrayidx875, i64 16, i1 false), !tbaa.struct !48
  %517 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %518 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add877 = add i32 %518, 0
  %add878 = add i32 %add877, 42
  %add879 = add i32 %add878, 84
  %519 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul880 = mul i32 %add879, %519
  %add881 = add i32 %517, %mul880
  store i32 %add881, ptr %l_offset.ascast, align 4, !tbaa !10
  %520 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %521 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom882 = zext i32 %521 to i64
  %arrayidx883 = getelementptr inbounds %struct.rocfft_complex, ptr %520, i64 %idxprom882
  %522 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx884 = getelementptr inbounds %struct.rocfft_complex, ptr %522, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx884, ptr align 8 %arrayidx883, i64 16, i1 false), !tbaa.struct !48
  %523 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %524 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add885 = add i32 %524, 0
  %add886 = add i32 %add885, 56
  %add887 = add i32 %add886, 0
  %525 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul888 = mul i32 %add887, %525
  %add889 = add i32 %523, %mul888
  store i32 %add889, ptr %l_offset.ascast, align 4, !tbaa !10
  %526 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %527 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom890 = zext i32 %527 to i64
  %arrayidx891 = getelementptr inbounds %struct.rocfft_complex, ptr %526, i64 %idxprom890
  %528 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx892 = getelementptr inbounds %struct.rocfft_complex, ptr %528, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx892, ptr align 8 %arrayidx891, i64 16, i1 false), !tbaa.struct !48
  %529 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %530 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add893 = add i32 %530, 0
  %add894 = add i32 %add893, 56
  %add895 = add i32 %add894, 84
  %531 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul896 = mul i32 %add895, %531
  %add897 = add i32 %529, %mul896
  store i32 %add897, ptr %l_offset.ascast, align 4, !tbaa !10
  %532 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %533 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom898 = zext i32 %533 to i64
  %arrayidx899 = getelementptr inbounds %struct.rocfft_complex, ptr %532, i64 %idxprom898
  %534 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx900 = getelementptr inbounds %struct.rocfft_complex, ptr %534, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx900, ptr align 8 %arrayidx899, i64 16, i1 false), !tbaa.struct !48
  %535 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %536 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add901 = add i32 %536, 0
  %add902 = add i32 %add901, 70
  %add903 = add i32 %add902, 0
  %537 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul904 = mul i32 %add903, %537
  %add905 = add i32 %535, %mul904
  store i32 %add905, ptr %l_offset.ascast, align 4, !tbaa !10
  %538 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %539 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom906 = zext i32 %539 to i64
  %arrayidx907 = getelementptr inbounds %struct.rocfft_complex, ptr %538, i64 %idxprom906
  %540 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx908 = getelementptr inbounds %struct.rocfft_complex, ptr %540, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx908, ptr align 8 %arrayidx907, i64 16, i1 false), !tbaa.struct !48
  %541 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %542 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add909 = add i32 %542, 0
  %add910 = add i32 %add909, 70
  %add911 = add i32 %add910, 84
  %543 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul912 = mul i32 %add911, %543
  %add913 = add i32 %541, %mul912
  store i32 %add913, ptr %l_offset.ascast, align 4, !tbaa !10
  %544 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %545 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom914 = zext i32 %545 to i64
  %arrayidx915 = getelementptr inbounds %struct.rocfft_complex, ptr %544, i64 %idxprom914
  %546 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx916 = getelementptr inbounds %struct.rocfft_complex, ptr %546, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx916, ptr align 8 %arrayidx915, i64 16, i1 false), !tbaa.struct !48
  %547 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %548 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add917 = add i32 %548, 0
  %add918 = add i32 %add917, 0
  %rem919 = urem i32 %add918, 42
  %mul920 = mul i32 1, %rem919
  %add921 = add i32 36, %mul920
  %idxprom922 = zext i32 %add921 to i64
  %arrayidx923 = getelementptr inbounds %struct.rocfft_complex, ptr %547, i64 %idxprom922
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx923, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp924) #10
  %549 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx925 = getelementptr inbounds %struct.rocfft_complex, ptr %549, i64 1
  %x926 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx925, i32 0, i32 0
  %550 = load double, ptr %x926, align 8, !tbaa !51
  %x927 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %551 = load double, ptr %x927, align 8, !tbaa !51
  %mul928 = fmul contract double %550, %551
  %552 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx929 = getelementptr inbounds %struct.rocfft_complex, ptr %552, i64 1
  %y930 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx929, i32 0, i32 1
  %553 = load double, ptr %y930, align 8, !tbaa !53
  %y931 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %554 = load double, ptr %y931, align 8, !tbaa !53
  %mul932 = fmul contract double %553, %554
  %add933 = fadd contract double %mul928, %mul932
  %555 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx934 = getelementptr inbounds %struct.rocfft_complex, ptr %555, i64 1
  %y935 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx934, i32 0, i32 1
  %556 = load double, ptr %y935, align 8, !tbaa !53
  %x936 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %557 = load double, ptr %x936, align 8, !tbaa !51
  %mul937 = fmul contract double %556, %557
  %558 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx938 = getelementptr inbounds %struct.rocfft_complex, ptr %558, i64 1
  %x939 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx938, i32 0, i32 0
  %559 = load double, ptr %x939, align 8, !tbaa !51
  %y940 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %560 = load double, ptr %y940, align 8, !tbaa !53
  %mul941 = fmul contract double %559, %560
  %sub942 = fsub contract double %mul937, %mul941
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp924.ascast, double noundef %add933, double noundef %sub942) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp924.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp924) #10
  %561 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx943 = getelementptr inbounds %struct.rocfft_complex, ptr %561, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx943, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %562 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %563 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add944 = add i32 %563, 0
  %add945 = add i32 %add944, 14
  %rem946 = urem i32 %add945, 42
  %mul947 = mul i32 1, %rem946
  %add948 = add i32 36, %mul947
  %idxprom949 = zext i32 %add948 to i64
  %arrayidx950 = getelementptr inbounds %struct.rocfft_complex, ptr %562, i64 %idxprom949
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx950, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp951) #10
  %564 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx952 = getelementptr inbounds %struct.rocfft_complex, ptr %564, i64 3
  %x953 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx952, i32 0, i32 0
  %565 = load double, ptr %x953, align 8, !tbaa !51
  %x954 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %566 = load double, ptr %x954, align 8, !tbaa !51
  %mul955 = fmul contract double %565, %566
  %567 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx956 = getelementptr inbounds %struct.rocfft_complex, ptr %567, i64 3
  %y957 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx956, i32 0, i32 1
  %568 = load double, ptr %y957, align 8, !tbaa !53
  %y958 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %569 = load double, ptr %y958, align 8, !tbaa !53
  %mul959 = fmul contract double %568, %569
  %add960 = fadd contract double %mul955, %mul959
  %570 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx961 = getelementptr inbounds %struct.rocfft_complex, ptr %570, i64 3
  %y962 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx961, i32 0, i32 1
  %571 = load double, ptr %y962, align 8, !tbaa !53
  %x963 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %572 = load double, ptr %x963, align 8, !tbaa !51
  %mul964 = fmul contract double %571, %572
  %573 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx965 = getelementptr inbounds %struct.rocfft_complex, ptr %573, i64 3
  %x966 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx965, i32 0, i32 0
  %574 = load double, ptr %x966, align 8, !tbaa !51
  %y967 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %575 = load double, ptr %y967, align 8, !tbaa !53
  %mul968 = fmul contract double %574, %575
  %sub969 = fsub contract double %mul964, %mul968
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp951.ascast, double noundef %add960, double noundef %sub969) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp951.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp951) #10
  %576 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx970 = getelementptr inbounds %struct.rocfft_complex, ptr %576, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx970, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %577 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %578 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add971 = add i32 %578, 0
  %add972 = add i32 %add971, 28
  %rem973 = urem i32 %add972, 42
  %mul974 = mul i32 1, %rem973
  %add975 = add i32 36, %mul974
  %idxprom976 = zext i32 %add975 to i64
  %arrayidx977 = getelementptr inbounds %struct.rocfft_complex, ptr %577, i64 %idxprom976
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx977, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp978) #10
  %579 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx979 = getelementptr inbounds %struct.rocfft_complex, ptr %579, i64 5
  %x980 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx979, i32 0, i32 0
  %580 = load double, ptr %x980, align 8, !tbaa !51
  %x981 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %581 = load double, ptr %x981, align 8, !tbaa !51
  %mul982 = fmul contract double %580, %581
  %582 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx983 = getelementptr inbounds %struct.rocfft_complex, ptr %582, i64 5
  %y984 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx983, i32 0, i32 1
  %583 = load double, ptr %y984, align 8, !tbaa !53
  %y985 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %584 = load double, ptr %y985, align 8, !tbaa !53
  %mul986 = fmul contract double %583, %584
  %add987 = fadd contract double %mul982, %mul986
  %585 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx988 = getelementptr inbounds %struct.rocfft_complex, ptr %585, i64 5
  %y989 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx988, i32 0, i32 1
  %586 = load double, ptr %y989, align 8, !tbaa !53
  %x990 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %587 = load double, ptr %x990, align 8, !tbaa !51
  %mul991 = fmul contract double %586, %587
  %588 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx992 = getelementptr inbounds %struct.rocfft_complex, ptr %588, i64 5
  %x993 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx992, i32 0, i32 0
  %589 = load double, ptr %x993, align 8, !tbaa !51
  %y994 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %590 = load double, ptr %y994, align 8, !tbaa !53
  %mul995 = fmul contract double %589, %590
  %sub996 = fsub contract double %mul991, %mul995
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp978.ascast, double noundef %add987, double noundef %sub996) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp978.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp978) #10
  %591 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx997 = getelementptr inbounds %struct.rocfft_complex, ptr %591, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx997, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %592 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %593 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add998 = add i32 %593, 0
  %add999 = add i32 %add998, 42
  %rem1000 = urem i32 %add999, 42
  %mul1001 = mul i32 1, %rem1000
  %add1002 = add i32 36, %mul1001
  %idxprom1003 = zext i32 %add1002 to i64
  %arrayidx1004 = getelementptr inbounds %struct.rocfft_complex, ptr %592, i64 %idxprom1003
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1004, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1005) #10
  %594 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1006 = getelementptr inbounds %struct.rocfft_complex, ptr %594, i64 7
  %x1007 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1006, i32 0, i32 0
  %595 = load double, ptr %x1007, align 8, !tbaa !51
  %x1008 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %596 = load double, ptr %x1008, align 8, !tbaa !51
  %mul1009 = fmul contract double %595, %596
  %597 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1010 = getelementptr inbounds %struct.rocfft_complex, ptr %597, i64 7
  %y1011 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1010, i32 0, i32 1
  %598 = load double, ptr %y1011, align 8, !tbaa !53
  %y1012 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %599 = load double, ptr %y1012, align 8, !tbaa !53
  %mul1013 = fmul contract double %598, %599
  %add1014 = fadd contract double %mul1009, %mul1013
  %600 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1015 = getelementptr inbounds %struct.rocfft_complex, ptr %600, i64 7
  %y1016 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1015, i32 0, i32 1
  %601 = load double, ptr %y1016, align 8, !tbaa !53
  %x1017 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %602 = load double, ptr %x1017, align 8, !tbaa !51
  %mul1018 = fmul contract double %601, %602
  %603 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1019 = getelementptr inbounds %struct.rocfft_complex, ptr %603, i64 7
  %x1020 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1019, i32 0, i32 0
  %604 = load double, ptr %x1020, align 8, !tbaa !51
  %y1021 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %605 = load double, ptr %y1021, align 8, !tbaa !53
  %mul1022 = fmul contract double %604, %605
  %sub1023 = fsub contract double %mul1018, %mul1022
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1005.ascast, double noundef %add1014, double noundef %sub1023) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1005.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1005) #10
  %606 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1024 = getelementptr inbounds %struct.rocfft_complex, ptr %606, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1024, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %607 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %608 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1025 = add i32 %608, 0
  %add1026 = add i32 %add1025, 56
  %rem1027 = urem i32 %add1026, 42
  %mul1028 = mul i32 1, %rem1027
  %add1029 = add i32 36, %mul1028
  %idxprom1030 = zext i32 %add1029 to i64
  %arrayidx1031 = getelementptr inbounds %struct.rocfft_complex, ptr %607, i64 %idxprom1030
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1031, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1032) #10
  %609 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1033 = getelementptr inbounds %struct.rocfft_complex, ptr %609, i64 9
  %x1034 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1033, i32 0, i32 0
  %610 = load double, ptr %x1034, align 8, !tbaa !51
  %x1035 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %611 = load double, ptr %x1035, align 8, !tbaa !51
  %mul1036 = fmul contract double %610, %611
  %612 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1037 = getelementptr inbounds %struct.rocfft_complex, ptr %612, i64 9
  %y1038 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1037, i32 0, i32 1
  %613 = load double, ptr %y1038, align 8, !tbaa !53
  %y1039 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %614 = load double, ptr %y1039, align 8, !tbaa !53
  %mul1040 = fmul contract double %613, %614
  %add1041 = fadd contract double %mul1036, %mul1040
  %615 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1042 = getelementptr inbounds %struct.rocfft_complex, ptr %615, i64 9
  %y1043 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1042, i32 0, i32 1
  %616 = load double, ptr %y1043, align 8, !tbaa !53
  %x1044 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %617 = load double, ptr %x1044, align 8, !tbaa !51
  %mul1045 = fmul contract double %616, %617
  %618 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1046 = getelementptr inbounds %struct.rocfft_complex, ptr %618, i64 9
  %x1047 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1046, i32 0, i32 0
  %619 = load double, ptr %x1047, align 8, !tbaa !51
  %y1048 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %620 = load double, ptr %y1048, align 8, !tbaa !53
  %mul1049 = fmul contract double %619, %620
  %sub1050 = fsub contract double %mul1045, %mul1049
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1032.ascast, double noundef %add1041, double noundef %sub1050) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1032.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1032) #10
  %621 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1051 = getelementptr inbounds %struct.rocfft_complex, ptr %621, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1051, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %622 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %623 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1052 = add i32 %623, 0
  %add1053 = add i32 %add1052, 70
  %rem1054 = urem i32 %add1053, 42
  %mul1055 = mul i32 1, %rem1054
  %add1056 = add i32 36, %mul1055
  %idxprom1057 = zext i32 %add1056 to i64
  %arrayidx1058 = getelementptr inbounds %struct.rocfft_complex, ptr %622, i64 %idxprom1057
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1058, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1059) #10
  %624 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1060 = getelementptr inbounds %struct.rocfft_complex, ptr %624, i64 11
  %x1061 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1060, i32 0, i32 0
  %625 = load double, ptr %x1061, align 8, !tbaa !51
  %x1062 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %626 = load double, ptr %x1062, align 8, !tbaa !51
  %mul1063 = fmul contract double %625, %626
  %627 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1064 = getelementptr inbounds %struct.rocfft_complex, ptr %627, i64 11
  %y1065 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1064, i32 0, i32 1
  %628 = load double, ptr %y1065, align 8, !tbaa !53
  %y1066 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %629 = load double, ptr %y1066, align 8, !tbaa !53
  %mul1067 = fmul contract double %628, %629
  %add1068 = fadd contract double %mul1063, %mul1067
  %630 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1069 = getelementptr inbounds %struct.rocfft_complex, ptr %630, i64 11
  %y1070 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1069, i32 0, i32 1
  %631 = load double, ptr %y1070, align 8, !tbaa !53
  %x1071 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %632 = load double, ptr %x1071, align 8, !tbaa !51
  %mul1072 = fmul contract double %631, %632
  %633 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1073 = getelementptr inbounds %struct.rocfft_complex, ptr %633, i64 11
  %x1074 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1073, i32 0, i32 0
  %634 = load double, ptr %x1074, align 8, !tbaa !51
  %y1075 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %635 = load double, ptr %y1075, align 8, !tbaa !53
  %mul1076 = fmul contract double %634, %635
  %sub1077 = fsub contract double %mul1072, %mul1076
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1059.ascast, double noundef %add1068, double noundef %sub1077) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1059.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1059) #10
  %636 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1078 = getelementptr inbounds %struct.rocfft_complex, ptr %636, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1078, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %637 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1079 = getelementptr inbounds %struct.rocfft_complex, ptr %637, i64 0
  %638 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1080 = getelementptr inbounds %struct.rocfft_complex, ptr %638, i64 1
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1079, ptr noundef %add.ptr1080) #18
  %639 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1081 = getelementptr inbounds %struct.rocfft_complex, ptr %639, i64 2
  %640 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1082 = getelementptr inbounds %struct.rocfft_complex, ptr %640, i64 3
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1081, ptr noundef %add.ptr1082) #18
  %641 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1083 = getelementptr inbounds %struct.rocfft_complex, ptr %641, i64 4
  %642 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1084 = getelementptr inbounds %struct.rocfft_complex, ptr %642, i64 5
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1083, ptr noundef %add.ptr1084) #18
  %643 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1085 = getelementptr inbounds %struct.rocfft_complex, ptr %643, i64 6
  %644 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1086 = getelementptr inbounds %struct.rocfft_complex, ptr %644, i64 7
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1085, ptr noundef %add.ptr1086) #18
  %645 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1087 = getelementptr inbounds %struct.rocfft_complex, ptr %645, i64 8
  %646 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1088 = getelementptr inbounds %struct.rocfft_complex, ptr %646, i64 9
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1087, ptr noundef %add.ptr1088) #18
  %647 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1089 = getelementptr inbounds %struct.rocfft_complex, ptr %647, i64 10
  %648 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1090 = getelementptr inbounds %struct.rocfft_complex, ptr %648, i64 11
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1089, ptr noundef %add.ptr1090) #18
  call void @_Z13__syncthreadsv() #18
  %649 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %650 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1091 = add i32 %650, 0
  %add1092 = add i32 %add1091, 0
  %div1093 = udiv i32 %add1092, 42
  %mul1094 = mul i32 %div1093, 84
  %651 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1095 = add i32 %651, 0
  %add1096 = add i32 %add1095, 0
  %rem1097 = urem i32 %add1096, 42
  %add1098 = add i32 %mul1094, %rem1097
  %add1099 = add i32 %add1098, 0
  %652 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1100 = mul i32 %add1099, %652
  %add1101 = add i32 %649, %mul1100
  store i32 %add1101, ptr %l_offset.ascast, align 4, !tbaa !10
  %653 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1102 = getelementptr inbounds %struct.rocfft_complex, ptr %653, i64 0
  %654 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %655 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1103 = zext i32 %655 to i64
  %arrayidx1104 = getelementptr inbounds %struct.rocfft_complex, ptr %654, i64 %idxprom1103
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1104, ptr align 8 %arrayidx1102, i64 16, i1 false), !tbaa.struct !48
  %656 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %657 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1105 = add i32 %657, 0
  %add1106 = add i32 %add1105, 0
  %div1107 = udiv i32 %add1106, 42
  %mul1108 = mul i32 %div1107, 84
  %658 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1109 = add i32 %658, 0
  %add1110 = add i32 %add1109, 0
  %rem1111 = urem i32 %add1110, 42
  %add1112 = add i32 %mul1108, %rem1111
  %add1113 = add i32 %add1112, 42
  %659 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1114 = mul i32 %add1113, %659
  %add1115 = add i32 %656, %mul1114
  store i32 %add1115, ptr %l_offset.ascast, align 4, !tbaa !10
  %660 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1116 = getelementptr inbounds %struct.rocfft_complex, ptr %660, i64 1
  %661 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %662 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1117 = zext i32 %662 to i64
  %arrayidx1118 = getelementptr inbounds %struct.rocfft_complex, ptr %661, i64 %idxprom1117
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1118, ptr align 8 %arrayidx1116, i64 16, i1 false), !tbaa.struct !48
  %663 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %664 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1119 = add i32 %664, 0
  %add1120 = add i32 %add1119, 14
  %div1121 = udiv i32 %add1120, 42
  %mul1122 = mul i32 %div1121, 84
  %665 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1123 = add i32 %665, 0
  %add1124 = add i32 %add1123, 14
  %rem1125 = urem i32 %add1124, 42
  %add1126 = add i32 %mul1122, %rem1125
  %add1127 = add i32 %add1126, 0
  %666 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1128 = mul i32 %add1127, %666
  %add1129 = add i32 %663, %mul1128
  store i32 %add1129, ptr %l_offset.ascast, align 4, !tbaa !10
  %667 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1130 = getelementptr inbounds %struct.rocfft_complex, ptr %667, i64 2
  %668 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %669 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1131 = zext i32 %669 to i64
  %arrayidx1132 = getelementptr inbounds %struct.rocfft_complex, ptr %668, i64 %idxprom1131
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1132, ptr align 8 %arrayidx1130, i64 16, i1 false), !tbaa.struct !48
  %670 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %671 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1133 = add i32 %671, 0
  %add1134 = add i32 %add1133, 14
  %div1135 = udiv i32 %add1134, 42
  %mul1136 = mul i32 %div1135, 84
  %672 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1137 = add i32 %672, 0
  %add1138 = add i32 %add1137, 14
  %rem1139 = urem i32 %add1138, 42
  %add1140 = add i32 %mul1136, %rem1139
  %add1141 = add i32 %add1140, 42
  %673 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1142 = mul i32 %add1141, %673
  %add1143 = add i32 %670, %mul1142
  store i32 %add1143, ptr %l_offset.ascast, align 4, !tbaa !10
  %674 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1144 = getelementptr inbounds %struct.rocfft_complex, ptr %674, i64 3
  %675 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %676 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1145 = zext i32 %676 to i64
  %arrayidx1146 = getelementptr inbounds %struct.rocfft_complex, ptr %675, i64 %idxprom1145
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1146, ptr align 8 %arrayidx1144, i64 16, i1 false), !tbaa.struct !48
  %677 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %678 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1147 = add i32 %678, 0
  %add1148 = add i32 %add1147, 28
  %div1149 = udiv i32 %add1148, 42
  %mul1150 = mul i32 %div1149, 84
  %679 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1151 = add i32 %679, 0
  %add1152 = add i32 %add1151, 28
  %rem1153 = urem i32 %add1152, 42
  %add1154 = add i32 %mul1150, %rem1153
  %add1155 = add i32 %add1154, 0
  %680 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1156 = mul i32 %add1155, %680
  %add1157 = add i32 %677, %mul1156
  store i32 %add1157, ptr %l_offset.ascast, align 4, !tbaa !10
  %681 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1158 = getelementptr inbounds %struct.rocfft_complex, ptr %681, i64 4
  %682 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %683 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1159 = zext i32 %683 to i64
  %arrayidx1160 = getelementptr inbounds %struct.rocfft_complex, ptr %682, i64 %idxprom1159
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1160, ptr align 8 %arrayidx1158, i64 16, i1 false), !tbaa.struct !48
  %684 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %685 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1161 = add i32 %685, 0
  %add1162 = add i32 %add1161, 28
  %div1163 = udiv i32 %add1162, 42
  %mul1164 = mul i32 %div1163, 84
  %686 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1165 = add i32 %686, 0
  %add1166 = add i32 %add1165, 28
  %rem1167 = urem i32 %add1166, 42
  %add1168 = add i32 %mul1164, %rem1167
  %add1169 = add i32 %add1168, 42
  %687 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1170 = mul i32 %add1169, %687
  %add1171 = add i32 %684, %mul1170
  store i32 %add1171, ptr %l_offset.ascast, align 4, !tbaa !10
  %688 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1172 = getelementptr inbounds %struct.rocfft_complex, ptr %688, i64 5
  %689 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %690 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1173 = zext i32 %690 to i64
  %arrayidx1174 = getelementptr inbounds %struct.rocfft_complex, ptr %689, i64 %idxprom1173
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1174, ptr align 8 %arrayidx1172, i64 16, i1 false), !tbaa.struct !48
  %691 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %692 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1175 = add i32 %692, 0
  %add1176 = add i32 %add1175, 42
  %div1177 = udiv i32 %add1176, 42
  %mul1178 = mul i32 %div1177, 84
  %693 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1179 = add i32 %693, 0
  %add1180 = add i32 %add1179, 42
  %rem1181 = urem i32 %add1180, 42
  %add1182 = add i32 %mul1178, %rem1181
  %add1183 = add i32 %add1182, 0
  %694 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1184 = mul i32 %add1183, %694
  %add1185 = add i32 %691, %mul1184
  store i32 %add1185, ptr %l_offset.ascast, align 4, !tbaa !10
  %695 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1186 = getelementptr inbounds %struct.rocfft_complex, ptr %695, i64 6
  %696 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %697 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1187 = zext i32 %697 to i64
  %arrayidx1188 = getelementptr inbounds %struct.rocfft_complex, ptr %696, i64 %idxprom1187
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1188, ptr align 8 %arrayidx1186, i64 16, i1 false), !tbaa.struct !48
  %698 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %699 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1189 = add i32 %699, 0
  %add1190 = add i32 %add1189, 42
  %div1191 = udiv i32 %add1190, 42
  %mul1192 = mul i32 %div1191, 84
  %700 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1193 = add i32 %700, 0
  %add1194 = add i32 %add1193, 42
  %rem1195 = urem i32 %add1194, 42
  %add1196 = add i32 %mul1192, %rem1195
  %add1197 = add i32 %add1196, 42
  %701 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1198 = mul i32 %add1197, %701
  %add1199 = add i32 %698, %mul1198
  store i32 %add1199, ptr %l_offset.ascast, align 4, !tbaa !10
  %702 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1200 = getelementptr inbounds %struct.rocfft_complex, ptr %702, i64 7
  %703 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %704 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1201 = zext i32 %704 to i64
  %arrayidx1202 = getelementptr inbounds %struct.rocfft_complex, ptr %703, i64 %idxprom1201
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1202, ptr align 8 %arrayidx1200, i64 16, i1 false), !tbaa.struct !48
  %705 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %706 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1203 = add i32 %706, 0
  %add1204 = add i32 %add1203, 56
  %div1205 = udiv i32 %add1204, 42
  %mul1206 = mul i32 %div1205, 84
  %707 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1207 = add i32 %707, 0
  %add1208 = add i32 %add1207, 56
  %rem1209 = urem i32 %add1208, 42
  %add1210 = add i32 %mul1206, %rem1209
  %add1211 = add i32 %add1210, 0
  %708 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1212 = mul i32 %add1211, %708
  %add1213 = add i32 %705, %mul1212
  store i32 %add1213, ptr %l_offset.ascast, align 4, !tbaa !10
  %709 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1214 = getelementptr inbounds %struct.rocfft_complex, ptr %709, i64 8
  %710 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %711 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1215 = zext i32 %711 to i64
  %arrayidx1216 = getelementptr inbounds %struct.rocfft_complex, ptr %710, i64 %idxprom1215
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1216, ptr align 8 %arrayidx1214, i64 16, i1 false), !tbaa.struct !48
  %712 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %713 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1217 = add i32 %713, 0
  %add1218 = add i32 %add1217, 56
  %div1219 = udiv i32 %add1218, 42
  %mul1220 = mul i32 %div1219, 84
  %714 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1221 = add i32 %714, 0
  %add1222 = add i32 %add1221, 56
  %rem1223 = urem i32 %add1222, 42
  %add1224 = add i32 %mul1220, %rem1223
  %add1225 = add i32 %add1224, 42
  %715 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1226 = mul i32 %add1225, %715
  %add1227 = add i32 %712, %mul1226
  store i32 %add1227, ptr %l_offset.ascast, align 4, !tbaa !10
  %716 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1228 = getelementptr inbounds %struct.rocfft_complex, ptr %716, i64 9
  %717 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %718 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1229 = zext i32 %718 to i64
  %arrayidx1230 = getelementptr inbounds %struct.rocfft_complex, ptr %717, i64 %idxprom1229
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1230, ptr align 8 %arrayidx1228, i64 16, i1 false), !tbaa.struct !48
  %719 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %720 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1231 = add i32 %720, 0
  %add1232 = add i32 %add1231, 70
  %div1233 = udiv i32 %add1232, 42
  %mul1234 = mul i32 %div1233, 84
  %721 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1235 = add i32 %721, 0
  %add1236 = add i32 %add1235, 70
  %rem1237 = urem i32 %add1236, 42
  %add1238 = add i32 %mul1234, %rem1237
  %add1239 = add i32 %add1238, 0
  %722 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1240 = mul i32 %add1239, %722
  %add1241 = add i32 %719, %mul1240
  store i32 %add1241, ptr %l_offset.ascast, align 4, !tbaa !10
  %723 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1242 = getelementptr inbounds %struct.rocfft_complex, ptr %723, i64 10
  %724 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %725 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1243 = zext i32 %725 to i64
  %arrayidx1244 = getelementptr inbounds %struct.rocfft_complex, ptr %724, i64 %idxprom1243
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1244, ptr align 8 %arrayidx1242, i64 16, i1 false), !tbaa.struct !48
  %726 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %727 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1245 = add i32 %727, 0
  %add1246 = add i32 %add1245, 70
  %div1247 = udiv i32 %add1246, 42
  %mul1248 = mul i32 %div1247, 84
  %728 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1249 = add i32 %728, 0
  %add1250 = add i32 %add1249, 70
  %rem1251 = urem i32 %add1250, 42
  %add1252 = add i32 %mul1248, %rem1251
  %add1253 = add i32 %add1252, 42
  %729 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1254 = mul i32 %add1253, %729
  %add1255 = add i32 %726, %mul1254
  store i32 %add1255, ptr %l_offset.ascast, align 4, !tbaa !10
  %730 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1256 = getelementptr inbounds %struct.rocfft_complex, ptr %730, i64 11
  %731 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %732 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1257 = zext i32 %732 to i64
  %arrayidx1258 = getelementptr inbounds %struct.rocfft_complex, ptr %731, i64 %idxprom1257
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1258, ptr align 8 %arrayidx1256, i64 16, i1 false), !tbaa.struct !48
  call void @_Z13__syncthreadsv() #18
  %733 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %734 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1259 = add i32 %734, 0
  %add1260 = add i32 %add1259, 0
  %add1261 = add i32 %add1260, 0
  %735 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1262 = mul i32 %add1261, %735
  %add1263 = add i32 %733, %mul1262
  store i32 %add1263, ptr %l_offset.ascast, align 4, !tbaa !10
  %736 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %737 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1264 = zext i32 %737 to i64
  %arrayidx1265 = getelementptr inbounds %struct.rocfft_complex, ptr %736, i64 %idxprom1264
  %738 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1266 = getelementptr inbounds %struct.rocfft_complex, ptr %738, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1266, ptr align 8 %arrayidx1265, i64 16, i1 false), !tbaa.struct !48
  %739 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %740 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1267 = add i32 %740, 0
  %add1268 = add i32 %add1267, 0
  %add1269 = add i32 %add1268, 84
  %741 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1270 = mul i32 %add1269, %741
  %add1271 = add i32 %739, %mul1270
  store i32 %add1271, ptr %l_offset.ascast, align 4, !tbaa !10
  %742 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %743 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1272 = zext i32 %743 to i64
  %arrayidx1273 = getelementptr inbounds %struct.rocfft_complex, ptr %742, i64 %idxprom1272
  %744 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1274 = getelementptr inbounds %struct.rocfft_complex, ptr %744, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1274, ptr align 8 %arrayidx1273, i64 16, i1 false), !tbaa.struct !48
  %745 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %746 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1275 = add i32 %746, 0
  %add1276 = add i32 %add1275, 14
  %add1277 = add i32 %add1276, 0
  %747 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1278 = mul i32 %add1277, %747
  %add1279 = add i32 %745, %mul1278
  store i32 %add1279, ptr %l_offset.ascast, align 4, !tbaa !10
  %748 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %749 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1280 = zext i32 %749 to i64
  %arrayidx1281 = getelementptr inbounds %struct.rocfft_complex, ptr %748, i64 %idxprom1280
  %750 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1282 = getelementptr inbounds %struct.rocfft_complex, ptr %750, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1282, ptr align 8 %arrayidx1281, i64 16, i1 false), !tbaa.struct !48
  %751 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %752 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1283 = add i32 %752, 0
  %add1284 = add i32 %add1283, 14
  %add1285 = add i32 %add1284, 84
  %753 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1286 = mul i32 %add1285, %753
  %add1287 = add i32 %751, %mul1286
  store i32 %add1287, ptr %l_offset.ascast, align 4, !tbaa !10
  %754 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %755 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1288 = zext i32 %755 to i64
  %arrayidx1289 = getelementptr inbounds %struct.rocfft_complex, ptr %754, i64 %idxprom1288
  %756 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1290 = getelementptr inbounds %struct.rocfft_complex, ptr %756, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1290, ptr align 8 %arrayidx1289, i64 16, i1 false), !tbaa.struct !48
  %757 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %758 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1291 = add i32 %758, 0
  %add1292 = add i32 %add1291, 28
  %add1293 = add i32 %add1292, 0
  %759 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1294 = mul i32 %add1293, %759
  %add1295 = add i32 %757, %mul1294
  store i32 %add1295, ptr %l_offset.ascast, align 4, !tbaa !10
  %760 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %761 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1296 = zext i32 %761 to i64
  %arrayidx1297 = getelementptr inbounds %struct.rocfft_complex, ptr %760, i64 %idxprom1296
  %762 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1298 = getelementptr inbounds %struct.rocfft_complex, ptr %762, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1298, ptr align 8 %arrayidx1297, i64 16, i1 false), !tbaa.struct !48
  %763 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %764 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1299 = add i32 %764, 0
  %add1300 = add i32 %add1299, 28
  %add1301 = add i32 %add1300, 84
  %765 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1302 = mul i32 %add1301, %765
  %add1303 = add i32 %763, %mul1302
  store i32 %add1303, ptr %l_offset.ascast, align 4, !tbaa !10
  %766 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %767 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1304 = zext i32 %767 to i64
  %arrayidx1305 = getelementptr inbounds %struct.rocfft_complex, ptr %766, i64 %idxprom1304
  %768 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1306 = getelementptr inbounds %struct.rocfft_complex, ptr %768, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1306, ptr align 8 %arrayidx1305, i64 16, i1 false), !tbaa.struct !48
  %769 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %770 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1307 = add i32 %770, 0
  %add1308 = add i32 %add1307, 42
  %add1309 = add i32 %add1308, 0
  %771 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1310 = mul i32 %add1309, %771
  %add1311 = add i32 %769, %mul1310
  store i32 %add1311, ptr %l_offset.ascast, align 4, !tbaa !10
  %772 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %773 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1312 = zext i32 %773 to i64
  %arrayidx1313 = getelementptr inbounds %struct.rocfft_complex, ptr %772, i64 %idxprom1312
  %774 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1314 = getelementptr inbounds %struct.rocfft_complex, ptr %774, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1314, ptr align 8 %arrayidx1313, i64 16, i1 false), !tbaa.struct !48
  %775 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %776 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1315 = add i32 %776, 0
  %add1316 = add i32 %add1315, 42
  %add1317 = add i32 %add1316, 84
  %777 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1318 = mul i32 %add1317, %777
  %add1319 = add i32 %775, %mul1318
  store i32 %add1319, ptr %l_offset.ascast, align 4, !tbaa !10
  %778 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %779 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1320 = zext i32 %779 to i64
  %arrayidx1321 = getelementptr inbounds %struct.rocfft_complex, ptr %778, i64 %idxprom1320
  %780 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1322 = getelementptr inbounds %struct.rocfft_complex, ptr %780, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1322, ptr align 8 %arrayidx1321, i64 16, i1 false), !tbaa.struct !48
  %781 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %782 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1323 = add i32 %782, 0
  %add1324 = add i32 %add1323, 56
  %add1325 = add i32 %add1324, 0
  %783 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1326 = mul i32 %add1325, %783
  %add1327 = add i32 %781, %mul1326
  store i32 %add1327, ptr %l_offset.ascast, align 4, !tbaa !10
  %784 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %785 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1328 = zext i32 %785 to i64
  %arrayidx1329 = getelementptr inbounds %struct.rocfft_complex, ptr %784, i64 %idxprom1328
  %786 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1330 = getelementptr inbounds %struct.rocfft_complex, ptr %786, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1330, ptr align 8 %arrayidx1329, i64 16, i1 false), !tbaa.struct !48
  %787 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %788 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1331 = add i32 %788, 0
  %add1332 = add i32 %add1331, 56
  %add1333 = add i32 %add1332, 84
  %789 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1334 = mul i32 %add1333, %789
  %add1335 = add i32 %787, %mul1334
  store i32 %add1335, ptr %l_offset.ascast, align 4, !tbaa !10
  %790 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %791 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1336 = zext i32 %791 to i64
  %arrayidx1337 = getelementptr inbounds %struct.rocfft_complex, ptr %790, i64 %idxprom1336
  %792 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1338 = getelementptr inbounds %struct.rocfft_complex, ptr %792, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1338, ptr align 8 %arrayidx1337, i64 16, i1 false), !tbaa.struct !48
  %793 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %794 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1339 = add i32 %794, 0
  %add1340 = add i32 %add1339, 70
  %add1341 = add i32 %add1340, 0
  %795 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1342 = mul i32 %add1341, %795
  %add1343 = add i32 %793, %mul1342
  store i32 %add1343, ptr %l_offset.ascast, align 4, !tbaa !10
  %796 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %797 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1344 = zext i32 %797 to i64
  %arrayidx1345 = getelementptr inbounds %struct.rocfft_complex, ptr %796, i64 %idxprom1344
  %798 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1346 = getelementptr inbounds %struct.rocfft_complex, ptr %798, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1346, ptr align 8 %arrayidx1345, i64 16, i1 false), !tbaa.struct !48
  %799 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %800 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1347 = add i32 %800, 0
  %add1348 = add i32 %add1347, 70
  %add1349 = add i32 %add1348, 84
  %801 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul1350 = mul i32 %add1349, %801
  %add1351 = add i32 %799, %mul1350
  store i32 %add1351, ptr %l_offset.ascast, align 4, !tbaa !10
  %802 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %803 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom1352 = zext i32 %803 to i64
  %arrayidx1353 = getelementptr inbounds %struct.rocfft_complex, ptr %802, i64 %idxprom1352
  %804 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1354 = getelementptr inbounds %struct.rocfft_complex, ptr %804, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1354, ptr align 8 %arrayidx1353, i64 16, i1 false), !tbaa.struct !48
  %805 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %806 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1355 = add i32 %806, 0
  %add1356 = add i32 %add1355, 0
  %rem1357 = urem i32 %add1356, 84
  %mul1358 = mul i32 1, %rem1357
  %add1359 = add i32 78, %mul1358
  %idxprom1360 = zext i32 %add1359 to i64
  %arrayidx1361 = getelementptr inbounds %struct.rocfft_complex, ptr %805, i64 %idxprom1360
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1361, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1362) #10
  %807 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1363 = getelementptr inbounds %struct.rocfft_complex, ptr %807, i64 1
  %x1364 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1363, i32 0, i32 0
  %808 = load double, ptr %x1364, align 8, !tbaa !51
  %x1365 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %809 = load double, ptr %x1365, align 8, !tbaa !51
  %mul1366 = fmul contract double %808, %809
  %810 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1367 = getelementptr inbounds %struct.rocfft_complex, ptr %810, i64 1
  %y1368 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1367, i32 0, i32 1
  %811 = load double, ptr %y1368, align 8, !tbaa !53
  %y1369 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %812 = load double, ptr %y1369, align 8, !tbaa !53
  %mul1370 = fmul contract double %811, %812
  %add1371 = fadd contract double %mul1366, %mul1370
  %813 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1372 = getelementptr inbounds %struct.rocfft_complex, ptr %813, i64 1
  %y1373 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1372, i32 0, i32 1
  %814 = load double, ptr %y1373, align 8, !tbaa !53
  %x1374 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %815 = load double, ptr %x1374, align 8, !tbaa !51
  %mul1375 = fmul contract double %814, %815
  %816 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1376 = getelementptr inbounds %struct.rocfft_complex, ptr %816, i64 1
  %x1377 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1376, i32 0, i32 0
  %817 = load double, ptr %x1377, align 8, !tbaa !51
  %y1378 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %818 = load double, ptr %y1378, align 8, !tbaa !53
  %mul1379 = fmul contract double %817, %818
  %sub1380 = fsub contract double %mul1375, %mul1379
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1362.ascast, double noundef %add1371, double noundef %sub1380) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1362.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1362) #10
  %819 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1381 = getelementptr inbounds %struct.rocfft_complex, ptr %819, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1381, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %820 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %821 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1382 = add i32 %821, 0
  %add1383 = add i32 %add1382, 14
  %rem1384 = urem i32 %add1383, 84
  %mul1385 = mul i32 1, %rem1384
  %add1386 = add i32 78, %mul1385
  %idxprom1387 = zext i32 %add1386 to i64
  %arrayidx1388 = getelementptr inbounds %struct.rocfft_complex, ptr %820, i64 %idxprom1387
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1388, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1389) #10
  %822 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1390 = getelementptr inbounds %struct.rocfft_complex, ptr %822, i64 3
  %x1391 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1390, i32 0, i32 0
  %823 = load double, ptr %x1391, align 8, !tbaa !51
  %x1392 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %824 = load double, ptr %x1392, align 8, !tbaa !51
  %mul1393 = fmul contract double %823, %824
  %825 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1394 = getelementptr inbounds %struct.rocfft_complex, ptr %825, i64 3
  %y1395 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1394, i32 0, i32 1
  %826 = load double, ptr %y1395, align 8, !tbaa !53
  %y1396 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %827 = load double, ptr %y1396, align 8, !tbaa !53
  %mul1397 = fmul contract double %826, %827
  %add1398 = fadd contract double %mul1393, %mul1397
  %828 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1399 = getelementptr inbounds %struct.rocfft_complex, ptr %828, i64 3
  %y1400 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1399, i32 0, i32 1
  %829 = load double, ptr %y1400, align 8, !tbaa !53
  %x1401 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %830 = load double, ptr %x1401, align 8, !tbaa !51
  %mul1402 = fmul contract double %829, %830
  %831 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1403 = getelementptr inbounds %struct.rocfft_complex, ptr %831, i64 3
  %x1404 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1403, i32 0, i32 0
  %832 = load double, ptr %x1404, align 8, !tbaa !51
  %y1405 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %833 = load double, ptr %y1405, align 8, !tbaa !53
  %mul1406 = fmul contract double %832, %833
  %sub1407 = fsub contract double %mul1402, %mul1406
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1389.ascast, double noundef %add1398, double noundef %sub1407) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1389.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1389) #10
  %834 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1408 = getelementptr inbounds %struct.rocfft_complex, ptr %834, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1408, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %835 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %836 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1409 = add i32 %836, 0
  %add1410 = add i32 %add1409, 28
  %rem1411 = urem i32 %add1410, 84
  %mul1412 = mul i32 1, %rem1411
  %add1413 = add i32 78, %mul1412
  %idxprom1414 = zext i32 %add1413 to i64
  %arrayidx1415 = getelementptr inbounds %struct.rocfft_complex, ptr %835, i64 %idxprom1414
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1415, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1416) #10
  %837 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1417 = getelementptr inbounds %struct.rocfft_complex, ptr %837, i64 5
  %x1418 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1417, i32 0, i32 0
  %838 = load double, ptr %x1418, align 8, !tbaa !51
  %x1419 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %839 = load double, ptr %x1419, align 8, !tbaa !51
  %mul1420 = fmul contract double %838, %839
  %840 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1421 = getelementptr inbounds %struct.rocfft_complex, ptr %840, i64 5
  %y1422 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1421, i32 0, i32 1
  %841 = load double, ptr %y1422, align 8, !tbaa !53
  %y1423 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %842 = load double, ptr %y1423, align 8, !tbaa !53
  %mul1424 = fmul contract double %841, %842
  %add1425 = fadd contract double %mul1420, %mul1424
  %843 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1426 = getelementptr inbounds %struct.rocfft_complex, ptr %843, i64 5
  %y1427 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1426, i32 0, i32 1
  %844 = load double, ptr %y1427, align 8, !tbaa !53
  %x1428 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %845 = load double, ptr %x1428, align 8, !tbaa !51
  %mul1429 = fmul contract double %844, %845
  %846 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1430 = getelementptr inbounds %struct.rocfft_complex, ptr %846, i64 5
  %x1431 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1430, i32 0, i32 0
  %847 = load double, ptr %x1431, align 8, !tbaa !51
  %y1432 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %848 = load double, ptr %y1432, align 8, !tbaa !53
  %mul1433 = fmul contract double %847, %848
  %sub1434 = fsub contract double %mul1429, %mul1433
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1416.ascast, double noundef %add1425, double noundef %sub1434) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1416.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1416) #10
  %849 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1435 = getelementptr inbounds %struct.rocfft_complex, ptr %849, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1435, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %850 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %851 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1436 = add i32 %851, 0
  %add1437 = add i32 %add1436, 42
  %rem1438 = urem i32 %add1437, 84
  %mul1439 = mul i32 1, %rem1438
  %add1440 = add i32 78, %mul1439
  %idxprom1441 = zext i32 %add1440 to i64
  %arrayidx1442 = getelementptr inbounds %struct.rocfft_complex, ptr %850, i64 %idxprom1441
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1442, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1443) #10
  %852 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1444 = getelementptr inbounds %struct.rocfft_complex, ptr %852, i64 7
  %x1445 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1444, i32 0, i32 0
  %853 = load double, ptr %x1445, align 8, !tbaa !51
  %x1446 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %854 = load double, ptr %x1446, align 8, !tbaa !51
  %mul1447 = fmul contract double %853, %854
  %855 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1448 = getelementptr inbounds %struct.rocfft_complex, ptr %855, i64 7
  %y1449 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1448, i32 0, i32 1
  %856 = load double, ptr %y1449, align 8, !tbaa !53
  %y1450 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %857 = load double, ptr %y1450, align 8, !tbaa !53
  %mul1451 = fmul contract double %856, %857
  %add1452 = fadd contract double %mul1447, %mul1451
  %858 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1453 = getelementptr inbounds %struct.rocfft_complex, ptr %858, i64 7
  %y1454 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1453, i32 0, i32 1
  %859 = load double, ptr %y1454, align 8, !tbaa !53
  %x1455 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %860 = load double, ptr %x1455, align 8, !tbaa !51
  %mul1456 = fmul contract double %859, %860
  %861 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1457 = getelementptr inbounds %struct.rocfft_complex, ptr %861, i64 7
  %x1458 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1457, i32 0, i32 0
  %862 = load double, ptr %x1458, align 8, !tbaa !51
  %y1459 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %863 = load double, ptr %y1459, align 8, !tbaa !53
  %mul1460 = fmul contract double %862, %863
  %sub1461 = fsub contract double %mul1456, %mul1460
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1443.ascast, double noundef %add1452, double noundef %sub1461) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1443.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1443) #10
  %864 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1462 = getelementptr inbounds %struct.rocfft_complex, ptr %864, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1462, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %865 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %866 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1463 = add i32 %866, 0
  %add1464 = add i32 %add1463, 56
  %rem1465 = urem i32 %add1464, 84
  %mul1466 = mul i32 1, %rem1465
  %add1467 = add i32 78, %mul1466
  %idxprom1468 = zext i32 %add1467 to i64
  %arrayidx1469 = getelementptr inbounds %struct.rocfft_complex, ptr %865, i64 %idxprom1468
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1469, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1470) #10
  %867 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1471 = getelementptr inbounds %struct.rocfft_complex, ptr %867, i64 9
  %x1472 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1471, i32 0, i32 0
  %868 = load double, ptr %x1472, align 8, !tbaa !51
  %x1473 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %869 = load double, ptr %x1473, align 8, !tbaa !51
  %mul1474 = fmul contract double %868, %869
  %870 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1475 = getelementptr inbounds %struct.rocfft_complex, ptr %870, i64 9
  %y1476 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1475, i32 0, i32 1
  %871 = load double, ptr %y1476, align 8, !tbaa !53
  %y1477 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %872 = load double, ptr %y1477, align 8, !tbaa !53
  %mul1478 = fmul contract double %871, %872
  %add1479 = fadd contract double %mul1474, %mul1478
  %873 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1480 = getelementptr inbounds %struct.rocfft_complex, ptr %873, i64 9
  %y1481 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1480, i32 0, i32 1
  %874 = load double, ptr %y1481, align 8, !tbaa !53
  %x1482 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %875 = load double, ptr %x1482, align 8, !tbaa !51
  %mul1483 = fmul contract double %874, %875
  %876 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1484 = getelementptr inbounds %struct.rocfft_complex, ptr %876, i64 9
  %x1485 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1484, i32 0, i32 0
  %877 = load double, ptr %x1485, align 8, !tbaa !51
  %y1486 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %878 = load double, ptr %y1486, align 8, !tbaa !53
  %mul1487 = fmul contract double %877, %878
  %sub1488 = fsub contract double %mul1483, %mul1487
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1470.ascast, double noundef %add1479, double noundef %sub1488) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1470.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1470) #10
  %879 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1489 = getelementptr inbounds %struct.rocfft_complex, ptr %879, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1489, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %880 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %881 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1490 = add i32 %881, 0
  %add1491 = add i32 %add1490, 70
  %rem1492 = urem i32 %add1491, 84
  %mul1493 = mul i32 1, %rem1492
  %add1494 = add i32 78, %mul1493
  %idxprom1495 = zext i32 %add1494 to i64
  %arrayidx1496 = getelementptr inbounds %struct.rocfft_complex, ptr %880, i64 %idxprom1495
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx1496, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1497) #10
  %882 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1498 = getelementptr inbounds %struct.rocfft_complex, ptr %882, i64 11
  %x1499 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1498, i32 0, i32 0
  %883 = load double, ptr %x1499, align 8, !tbaa !51
  %x1500 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %884 = load double, ptr %x1500, align 8, !tbaa !51
  %mul1501 = fmul contract double %883, %884
  %885 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1502 = getelementptr inbounds %struct.rocfft_complex, ptr %885, i64 11
  %y1503 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1502, i32 0, i32 1
  %886 = load double, ptr %y1503, align 8, !tbaa !53
  %y1504 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %887 = load double, ptr %y1504, align 8, !tbaa !53
  %mul1505 = fmul contract double %886, %887
  %add1506 = fadd contract double %mul1501, %mul1505
  %888 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1507 = getelementptr inbounds %struct.rocfft_complex, ptr %888, i64 11
  %y1508 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1507, i32 0, i32 1
  %889 = load double, ptr %y1508, align 8, !tbaa !53
  %x1509 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %890 = load double, ptr %x1509, align 8, !tbaa !51
  %mul1510 = fmul contract double %889, %890
  %891 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1511 = getelementptr inbounds %struct.rocfft_complex, ptr %891, i64 11
  %x1512 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1511, i32 0, i32 0
  %892 = load double, ptr %x1512, align 8, !tbaa !51
  %y1513 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %893 = load double, ptr %y1513, align 8, !tbaa !53
  %mul1514 = fmul contract double %892, %893
  %sub1515 = fsub contract double %mul1510, %mul1514
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1497.ascast, double noundef %add1506, double noundef %sub1515) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1497.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1497) #10
  %894 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1516 = getelementptr inbounds %struct.rocfft_complex, ptr %894, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1516, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %895 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1517 = getelementptr inbounds %struct.rocfft_complex, ptr %895, i64 0
  %896 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1518 = getelementptr inbounds %struct.rocfft_complex, ptr %896, i64 1
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1517, ptr noundef %add.ptr1518) #18
  %897 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1519 = getelementptr inbounds %struct.rocfft_complex, ptr %897, i64 2
  %898 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1520 = getelementptr inbounds %struct.rocfft_complex, ptr %898, i64 3
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1519, ptr noundef %add.ptr1520) #18
  %899 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1521 = getelementptr inbounds %struct.rocfft_complex, ptr %899, i64 4
  %900 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1522 = getelementptr inbounds %struct.rocfft_complex, ptr %900, i64 5
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1521, ptr noundef %add.ptr1522) #18
  %901 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1523 = getelementptr inbounds %struct.rocfft_complex, ptr %901, i64 6
  %902 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1524 = getelementptr inbounds %struct.rocfft_complex, ptr %902, i64 7
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1523, ptr noundef %add.ptr1524) #18
  %903 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1525 = getelementptr inbounds %struct.rocfft_complex, ptr %903, i64 8
  %904 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1526 = getelementptr inbounds %struct.rocfft_complex, ptr %904, i64 9
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1525, ptr noundef %add.ptr1526) #18
  %905 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1527 = getelementptr inbounds %struct.rocfft_complex, ptr %905, i64 10
  %906 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr1528 = getelementptr inbounds %struct.rocfft_complex, ptr %906, i64 11
  call void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %add.ptr1527, ptr noundef %add.ptr1528) #18
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1529) #10
  %907 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %908 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1530 = add i32 %908, 0
  %add1531 = add i32 %add1530, 0
  %rem1532 = srem i32 %add1531, 84
  %add1533 = add nsw i32 %rem1532, 0
  %conv = sext i32 %add1533 to i64
  %909 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1534 = mul i64 %conv, %909
  %call = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %907, i64 noundef %mul1534) #18
  %910 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1529.ascast, i32 0, i32 0
  %911 = extractvalue %struct.rocfft_complex %call, 0
  store double %911, ptr %910, align 8
  %912 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1529.ascast, i32 0, i32 1
  %913 = extractvalue %struct.rocfft_complex %call, 1
  store double %913, ptr %912, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1529.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1529) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1535) #10
  %914 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1536 = getelementptr inbounds %struct.rocfft_complex, ptr %914, i64 0
  %x1537 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1536, i32 0, i32 0
  %915 = load double, ptr %x1537, align 8, !tbaa !51
  %x1538 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %916 = load double, ptr %x1538, align 8, !tbaa !51
  %mul1539 = fmul contract double %915, %916
  %917 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1540 = getelementptr inbounds %struct.rocfft_complex, ptr %917, i64 0
  %y1541 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1540, i32 0, i32 1
  %918 = load double, ptr %y1541, align 8, !tbaa !53
  %y1542 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %919 = load double, ptr %y1542, align 8, !tbaa !53
  %mul1543 = fmul contract double %918, %919
  %add1544 = fadd contract double %mul1539, %mul1543
  %920 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1545 = getelementptr inbounds %struct.rocfft_complex, ptr %920, i64 0
  %y1546 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1545, i32 0, i32 1
  %921 = load double, ptr %y1546, align 8, !tbaa !53
  %x1547 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %922 = load double, ptr %x1547, align 8, !tbaa !51
  %mul1548 = fmul contract double %921, %922
  %923 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1549 = getelementptr inbounds %struct.rocfft_complex, ptr %923, i64 0
  %x1550 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1549, i32 0, i32 0
  %924 = load double, ptr %x1550, align 8, !tbaa !51
  %y1551 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %925 = load double, ptr %y1551, align 8, !tbaa !53
  %mul1552 = fmul contract double %924, %925
  %sub1553 = fsub contract double %mul1548, %mul1552
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1535.ascast, double noundef %add1544, double noundef %sub1553) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1535.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1535) #10
  %926 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1554 = getelementptr inbounds %struct.rocfft_complex, ptr %926, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1554, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1555) #10
  %927 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %928 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1556 = add i32 %928, 0
  %add1557 = add i32 %add1556, 0
  %rem1558 = srem i32 %add1557, 84
  %add1559 = add nsw i32 %rem1558, 84
  %conv1560 = sext i32 %add1559 to i64
  %929 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1561 = mul i64 %conv1560, %929
  %call1562 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %927, i64 noundef %mul1561) #18
  %930 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1555.ascast, i32 0, i32 0
  %931 = extractvalue %struct.rocfft_complex %call1562, 0
  store double %931, ptr %930, align 8
  %932 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1555.ascast, i32 0, i32 1
  %933 = extractvalue %struct.rocfft_complex %call1562, 1
  store double %933, ptr %932, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1555.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1555) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1563) #10
  %934 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1564 = getelementptr inbounds %struct.rocfft_complex, ptr %934, i64 1
  %x1565 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1564, i32 0, i32 0
  %935 = load double, ptr %x1565, align 8, !tbaa !51
  %x1566 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %936 = load double, ptr %x1566, align 8, !tbaa !51
  %mul1567 = fmul contract double %935, %936
  %937 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1568 = getelementptr inbounds %struct.rocfft_complex, ptr %937, i64 1
  %y1569 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1568, i32 0, i32 1
  %938 = load double, ptr %y1569, align 8, !tbaa !53
  %y1570 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %939 = load double, ptr %y1570, align 8, !tbaa !53
  %mul1571 = fmul contract double %938, %939
  %add1572 = fadd contract double %mul1567, %mul1571
  %940 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1573 = getelementptr inbounds %struct.rocfft_complex, ptr %940, i64 1
  %y1574 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1573, i32 0, i32 1
  %941 = load double, ptr %y1574, align 8, !tbaa !53
  %x1575 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %942 = load double, ptr %x1575, align 8, !tbaa !51
  %mul1576 = fmul contract double %941, %942
  %943 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1577 = getelementptr inbounds %struct.rocfft_complex, ptr %943, i64 1
  %x1578 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1577, i32 0, i32 0
  %944 = load double, ptr %x1578, align 8, !tbaa !51
  %y1579 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %945 = load double, ptr %y1579, align 8, !tbaa !53
  %mul1580 = fmul contract double %944, %945
  %sub1581 = fsub contract double %mul1576, %mul1580
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1563.ascast, double noundef %add1572, double noundef %sub1581) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1563.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1563) #10
  %946 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1582 = getelementptr inbounds %struct.rocfft_complex, ptr %946, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1582, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1583) #10
  %947 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %948 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1584 = add i32 %948, 0
  %add1585 = add i32 %add1584, 14
  %rem1586 = srem i32 %add1585, 84
  %add1587 = add nsw i32 %rem1586, 0
  %conv1588 = sext i32 %add1587 to i64
  %949 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1589 = mul i64 %conv1588, %949
  %call1590 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %947, i64 noundef %mul1589) #18
  %950 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1583.ascast, i32 0, i32 0
  %951 = extractvalue %struct.rocfft_complex %call1590, 0
  store double %951, ptr %950, align 8
  %952 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1583.ascast, i32 0, i32 1
  %953 = extractvalue %struct.rocfft_complex %call1590, 1
  store double %953, ptr %952, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1583.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1583) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1591) #10
  %954 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1592 = getelementptr inbounds %struct.rocfft_complex, ptr %954, i64 2
  %x1593 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1592, i32 0, i32 0
  %955 = load double, ptr %x1593, align 8, !tbaa !51
  %x1594 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %956 = load double, ptr %x1594, align 8, !tbaa !51
  %mul1595 = fmul contract double %955, %956
  %957 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1596 = getelementptr inbounds %struct.rocfft_complex, ptr %957, i64 2
  %y1597 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1596, i32 0, i32 1
  %958 = load double, ptr %y1597, align 8, !tbaa !53
  %y1598 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %959 = load double, ptr %y1598, align 8, !tbaa !53
  %mul1599 = fmul contract double %958, %959
  %add1600 = fadd contract double %mul1595, %mul1599
  %960 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1601 = getelementptr inbounds %struct.rocfft_complex, ptr %960, i64 2
  %y1602 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1601, i32 0, i32 1
  %961 = load double, ptr %y1602, align 8, !tbaa !53
  %x1603 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %962 = load double, ptr %x1603, align 8, !tbaa !51
  %mul1604 = fmul contract double %961, %962
  %963 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1605 = getelementptr inbounds %struct.rocfft_complex, ptr %963, i64 2
  %x1606 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1605, i32 0, i32 0
  %964 = load double, ptr %x1606, align 8, !tbaa !51
  %y1607 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %965 = load double, ptr %y1607, align 8, !tbaa !53
  %mul1608 = fmul contract double %964, %965
  %sub1609 = fsub contract double %mul1604, %mul1608
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1591.ascast, double noundef %add1600, double noundef %sub1609) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1591.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1591) #10
  %966 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1610 = getelementptr inbounds %struct.rocfft_complex, ptr %966, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1610, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1611) #10
  %967 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %968 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1612 = add i32 %968, 0
  %add1613 = add i32 %add1612, 14
  %rem1614 = srem i32 %add1613, 84
  %add1615 = add nsw i32 %rem1614, 84
  %conv1616 = sext i32 %add1615 to i64
  %969 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1617 = mul i64 %conv1616, %969
  %call1618 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %967, i64 noundef %mul1617) #18
  %970 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1611.ascast, i32 0, i32 0
  %971 = extractvalue %struct.rocfft_complex %call1618, 0
  store double %971, ptr %970, align 8
  %972 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1611.ascast, i32 0, i32 1
  %973 = extractvalue %struct.rocfft_complex %call1618, 1
  store double %973, ptr %972, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1611.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1611) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1619) #10
  %974 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1620 = getelementptr inbounds %struct.rocfft_complex, ptr %974, i64 3
  %x1621 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1620, i32 0, i32 0
  %975 = load double, ptr %x1621, align 8, !tbaa !51
  %x1622 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %976 = load double, ptr %x1622, align 8, !tbaa !51
  %mul1623 = fmul contract double %975, %976
  %977 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1624 = getelementptr inbounds %struct.rocfft_complex, ptr %977, i64 3
  %y1625 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1624, i32 0, i32 1
  %978 = load double, ptr %y1625, align 8, !tbaa !53
  %y1626 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %979 = load double, ptr %y1626, align 8, !tbaa !53
  %mul1627 = fmul contract double %978, %979
  %add1628 = fadd contract double %mul1623, %mul1627
  %980 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1629 = getelementptr inbounds %struct.rocfft_complex, ptr %980, i64 3
  %y1630 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1629, i32 0, i32 1
  %981 = load double, ptr %y1630, align 8, !tbaa !53
  %x1631 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %982 = load double, ptr %x1631, align 8, !tbaa !51
  %mul1632 = fmul contract double %981, %982
  %983 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1633 = getelementptr inbounds %struct.rocfft_complex, ptr %983, i64 3
  %x1634 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1633, i32 0, i32 0
  %984 = load double, ptr %x1634, align 8, !tbaa !51
  %y1635 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %985 = load double, ptr %y1635, align 8, !tbaa !53
  %mul1636 = fmul contract double %984, %985
  %sub1637 = fsub contract double %mul1632, %mul1636
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1619.ascast, double noundef %add1628, double noundef %sub1637) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1619.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1619) #10
  %986 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1638 = getelementptr inbounds %struct.rocfft_complex, ptr %986, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1638, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1639) #10
  %987 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %988 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1640 = add i32 %988, 0
  %add1641 = add i32 %add1640, 28
  %rem1642 = srem i32 %add1641, 84
  %add1643 = add nsw i32 %rem1642, 0
  %conv1644 = sext i32 %add1643 to i64
  %989 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1645 = mul i64 %conv1644, %989
  %call1646 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %987, i64 noundef %mul1645) #18
  %990 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1639.ascast, i32 0, i32 0
  %991 = extractvalue %struct.rocfft_complex %call1646, 0
  store double %991, ptr %990, align 8
  %992 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1639.ascast, i32 0, i32 1
  %993 = extractvalue %struct.rocfft_complex %call1646, 1
  store double %993, ptr %992, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1639.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1639) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1647) #10
  %994 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1648 = getelementptr inbounds %struct.rocfft_complex, ptr %994, i64 4
  %x1649 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1648, i32 0, i32 0
  %995 = load double, ptr %x1649, align 8, !tbaa !51
  %x1650 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %996 = load double, ptr %x1650, align 8, !tbaa !51
  %mul1651 = fmul contract double %995, %996
  %997 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1652 = getelementptr inbounds %struct.rocfft_complex, ptr %997, i64 4
  %y1653 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1652, i32 0, i32 1
  %998 = load double, ptr %y1653, align 8, !tbaa !53
  %y1654 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %999 = load double, ptr %y1654, align 8, !tbaa !53
  %mul1655 = fmul contract double %998, %999
  %add1656 = fadd contract double %mul1651, %mul1655
  %1000 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1657 = getelementptr inbounds %struct.rocfft_complex, ptr %1000, i64 4
  %y1658 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1657, i32 0, i32 1
  %1001 = load double, ptr %y1658, align 8, !tbaa !53
  %x1659 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1002 = load double, ptr %x1659, align 8, !tbaa !51
  %mul1660 = fmul contract double %1001, %1002
  %1003 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1661 = getelementptr inbounds %struct.rocfft_complex, ptr %1003, i64 4
  %x1662 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1661, i32 0, i32 0
  %1004 = load double, ptr %x1662, align 8, !tbaa !51
  %y1663 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1005 = load double, ptr %y1663, align 8, !tbaa !53
  %mul1664 = fmul contract double %1004, %1005
  %sub1665 = fsub contract double %mul1660, %mul1664
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1647.ascast, double noundef %add1656, double noundef %sub1665) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1647.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1647) #10
  %1006 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1666 = getelementptr inbounds %struct.rocfft_complex, ptr %1006, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1666, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1667) #10
  %1007 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1008 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1668 = add i32 %1008, 0
  %add1669 = add i32 %add1668, 28
  %rem1670 = srem i32 %add1669, 84
  %add1671 = add nsw i32 %rem1670, 84
  %conv1672 = sext i32 %add1671 to i64
  %1009 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1673 = mul i64 %conv1672, %1009
  %call1674 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1007, i64 noundef %mul1673) #18
  %1010 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1667.ascast, i32 0, i32 0
  %1011 = extractvalue %struct.rocfft_complex %call1674, 0
  store double %1011, ptr %1010, align 8
  %1012 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1667.ascast, i32 0, i32 1
  %1013 = extractvalue %struct.rocfft_complex %call1674, 1
  store double %1013, ptr %1012, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1667.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1667) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1675) #10
  %1014 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1676 = getelementptr inbounds %struct.rocfft_complex, ptr %1014, i64 5
  %x1677 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1676, i32 0, i32 0
  %1015 = load double, ptr %x1677, align 8, !tbaa !51
  %x1678 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1016 = load double, ptr %x1678, align 8, !tbaa !51
  %mul1679 = fmul contract double %1015, %1016
  %1017 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1680 = getelementptr inbounds %struct.rocfft_complex, ptr %1017, i64 5
  %y1681 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1680, i32 0, i32 1
  %1018 = load double, ptr %y1681, align 8, !tbaa !53
  %y1682 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1019 = load double, ptr %y1682, align 8, !tbaa !53
  %mul1683 = fmul contract double %1018, %1019
  %add1684 = fadd contract double %mul1679, %mul1683
  %1020 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1685 = getelementptr inbounds %struct.rocfft_complex, ptr %1020, i64 5
  %y1686 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1685, i32 0, i32 1
  %1021 = load double, ptr %y1686, align 8, !tbaa !53
  %x1687 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1022 = load double, ptr %x1687, align 8, !tbaa !51
  %mul1688 = fmul contract double %1021, %1022
  %1023 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1689 = getelementptr inbounds %struct.rocfft_complex, ptr %1023, i64 5
  %x1690 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1689, i32 0, i32 0
  %1024 = load double, ptr %x1690, align 8, !tbaa !51
  %y1691 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1025 = load double, ptr %y1691, align 8, !tbaa !53
  %mul1692 = fmul contract double %1024, %1025
  %sub1693 = fsub contract double %mul1688, %mul1692
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1675.ascast, double noundef %add1684, double noundef %sub1693) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1675.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1675) #10
  %1026 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1694 = getelementptr inbounds %struct.rocfft_complex, ptr %1026, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1694, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1695) #10
  %1027 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1028 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1696 = add i32 %1028, 0
  %add1697 = add i32 %add1696, 42
  %rem1698 = srem i32 %add1697, 84
  %add1699 = add nsw i32 %rem1698, 0
  %conv1700 = sext i32 %add1699 to i64
  %1029 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1701 = mul i64 %conv1700, %1029
  %call1702 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1027, i64 noundef %mul1701) #18
  %1030 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1695.ascast, i32 0, i32 0
  %1031 = extractvalue %struct.rocfft_complex %call1702, 0
  store double %1031, ptr %1030, align 8
  %1032 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1695.ascast, i32 0, i32 1
  %1033 = extractvalue %struct.rocfft_complex %call1702, 1
  store double %1033, ptr %1032, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1695.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1695) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1703) #10
  %1034 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1704 = getelementptr inbounds %struct.rocfft_complex, ptr %1034, i64 6
  %x1705 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1704, i32 0, i32 0
  %1035 = load double, ptr %x1705, align 8, !tbaa !51
  %x1706 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1036 = load double, ptr %x1706, align 8, !tbaa !51
  %mul1707 = fmul contract double %1035, %1036
  %1037 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1708 = getelementptr inbounds %struct.rocfft_complex, ptr %1037, i64 6
  %y1709 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1708, i32 0, i32 1
  %1038 = load double, ptr %y1709, align 8, !tbaa !53
  %y1710 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1039 = load double, ptr %y1710, align 8, !tbaa !53
  %mul1711 = fmul contract double %1038, %1039
  %add1712 = fadd contract double %mul1707, %mul1711
  %1040 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1713 = getelementptr inbounds %struct.rocfft_complex, ptr %1040, i64 6
  %y1714 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1713, i32 0, i32 1
  %1041 = load double, ptr %y1714, align 8, !tbaa !53
  %x1715 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1042 = load double, ptr %x1715, align 8, !tbaa !51
  %mul1716 = fmul contract double %1041, %1042
  %1043 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1717 = getelementptr inbounds %struct.rocfft_complex, ptr %1043, i64 6
  %x1718 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1717, i32 0, i32 0
  %1044 = load double, ptr %x1718, align 8, !tbaa !51
  %y1719 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1045 = load double, ptr %y1719, align 8, !tbaa !53
  %mul1720 = fmul contract double %1044, %1045
  %sub1721 = fsub contract double %mul1716, %mul1720
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1703.ascast, double noundef %add1712, double noundef %sub1721) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1703.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1703) #10
  %1046 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1722 = getelementptr inbounds %struct.rocfft_complex, ptr %1046, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1722, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1723) #10
  %1047 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1048 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1724 = add i32 %1048, 0
  %add1725 = add i32 %add1724, 42
  %rem1726 = srem i32 %add1725, 84
  %add1727 = add nsw i32 %rem1726, 84
  %conv1728 = sext i32 %add1727 to i64
  %1049 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1729 = mul i64 %conv1728, %1049
  %call1730 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1047, i64 noundef %mul1729) #18
  %1050 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1723.ascast, i32 0, i32 0
  %1051 = extractvalue %struct.rocfft_complex %call1730, 0
  store double %1051, ptr %1050, align 8
  %1052 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1723.ascast, i32 0, i32 1
  %1053 = extractvalue %struct.rocfft_complex %call1730, 1
  store double %1053, ptr %1052, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1723.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1723) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1731) #10
  %1054 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1732 = getelementptr inbounds %struct.rocfft_complex, ptr %1054, i64 7
  %x1733 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1732, i32 0, i32 0
  %1055 = load double, ptr %x1733, align 8, !tbaa !51
  %x1734 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1056 = load double, ptr %x1734, align 8, !tbaa !51
  %mul1735 = fmul contract double %1055, %1056
  %1057 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1736 = getelementptr inbounds %struct.rocfft_complex, ptr %1057, i64 7
  %y1737 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1736, i32 0, i32 1
  %1058 = load double, ptr %y1737, align 8, !tbaa !53
  %y1738 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1059 = load double, ptr %y1738, align 8, !tbaa !53
  %mul1739 = fmul contract double %1058, %1059
  %add1740 = fadd contract double %mul1735, %mul1739
  %1060 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1741 = getelementptr inbounds %struct.rocfft_complex, ptr %1060, i64 7
  %y1742 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1741, i32 0, i32 1
  %1061 = load double, ptr %y1742, align 8, !tbaa !53
  %x1743 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1062 = load double, ptr %x1743, align 8, !tbaa !51
  %mul1744 = fmul contract double %1061, %1062
  %1063 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1745 = getelementptr inbounds %struct.rocfft_complex, ptr %1063, i64 7
  %x1746 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1745, i32 0, i32 0
  %1064 = load double, ptr %x1746, align 8, !tbaa !51
  %y1747 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1065 = load double, ptr %y1747, align 8, !tbaa !53
  %mul1748 = fmul contract double %1064, %1065
  %sub1749 = fsub contract double %mul1744, %mul1748
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1731.ascast, double noundef %add1740, double noundef %sub1749) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1731.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1731) #10
  %1066 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1750 = getelementptr inbounds %struct.rocfft_complex, ptr %1066, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1750, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1751) #10
  %1067 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1068 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1752 = add i32 %1068, 0
  %add1753 = add i32 %add1752, 56
  %rem1754 = srem i32 %add1753, 84
  %add1755 = add nsw i32 %rem1754, 0
  %conv1756 = sext i32 %add1755 to i64
  %1069 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1757 = mul i64 %conv1756, %1069
  %call1758 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1067, i64 noundef %mul1757) #18
  %1070 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1751.ascast, i32 0, i32 0
  %1071 = extractvalue %struct.rocfft_complex %call1758, 0
  store double %1071, ptr %1070, align 8
  %1072 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1751.ascast, i32 0, i32 1
  %1073 = extractvalue %struct.rocfft_complex %call1758, 1
  store double %1073, ptr %1072, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1751.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1751) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1759) #10
  %1074 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1760 = getelementptr inbounds %struct.rocfft_complex, ptr %1074, i64 8
  %x1761 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1760, i32 0, i32 0
  %1075 = load double, ptr %x1761, align 8, !tbaa !51
  %x1762 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1076 = load double, ptr %x1762, align 8, !tbaa !51
  %mul1763 = fmul contract double %1075, %1076
  %1077 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1764 = getelementptr inbounds %struct.rocfft_complex, ptr %1077, i64 8
  %y1765 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1764, i32 0, i32 1
  %1078 = load double, ptr %y1765, align 8, !tbaa !53
  %y1766 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1079 = load double, ptr %y1766, align 8, !tbaa !53
  %mul1767 = fmul contract double %1078, %1079
  %add1768 = fadd contract double %mul1763, %mul1767
  %1080 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1769 = getelementptr inbounds %struct.rocfft_complex, ptr %1080, i64 8
  %y1770 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1769, i32 0, i32 1
  %1081 = load double, ptr %y1770, align 8, !tbaa !53
  %x1771 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1082 = load double, ptr %x1771, align 8, !tbaa !51
  %mul1772 = fmul contract double %1081, %1082
  %1083 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1773 = getelementptr inbounds %struct.rocfft_complex, ptr %1083, i64 8
  %x1774 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1773, i32 0, i32 0
  %1084 = load double, ptr %x1774, align 8, !tbaa !51
  %y1775 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1085 = load double, ptr %y1775, align 8, !tbaa !53
  %mul1776 = fmul contract double %1084, %1085
  %sub1777 = fsub contract double %mul1772, %mul1776
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1759.ascast, double noundef %add1768, double noundef %sub1777) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1759.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1759) #10
  %1086 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1778 = getelementptr inbounds %struct.rocfft_complex, ptr %1086, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1778, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1779) #10
  %1087 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1088 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1780 = add i32 %1088, 0
  %add1781 = add i32 %add1780, 56
  %rem1782 = srem i32 %add1781, 84
  %add1783 = add nsw i32 %rem1782, 84
  %conv1784 = sext i32 %add1783 to i64
  %1089 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1785 = mul i64 %conv1784, %1089
  %call1786 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1087, i64 noundef %mul1785) #18
  %1090 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1779.ascast, i32 0, i32 0
  %1091 = extractvalue %struct.rocfft_complex %call1786, 0
  store double %1091, ptr %1090, align 8
  %1092 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1779.ascast, i32 0, i32 1
  %1093 = extractvalue %struct.rocfft_complex %call1786, 1
  store double %1093, ptr %1092, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1779.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1779) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1787) #10
  %1094 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1788 = getelementptr inbounds %struct.rocfft_complex, ptr %1094, i64 9
  %x1789 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1788, i32 0, i32 0
  %1095 = load double, ptr %x1789, align 8, !tbaa !51
  %x1790 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1096 = load double, ptr %x1790, align 8, !tbaa !51
  %mul1791 = fmul contract double %1095, %1096
  %1097 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1792 = getelementptr inbounds %struct.rocfft_complex, ptr %1097, i64 9
  %y1793 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1792, i32 0, i32 1
  %1098 = load double, ptr %y1793, align 8, !tbaa !53
  %y1794 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1099 = load double, ptr %y1794, align 8, !tbaa !53
  %mul1795 = fmul contract double %1098, %1099
  %add1796 = fadd contract double %mul1791, %mul1795
  %1100 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1797 = getelementptr inbounds %struct.rocfft_complex, ptr %1100, i64 9
  %y1798 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1797, i32 0, i32 1
  %1101 = load double, ptr %y1798, align 8, !tbaa !53
  %x1799 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1102 = load double, ptr %x1799, align 8, !tbaa !51
  %mul1800 = fmul contract double %1101, %1102
  %1103 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1801 = getelementptr inbounds %struct.rocfft_complex, ptr %1103, i64 9
  %x1802 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1801, i32 0, i32 0
  %1104 = load double, ptr %x1802, align 8, !tbaa !51
  %y1803 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1105 = load double, ptr %y1803, align 8, !tbaa !53
  %mul1804 = fmul contract double %1104, %1105
  %sub1805 = fsub contract double %mul1800, %mul1804
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1787.ascast, double noundef %add1796, double noundef %sub1805) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1787.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1787) #10
  %1106 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1806 = getelementptr inbounds %struct.rocfft_complex, ptr %1106, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1806, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1807) #10
  %1107 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1108 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1808 = add i32 %1108, 0
  %add1809 = add i32 %add1808, 70
  %rem1810 = srem i32 %add1809, 84
  %add1811 = add nsw i32 %rem1810, 0
  %conv1812 = sext i32 %add1811 to i64
  %1109 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1813 = mul i64 %conv1812, %1109
  %call1814 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1107, i64 noundef %mul1813) #18
  %1110 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1807.ascast, i32 0, i32 0
  %1111 = extractvalue %struct.rocfft_complex %call1814, 0
  store double %1111, ptr %1110, align 8
  %1112 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1807.ascast, i32 0, i32 1
  %1113 = extractvalue %struct.rocfft_complex %call1814, 1
  store double %1113, ptr %1112, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1807.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1807) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1815) #10
  %1114 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1816 = getelementptr inbounds %struct.rocfft_complex, ptr %1114, i64 10
  %x1817 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1816, i32 0, i32 0
  %1115 = load double, ptr %x1817, align 8, !tbaa !51
  %x1818 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1116 = load double, ptr %x1818, align 8, !tbaa !51
  %mul1819 = fmul contract double %1115, %1116
  %1117 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1820 = getelementptr inbounds %struct.rocfft_complex, ptr %1117, i64 10
  %y1821 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1820, i32 0, i32 1
  %1118 = load double, ptr %y1821, align 8, !tbaa !53
  %y1822 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1119 = load double, ptr %y1822, align 8, !tbaa !53
  %mul1823 = fmul contract double %1118, %1119
  %add1824 = fadd contract double %mul1819, %mul1823
  %1120 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1825 = getelementptr inbounds %struct.rocfft_complex, ptr %1120, i64 10
  %y1826 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1825, i32 0, i32 1
  %1121 = load double, ptr %y1826, align 8, !tbaa !53
  %x1827 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1122 = load double, ptr %x1827, align 8, !tbaa !51
  %mul1828 = fmul contract double %1121, %1122
  %1123 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1829 = getelementptr inbounds %struct.rocfft_complex, ptr %1123, i64 10
  %x1830 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1829, i32 0, i32 0
  %1124 = load double, ptr %x1830, align 8, !tbaa !51
  %y1831 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1125 = load double, ptr %y1831, align 8, !tbaa !53
  %mul1832 = fmul contract double %1124, %1125
  %sub1833 = fsub contract double %mul1828, %mul1832
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1815.ascast, double noundef %add1824, double noundef %sub1833) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1815.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1815) #10
  %1126 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1834 = getelementptr inbounds %struct.rocfft_complex, ptr %1126, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1834, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1835) #10
  %1127 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %1128 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add1836 = add i32 %1128, 0
  %add1837 = add i32 %add1836, 70
  %rem1838 = srem i32 %add1837, 84
  %add1839 = add nsw i32 %rem1838, 84
  %conv1840 = sext i32 %add1839 to i64
  %1129 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul1841 = mul i64 %conv1840, %1129
  %call1842 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %1127, i64 noundef %mul1841) #18
  %1130 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1835.ascast, i32 0, i32 0
  %1131 = extractvalue %struct.rocfft_complex %call1842, 0
  store double %1131, ptr %1130, align 8
  %1132 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1835.ascast, i32 0, i32 1
  %1133 = extractvalue %struct.rocfft_complex %call1842, 1
  store double %1133, ptr %1132, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp1835.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1835) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1843) #10
  %1134 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1844 = getelementptr inbounds %struct.rocfft_complex, ptr %1134, i64 11
  %x1845 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1844, i32 0, i32 0
  %1135 = load double, ptr %x1845, align 8, !tbaa !51
  %x1846 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1136 = load double, ptr %x1846, align 8, !tbaa !51
  %mul1847 = fmul contract double %1135, %1136
  %1137 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1848 = getelementptr inbounds %struct.rocfft_complex, ptr %1137, i64 11
  %y1849 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1848, i32 0, i32 1
  %1138 = load double, ptr %y1849, align 8, !tbaa !53
  %y1850 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1139 = load double, ptr %y1850, align 8, !tbaa !53
  %mul1851 = fmul contract double %1138, %1139
  %add1852 = fadd contract double %mul1847, %mul1851
  %1140 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1853 = getelementptr inbounds %struct.rocfft_complex, ptr %1140, i64 11
  %y1854 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1853, i32 0, i32 1
  %1141 = load double, ptr %y1854, align 8, !tbaa !53
  %x1855 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %1142 = load double, ptr %x1855, align 8, !tbaa !51
  %mul1856 = fmul contract double %1141, %1142
  %1143 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1857 = getelementptr inbounds %struct.rocfft_complex, ptr %1143, i64 11
  %x1858 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx1857, i32 0, i32 0
  %1144 = load double, ptr %x1858, align 8, !tbaa !51
  %y1859 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %1145 = load double, ptr %y1859, align 8, !tbaa !53
  %mul1860 = fmul contract double %1144, %1145
  %sub1861 = fsub contract double %mul1856, %mul1860
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1843.ascast, double noundef %add1852, double noundef %sub1861) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp1843.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1843) #10
  %1146 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx1862 = getelementptr inbounds %struct.rocfft_complex, ptr %1146, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx1862, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %l_offset) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %lstride) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %t) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %W) #10
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z9InvRad6B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_(ptr noundef %R0, ptr noundef %R1, ptr noundef %R2, ptr noundef %R3, ptr noundef %R4, ptr noundef %R5) #13 comdat {
entry:
  %R0.addr = alloca ptr, align 8, addrspace(5)
  %R1.addr = alloca ptr, align 8, addrspace(5)
  %R2.addr = alloca ptr, align 8, addrspace(5)
  %R3.addr = alloca ptr, align 8, addrspace(5)
  %R4.addr = alloca ptr, align 8, addrspace(5)
  %R5.addr = alloca ptr, align 8, addrspace(5)
  %TR0 = alloca double, align 8, addrspace(5)
  %TI0 = alloca double, align 8, addrspace(5)
  %TR1 = alloca double, align 8, addrspace(5)
  %TI1 = alloca double, align 8, addrspace(5)
  %TR2 = alloca double, align 8, addrspace(5)
  %TI2 = alloca double, align 8, addrspace(5)
  %TR3 = alloca double, align 8, addrspace(5)
  %TI3 = alloca double, align 8, addrspace(5)
  %TR4 = alloca double, align 8, addrspace(5)
  %TI4 = alloca double, align 8, addrspace(5)
  %TR5 = alloca double, align 8, addrspace(5)
  %TI5 = alloca double, align 8, addrspace(5)
  %R0.addr.ascast = addrspacecast ptr addrspace(5) %R0.addr to ptr
  %R1.addr.ascast = addrspacecast ptr addrspace(5) %R1.addr to ptr
  %R2.addr.ascast = addrspacecast ptr addrspace(5) %R2.addr to ptr
  %R3.addr.ascast = addrspacecast ptr addrspace(5) %R3.addr to ptr
  %R4.addr.ascast = addrspacecast ptr addrspace(5) %R4.addr to ptr
  %R5.addr.ascast = addrspacecast ptr addrspace(5) %R5.addr to ptr
  %TR0.ascast = addrspacecast ptr addrspace(5) %TR0 to ptr
  %TI0.ascast = addrspacecast ptr addrspace(5) %TI0 to ptr
  %TR1.ascast = addrspacecast ptr addrspace(5) %TR1 to ptr
  %TI1.ascast = addrspacecast ptr addrspace(5) %TI1 to ptr
  %TR2.ascast = addrspacecast ptr addrspace(5) %TR2 to ptr
  %TI2.ascast = addrspacecast ptr addrspace(5) %TI2 to ptr
  %TR3.ascast = addrspacecast ptr addrspace(5) %TR3 to ptr
  %TI3.ascast = addrspacecast ptr addrspace(5) %TI3 to ptr
  %TR4.ascast = addrspacecast ptr addrspace(5) %TR4 to ptr
  %TI4.ascast = addrspacecast ptr addrspace(5) %TI4 to ptr
  %TR5.ascast = addrspacecast ptr addrspace(5) %TR5 to ptr
  %TI5.ascast = addrspacecast ptr addrspace(5) %TI5 to ptr
  store ptr %R0, ptr %R0.addr.ascast, align 8, !tbaa !6
  store ptr %R1, ptr %R1.addr.ascast, align 8, !tbaa !6
  store ptr %R2, ptr %R2.addr.ascast, align 8, !tbaa !6
  store ptr %R3, ptr %R3.addr.ascast, align 8, !tbaa !6
  store ptr %R4, ptr %R4.addr.ascast, align 8, !tbaa !6
  store ptr %R5, ptr %R5.addr.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TR0) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TI0) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TR1) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TI1) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TR2) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TI2) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TR3) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TI3) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TR4) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TI4) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TR5) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %TI5) #10
  %0 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %0, i32 0, i32 0
  %1 = load double, ptr %x, align 8, !tbaa !51
  %2 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x1 = getelementptr inbounds %struct.rocfft_complex, ptr %2, i32 0, i32 0
  %3 = load double, ptr %x1, align 8, !tbaa !51
  %add = fadd contract double %1, %3
  %4 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x2 = getelementptr inbounds %struct.rocfft_complex, ptr %4, i32 0, i32 0
  %5 = load double, ptr %x2, align 8, !tbaa !51
  %add3 = fadd contract double %add, %5
  store double %add3, ptr %TR0.ascast, align 8, !tbaa !49
  %6 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x4 = getelementptr inbounds %struct.rocfft_complex, ptr %6, i32 0, i32 0
  %7 = load double, ptr %x4, align 8, !tbaa !51
  %8 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x5 = getelementptr inbounds %struct.rocfft_complex, ptr %8, i32 0, i32 0
  %9 = load double, ptr %x5, align 8, !tbaa !51
  %10 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x6 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i32 0, i32 0
  %11 = load double, ptr %x6, align 8, !tbaa !51
  %add7 = fadd contract double %9, %11
  %mul = fmul contract double 5.000000e-01, %add7
  %sub = fsub contract double %7, %mul
  %12 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %12, i32 0, i32 1
  %13 = load double, ptr %y, align 8, !tbaa !53
  %14 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y8 = getelementptr inbounds %struct.rocfft_complex, ptr %14, i32 0, i32 1
  %15 = load double, ptr %y8, align 8, !tbaa !53
  %sub9 = fsub contract double %13, %15
  %mul10 = fmul contract double 0x3FEBB67AE8584CAA, %sub9
  %sub11 = fsub contract double %sub, %mul10
  store double %sub11, ptr %TR2.ascast, align 8, !tbaa !49
  %16 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x12 = getelementptr inbounds %struct.rocfft_complex, ptr %16, i32 0, i32 0
  %17 = load double, ptr %x12, align 8, !tbaa !51
  %18 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x13 = getelementptr inbounds %struct.rocfft_complex, ptr %18, i32 0, i32 0
  %19 = load double, ptr %x13, align 8, !tbaa !51
  %20 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x14 = getelementptr inbounds %struct.rocfft_complex, ptr %20, i32 0, i32 0
  %21 = load double, ptr %x14, align 8, !tbaa !51
  %add15 = fadd contract double %19, %21
  %mul16 = fmul contract double 5.000000e-01, %add15
  %sub17 = fsub contract double %17, %mul16
  %22 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y18 = getelementptr inbounds %struct.rocfft_complex, ptr %22, i32 0, i32 1
  %23 = load double, ptr %y18, align 8, !tbaa !53
  %24 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y19 = getelementptr inbounds %struct.rocfft_complex, ptr %24, i32 0, i32 1
  %25 = load double, ptr %y19, align 8, !tbaa !53
  %sub20 = fsub contract double %23, %25
  %mul21 = fmul contract double 0x3FEBB67AE8584CAA, %sub20
  %add22 = fadd contract double %sub17, %mul21
  store double %add22, ptr %TR4.ascast, align 8, !tbaa !49
  %26 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y23 = getelementptr inbounds %struct.rocfft_complex, ptr %26, i32 0, i32 1
  %27 = load double, ptr %y23, align 8, !tbaa !53
  %28 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y24 = getelementptr inbounds %struct.rocfft_complex, ptr %28, i32 0, i32 1
  %29 = load double, ptr %y24, align 8, !tbaa !53
  %add25 = fadd contract double %27, %29
  %30 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y26 = getelementptr inbounds %struct.rocfft_complex, ptr %30, i32 0, i32 1
  %31 = load double, ptr %y26, align 8, !tbaa !53
  %add27 = fadd contract double %add25, %31
  store double %add27, ptr %TI0.ascast, align 8, !tbaa !49
  %32 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y28 = getelementptr inbounds %struct.rocfft_complex, ptr %32, i32 0, i32 1
  %33 = load double, ptr %y28, align 8, !tbaa !53
  %34 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y29 = getelementptr inbounds %struct.rocfft_complex, ptr %34, i32 0, i32 1
  %35 = load double, ptr %y29, align 8, !tbaa !53
  %36 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y30 = getelementptr inbounds %struct.rocfft_complex, ptr %36, i32 0, i32 1
  %37 = load double, ptr %y30, align 8, !tbaa !53
  %add31 = fadd contract double %35, %37
  %mul32 = fmul contract double 5.000000e-01, %add31
  %sub33 = fsub contract double %33, %mul32
  %38 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x34 = getelementptr inbounds %struct.rocfft_complex, ptr %38, i32 0, i32 0
  %39 = load double, ptr %x34, align 8, !tbaa !51
  %40 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x35 = getelementptr inbounds %struct.rocfft_complex, ptr %40, i32 0, i32 0
  %41 = load double, ptr %x35, align 8, !tbaa !51
  %sub36 = fsub contract double %39, %41
  %mul37 = fmul contract double 0x3FEBB67AE8584CAA, %sub36
  %add38 = fadd contract double %sub33, %mul37
  store double %add38, ptr %TI2.ascast, align 8, !tbaa !49
  %42 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y39 = getelementptr inbounds %struct.rocfft_complex, ptr %42, i32 0, i32 1
  %43 = load double, ptr %y39, align 8, !tbaa !53
  %44 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y40 = getelementptr inbounds %struct.rocfft_complex, ptr %44, i32 0, i32 1
  %45 = load double, ptr %y40, align 8, !tbaa !53
  %46 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y41 = getelementptr inbounds %struct.rocfft_complex, ptr %46, i32 0, i32 1
  %47 = load double, ptr %y41, align 8, !tbaa !53
  %add42 = fadd contract double %45, %47
  %mul43 = fmul contract double 5.000000e-01, %add42
  %sub44 = fsub contract double %43, %mul43
  %48 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x45 = getelementptr inbounds %struct.rocfft_complex, ptr %48, i32 0, i32 0
  %49 = load double, ptr %x45, align 8, !tbaa !51
  %50 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x46 = getelementptr inbounds %struct.rocfft_complex, ptr %50, i32 0, i32 0
  %51 = load double, ptr %x46, align 8, !tbaa !51
  %sub47 = fsub contract double %49, %51
  %mul48 = fmul contract double 0x3FEBB67AE8584CAA, %sub47
  %sub49 = fsub contract double %sub44, %mul48
  store double %sub49, ptr %TI4.ascast, align 8, !tbaa !49
  %52 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x50 = getelementptr inbounds %struct.rocfft_complex, ptr %52, i32 0, i32 0
  %53 = load double, ptr %x50, align 8, !tbaa !51
  %54 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x51 = getelementptr inbounds %struct.rocfft_complex, ptr %54, i32 0, i32 0
  %55 = load double, ptr %x51, align 8, !tbaa !51
  %add52 = fadd contract double %53, %55
  %56 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x53 = getelementptr inbounds %struct.rocfft_complex, ptr %56, i32 0, i32 0
  %57 = load double, ptr %x53, align 8, !tbaa !51
  %add54 = fadd contract double %add52, %57
  store double %add54, ptr %TR1.ascast, align 8, !tbaa !49
  %58 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x55 = getelementptr inbounds %struct.rocfft_complex, ptr %58, i32 0, i32 0
  %59 = load double, ptr %x55, align 8, !tbaa !51
  %60 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x56 = getelementptr inbounds %struct.rocfft_complex, ptr %60, i32 0, i32 0
  %61 = load double, ptr %x56, align 8, !tbaa !51
  %62 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x57 = getelementptr inbounds %struct.rocfft_complex, ptr %62, i32 0, i32 0
  %63 = load double, ptr %x57, align 8, !tbaa !51
  %add58 = fadd contract double %61, %63
  %mul59 = fmul contract double 5.000000e-01, %add58
  %sub60 = fsub contract double %59, %mul59
  %64 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y61 = getelementptr inbounds %struct.rocfft_complex, ptr %64, i32 0, i32 1
  %65 = load double, ptr %y61, align 8, !tbaa !53
  %66 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y62 = getelementptr inbounds %struct.rocfft_complex, ptr %66, i32 0, i32 1
  %67 = load double, ptr %y62, align 8, !tbaa !53
  %sub63 = fsub contract double %65, %67
  %mul64 = fmul contract double 0x3FEBB67AE8584CAA, %sub63
  %sub65 = fsub contract double %sub60, %mul64
  store double %sub65, ptr %TR3.ascast, align 8, !tbaa !49
  %68 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x66 = getelementptr inbounds %struct.rocfft_complex, ptr %68, i32 0, i32 0
  %69 = load double, ptr %x66, align 8, !tbaa !51
  %70 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x67 = getelementptr inbounds %struct.rocfft_complex, ptr %70, i32 0, i32 0
  %71 = load double, ptr %x67, align 8, !tbaa !51
  %72 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x68 = getelementptr inbounds %struct.rocfft_complex, ptr %72, i32 0, i32 0
  %73 = load double, ptr %x68, align 8, !tbaa !51
  %add69 = fadd contract double %71, %73
  %mul70 = fmul contract double 5.000000e-01, %add69
  %sub71 = fsub contract double %69, %mul70
  %74 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y72 = getelementptr inbounds %struct.rocfft_complex, ptr %74, i32 0, i32 1
  %75 = load double, ptr %y72, align 8, !tbaa !53
  %76 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y73 = getelementptr inbounds %struct.rocfft_complex, ptr %76, i32 0, i32 1
  %77 = load double, ptr %y73, align 8, !tbaa !53
  %sub74 = fsub contract double %75, %77
  %mul75 = fmul contract double 0x3FEBB67AE8584CAA, %sub74
  %add76 = fadd contract double %sub71, %mul75
  store double %add76, ptr %TR5.ascast, align 8, !tbaa !49
  %78 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y77 = getelementptr inbounds %struct.rocfft_complex, ptr %78, i32 0, i32 1
  %79 = load double, ptr %y77, align 8, !tbaa !53
  %80 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y78 = getelementptr inbounds %struct.rocfft_complex, ptr %80, i32 0, i32 1
  %81 = load double, ptr %y78, align 8, !tbaa !53
  %add79 = fadd contract double %79, %81
  %82 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y80 = getelementptr inbounds %struct.rocfft_complex, ptr %82, i32 0, i32 1
  %83 = load double, ptr %y80, align 8, !tbaa !53
  %add81 = fadd contract double %add79, %83
  store double %add81, ptr %TI1.ascast, align 8, !tbaa !49
  %84 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y82 = getelementptr inbounds %struct.rocfft_complex, ptr %84, i32 0, i32 1
  %85 = load double, ptr %y82, align 8, !tbaa !53
  %86 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y83 = getelementptr inbounds %struct.rocfft_complex, ptr %86, i32 0, i32 1
  %87 = load double, ptr %y83, align 8, !tbaa !53
  %88 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y84 = getelementptr inbounds %struct.rocfft_complex, ptr %88, i32 0, i32 1
  %89 = load double, ptr %y84, align 8, !tbaa !53
  %add85 = fadd contract double %87, %89
  %mul86 = fmul contract double 5.000000e-01, %add85
  %sub87 = fsub contract double %85, %mul86
  %90 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x88 = getelementptr inbounds %struct.rocfft_complex, ptr %90, i32 0, i32 0
  %91 = load double, ptr %x88, align 8, !tbaa !51
  %92 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x89 = getelementptr inbounds %struct.rocfft_complex, ptr %92, i32 0, i32 0
  %93 = load double, ptr %x89, align 8, !tbaa !51
  %sub90 = fsub contract double %91, %93
  %mul91 = fmul contract double 0x3FEBB67AE8584CAA, %sub90
  %add92 = fadd contract double %sub87, %mul91
  store double %add92, ptr %TI3.ascast, align 8, !tbaa !49
  %94 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y93 = getelementptr inbounds %struct.rocfft_complex, ptr %94, i32 0, i32 1
  %95 = load double, ptr %y93, align 8, !tbaa !53
  %96 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y94 = getelementptr inbounds %struct.rocfft_complex, ptr %96, i32 0, i32 1
  %97 = load double, ptr %y94, align 8, !tbaa !53
  %98 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y95 = getelementptr inbounds %struct.rocfft_complex, ptr %98, i32 0, i32 1
  %99 = load double, ptr %y95, align 8, !tbaa !53
  %add96 = fadd contract double %97, %99
  %mul97 = fmul contract double 5.000000e-01, %add96
  %sub98 = fsub contract double %95, %mul97
  %100 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x99 = getelementptr inbounds %struct.rocfft_complex, ptr %100, i32 0, i32 0
  %101 = load double, ptr %x99, align 8, !tbaa !51
  %102 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x100 = getelementptr inbounds %struct.rocfft_complex, ptr %102, i32 0, i32 0
  %103 = load double, ptr %x100, align 8, !tbaa !51
  %sub101 = fsub contract double %101, %103
  %mul102 = fmul contract double 0x3FEBB67AE8584CAA, %sub101
  %sub103 = fsub contract double %sub98, %mul102
  store double %sub103, ptr %TI5.ascast, align 8, !tbaa !49
  %104 = load double, ptr %TR0.ascast, align 8, !tbaa !49
  %105 = load double, ptr %TR1.ascast, align 8, !tbaa !49
  %add104 = fadd contract double %104, %105
  %106 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x105 = getelementptr inbounds %struct.rocfft_complex, ptr %106, i32 0, i32 0
  store double %add104, ptr %x105, align 8, !tbaa !51
  %107 = load double, ptr %TR2.ascast, align 8, !tbaa !49
  %108 = load double, ptr %TR3.ascast, align 8, !tbaa !49
  %mul106 = fmul contract double 5.000000e-01, %108
  %109 = load double, ptr %TI3.ascast, align 8, !tbaa !49
  %mul107 = fmul contract double 0x3FEBB67AE8584CAA, %109
  %sub108 = fsub contract double %mul106, %mul107
  %add109 = fadd contract double %107, %sub108
  %110 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x110 = getelementptr inbounds %struct.rocfft_complex, ptr %110, i32 0, i32 0
  store double %add109, ptr %x110, align 8, !tbaa !51
  %111 = load double, ptr %TR4.ascast, align 8, !tbaa !49
  %112 = load double, ptr %TR5.ascast, align 8, !tbaa !49
  %mul111 = fmul contract double -5.000000e-01, %112
  %113 = load double, ptr %TI5.ascast, align 8, !tbaa !49
  %mul112 = fmul contract double 0x3FEBB67AE8584CAA, %113
  %sub113 = fsub contract double %mul111, %mul112
  %add114 = fadd contract double %111, %sub113
  %114 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x115 = getelementptr inbounds %struct.rocfft_complex, ptr %114, i32 0, i32 0
  store double %add114, ptr %x115, align 8, !tbaa !51
  %115 = load double, ptr %TI0.ascast, align 8, !tbaa !49
  %116 = load double, ptr %TI1.ascast, align 8, !tbaa !49
  %add116 = fadd contract double %115, %116
  %117 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y117 = getelementptr inbounds %struct.rocfft_complex, ptr %117, i32 0, i32 1
  store double %add116, ptr %y117, align 8, !tbaa !53
  %118 = load double, ptr %TI2.ascast, align 8, !tbaa !49
  %119 = load double, ptr %TR3.ascast, align 8, !tbaa !49
  %mul118 = fmul contract double 0x3FEBB67AE8584CAA, %119
  %120 = load double, ptr %TI3.ascast, align 8, !tbaa !49
  %mul119 = fmul contract double 5.000000e-01, %120
  %add120 = fadd contract double %mul118, %mul119
  %add121 = fadd contract double %118, %add120
  %121 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y122 = getelementptr inbounds %struct.rocfft_complex, ptr %121, i32 0, i32 1
  store double %add121, ptr %y122, align 8, !tbaa !53
  %122 = load double, ptr %TI4.ascast, align 8, !tbaa !49
  %123 = load double, ptr %TR5.ascast, align 8, !tbaa !49
  %mul123 = fmul contract double 0x3FEBB67AE8584CAA, %123
  %124 = load double, ptr %TI5.ascast, align 8, !tbaa !49
  %mul124 = fmul contract double 5.000000e-01, %124
  %sub125 = fsub contract double %mul123, %mul124
  %add126 = fadd contract double %122, %sub125
  %125 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y127 = getelementptr inbounds %struct.rocfft_complex, ptr %125, i32 0, i32 1
  store double %add126, ptr %y127, align 8, !tbaa !53
  %126 = load double, ptr %TR0.ascast, align 8, !tbaa !49
  %127 = load double, ptr %TR1.ascast, align 8, !tbaa !49
  %sub128 = fsub contract double %126, %127
  %128 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x129 = getelementptr inbounds %struct.rocfft_complex, ptr %128, i32 0, i32 0
  store double %sub128, ptr %x129, align 8, !tbaa !51
  %129 = load double, ptr %TR2.ascast, align 8, !tbaa !49
  %130 = load double, ptr %TR3.ascast, align 8, !tbaa !49
  %mul130 = fmul contract double 5.000000e-01, %130
  %131 = load double, ptr %TI3.ascast, align 8, !tbaa !49
  %mul131 = fmul contract double 0x3FEBB67AE8584CAA, %131
  %sub132 = fsub contract double %mul130, %mul131
  %sub133 = fsub contract double %129, %sub132
  %132 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x134 = getelementptr inbounds %struct.rocfft_complex, ptr %132, i32 0, i32 0
  store double %sub133, ptr %x134, align 8, !tbaa !51
  %133 = load double, ptr %TR4.ascast, align 8, !tbaa !49
  %134 = load double, ptr %TR5.ascast, align 8, !tbaa !49
  %mul135 = fmul contract double -5.000000e-01, %134
  %135 = load double, ptr %TI5.ascast, align 8, !tbaa !49
  %mul136 = fmul contract double 0x3FEBB67AE8584CAA, %135
  %sub137 = fsub contract double %mul135, %mul136
  %sub138 = fsub contract double %133, %sub137
  %136 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x139 = getelementptr inbounds %struct.rocfft_complex, ptr %136, i32 0, i32 0
  store double %sub138, ptr %x139, align 8, !tbaa !51
  %137 = load double, ptr %TI0.ascast, align 8, !tbaa !49
  %138 = load double, ptr %TI1.ascast, align 8, !tbaa !49
  %sub140 = fsub contract double %137, %138
  %139 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y141 = getelementptr inbounds %struct.rocfft_complex, ptr %139, i32 0, i32 1
  store double %sub140, ptr %y141, align 8, !tbaa !53
  %140 = load double, ptr %TI2.ascast, align 8, !tbaa !49
  %141 = load double, ptr %TR3.ascast, align 8, !tbaa !49
  %mul142 = fmul contract double 0x3FEBB67AE8584CAA, %141
  %142 = load double, ptr %TI3.ascast, align 8, !tbaa !49
  %mul143 = fmul contract double 5.000000e-01, %142
  %add144 = fadd contract double %mul142, %mul143
  %sub145 = fsub contract double %140, %add144
  %143 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y146 = getelementptr inbounds %struct.rocfft_complex, ptr %143, i32 0, i32 1
  store double %sub145, ptr %y146, align 8, !tbaa !53
  %144 = load double, ptr %TI4.ascast, align 8, !tbaa !49
  %145 = load double, ptr %TR5.ascast, align 8, !tbaa !49
  %mul147 = fmul contract double 0x3FEBB67AE8584CAA, %145
  %146 = load double, ptr %TI5.ascast, align 8, !tbaa !49
  %mul148 = fmul contract double 5.000000e-01, %146
  %sub149 = fsub contract double %mul147, %mul148
  %sub150 = fsub contract double %144, %sub149
  %147 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y151 = getelementptr inbounds %struct.rocfft_complex, ptr %147, i32 0, i32 1
  store double %sub150, ptr %y151, align 8, !tbaa !53
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TI5) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TR5) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TI4) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TR4) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TI3) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TR3) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TI2) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TR2) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TI1) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TR1) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TI0) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %TR0) #10
  ret void
}

; Function Attrs: convergent inlinehint mustprogress nounwind
define linkonce_odr hidden void @_Z13__syncthreadsv() #14 comdat {
entry:
  call void @_ZL9__barrieri(i32 noundef 1) #18
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %this, double noundef %real, double noundef %imag) unnamed_addr #13 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8, addrspace(5)
  %real.addr = alloca double, align 8, addrspace(5)
  %imag.addr = alloca double, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %real.addr.ascast = addrspacecast ptr addrspace(5) %real.addr to ptr
  %imag.addr.ascast = addrspacecast ptr addrspace(5) %imag.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store double %real, ptr %real.addr.ascast, align 8, !tbaa !49
  store double %imag, ptr %imag.addr.ascast, align 8, !tbaa !49
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 0
  %0 = load double, ptr %real.addr.ascast, align 8, !tbaa !49
  store double %0, ptr %x, align 8, !tbaa !51
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 1
  %1 = load double, ptr %imag.addr.ascast, align 8, !tbaa !49
  store double %1, ptr %y, align 8, !tbaa !53
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z9InvRad7B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_S3_S3_(ptr noundef %R0, ptr noundef %R1, ptr noundef %R2, ptr noundef %R3, ptr noundef %R4, ptr noundef %R5, ptr noundef %R6) #13 comdat {
entry:
  %R0.addr = alloca ptr, align 8, addrspace(5)
  %R1.addr = alloca ptr, align 8, addrspace(5)
  %R2.addr = alloca ptr, align 8, addrspace(5)
  %R3.addr = alloca ptr, align 8, addrspace(5)
  %R4.addr = alloca ptr, align 8, addrspace(5)
  %R5.addr = alloca ptr, align 8, addrspace(5)
  %R6.addr = alloca ptr, align 8, addrspace(5)
  %p0 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p1 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p2 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p3 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p4 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p5 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p6 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p7 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p8 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %p9 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q0 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q1 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q2 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q3 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q4 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q5 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q6 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q7 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %q8 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp3 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp5 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp7 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp9 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp11 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp13 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp15 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp17 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp19 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp21 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp23 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp25 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp27 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp29 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp31 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp33 = alloca double, align 8, addrspace(5)
  %ref.tmp35 = alloca double, align 8, addrspace(5)
  %ref.tmp37 = alloca double, align 8, addrspace(5)
  %ref.tmp39 = alloca double, align 8, addrspace(5)
  %ref.tmp41 = alloca double, align 8, addrspace(5)
  %ref.tmp43 = alloca double, align 8, addrspace(5)
  %ref.tmp45 = alloca double, align 8, addrspace(5)
  %ref.tmp47 = alloca double, align 8, addrspace(5)
  %ref.tmp49 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp51 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp53 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp55 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp56 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp59 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp61 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp63 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp64 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp67 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp69 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp71 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp73 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp75 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp77 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %R0.addr.ascast = addrspacecast ptr addrspace(5) %R0.addr to ptr
  %R1.addr.ascast = addrspacecast ptr addrspace(5) %R1.addr to ptr
  %R2.addr.ascast = addrspacecast ptr addrspace(5) %R2.addr to ptr
  %R3.addr.ascast = addrspacecast ptr addrspace(5) %R3.addr to ptr
  %R4.addr.ascast = addrspacecast ptr addrspace(5) %R4.addr to ptr
  %R5.addr.ascast = addrspacecast ptr addrspace(5) %R5.addr to ptr
  %R6.addr.ascast = addrspacecast ptr addrspace(5) %R6.addr to ptr
  %p0.ascast = addrspacecast ptr addrspace(5) %p0 to ptr
  %p1.ascast = addrspacecast ptr addrspace(5) %p1 to ptr
  %p2.ascast = addrspacecast ptr addrspace(5) %p2 to ptr
  %p3.ascast = addrspacecast ptr addrspace(5) %p3 to ptr
  %p4.ascast = addrspacecast ptr addrspace(5) %p4 to ptr
  %p5.ascast = addrspacecast ptr addrspace(5) %p5 to ptr
  %p6.ascast = addrspacecast ptr addrspace(5) %p6 to ptr
  %p7.ascast = addrspacecast ptr addrspace(5) %p7 to ptr
  %p8.ascast = addrspacecast ptr addrspace(5) %p8 to ptr
  %p9.ascast = addrspacecast ptr addrspace(5) %p9 to ptr
  %q0.ascast = addrspacecast ptr addrspace(5) %q0 to ptr
  %q1.ascast = addrspacecast ptr addrspace(5) %q1 to ptr
  %q2.ascast = addrspacecast ptr addrspace(5) %q2 to ptr
  %q3.ascast = addrspacecast ptr addrspace(5) %q3 to ptr
  %q4.ascast = addrspacecast ptr addrspace(5) %q4 to ptr
  %q5.ascast = addrspacecast ptr addrspace(5) %q5 to ptr
  %q6.ascast = addrspacecast ptr addrspace(5) %q6 to ptr
  %q7.ascast = addrspacecast ptr addrspace(5) %q7 to ptr
  %q8.ascast = addrspacecast ptr addrspace(5) %q8 to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  %ref.tmp1.ascast = addrspacecast ptr addrspace(5) %ref.tmp1 to ptr
  %ref.tmp3.ascast = addrspacecast ptr addrspace(5) %ref.tmp3 to ptr
  %ref.tmp5.ascast = addrspacecast ptr addrspace(5) %ref.tmp5 to ptr
  %ref.tmp7.ascast = addrspacecast ptr addrspace(5) %ref.tmp7 to ptr
  %ref.tmp9.ascast = addrspacecast ptr addrspace(5) %ref.tmp9 to ptr
  %ref.tmp11.ascast = addrspacecast ptr addrspace(5) %ref.tmp11 to ptr
  %ref.tmp13.ascast = addrspacecast ptr addrspace(5) %ref.tmp13 to ptr
  %ref.tmp15.ascast = addrspacecast ptr addrspace(5) %ref.tmp15 to ptr
  %ref.tmp17.ascast = addrspacecast ptr addrspace(5) %ref.tmp17 to ptr
  %ref.tmp19.ascast = addrspacecast ptr addrspace(5) %ref.tmp19 to ptr
  %ref.tmp21.ascast = addrspacecast ptr addrspace(5) %ref.tmp21 to ptr
  %ref.tmp23.ascast = addrspacecast ptr addrspace(5) %ref.tmp23 to ptr
  %ref.tmp25.ascast = addrspacecast ptr addrspace(5) %ref.tmp25 to ptr
  %ref.tmp27.ascast = addrspacecast ptr addrspace(5) %ref.tmp27 to ptr
  %ref.tmp29.ascast = addrspacecast ptr addrspace(5) %ref.tmp29 to ptr
  %ref.tmp31.ascast = addrspacecast ptr addrspace(5) %ref.tmp31 to ptr
  %ref.tmp33.ascast = addrspacecast ptr addrspace(5) %ref.tmp33 to ptr
  %ref.tmp35.ascast = addrspacecast ptr addrspace(5) %ref.tmp35 to ptr
  %ref.tmp37.ascast = addrspacecast ptr addrspace(5) %ref.tmp37 to ptr
  %ref.tmp39.ascast = addrspacecast ptr addrspace(5) %ref.tmp39 to ptr
  %ref.tmp41.ascast = addrspacecast ptr addrspace(5) %ref.tmp41 to ptr
  %ref.tmp43.ascast = addrspacecast ptr addrspace(5) %ref.tmp43 to ptr
  %ref.tmp45.ascast = addrspacecast ptr addrspace(5) %ref.tmp45 to ptr
  %ref.tmp47.ascast = addrspacecast ptr addrspace(5) %ref.tmp47 to ptr
  %ref.tmp49.ascast = addrspacecast ptr addrspace(5) %ref.tmp49 to ptr
  %ref.tmp51.ascast = addrspacecast ptr addrspace(5) %ref.tmp51 to ptr
  %ref.tmp53.ascast = addrspacecast ptr addrspace(5) %ref.tmp53 to ptr
  %ref.tmp55.ascast = addrspacecast ptr addrspace(5) %ref.tmp55 to ptr
  %ref.tmp56.ascast = addrspacecast ptr addrspace(5) %ref.tmp56 to ptr
  %ref.tmp59.ascast = addrspacecast ptr addrspace(5) %ref.tmp59 to ptr
  %ref.tmp61.ascast = addrspacecast ptr addrspace(5) %ref.tmp61 to ptr
  %ref.tmp63.ascast = addrspacecast ptr addrspace(5) %ref.tmp63 to ptr
  %ref.tmp64.ascast = addrspacecast ptr addrspace(5) %ref.tmp64 to ptr
  %ref.tmp67.ascast = addrspacecast ptr addrspace(5) %ref.tmp67 to ptr
  %ref.tmp69.ascast = addrspacecast ptr addrspace(5) %ref.tmp69 to ptr
  %ref.tmp71.ascast = addrspacecast ptr addrspace(5) %ref.tmp71 to ptr
  %ref.tmp73.ascast = addrspacecast ptr addrspace(5) %ref.tmp73 to ptr
  %ref.tmp75.ascast = addrspacecast ptr addrspace(5) %ref.tmp75 to ptr
  %ref.tmp77.ascast = addrspacecast ptr addrspace(5) %ref.tmp77 to ptr
  store ptr %R0, ptr %R0.addr.ascast, align 8, !tbaa !6
  store ptr %R1, ptr %R1.addr.ascast, align 8, !tbaa !6
  store ptr %R2, ptr %R2.addr.ascast, align 8, !tbaa !6
  store ptr %R3, ptr %R3.addr.ascast, align 8, !tbaa !6
  store ptr %R4, ptr %R4.addr.ascast, align 8, !tbaa !6
  store ptr %R5, ptr %R5.addr.ascast, align 8, !tbaa !6
  store ptr %R6, ptr %R6.addr.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p0) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p1) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p2) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p3) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p4) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p5) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p6) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p7) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p8) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %p9) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q0) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q1) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q2) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q3) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q4) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q5) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q6) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q7) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %q8) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %0 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %1 = load ptr, ptr %R6.addr.ascast, align 8, !tbaa !6
  %call = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  %2 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 0
  %3 = extractvalue %struct.rocfft_complex %call, 0
  store double %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 1
  %5 = extractvalue %struct.rocfft_complex %call, 1
  store double %5, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p0.ascast, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1) #10
  %6 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %7 = load ptr, ptr %R6.addr.ascast, align 8, !tbaa !6
  %call2 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  %8 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1.ascast, i32 0, i32 0
  %9 = extractvalue %struct.rocfft_complex %call2, 0
  store double %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1.ascast, i32 0, i32 1
  %11 = extractvalue %struct.rocfft_complex %call2, 1
  store double %11, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p1.ascast, ptr align 8 %ref.tmp1.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp3) #10
  %12 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %13 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %call4 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  %14 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp3.ascast, i32 0, i32 0
  %15 = extractvalue %struct.rocfft_complex %call4, 0
  store double %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp3.ascast, i32 0, i32 1
  %17 = extractvalue %struct.rocfft_complex %call4, 1
  store double %17, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p2.ascast, ptr align 8 %ref.tmp3.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp3) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp5) #10
  %18 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %19 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %call6 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19) #18
  %20 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp5.ascast, i32 0, i32 0
  %21 = extractvalue %struct.rocfft_complex %call6, 0
  store double %21, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp5.ascast, i32 0, i32 1
  %23 = extractvalue %struct.rocfft_complex %call6, 1
  store double %23, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p3.ascast, ptr align 8 %ref.tmp5.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp5) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp7) #10
  %24 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %25 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %call8 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25) #18
  %26 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp7.ascast, i32 0, i32 0
  %27 = extractvalue %struct.rocfft_complex %call8, 0
  store double %27, ptr %26, align 8
  %28 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp7.ascast, i32 0, i32 1
  %29 = extractvalue %struct.rocfft_complex %call8, 1
  store double %29, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p4.ascast, ptr align 8 %ref.tmp7.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp7) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp9) #10
  %30 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %31 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %call10 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31) #18
  %32 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp9.ascast, i32 0, i32 0
  %33 = extractvalue %struct.rocfft_complex %call10, 0
  store double %33, ptr %32, align 8
  %34 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp9.ascast, i32 0, i32 1
  %35 = extractvalue %struct.rocfft_complex %call10, 1
  store double %35, ptr %34, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p5.ascast, ptr align 8 %ref.tmp9.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp9) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp11) #10
  %call12 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p2.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p0.ascast) #18
  %36 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp11.ascast, i32 0, i32 0
  %37 = extractvalue %struct.rocfft_complex %call12, 0
  store double %37, ptr %36, align 8
  %38 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp11.ascast, i32 0, i32 1
  %39 = extractvalue %struct.rocfft_complex %call12, 1
  store double %39, ptr %38, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p6.ascast, ptr align 8 %ref.tmp11.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp11) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp13) #10
  %call14 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p2.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p0.ascast) #18
  %40 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp13.ascast, i32 0, i32 0
  %41 = extractvalue %struct.rocfft_complex %call14, 0
  store double %41, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp13.ascast, i32 0, i32 1
  %43 = extractvalue %struct.rocfft_complex %call14, 1
  store double %43, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q4.ascast, ptr align 8 %ref.tmp13.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp13) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp15) #10
  %call16 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p0.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p4.ascast) #18
  %44 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp15.ascast, i32 0, i32 0
  %45 = extractvalue %struct.rocfft_complex %call16, 0
  store double %45, ptr %44, align 8
  %46 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp15.ascast, i32 0, i32 1
  %47 = extractvalue %struct.rocfft_complex %call16, 1
  store double %47, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q2.ascast, ptr align 8 %ref.tmp15.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp15) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp17) #10
  %call18 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p4.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p2.ascast) #18
  %48 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp17.ascast, i32 0, i32 0
  %49 = extractvalue %struct.rocfft_complex %call18, 0
  store double %49, ptr %48, align 8
  %50 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp17.ascast, i32 0, i32 1
  %51 = extractvalue %struct.rocfft_complex %call18, 1
  store double %51, ptr %50, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q3.ascast, ptr align 8 %ref.tmp17.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp17) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp19) #10
  %call20 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p5.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p3.ascast) #18
  %52 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp19.ascast, i32 0, i32 0
  %53 = extractvalue %struct.rocfft_complex %call20, 0
  store double %53, ptr %52, align 8
  %54 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp19.ascast, i32 0, i32 1
  %55 = extractvalue %struct.rocfft_complex %call20, 1
  store double %55, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p7.ascast, ptr align 8 %ref.tmp19.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp19) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp21) #10
  %call22 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p5.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p3.ascast) #18
  %56 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp21.ascast, i32 0, i32 0
  %57 = extractvalue %struct.rocfft_complex %call22, 0
  store double %57, ptr %56, align 8
  %58 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp21.ascast, i32 0, i32 1
  %59 = extractvalue %struct.rocfft_complex %call22, 1
  store double %59, ptr %58, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q7.ascast, ptr align 8 %ref.tmp21.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp21) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp23) #10
  %call24 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p1.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p5.ascast) #18
  %60 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp23.ascast, i32 0, i32 0
  %61 = extractvalue %struct.rocfft_complex %call24, 0
  store double %61, ptr %60, align 8
  %62 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp23.ascast, i32 0, i32 1
  %63 = extractvalue %struct.rocfft_complex %call24, 1
  store double %63, ptr %62, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q6.ascast, ptr align 8 %ref.tmp23.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp23) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp25) #10
  %call26 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p3.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p1.ascast) #18
  %64 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp25.ascast, i32 0, i32 0
  %65 = extractvalue %struct.rocfft_complex %call26, 0
  store double %65, ptr %64, align 8
  %66 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp25.ascast, i32 0, i32 1
  %67 = extractvalue %struct.rocfft_complex %call26, 1
  store double %67, ptr %66, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q8.ascast, ptr align 8 %ref.tmp25.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp25) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp27) #10
  %call28 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p6.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p4.ascast) #18
  %68 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp27.ascast, i32 0, i32 0
  %69 = extractvalue %struct.rocfft_complex %call28, 0
  store double %69, ptr %68, align 8
  %70 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp27.ascast, i32 0, i32 1
  %71 = extractvalue %struct.rocfft_complex %call28, 1
  store double %71, ptr %70, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q1.ascast, ptr align 8 %ref.tmp27.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp27) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp29) #10
  %call30 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p7.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p1.ascast) #18
  %72 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp29.ascast, i32 0, i32 0
  %73 = extractvalue %struct.rocfft_complex %call30, 0
  store double %73, ptr %72, align 8
  %74 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp29.ascast, i32 0, i32 1
  %75 = extractvalue %struct.rocfft_complex %call30, 1
  store double %75, ptr %74, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q5.ascast, ptr align 8 %ref.tmp29.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp29) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp31) #10
  %76 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %call32 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) %q1.ascast) #18
  %77 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp31.ascast, i32 0, i32 0
  %78 = extractvalue %struct.rocfft_complex %call32, 0
  store double %78, ptr %77, align 8
  %79 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp31.ascast, i32 0, i32 1
  %80 = extractvalue %struct.rocfft_complex %call32, 1
  store double %80, ptr %79, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q0.ascast, ptr align 8 %ref.tmp31.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp31) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp33) #10
  store double 0xBFF2AAAAAAAAAAAA, ptr %ref.tmp33.ascast, align 8, !tbaa !49
  %call34 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q1.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp33.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp33) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp35) #10
  store double 0x3FE948F637E14327, ptr %ref.tmp35.ascast, align 8, !tbaa !49
  %call36 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q2.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp35.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp35) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp37) #10
  store double 0x3FAC98EE36B3C0B5, ptr %ref.tmp37.ascast, align 8, !tbaa !49
  %call38 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q3.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp37.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp37) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp39) #10
  store double 0x3FE77F675476071B, ptr %ref.tmp39.ascast, align 8, !tbaa !49
  %call40 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q4.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp39.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp39) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp41) #10
  store double 0xBFDC38AA37C3F68C, ptr %ref.tmp41.ascast, align 8, !tbaa !49
  %call42 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q5.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp41.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp41) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp43) #10
  store double 0xBFD5D0DCB247C609, ptr %ref.tmp43.ascast, align 8, !tbaa !49
  %call44 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q6.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp43.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp43) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp45) #10
  store double 0x3FE11646E976EE23, ptr %ref.tmp45.ascast, align 8, !tbaa !49
  %call46 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q7.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp45.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp45) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp47) #10
  store double 0xBFEBFEB5429AD128, ptr %ref.tmp47.ascast, align 8, !tbaa !49
  %call48 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %q8.ascast, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp47.ascast) #18
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp47) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp49) #10
  %call50 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %q0.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q1.ascast) #18
  %81 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp49.ascast, i32 0, i32 0
  %82 = extractvalue %struct.rocfft_complex %call50, 0
  store double %82, ptr %81, align 8
  %83 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp49.ascast, i32 0, i32 1
  %84 = extractvalue %struct.rocfft_complex %call50, 1
  store double %84, ptr %83, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p0.ascast, ptr align 8 %ref.tmp49.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp49) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp51) #10
  %call52 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %q2.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q3.ascast) #18
  %85 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp51.ascast, i32 0, i32 0
  %86 = extractvalue %struct.rocfft_complex %call52, 0
  store double %86, ptr %85, align 8
  %87 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp51.ascast, i32 0, i32 1
  %88 = extractvalue %struct.rocfft_complex %call52, 1
  store double %88, ptr %87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p1.ascast, ptr align 8 %ref.tmp51.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp51) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp53) #10
  %call54 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %q4.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q3.ascast) #18
  %89 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp53.ascast, i32 0, i32 0
  %90 = extractvalue %struct.rocfft_complex %call54, 0
  store double %90, ptr %89, align 8
  %91 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp53.ascast, i32 0, i32 1
  %92 = extractvalue %struct.rocfft_complex %call54, 1
  store double %92, ptr %91, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p2.ascast, ptr align 8 %ref.tmp53.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp53) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp55) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp56) #10
  %call57 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEngEv(ptr noundef nonnull align 8 dereferenceable(16) %q2.ascast) #18
  %93 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp56.ascast, i32 0, i32 0
  %94 = extractvalue %struct.rocfft_complex %call57, 0
  store double %94, ptr %93, align 8
  %95 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp56.ascast, i32 0, i32 1
  %96 = extractvalue %struct.rocfft_complex %call57, 1
  store double %96, ptr %95, align 8
  %call58 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp56.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q4.ascast) #18
  %97 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp55.ascast, i32 0, i32 0
  %98 = extractvalue %struct.rocfft_complex %call58, 0
  store double %98, ptr %97, align 8
  %99 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp55.ascast, i32 0, i32 1
  %100 = extractvalue %struct.rocfft_complex %call58, 1
  store double %100, ptr %99, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p3.ascast, ptr align 8 %ref.tmp55.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp56) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp55) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp59) #10
  %call60 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %q6.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q7.ascast) #18
  %101 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp59.ascast, i32 0, i32 0
  %102 = extractvalue %struct.rocfft_complex %call60, 0
  store double %102, ptr %101, align 8
  %103 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp59.ascast, i32 0, i32 1
  %104 = extractvalue %struct.rocfft_complex %call60, 1
  store double %104, ptr %103, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p4.ascast, ptr align 8 %ref.tmp59.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp59) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp61) #10
  %call62 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %q8.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q7.ascast) #18
  %105 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp61.ascast, i32 0, i32 0
  %106 = extractvalue %struct.rocfft_complex %call62, 0
  store double %106, ptr %105, align 8
  %107 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp61.ascast, i32 0, i32 1
  %108 = extractvalue %struct.rocfft_complex %call62, 1
  store double %108, ptr %107, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p5.ascast, ptr align 8 %ref.tmp61.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp61) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp63) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp64) #10
  %call65 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEngEv(ptr noundef nonnull align 8 dereferenceable(16) %q8.ascast) #18
  %109 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp64.ascast, i32 0, i32 0
  %110 = extractvalue %struct.rocfft_complex %call65, 0
  store double %110, ptr %109, align 8
  %111 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp64.ascast, i32 0, i32 1
  %112 = extractvalue %struct.rocfft_complex %call65, 1
  store double %112, ptr %111, align 8
  %call66 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp64.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q6.ascast) #18
  %113 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp63.ascast, i32 0, i32 0
  %114 = extractvalue %struct.rocfft_complex %call66, 0
  store double %114, ptr %113, align 8
  %115 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp63.ascast, i32 0, i32 1
  %116 = extractvalue %struct.rocfft_complex %call66, 1
  store double %116, ptr %115, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p6.ascast, ptr align 8 %ref.tmp63.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp64) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp63) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp67) #10
  %call68 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p0.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p1.ascast) #18
  %117 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp67.ascast, i32 0, i32 0
  %118 = extractvalue %struct.rocfft_complex %call68, 0
  store double %118, ptr %117, align 8
  %119 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp67.ascast, i32 0, i32 1
  %120 = extractvalue %struct.rocfft_complex %call68, 1
  store double %120, ptr %119, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p7.ascast, ptr align 8 %ref.tmp67.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp67) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp69) #10
  %call70 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p0.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p2.ascast) #18
  %121 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp69.ascast, i32 0, i32 0
  %122 = extractvalue %struct.rocfft_complex %call70, 0
  store double %122, ptr %121, align 8
  %123 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp69.ascast, i32 0, i32 1
  %124 = extractvalue %struct.rocfft_complex %call70, 1
  store double %124, ptr %123, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p8.ascast, ptr align 8 %ref.tmp69.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp69) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp71) #10
  %call72 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p0.ascast, ptr noundef nonnull align 8 dereferenceable(16) %p3.ascast) #18
  %125 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp71.ascast, i32 0, i32 0
  %126 = extractvalue %struct.rocfft_complex %call72, 0
  store double %126, ptr %125, align 8
  %127 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp71.ascast, i32 0, i32 1
  %128 = extractvalue %struct.rocfft_complex %call72, 1
  store double %128, ptr %127, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p9.ascast, ptr align 8 %ref.tmp71.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp71) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp73) #10
  %call74 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p4.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q5.ascast) #18
  %129 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp73.ascast, i32 0, i32 0
  %130 = extractvalue %struct.rocfft_complex %call74, 0
  store double %130, ptr %129, align 8
  %131 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp73.ascast, i32 0, i32 1
  %132 = extractvalue %struct.rocfft_complex %call74, 1
  store double %132, ptr %131, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q6.ascast, ptr align 8 %ref.tmp73.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp73) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp75) #10
  %call76 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p5.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q5.ascast) #18
  %133 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp75.ascast, i32 0, i32 0
  %134 = extractvalue %struct.rocfft_complex %call76, 0
  store double %134, ptr %133, align 8
  %135 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp75.ascast, i32 0, i32 1
  %136 = extractvalue %struct.rocfft_complex %call76, 1
  store double %136, ptr %135, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q7.ascast, ptr align 8 %ref.tmp75.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp75) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp77) #10
  %call78 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %p6.ascast, ptr noundef nonnull align 8 dereferenceable(16) %q5.ascast) #18
  %137 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp77.ascast, i32 0, i32 0
  %138 = extractvalue %struct.rocfft_complex %call78, 0
  store double %138, ptr %137, align 8
  %139 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp77.ascast, i32 0, i32 1
  %140 = extractvalue %struct.rocfft_complex %call78, 1
  store double %140, ptr %139, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q8.ascast, ptr align 8 %ref.tmp77.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp77) #10
  %141 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %141, ptr align 8 %q0.ascast, i64 16, i1 false), !tbaa.struct !48
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %p7.ascast, i32 0, i32 0
  %142 = load double, ptr %x, align 8, !tbaa !51
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %q6.ascast, i32 0, i32 1
  %143 = load double, ptr %y, align 8, !tbaa !53
  %add = fadd contract double %142, %143
  %144 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x79 = getelementptr inbounds %struct.rocfft_complex, ptr %144, i32 0, i32 0
  store double %add, ptr %x79, align 8, !tbaa !51
  %y80 = getelementptr inbounds %struct.rocfft_complex, ptr %p7.ascast, i32 0, i32 1
  %145 = load double, ptr %y80, align 8, !tbaa !53
  %x81 = getelementptr inbounds %struct.rocfft_complex, ptr %q6.ascast, i32 0, i32 0
  %146 = load double, ptr %x81, align 8, !tbaa !51
  %sub = fsub contract double %145, %146
  %147 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y82 = getelementptr inbounds %struct.rocfft_complex, ptr %147, i32 0, i32 1
  store double %sub, ptr %y82, align 8, !tbaa !53
  %x83 = getelementptr inbounds %struct.rocfft_complex, ptr %p9.ascast, i32 0, i32 0
  %148 = load double, ptr %x83, align 8, !tbaa !51
  %y84 = getelementptr inbounds %struct.rocfft_complex, ptr %q8.ascast, i32 0, i32 1
  %149 = load double, ptr %y84, align 8, !tbaa !53
  %add85 = fadd contract double %148, %149
  %150 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x86 = getelementptr inbounds %struct.rocfft_complex, ptr %150, i32 0, i32 0
  store double %add85, ptr %x86, align 8, !tbaa !51
  %y87 = getelementptr inbounds %struct.rocfft_complex, ptr %p9.ascast, i32 0, i32 1
  %151 = load double, ptr %y87, align 8, !tbaa !53
  %x88 = getelementptr inbounds %struct.rocfft_complex, ptr %q8.ascast, i32 0, i32 0
  %152 = load double, ptr %x88, align 8, !tbaa !51
  %sub89 = fsub contract double %151, %152
  %153 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y90 = getelementptr inbounds %struct.rocfft_complex, ptr %153, i32 0, i32 1
  store double %sub89, ptr %y90, align 8, !tbaa !53
  %x91 = getelementptr inbounds %struct.rocfft_complex, ptr %p8.ascast, i32 0, i32 0
  %154 = load double, ptr %x91, align 8, !tbaa !51
  %y92 = getelementptr inbounds %struct.rocfft_complex, ptr %q7.ascast, i32 0, i32 1
  %155 = load double, ptr %y92, align 8, !tbaa !53
  %sub93 = fsub contract double %154, %155
  %156 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x94 = getelementptr inbounds %struct.rocfft_complex, ptr %156, i32 0, i32 0
  store double %sub93, ptr %x94, align 8, !tbaa !51
  %y95 = getelementptr inbounds %struct.rocfft_complex, ptr %p8.ascast, i32 0, i32 1
  %157 = load double, ptr %y95, align 8, !tbaa !53
  %x96 = getelementptr inbounds %struct.rocfft_complex, ptr %q7.ascast, i32 0, i32 0
  %158 = load double, ptr %x96, align 8, !tbaa !51
  %add97 = fadd contract double %157, %158
  %159 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y98 = getelementptr inbounds %struct.rocfft_complex, ptr %159, i32 0, i32 1
  store double %add97, ptr %y98, align 8, !tbaa !53
  %x99 = getelementptr inbounds %struct.rocfft_complex, ptr %p8.ascast, i32 0, i32 0
  %160 = load double, ptr %x99, align 8, !tbaa !51
  %y100 = getelementptr inbounds %struct.rocfft_complex, ptr %q7.ascast, i32 0, i32 1
  %161 = load double, ptr %y100, align 8, !tbaa !53
  %add101 = fadd contract double %160, %161
  %162 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x102 = getelementptr inbounds %struct.rocfft_complex, ptr %162, i32 0, i32 0
  store double %add101, ptr %x102, align 8, !tbaa !51
  %y103 = getelementptr inbounds %struct.rocfft_complex, ptr %p8.ascast, i32 0, i32 1
  %163 = load double, ptr %y103, align 8, !tbaa !53
  %x104 = getelementptr inbounds %struct.rocfft_complex, ptr %q7.ascast, i32 0, i32 0
  %164 = load double, ptr %x104, align 8, !tbaa !51
  %sub105 = fsub contract double %163, %164
  %165 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y106 = getelementptr inbounds %struct.rocfft_complex, ptr %165, i32 0, i32 1
  store double %sub105, ptr %y106, align 8, !tbaa !53
  %x107 = getelementptr inbounds %struct.rocfft_complex, ptr %p9.ascast, i32 0, i32 0
  %166 = load double, ptr %x107, align 8, !tbaa !51
  %y108 = getelementptr inbounds %struct.rocfft_complex, ptr %q8.ascast, i32 0, i32 1
  %167 = load double, ptr %y108, align 8, !tbaa !53
  %sub109 = fsub contract double %166, %167
  %168 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %x110 = getelementptr inbounds %struct.rocfft_complex, ptr %168, i32 0, i32 0
  store double %sub109, ptr %x110, align 8, !tbaa !51
  %y111 = getelementptr inbounds %struct.rocfft_complex, ptr %p9.ascast, i32 0, i32 1
  %169 = load double, ptr %y111, align 8, !tbaa !53
  %x112 = getelementptr inbounds %struct.rocfft_complex, ptr %q8.ascast, i32 0, i32 0
  %170 = load double, ptr %x112, align 8, !tbaa !51
  %add113 = fadd contract double %169, %170
  %171 = load ptr, ptr %R5.addr.ascast, align 8, !tbaa !6
  %y114 = getelementptr inbounds %struct.rocfft_complex, ptr %171, i32 0, i32 1
  store double %add113, ptr %y114, align 8, !tbaa !53
  %x115 = getelementptr inbounds %struct.rocfft_complex, ptr %p7.ascast, i32 0, i32 0
  %172 = load double, ptr %x115, align 8, !tbaa !51
  %y116 = getelementptr inbounds %struct.rocfft_complex, ptr %q6.ascast, i32 0, i32 1
  %173 = load double, ptr %y116, align 8, !tbaa !53
  %sub117 = fsub contract double %172, %173
  %174 = load ptr, ptr %R6.addr.ascast, align 8, !tbaa !6
  %x118 = getelementptr inbounds %struct.rocfft_complex, ptr %174, i32 0, i32 0
  store double %sub117, ptr %x118, align 8, !tbaa !51
  %y119 = getelementptr inbounds %struct.rocfft_complex, ptr %p7.ascast, i32 0, i32 1
  %175 = load double, ptr %y119, align 8, !tbaa !53
  %x120 = getelementptr inbounds %struct.rocfft_complex, ptr %q6.ascast, i32 0, i32 0
  %176 = load double, ptr %x120, align 8, !tbaa !51
  %add121 = fadd contract double %175, %176
  %177 = load ptr, ptr %R6.addr.ascast, align 8, !tbaa !6
  %y122 = getelementptr inbounds %struct.rocfft_complex, ptr %177, i32 0, i32 1
  store double %add121, ptr %y122, align 8, !tbaa !53
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q8) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q7) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q6) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q5) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q4) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q3) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q2) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q1) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %q0) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p9) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p8) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p7) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p6) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p5) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p4) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p3) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p2) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p1) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %p0) #10
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z9InvRad2B1I14rocfft_complexIdEEvPT_S3_(ptr noundef %R0, ptr noundef %R1) #13 comdat {
entry:
  %R0.addr = alloca ptr, align 8, addrspace(5)
  %R1.addr = alloca ptr, align 8, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp1 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp2 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp3 = alloca double, align 8, addrspace(5)
  %R0.addr.ascast = addrspacecast ptr addrspace(5) %R0.addr to ptr
  %R1.addr.ascast = addrspacecast ptr addrspace(5) %R1.addr to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  %ref.tmp1.ascast = addrspacecast ptr addrspace(5) %ref.tmp1 to ptr
  %ref.tmp2.ascast = addrspacecast ptr addrspace(5) %ref.tmp2 to ptr
  %ref.tmp3.ascast = addrspacecast ptr addrspace(5) %ref.tmp3 to ptr
  store ptr %R0, ptr %R0.addr.ascast, align 8, !tbaa !6
  store ptr %R1, ptr %R1.addr.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %0 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %1 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %call = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  %2 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 0
  %3 = extractvalue %struct.rocfft_complex %call, 0
  store double %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 1
  %5 = extractvalue %struct.rocfft_complex %call, 1
  store double %5, ptr %4, align 8
  %6 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp1) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp2) #10
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %ref.tmp3) #10
  store double 2.000000e+00, ptr %ref.tmp3.ascast, align 8, !tbaa !49
  %7 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %call4 = call %struct.rocfft_complex @_ZmlIddE14rocfft_complexIT0_ERKT_RKS2_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp3.ascast, ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  %8 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp2.ascast, i32 0, i32 0
  %9 = extractvalue %struct.rocfft_complex %call4, 0
  store double %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp2.ascast, i32 0, i32 1
  %11 = extractvalue %struct.rocfft_complex %call4, 1
  store double %11, ptr %10, align 8
  %12 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %call5 = call %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp2.ascast, ptr noundef nonnull align 8 dereferenceable(16) %12) #18
  %13 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1.ascast, i32 0, i32 0
  %14 = extractvalue %struct.rocfft_complex %call5, 0
  store double %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp1.ascast, i32 0, i32 1
  %16 = extractvalue %struct.rocfft_complex %call5, 1
  store double %16, ptr %15, align 8
  %17 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %ref.tmp1.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %ref.tmp3) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp2) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp1) #10
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %twiddles, i64 noundef %u) #13 comdat {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %twiddles.addr = alloca ptr, align 8, addrspace(5)
  %u.addr = alloca i64, align 8, addrspace(5)
  %j = alloca i64, align 8, addrspace(5)
  %i = alloca i32, align 4, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %twiddles.addr.ascast = addrspacecast ptr addrspace(5) %twiddles.addr to ptr
  %u.addr.ascast = addrspacecast ptr addrspace(5) %u.addr to ptr
  %j.ascast = addrspacecast ptr addrspace(5) %j to ptr
  %i.ascast = addrspacecast ptr addrspace(5) %i to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  store ptr %twiddles, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  store i64 %u, ptr %u.addr.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %j) #10
  %0 = load i64, ptr %u.addr.ascast, align 8, !tbaa !41
  %and = and i64 %0, 255
  store i64 %and, ptr %j.ascast, align 8, !tbaa !41
  %1 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %2 = load i64, ptr %j.ascast, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.rocfft_complex, ptr %1, i64 %2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 8 %arrayidx, i64 16, i1 false), !tbaa.struct !48
  %3 = load i64, ptr %u.addr.ascast, align 8, !tbaa !41
  %shr = lshr i64 %3, 8
  store i64 %shr, ptr %u.addr.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %i) #10
  store i32 0, ptr %i.ascast, align 4, !tbaa !10
  %4 = load i32, ptr %i.ascast, align 4, !tbaa !10
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %i.ascast, align 4, !tbaa !10
  %5 = load i64, ptr %u.addr.ascast, align 8, !tbaa !41
  %and1 = and i64 %5, 255
  store i64 %and1, ptr %j.ascast, align 8, !tbaa !41
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %retval.ascast, i32 0, i32 0
  %6 = load double, ptr %x, align 8, !tbaa !51
  %7 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %8 = load i32, ptr %i.ascast, align 4, !tbaa !10
  %mul = mul nsw i32 256, %8
  %conv = sext i32 %mul to i64
  %9 = load i64, ptr %j.ascast, align 8, !tbaa !41
  %add2 = add i64 %conv, %9
  %arrayidx3 = getelementptr inbounds %struct.rocfft_complex, ptr %7, i64 %add2
  %x4 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx3, i32 0, i32 0
  %10 = load double, ptr %x4, align 8, !tbaa !51
  %mul5 = fmul contract double %6, %10
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %retval.ascast, i32 0, i32 1
  %11 = load double, ptr %y, align 8, !tbaa !53
  %12 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %13 = load i32, ptr %i.ascast, align 4, !tbaa !10
  %mul6 = mul nsw i32 256, %13
  %conv7 = sext i32 %mul6 to i64
  %14 = load i64, ptr %j.ascast, align 8, !tbaa !41
  %add8 = add i64 %conv7, %14
  %arrayidx9 = getelementptr inbounds %struct.rocfft_complex, ptr %12, i64 %add8
  %y10 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx9, i32 0, i32 1
  %15 = load double, ptr %y10, align 8, !tbaa !53
  %mul11 = fmul contract double %11, %15
  %sub = fsub contract double %mul5, %mul11
  %y12 = getelementptr inbounds %struct.rocfft_complex, ptr %retval.ascast, i32 0, i32 1
  %16 = load double, ptr %y12, align 8, !tbaa !53
  %17 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %18 = load i32, ptr %i.ascast, align 4, !tbaa !10
  %mul13 = mul nsw i32 256, %18
  %conv14 = sext i32 %mul13 to i64
  %19 = load i64, ptr %j.ascast, align 8, !tbaa !41
  %add15 = add i64 %conv14, %19
  %arrayidx16 = getelementptr inbounds %struct.rocfft_complex, ptr %17, i64 %add15
  %x17 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx16, i32 0, i32 0
  %20 = load double, ptr %x17, align 8, !tbaa !51
  %mul18 = fmul contract double %16, %20
  %x19 = getelementptr inbounds %struct.rocfft_complex, ptr %retval.ascast, i32 0, i32 0
  %21 = load double, ptr %x19, align 8, !tbaa !51
  %22 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %23 = load i32, ptr %i.ascast, align 4, !tbaa !10
  %mul20 = mul nsw i32 256, %23
  %conv21 = sext i32 %mul20 to i64
  %24 = load i64, ptr %j.ascast, align 8, !tbaa !41
  %add22 = add i64 %conv21, %24
  %arrayidx23 = getelementptr inbounds %struct.rocfft_complex, ptr %22, i64 %add22
  %y24 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx23, i32 0, i32 1
  %25 = load double, ptr %y24, align 8, !tbaa !53
  %mul25 = fmul contract double %21, %25
  %add26 = fadd contract double %mul18, %mul25
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.ascast, double noundef %sub, double noundef %add26) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %j) #10
  %26 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %26
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_ZNK14rocfft_complexIdEmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %rhs) #13 comdat align 2 {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %rhs.addr = alloca ptr, align 8, addrspace(5)
  %lhs = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %rhs.addr.ascast = addrspacecast ptr addrspace(5) %rhs.addr to ptr
  %lhs.ascast = addrspacecast ptr addrspace(5) %lhs to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %rhs, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %lhs) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lhs.ascast, ptr align 8 %this1, i64 16, i1 false), !tbaa.struct !48
  %0 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %lhs.ascast, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 8 %call, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %lhs) #10
  %1 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %1
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_ZmlIddE14rocfft_complexIT0_ERKT_RKS2_(ptr noundef nonnull align 8 dereferenceable(8) %lhs, ptr noundef nonnull align 8 dereferenceable(16) %rhs) #13 comdat {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %lhs.addr = alloca ptr, align 8, addrspace(5)
  %rhs.addr = alloca ptr, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %lhs.addr.ascast = addrspacecast ptr addrspace(5) %lhs.addr to ptr
  %rhs.addr.ascast = addrspacecast ptr addrspace(5) %rhs.addr to ptr
  store ptr %lhs, ptr %lhs.addr.ascast, align 8, !tbaa !6
  store ptr %rhs, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %0 = load ptr, ptr %lhs.addr.ascast, align 8, !tbaa !6
  %1 = load double, ptr %0, align 8, !tbaa !49
  %2 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %2, i32 0, i32 0
  %3 = load double, ptr %x, align 8, !tbaa !51
  %mul = fmul contract double %1, %3
  %4 = load ptr, ptr %lhs.addr.ascast, align 8, !tbaa !6
  %5 = load double, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %6, i32 0, i32 1
  %7 = load double, ptr %y, align 8, !tbaa !53
  %mul1 = fmul contract double %5, %7
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %retval.ascast, double noundef %mul, double noundef %mul1) #18
  %8 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %8
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmIERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %rhs) #13 comdat align 2 {
entry:
  %retval = alloca ptr, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %rhs.addr = alloca ptr, align 8, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %rhs.addr.ascast = addrspacecast ptr addrspace(5) %rhs.addr to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %rhs, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 0
  %0 = load double, ptr %x, align 8, !tbaa !51
  %1 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %x2 = getelementptr inbounds %struct.rocfft_complex, ptr %1, i32 0, i32 0
  %2 = load double, ptr %x2, align 8, !tbaa !51
  %sub = fsub contract double %0, %2
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 1
  %3 = load double, ptr %y, align 8, !tbaa !53
  %4 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %y3 = getelementptr inbounds %struct.rocfft_complex, ptr %4, i32 0, i32 1
  %5 = load double, ptr %y3, align 8, !tbaa !53
  %sub4 = fsub contract double %3, %5
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.ascast, double noundef %sub, double noundef %sub4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %this1, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  ret ptr %this1
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_ZNK14rocfft_complexIdEplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %rhs) #13 comdat align 2 {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %rhs.addr = alloca ptr, align 8, addrspace(5)
  %lhs = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %rhs.addr.ascast = addrspacecast ptr addrspace(5) %rhs.addr to ptr
  %lhs.ascast = addrspacecast ptr addrspace(5) %lhs to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %rhs, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %lhs) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lhs.ascast, ptr align 8 %this1, i64 16, i1 false), !tbaa.struct !48
  %0 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %lhs.ascast, ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 8 %call, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %lhs) #10
  %1 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %1
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEmLIdEERDaRKT_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %rhs) #13 comdat align 2 {
entry:
  %retval = alloca ptr, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %rhs.addr = alloca ptr, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %rhs.addr.ascast = addrspacecast ptr addrspace(5) %rhs.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %rhs, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  %0 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %1 = load double, ptr %0, align 8, !tbaa !49
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 0
  %2 = load double, ptr %x, align 8, !tbaa !51
  %mul = fmul contract double %2, %1
  store double %mul, ptr %x, align 8, !tbaa !51
  %3 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %4 = load double, ptr %3, align 8, !tbaa !49
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 1
  %5 = load double, ptr %y, align 8, !tbaa !53
  %mul2 = fmul contract double %5, %4
  store double %mul2, ptr %y, align 8, !tbaa !53
  ret ptr %this1
}

; Function Attrs: alwaysinline convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_ZNK14rocfft_complexIdEngEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #15 comdat align 2 {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 0
  %0 = load double, ptr %x, align 8, !tbaa !51
  %fneg = fneg contract double %0
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 1
  %1 = load double, ptr %y, align 8, !tbaa !53
  %fneg2 = fneg contract double %1
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %retval.ascast, double noundef %fneg, double noundef %fneg2) #18
  %2 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %2
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN14rocfft_complexIdEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %rhs) #13 comdat align 2 {
entry:
  %retval = alloca ptr, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %rhs.addr = alloca ptr, align 8, addrspace(5)
  %ref.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %rhs.addr.ascast = addrspacecast ptr addrspace(5) %rhs.addr to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %rhs, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 0
  %0 = load double, ptr %x, align 8, !tbaa !51
  %1 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %x2 = getelementptr inbounds %struct.rocfft_complex, ptr %1, i32 0, i32 0
  %2 = load double, ptr %x2, align 8, !tbaa !51
  %add = fadd contract double %0, %2
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %this1, i32 0, i32 1
  %3 = load double, ptr %y, align 8, !tbaa !53
  %4 = load ptr, ptr %rhs.addr.ascast, align 8, !tbaa !6
  %y3 = getelementptr inbounds %struct.rocfft_complex, ptr %4, i32 0, i32 1
  %5 = load double, ptr %y3, align 8, !tbaa !53
  %add4 = fadd contract double %3, %5
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.ascast, double noundef %add, double noundef %add4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %this1, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  ret ptr %this1
}

; Function Attrs: convergent inlinehint mustprogress nounwind
define internal void @_ZL9__barrieri(i32 noundef %n) #14 {
entry:
  %n.addr = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  store i32 %n, ptr %n.addr.ascast, align 4, !tbaa !10
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !10
  call void @_ZL20__work_group_barrierj(i32 noundef %0) #18
  ret void
}

; Function Attrs: convergent inlinehint mustprogress nounwind
define internal void @_ZL20__work_group_barrierj(i32 noundef %flags) #14 {
entry:
  %flags.addr = alloca i32, align 4, addrspace(5)
  %flags.addr.ascast = addrspacecast ptr addrspace(5) %flags.addr to ptr
  store i32 %flags, ptr %flags.addr.ascast, align 4, !tbaa !10
  %0 = load i32, ptr %flags.addr.ascast, align 4, !tbaa !10
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  fence syncscope("workgroup") release
  call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.amdgcn.s.barrier()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: convergent nocallback nofree nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #16

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef i32 @_ZNK15__HIP_ThreadIdxclEj(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x) #13 comdat align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %x.addr = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %x.addr.ascast = addrspacecast ptr addrspace(5) %x.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store i32 %x, ptr %x.addr.ascast, align 4, !tbaa !10
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  %0 = load i32, ptr %x.addr.ascast, align 4, !tbaa !10
  %call = call i64 @__ockl_get_local_id(i32 noundef %0) #20
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal range(i64 0, 1024) i64 @__ockl_get_local_id(i32 noundef %0) #17 {
  switch i32 %0, label %8 [
    i32 0, label %2
    i32 1, label %4
    i32 2, label %6
  ]

2:                                                ; preds = %1
  %3 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !54, !noundef !47
  br label %8

4:                                                ; preds = %1
  %5 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !54, !noundef !47
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @llvm.amdgcn.workitem.id.z(), !range !54, !noundef !47
  br label %8

8:                                                ; preds = %6, %4, %2, %1
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], [ 0, %1 ]
  %10 = zext nneg i32 %9 to i64
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.x() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.y() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.z() #6

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden noundef i32 @_ZNK14__HIP_BlockIdxclEj(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x) #13 comdat align 2 {
entry:
  %retval = alloca i32, align 4, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %x.addr = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %x.addr.ascast = addrspacecast ptr addrspace(5) %x.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store i32 %x, ptr %x.addr.ascast, align 4, !tbaa !10
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  %0 = load i32, ptr %x.addr.ascast, align 4, !tbaa !10
  %call = call i64 @__ockl_get_group_id(i32 noundef %0) #20
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal range(i64 0, 4294967296) i64 @__ockl_get_group_id(i32 noundef %0) #17 {
  switch i32 %0, label %8 [
    i32 0, label %2
    i32 1, label %4
    i32 2, label %6
  ]

2:                                                ; preds = %1
  %3 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  br label %8

4:                                                ; preds = %1
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.z()
  br label %8

8:                                                ; preds = %6, %4, %2, %1
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], [ 0, %1 ]
  %10 = zext i32 %9 to i64
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workgroup.id.x() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workgroup.id.y() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workgroup.id.z() #6

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z16store_cb_defaultI14rocfft_complexIdEEvPT_mS2_PvS4_(ptr noundef %data, i64 noundef %offset, double %element.coerce0, double %element.coerce1, ptr noundef %cbdata, ptr noundef %sharedMem) #13 comdat {
entry:
  %element = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %data.addr = alloca ptr, align 8, addrspace(5)
  %offset.addr = alloca i64, align 8, addrspace(5)
  %cbdata.addr = alloca ptr, align 8, addrspace(5)
  %sharedMem.addr = alloca ptr, align 8, addrspace(5)
  %element1 = addrspacecast ptr addrspace(5) %element to ptr
  %data.addr.ascast = addrspacecast ptr addrspace(5) %data.addr to ptr
  %offset.addr.ascast = addrspacecast ptr addrspace(5) %offset.addr to ptr
  %cbdata.addr.ascast = addrspacecast ptr addrspace(5) %cbdata.addr to ptr
  %sharedMem.addr.ascast = addrspacecast ptr addrspace(5) %sharedMem.addr to ptr
  %0 = getelementptr inbounds %struct.rocfft_complex, ptr %element1, i32 0, i32 0
  store double %element.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds %struct.rocfft_complex, ptr %element1, i32 0, i32 1
  store double %element.coerce1, ptr %1, align 8
  store ptr %data, ptr %data.addr.ascast, align 8, !tbaa !6
  store i64 %offset, ptr %offset.addr.ascast, align 8, !tbaa !41
  store ptr %cbdata, ptr %cbdata.addr.ascast, align 8, !tbaa !6
  store ptr %sharedMem, ptr %sharedMem.addr.ascast, align 8, !tbaa !6
  %2 = load ptr, ptr %data.addr.ascast, align 8, !tbaa !6
  %3 = load i64, ptr %offset.addr.ascast, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.rocfft_complex, ptr %2, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %element1, i64 16, i1 false), !tbaa.struct !48
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_Z15load_cb_defaultI14rocfft_complexIdEET_PS2_mPvS4_(ptr noundef %data, i64 noundef %offset, ptr noundef %cbdata, ptr noundef %sharedMem) #13 comdat {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %data.addr = alloca ptr, align 8, addrspace(5)
  %offset.addr = alloca i64, align 8, addrspace(5)
  %cbdata.addr = alloca ptr, align 8, addrspace(5)
  %sharedMem.addr = alloca ptr, align 8, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %data.addr.ascast = addrspacecast ptr addrspace(5) %data.addr to ptr
  %offset.addr.ascast = addrspacecast ptr addrspace(5) %offset.addr to ptr
  %cbdata.addr.ascast = addrspacecast ptr addrspace(5) %cbdata.addr to ptr
  %sharedMem.addr.ascast = addrspacecast ptr addrspace(5) %sharedMem.addr to ptr
  store ptr %data, ptr %data.addr.ascast, align 8, !tbaa !6
  store i64 %offset, ptr %offset.addr.ascast, align 8, !tbaa !41
  store ptr %cbdata, ptr %cbdata.addr.ascast, align 8, !tbaa !6
  store ptr %sharedMem, ptr %sharedMem.addr.ascast, align 8, !tbaa !6
  %0 = load ptr, ptr %data.addr.ascast, align 8, !tbaa !6
  %1 = load i64, ptr %offset.addr.ascast, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.rocfft_complex, ptr %0, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 8 %arrayidx, i64 16, i1 false), !tbaa.struct !48
  %2 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %2
}

attributes #0 = { convergent mustprogress noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { convergent mustprogress noinline nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { convergent norecurse nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { alwaysinline convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #8 = { convergent nocallback nofree nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,168" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #13 = { convergent mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #14 = { convergent inlinehint mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #15 = { alwaysinline convergent mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #16 = { convergent nocallback nofree nounwind willreturn }
attributes #17 = { convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #18 = { convergent nounwind }
attributes #19 = { cold convergent nounwind }
attributes #20 = { convergent nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!opencl.ocl.version = !{!1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = !{!"AOMP_STANDALONE_19.0-2 clang version 19.0.0_AOMP_STANDALONE_19.0-2 (ssh://lmeadows@gerrit-git.amd.com:29418/lightning/ec/llvm-project f39dcaed48cb5a76eb932ff2f6d44db24ab90977)"}
!1 = !{i32 2, i32 0}
!2 = !{i32 1, !"amdhsa_code_object_version", i32 500}
!3 = !{i32 1, !"amdgpu_printf_kind", !"hostcall"}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = !{!21, !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !21, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !21, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"", !29, i64 0, !29, i64 8, !30, i64 16, !26, i64 24, !26, i64 32, !26, i64 40}
!29 = !{!"any pointer", !21, i64 0}
!30 = !{!"hsa_signal_s", !26, i64 0}
!31 = !{!28, !26, i64 40}
!32 = !{!28, !29, i64 8}
!33 = !{!34, !24, i64 16}
!34 = !{!"", !26, i64 0, !26, i64 8, !24, i64 16, !24, i64 20}
!35 = !{!34, !26, i64 8}
!36 = !{!34, !24, i64 20}
!37 = !{!34, !26, i64 0}
!38 = !{!39, !26, i64 16}
!39 = !{!"amd_signal_s", !26, i64 0, !21, i64 8, !26, i64 16, !24, i64 24, !24, i64 28, !26, i64 32, !26, i64 40, !21, i64 48, !21, i64 56}
!40 = !{!39, !24, i64 24}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !8, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"bool", !8, i64 0}
!45 = distinct !{!45, !16}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{i64 0, i64 8, !49, i64 8, i64 8, !49}
!49 = !{!50, !50, i64 0}
!50 = !{!"double", !8, i64 0}
!51 = !{!52, !50, i64 0}
!52 = !{!"_ZTS14rocfft_complexIdE", !50, i64 0, !50, i64 8}
!53 = !{!52, !50, i64 8}
!54 = !{i32 0, i32 1024}
