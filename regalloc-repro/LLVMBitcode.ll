; ModuleID = 'LLVMBitcode.bc'
source_filename = "llvm-link"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9"
target triple = "amdgcn-amd-amdhsa"

%0 = type { i64, i64, i32, i32 }
%1 = type { [64 x [8 x i64]] }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" = type { i8 }
%struct.rocfft_complex = type { double, double }
%struct.BufferResource = type { %"union.BufferResource::Desc" }
%"union.BufferResource::Desc" = type { <4 x i32> }

$_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv = comdat any

$_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv = comdat any

$_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb = comdat any

$_Z29inverse_length125_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m = comdat any

$_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b = comdat any

$_ZN12buffer_storeI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EEC2ERKS1_PKvjjb = comdat any

$_ZN14BufferResourceC2EPKvj = comdat any

$_ZN14BufferResourcecvDv4_iEv = comdat any

$_Z9InvRad5B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_ = comdat any

$_Z13__syncthreadsv = comdat any

$_ZN14rocfft_complexIdEC2Edd = comdat any

$_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m = comdat any

$_ZN11buffer_loadI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EEC2Ev = comdat any

$_ZN11buffer_loadI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EE4loadEPKvjjb = comdat any

$_ZNK15__HIP_ThreadIdxclEj = comdat any

$_ZNK14__HIP_BlockIdxclEj = comdat any

$_Z16store_cb_defaultI14rocfft_complexIdEEvPT_mS2_PvS4_ = comdat any

$_Z15load_cb_defaultI14rocfft_complexIdEET_PS2_mPvS4_ = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = comdat any

@llvm.compiler.used = appending addrspace(1) global [3 x ptr] [ptr addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr), ptr addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr), ptr addrspacecast (ptr addrspace(1) @__hip_cuid_8edb34f756686994 to ptr)], section "llvm.metadata"
@__const.__assert_fail.fmt = private unnamed_addr addrspace(4) constant [47 x i8] c"%s:%u: %s: Device-side assertion `%s' failed.\0A\00", align 16
@lds_uchar = external hidden addrspace(3) global [0 x i8], align 16
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X" undef, comdat, align 1
@__hip_cuid_8edb34f756686994 = addrspace(1) global i8 0
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
  %call = call i64 @__ockl_fprintf_stderr_begin() #20
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
  %call4 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %3, ptr noundef %arraydecay2, i64 noundef %conv3, i32 noundef 0) #20
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
  %call19 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %10, ptr noundef %11, i64 noundef %conv18, i32 noundef 0) #20
  store i64 %call19, ptr %msg.ascast, align 8, !tbaa !12
  %13 = load i64, ptr %msg.ascast, align 8, !tbaa !12
  %14 = load i32, ptr %line.addr.ascast, align 4, !tbaa !10
  %conv20 = zext i32 %14 to i64
  %call21 = call i64 @__ockl_fprintf_append_args(i64 noundef %13, i32 noundef 1, i64 noundef %conv20, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0) #20
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
  %call36 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %20, ptr noundef %21, i64 noundef %conv35, i32 noundef 0) #20
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
  %call51 = call i64 @__ockl_fprintf_append_string_n(i64 noundef %28, ptr noundef %29, i64 noundef %conv50, i32 noundef 1) #20
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
  %1 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef 33, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
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
  %12 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %11, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
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
  %450 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %449, i64 noundef %88, i64 noundef %148, i64 noundef %208, i64 noundef %268, i64 noundef %328, i64 noundef %388, i64 noundef %444) #20
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
  %18 = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %17, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #20
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
  %18 = tail call <2 x i64> @__ockl_hostcall_internal(ptr noundef %17, i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #21
  ret <2 x i64> %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.amdgcn.implicitarg.ptr() #6

; Function Attrs: convergent norecurse nounwind
define internal <2 x i64> @__ockl_hostcall_internal(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #5 {
  %11 = tail call i32 @__ockl_lane_u32() #20
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
  tail call void @__ockl_hsa_signal_add(i64 %86, i64 noundef 1, i32 noundef 3) #20
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
define protected amdgpu_kernel void @fft_rtc_back_len125_factors_5_5_5_wgs_400_tpt_25_dp_op_CI_CI_sbcc_twdbase8_2step_dirReg_intrinsicReadWrite(ptr addrspace(1) noalias noundef %twiddles.coerce, ptr addrspace(1) noundef %large_twiddles.coerce, i64 noundef %dim, ptr addrspace(1) noalias noundef %lengths.coerce, ptr addrspace(1) noalias noundef %stride_in.coerce, ptr addrspace(1) noalias noundef %stride_out.coerce, i64 noundef %nbatch, i32 noundef %lds_padding, ptr addrspace(1) noalias noundef %load_cb_fn.coerce, ptr addrspace(1) noalias noundef %load_cb_data.coerce, i32 noundef %load_cb_lds_bytes, ptr addrspace(1) noalias noundef %store_cb_fn.coerce, ptr addrspace(1) noalias noundef %store_cb_data.coerce, ptr addrspace(1) noalias noundef %buf_in.coerce, ptr addrspace(1) noalias noundef %buf_out.coerce) #12 {
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
  %dim.addr = alloca i64, align 8, addrspace(5)
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
  %R = alloca [5 x %struct.rocfft_complex], align 16, addrspace(5)
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
  %ref.tmp85 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp107 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp129 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp151 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %thread_in_device = alloca i32, align 4, addrspace(5)
  %agg.tmp = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp218 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp245 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp272 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %agg.tmp299 = alloca %struct.rocfft_complex, align 8, addrspace(5)
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
  %dim.addr.ascast = addrspacecast ptr addrspace(5) %dim.addr to ptr
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
  %ref.tmp85.ascast = addrspacecast ptr addrspace(5) %ref.tmp85 to ptr
  %ref.tmp107.ascast = addrspacecast ptr addrspace(5) %ref.tmp107 to ptr
  %ref.tmp129.ascast = addrspacecast ptr addrspace(5) %ref.tmp129 to ptr
  %ref.tmp151.ascast = addrspacecast ptr addrspace(5) %ref.tmp151 to ptr
  %thread_in_device.ascast = addrspacecast ptr addrspace(5) %thread_in_device to ptr
  %agg.tmp.ascast = addrspacecast ptr addrspace(5) %agg.tmp to ptr
  %agg.tmp218.ascast = addrspacecast ptr addrspace(5) %agg.tmp218 to ptr
  %agg.tmp245.ascast = addrspacecast ptr addrspace(5) %agg.tmp245 to ptr
  %agg.tmp272.ascast = addrspacecast ptr addrspace(5) %agg.tmp272 to ptr
  %agg.tmp299.ascast = addrspacecast ptr addrspace(5) %agg.tmp299 to ptr
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
  store i64 %dim, ptr %dim.addr.ascast, align 8, !tbaa !41
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
  call void @llvm.lifetime.start.p5(i64 80, ptr addrspace(5) %R) #10
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
  %call = call noundef ptr @_ZL11get_load_cbI14rocfft_complexIdEL12CallbackType0EEN13callback_typeIT_E4loadEPv(ptr noundef %11) #20
  store ptr %call, ptr %load_cb.ascast, align 8, !tbaa !6
  call void @llvm.lifetime.start.p5(i64 8, ptr addrspace(5) %store_cb) #10
  %12 = load ptr, ptr %store_cb_fn.addr.ascast, align 8, !tbaa !6
  %call12 = call noundef ptr @_ZL12get_store_cbI14rocfft_complexIdEL12CallbackType0EEN13callback_typeIT_E5storeEPv(ptr noundef %12) #20
  store ptr %call12, ptr %store_cb.ascast, align 8, !tbaa !6
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
  %div = udiv i64 %sub, 16
  %add = add i64 %div, 1
  store i64 %add, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  %19 = load i64, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  store i64 %19, ptr %plength.ascast, align 8, !tbaa !41
  %call15 = call noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr)) #20
  %conv = zext i32 %call15 to i64
  %20 = load i64, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  %rem = urem i64 %conv, %20
  store i64 %rem, ptr %tile_index.ascast, align 8, !tbaa !41
  %call16 = call noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr)) #20
  %conv17 = zext i32 %call16 to i64
  %21 = load i64, ptr %num_of_tiles.ascast, align 8, !tbaa !41
  %div18 = udiv i64 %conv17, %21
  store i64 %div18, ptr %remaining.ascast, align 8, !tbaa !41
  %22 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul = mul i64 %22, 16
  %23 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx19 = getelementptr inbounds i64, ptr %23, i64 1
  %24 = load i64, ptr %arrayidx19, align 8, !tbaa !41
  %mul20 = mul i64 %mul, %24
  store i64 %mul20, ptr %offset_in.ascast, align 8, !tbaa !41
  %25 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul21 = mul i64 %25, 16
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
  %29 = load i64, ptr %dim.addr.ascast, align 8, !tbaa !41
  %cmp = icmp ult i64 %conv24, %29
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %d) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i64, ptr %plength.ascast, align 8, !tbaa !41
  %31 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %32 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %31, i64 %idxprom
  %33 = load i64, ptr %arrayidx25, align 8, !tbaa !41
  %mul26 = mul i64 %30, %33
  store i64 %mul26, ptr %plength.ascast, align 8, !tbaa !41
  %34 = load i64, ptr %remaining.ascast, align 8, !tbaa !41
  %35 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %36 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds i64, ptr %35, i64 %idxprom27
  %37 = load i64, ptr %arrayidx28, align 8, !tbaa !41
  %rem29 = urem i64 %34, %37
  store i64 %rem29, ptr %index_along_d.ascast, align 8, !tbaa !41
  %38 = load i64, ptr %remaining.ascast, align 8, !tbaa !41
  %39 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %40 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom30 = sext i32 %40 to i64
  %arrayidx31 = getelementptr inbounds i64, ptr %39, i64 %idxprom30
  %41 = load i64, ptr %arrayidx31, align 8, !tbaa !41
  %div32 = udiv i64 %38, %41
  store i64 %div32, ptr %remaining.ascast, align 8, !tbaa !41
  %42 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %43 = load i64, ptr %index_along_d.ascast, align 8, !tbaa !41
  %44 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %45 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds i64, ptr %44, i64 %idxprom33
  %46 = load i64, ptr %arrayidx34, align 8, !tbaa !41
  %mul35 = mul i64 %43, %46
  %add36 = add i64 %42, %mul35
  store i64 %add36, ptr %offset_in.ascast, align 8, !tbaa !41
  %47 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %48 = load i64, ptr %index_along_d.ascast, align 8, !tbaa !41
  %49 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %50 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %idxprom37 = sext i32 %50 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %49, i64 %idxprom37
  %51 = load i64, ptr %arrayidx38, align 8, !tbaa !41
  %mul39 = mul i64 %48, %51
  %add40 = add i64 %47, %mul39
  store i64 %add40, ptr %offset_out.ascast, align 8, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, ptr %d.ascast, align 4, !tbaa !10
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %d.ascast, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond.cleanup
  %call41 = call noundef i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to ptr)) #20
  %conv42 = zext i32 %call41 to i64
  %53 = load i64, ptr %plength.ascast, align 8, !tbaa !41
  %div43 = udiv i64 %conv42, %53
  store i64 %div43, ptr %batch.ascast, align 8, !tbaa !41
  %54 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %55 = load i64, ptr %batch.ascast, align 8, !tbaa !41
  %56 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %57 = load i64, ptr %dim.addr.ascast, align 8, !tbaa !41
  %arrayidx44 = getelementptr inbounds i64, ptr %56, i64 %57
  %58 = load i64, ptr %arrayidx44, align 8, !tbaa !41
  %mul45 = mul i64 %55, %58
  %add46 = add i64 %54, %mul45
  store i64 %add46, ptr %offset_in.ascast, align 8, !tbaa !41
  %59 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %60 = load i64, ptr %batch.ascast, align 8, !tbaa !41
  %61 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %62 = load i64, ptr %dim.addr.ascast, align 8, !tbaa !41
  %arrayidx47 = getelementptr inbounds i64, ptr %61, i64 %62
  %63 = load i64, ptr %arrayidx47, align 8, !tbaa !41
  %mul48 = mul i64 %60, %63
  %add49 = add i64 %59, %mul48
  store i64 %add49, ptr %offset_out.ascast, align 8, !tbaa !41
  %64 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul50 = mul i64 %64, 16
  %call51 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #20
  %rem52 = urem i32 %call51, 16
  %conv53 = zext i32 %rem52 to i64
  %add54 = add i64 %mul50, %conv53
  store i64 %add54, ptr %transform.ascast, align 8, !tbaa !41
  store i32 16, ptr %stride_lds.ascast, align 4, !tbaa !10
  %call55 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #20
  %rem56 = urem i32 %call55, 16
  %conv57 = zext i32 %rem56 to i64
  %conv58 = trunc i64 %conv57 to i32
  store i32 %conv58, ptr %offset_lds.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %in_bound) #10
  %65 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %add59 = add i64 %65, 1
  %mul60 = mul i64 %add59, 16
  %66 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx61 = getelementptr inbounds i64, ptr %66, i64 1
  %67 = load i64, ptr %arrayidx61, align 8, !tbaa !41
  %cmp62 = icmp ugt i64 %mul60, %67
  %68 = zext i1 %cmp62 to i64
  %cond = select i1 %cmp62, i1 false, i1 true
  %frombool = zext i1 %cond to i8
  store i8 %frombool, ptr %in_bound.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %thread) #10
  %call63 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #20
  %div64 = udiv i32 %call63, 16
  store i32 %div64, ptr %thread.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %tid_hor) #10
  %call65 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #20
  %rem66 = urem i32 %call65, 16
  store i32 %rem66, ptr %tid_hor.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %69 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %70 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv67 = zext i32 %70 to i64
  %71 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx68 = getelementptr inbounds i64, ptr %71, i64 1
  %72 = load i64, ptr %arrayidx68, align 8, !tbaa !41
  %mul69 = mul i64 %conv67, %72
  %73 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add70 = add i32 %73, 0
  %add71 = add i32 %add70, 0
  %add72 = add i32 %add71, 0
  %conv73 = zext i32 %add72 to i64
  %74 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul74 = mul i64 %conv73, %74
  %add75 = add i64 %mul69, %mul74
  %conv76 = trunc i64 %add75 to i32
  %75 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %conv77 = trunc i64 %75 to i32
  %76 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool = trunc i8 %76 to i1
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %77 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul78 = mul i64 %77, 16
  %78 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv79 = zext i32 %78 to i64
  %add80 = add i64 %mul78, %conv79
  %79 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx81 = getelementptr inbounds i64, ptr %79, i64 1
  %80 = load i64, ptr %arrayidx81, align 8, !tbaa !41
  %cmp82 = icmp ult i64 %add80, %80
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %81 = phi i1 [ true, %for.end ], [ %cmp82, %lor.rhs ]
  %call83 = call %struct.rocfft_complex @_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb(ptr noundef %69, i32 noundef %conv76, i32 noundef %conv77, i1 noundef zeroext %81) #20
  %82 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 0
  %83 = extractvalue %struct.rocfft_complex %call83, 0
  store double %83, ptr %82, align 8
  %84 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp.ascast, i32 0, i32 1
  %85 = extractvalue %struct.rocfft_complex %call83, 1
  store double %85, ptr %84, align 8
  %arrayidx84 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx84, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp85) #10
  %86 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %87 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv86 = zext i32 %87 to i64
  %88 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx87 = getelementptr inbounds i64, ptr %88, i64 1
  %89 = load i64, ptr %arrayidx87, align 8, !tbaa !41
  %mul88 = mul i64 %conv86, %89
  %90 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add89 = add i32 %90, 0
  %add90 = add i32 %add89, 0
  %add91 = add i32 %add90, 25
  %conv92 = zext i32 %add91 to i64
  %91 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul93 = mul i64 %conv92, %91
  %add94 = add i64 %mul88, %mul93
  %conv95 = trunc i64 %add94 to i32
  %92 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %conv96 = trunc i64 %92 to i32
  %93 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool97 = trunc i8 %93 to i1
  br i1 %tobool97, label %lor.end104, label %lor.rhs98

lor.rhs98:                                        ; preds = %lor.end
  %94 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul99 = mul i64 %94, 16
  %95 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv100 = zext i32 %95 to i64
  %add101 = add i64 %mul99, %conv100
  %96 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx102 = getelementptr inbounds i64, ptr %96, i64 1
  %97 = load i64, ptr %arrayidx102, align 8, !tbaa !41
  %cmp103 = icmp ult i64 %add101, %97
  br label %lor.end104

lor.end104:                                       ; preds = %lor.rhs98, %lor.end
  %98 = phi i1 [ true, %lor.end ], [ %cmp103, %lor.rhs98 ]
  %call105 = call %struct.rocfft_complex @_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb(ptr noundef %86, i32 noundef %conv95, i32 noundef %conv96, i1 noundef zeroext %98) #20
  %99 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp85.ascast, i32 0, i32 0
  %100 = extractvalue %struct.rocfft_complex %call105, 0
  store double %100, ptr %99, align 8
  %101 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp85.ascast, i32 0, i32 1
  %102 = extractvalue %struct.rocfft_complex %call105, 1
  store double %102, ptr %101, align 8
  %arrayidx106 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx106, ptr align 8 %ref.tmp85.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp85) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp107) #10
  %103 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %104 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv108 = zext i32 %104 to i64
  %105 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx109 = getelementptr inbounds i64, ptr %105, i64 1
  %106 = load i64, ptr %arrayidx109, align 8, !tbaa !41
  %mul110 = mul i64 %conv108, %106
  %107 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add111 = add i32 %107, 0
  %add112 = add i32 %add111, 0
  %add113 = add i32 %add112, 50
  %conv114 = zext i32 %add113 to i64
  %108 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul115 = mul i64 %conv114, %108
  %add116 = add i64 %mul110, %mul115
  %conv117 = trunc i64 %add116 to i32
  %109 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %conv118 = trunc i64 %109 to i32
  %110 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool119 = trunc i8 %110 to i1
  br i1 %tobool119, label %lor.end126, label %lor.rhs120

lor.rhs120:                                       ; preds = %lor.end104
  %111 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul121 = mul i64 %111, 16
  %112 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv122 = zext i32 %112 to i64
  %add123 = add i64 %mul121, %conv122
  %113 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx124 = getelementptr inbounds i64, ptr %113, i64 1
  %114 = load i64, ptr %arrayidx124, align 8, !tbaa !41
  %cmp125 = icmp ult i64 %add123, %114
  br label %lor.end126

lor.end126:                                       ; preds = %lor.rhs120, %lor.end104
  %115 = phi i1 [ true, %lor.end104 ], [ %cmp125, %lor.rhs120 ]
  %call127 = call %struct.rocfft_complex @_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb(ptr noundef %103, i32 noundef %conv117, i32 noundef %conv118, i1 noundef zeroext %115) #20
  %116 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp107.ascast, i32 0, i32 0
  %117 = extractvalue %struct.rocfft_complex %call127, 0
  store double %117, ptr %116, align 8
  %118 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp107.ascast, i32 0, i32 1
  %119 = extractvalue %struct.rocfft_complex %call127, 1
  store double %119, ptr %118, align 8
  %arrayidx128 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx128, ptr align 8 %ref.tmp107.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp107) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp129) #10
  %120 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %121 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv130 = zext i32 %121 to i64
  %122 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx131 = getelementptr inbounds i64, ptr %122, i64 1
  %123 = load i64, ptr %arrayidx131, align 8, !tbaa !41
  %mul132 = mul i64 %conv130, %123
  %124 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add133 = add i32 %124, 0
  %add134 = add i32 %add133, 0
  %add135 = add i32 %add134, 75
  %conv136 = zext i32 %add135 to i64
  %125 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul137 = mul i64 %conv136, %125
  %add138 = add i64 %mul132, %mul137
  %conv139 = trunc i64 %add138 to i32
  %126 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %conv140 = trunc i64 %126 to i32
  %127 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool141 = trunc i8 %127 to i1
  br i1 %tobool141, label %lor.end148, label %lor.rhs142

lor.rhs142:                                       ; preds = %lor.end126
  %128 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul143 = mul i64 %128, 16
  %129 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv144 = zext i32 %129 to i64
  %add145 = add i64 %mul143, %conv144
  %130 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx146 = getelementptr inbounds i64, ptr %130, i64 1
  %131 = load i64, ptr %arrayidx146, align 8, !tbaa !41
  %cmp147 = icmp ult i64 %add145, %131
  br label %lor.end148

lor.end148:                                       ; preds = %lor.rhs142, %lor.end126
  %132 = phi i1 [ true, %lor.end126 ], [ %cmp147, %lor.rhs142 ]
  %call149 = call %struct.rocfft_complex @_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb(ptr noundef %120, i32 noundef %conv139, i32 noundef %conv140, i1 noundef zeroext %132) #20
  %133 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp129.ascast, i32 0, i32 0
  %134 = extractvalue %struct.rocfft_complex %call149, 0
  store double %134, ptr %133, align 8
  %135 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp129.ascast, i32 0, i32 1
  %136 = extractvalue %struct.rocfft_complex %call149, 1
  store double %136, ptr %135, align 8
  %arrayidx150 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx150, ptr align 8 %ref.tmp129.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp129) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp151) #10
  %137 = load ptr, ptr %buf_in.addr.ascast, align 8, !tbaa !6
  %138 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv152 = zext i32 %138 to i64
  %139 = load ptr, ptr %stride_in.addr.ascast, align 8, !tbaa !6
  %arrayidx153 = getelementptr inbounds i64, ptr %139, i64 1
  %140 = load i64, ptr %arrayidx153, align 8, !tbaa !41
  %mul154 = mul i64 %conv152, %140
  %141 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add155 = add i32 %141, 0
  %add156 = add i32 %add155, 0
  %add157 = add i32 %add156, 100
  %conv158 = zext i32 %add157 to i64
  %142 = load i64, ptr %stride0_in.ascast, align 8, !tbaa !41
  %mul159 = mul i64 %conv158, %142
  %add160 = add i64 %mul154, %mul159
  %conv161 = trunc i64 %add160 to i32
  %143 = load i64, ptr %offset_in.ascast, align 8, !tbaa !41
  %conv162 = trunc i64 %143 to i32
  %144 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool163 = trunc i8 %144 to i1
  br i1 %tobool163, label %lor.end170, label %lor.rhs164

lor.rhs164:                                       ; preds = %lor.end148
  %145 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul165 = mul i64 %145, 16
  %146 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv166 = zext i32 %146 to i64
  %add167 = add i64 %mul165, %conv166
  %147 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx168 = getelementptr inbounds i64, ptr %147, i64 1
  %148 = load i64, ptr %arrayidx168, align 8, !tbaa !41
  %cmp169 = icmp ult i64 %add167, %148
  br label %lor.end170

lor.end170:                                       ; preds = %lor.rhs164, %lor.end148
  %149 = phi i1 [ true, %lor.end148 ], [ %cmp169, %lor.rhs164 ]
  %call171 = call %struct.rocfft_complex @_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb(ptr noundef %137, i32 noundef %conv161, i32 noundef %conv162, i1 noundef zeroext %149) #20
  %150 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp151.ascast, i32 0, i32 0
  %151 = extractvalue %struct.rocfft_complex %call171, 0
  store double %151, ptr %150, align 8
  %152 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp151.ascast, i32 0, i32 1
  %153 = extractvalue %struct.rocfft_complex %call171, 1
  store double %153, ptr %152, align 8
  %arrayidx172 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx172, ptr align 8 %ref.tmp151.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp151) #10
  call void @llvm.lifetime.start.p5(i64 4, ptr addrspace(5) %thread_in_device) #10
  %call173 = call noundef i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE3__XcvjEv(ptr noundef nonnull align 1 dereferenceable(1) addrspacecast (ptr addrspace(4) @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to ptr)) #20
  %div174 = udiv i32 %call173, 16
  store i32 %div174, ptr %thread_in_device.ascast, align 4, !tbaa !10
  %arraydecay = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  %154 = load ptr, ptr %lds_real.ascast, align 8, !tbaa !6
  %155 = load ptr, ptr %lds_complex.ascast, align 8, !tbaa !6
  %156 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %157 = load i32, ptr %stride_lds.ascast, align 4, !tbaa !10
  %158 = load i32, ptr %offset_lds.ascast, align 4, !tbaa !10
  %159 = load i32, ptr %thread_in_device.ascast, align 4, !tbaa !10
  %160 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %161 = load i64, ptr %transform.ascast, align 8, !tbaa !41
  call void @_Z29inverse_length125_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m(ptr noundef %arraydecay, ptr noundef %154, ptr noundef %155, ptr noundef %156, i32 noundef %157, i32 noundef %158, i32 noundef %159, i1 noundef zeroext true, ptr noundef %160, i64 noundef %161) #20
  %162 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %163 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv175 = zext i32 %163 to i64
  %164 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx176 = getelementptr inbounds i64, ptr %164, i64 1
  %165 = load i64, ptr %arrayidx176, align 8, !tbaa !41
  %mul177 = mul i64 %conv175, %165
  %166 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add178 = add i32 %166, 0
  %add179 = add i32 %add178, 0
  %div180 = udiv i32 %add179, 25
  %mul181 = mul i32 %div180, 125
  %167 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add182 = add i32 %167, 0
  %add183 = add i32 %add182, 0
  %rem184 = urem i32 %add183, 25
  %add185 = add i32 %mul181, %rem184
  %add186 = add i32 %add185, 0
  %conv187 = zext i32 %add186 to i64
  %168 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul188 = mul i64 %conv187, %168
  %add189 = add i64 %mul177, %mul188
  %conv190 = trunc i64 %add189 to i32
  %169 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %conv191 = trunc i64 %169 to i32
  %arrayidx192 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp.ascast, ptr align 16 %arrayidx192, i64 16, i1 false), !tbaa.struct !48
  %170 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool193 = trunc i8 %170 to i1
  br i1 %tobool193, label %lor.end200, label %lor.rhs194

lor.rhs194:                                       ; preds = %lor.end170
  %171 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul195 = mul i64 %171, 16
  %172 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv196 = zext i32 %172 to i64
  %add197 = add i64 %mul195, %conv196
  %173 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx198 = getelementptr inbounds i64, ptr %173, i64 1
  %174 = load i64, ptr %arrayidx198, align 8, !tbaa !41
  %cmp199 = icmp ult i64 %add197, %174
  br label %lor.end200

lor.end200:                                       ; preds = %lor.rhs194, %lor.end170
  %175 = phi i1 [ true, %lor.end170 ], [ %cmp199, %lor.rhs194 ]
  %176 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp.ascast, i32 0, i32 0
  %177 = load double, ptr %176, align 8
  %178 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp.ascast, i32 0, i32 1
  %179 = load double, ptr %178, align 8
  call void @_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b(ptr noundef %162, i32 noundef %conv190, i32 noundef %conv191, double %177, double %179, i1 noundef zeroext %175) #20
  %180 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %181 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv201 = zext i32 %181 to i64
  %182 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx202 = getelementptr inbounds i64, ptr %182, i64 1
  %183 = load i64, ptr %arrayidx202, align 8, !tbaa !41
  %mul203 = mul i64 %conv201, %183
  %184 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add204 = add i32 %184, 0
  %add205 = add i32 %add204, 0
  %div206 = udiv i32 %add205, 25
  %mul207 = mul i32 %div206, 125
  %185 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add208 = add i32 %185, 0
  %add209 = add i32 %add208, 0
  %rem210 = urem i32 %add209, 25
  %add211 = add i32 %mul207, %rem210
  %add212 = add i32 %add211, 25
  %conv213 = zext i32 %add212 to i64
  %186 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul214 = mul i64 %conv213, %186
  %add215 = add i64 %mul203, %mul214
  %conv216 = trunc i64 %add215 to i32
  %187 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %conv217 = trunc i64 %187 to i32
  %arrayidx219 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp218.ascast, ptr align 16 %arrayidx219, i64 16, i1 false), !tbaa.struct !48
  %188 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool220 = trunc i8 %188 to i1
  br i1 %tobool220, label %lor.end227, label %lor.rhs221

lor.rhs221:                                       ; preds = %lor.end200
  %189 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul222 = mul i64 %189, 16
  %190 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv223 = zext i32 %190 to i64
  %add224 = add i64 %mul222, %conv223
  %191 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx225 = getelementptr inbounds i64, ptr %191, i64 1
  %192 = load i64, ptr %arrayidx225, align 8, !tbaa !41
  %cmp226 = icmp ult i64 %add224, %192
  br label %lor.end227

lor.end227:                                       ; preds = %lor.rhs221, %lor.end200
  %193 = phi i1 [ true, %lor.end200 ], [ %cmp226, %lor.rhs221 ]
  %194 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp218.ascast, i32 0, i32 0
  %195 = load double, ptr %194, align 8
  %196 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp218.ascast, i32 0, i32 1
  %197 = load double, ptr %196, align 8
  call void @_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b(ptr noundef %180, i32 noundef %conv216, i32 noundef %conv217, double %195, double %197, i1 noundef zeroext %193) #20
  %198 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %199 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv228 = zext i32 %199 to i64
  %200 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx229 = getelementptr inbounds i64, ptr %200, i64 1
  %201 = load i64, ptr %arrayidx229, align 8, !tbaa !41
  %mul230 = mul i64 %conv228, %201
  %202 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add231 = add i32 %202, 0
  %add232 = add i32 %add231, 0
  %div233 = udiv i32 %add232, 25
  %mul234 = mul i32 %div233, 125
  %203 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add235 = add i32 %203, 0
  %add236 = add i32 %add235, 0
  %rem237 = urem i32 %add236, 25
  %add238 = add i32 %mul234, %rem237
  %add239 = add i32 %add238, 50
  %conv240 = zext i32 %add239 to i64
  %204 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul241 = mul i64 %conv240, %204
  %add242 = add i64 %mul230, %mul241
  %conv243 = trunc i64 %add242 to i32
  %205 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %conv244 = trunc i64 %205 to i32
  %arrayidx246 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp245.ascast, ptr align 16 %arrayidx246, i64 16, i1 false), !tbaa.struct !48
  %206 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool247 = trunc i8 %206 to i1
  br i1 %tobool247, label %lor.end254, label %lor.rhs248

lor.rhs248:                                       ; preds = %lor.end227
  %207 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul249 = mul i64 %207, 16
  %208 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv250 = zext i32 %208 to i64
  %add251 = add i64 %mul249, %conv250
  %209 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx252 = getelementptr inbounds i64, ptr %209, i64 1
  %210 = load i64, ptr %arrayidx252, align 8, !tbaa !41
  %cmp253 = icmp ult i64 %add251, %210
  br label %lor.end254

lor.end254:                                       ; preds = %lor.rhs248, %lor.end227
  %211 = phi i1 [ true, %lor.end227 ], [ %cmp253, %lor.rhs248 ]
  %212 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp245.ascast, i32 0, i32 0
  %213 = load double, ptr %212, align 8
  %214 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp245.ascast, i32 0, i32 1
  %215 = load double, ptr %214, align 8
  call void @_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b(ptr noundef %198, i32 noundef %conv243, i32 noundef %conv244, double %213, double %215, i1 noundef zeroext %211) #20
  %216 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %217 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv255 = zext i32 %217 to i64
  %218 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx256 = getelementptr inbounds i64, ptr %218, i64 1
  %219 = load i64, ptr %arrayidx256, align 8, !tbaa !41
  %mul257 = mul i64 %conv255, %219
  %220 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add258 = add i32 %220, 0
  %add259 = add i32 %add258, 0
  %div260 = udiv i32 %add259, 25
  %mul261 = mul i32 %div260, 125
  %221 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add262 = add i32 %221, 0
  %add263 = add i32 %add262, 0
  %rem264 = urem i32 %add263, 25
  %add265 = add i32 %mul261, %rem264
  %add266 = add i32 %add265, 75
  %conv267 = zext i32 %add266 to i64
  %222 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul268 = mul i64 %conv267, %222
  %add269 = add i64 %mul257, %mul268
  %conv270 = trunc i64 %add269 to i32
  %223 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %conv271 = trunc i64 %223 to i32
  %arrayidx273 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp272.ascast, ptr align 16 %arrayidx273, i64 16, i1 false), !tbaa.struct !48
  %224 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool274 = trunc i8 %224 to i1
  br i1 %tobool274, label %lor.end281, label %lor.rhs275

lor.rhs275:                                       ; preds = %lor.end254
  %225 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul276 = mul i64 %225, 16
  %226 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv277 = zext i32 %226 to i64
  %add278 = add i64 %mul276, %conv277
  %227 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx279 = getelementptr inbounds i64, ptr %227, i64 1
  %228 = load i64, ptr %arrayidx279, align 8, !tbaa !41
  %cmp280 = icmp ult i64 %add278, %228
  br label %lor.end281

lor.end281:                                       ; preds = %lor.rhs275, %lor.end254
  %229 = phi i1 [ true, %lor.end254 ], [ %cmp280, %lor.rhs275 ]
  %230 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp272.ascast, i32 0, i32 0
  %231 = load double, ptr %230, align 8
  %232 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp272.ascast, i32 0, i32 1
  %233 = load double, ptr %232, align 8
  call void @_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b(ptr noundef %216, i32 noundef %conv270, i32 noundef %conv271, double %231, double %233, i1 noundef zeroext %229) #20
  %234 = load ptr, ptr %buf_out.addr.ascast, align 8, !tbaa !6
  %235 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv282 = zext i32 %235 to i64
  %236 = load ptr, ptr %stride_out.addr.ascast, align 8, !tbaa !6
  %arrayidx283 = getelementptr inbounds i64, ptr %236, i64 1
  %237 = load i64, ptr %arrayidx283, align 8, !tbaa !41
  %mul284 = mul i64 %conv282, %237
  %238 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add285 = add i32 %238, 0
  %add286 = add i32 %add285, 0
  %div287 = udiv i32 %add286, 25
  %mul288 = mul i32 %div287, 125
  %239 = load i32, ptr %thread.ascast, align 4, !tbaa !10
  %add289 = add i32 %239, 0
  %add290 = add i32 %add289, 0
  %rem291 = urem i32 %add290, 25
  %add292 = add i32 %mul288, %rem291
  %add293 = add i32 %add292, 100
  %conv294 = zext i32 %add293 to i64
  %240 = load i64, ptr %stride0_out.ascast, align 8, !tbaa !41
  %mul295 = mul i64 %conv294, %240
  %add296 = add i64 %mul284, %mul295
  %conv297 = trunc i64 %add296 to i32
  %241 = load i64, ptr %offset_out.ascast, align 8, !tbaa !41
  %conv298 = trunc i64 %241 to i32
  %arrayidx300 = getelementptr inbounds [5 x %struct.rocfft_complex], ptr %R.ascast, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp299.ascast, ptr align 16 %arrayidx300, i64 16, i1 false), !tbaa.struct !48
  %242 = load i8, ptr %in_bound.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool301 = trunc i8 %242 to i1
  br i1 %tobool301, label %lor.end308, label %lor.rhs302

lor.rhs302:                                       ; preds = %lor.end281
  %243 = load i64, ptr %tile_index.ascast, align 8, !tbaa !41
  %mul303 = mul i64 %243, 16
  %244 = load i32, ptr %tid_hor.ascast, align 4, !tbaa !10
  %conv304 = zext i32 %244 to i64
  %add305 = add i64 %mul303, %conv304
  %245 = load ptr, ptr %lengths.addr.ascast, align 8, !tbaa !6
  %arrayidx306 = getelementptr inbounds i64, ptr %245, i64 1
  %246 = load i64, ptr %arrayidx306, align 8, !tbaa !41
  %cmp307 = icmp ult i64 %add305, %246
  br label %lor.end308

lor.end308:                                       ; preds = %lor.rhs302, %lor.end281
  %247 = phi i1 [ true, %lor.end281 ], [ %cmp307, %lor.rhs302 ]
  %248 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp299.ascast, i32 0, i32 0
  %249 = load double, ptr %248, align 8
  %250 = getelementptr inbounds %struct.rocfft_complex, ptr %agg.tmp299.ascast, i32 0, i32 1
  %251 = load double, ptr %250, align 8
  call void @_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b(ptr noundef %234, i32 noundef %conv297, i32 noundef %conv298, double %249, double %251, i1 noundef zeroext %247) #20
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
  call void @llvm.lifetime.end.p5(i64 80, ptr addrspace(5) %R) #10
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
  %call = call noundef i32 @_ZNK14__HIP_BlockIdxclEj(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.ascast, i32 noundef 0) #20
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
  %call = call noundef i32 @_ZNK15__HIP_ThreadIdxclEj(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.ascast, i32 noundef 0) #20
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  ret i32 %call
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_Z14intrinsic_loadI14rocfft_complexIdEET_PKS2_jjb(ptr noundef %data, i32 noundef %voffset, i32 noundef %soffset, i1 noundef zeroext %rw) #13 comdat {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %data.addr = alloca ptr, align 8, addrspace(5)
  %voffset.addr = alloca i32, align 4, addrspace(5)
  %soffset.addr = alloca i32, align 4, addrspace(5)
  %rw.addr = alloca i8, align 1, addrspace(5)
  %ref.tmp = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %data.addr.ascast = addrspacecast ptr addrspace(5) %data.addr to ptr
  %voffset.addr.ascast = addrspacecast ptr addrspace(5) %voffset.addr to ptr
  %soffset.addr.ascast = addrspacecast ptr addrspace(5) %soffset.addr to ptr
  %rw.addr.ascast = addrspacecast ptr addrspace(5) %rw.addr to ptr
  %ref.tmp.ascast = addrspacecast ptr addrspace(5) %ref.tmp to ptr
  store ptr %data, ptr %data.addr.ascast, align 8, !tbaa !6
  store i32 %voffset, ptr %voffset.addr.ascast, align 4, !tbaa !10
  store i32 %soffset, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %frombool = zext i1 %rw to i8
  store i8 %frombool, ptr %rw.addr.ascast, align 1, !tbaa !43
  call void @llvm.lifetime.start.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  call void @_ZN11buffer_loadI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.ascast) #20
  %0 = load ptr, ptr %data.addr.ascast, align 8, !tbaa !6
  %1 = load i32, ptr %voffset.addr.ascast, align 4, !tbaa !10
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 16
  %conv1 = trunc i64 %mul to i32
  %2 = load i32, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %conv2 = zext i32 %2 to i64
  %mul3 = mul i64 %conv2, 16
  %conv4 = trunc i64 %mul3 to i32
  %3 = load i8, ptr %rw.addr.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool = trunc i8 %3 to i1
  %call = call %struct.rocfft_complex @_ZN11buffer_loadI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EE4loadEPKvjjb(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp.ascast, ptr noundef %0, i32 noundef %conv1, i32 noundef %conv4, i1 noundef zeroext %tobool) #20
  %4 = getelementptr inbounds %struct.rocfft_complex, ptr %retval.ascast, i32 0, i32 0
  %5 = extractvalue %struct.rocfft_complex %call, 0
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rocfft_complex, ptr %retval.ascast, i32 0, i32 1
  %7 = extractvalue %struct.rocfft_complex %call, 1
  store double %7, ptr %6, align 8
  call void @llvm.lifetime.end.p5(i64 1, ptr addrspace(5) %ref.tmp) #10
  %8 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z29inverse_length125_SBCC_deviceI14rocfft_complexIdELb0EL9StrideBin1ELb0ELb1ELb1ELm2ELm8EEvPT_PN9real_typeIS3_E4typeES4_PKS3_jjjbSA_m(ptr noundef %R, ptr noalias noundef %lds_real, ptr noalias noundef %lds_complex, ptr noalias noundef %twiddles, i32 noundef %stride_lds, i32 noundef %offset_lds, i32 noundef %thread, i1 noundef zeroext %write, ptr noundef %large_twiddles, i64 noundef %trans_local) #13 comdat {
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
  %ref.tmp139 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp166 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp193 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp335 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp362 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp389 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp416 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp441 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp447 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp467 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp475 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp495 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp503 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp523 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp531 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp551 = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %ref.tmp559 = alloca %struct.rocfft_complex, align 8, addrspace(5)
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
  %ref.tmp139.ascast = addrspacecast ptr addrspace(5) %ref.tmp139 to ptr
  %ref.tmp166.ascast = addrspacecast ptr addrspace(5) %ref.tmp166 to ptr
  %ref.tmp193.ascast = addrspacecast ptr addrspace(5) %ref.tmp193 to ptr
  %ref.tmp335.ascast = addrspacecast ptr addrspace(5) %ref.tmp335 to ptr
  %ref.tmp362.ascast = addrspacecast ptr addrspace(5) %ref.tmp362 to ptr
  %ref.tmp389.ascast = addrspacecast ptr addrspace(5) %ref.tmp389 to ptr
  %ref.tmp416.ascast = addrspacecast ptr addrspace(5) %ref.tmp416 to ptr
  %ref.tmp441.ascast = addrspacecast ptr addrspace(5) %ref.tmp441 to ptr
  %ref.tmp447.ascast = addrspacecast ptr addrspace(5) %ref.tmp447 to ptr
  %ref.tmp467.ascast = addrspacecast ptr addrspace(5) %ref.tmp467 to ptr
  %ref.tmp475.ascast = addrspacecast ptr addrspace(5) %ref.tmp475 to ptr
  %ref.tmp495.ascast = addrspacecast ptr addrspace(5) %ref.tmp495 to ptr
  %ref.tmp503.ascast = addrspacecast ptr addrspace(5) %ref.tmp503 to ptr
  %ref.tmp523.ascast = addrspacecast ptr addrspace(5) %ref.tmp523 to ptr
  %ref.tmp531.ascast = addrspacecast ptr addrspace(5) %ref.tmp531 to ptr
  %ref.tmp551.ascast = addrspacecast ptr addrspace(5) %ref.tmp551 to ptr
  %ref.tmp559.ascast = addrspacecast ptr addrspace(5) %ref.tmp559 to ptr
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
  call void @_Z9InvRad5B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_(ptr noundef %add.ptr, ptr noundef %add.ptr1, ptr noundef %add.ptr2, ptr noundef %add.ptr3, ptr noundef %add.ptr4) #20
  %6 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %7 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add = add i32 %7, 0
  %add5 = add i32 %add, 0
  %div = udiv i32 %add5, 1
  %mul = mul i32 %div, 5
  %8 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add6 = add i32 %8, 0
  %add7 = add i32 %add6, 0
  %rem = urem i32 %add7, 1
  %add8 = add i32 %mul, %rem
  %add9 = add i32 %add8, 0
  %9 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul10 = mul i32 %add9, %9
  %add11 = add i32 %6, %mul10
  store i32 %add11, ptr %l_offset.ascast, align 4, !tbaa !10
  %10 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds %struct.rocfft_complex, ptr %10, i64 0
  %11 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %12 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom = zext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds %struct.rocfft_complex, ptr %11, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx12, ptr align 8 %arrayidx, i64 16, i1 false), !tbaa.struct !48
  %13 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %14 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add13 = add i32 %14, 0
  %add14 = add i32 %add13, 0
  %div15 = udiv i32 %add14, 1
  %mul16 = mul i32 %div15, 5
  %15 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add17 = add i32 %15, 0
  %add18 = add i32 %add17, 0
  %rem19 = urem i32 %add18, 1
  %add20 = add i32 %mul16, %rem19
  %add21 = add i32 %add20, 1
  %16 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul22 = mul i32 %add21, %16
  %add23 = add i32 %13, %mul22
  store i32 %add23, ptr %l_offset.ascast, align 4, !tbaa !10
  %17 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx24 = getelementptr inbounds %struct.rocfft_complex, ptr %17, i64 1
  %18 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %19 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom25 = zext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds %struct.rocfft_complex, ptr %18, i64 %idxprom25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx26, ptr align 8 %arrayidx24, i64 16, i1 false), !tbaa.struct !48
  %20 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %21 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add27 = add i32 %21, 0
  %add28 = add i32 %add27, 0
  %div29 = udiv i32 %add28, 1
  %mul30 = mul i32 %div29, 5
  %22 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add31 = add i32 %22, 0
  %add32 = add i32 %add31, 0
  %rem33 = urem i32 %add32, 1
  %add34 = add i32 %mul30, %rem33
  %add35 = add i32 %add34, 2
  %23 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul36 = mul i32 %add35, %23
  %add37 = add i32 %20, %mul36
  store i32 %add37, ptr %l_offset.ascast, align 4, !tbaa !10
  %24 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx38 = getelementptr inbounds %struct.rocfft_complex, ptr %24, i64 2
  %25 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %26 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom39 = zext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds %struct.rocfft_complex, ptr %25, i64 %idxprom39
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx40, ptr align 8 %arrayidx38, i64 16, i1 false), !tbaa.struct !48
  %27 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %28 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add41 = add i32 %28, 0
  %add42 = add i32 %add41, 0
  %div43 = udiv i32 %add42, 1
  %mul44 = mul i32 %div43, 5
  %29 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add45 = add i32 %29, 0
  %add46 = add i32 %add45, 0
  %rem47 = urem i32 %add46, 1
  %add48 = add i32 %mul44, %rem47
  %add49 = add i32 %add48, 3
  %30 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul50 = mul i32 %add49, %30
  %add51 = add i32 %27, %mul50
  store i32 %add51, ptr %l_offset.ascast, align 4, !tbaa !10
  %31 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx52 = getelementptr inbounds %struct.rocfft_complex, ptr %31, i64 3
  %32 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %33 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom53 = zext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds %struct.rocfft_complex, ptr %32, i64 %idxprom53
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx54, ptr align 8 %arrayidx52, i64 16, i1 false), !tbaa.struct !48
  %34 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %35 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add55 = add i32 %35, 0
  %add56 = add i32 %add55, 0
  %div57 = udiv i32 %add56, 1
  %mul58 = mul i32 %div57, 5
  %36 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add59 = add i32 %36, 0
  %add60 = add i32 %add59, 0
  %rem61 = urem i32 %add60, 1
  %add62 = add i32 %mul58, %rem61
  %add63 = add i32 %add62, 4
  %37 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul64 = mul i32 %add63, %37
  %add65 = add i32 %34, %mul64
  store i32 %add65, ptr %l_offset.ascast, align 4, !tbaa !10
  %38 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx66 = getelementptr inbounds %struct.rocfft_complex, ptr %38, i64 4
  %39 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %40 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom67 = zext i32 %40 to i64
  %arrayidx68 = getelementptr inbounds %struct.rocfft_complex, ptr %39, i64 %idxprom67
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx68, ptr align 8 %arrayidx66, i64 16, i1 false), !tbaa.struct !48
  call void @_Z13__syncthreadsv() #20
  %41 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %42 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add69 = add i32 %42, 0
  %add70 = add i32 %add69, 0
  %add71 = add i32 %add70, 0
  %43 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul72 = mul i32 %add71, %43
  %add73 = add i32 %41, %mul72
  store i32 %add73, ptr %l_offset.ascast, align 4, !tbaa !10
  %44 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %45 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom74 = zext i32 %45 to i64
  %arrayidx75 = getelementptr inbounds %struct.rocfft_complex, ptr %44, i64 %idxprom74
  %46 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx76 = getelementptr inbounds %struct.rocfft_complex, ptr %46, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx76, ptr align 8 %arrayidx75, i64 16, i1 false), !tbaa.struct !48
  %47 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %48 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add77 = add i32 %48, 0
  %add78 = add i32 %add77, 0
  %add79 = add i32 %add78, 25
  %49 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul80 = mul i32 %add79, %49
  %add81 = add i32 %47, %mul80
  store i32 %add81, ptr %l_offset.ascast, align 4, !tbaa !10
  %50 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %51 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom82 = zext i32 %51 to i64
  %arrayidx83 = getelementptr inbounds %struct.rocfft_complex, ptr %50, i64 %idxprom82
  %52 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx84 = getelementptr inbounds %struct.rocfft_complex, ptr %52, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx84, ptr align 8 %arrayidx83, i64 16, i1 false), !tbaa.struct !48
  %53 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %54 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add85 = add i32 %54, 0
  %add86 = add i32 %add85, 0
  %add87 = add i32 %add86, 50
  %55 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul88 = mul i32 %add87, %55
  %add89 = add i32 %53, %mul88
  store i32 %add89, ptr %l_offset.ascast, align 4, !tbaa !10
  %56 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %57 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom90 = zext i32 %57 to i64
  %arrayidx91 = getelementptr inbounds %struct.rocfft_complex, ptr %56, i64 %idxprom90
  %58 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx92 = getelementptr inbounds %struct.rocfft_complex, ptr %58, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx92, ptr align 8 %arrayidx91, i64 16, i1 false), !tbaa.struct !48
  %59 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %60 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add93 = add i32 %60, 0
  %add94 = add i32 %add93, 0
  %add95 = add i32 %add94, 75
  %61 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul96 = mul i32 %add95, %61
  %add97 = add i32 %59, %mul96
  store i32 %add97, ptr %l_offset.ascast, align 4, !tbaa !10
  %62 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %63 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom98 = zext i32 %63 to i64
  %arrayidx99 = getelementptr inbounds %struct.rocfft_complex, ptr %62, i64 %idxprom98
  %64 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx100 = getelementptr inbounds %struct.rocfft_complex, ptr %64, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx100, ptr align 8 %arrayidx99, i64 16, i1 false), !tbaa.struct !48
  %65 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %66 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add101 = add i32 %66, 0
  %add102 = add i32 %add101, 0
  %add103 = add i32 %add102, 100
  %67 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul104 = mul i32 %add103, %67
  %add105 = add i32 %65, %mul104
  store i32 %add105, ptr %l_offset.ascast, align 4, !tbaa !10
  %68 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %69 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom106 = zext i32 %69 to i64
  %arrayidx107 = getelementptr inbounds %struct.rocfft_complex, ptr %68, i64 %idxprom106
  %70 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx108 = getelementptr inbounds %struct.rocfft_complex, ptr %70, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx108, ptr align 8 %arrayidx107, i64 16, i1 false), !tbaa.struct !48
  %71 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %72 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add109 = add i32 %72, 0
  %add110 = add i32 %add109, 0
  %rem111 = urem i32 %add110, 5
  %mul112 = mul i32 4, %rem111
  %add113 = add i32 0, %mul112
  %idxprom114 = zext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds %struct.rocfft_complex, ptr %71, i64 %idxprom114
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx115, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %73 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx116 = getelementptr inbounds %struct.rocfft_complex, ptr %73, i64 1
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx116, i32 0, i32 0
  %74 = load double, ptr %x, align 8, !tbaa !51
  %x117 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %75 = load double, ptr %x117, align 8, !tbaa !51
  %mul118 = fmul contract double %74, %75
  %76 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx119 = getelementptr inbounds %struct.rocfft_complex, ptr %76, i64 1
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx119, i32 0, i32 1
  %77 = load double, ptr %y, align 8, !tbaa !53
  %y120 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %78 = load double, ptr %y120, align 8, !tbaa !53
  %mul121 = fmul contract double %77, %78
  %add122 = fadd contract double %mul118, %mul121
  %79 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx123 = getelementptr inbounds %struct.rocfft_complex, ptr %79, i64 1
  %y124 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx123, i32 0, i32 1
  %80 = load double, ptr %y124, align 8, !tbaa !53
  %x125 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %81 = load double, ptr %x125, align 8, !tbaa !51
  %mul126 = fmul contract double %80, %81
  %82 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx127 = getelementptr inbounds %struct.rocfft_complex, ptr %82, i64 1
  %x128 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx127, i32 0, i32 0
  %83 = load double, ptr %x128, align 8, !tbaa !51
  %y129 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %84 = load double, ptr %y129, align 8, !tbaa !53
  %mul130 = fmul contract double %83, %84
  %sub = fsub contract double %mul126, %mul130
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.ascast, double noundef %add122, double noundef %sub) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  %85 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx131 = getelementptr inbounds %struct.rocfft_complex, ptr %85, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx131, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %86 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %87 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add132 = add i32 %87, 0
  %add133 = add i32 %add132, 0
  %rem134 = urem i32 %add133, 5
  %mul135 = mul i32 4, %rem134
  %add136 = add i32 1, %mul135
  %idxprom137 = zext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds %struct.rocfft_complex, ptr %86, i64 %idxprom137
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx138, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp139) #10
  %88 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx140 = getelementptr inbounds %struct.rocfft_complex, ptr %88, i64 2
  %x141 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx140, i32 0, i32 0
  %89 = load double, ptr %x141, align 8, !tbaa !51
  %x142 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %90 = load double, ptr %x142, align 8, !tbaa !51
  %mul143 = fmul contract double %89, %90
  %91 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx144 = getelementptr inbounds %struct.rocfft_complex, ptr %91, i64 2
  %y145 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx144, i32 0, i32 1
  %92 = load double, ptr %y145, align 8, !tbaa !53
  %y146 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %93 = load double, ptr %y146, align 8, !tbaa !53
  %mul147 = fmul contract double %92, %93
  %add148 = fadd contract double %mul143, %mul147
  %94 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx149 = getelementptr inbounds %struct.rocfft_complex, ptr %94, i64 2
  %y150 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx149, i32 0, i32 1
  %95 = load double, ptr %y150, align 8, !tbaa !53
  %x151 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %96 = load double, ptr %x151, align 8, !tbaa !51
  %mul152 = fmul contract double %95, %96
  %97 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx153 = getelementptr inbounds %struct.rocfft_complex, ptr %97, i64 2
  %x154 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx153, i32 0, i32 0
  %98 = load double, ptr %x154, align 8, !tbaa !51
  %y155 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %99 = load double, ptr %y155, align 8, !tbaa !53
  %mul156 = fmul contract double %98, %99
  %sub157 = fsub contract double %mul152, %mul156
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp139.ascast, double noundef %add148, double noundef %sub157) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp139.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp139) #10
  %100 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx158 = getelementptr inbounds %struct.rocfft_complex, ptr %100, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx158, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %101 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %102 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add159 = add i32 %102, 0
  %add160 = add i32 %add159, 0
  %rem161 = urem i32 %add160, 5
  %mul162 = mul i32 4, %rem161
  %add163 = add i32 2, %mul162
  %idxprom164 = zext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds %struct.rocfft_complex, ptr %101, i64 %idxprom164
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx165, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp166) #10
  %103 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx167 = getelementptr inbounds %struct.rocfft_complex, ptr %103, i64 3
  %x168 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx167, i32 0, i32 0
  %104 = load double, ptr %x168, align 8, !tbaa !51
  %x169 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %105 = load double, ptr %x169, align 8, !tbaa !51
  %mul170 = fmul contract double %104, %105
  %106 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx171 = getelementptr inbounds %struct.rocfft_complex, ptr %106, i64 3
  %y172 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx171, i32 0, i32 1
  %107 = load double, ptr %y172, align 8, !tbaa !53
  %y173 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %108 = load double, ptr %y173, align 8, !tbaa !53
  %mul174 = fmul contract double %107, %108
  %add175 = fadd contract double %mul170, %mul174
  %109 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx176 = getelementptr inbounds %struct.rocfft_complex, ptr %109, i64 3
  %y177 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx176, i32 0, i32 1
  %110 = load double, ptr %y177, align 8, !tbaa !53
  %x178 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %111 = load double, ptr %x178, align 8, !tbaa !51
  %mul179 = fmul contract double %110, %111
  %112 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx180 = getelementptr inbounds %struct.rocfft_complex, ptr %112, i64 3
  %x181 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx180, i32 0, i32 0
  %113 = load double, ptr %x181, align 8, !tbaa !51
  %y182 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %114 = load double, ptr %y182, align 8, !tbaa !53
  %mul183 = fmul contract double %113, %114
  %sub184 = fsub contract double %mul179, %mul183
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp166.ascast, double noundef %add175, double noundef %sub184) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp166.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp166) #10
  %115 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx185 = getelementptr inbounds %struct.rocfft_complex, ptr %115, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx185, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %116 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %117 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add186 = add i32 %117, 0
  %add187 = add i32 %add186, 0
  %rem188 = urem i32 %add187, 5
  %mul189 = mul i32 4, %rem188
  %add190 = add i32 3, %mul189
  %idxprom191 = zext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds %struct.rocfft_complex, ptr %116, i64 %idxprom191
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx192, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp193) #10
  %118 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx194 = getelementptr inbounds %struct.rocfft_complex, ptr %118, i64 4
  %x195 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx194, i32 0, i32 0
  %119 = load double, ptr %x195, align 8, !tbaa !51
  %x196 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %120 = load double, ptr %x196, align 8, !tbaa !51
  %mul197 = fmul contract double %119, %120
  %121 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx198 = getelementptr inbounds %struct.rocfft_complex, ptr %121, i64 4
  %y199 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx198, i32 0, i32 1
  %122 = load double, ptr %y199, align 8, !tbaa !53
  %y200 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %123 = load double, ptr %y200, align 8, !tbaa !53
  %mul201 = fmul contract double %122, %123
  %add202 = fadd contract double %mul197, %mul201
  %124 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx203 = getelementptr inbounds %struct.rocfft_complex, ptr %124, i64 4
  %y204 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx203, i32 0, i32 1
  %125 = load double, ptr %y204, align 8, !tbaa !53
  %x205 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %126 = load double, ptr %x205, align 8, !tbaa !51
  %mul206 = fmul contract double %125, %126
  %127 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx207 = getelementptr inbounds %struct.rocfft_complex, ptr %127, i64 4
  %x208 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx207, i32 0, i32 0
  %128 = load double, ptr %x208, align 8, !tbaa !51
  %y209 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %129 = load double, ptr %y209, align 8, !tbaa !53
  %mul210 = fmul contract double %128, %129
  %sub211 = fsub contract double %mul206, %mul210
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp193.ascast, double noundef %add202, double noundef %sub211) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp193.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp193) #10
  %130 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx212 = getelementptr inbounds %struct.rocfft_complex, ptr %130, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx212, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %131 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr213 = getelementptr inbounds %struct.rocfft_complex, ptr %131, i64 0
  %132 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr214 = getelementptr inbounds %struct.rocfft_complex, ptr %132, i64 1
  %133 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr215 = getelementptr inbounds %struct.rocfft_complex, ptr %133, i64 2
  %134 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr216 = getelementptr inbounds %struct.rocfft_complex, ptr %134, i64 3
  %135 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr217 = getelementptr inbounds %struct.rocfft_complex, ptr %135, i64 4
  call void @_Z9InvRad5B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_(ptr noundef %add.ptr213, ptr noundef %add.ptr214, ptr noundef %add.ptr215, ptr noundef %add.ptr216, ptr noundef %add.ptr217) #20
  call void @_Z13__syncthreadsv() #20
  %136 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %137 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add218 = add i32 %137, 0
  %add219 = add i32 %add218, 0
  %div220 = udiv i32 %add219, 5
  %mul221 = mul i32 %div220, 25
  %138 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add222 = add i32 %138, 0
  %add223 = add i32 %add222, 0
  %rem224 = urem i32 %add223, 5
  %add225 = add i32 %mul221, %rem224
  %add226 = add i32 %add225, 0
  %139 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul227 = mul i32 %add226, %139
  %add228 = add i32 %136, %mul227
  store i32 %add228, ptr %l_offset.ascast, align 4, !tbaa !10
  %140 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx229 = getelementptr inbounds %struct.rocfft_complex, ptr %140, i64 0
  %141 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %142 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom230 = zext i32 %142 to i64
  %arrayidx231 = getelementptr inbounds %struct.rocfft_complex, ptr %141, i64 %idxprom230
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx231, ptr align 8 %arrayidx229, i64 16, i1 false), !tbaa.struct !48
  %143 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %144 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add232 = add i32 %144, 0
  %add233 = add i32 %add232, 0
  %div234 = udiv i32 %add233, 5
  %mul235 = mul i32 %div234, 25
  %145 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add236 = add i32 %145, 0
  %add237 = add i32 %add236, 0
  %rem238 = urem i32 %add237, 5
  %add239 = add i32 %mul235, %rem238
  %add240 = add i32 %add239, 5
  %146 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul241 = mul i32 %add240, %146
  %add242 = add i32 %143, %mul241
  store i32 %add242, ptr %l_offset.ascast, align 4, !tbaa !10
  %147 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx243 = getelementptr inbounds %struct.rocfft_complex, ptr %147, i64 1
  %148 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %149 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom244 = zext i32 %149 to i64
  %arrayidx245 = getelementptr inbounds %struct.rocfft_complex, ptr %148, i64 %idxprom244
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx245, ptr align 8 %arrayidx243, i64 16, i1 false), !tbaa.struct !48
  %150 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %151 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add246 = add i32 %151, 0
  %add247 = add i32 %add246, 0
  %div248 = udiv i32 %add247, 5
  %mul249 = mul i32 %div248, 25
  %152 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add250 = add i32 %152, 0
  %add251 = add i32 %add250, 0
  %rem252 = urem i32 %add251, 5
  %add253 = add i32 %mul249, %rem252
  %add254 = add i32 %add253, 10
  %153 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul255 = mul i32 %add254, %153
  %add256 = add i32 %150, %mul255
  store i32 %add256, ptr %l_offset.ascast, align 4, !tbaa !10
  %154 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx257 = getelementptr inbounds %struct.rocfft_complex, ptr %154, i64 2
  %155 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %156 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom258 = zext i32 %156 to i64
  %arrayidx259 = getelementptr inbounds %struct.rocfft_complex, ptr %155, i64 %idxprom258
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx259, ptr align 8 %arrayidx257, i64 16, i1 false), !tbaa.struct !48
  %157 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %158 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add260 = add i32 %158, 0
  %add261 = add i32 %add260, 0
  %div262 = udiv i32 %add261, 5
  %mul263 = mul i32 %div262, 25
  %159 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add264 = add i32 %159, 0
  %add265 = add i32 %add264, 0
  %rem266 = urem i32 %add265, 5
  %add267 = add i32 %mul263, %rem266
  %add268 = add i32 %add267, 15
  %160 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul269 = mul i32 %add268, %160
  %add270 = add i32 %157, %mul269
  store i32 %add270, ptr %l_offset.ascast, align 4, !tbaa !10
  %161 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx271 = getelementptr inbounds %struct.rocfft_complex, ptr %161, i64 3
  %162 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %163 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom272 = zext i32 %163 to i64
  %arrayidx273 = getelementptr inbounds %struct.rocfft_complex, ptr %162, i64 %idxprom272
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx273, ptr align 8 %arrayidx271, i64 16, i1 false), !tbaa.struct !48
  %164 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %165 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add274 = add i32 %165, 0
  %add275 = add i32 %add274, 0
  %div276 = udiv i32 %add275, 5
  %mul277 = mul i32 %div276, 25
  %166 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add278 = add i32 %166, 0
  %add279 = add i32 %add278, 0
  %rem280 = urem i32 %add279, 5
  %add281 = add i32 %mul277, %rem280
  %add282 = add i32 %add281, 20
  %167 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul283 = mul i32 %add282, %167
  %add284 = add i32 %164, %mul283
  store i32 %add284, ptr %l_offset.ascast, align 4, !tbaa !10
  %168 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx285 = getelementptr inbounds %struct.rocfft_complex, ptr %168, i64 4
  %169 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %170 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom286 = zext i32 %170 to i64
  %arrayidx287 = getelementptr inbounds %struct.rocfft_complex, ptr %169, i64 %idxprom286
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx287, ptr align 8 %arrayidx285, i64 16, i1 false), !tbaa.struct !48
  call void @_Z13__syncthreadsv() #20
  %171 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %172 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add288 = add i32 %172, 0
  %add289 = add i32 %add288, 0
  %add290 = add i32 %add289, 0
  %173 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul291 = mul i32 %add290, %173
  %add292 = add i32 %171, %mul291
  store i32 %add292, ptr %l_offset.ascast, align 4, !tbaa !10
  %174 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %175 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom293 = zext i32 %175 to i64
  %arrayidx294 = getelementptr inbounds %struct.rocfft_complex, ptr %174, i64 %idxprom293
  %176 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx295 = getelementptr inbounds %struct.rocfft_complex, ptr %176, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx295, ptr align 8 %arrayidx294, i64 16, i1 false), !tbaa.struct !48
  %177 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %178 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add296 = add i32 %178, 0
  %add297 = add i32 %add296, 0
  %add298 = add i32 %add297, 25
  %179 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul299 = mul i32 %add298, %179
  %add300 = add i32 %177, %mul299
  store i32 %add300, ptr %l_offset.ascast, align 4, !tbaa !10
  %180 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %181 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom301 = zext i32 %181 to i64
  %arrayidx302 = getelementptr inbounds %struct.rocfft_complex, ptr %180, i64 %idxprom301
  %182 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx303 = getelementptr inbounds %struct.rocfft_complex, ptr %182, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx303, ptr align 8 %arrayidx302, i64 16, i1 false), !tbaa.struct !48
  %183 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %184 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add304 = add i32 %184, 0
  %add305 = add i32 %add304, 0
  %add306 = add i32 %add305, 50
  %185 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul307 = mul i32 %add306, %185
  %add308 = add i32 %183, %mul307
  store i32 %add308, ptr %l_offset.ascast, align 4, !tbaa !10
  %186 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %187 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom309 = zext i32 %187 to i64
  %arrayidx310 = getelementptr inbounds %struct.rocfft_complex, ptr %186, i64 %idxprom309
  %188 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx311 = getelementptr inbounds %struct.rocfft_complex, ptr %188, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx311, ptr align 8 %arrayidx310, i64 16, i1 false), !tbaa.struct !48
  %189 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %190 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add312 = add i32 %190, 0
  %add313 = add i32 %add312, 0
  %add314 = add i32 %add313, 75
  %191 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul315 = mul i32 %add314, %191
  %add316 = add i32 %189, %mul315
  store i32 %add316, ptr %l_offset.ascast, align 4, !tbaa !10
  %192 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %193 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom317 = zext i32 %193 to i64
  %arrayidx318 = getelementptr inbounds %struct.rocfft_complex, ptr %192, i64 %idxprom317
  %194 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx319 = getelementptr inbounds %struct.rocfft_complex, ptr %194, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx319, ptr align 8 %arrayidx318, i64 16, i1 false), !tbaa.struct !48
  %195 = load i32, ptr %offset_lds.addr.ascast, align 4, !tbaa !10
  %196 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add320 = add i32 %196, 0
  %add321 = add i32 %add320, 0
  %add322 = add i32 %add321, 100
  %197 = load i32, ptr %lstride.ascast, align 4, !tbaa !10
  %mul323 = mul i32 %add322, %197
  %add324 = add i32 %195, %mul323
  store i32 %add324, ptr %l_offset.ascast, align 4, !tbaa !10
  %198 = load ptr, ptr %lds_complex.addr.ascast, align 8, !tbaa !6
  %199 = load i32, ptr %l_offset.ascast, align 4, !tbaa !10
  %idxprom325 = zext i32 %199 to i64
  %arrayidx326 = getelementptr inbounds %struct.rocfft_complex, ptr %198, i64 %idxprom325
  %200 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx327 = getelementptr inbounds %struct.rocfft_complex, ptr %200, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx327, ptr align 8 %arrayidx326, i64 16, i1 false), !tbaa.struct !48
  %201 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %202 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add328 = add i32 %202, 0
  %add329 = add i32 %add328, 0
  %rem330 = urem i32 %add329, 25
  %mul331 = mul i32 4, %rem330
  %add332 = add i32 20, %mul331
  %idxprom333 = zext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds %struct.rocfft_complex, ptr %201, i64 %idxprom333
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx334, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp335) #10
  %203 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx336 = getelementptr inbounds %struct.rocfft_complex, ptr %203, i64 1
  %x337 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx336, i32 0, i32 0
  %204 = load double, ptr %x337, align 8, !tbaa !51
  %x338 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %205 = load double, ptr %x338, align 8, !tbaa !51
  %mul339 = fmul contract double %204, %205
  %206 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx340 = getelementptr inbounds %struct.rocfft_complex, ptr %206, i64 1
  %y341 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx340, i32 0, i32 1
  %207 = load double, ptr %y341, align 8, !tbaa !53
  %y342 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %208 = load double, ptr %y342, align 8, !tbaa !53
  %mul343 = fmul contract double %207, %208
  %add344 = fadd contract double %mul339, %mul343
  %209 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx345 = getelementptr inbounds %struct.rocfft_complex, ptr %209, i64 1
  %y346 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx345, i32 0, i32 1
  %210 = load double, ptr %y346, align 8, !tbaa !53
  %x347 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %211 = load double, ptr %x347, align 8, !tbaa !51
  %mul348 = fmul contract double %210, %211
  %212 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx349 = getelementptr inbounds %struct.rocfft_complex, ptr %212, i64 1
  %x350 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx349, i32 0, i32 0
  %213 = load double, ptr %x350, align 8, !tbaa !51
  %y351 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %214 = load double, ptr %y351, align 8, !tbaa !53
  %mul352 = fmul contract double %213, %214
  %sub353 = fsub contract double %mul348, %mul352
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp335.ascast, double noundef %add344, double noundef %sub353) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp335.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp335) #10
  %215 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx354 = getelementptr inbounds %struct.rocfft_complex, ptr %215, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx354, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %216 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %217 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add355 = add i32 %217, 0
  %add356 = add i32 %add355, 0
  %rem357 = urem i32 %add356, 25
  %mul358 = mul i32 4, %rem357
  %add359 = add i32 21, %mul358
  %idxprom360 = zext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds %struct.rocfft_complex, ptr %216, i64 %idxprom360
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx361, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp362) #10
  %218 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx363 = getelementptr inbounds %struct.rocfft_complex, ptr %218, i64 2
  %x364 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx363, i32 0, i32 0
  %219 = load double, ptr %x364, align 8, !tbaa !51
  %x365 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %220 = load double, ptr %x365, align 8, !tbaa !51
  %mul366 = fmul contract double %219, %220
  %221 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx367 = getelementptr inbounds %struct.rocfft_complex, ptr %221, i64 2
  %y368 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx367, i32 0, i32 1
  %222 = load double, ptr %y368, align 8, !tbaa !53
  %y369 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %223 = load double, ptr %y369, align 8, !tbaa !53
  %mul370 = fmul contract double %222, %223
  %add371 = fadd contract double %mul366, %mul370
  %224 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx372 = getelementptr inbounds %struct.rocfft_complex, ptr %224, i64 2
  %y373 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx372, i32 0, i32 1
  %225 = load double, ptr %y373, align 8, !tbaa !53
  %x374 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %226 = load double, ptr %x374, align 8, !tbaa !51
  %mul375 = fmul contract double %225, %226
  %227 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx376 = getelementptr inbounds %struct.rocfft_complex, ptr %227, i64 2
  %x377 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx376, i32 0, i32 0
  %228 = load double, ptr %x377, align 8, !tbaa !51
  %y378 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %229 = load double, ptr %y378, align 8, !tbaa !53
  %mul379 = fmul contract double %228, %229
  %sub380 = fsub contract double %mul375, %mul379
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp362.ascast, double noundef %add371, double noundef %sub380) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp362.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp362) #10
  %230 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx381 = getelementptr inbounds %struct.rocfft_complex, ptr %230, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx381, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %231 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %232 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add382 = add i32 %232, 0
  %add383 = add i32 %add382, 0
  %rem384 = urem i32 %add383, 25
  %mul385 = mul i32 4, %rem384
  %add386 = add i32 22, %mul385
  %idxprom387 = zext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds %struct.rocfft_complex, ptr %231, i64 %idxprom387
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx388, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp389) #10
  %233 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx390 = getelementptr inbounds %struct.rocfft_complex, ptr %233, i64 3
  %x391 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx390, i32 0, i32 0
  %234 = load double, ptr %x391, align 8, !tbaa !51
  %x392 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %235 = load double, ptr %x392, align 8, !tbaa !51
  %mul393 = fmul contract double %234, %235
  %236 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx394 = getelementptr inbounds %struct.rocfft_complex, ptr %236, i64 3
  %y395 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx394, i32 0, i32 1
  %237 = load double, ptr %y395, align 8, !tbaa !53
  %y396 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %238 = load double, ptr %y396, align 8, !tbaa !53
  %mul397 = fmul contract double %237, %238
  %add398 = fadd contract double %mul393, %mul397
  %239 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx399 = getelementptr inbounds %struct.rocfft_complex, ptr %239, i64 3
  %y400 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx399, i32 0, i32 1
  %240 = load double, ptr %y400, align 8, !tbaa !53
  %x401 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %241 = load double, ptr %x401, align 8, !tbaa !51
  %mul402 = fmul contract double %240, %241
  %242 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx403 = getelementptr inbounds %struct.rocfft_complex, ptr %242, i64 3
  %x404 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx403, i32 0, i32 0
  %243 = load double, ptr %x404, align 8, !tbaa !51
  %y405 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %244 = load double, ptr %y405, align 8, !tbaa !53
  %mul406 = fmul contract double %243, %244
  %sub407 = fsub contract double %mul402, %mul406
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp389.ascast, double noundef %add398, double noundef %sub407) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp389.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp389) #10
  %245 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx408 = getelementptr inbounds %struct.rocfft_complex, ptr %245, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx408, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %246 = load ptr, ptr %twiddles.addr.ascast, align 8, !tbaa !6
  %247 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add409 = add i32 %247, 0
  %add410 = add i32 %add409, 0
  %rem411 = urem i32 %add410, 25
  %mul412 = mul i32 4, %rem411
  %add413 = add i32 23, %mul412
  %idxprom414 = zext i32 %add413 to i64
  %arrayidx415 = getelementptr inbounds %struct.rocfft_complex, ptr %246, i64 %idxprom414
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %arrayidx415, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp416) #10
  %248 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx417 = getelementptr inbounds %struct.rocfft_complex, ptr %248, i64 4
  %x418 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx417, i32 0, i32 0
  %249 = load double, ptr %x418, align 8, !tbaa !51
  %x419 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %250 = load double, ptr %x419, align 8, !tbaa !51
  %mul420 = fmul contract double %249, %250
  %251 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx421 = getelementptr inbounds %struct.rocfft_complex, ptr %251, i64 4
  %y422 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx421, i32 0, i32 1
  %252 = load double, ptr %y422, align 8, !tbaa !53
  %y423 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %253 = load double, ptr %y423, align 8, !tbaa !53
  %mul424 = fmul contract double %252, %253
  %add425 = fadd contract double %mul420, %mul424
  %254 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx426 = getelementptr inbounds %struct.rocfft_complex, ptr %254, i64 4
  %y427 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx426, i32 0, i32 1
  %255 = load double, ptr %y427, align 8, !tbaa !53
  %x428 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %256 = load double, ptr %x428, align 8, !tbaa !51
  %mul429 = fmul contract double %255, %256
  %257 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx430 = getelementptr inbounds %struct.rocfft_complex, ptr %257, i64 4
  %x431 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx430, i32 0, i32 0
  %258 = load double, ptr %x431, align 8, !tbaa !51
  %y432 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %259 = load double, ptr %y432, align 8, !tbaa !53
  %mul433 = fmul contract double %258, %259
  %sub434 = fsub contract double %mul429, %mul433
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp416.ascast, double noundef %add425, double noundef %sub434) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp416.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp416) #10
  %260 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx435 = getelementptr inbounds %struct.rocfft_complex, ptr %260, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx435, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  %261 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr436 = getelementptr inbounds %struct.rocfft_complex, ptr %261, i64 0
  %262 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr437 = getelementptr inbounds %struct.rocfft_complex, ptr %262, i64 1
  %263 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr438 = getelementptr inbounds %struct.rocfft_complex, ptr %263, i64 2
  %264 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr439 = getelementptr inbounds %struct.rocfft_complex, ptr %264, i64 3
  %265 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %add.ptr440 = getelementptr inbounds %struct.rocfft_complex, ptr %265, i64 4
  call void @_Z9InvRad5B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_(ptr noundef %add.ptr436, ptr noundef %add.ptr437, ptr noundef %add.ptr438, ptr noundef %add.ptr439, ptr noundef %add.ptr440) #20
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp441) #10
  %266 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %267 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add442 = add i32 %267, 0
  %add443 = add i32 %add442, 0
  %rem444 = srem i32 %add443, 25
  %add445 = add nsw i32 %rem444, 0
  %conv = sext i32 %add445 to i64
  %268 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul446 = mul i64 %conv, %268
  %call = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %266, i64 noundef %mul446) #20
  %269 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp441.ascast, i32 0, i32 0
  %270 = extractvalue %struct.rocfft_complex %call, 0
  store double %270, ptr %269, align 8
  %271 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp441.ascast, i32 0, i32 1
  %272 = extractvalue %struct.rocfft_complex %call, 1
  store double %272, ptr %271, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp441.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp441) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp447) #10
  %273 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx448 = getelementptr inbounds %struct.rocfft_complex, ptr %273, i64 0
  %x449 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx448, i32 0, i32 0
  %274 = load double, ptr %x449, align 8, !tbaa !51
  %x450 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %275 = load double, ptr %x450, align 8, !tbaa !51
  %mul451 = fmul contract double %274, %275
  %276 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx452 = getelementptr inbounds %struct.rocfft_complex, ptr %276, i64 0
  %y453 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx452, i32 0, i32 1
  %277 = load double, ptr %y453, align 8, !tbaa !53
  %y454 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %278 = load double, ptr %y454, align 8, !tbaa !53
  %mul455 = fmul contract double %277, %278
  %add456 = fadd contract double %mul451, %mul455
  %279 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx457 = getelementptr inbounds %struct.rocfft_complex, ptr %279, i64 0
  %y458 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx457, i32 0, i32 1
  %280 = load double, ptr %y458, align 8, !tbaa !53
  %x459 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %281 = load double, ptr %x459, align 8, !tbaa !51
  %mul460 = fmul contract double %280, %281
  %282 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx461 = getelementptr inbounds %struct.rocfft_complex, ptr %282, i64 0
  %x462 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx461, i32 0, i32 0
  %283 = load double, ptr %x462, align 8, !tbaa !51
  %y463 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %284 = load double, ptr %y463, align 8, !tbaa !53
  %mul464 = fmul contract double %283, %284
  %sub465 = fsub contract double %mul460, %mul464
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp447.ascast, double noundef %add456, double noundef %sub465) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp447.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp447) #10
  %285 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx466 = getelementptr inbounds %struct.rocfft_complex, ptr %285, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx466, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp467) #10
  %286 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %287 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add468 = add i32 %287, 0
  %add469 = add i32 %add468, 0
  %rem470 = srem i32 %add469, 25
  %add471 = add nsw i32 %rem470, 25
  %conv472 = sext i32 %add471 to i64
  %288 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul473 = mul i64 %conv472, %288
  %call474 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %286, i64 noundef %mul473) #20
  %289 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp467.ascast, i32 0, i32 0
  %290 = extractvalue %struct.rocfft_complex %call474, 0
  store double %290, ptr %289, align 8
  %291 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp467.ascast, i32 0, i32 1
  %292 = extractvalue %struct.rocfft_complex %call474, 1
  store double %292, ptr %291, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp467.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp467) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp475) #10
  %293 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx476 = getelementptr inbounds %struct.rocfft_complex, ptr %293, i64 1
  %x477 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx476, i32 0, i32 0
  %294 = load double, ptr %x477, align 8, !tbaa !51
  %x478 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %295 = load double, ptr %x478, align 8, !tbaa !51
  %mul479 = fmul contract double %294, %295
  %296 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx480 = getelementptr inbounds %struct.rocfft_complex, ptr %296, i64 1
  %y481 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx480, i32 0, i32 1
  %297 = load double, ptr %y481, align 8, !tbaa !53
  %y482 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %298 = load double, ptr %y482, align 8, !tbaa !53
  %mul483 = fmul contract double %297, %298
  %add484 = fadd contract double %mul479, %mul483
  %299 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx485 = getelementptr inbounds %struct.rocfft_complex, ptr %299, i64 1
  %y486 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx485, i32 0, i32 1
  %300 = load double, ptr %y486, align 8, !tbaa !53
  %x487 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %301 = load double, ptr %x487, align 8, !tbaa !51
  %mul488 = fmul contract double %300, %301
  %302 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx489 = getelementptr inbounds %struct.rocfft_complex, ptr %302, i64 1
  %x490 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx489, i32 0, i32 0
  %303 = load double, ptr %x490, align 8, !tbaa !51
  %y491 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %304 = load double, ptr %y491, align 8, !tbaa !53
  %mul492 = fmul contract double %303, %304
  %sub493 = fsub contract double %mul488, %mul492
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp475.ascast, double noundef %add484, double noundef %sub493) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp475.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp475) #10
  %305 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx494 = getelementptr inbounds %struct.rocfft_complex, ptr %305, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx494, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp495) #10
  %306 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %307 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add496 = add i32 %307, 0
  %add497 = add i32 %add496, 0
  %rem498 = srem i32 %add497, 25
  %add499 = add nsw i32 %rem498, 50
  %conv500 = sext i32 %add499 to i64
  %308 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul501 = mul i64 %conv500, %308
  %call502 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %306, i64 noundef %mul501) #20
  %309 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp495.ascast, i32 0, i32 0
  %310 = extractvalue %struct.rocfft_complex %call502, 0
  store double %310, ptr %309, align 8
  %311 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp495.ascast, i32 0, i32 1
  %312 = extractvalue %struct.rocfft_complex %call502, 1
  store double %312, ptr %311, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp495.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp495) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp503) #10
  %313 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx504 = getelementptr inbounds %struct.rocfft_complex, ptr %313, i64 2
  %x505 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx504, i32 0, i32 0
  %314 = load double, ptr %x505, align 8, !tbaa !51
  %x506 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %315 = load double, ptr %x506, align 8, !tbaa !51
  %mul507 = fmul contract double %314, %315
  %316 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx508 = getelementptr inbounds %struct.rocfft_complex, ptr %316, i64 2
  %y509 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx508, i32 0, i32 1
  %317 = load double, ptr %y509, align 8, !tbaa !53
  %y510 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %318 = load double, ptr %y510, align 8, !tbaa !53
  %mul511 = fmul contract double %317, %318
  %add512 = fadd contract double %mul507, %mul511
  %319 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx513 = getelementptr inbounds %struct.rocfft_complex, ptr %319, i64 2
  %y514 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx513, i32 0, i32 1
  %320 = load double, ptr %y514, align 8, !tbaa !53
  %x515 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %321 = load double, ptr %x515, align 8, !tbaa !51
  %mul516 = fmul contract double %320, %321
  %322 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx517 = getelementptr inbounds %struct.rocfft_complex, ptr %322, i64 2
  %x518 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx517, i32 0, i32 0
  %323 = load double, ptr %x518, align 8, !tbaa !51
  %y519 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %324 = load double, ptr %y519, align 8, !tbaa !53
  %mul520 = fmul contract double %323, %324
  %sub521 = fsub contract double %mul516, %mul520
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp503.ascast, double noundef %add512, double noundef %sub521) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp503.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp503) #10
  %325 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx522 = getelementptr inbounds %struct.rocfft_complex, ptr %325, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx522, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp523) #10
  %326 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %327 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add524 = add i32 %327, 0
  %add525 = add i32 %add524, 0
  %rem526 = srem i32 %add525, 25
  %add527 = add nsw i32 %rem526, 75
  %conv528 = sext i32 %add527 to i64
  %328 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul529 = mul i64 %conv528, %328
  %call530 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %326, i64 noundef %mul529) #20
  %329 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp523.ascast, i32 0, i32 0
  %330 = extractvalue %struct.rocfft_complex %call530, 0
  store double %330, ptr %329, align 8
  %331 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp523.ascast, i32 0, i32 1
  %332 = extractvalue %struct.rocfft_complex %call530, 1
  store double %332, ptr %331, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp523.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp523) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp531) #10
  %333 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx532 = getelementptr inbounds %struct.rocfft_complex, ptr %333, i64 3
  %x533 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx532, i32 0, i32 0
  %334 = load double, ptr %x533, align 8, !tbaa !51
  %x534 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %335 = load double, ptr %x534, align 8, !tbaa !51
  %mul535 = fmul contract double %334, %335
  %336 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx536 = getelementptr inbounds %struct.rocfft_complex, ptr %336, i64 3
  %y537 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx536, i32 0, i32 1
  %337 = load double, ptr %y537, align 8, !tbaa !53
  %y538 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %338 = load double, ptr %y538, align 8, !tbaa !53
  %mul539 = fmul contract double %337, %338
  %add540 = fadd contract double %mul535, %mul539
  %339 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx541 = getelementptr inbounds %struct.rocfft_complex, ptr %339, i64 3
  %y542 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx541, i32 0, i32 1
  %340 = load double, ptr %y542, align 8, !tbaa !53
  %x543 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %341 = load double, ptr %x543, align 8, !tbaa !51
  %mul544 = fmul contract double %340, %341
  %342 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx545 = getelementptr inbounds %struct.rocfft_complex, ptr %342, i64 3
  %x546 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx545, i32 0, i32 0
  %343 = load double, ptr %x546, align 8, !tbaa !51
  %y547 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %344 = load double, ptr %y547, align 8, !tbaa !53
  %mul548 = fmul contract double %343, %344
  %sub549 = fsub contract double %mul544, %mul548
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp531.ascast, double noundef %add540, double noundef %sub549) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp531.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp531) #10
  %345 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx550 = getelementptr inbounds %struct.rocfft_complex, ptr %345, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx550, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp551) #10
  %346 = load ptr, ptr %large_twiddles.addr.ascast, align 8, !tbaa !6
  %347 = load i32, ptr %thread.addr.ascast, align 4, !tbaa !10
  %add552 = add i32 %347, 0
  %add553 = add i32 %add552, 0
  %rem554 = srem i32 %add553, 25
  %add555 = add nsw i32 %rem554, 100
  %conv556 = sext i32 %add555 to i64
  %348 = load i64, ptr %trans_local.addr.ascast, align 8, !tbaa !41
  %mul557 = mul i64 %conv556, %348
  %call558 = call %struct.rocfft_complex @_Z9TW_NStepsI14rocfft_complexIdELm8ELm2EET_PKS2_m(ptr noundef %346, i64 noundef %mul557) #20
  %349 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp551.ascast, i32 0, i32 0
  %350 = extractvalue %struct.rocfft_complex %call558, 0
  store double %350, ptr %349, align 8
  %351 = getelementptr inbounds %struct.rocfft_complex, ptr %ref.tmp551.ascast, i32 0, i32 1
  %352 = extractvalue %struct.rocfft_complex %call558, 1
  store double %352, ptr %351, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %W.ascast, ptr align 8 %ref.tmp551.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp551) #10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ref.tmp559) #10
  %353 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx560 = getelementptr inbounds %struct.rocfft_complex, ptr %353, i64 4
  %x561 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx560, i32 0, i32 0
  %354 = load double, ptr %x561, align 8, !tbaa !51
  %x562 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %355 = load double, ptr %x562, align 8, !tbaa !51
  %mul563 = fmul contract double %354, %355
  %356 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx564 = getelementptr inbounds %struct.rocfft_complex, ptr %356, i64 4
  %y565 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx564, i32 0, i32 1
  %357 = load double, ptr %y565, align 8, !tbaa !53
  %y566 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %358 = load double, ptr %y566, align 8, !tbaa !53
  %mul567 = fmul contract double %357, %358
  %add568 = fadd contract double %mul563, %mul567
  %359 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx569 = getelementptr inbounds %struct.rocfft_complex, ptr %359, i64 4
  %y570 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx569, i32 0, i32 1
  %360 = load double, ptr %y570, align 8, !tbaa !53
  %x571 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 0
  %361 = load double, ptr %x571, align 8, !tbaa !51
  %mul572 = fmul contract double %360, %361
  %362 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx573 = getelementptr inbounds %struct.rocfft_complex, ptr %362, i64 4
  %x574 = getelementptr inbounds %struct.rocfft_complex, ptr %arrayidx573, i32 0, i32 0
  %363 = load double, ptr %x574, align 8, !tbaa !51
  %y575 = getelementptr inbounds %struct.rocfft_complex, ptr %W.ascast, i32 0, i32 1
  %364 = load double, ptr %y575, align 8, !tbaa !53
  %mul576 = fmul contract double %363, %364
  %sub577 = fsub contract double %mul572, %mul576
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp559.ascast, double noundef %add568, double noundef %sub577) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t.ascast, ptr align 8 %ref.tmp559.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp559) #10
  %365 = load ptr, ptr %R.addr.ascast, align 8, !tbaa !6
  %arrayidx578 = getelementptr inbounds %struct.rocfft_complex, ptr %365, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx578, ptr align 8 %t.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %l_offset) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %lstride) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %t) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %W) #10
  ret void
}

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z15store_intrinsicI14rocfft_complexIdEEvPT_jjS2_b(ptr noundef %data, i32 noundef %voffset, i32 noundef %soffset, double %element.coerce0, double %element.coerce1, i1 noundef zeroext %rw) #13 comdat {
entry:
  %element = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %data.addr = alloca ptr, align 8, addrspace(5)
  %voffset.addr = alloca i32, align 4, addrspace(5)
  %soffset.addr = alloca i32, align 4, addrspace(5)
  %rw.addr = alloca i8, align 1, addrspace(5)
  %agg.tmp.ensured = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::__X", align 1, addrspace(5)
  %element1 = addrspacecast ptr addrspace(5) %element to ptr
  %data.addr.ascast = addrspacecast ptr addrspace(5) %data.addr to ptr
  %voffset.addr.ascast = addrspacecast ptr addrspace(5) %voffset.addr to ptr
  %soffset.addr.ascast = addrspacecast ptr addrspace(5) %soffset.addr to ptr
  %rw.addr.ascast = addrspacecast ptr addrspace(5) %rw.addr to ptr
  %agg.tmp.ensured.ascast = addrspacecast ptr addrspace(5) %agg.tmp.ensured to ptr
  %0 = getelementptr inbounds %struct.rocfft_complex, ptr %element1, i32 0, i32 0
  store double %element.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds %struct.rocfft_complex, ptr %element1, i32 0, i32 1
  store double %element.coerce1, ptr %1, align 8
  store ptr %data, ptr %data.addr.ascast, align 8, !tbaa !6
  store i32 %voffset, ptr %voffset.addr.ascast, align 4, !tbaa !10
  store i32 %soffset, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %frombool = zext i1 %rw to i8
  store i8 %frombool, ptr %rw.addr.ascast, align 1, !tbaa !43
  %2 = load ptr, ptr %data.addr.ascast, align 8, !tbaa !6
  %3 = load i32, ptr %voffset.addr.ascast, align 4, !tbaa !10
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 16
  %conv2 = trunc i64 %mul to i32
  %4 = load i32, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %conv3 = zext i32 %4 to i64
  %mul4 = mul i64 %conv3, 16
  %conv5 = trunc i64 %mul4 to i32
  %5 = load i8, ptr %rw.addr.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool = trunc i8 %5 to i1
  call void @_ZN12buffer_storeI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EEC2ERKS1_PKvjjb(ptr noundef nonnull align 1 dereferenceable(1) %agg.tmp.ensured.ascast, ptr noundef nonnull align 8 dereferenceable(16) %element1, ptr noundef %2, i32 noundef %conv2, i32 noundef %conv5, i1 noundef zeroext %tobool) #20
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nounwind
define linkonce_odr hidden void @_ZN12buffer_storeI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EEC2ERKS1_PKvjjb(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(16) %D, ptr noundef %base_ptr, i32 noundef %voffset, i32 noundef %soffset, i1 noundef zeroext %pred_guard) unnamed_addr #14 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8, addrspace(5)
  %D.addr = alloca ptr, align 8, addrspace(5)
  %base_ptr.addr = alloca ptr, align 8, addrspace(5)
  %voffset.addr = alloca i32, align 4, addrspace(5)
  %soffset.addr = alloca i32, align 4, addrspace(5)
  %pred_guard.addr = alloca i8, align 1, addrspace(5)
  %buffer_rsc = alloca %struct.BufferResource, align 16, addrspace(5)
  %data = alloca <4 x float>, align 16, addrspace(5)
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %D.addr.ascast = addrspacecast ptr addrspace(5) %D.addr to ptr
  %base_ptr.addr.ascast = addrspacecast ptr addrspace(5) %base_ptr.addr to ptr
  %voffset.addr.ascast = addrspacecast ptr addrspace(5) %voffset.addr to ptr
  %soffset.addr.ascast = addrspacecast ptr addrspace(5) %soffset.addr to ptr
  %pred_guard.addr.ascast = addrspacecast ptr addrspace(5) %pred_guard.addr to ptr
  %buffer_rsc.ascast = addrspacecast ptr addrspace(5) %buffer_rsc to ptr
  %data.ascast = addrspacecast ptr addrspace(5) %data to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %D, ptr %D.addr.ascast, align 8, !tbaa !6
  store ptr %base_ptr, ptr %base_ptr.addr.ascast, align 8, !tbaa !6
  store i32 %voffset, ptr %voffset.addr.ascast, align 4, !tbaa !10
  store i32 %soffset, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %frombool = zext i1 %pred_guard to i8
  store i8 %frombool, ptr %pred_guard.addr.ascast, align 1, !tbaa !43
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %buffer_rsc) #10
  %0 = load ptr, ptr %base_ptr.addr.ascast, align 8, !tbaa !6
  call void @_ZN14BufferResourceC2EPKvj(ptr noundef nonnull align 16 dereferenceable(16) %buffer_rsc.ascast, ptr noundef %0, i32 noundef -2) #20
  %1 = load i8, ptr %pred_guard.addr.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %voffset.addr.ascast, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %voffset.addr.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %data) #10
  %3 = load ptr, ptr %D.addr.ascast, align 8, !tbaa !6
  %4 = load <4 x float>, ptr %3, align 16, !tbaa !14
  store <4 x float> %4, ptr %data.ascast, align 16, !tbaa !14
  %5 = load <4 x float>, ptr %data.ascast, align 16, !tbaa !14
  %call = call noundef <4 x i32> @_ZN14BufferResourcecvDv4_iEv(ptr noundef nonnull align 16 dereferenceable(16) %buffer_rsc.ascast) #20
  %6 = load i32, ptr %voffset.addr.ascast, align 4, !tbaa !10
  %7 = load i32, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %8 = call i32 @llvm.amdgcn.readfirstlane(i32 %7)
  call void @llvm.amdgcn.raw.buffer.store.v4f32(<4 x float> noundef %5, <4 x i32> noundef %call, i32 noundef %6, i32 noundef %8, i32 noundef 0) #20
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %data) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %buffer_rsc) #10
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nounwind
define linkonce_odr hidden void @_ZN14BufferResourceC2EPKvj(ptr noundef nonnull align 16 dereferenceable(16) %this, ptr noundef %base_addr, i32 noundef %num_records) unnamed_addr #14 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8, addrspace(5)
  %base_addr.addr = alloca ptr, align 8, addrspace(5)
  %num_records.addr = alloca i32, align 4, addrspace(5)
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %base_addr.addr.ascast = addrspacecast ptr addrspace(5) %base_addr.addr to ptr
  %num_records.addr.ascast = addrspacecast ptr addrspace(5) %num_records.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %base_addr, ptr %base_addr.addr.ascast, align 8, !tbaa !6
  store i32 %num_records, ptr %num_records.addr.ascast, align 4, !tbaa !10
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  %desc_ = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %base_addr.addr.ascast, align 8, !tbaa !6
  %desc_2 = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %desc_2, i64 0, i64 0
  store ptr %0, ptr %arrayidx, align 16, !tbaa !14
  %1 = load i32, ptr %num_records.addr.ascast, align 4, !tbaa !10
  %desc_3 = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %desc_3, i64 0, i64 2
  store i32 %1, ptr %arrayidx4, align 8, !tbaa !14
  %desc_5 = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x i32], ptr %desc_5, i64 0, i64 3
  store i32 131072, ptr %arrayidx6, align 4, !tbaa !14
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nounwind
define linkonce_odr hidden noundef <4 x i32> @_ZN14BufferResourcecvDv4_iEv(ptr noundef nonnull align 16 dereferenceable(16) %this) #14 comdat align 2 {
entry:
  %retval = alloca <4 x i32>, align 16, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %ret = alloca %"union.BufferResource::Desc", align 16, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %ret.ascast = addrspacecast ptr addrspace(5) %ret to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ret) #10
  %desc_ = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], ptr %desc_, i64 0, i64 0
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !14
  %1 = call i32 @llvm.amdgcn.readfirstlane(i32 %0)
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %ret.ascast, i64 0, i64 0
  store i32 %1, ptr %arrayidx2, align 16, !tbaa !14
  %desc_3 = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %desc_3, i64 0, i64 1
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !14
  %3 = call i32 @llvm.amdgcn.readfirstlane(i32 %2)
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %ret.ascast, i64 0, i64 1
  store i32 %3, ptr %arrayidx5, align 4, !tbaa !14
  %desc_6 = getelementptr inbounds %struct.BufferResource, ptr %this1, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x ptr], ptr %desc_6, i64 0, i64 1
  %4 = load ptr, ptr %arrayidx7, align 8, !tbaa !14
  %arrayidx8 = getelementptr inbounds [2 x ptr], ptr %ret.ascast, i64 0, i64 1
  store ptr %4, ptr %arrayidx8, align 8, !tbaa !14
  %5 = load <4 x i32>, ptr %ret.ascast, align 16, !tbaa !14
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ret) #10
  ret <4 x i32> %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.amdgcn.raw.buffer.store.v4f32(<4 x float>, <4 x i32>, i32, i32, i32 immarg) #15

; Function Attrs: convergent mustprogress nounwind
define linkonce_odr hidden void @_Z9InvRad5B1I14rocfft_complexIdEEvPT_S3_S3_S3_S3_(ptr noundef %R0, ptr noundef %R1, ptr noundef %R2, ptr noundef %R3, ptr noundef %R4) #13 comdat {
entry:
  %R0.addr = alloca ptr, align 8, addrspace(5)
  %R1.addr = alloca ptr, align 8, addrspace(5)
  %R2.addr = alloca ptr, align 8, addrspace(5)
  %R3.addr = alloca ptr, align 8, addrspace(5)
  %R4.addr = alloca ptr, align 8, addrspace(5)
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
  %R0.addr.ascast = addrspacecast ptr addrspace(5) %R0.addr to ptr
  %R1.addr.ascast = addrspacecast ptr addrspace(5) %R1.addr to ptr
  %R2.addr.ascast = addrspacecast ptr addrspace(5) %R2.addr to ptr
  %R3.addr.ascast = addrspacecast ptr addrspace(5) %R3.addr to ptr
  %R4.addr.ascast = addrspacecast ptr addrspace(5) %R4.addr to ptr
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
  store ptr %R0, ptr %R0.addr.ascast, align 8, !tbaa !6
  store ptr %R1, ptr %R1.addr.ascast, align 8, !tbaa !6
  store ptr %R2, ptr %R2.addr.ascast, align 8, !tbaa !6
  store ptr %R3, ptr %R3.addr.ascast, align 8, !tbaa !6
  store ptr %R4, ptr %R4.addr.ascast, align 8, !tbaa !6
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
  %0 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x = getelementptr inbounds %struct.rocfft_complex, ptr %0, i32 0, i32 0
  %1 = load double, ptr %x, align 8, !tbaa !51
  %2 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x1 = getelementptr inbounds %struct.rocfft_complex, ptr %2, i32 0, i32 0
  %3 = load double, ptr %x1, align 8, !tbaa !51
  %add = fadd contract double %1, %3
  %4 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x2 = getelementptr inbounds %struct.rocfft_complex, ptr %4, i32 0, i32 0
  %5 = load double, ptr %x2, align 8, !tbaa !51
  %add3 = fadd contract double %add, %5
  %6 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x4 = getelementptr inbounds %struct.rocfft_complex, ptr %6, i32 0, i32 0
  %7 = load double, ptr %x4, align 8, !tbaa !51
  %add5 = fadd contract double %add3, %7
  %8 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x6 = getelementptr inbounds %struct.rocfft_complex, ptr %8, i32 0, i32 0
  %9 = load double, ptr %x6, align 8, !tbaa !51
  %add7 = fadd contract double %add5, %9
  store double %add7, ptr %TR0.ascast, align 8, !tbaa !49
  %10 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x8 = getelementptr inbounds %struct.rocfft_complex, ptr %10, i32 0, i32 0
  %11 = load double, ptr %x8, align 8, !tbaa !51
  %12 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x9 = getelementptr inbounds %struct.rocfft_complex, ptr %12, i32 0, i32 0
  %13 = load double, ptr %x9, align 8, !tbaa !51
  %14 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x10 = getelementptr inbounds %struct.rocfft_complex, ptr %14, i32 0, i32 0
  %15 = load double, ptr %x10, align 8, !tbaa !51
  %add11 = fadd contract double %13, %15
  %mul = fmul contract double 5.000000e-01, %add11
  %sub = fsub contract double %11, %mul
  %16 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y = getelementptr inbounds %struct.rocfft_complex, ptr %16, i32 0, i32 1
  %17 = load double, ptr %y, align 8, !tbaa !53
  %18 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y12 = getelementptr inbounds %struct.rocfft_complex, ptr %18, i32 0, i32 1
  %19 = load double, ptr %y12, align 8, !tbaa !53
  %sub13 = fsub contract double %17, %19
  %mul14 = fmul contract double 0x3FEE6F0E134454FF, %sub13
  %sub15 = fsub contract double %sub, %mul14
  %20 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y16 = getelementptr inbounds %struct.rocfft_complex, ptr %20, i32 0, i32 1
  %21 = load double, ptr %y16, align 8, !tbaa !53
  %22 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y17 = getelementptr inbounds %struct.rocfft_complex, ptr %22, i32 0, i32 1
  %23 = load double, ptr %y17, align 8, !tbaa !53
  %sub18 = fsub contract double %21, %23
  %mul19 = fmul contract double 0x3FE2CF2304755A5E, %sub18
  %sub20 = fsub contract double %sub15, %mul19
  %24 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x21 = getelementptr inbounds %struct.rocfft_complex, ptr %24, i32 0, i32 0
  %25 = load double, ptr %x21, align 8, !tbaa !51
  %26 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x22 = getelementptr inbounds %struct.rocfft_complex, ptr %26, i32 0, i32 0
  %27 = load double, ptr %x22, align 8, !tbaa !51
  %sub23 = fsub contract double %25, %27
  %28 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x24 = getelementptr inbounds %struct.rocfft_complex, ptr %28, i32 0, i32 0
  %29 = load double, ptr %x24, align 8, !tbaa !51
  %30 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x25 = getelementptr inbounds %struct.rocfft_complex, ptr %30, i32 0, i32 0
  %31 = load double, ptr %x25, align 8, !tbaa !51
  %sub26 = fsub contract double %29, %31
  %add27 = fadd contract double %sub23, %sub26
  %mul28 = fmul contract double 0x3FD3C6EF372FE950, %add27
  %add29 = fadd contract double %sub20, %mul28
  store double %add29, ptr %TR1.ascast, align 8, !tbaa !49
  %32 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x30 = getelementptr inbounds %struct.rocfft_complex, ptr %32, i32 0, i32 0
  %33 = load double, ptr %x30, align 8, !tbaa !51
  %34 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x31 = getelementptr inbounds %struct.rocfft_complex, ptr %34, i32 0, i32 0
  %35 = load double, ptr %x31, align 8, !tbaa !51
  %36 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x32 = getelementptr inbounds %struct.rocfft_complex, ptr %36, i32 0, i32 0
  %37 = load double, ptr %x32, align 8, !tbaa !51
  %add33 = fadd contract double %35, %37
  %mul34 = fmul contract double 5.000000e-01, %add33
  %sub35 = fsub contract double %33, %mul34
  %38 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y36 = getelementptr inbounds %struct.rocfft_complex, ptr %38, i32 0, i32 1
  %39 = load double, ptr %y36, align 8, !tbaa !53
  %40 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y37 = getelementptr inbounds %struct.rocfft_complex, ptr %40, i32 0, i32 1
  %41 = load double, ptr %y37, align 8, !tbaa !53
  %sub38 = fsub contract double %39, %41
  %mul39 = fmul contract double 0x3FEE6F0E134454FF, %sub38
  %add40 = fadd contract double %sub35, %mul39
  %42 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y41 = getelementptr inbounds %struct.rocfft_complex, ptr %42, i32 0, i32 1
  %43 = load double, ptr %y41, align 8, !tbaa !53
  %44 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y42 = getelementptr inbounds %struct.rocfft_complex, ptr %44, i32 0, i32 1
  %45 = load double, ptr %y42, align 8, !tbaa !53
  %sub43 = fsub contract double %43, %45
  %mul44 = fmul contract double 0x3FE2CF2304755A5E, %sub43
  %add45 = fadd contract double %add40, %mul44
  %46 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x46 = getelementptr inbounds %struct.rocfft_complex, ptr %46, i32 0, i32 0
  %47 = load double, ptr %x46, align 8, !tbaa !51
  %48 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x47 = getelementptr inbounds %struct.rocfft_complex, ptr %48, i32 0, i32 0
  %49 = load double, ptr %x47, align 8, !tbaa !51
  %sub48 = fsub contract double %47, %49
  %50 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x49 = getelementptr inbounds %struct.rocfft_complex, ptr %50, i32 0, i32 0
  %51 = load double, ptr %x49, align 8, !tbaa !51
  %52 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x50 = getelementptr inbounds %struct.rocfft_complex, ptr %52, i32 0, i32 0
  %53 = load double, ptr %x50, align 8, !tbaa !51
  %sub51 = fsub contract double %51, %53
  %add52 = fadd contract double %sub48, %sub51
  %mul53 = fmul contract double 0x3FD3C6EF372FE950, %add52
  %add54 = fadd contract double %add45, %mul53
  store double %add54, ptr %TR4.ascast, align 8, !tbaa !49
  %54 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x55 = getelementptr inbounds %struct.rocfft_complex, ptr %54, i32 0, i32 0
  %55 = load double, ptr %x55, align 8, !tbaa !51
  %56 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x56 = getelementptr inbounds %struct.rocfft_complex, ptr %56, i32 0, i32 0
  %57 = load double, ptr %x56, align 8, !tbaa !51
  %58 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x57 = getelementptr inbounds %struct.rocfft_complex, ptr %58, i32 0, i32 0
  %59 = load double, ptr %x57, align 8, !tbaa !51
  %add58 = fadd contract double %57, %59
  %mul59 = fmul contract double 5.000000e-01, %add58
  %sub60 = fsub contract double %55, %mul59
  %60 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y61 = getelementptr inbounds %struct.rocfft_complex, ptr %60, i32 0, i32 1
  %61 = load double, ptr %y61, align 8, !tbaa !53
  %62 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y62 = getelementptr inbounds %struct.rocfft_complex, ptr %62, i32 0, i32 1
  %63 = load double, ptr %y62, align 8, !tbaa !53
  %sub63 = fsub contract double %61, %63
  %mul64 = fmul contract double 0x3FEE6F0E134454FF, %sub63
  %add65 = fadd contract double %sub60, %mul64
  %64 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y66 = getelementptr inbounds %struct.rocfft_complex, ptr %64, i32 0, i32 1
  %65 = load double, ptr %y66, align 8, !tbaa !53
  %66 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y67 = getelementptr inbounds %struct.rocfft_complex, ptr %66, i32 0, i32 1
  %67 = load double, ptr %y67, align 8, !tbaa !53
  %sub68 = fsub contract double %65, %67
  %mul69 = fmul contract double 0x3FE2CF2304755A5E, %sub68
  %sub70 = fsub contract double %add65, %mul69
  %68 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x71 = getelementptr inbounds %struct.rocfft_complex, ptr %68, i32 0, i32 0
  %69 = load double, ptr %x71, align 8, !tbaa !51
  %70 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x72 = getelementptr inbounds %struct.rocfft_complex, ptr %70, i32 0, i32 0
  %71 = load double, ptr %x72, align 8, !tbaa !51
  %sub73 = fsub contract double %69, %71
  %72 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x74 = getelementptr inbounds %struct.rocfft_complex, ptr %72, i32 0, i32 0
  %73 = load double, ptr %x74, align 8, !tbaa !51
  %74 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x75 = getelementptr inbounds %struct.rocfft_complex, ptr %74, i32 0, i32 0
  %75 = load double, ptr %x75, align 8, !tbaa !51
  %sub76 = fsub contract double %73, %75
  %add77 = fadd contract double %sub73, %sub76
  %mul78 = fmul contract double 0x3FD3C6EF372FE950, %add77
  %add79 = fadd contract double %sub70, %mul78
  store double %add79, ptr %TR2.ascast, align 8, !tbaa !49
  %76 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x80 = getelementptr inbounds %struct.rocfft_complex, ptr %76, i32 0, i32 0
  %77 = load double, ptr %x80, align 8, !tbaa !51
  %78 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x81 = getelementptr inbounds %struct.rocfft_complex, ptr %78, i32 0, i32 0
  %79 = load double, ptr %x81, align 8, !tbaa !51
  %80 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x82 = getelementptr inbounds %struct.rocfft_complex, ptr %80, i32 0, i32 0
  %81 = load double, ptr %x82, align 8, !tbaa !51
  %add83 = fadd contract double %79, %81
  %mul84 = fmul contract double 5.000000e-01, %add83
  %sub85 = fsub contract double %77, %mul84
  %82 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y86 = getelementptr inbounds %struct.rocfft_complex, ptr %82, i32 0, i32 1
  %83 = load double, ptr %y86, align 8, !tbaa !53
  %84 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y87 = getelementptr inbounds %struct.rocfft_complex, ptr %84, i32 0, i32 1
  %85 = load double, ptr %y87, align 8, !tbaa !53
  %sub88 = fsub contract double %83, %85
  %mul89 = fmul contract double 0x3FEE6F0E134454FF, %sub88
  %sub90 = fsub contract double %sub85, %mul89
  %86 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y91 = getelementptr inbounds %struct.rocfft_complex, ptr %86, i32 0, i32 1
  %87 = load double, ptr %y91, align 8, !tbaa !53
  %88 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y92 = getelementptr inbounds %struct.rocfft_complex, ptr %88, i32 0, i32 1
  %89 = load double, ptr %y92, align 8, !tbaa !53
  %sub93 = fsub contract double %87, %89
  %mul94 = fmul contract double 0x3FE2CF2304755A5E, %sub93
  %add95 = fadd contract double %sub90, %mul94
  %90 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x96 = getelementptr inbounds %struct.rocfft_complex, ptr %90, i32 0, i32 0
  %91 = load double, ptr %x96, align 8, !tbaa !51
  %92 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x97 = getelementptr inbounds %struct.rocfft_complex, ptr %92, i32 0, i32 0
  %93 = load double, ptr %x97, align 8, !tbaa !51
  %sub98 = fsub contract double %91, %93
  %94 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x99 = getelementptr inbounds %struct.rocfft_complex, ptr %94, i32 0, i32 0
  %95 = load double, ptr %x99, align 8, !tbaa !51
  %96 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x100 = getelementptr inbounds %struct.rocfft_complex, ptr %96, i32 0, i32 0
  %97 = load double, ptr %x100, align 8, !tbaa !51
  %sub101 = fsub contract double %95, %97
  %add102 = fadd contract double %sub98, %sub101
  %mul103 = fmul contract double 0x3FD3C6EF372FE950, %add102
  %add104 = fadd contract double %add95, %mul103
  store double %add104, ptr %TR3.ascast, align 8, !tbaa !49
  %98 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y105 = getelementptr inbounds %struct.rocfft_complex, ptr %98, i32 0, i32 1
  %99 = load double, ptr %y105, align 8, !tbaa !53
  %100 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y106 = getelementptr inbounds %struct.rocfft_complex, ptr %100, i32 0, i32 1
  %101 = load double, ptr %y106, align 8, !tbaa !53
  %add107 = fadd contract double %99, %101
  %102 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y108 = getelementptr inbounds %struct.rocfft_complex, ptr %102, i32 0, i32 1
  %103 = load double, ptr %y108, align 8, !tbaa !53
  %add109 = fadd contract double %add107, %103
  %104 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y110 = getelementptr inbounds %struct.rocfft_complex, ptr %104, i32 0, i32 1
  %105 = load double, ptr %y110, align 8, !tbaa !53
  %add111 = fadd contract double %add109, %105
  %106 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y112 = getelementptr inbounds %struct.rocfft_complex, ptr %106, i32 0, i32 1
  %107 = load double, ptr %y112, align 8, !tbaa !53
  %add113 = fadd contract double %add111, %107
  store double %add113, ptr %TI0.ascast, align 8, !tbaa !49
  %108 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y114 = getelementptr inbounds %struct.rocfft_complex, ptr %108, i32 0, i32 1
  %109 = load double, ptr %y114, align 8, !tbaa !53
  %110 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y115 = getelementptr inbounds %struct.rocfft_complex, ptr %110, i32 0, i32 1
  %111 = load double, ptr %y115, align 8, !tbaa !53
  %112 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y116 = getelementptr inbounds %struct.rocfft_complex, ptr %112, i32 0, i32 1
  %113 = load double, ptr %y116, align 8, !tbaa !53
  %add117 = fadd contract double %111, %113
  %mul118 = fmul contract double 5.000000e-01, %add117
  %sub119 = fsub contract double %109, %mul118
  %114 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x120 = getelementptr inbounds %struct.rocfft_complex, ptr %114, i32 0, i32 0
  %115 = load double, ptr %x120, align 8, !tbaa !51
  %116 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x121 = getelementptr inbounds %struct.rocfft_complex, ptr %116, i32 0, i32 0
  %117 = load double, ptr %x121, align 8, !tbaa !51
  %sub122 = fsub contract double %115, %117
  %mul123 = fmul contract double 0x3FEE6F0E134454FF, %sub122
  %add124 = fadd contract double %sub119, %mul123
  %118 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x125 = getelementptr inbounds %struct.rocfft_complex, ptr %118, i32 0, i32 0
  %119 = load double, ptr %x125, align 8, !tbaa !51
  %120 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x126 = getelementptr inbounds %struct.rocfft_complex, ptr %120, i32 0, i32 0
  %121 = load double, ptr %x126, align 8, !tbaa !51
  %sub127 = fsub contract double %119, %121
  %mul128 = fmul contract double 0x3FE2CF2304755A5E, %sub127
  %add129 = fadd contract double %add124, %mul128
  %122 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y130 = getelementptr inbounds %struct.rocfft_complex, ptr %122, i32 0, i32 1
  %123 = load double, ptr %y130, align 8, !tbaa !53
  %124 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y131 = getelementptr inbounds %struct.rocfft_complex, ptr %124, i32 0, i32 1
  %125 = load double, ptr %y131, align 8, !tbaa !53
  %sub132 = fsub contract double %123, %125
  %126 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y133 = getelementptr inbounds %struct.rocfft_complex, ptr %126, i32 0, i32 1
  %127 = load double, ptr %y133, align 8, !tbaa !53
  %128 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y134 = getelementptr inbounds %struct.rocfft_complex, ptr %128, i32 0, i32 1
  %129 = load double, ptr %y134, align 8, !tbaa !53
  %sub135 = fsub contract double %127, %129
  %add136 = fadd contract double %sub132, %sub135
  %mul137 = fmul contract double 0x3FD3C6EF372FE950, %add136
  %add138 = fadd contract double %add129, %mul137
  store double %add138, ptr %TI1.ascast, align 8, !tbaa !49
  %130 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y139 = getelementptr inbounds %struct.rocfft_complex, ptr %130, i32 0, i32 1
  %131 = load double, ptr %y139, align 8, !tbaa !53
  %132 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y140 = getelementptr inbounds %struct.rocfft_complex, ptr %132, i32 0, i32 1
  %133 = load double, ptr %y140, align 8, !tbaa !53
  %134 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y141 = getelementptr inbounds %struct.rocfft_complex, ptr %134, i32 0, i32 1
  %135 = load double, ptr %y141, align 8, !tbaa !53
  %add142 = fadd contract double %133, %135
  %mul143 = fmul contract double 5.000000e-01, %add142
  %sub144 = fsub contract double %131, %mul143
  %136 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x145 = getelementptr inbounds %struct.rocfft_complex, ptr %136, i32 0, i32 0
  %137 = load double, ptr %x145, align 8, !tbaa !51
  %138 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x146 = getelementptr inbounds %struct.rocfft_complex, ptr %138, i32 0, i32 0
  %139 = load double, ptr %x146, align 8, !tbaa !51
  %sub147 = fsub contract double %137, %139
  %mul148 = fmul contract double 0x3FEE6F0E134454FF, %sub147
  %sub149 = fsub contract double %sub144, %mul148
  %140 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x150 = getelementptr inbounds %struct.rocfft_complex, ptr %140, i32 0, i32 0
  %141 = load double, ptr %x150, align 8, !tbaa !51
  %142 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x151 = getelementptr inbounds %struct.rocfft_complex, ptr %142, i32 0, i32 0
  %143 = load double, ptr %x151, align 8, !tbaa !51
  %sub152 = fsub contract double %141, %143
  %mul153 = fmul contract double 0x3FE2CF2304755A5E, %sub152
  %sub154 = fsub contract double %sub149, %mul153
  %144 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y155 = getelementptr inbounds %struct.rocfft_complex, ptr %144, i32 0, i32 1
  %145 = load double, ptr %y155, align 8, !tbaa !53
  %146 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y156 = getelementptr inbounds %struct.rocfft_complex, ptr %146, i32 0, i32 1
  %147 = load double, ptr %y156, align 8, !tbaa !53
  %sub157 = fsub contract double %145, %147
  %148 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y158 = getelementptr inbounds %struct.rocfft_complex, ptr %148, i32 0, i32 1
  %149 = load double, ptr %y158, align 8, !tbaa !53
  %150 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y159 = getelementptr inbounds %struct.rocfft_complex, ptr %150, i32 0, i32 1
  %151 = load double, ptr %y159, align 8, !tbaa !53
  %sub160 = fsub contract double %149, %151
  %add161 = fadd contract double %sub157, %sub160
  %mul162 = fmul contract double 0x3FD3C6EF372FE950, %add161
  %add163 = fadd contract double %sub154, %mul162
  store double %add163, ptr %TI4.ascast, align 8, !tbaa !49
  %152 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y164 = getelementptr inbounds %struct.rocfft_complex, ptr %152, i32 0, i32 1
  %153 = load double, ptr %y164, align 8, !tbaa !53
  %154 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y165 = getelementptr inbounds %struct.rocfft_complex, ptr %154, i32 0, i32 1
  %155 = load double, ptr %y165, align 8, !tbaa !53
  %156 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y166 = getelementptr inbounds %struct.rocfft_complex, ptr %156, i32 0, i32 1
  %157 = load double, ptr %y166, align 8, !tbaa !53
  %add167 = fadd contract double %155, %157
  %mul168 = fmul contract double 5.000000e-01, %add167
  %sub169 = fsub contract double %153, %mul168
  %158 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x170 = getelementptr inbounds %struct.rocfft_complex, ptr %158, i32 0, i32 0
  %159 = load double, ptr %x170, align 8, !tbaa !51
  %160 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x171 = getelementptr inbounds %struct.rocfft_complex, ptr %160, i32 0, i32 0
  %161 = load double, ptr %x171, align 8, !tbaa !51
  %sub172 = fsub contract double %159, %161
  %mul173 = fmul contract double 0x3FEE6F0E134454FF, %sub172
  %sub174 = fsub contract double %sub169, %mul173
  %162 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x175 = getelementptr inbounds %struct.rocfft_complex, ptr %162, i32 0, i32 0
  %163 = load double, ptr %x175, align 8, !tbaa !51
  %164 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x176 = getelementptr inbounds %struct.rocfft_complex, ptr %164, i32 0, i32 0
  %165 = load double, ptr %x176, align 8, !tbaa !51
  %sub177 = fsub contract double %163, %165
  %mul178 = fmul contract double 0x3FE2CF2304755A5E, %sub177
  %add179 = fadd contract double %sub174, %mul178
  %166 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y180 = getelementptr inbounds %struct.rocfft_complex, ptr %166, i32 0, i32 1
  %167 = load double, ptr %y180, align 8, !tbaa !53
  %168 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y181 = getelementptr inbounds %struct.rocfft_complex, ptr %168, i32 0, i32 1
  %169 = load double, ptr %y181, align 8, !tbaa !53
  %sub182 = fsub contract double %167, %169
  %170 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y183 = getelementptr inbounds %struct.rocfft_complex, ptr %170, i32 0, i32 1
  %171 = load double, ptr %y183, align 8, !tbaa !53
  %172 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y184 = getelementptr inbounds %struct.rocfft_complex, ptr %172, i32 0, i32 1
  %173 = load double, ptr %y184, align 8, !tbaa !53
  %sub185 = fsub contract double %171, %173
  %add186 = fadd contract double %sub182, %sub185
  %mul187 = fmul contract double 0x3FD3C6EF372FE950, %add186
  %add188 = fadd contract double %add179, %mul187
  store double %add188, ptr %TI2.ascast, align 8, !tbaa !49
  %174 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y189 = getelementptr inbounds %struct.rocfft_complex, ptr %174, i32 0, i32 1
  %175 = load double, ptr %y189, align 8, !tbaa !53
  %176 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y190 = getelementptr inbounds %struct.rocfft_complex, ptr %176, i32 0, i32 1
  %177 = load double, ptr %y190, align 8, !tbaa !53
  %178 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y191 = getelementptr inbounds %struct.rocfft_complex, ptr %178, i32 0, i32 1
  %179 = load double, ptr %y191, align 8, !tbaa !53
  %add192 = fadd contract double %177, %179
  %mul193 = fmul contract double 5.000000e-01, %add192
  %sub194 = fsub contract double %175, %mul193
  %180 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x195 = getelementptr inbounds %struct.rocfft_complex, ptr %180, i32 0, i32 0
  %181 = load double, ptr %x195, align 8, !tbaa !51
  %182 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x196 = getelementptr inbounds %struct.rocfft_complex, ptr %182, i32 0, i32 0
  %183 = load double, ptr %x196, align 8, !tbaa !51
  %sub197 = fsub contract double %181, %183
  %mul198 = fmul contract double 0x3FEE6F0E134454FF, %sub197
  %add199 = fadd contract double %sub194, %mul198
  %184 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x200 = getelementptr inbounds %struct.rocfft_complex, ptr %184, i32 0, i32 0
  %185 = load double, ptr %x200, align 8, !tbaa !51
  %186 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x201 = getelementptr inbounds %struct.rocfft_complex, ptr %186, i32 0, i32 0
  %187 = load double, ptr %x201, align 8, !tbaa !51
  %sub202 = fsub contract double %185, %187
  %mul203 = fmul contract double 0x3FE2CF2304755A5E, %sub202
  %sub204 = fsub contract double %add199, %mul203
  %188 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y205 = getelementptr inbounds %struct.rocfft_complex, ptr %188, i32 0, i32 1
  %189 = load double, ptr %y205, align 8, !tbaa !53
  %190 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y206 = getelementptr inbounds %struct.rocfft_complex, ptr %190, i32 0, i32 1
  %191 = load double, ptr %y206, align 8, !tbaa !53
  %sub207 = fsub contract double %189, %191
  %192 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y208 = getelementptr inbounds %struct.rocfft_complex, ptr %192, i32 0, i32 1
  %193 = load double, ptr %y208, align 8, !tbaa !53
  %194 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y209 = getelementptr inbounds %struct.rocfft_complex, ptr %194, i32 0, i32 1
  %195 = load double, ptr %y209, align 8, !tbaa !53
  %sub210 = fsub contract double %193, %195
  %add211 = fadd contract double %sub207, %sub210
  %mul212 = fmul contract double 0x3FD3C6EF372FE950, %add211
  %add213 = fadd contract double %sub204, %mul212
  store double %add213, ptr %TI3.ascast, align 8, !tbaa !49
  %196 = load double, ptr %TR0.ascast, align 8, !tbaa !49
  %197 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %x214 = getelementptr inbounds %struct.rocfft_complex, ptr %197, i32 0, i32 0
  store double %196, ptr %x214, align 8, !tbaa !51
  %198 = load double, ptr %TI0.ascast, align 8, !tbaa !49
  %199 = load ptr, ptr %R0.addr.ascast, align 8, !tbaa !6
  %y215 = getelementptr inbounds %struct.rocfft_complex, ptr %199, i32 0, i32 1
  store double %198, ptr %y215, align 8, !tbaa !53
  %200 = load double, ptr %TR1.ascast, align 8, !tbaa !49
  %201 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %x216 = getelementptr inbounds %struct.rocfft_complex, ptr %201, i32 0, i32 0
  store double %200, ptr %x216, align 8, !tbaa !51
  %202 = load double, ptr %TI1.ascast, align 8, !tbaa !49
  %203 = load ptr, ptr %R1.addr.ascast, align 8, !tbaa !6
  %y217 = getelementptr inbounds %struct.rocfft_complex, ptr %203, i32 0, i32 1
  store double %202, ptr %y217, align 8, !tbaa !53
  %204 = load double, ptr %TR2.ascast, align 8, !tbaa !49
  %205 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %x218 = getelementptr inbounds %struct.rocfft_complex, ptr %205, i32 0, i32 0
  store double %204, ptr %x218, align 8, !tbaa !51
  %206 = load double, ptr %TI2.ascast, align 8, !tbaa !49
  %207 = load ptr, ptr %R2.addr.ascast, align 8, !tbaa !6
  %y219 = getelementptr inbounds %struct.rocfft_complex, ptr %207, i32 0, i32 1
  store double %206, ptr %y219, align 8, !tbaa !53
  %208 = load double, ptr %TR3.ascast, align 8, !tbaa !49
  %209 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %x220 = getelementptr inbounds %struct.rocfft_complex, ptr %209, i32 0, i32 0
  store double %208, ptr %x220, align 8, !tbaa !51
  %210 = load double, ptr %TI3.ascast, align 8, !tbaa !49
  %211 = load ptr, ptr %R3.addr.ascast, align 8, !tbaa !6
  %y221 = getelementptr inbounds %struct.rocfft_complex, ptr %211, i32 0, i32 1
  store double %210, ptr %y221, align 8, !tbaa !53
  %212 = load double, ptr %TR4.ascast, align 8, !tbaa !49
  %213 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %x222 = getelementptr inbounds %struct.rocfft_complex, ptr %213, i32 0, i32 0
  store double %212, ptr %x222, align 8, !tbaa !51
  %214 = load double, ptr %TI4.ascast, align 8, !tbaa !49
  %215 = load ptr, ptr %R4.addr.ascast, align 8, !tbaa !6
  %y223 = getelementptr inbounds %struct.rocfft_complex, ptr %215, i32 0, i32 1
  store double %214, ptr %y223, align 8, !tbaa !53
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
define linkonce_odr hidden void @_Z13__syncthreadsv() #16 comdat {
entry:
  call void @_ZL9__barrieri(i32 noundef 1) #20
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
  call void @_ZN14rocfft_complexIdEC2Edd(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.ascast, double noundef %sub, double noundef %add26) #20
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 8 %ref.tmp.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ref.tmp) #10
  call void @llvm.lifetime.end.p5(i64 4, ptr addrspace(5) %i) #10
  call void @llvm.lifetime.end.p5(i64 8, ptr addrspace(5) %j) #10
  %26 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %26
}

; Function Attrs: convergent inlinehint mustprogress nounwind
define internal void @_ZL9__barrieri(i32 noundef %n) #16 {
entry:
  %n.addr = alloca i32, align 4, addrspace(5)
  %n.addr.ascast = addrspacecast ptr addrspace(5) %n.addr to ptr
  store i32 %n, ptr %n.addr.ascast, align 4, !tbaa !10
  %0 = load i32, ptr %n.addr.ascast, align 4, !tbaa !10
  call void @_ZL20__work_group_barrierj(i32 noundef %0) #20
  ret void
}

; Function Attrs: convergent inlinehint mustprogress nounwind
define internal void @_ZL20__work_group_barrierj(i32 noundef %flags) #16 {
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
declare void @llvm.amdgcn.s.barrier() #17

; Function Attrs: alwaysinline convergent mustprogress nounwind
define linkonce_odr hidden void @_ZN11buffer_loadI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #14 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8, addrspace(5)
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  ret void
}

; Function Attrs: alwaysinline convergent mustprogress nounwind
define linkonce_odr hidden %struct.rocfft_complex @_ZN11buffer_loadI14rocfft_complexIdELi16ELN14CacheOperation4KindE0EE4loadEPKvjjb(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %base_ptr, i32 noundef %voffset, i32 noundef %soffset, i1 noundef zeroext %pred_guard) #14 comdat align 2 {
entry:
  %retval = alloca %struct.rocfft_complex, align 8, addrspace(5)
  %this.addr = alloca ptr, align 8, addrspace(5)
  %base_ptr.addr = alloca ptr, align 8, addrspace(5)
  %voffset.addr = alloca i32, align 4, addrspace(5)
  %soffset.addr = alloca i32, align 4, addrspace(5)
  %pred_guard.addr = alloca i8, align 1, addrspace(5)
  %buffer_rsc = alloca %struct.BufferResource, align 16, addrspace(5)
  %ret = alloca <4 x float>, align 16, addrspace(5)
  %cleanup.dest.slot = alloca i32, align 4, addrspace(5)
  %retval.ascast = addrspacecast ptr addrspace(5) %retval to ptr
  %this.addr.ascast = addrspacecast ptr addrspace(5) %this.addr to ptr
  %base_ptr.addr.ascast = addrspacecast ptr addrspace(5) %base_ptr.addr to ptr
  %voffset.addr.ascast = addrspacecast ptr addrspace(5) %voffset.addr to ptr
  %soffset.addr.ascast = addrspacecast ptr addrspace(5) %soffset.addr to ptr
  %pred_guard.addr.ascast = addrspacecast ptr addrspace(5) %pred_guard.addr to ptr
  %buffer_rsc.ascast = addrspacecast ptr addrspace(5) %buffer_rsc to ptr
  %ret.ascast = addrspacecast ptr addrspace(5) %ret to ptr
  store ptr %this, ptr %this.addr.ascast, align 8, !tbaa !6
  store ptr %base_ptr, ptr %base_ptr.addr.ascast, align 8, !tbaa !6
  store i32 %voffset, ptr %voffset.addr.ascast, align 4, !tbaa !10
  store i32 %soffset, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %frombool = zext i1 %pred_guard to i8
  store i8 %frombool, ptr %pred_guard.addr.ascast, align 1, !tbaa !43
  %this1 = load ptr, ptr %this.addr.ascast, align 8
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %buffer_rsc) #10
  %0 = load ptr, ptr %base_ptr.addr.ascast, align 8, !tbaa !6
  call void @_ZN14BufferResourceC2EPKvj(ptr noundef nonnull align 16 dereferenceable(16) %buffer_rsc.ascast, ptr noundef %0, i32 noundef -2) #20
  %1 = load i8, ptr %pred_guard.addr.ascast, align 1, !tbaa !43, !range !46, !noundef !47
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %voffset.addr.ascast, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %voffset.addr.ascast, align 4, !tbaa !10
  call void @llvm.lifetime.start.p5(i64 16, ptr addrspace(5) %ret) #10
  %call = call noundef <4 x i32> @_ZN14BufferResourcecvDv4_iEv(ptr noundef nonnull align 16 dereferenceable(16) %buffer_rsc.ascast) #20
  %3 = load i32, ptr %voffset.addr.ascast, align 4, !tbaa !10
  %4 = load i32, ptr %soffset.addr.ascast, align 4, !tbaa !10
  %5 = call i32 @llvm.amdgcn.readfirstlane(i32 %4)
  %call2 = call contract noundef <4 x float> @llvm.amdgcn.raw.buffer.load.v4f32(<4 x i32> noundef %call, i32 noundef %3, i32 noundef %5, i32 noundef 0) #20
  store <4 x float> %call2, ptr %ret.ascast, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.ascast, ptr align 16 %ret.ascast, i64 16, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %ret) #10
  call void @llvm.lifetime.end.p5(i64 16, ptr addrspace(5) %buffer_rsc) #10
  %6 = load %struct.rocfft_complex, ptr %retval.ascast, align 8
  ret %struct.rocfft_complex %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.amdgcn.raw.buffer.load.v4f32(<4 x i32>, i32, i32, i32 immarg) #18

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
  %call = call i64 @__ockl_get_local_id(i32 noundef %0) #22
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal range(i64 0, 1024) i64 @__ockl_get_local_id(i32 noundef %0) #19 {
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
  %call = call i64 @__ockl_get_group_id(i32 noundef %0) #22
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal range(i64 0, 4294967296) i64 @__ockl_get_group_id(i32 noundef %0) #19 {
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
attributes #12 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,400" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" "uniform-work-group-size"="true" }
attributes #13 = { convergent mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #14 = { alwaysinline convergent mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #16 = { convergent inlinehint mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #17 = { convergent nocallback nofree nounwind willreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #19 = { convergent mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx908" "target-features"="+16-bit-insts,+ci-insts,+cumode,+dl-insts,+dot1-insts,+dot10-insts,+dot2-insts,+dot3-insts,+dot4-insts,+dot5-insts,+dot6-insts,+dot7-insts,+dpp,+gfx8-insts,+gfx9-insts,+gws,+image-insts,+mai-insts,+s-memrealtime,+s-memtime-inst,+wavefrontsize64" }
attributes #20 = { convergent nounwind }
attributes #21 = { cold convergent nounwind }
attributes #22 = { convergent nounwind willreturn memory(none) }

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
