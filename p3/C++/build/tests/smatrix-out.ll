; ModuleID = 'smatrix-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@size = dso_local local_unnamed_addr global i32 64, align 4
@total = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@RC = dso_local local_unnamed_addr global [1048576 x float] zeroinitializer, align 16
@C = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@RA = dso_local local_unnamed_addr global [1048576 x float] zeroinitializer, align 16
@A = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@RB = dso_local local_unnamed_addr global [1048576 x float] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [38 x i8] c"Matrix Multiplication Kernel (%dx%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Verification total=%g should be 31599.2\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Verification total=%g\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Native Matrix Multiplication\00", align 1
@str.1 = private unnamed_addr constant [8 x i8] c"Phase 2\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"Phase 3\00", align 1
@str.3 = private unnamed_addr constant [23 x i8] c"usage:\0A\09smatrix [size]\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @matmult() local_unnamed_addr #0 {
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %1 = load i32, ptr @size, align 4
  %2 = load i32, ptr @size, align 4
  %icmpEq = icmp eq i32 %1, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = icmp sgt i32 %1, 0
  %4 = select i1 %3, i32 180355605, i32 488636677
  %5 = xor i32 128975893, %4
  br i1 %3, label %.preheader.lr.ph, label %._crit_edge22

.preheader.lr.ph:                                 ; preds = %0
  %cfg_DestPhi = phi i32 [ 128975893, %0 ]
  %6 = phi i32 [ 128975893, %0 ]
  %cfg_DiffPhi = phi i32 [ %5, %0 ]
  %7 = phi i32 [ %5, %0 ]
  %icmpEq57 = icmp eq i32 %cfg_DiffPhi, %7
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq59 = icmp eq i1 %icmpEq55, %8
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180355605
  %10 = icmp eq i32 %9, 180355605
  %icmpEq61 = icmp eq i1 %cfg_icmpEq, %10
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %wide.trip.count29 = zext i32 %1 to i64
  br label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge20, %.preheader.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge20 ]
  %11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge20 ]
  %12 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge20 ]
  %13 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next28, %._crit_edge20 ]
  %cfg_DestPhi31 = phi i32 [ 437256987, %._crit_edge20 ], [ 180355605, %.preheader.lr.ph ]
  %14 = phi i32 [ 437256987, %._crit_edge20 ], [ 180355605, %.preheader.lr.ph ]
  %15 = phi i32 [ 437256987, %._crit_edge20 ], [ 180355605, %.preheader.lr.ph ]
  %16 = phi i32 [ 437256987, %._crit_edge20 ], [ 180355605, %.preheader.lr.ph ]
  %cfg_DiffPhi32 = phi i32 [ %95, %._crit_edge20 ], [ 118490135, %.preheader.lr.ph ]
  %17 = phi i32 [ %95, %._crit_edge20 ], [ 118490135, %.preheader.lr.ph ]
  %18 = phi i32 [ %95, %._crit_edge20 ], [ 118490135, %.preheader.lr.ph ]
  %19 = phi i32 [ %95, %._crit_edge20 ], [ 118490135, %.preheader.lr.ph ]
  %icmpEq87 = icmp eq i32 %18, %19
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %cfg_DiffPhi32, %17
  %20 = icmp eq i32 %17, %17
  %icmpEq89 = icmp eq i1 %icmpEq85, %20
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq83 = icmp eq i32 %15, %16
  %zext84 = zext i1 %icmpEq83 to i32
  %21 = zext i1 %icmpEq83 to i32
  %icmpEq91 = icmp eq i32 %zext84, %21
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  call void @assert_ft(i32 %zext84, i32 35)
  %icmpEq81 = icmp eq i32 %cfg_DestPhi31, %14
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq79 = icmp eq i64 %12, %13
  %22 = icmp eq i64 %13, %13
  %icmpEq93 = icmp eq i1 %icmpEq79, %22
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq77 = icmp eq i64 %indvars.iv27, %11
  %zext78 = zext i1 %icmpEq77 to i32
  %23 = zext i1 %icmpEq77 to i32
  %icmpEq95 = icmp eq i32 %zext78, %23
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DiffPhi32, %18
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %cfg_DestPhi31, %15
  %24 = icmp eq i32 %14, %16
  %icmpEq97 = icmp eq i1 %icmpEq65, %24
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %25 = icmp eq i32 %cfg_DestPhi31, %15
  %icmpEq69 = icmp eq i1 %icmpEq65, %25
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  %26 = zext i1 %24 to i32
  %icmpEq99 = icmp eq i32 %zext66, %26
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq63 = icmp eq i64 %indvars.iv27, %12
  %zext64 = zext i1 %icmpEq63 to i32
  %27 = zext i1 %icmpEq63 to i32
  %28 = zext i1 %icmpEq63 to i32
  %icmpEq101 = icmp eq i32 %27, %28
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %icmpEq71 = icmp eq i32 %zext64, %27
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  call void @assert_ft(i32 %zext64, i32 35)
  %29 = xor i32 %cfg_DestPhi31, %cfg_DiffPhi32
  %30 = xor i32 %14, %17
  %icmpEq103 = icmp eq i32 %29, %30
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %cfg_icmpEq33 = icmp eq i32 %29, 231736834
  %cfg_zext34 = zext i1 %cfg_icmpEq33 to i32
  %31 = zext i1 %cfg_icmpEq33 to i32
  %icmpEq73 = icmp eq i32 %cfg_zext34, %31
  %32 = icmp eq i32 %31, %31
  %icmpEq105 = icmp eq i1 %icmpEq73, %32
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext34, i32 %29, i32 35)
  %33 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv27
  %34 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %11
  %35 = load i32, ptr %33, align 16
  %36 = load i32, ptr %34, align 16
  %icmpEq107 = icmp eq i32 %35, %36
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %37 = sext i32 %35 to i64
  %38 = sext i32 %36 to i64
  %icmpEq75 = icmp eq i64 %37, %38
  %zext76 = zext i1 %icmpEq75 to i32
  %39 = zext i1 %icmpEq75 to i32
  %icmpEq109 = icmp eq i32 %zext76, %39
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  call void @assert_ft(i32 %zext76, i32 35)
  %40 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %37
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph19
  %indvars.iv23 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next24, %._crit_edge ]
  %41 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next24, %._crit_edge ]
  %cfg_DestPhi35 = phi i32 [ 231736834, %.lr.ph19 ], [ 385877007, %._crit_edge ]
  %42 = phi i32 [ 231736834, %.lr.ph19 ], [ 385877007, %._crit_edge ]
  %cfg_DiffPhi36 = phi i32 [ 489687820, %.lr.ph19 ], [ %87, %._crit_edge ]
  %43 = phi i32 [ 489687820, %.lr.ph19 ], [ %87, %._crit_edge ]
  %icmpEq115 = icmp eq i32 %cfg_DiffPhi36, %43
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i32 %cfg_DestPhi35, %42
  %44 = icmp eq i32 %42, %42
  %icmpEq117 = icmp eq i1 %icmpEq113, %44
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i64 %indvars.iv23, %41
  %zext112 = zext i1 %icmpEq111 to i32
  %45 = zext i1 %icmpEq111 to i32
  %icmpEq119 = icmp eq i32 %zext112, %45
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  call void @assert_ft(i32 %zext112, i32 35)
  %46 = xor i32 %cfg_DestPhi35, %cfg_DiffPhi36
  %cfg_icmpEq37 = icmp eq i32 %46, 283118862
  %cfg_zext38 = zext i1 %cfg_icmpEq37 to i32
  %47 = zext i1 %cfg_icmpEq37 to i32
  %icmpEq121 = icmp eq i32 %cfg_zext38, %47
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext38, i32 %46, i32 35)
  store float 0.000000e+00, ptr %40, align 4
  %48 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %48, align 4
  %icmpEq123 = icmp eq i32 %49, %50
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %51
  %53 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv27, i64 %indvars.iv23
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %53, align 4
  %icmpEq125 = icmp eq i32 %54, %55
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %56
  %58 = load float, ptr %57, align 4
  %.promoted = load float, ptr %52, align 4
  %59 = load float, ptr %52, align 4
  br label %60

60:                                               ; preds = %60, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %60 ]
  %61 = phi i64 [ 0, %.lr.ph ], [ %77, %60 ]
  %62 = phi float [ %.promoted, %.lr.ph ], [ %76, %60 ]
  %63 = phi float [ %59, %.lr.ph ], [ %76, %60 ]
  %cfg_DestPhi39 = phi i32 [ 283118862, %.lr.ph ], [ 334498562, %60 ]
  %64 = phi i32 [ 283118862, %.lr.ph ], [ 334498562, %60 ]
  %cfg_DiffPhi40 = phi i32 [ 51381772, %.lr.ph ], [ %79, %60 ]
  %65 = phi i32 [ 51381772, %.lr.ph ], [ %79, %60 ]
  %icmpEq131 = icmp eq i32 %cfg_DiffPhi40, %65
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %icmpEq129 = icmp eq i32 %cfg_DestPhi39, %64
  %66 = icmp eq i32 %64, %64
  %icmpEq133 = icmp eq i1 %icmpEq129, %66
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %icmpEq127 = icmp eq i64 %indvars.iv, %61
  %zext128 = zext i1 %icmpEq127 to i32
  %67 = zext i1 %icmpEq127 to i32
  %icmpEq135 = icmp eq i32 %zext128, %67
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  call void @assert_ft(i32 %zext128, i32 35)
  %68 = xor i32 %cfg_DestPhi39, %cfg_DiffPhi40
  %cfg_icmpEq41 = icmp eq i32 %68, 334498562
  %cfg_zext42 = zext i1 %cfg_icmpEq41 to i32
  %69 = zext i1 %cfg_icmpEq41 to i32
  %icmpEq137 = icmp eq i32 %cfg_zext42, %69
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext42, i32 %68, i32 35)
  %70 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %71 = load i32, ptr %70, align 4
  %72 = sext i32 %71 to i64
  %73 = sext i32 %71 to i64
  %icmpEq139 = icmp eq i64 %72, %73
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %74 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %72
  %75 = load float, ptr %74, align 4
  %76 = tail call float @llvm.fmuladd.f32(float %58, float %75, float %62)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %77 = add nuw nsw i64 %61, 1
  %icmpEq141 = icmp eq i64 %indvars.iv.next, %77
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  %78 = select i1 %exitcond.not, i32 385877007, i32 334498562
  %79 = xor i32 334498562, %78
  br i1 %exitcond.not, label %._crit_edge, label %60

._crit_edge:                                      ; preds = %60
  %cfg_DestPhi43 = phi i32 [ 334498562, %60 ]
  %80 = phi i32 [ 334498562, %60 ]
  %cfg_DiffPhi44 = phi i32 [ %79, %60 ]
  %81 = phi i32 [ %79, %60 ]
  %icmpEq145 = icmp eq i32 %cfg_DiffPhi44, %81
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %cfg_DestPhi43, %80
  %82 = icmp eq i32 %80, %80
  %icmpEq147 = icmp eq i1 %icmpEq143, %82
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %83 = xor i32 %cfg_DestPhi43, %cfg_DiffPhi44
  %cfg_icmpEq45 = icmp eq i32 %83, 385877007
  %84 = icmp eq i32 %83, 385877007
  %icmpEq149 = icmp eq i1 %cfg_icmpEq45, %84
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %cfg_zext46 = zext i1 %cfg_icmpEq45 to i32
  call void @assert_cfg_ft(i32 %cfg_zext46, i32 %83, i32 35)
  store float %76, ptr %52, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %85 = add nuw nsw i64 %41, 1
  %icmpEq151 = icmp eq i64 %indvars.iv.next24, %85
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count29
  %86 = select i1 %exitcond26.not, i32 437256987, i32 283118862
  %87 = xor i32 385877007, %86
  br i1 %exitcond26.not, label %._crit_edge20, label %.lr.ph

._crit_edge20:                                    ; preds = %._crit_edge
  %cfg_DestPhi47 = phi i32 [ 385877007, %._crit_edge ]
  %88 = phi i32 [ 385877007, %._crit_edge ]
  %cfg_DiffPhi48 = phi i32 [ %87, %._crit_edge ]
  %89 = phi i32 [ %87, %._crit_edge ]
  %icmpEq155 = icmp eq i32 %cfg_DiffPhi48, %89
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %icmpEq153 = icmp eq i32 %cfg_DestPhi47, %88
  %90 = icmp eq i32 %88, %88
  %icmpEq157 = icmp eq i1 %icmpEq153, %90
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %91 = xor i32 %cfg_DestPhi47, %cfg_DiffPhi48
  %cfg_icmpEq49 = icmp eq i32 %91, 437256987
  %92 = icmp eq i32 %91, 437256987
  %icmpEq159 = icmp eq i1 %cfg_icmpEq49, %92
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %cfg_zext50 = zext i1 %cfg_icmpEq49 to i32
  call void @assert_cfg_ft(i32 %cfg_zext50, i32 %91, i32 35)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count29
  %93 = icmp eq i64 %indvars.iv.next28, %wide.trip.count29
  %icmpEq161 = icmp eq i1 %exitcond30.not, %93
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %94 = select i1 %exitcond30.not, i32 488636677, i32 231736834
  %95 = xor i32 437256987, %94
  br i1 %exitcond30.not, label %._crit_edge22, label %.lr.ph19

._crit_edge22:                                    ; preds = %._crit_edge20, %0
  %cfg_DestPhi51 = phi i32 [ 437256987, %._crit_edge20 ], [ 128975893, %0 ]
  %96 = phi i32 [ 437256987, %._crit_edge20 ], [ 128975893, %0 ]
  %cfg_DiffPhi52 = phi i32 [ %95, %._crit_edge20 ], [ %5, %0 ]
  %97 = phi i32 [ %95, %._crit_edge20 ], [ %5, %0 ]
  %icmpEq165 = icmp eq i32 %cfg_DiffPhi52, %97
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %icmpEq163 = icmp eq i32 %cfg_DestPhi51, %96
  %98 = icmp eq i32 %96, %96
  %icmpEq167 = icmp eq i1 %icmpEq163, %98
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %99 = xor i32 %cfg_DestPhi51, %cfg_DiffPhi52
  %cfg_icmpEq53 = icmp eq i32 %99, 488636677
  %100 = icmp eq i32 %99, 488636677
  %icmpEq169 = icmp eq i1 %cfg_icmpEq53, %100
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %cfg_zext54 = zext i1 %cfg_icmpEq53 to i32
  call void @assert_cfg_ft(i32 %cfg_zext54, i32 %99, i32 35)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %0, 2
  %4 = icmp sgt i32 %0, 2
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180355853, i32 231735821
  %6 = xor i32 128975389, %5
  br i1 %3, label %7, label %13

7:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %8 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %6, %2 ]
  %9 = phi i32 [ %6, %2 ]
  %icmpEq186 = icmp eq i32 %cfg_DiffPhi, %9
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %icmpEq184 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq188 = icmp eq i1 %icmpEq184, %10
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180355853
  %12 = icmp eq i32 %11, 180355853
  %icmpEq190 = icmp eq i1 %cfg_icmpEq, %12
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %puts51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  tail call void @exit(i32 noundef 0) #7
  unreachable

13:                                               ; preds = %2
  %cfg_DestPhi92 = phi i32 [ 128975389, %2 ]
  %14 = phi i32 [ 128975389, %2 ]
  %15 = phi i32 [ 128975389, %2 ]
  %16 = phi i32 [ 128975389, %2 ]
  %17 = phi i32 [ 128975389, %2 ]
  %18 = phi i32 [ 128975389, %2 ]
  %19 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi93 = phi i32 [ %6, %2 ]
  %20 = phi i32 [ %6, %2 ]
  %21 = phi i32 [ %6, %2 ]
  %22 = phi i32 [ %6, %2 ]
  %23 = phi i32 [ %6, %2 ]
  %24 = phi i32 [ %6, %2 ]
  %25 = phi i32 [ %6, %2 ]
  %26 = phi i32 [ %6, %2 ]
  %icmpEq240 = icmp eq i32 %25, %26
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %icmpEq238 = icmp eq i32 %23, %24
  %27 = icmp eq i32 %24, %24
  %icmpEq242 = icmp eq i1 %icmpEq238, %27
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %icmpEq236 = icmp eq i32 %21, %22
  %zext237 = zext i1 %icmpEq236 to i32
  %28 = zext i1 %icmpEq236 to i32
  %icmpEq244 = icmp eq i32 %zext237, %28
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  call void @assert_ft(i32 %zext237, i32 35)
  %icmpEq234 = icmp eq i32 %cfg_DiffPhi93, %20
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq232 = icmp eq i32 %18, %19
  %29 = icmp eq i32 %19, %19
  %icmpEq246 = icmp eq i1 %icmpEq232, %29
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq230 = icmp eq i32 %16, %17
  %zext231 = zext i1 %icmpEq230 to i32
  %30 = zext i1 %icmpEq230 to i32
  %icmpEq248 = icmp eq i32 %zext231, %30
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  call void @assert_ft(i32 %zext231, i32 35)
  %icmpEq228 = icmp eq i32 %14, %15
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq208 = icmp eq i32 %23, %25
  %31 = icmp eq i32 %24, %26
  %icmpEq250 = icmp eq i1 %icmpEq208, %31
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %cfg_DiffPhi93, %21
  %32 = icmp eq i32 %20, %22
  %33 = icmp eq i32 %20, %22
  %icmpEq252 = icmp eq i1 %32, %33
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq210 = icmp eq i1 %icmpEq206, %32
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %zext207 = zext i1 %icmpEq206 to i32
  %34 = zext i1 %32 to i32
  %icmpEq254 = icmp eq i32 %zext207, %34
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq204 = icmp eq i32 %16, %18
  %zext205 = zext i1 %icmpEq204 to i32
  %35 = zext i1 %icmpEq204 to i32
  %36 = zext i1 %icmpEq204 to i32
  %icmpEq256 = icmp eq i32 %35, %36
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq212 = icmp eq i32 %zext205, %35
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  call void @assert_ft(i32 %zext205, i32 35)
  %icmpEq202 = icmp eq i32 %cfg_DestPhi92, %14
  %37 = icmp eq i32 %14, %15
  %icmpEq258 = icmp eq i1 %icmpEq202, %37
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %icmpEq194 = icmp eq i32 %cfg_DiffPhi93, %23
  %38 = icmp eq i32 %20, %24
  %39 = icmp eq i32 %20, %24
  %icmpEq260 = icmp eq i1 %38, %39
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq214 = icmp eq i1 %icmpEq194, %38
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %zext195 = zext i1 %icmpEq194 to i32
  %40 = zext i1 %38 to i32
  %icmpEq262 = icmp eq i32 %zext195, %40
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  call void @assert_ft(i32 %zext195, i32 35)
  %icmpEq192 = icmp eq i32 %cfg_DestPhi92, %16
  %41 = icmp eq i32 %14, %17
  %42 = icmp eq i32 %14, %17
  %43 = icmp eq i32 %14, %17
  %icmpEq264 = icmp eq i1 %42, %43
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq216 = icmp eq i1 %41, %42
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %icmpEq196 = icmp eq i1 %icmpEq192, %41
  %44 = icmp eq i1 %41, %42
  %icmpEq266 = icmp eq i1 %icmpEq196, %44
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %zext193 = zext i1 %icmpEq192 to i32
  %45 = zext i1 %41 to i32
  %46 = zext i1 %41 to i32
  %icmpEq268 = icmp eq i32 %45, %46
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq218 = icmp eq i32 %zext193, %45
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  call void @assert_ft(i32 %zext193, i32 35)
  %47 = xor i32 %cfg_DestPhi92, %cfg_DiffPhi93
  %48 = xor i32 %14, %20
  %icmpEq270 = icmp eq i32 %47, %48
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %cfg_icmpEq94 = icmp eq i32 %47, 231735821
  %49 = icmp eq i32 %48, 231735821
  %50 = icmp eq i32 %48, 231735821
  %icmpEq220 = icmp eq i1 %49, %50
  %51 = icmp eq i1 %50, %50
  %icmpEq272 = icmp eq i1 %icmpEq220, %51
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq198 = icmp eq i1 %cfg_icmpEq94, %49
  %zext199 = zext i1 %icmpEq198 to i32
  %52 = zext i1 %icmpEq198 to i32
  %icmpEq274 = icmp eq i32 %zext199, %52
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  call void @assert_ft(i32 %zext199, i32 35)
  %cfg_zext95 = zext i1 %cfg_icmpEq94 to i32
  %53 = zext i1 %49 to i32
  %icmpEq222 = icmp eq i32 %cfg_zext95, %53
  %54 = icmp eq i32 %53, %53
  %icmpEq276 = icmp eq i1 %icmpEq222, %54
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext95, i32 %47, i32 35)
  %55 = icmp eq i32 %0, 2
  %56 = icmp eq i32 %0, 2
  %icmpEq278 = icmp eq i1 %55, %56
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %57 = select i1 %55, i32 334497817, i32 283116037
  %58 = select i1 %56, i32 334497817, i32 283116037
  %59 = select i1 %56, i32 334497817, i32 283116037
  %icmpEq224 = icmp eq i32 %58, %59
  %60 = icmp eq i32 %59, %59
  %icmpEq280 = icmp eq i1 %icmpEq224, %60
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq200 = icmp eq i32 %57, %58
  %zext201 = zext i1 %icmpEq200 to i32
  %61 = zext i1 %icmpEq200 to i32
  %icmpEq282 = icmp eq i32 %zext201, %61
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  call void @assert_ft(i32 %zext201, i32 35)
  %62 = xor i32 231735821, %57
  %63 = xor i32 231735821, %58
  %icmpEq226 = icmp eq i32 %62, %63
  %64 = icmp eq i32 %63, %63
  %icmpEq284 = icmp eq i1 %icmpEq226, %64
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  br i1 %55, label %70, label %._crit_edge91

._crit_edge91:                                    ; preds = %13
  %cfg_DestPhi96 = phi i32 [ 231735821, %13 ]
  %65 = phi i32 [ 231735821, %13 ]
  %cfg_DiffPhi97 = phi i32 [ %62, %13 ]
  %66 = phi i32 [ %63, %13 ]
  %icmpEq288 = icmp eq i32 %cfg_DiffPhi97, %66
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %cfg_DestPhi96, %65
  %67 = icmp eq i32 %65, %65
  %icmpEq290 = icmp eq i1 %icmpEq286, %67
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %68 = xor i32 %cfg_DestPhi96, %cfg_DiffPhi97
  %cfg_icmpEq98 = icmp eq i32 %68, 283116037
  %69 = icmp eq i32 %68, 283116037
  %icmpEq292 = icmp eq i1 %cfg_icmpEq98, %69
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %cfg_zext99 = zext i1 %cfg_icmpEq98 to i32
  call void @assert_cfg_ft(i32 %cfg_zext99, i32 %68, i32 35)
  %.pre = load i32, ptr @size, align 4
  br label %82

70:                                               ; preds = %13
  %cfg_DestPhi100 = phi i32 [ 231735821, %13 ]
  %71 = phi i32 [ 231735821, %13 ]
  %cfg_DiffPhi101 = phi i32 [ %62, %13 ]
  %72 = phi i32 [ %63, %13 ]
  %icmpEq296 = icmp eq i32 %cfg_DiffPhi101, %72
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %icmpEq294 = icmp eq i32 %cfg_DestPhi100, %71
  %73 = icmp eq i32 %71, %71
  %icmpEq298 = icmp eq i1 %icmpEq294, %73
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %74 = xor i32 %cfg_DestPhi100, %cfg_DiffPhi101
  %cfg_icmpEq102 = icmp eq i32 %74, 334497817
  %75 = icmp eq i32 %74, 334497817
  %icmpEq300 = icmp eq i1 %cfg_icmpEq102, %75
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %cfg_zext103 = zext i1 %cfg_icmpEq102 to i32
  call void @assert_cfg_ft(i32 %cfg_zext103, i32 %74, i32 35)
  %76 = getelementptr inbounds ptr, ptr %1, i64 1
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %76, align 8
  %79 = tail call i32 @atoi(ptr nocapture noundef %77) #8
  %80 = add i32 %79, -1025
  %81 = add i32 %79, -1025
  %icmpEq302 = icmp eq i32 %80, %81
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %or.cond = icmp ult i32 %80, -1023
  %spec.store.select = select i1 %or.cond, i32 1024, i32 %79
  store i32 %spec.store.select, ptr @size, align 4
  br label %82

82:                                               ; preds = %70, %._crit_edge91
  %83 = phi i32 [ %.pre, %._crit_edge91 ], [ %spec.store.select, %70 ]
  %84 = phi i32 [ %.pre, %._crit_edge91 ], [ %spec.store.select, %70 ]
  %cfg_DestPhi104 = phi i32 [ 283116037, %._crit_edge91 ], [ 334497817, %70 ]
  %85 = phi i32 [ 283116037, %._crit_edge91 ], [ 334497817, %70 ]
  %cfg_DiffPhi105 = phi i32 [ 132122393, %._crit_edge91 ], [ 82840837, %70 ]
  %86 = phi i32 [ 132122393, %._crit_edge91 ], [ 82840837, %70 ]
  %icmpEq308 = icmp eq i32 %cfg_DiffPhi105, %86
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %icmpEq306 = icmp eq i32 %cfg_DestPhi104, %85
  %87 = icmp eq i32 %85, %85
  %icmpEq310 = icmp eq i1 %icmpEq306, %87
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %icmpEq304 = icmp eq i32 %83, %84
  %zext305 = zext i1 %icmpEq304 to i32
  %88 = zext i1 %icmpEq304 to i32
  %icmpEq312 = icmp eq i32 %zext305, %88
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  call void @assert_ft(i32 %zext305, i32 35)
  %89 = xor i32 %cfg_DestPhi104, %cfg_DiffPhi105
  %cfg_icmpEq106 = icmp eq i32 %89, 385877276
  %cfg_zext107 = zext i1 %cfg_icmpEq106 to i32
  %90 = zext i1 %cfg_icmpEq106 to i32
  %icmpEq314 = icmp eq i32 %cfg_zext107, %90
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext107, i32 %89, i32 35)
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %83, i32 noundef %83)
  %92 = load i32, ptr @size, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = icmp sgt i32 %92, 0
  %icmpEq316 = icmp eq i1 %93, %94
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %95 = select i1 %93, i32 437256722, i32 899679767
  %96 = xor i32 385877276, %95
  br i1 %93, label %.preheader54.lr.ph, label %._crit_edge62

.preheader54.lr.ph:                               ; preds = %82
  %cfg_DestPhi108 = phi i32 [ 385877276, %82 ]
  %97 = phi i32 [ 385877276, %82 ]
  %cfg_DiffPhi109 = phi i32 [ %96, %82 ]
  %98 = phi i32 [ %96, %82 ]
  %icmpEq320 = icmp eq i32 %cfg_DiffPhi109, %98
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq318 = icmp eq i32 %cfg_DestPhi108, %97
  %99 = icmp eq i32 %97, %97
  %icmpEq322 = icmp eq i1 %icmpEq318, %99
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %100 = xor i32 %cfg_DestPhi108, %cfg_DiffPhi109
  %cfg_icmpEq110 = icmp eq i32 %100, 437256722
  %101 = icmp eq i32 %100, 437256722
  %icmpEq324 = icmp eq i1 %cfg_icmpEq110, %101
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  %cfg_zext111 = zext i1 %cfg_icmpEq110 to i32
  call void @assert_cfg_ft(i32 %cfg_zext111, i32 %100, i32 35)
  %wide.trip.count77 = zext i32 %92 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.preheader54.lr.ph
  %indvars.iv75 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %102 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %103 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %104 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %105 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %106 = phi i64 [ 0, %.preheader54.lr.ph ], [ %indvars.iv.next76, %._crit_edge ]
  %cfg_DestPhi112 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %107 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %108 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %109 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %110 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %111 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %112 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %113 = phi i32 [ 694158084, %._crit_edge ], [ 437256722, %.preheader54.lr.ph ]
  %cfg_DiffPhi113 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %114 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %115 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %116 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %117 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %118 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %119 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %120 = phi i32 [ %227, %._crit_edge ], [ 120588043, %.preheader54.lr.ph ]
  %icmpEq392 = icmp eq i32 %119, %120
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  %icmpEq390 = icmp eq i32 %117, %118
  %121 = icmp eq i32 %118, %118
  %icmpEq394 = icmp eq i1 %icmpEq390, %121
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %icmpEq388 = icmp eq i32 %115, %116
  %zext389 = zext i1 %icmpEq388 to i32
  %122 = zext i1 %icmpEq388 to i32
  %icmpEq396 = icmp eq i32 %zext389, %122
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  call void @assert_ft(i32 %zext389, i32 35)
  %icmpEq386 = icmp eq i32 %cfg_DiffPhi113, %114
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  %icmpEq384 = icmp eq i32 %112, %113
  %123 = icmp eq i32 %113, %113
  %icmpEq398 = icmp eq i1 %icmpEq384, %123
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %icmpEq382 = icmp eq i32 %110, %111
  %zext383 = zext i1 %icmpEq382 to i32
  %124 = zext i1 %icmpEq382 to i32
  %icmpEq400 = icmp eq i32 %zext383, %124
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  call void @assert_ft(i32 %zext383, i32 35)
  %icmpEq380 = icmp eq i32 %108, %109
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %icmpEq378 = icmp eq i32 %cfg_DestPhi112, %107
  %125 = icmp eq i32 %107, %107
  %icmpEq402 = icmp eq i1 %icmpEq378, %125
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %icmpEq376 = icmp eq i64 %105, %106
  %zext377 = zext i1 %icmpEq376 to i32
  %126 = zext i1 %icmpEq376 to i32
  %icmpEq404 = icmp eq i32 %zext377, %126
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  call void @assert_ft(i32 %zext377, i32 35)
  %icmpEq374 = icmp eq i64 %103, %104
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %icmpEq372 = icmp eq i64 %indvars.iv75, %102
  %127 = icmp eq i64 %102, %102
  %icmpEq406 = icmp eq i1 %icmpEq372, %127
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  %icmpEq348 = icmp eq i32 %117, %119
  %zext349 = zext i1 %icmpEq348 to i32
  %128 = zext i1 %icmpEq348 to i32
  %icmpEq408 = icmp eq i32 %zext349, %128
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  call void @assert_ft(i32 %zext349, i32 35)
  %icmpEq346 = icmp eq i32 %cfg_DiffPhi113, %115
  %129 = icmp eq i32 %114, %116
  %icmpEq350 = icmp eq i1 %icmpEq346, %129
  %130 = icmp eq i1 %129, %129
  %icmpEq410 = icmp eq i1 %icmpEq350, %130
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  %icmpEq344 = icmp eq i32 %110, %112
  %131 = icmp eq i32 %111, %113
  %icmpEq412 = icmp eq i1 %icmpEq344, %131
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  %zext345 = zext i1 %icmpEq344 to i32
  %132 = zext i1 %131 to i32
  %icmpEq352 = icmp eq i32 %zext345, %132
  %zext353 = zext i1 %icmpEq352 to i32
  %133 = zext i1 %icmpEq352 to i32
  %icmpEq414 = icmp eq i32 %zext353, %133
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  call void @assert_ft(i32 %zext353, i32 35)
  call void @assert_ft(i32 %zext345, i32 35)
  %icmpEq342 = icmp eq i32 %cfg_DestPhi112, %108
  %zext343 = zext i1 %icmpEq342 to i32
  %134 = zext i1 %icmpEq342 to i32
  %icmpEq416 = icmp eq i32 %zext343, %134
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  call void @assert_ft(i32 %zext343, i32 35)
  %icmpEq340 = icmp eq i64 %103, %105
  %135 = icmp eq i64 %104, %106
  %icmpEq354 = icmp eq i1 %icmpEq340, %135
  %136 = icmp eq i1 %135, %135
  %icmpEq418 = icmp eq i1 %icmpEq354, %136
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  %icmpEq330 = icmp eq i32 %cfg_DiffPhi113, %117
  %137 = icmp eq i32 %114, %118
  %icmpEq420 = icmp eq i1 %icmpEq330, %137
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  %zext331 = zext i1 %icmpEq330 to i32
  %138 = zext i1 %137 to i32
  %icmpEq356 = icmp eq i32 %zext331, %138
  %zext357 = zext i1 %icmpEq356 to i32
  %139 = zext i1 %icmpEq356 to i32
  %icmpEq422 = icmp eq i32 %zext357, %139
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  call void @assert_ft(i32 %zext357, i32 35)
  call void @assert_ft(i32 %zext331, i32 35)
  %icmpEq328 = icmp eq i32 %cfg_DestPhi112, %110
  %140 = icmp eq i32 %107, %111
  %141 = icmp eq i32 %107, %111
  %icmpEq424 = icmp eq i1 %140, %141
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  %icmpEq332 = icmp eq i1 %icmpEq328, %140
  %142 = icmp eq i1 %140, %141
  %icmpEq358 = icmp eq i1 %icmpEq332, %142
  %zext359 = zext i1 %icmpEq358 to i32
  %143 = zext i1 %icmpEq358 to i32
  %icmpEq426 = icmp eq i32 %zext359, %143
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  call void @assert_ft(i32 %zext359, i32 35)
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %zext329 = zext i1 %icmpEq328 to i32
  %144 = zext i1 %140 to i32
  %icmpEq428 = icmp eq i32 %zext329, %144
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  call void @assert_ft(i32 %zext329, i32 35)
  %icmpEq326 = icmp eq i64 %indvars.iv75, %103
  %145 = icmp eq i64 %102, %104
  %icmpEq360 = icmp eq i1 %icmpEq326, %145
  %146 = icmp eq i1 %145, %145
  %icmpEq430 = icmp eq i1 %icmpEq360, %146
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %zext327 = zext i1 %icmpEq326 to i32
  %147 = zext i1 %145 to i32
  %148 = zext i1 %145 to i32
  %icmpEq432 = icmp eq i32 %147, %148
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  %icmpEq334 = icmp eq i32 %zext327, %147
  %zext335 = zext i1 %icmpEq334 to i32
  %149 = zext i1 %icmpEq334 to i32
  %icmpEq362 = icmp eq i32 %zext335, %149
  %150 = icmp eq i32 %149, %149
  %icmpEq434 = icmp eq i1 %icmpEq362, %150
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  call void @assert_ft(i32 %zext335, i32 35)
  call void @assert_ft(i32 %zext327, i32 35)
  %151 = xor i32 %cfg_DestPhi112, %cfg_DiffPhi113
  %152 = xor i32 %107, %114
  %icmpEq436 = icmp eq i32 %151, %152
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %cfg_icmpEq114 = icmp eq i32 %151, 488637721
  %153 = icmp eq i32 %152, 488637721
  %icmpEq364 = icmp eq i1 %cfg_icmpEq114, %153
  %zext365 = zext i1 %icmpEq364 to i32
  %154 = zext i1 %icmpEq364 to i32
  %icmpEq438 = icmp eq i32 %zext365, %154
  %zext439 = zext i1 %icmpEq438 to i32
  call void @assert_ft(i32 %zext439, i32 35)
  call void @assert_ft(i32 %zext365, i32 35)
  %cfg_zext115 = zext i1 %cfg_icmpEq114 to i32
  %155 = zext i1 %153 to i32
  %icmpEq336 = icmp eq i32 %cfg_zext115, %155
  %156 = icmp eq i32 %155, %155
  %icmpEq440 = icmp eq i1 %icmpEq336, %156
  %zext441 = zext i1 %icmpEq440 to i32
  call void @assert_ft(i32 %zext441, i32 35)
  %zext337 = zext i1 %icmpEq336 to i32
  %157 = zext i1 %156 to i32
  %icmpEq366 = icmp eq i32 %zext337, %157
  %zext367 = zext i1 %icmpEq366 to i32
  %158 = zext i1 %icmpEq366 to i32
  %icmpEq442 = icmp eq i32 %zext367, %158
  %zext443 = zext i1 %icmpEq442 to i32
  call void @assert_ft(i32 %zext443, i32 35)
  call void @assert_ft(i32 %zext367, i32 35)
  call void @assert_ft(i32 %zext337, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext115, i32 %151, i32 35)
  %159 = trunc i64 %indvars.iv75 to i32
  %160 = trunc i64 %102 to i32
  %icmpEq444 = icmp eq i32 %159, %160
  %zext445 = zext i1 %icmpEq444 to i32
  call void @assert_ft(i32 %zext445, i32 35)
  %161 = mul nsw i32 %92, %159
  %162 = mul nsw i32 %92, %160
  %icmpEq368 = icmp eq i32 %161, %162
  %zext369 = zext i1 %icmpEq368 to i32
  %163 = zext i1 %icmpEq368 to i32
  %icmpEq446 = icmp eq i32 %zext369, %163
  %zext447 = zext i1 %icmpEq446 to i32
  call void @assert_ft(i32 %zext447, i32 35)
  call void @assert_ft(i32 %zext369, i32 35)
  %164 = sdiv i32 %161, 2
  %165 = sdiv i32 %162, 2
  %icmpEq338 = icmp eq i32 %164, %165
  %166 = icmp eq i32 %165, %165
  %icmpEq448 = icmp eq i1 %icmpEq338, %166
  %zext449 = zext i1 %icmpEq448 to i32
  call void @assert_ft(i32 %zext449, i32 35)
  %zext339 = zext i1 %icmpEq338 to i32
  %167 = zext i1 %166 to i32
  %icmpEq370 = icmp eq i32 %zext339, %167
  %zext371 = zext i1 %icmpEq370 to i32
  %168 = zext i1 %icmpEq370 to i32
  %icmpEq450 = icmp eq i32 %zext371, %168
  %zext451 = zext i1 %icmpEq450 to i32
  call void @assert_ft(i32 %zext451, i32 35)
  call void @assert_ft(i32 %zext371, i32 35)
  call void @assert_ft(i32 %zext339, i32 35)
  br label %192

.preheader53:                                     ; preds = %._crit_edge
  %cfg_DestPhi116 = phi i32 [ 694158084, %._crit_edge ]
  %169 = phi i32 [ 694158084, %._crit_edge ]
  %170 = phi i32 [ 694158084, %._crit_edge ]
  %cfg_DiffPhi117 = phi i32 [ %227, %._crit_edge ]
  %171 = phi i32 [ %227, %._crit_edge ]
  %172 = phi i32 [ %227, %._crit_edge ]
  %173 = phi i32 [ %227, %._crit_edge ]
  %icmpEq466 = icmp eq i32 %172, %173
  %zext467 = zext i1 %icmpEq466 to i32
  call void @assert_ft(i32 %zext467, i32 35)
  %icmpEq464 = icmp eq i32 %cfg_DiffPhi117, %171
  %174 = icmp eq i32 %171, %171
  %icmpEq468 = icmp eq i1 %icmpEq464, %174
  %zext469 = zext i1 %icmpEq468 to i32
  call void @assert_ft(i32 %zext469, i32 35)
  %zext465 = zext i1 %icmpEq464 to i32
  call void @assert_ft(i32 %zext465, i32 35)
  %icmpEq462 = icmp eq i32 %169, %170
  %zext463 = zext i1 %icmpEq462 to i32
  %175 = zext i1 %icmpEq462 to i32
  %icmpEq470 = icmp eq i32 %zext463, %175
  %zext471 = zext i1 %icmpEq470 to i32
  call void @assert_ft(i32 %zext471, i32 35)
  call void @assert_ft(i32 %zext463, i32 35)
  %icmpEq454 = icmp eq i32 %cfg_DiffPhi117, %172
  %zext455 = zext i1 %icmpEq454 to i32
  call void @assert_ft(i32 %zext455, i32 35)
  %icmpEq452 = icmp eq i32 %cfg_DestPhi116, %169
  %176 = icmp eq i32 %169, %170
  %icmpEq472 = icmp eq i1 %icmpEq452, %176
  %zext473 = zext i1 %icmpEq472 to i32
  call void @assert_ft(i32 %zext473, i32 35)
  %177 = icmp eq i32 %cfg_DestPhi116, %169
  %icmpEq456 = icmp eq i1 %icmpEq452, %177
  %zext457 = zext i1 %icmpEq456 to i32
  call void @assert_ft(i32 %zext457, i32 35)
  %zext453 = zext i1 %icmpEq452 to i32
  %178 = zext i1 %176 to i32
  %icmpEq474 = icmp eq i32 %zext453, %178
  %zext475 = zext i1 %icmpEq474 to i32
  call void @assert_ft(i32 %zext475, i32 35)
  call void @assert_ft(i32 %zext453, i32 35)
  %179 = xor i32 %cfg_DestPhi116, %cfg_DiffPhi117
  %cfg_icmpEq118 = icmp eq i32 %179, 540016897
  %180 = icmp eq i32 %179, 540016897
  %181 = icmp eq i32 %179, 540016897
  %icmpEq476 = icmp eq i1 %180, %181
  %zext477 = zext i1 %icmpEq476 to i32
  call void @assert_ft(i32 %zext477, i32 35)
  %icmpEq458 = icmp eq i1 %cfg_icmpEq118, %180
  %zext459 = zext i1 %icmpEq458 to i32
  call void @assert_ft(i32 %zext459, i32 35)
  %cfg_zext119 = zext i1 %cfg_icmpEq118 to i32
  %182 = zext i1 %180 to i32
  %icmpEq478 = icmp eq i32 %cfg_zext119, %182
  %zext479 = zext i1 %icmpEq478 to i32
  call void @assert_ft(i32 %zext479, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext119, i32 %179, i32 35)
  %183 = select i1 %93, i32 591397407, i32 899679767
  %184 = xor i32 540016897, %183
  %185 = xor i32 540016897, %183
  %186 = xor i32 540016897, %183
  %icmpEq480 = icmp eq i32 %185, %186
  %zext481 = zext i1 %icmpEq480 to i32
  call void @assert_ft(i32 %zext481, i32 35)
  %icmpEq460 = icmp eq i32 %184, %185
  %zext461 = zext i1 %icmpEq460 to i32
  call void @assert_ft(i32 %zext461, i32 35)
  br i1 %93, label %.preheader52.lr.ph, label %._crit_edge62

.preheader52.lr.ph:                               ; preds = %.preheader53
  %cfg_DestPhi120 = phi i32 [ 540016897, %.preheader53 ]
  %187 = phi i32 [ 540016897, %.preheader53 ]
  %cfg_DiffPhi121 = phi i32 [ %184, %.preheader53 ]
  %188 = phi i32 [ %185, %.preheader53 ]
  %icmpEq484 = icmp eq i32 %cfg_DiffPhi121, %188
  %zext485 = zext i1 %icmpEq484 to i32
  call void @assert_ft(i32 %zext485, i32 35)
  %icmpEq482 = icmp eq i32 %cfg_DestPhi120, %187
  %189 = icmp eq i32 %187, %187
  %icmpEq486 = icmp eq i1 %icmpEq482, %189
  %zext487 = zext i1 %icmpEq486 to i32
  call void @assert_ft(i32 %zext487, i32 35)
  %zext483 = zext i1 %icmpEq482 to i32
  call void @assert_ft(i32 %zext483, i32 35)
  %190 = xor i32 %cfg_DestPhi120, %cfg_DiffPhi121
  %cfg_icmpEq122 = icmp eq i32 %190, 591397407
  %191 = icmp eq i32 %190, 591397407
  %icmpEq488 = icmp eq i1 %cfg_icmpEq122, %191
  %zext489 = zext i1 %icmpEq488 to i32
  call void @assert_ft(i32 %zext489, i32 35)
  %cfg_zext123 = zext i1 %cfg_icmpEq122 to i32
  call void @assert_cfg_ft(i32 %cfg_zext123, i32 %190, i32 35)
  %wide.trip.count85 = zext i32 %92 to i64
  br label %.lr.ph59

192:                                              ; preds = %192, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %192 ]
  %193 = phi i64 [ 0, %.lr.ph ], [ %217, %192 ]
  %cfg_DestPhi124 = phi i32 [ 488637721, %.lr.ph ], [ 642782216, %192 ]
  %194 = phi i32 [ 488637721, %.lr.ph ], [ 642782216, %192 ]
  %cfg_DiffPhi125 = phi i32 [ 997200145, %.lr.ph ], [ %219, %192 ]
  %195 = phi i32 [ 997200145, %.lr.ph ], [ %219, %192 ]
  %icmpEq494 = icmp eq i32 %cfg_DiffPhi125, %195
  %zext495 = zext i1 %icmpEq494 to i32
  call void @assert_ft(i32 %zext495, i32 35)
  %icmpEq492 = icmp eq i32 %cfg_DestPhi124, %194
  %196 = icmp eq i32 %194, %194
  %icmpEq496 = icmp eq i1 %icmpEq492, %196
  %zext497 = zext i1 %icmpEq496 to i32
  call void @assert_ft(i32 %zext497, i32 35)
  %zext493 = zext i1 %icmpEq492 to i32
  call void @assert_ft(i32 %zext493, i32 35)
  %icmpEq490 = icmp eq i64 %indvars.iv, %193
  %zext491 = zext i1 %icmpEq490 to i32
  %197 = zext i1 %icmpEq490 to i32
  %icmpEq498 = icmp eq i32 %zext491, %197
  %zext499 = zext i1 %icmpEq498 to i32
  call void @assert_ft(i32 %zext499, i32 35)
  call void @assert_ft(i32 %zext491, i32 35)
  %198 = xor i32 %cfg_DestPhi124, %cfg_DiffPhi125
  %cfg_icmpEq126 = icmp eq i32 %198, 642782216
  %cfg_zext127 = zext i1 %cfg_icmpEq126 to i32
  %199 = zext i1 %cfg_icmpEq126 to i32
  %icmpEq500 = icmp eq i32 %cfg_zext127, %199
  %zext501 = zext i1 %icmpEq500 to i32
  call void @assert_ft(i32 %zext501, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext127, i32 %198, i32 35)
  %200 = add nuw nsw i64 %indvars.iv, %indvars.iv75
  %201 = trunc i64 %200 to i32
  %202 = mul i32 %92, %201
  %203 = mul i32 %92, %201
  %icmpEq502 = icmp eq i32 %202, %203
  %zext503 = zext i1 %icmpEq502 to i32
  call void @assert_ft(i32 %zext503, i32 35)
  %204 = srem i32 %202, %92
  %205 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  store i32 %204, ptr %205, align 4
  %206 = trunc i64 %indvars.iv to i32
  %207 = trunc i64 %193 to i32
  %icmpEq504 = icmp eq i32 %206, %207
  %zext505 = zext i1 %icmpEq504 to i32
  call void @assert_ft(i32 %zext505, i32 35)
  %208 = add nsw i32 %161, %206
  %209 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  store i32 %208, ptr %209, align 4
  %210 = mul nsw i32 %92, %206
  %211 = mul nsw i32 %92, %207
  %icmpEq506 = icmp eq i32 %210, %211
  %zext507 = zext i1 %icmpEq506 to i32
  call void @assert_ft(i32 %zext507, i32 35)
  %212 = sdiv i32 %210, 2
  %213 = add nsw i32 %212, %164
  %214 = srem i32 %213, %92
  %215 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv75, i64 %indvars.iv
  %216 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %102, i64 %193
  store i32 %214, ptr %215, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %217 = add nuw nsw i64 %193, 1
  %icmpEq508 = icmp eq i64 %indvars.iv.next, %217
  %zext509 = zext i1 %icmpEq508 to i32
  call void @assert_ft(i32 %zext509, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77
  %218 = select i1 %exitcond.not, i32 694158084, i32 642782216
  %219 = xor i32 642782216, %218
  br i1 %exitcond.not, label %._crit_edge, label %192

._crit_edge:                                      ; preds = %192
  %cfg_DestPhi128 = phi i32 [ 642782216, %192 ]
  %220 = phi i32 [ 642782216, %192 ]
  %cfg_DiffPhi129 = phi i32 [ %219, %192 ]
  %221 = phi i32 [ %219, %192 ]
  %icmpEq512 = icmp eq i32 %cfg_DiffPhi129, %221
  %zext513 = zext i1 %icmpEq512 to i32
  call void @assert_ft(i32 %zext513, i32 35)
  %icmpEq510 = icmp eq i32 %cfg_DestPhi128, %220
  %222 = icmp eq i32 %220, %220
  %icmpEq514 = icmp eq i1 %icmpEq510, %222
  %zext515 = zext i1 %icmpEq514 to i32
  call void @assert_ft(i32 %zext515, i32 35)
  %zext511 = zext i1 %icmpEq510 to i32
  call void @assert_ft(i32 %zext511, i32 35)
  %223 = xor i32 %cfg_DestPhi128, %cfg_DiffPhi129
  %cfg_icmpEq130 = icmp eq i32 %223, 694158084
  %224 = icmp eq i32 %223, 694158084
  %icmpEq516 = icmp eq i1 %cfg_icmpEq130, %224
  %zext517 = zext i1 %icmpEq516 to i32
  call void @assert_ft(i32 %zext517, i32 35)
  %cfg_zext131 = zext i1 %cfg_icmpEq130 to i32
  call void @assert_cfg_ft(i32 %cfg_zext131, i32 %223, i32 35)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count77
  %225 = icmp eq i64 %indvars.iv.next76, %wide.trip.count77
  %icmpEq518 = icmp eq i1 %exitcond78.not, %225
  %zext519 = zext i1 %icmpEq518 to i32
  call void @assert_ft(i32 %zext519, i32 35)
  %226 = select i1 %exitcond78.not, i32 540016897, i32 488637721
  %227 = xor i32 694158084, %226
  br i1 %exitcond78.not, label %.preheader53, label %.lr.ph

.lr.ph59:                                         ; preds = %._crit_edge60, %.preheader52.lr.ph
  %indvars.iv83 = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next84, %._crit_edge60 ]
  %228 = phi i64 [ 0, %.preheader52.lr.ph ], [ %indvars.iv.next84, %._crit_edge60 ]
  %cfg_DestPhi132 = phi i32 [ 848298757, %._crit_edge60 ], [ 591397407, %.preheader52.lr.ph ]
  %229 = phi i32 [ 848298757, %._crit_edge60 ], [ 591397407, %.preheader52.lr.ph ]
  %cfg_DiffPhi133 = phi i32 [ %278, %._crit_edge60 ], [ 254804226, %.preheader52.lr.ph ]
  %230 = phi i32 [ %278, %._crit_edge60 ], [ 254804226, %.preheader52.lr.ph ]
  %icmpEq524 = icmp eq i32 %cfg_DiffPhi133, %230
  %zext525 = zext i1 %icmpEq524 to i32
  call void @assert_ft(i32 %zext525, i32 35)
  %icmpEq522 = icmp eq i32 %cfg_DestPhi132, %229
  %231 = icmp eq i32 %229, %229
  %icmpEq526 = icmp eq i1 %icmpEq522, %231
  %zext527 = zext i1 %icmpEq526 to i32
  call void @assert_ft(i32 %zext527, i32 35)
  %zext523 = zext i1 %icmpEq522 to i32
  call void @assert_ft(i32 %zext523, i32 35)
  %icmpEq520 = icmp eq i64 %indvars.iv83, %228
  %zext521 = zext i1 %icmpEq520 to i32
  %232 = zext i1 %icmpEq520 to i32
  %icmpEq528 = icmp eq i32 %zext521, %232
  %zext529 = zext i1 %icmpEq528 to i32
  call void @assert_ft(i32 %zext529, i32 35)
  call void @assert_ft(i32 %zext521, i32 35)
  %233 = xor i32 %cfg_DestPhi132, %cfg_DiffPhi133
  %cfg_icmpEq134 = icmp eq i32 %233, 745538333
  %cfg_zext135 = zext i1 %cfg_icmpEq134 to i32
  %234 = zext i1 %cfg_icmpEq134 to i32
  %icmpEq530 = icmp eq i32 %cfg_zext135, %234
  %zext531 = zext i1 %icmpEq530 to i32
  call void @assert_ft(i32 %zext531, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext135, i32 %233, i32 35)
  %235 = trunc i64 %indvars.iv83 to i32
  br label %236

236:                                              ; preds = %236, %.lr.ph59
  %indvars.iv79 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next80, %236 ]
  %237 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next80, %236 ]
  %cfg_DestPhi136 = phi i32 [ 745538333, %.lr.ph59 ], [ 796924166, %236 ]
  %238 = phi i32 [ 745538333, %.lr.ph59 ], [ 796924166, %236 ]
  %cfg_DiffPhi137 = phi i32 [ 66066971, %.lr.ph59 ], [ %270, %236 ]
  %239 = phi i32 [ 66066971, %.lr.ph59 ], [ %270, %236 ]
  %icmpEq536 = icmp eq i32 %cfg_DiffPhi137, %239
  %zext537 = zext i1 %icmpEq536 to i32
  call void @assert_ft(i32 %zext537, i32 35)
  %icmpEq534 = icmp eq i32 %cfg_DestPhi136, %238
  %240 = icmp eq i32 %238, %238
  %icmpEq538 = icmp eq i1 %icmpEq534, %240
  %zext539 = zext i1 %icmpEq538 to i32
  call void @assert_ft(i32 %zext539, i32 35)
  %zext535 = zext i1 %icmpEq534 to i32
  call void @assert_ft(i32 %zext535, i32 35)
  %icmpEq532 = icmp eq i64 %indvars.iv79, %237
  %zext533 = zext i1 %icmpEq532 to i32
  %241 = zext i1 %icmpEq532 to i32
  %icmpEq540 = icmp eq i32 %zext533, %241
  %zext541 = zext i1 %icmpEq540 to i32
  call void @assert_ft(i32 %zext541, i32 35)
  call void @assert_ft(i32 %zext533, i32 35)
  %242 = xor i32 %cfg_DestPhi136, %cfg_DiffPhi137
  %cfg_icmpEq138 = icmp eq i32 %242, 796924166
  %cfg_zext139 = zext i1 %cfg_icmpEq138 to i32
  %243 = zext i1 %cfg_icmpEq138 to i32
  %icmpEq542 = icmp eq i32 %cfg_zext139, %243
  %zext543 = zext i1 %icmpEq542 to i32
  call void @assert_ft(i32 %zext543, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext139, i32 %242, i32 35)
  %244 = mul nuw nsw i64 %indvars.iv79, %indvars.iv83
  %245 = trunc i64 %244 to i32
  %246 = mul nsw i32 %245, %235
  %247 = mul nsw i32 %245, %235
  %icmpEq544 = icmp eq i32 %246, %247
  %zext545 = zext i1 %icmpEq544 to i32
  call void @assert_ft(i32 %zext545, i32 35)
  %248 = add nuw nsw i32 %246, 10
  %249 = sitofp i32 %248 to float
  %250 = getelementptr inbounds [1024 x [1024 x i32]], ptr @A, i64 0, i64 %indvars.iv83, i64 %indvars.iv79
  %251 = load i32, ptr %250, align 4
  %252 = load i32, ptr %250, align 4
  %icmpEq546 = icmp eq i32 %251, %252
  %zext547 = zext i1 %icmpEq546 to i32
  call void @assert_ft(i32 %zext547, i32 35)
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds [1048576 x float], ptr @RA, i64 0, i64 %253
  store float %249, ptr %254, align 4
  %255 = udiv i32 %245, 3
  %256 = udiv i32 %245, 3
  %icmpEq548 = icmp eq i32 %255, %256
  %zext549 = zext i1 %icmpEq548 to i32
  call void @assert_ft(i32 %zext549, i32 35)
  %257 = trunc i64 %244 to i32
  %258 = add i32 %257, 3
  %259 = sub i32 %258, %255
  %260 = sdiv i32 %235, %259
  %261 = sdiv i32 %235, %259
  %icmpEq550 = icmp eq i32 %260, %261
  %zext551 = zext i1 %icmpEq550 to i32
  call void @assert_ft(i32 %zext551, i32 35)
  %262 = sitofp i32 %260 to float
  %263 = getelementptr inbounds [1024 x [1024 x i32]], ptr @B, i64 0, i64 %indvars.iv83, i64 %indvars.iv79
  %264 = load i32, ptr %263, align 4
  %265 = sext i32 %264 to i64
  %266 = sext i32 %264 to i64
  %icmpEq552 = icmp eq i64 %265, %266
  %zext553 = zext i1 %icmpEq552 to i32
  call void @assert_ft(i32 %zext553, i32 35)
  %267 = getelementptr inbounds [1048576 x float], ptr @RB, i64 0, i64 %265
  store float %262, ptr %267, align 4
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count85
  %268 = icmp eq i64 %indvars.iv.next80, %wide.trip.count85
  %icmpEq554 = icmp eq i1 %exitcond82.not, %268
  %zext555 = zext i1 %icmpEq554 to i32
  call void @assert_ft(i32 %zext555, i32 35)
  %269 = select i1 %exitcond82.not, i32 848298757, i32 796924166
  %270 = xor i32 796924166, %269
  br i1 %exitcond82.not, label %._crit_edge60, label %236

._crit_edge60:                                    ; preds = %236
  %cfg_DestPhi140 = phi i32 [ 796924166, %236 ]
  %271 = phi i32 [ 796924166, %236 ]
  %cfg_DiffPhi141 = phi i32 [ %270, %236 ]
  %272 = phi i32 [ %270, %236 ]
  %icmpEq558 = icmp eq i32 %cfg_DiffPhi141, %272
  %zext559 = zext i1 %icmpEq558 to i32
  call void @assert_ft(i32 %zext559, i32 35)
  %icmpEq556 = icmp eq i32 %cfg_DestPhi140, %271
  %273 = icmp eq i32 %271, %271
  %icmpEq560 = icmp eq i1 %icmpEq556, %273
  %zext561 = zext i1 %icmpEq560 to i32
  call void @assert_ft(i32 %zext561, i32 35)
  %zext557 = zext i1 %icmpEq556 to i32
  call void @assert_ft(i32 %zext557, i32 35)
  %274 = xor i32 %cfg_DestPhi140, %cfg_DiffPhi141
  %cfg_icmpEq142 = icmp eq i32 %274, 848298757
  %275 = icmp eq i32 %274, 848298757
  %icmpEq562 = icmp eq i1 %cfg_icmpEq142, %275
  %zext563 = zext i1 %icmpEq562 to i32
  call void @assert_ft(i32 %zext563, i32 35)
  %cfg_zext143 = zext i1 %cfg_icmpEq142 to i32
  call void @assert_cfg_ft(i32 %cfg_zext143, i32 %274, i32 35)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count85
  %276 = icmp eq i64 %indvars.iv.next84, %wide.trip.count85
  %icmpEq564 = icmp eq i1 %exitcond86.not, %276
  %zext565 = zext i1 %icmpEq564 to i32
  call void @assert_ft(i32 %zext565, i32 35)
  %277 = select i1 %exitcond86.not, i32 899679767, i32 745538333
  %278 = xor i32 848298757, %277
  br i1 %exitcond86.not, label %._crit_edge62, label %.lr.ph59

._crit_edge62:                                    ; preds = %._crit_edge60, %.preheader53, %82
  %cfg_DestPhi144 = phi i32 [ 848298757, %._crit_edge60 ], [ 385877276, %82 ], [ 540016897, %.preheader53 ]
  %279 = phi i32 [ 848298757, %._crit_edge60 ], [ 385877276, %82 ], [ 540016897, %.preheader53 ]
  %cfg_DiffPhi145 = phi i32 [ %278, %._crit_edge60 ], [ %96, %82 ], [ %184, %.preheader53 ]
  %280 = phi i32 [ %278, %._crit_edge60 ], [ %96, %82 ], [ %185, %.preheader53 ]
  %icmpEq568 = icmp eq i32 %cfg_DiffPhi145, %280
  %zext569 = zext i1 %icmpEq568 to i32
  call void @assert_ft(i32 %zext569, i32 35)
  %icmpEq566 = icmp eq i32 %cfg_DestPhi144, %279
  %281 = icmp eq i32 %279, %279
  %icmpEq570 = icmp eq i1 %icmpEq566, %281
  %zext571 = zext i1 %icmpEq570 to i32
  call void @assert_ft(i32 %zext571, i32 35)
  %zext567 = zext i1 %icmpEq566 to i32
  call void @assert_ft(i32 %zext567, i32 35)
  %282 = xor i32 %cfg_DestPhi144, %cfg_DiffPhi145
  %cfg_icmpEq146 = icmp eq i32 %282, 899679767
  %283 = icmp eq i32 %282, 899679767
  %icmpEq572 = icmp eq i1 %cfg_icmpEq146, %283
  %zext573 = zext i1 %icmpEq572 to i32
  call void @assert_ft(i32 %zext573, i32 35)
  %cfg_zext147 = zext i1 %cfg_icmpEq146 to i32
  call void @assert_cfg_ft(i32 %cfg_zext147, i32 %282, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  tail call void @matmult()
  %puts50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %284 = load i32, ptr @size, align 4
  %285 = load i32, ptr @size, align 4
  %icmpEq574 = icmp eq i32 %284, %285
  %zext575 = zext i1 %icmpEq574 to i32
  call void @assert_ft(i32 %zext575, i32 35)
  %286 = icmp sgt i32 %284, 0
  %287 = select i1 %286, i32 951059218, i32 1310720271
  %288 = xor i32 899679767, %287
  br i1 %286, label %.preheader.lr.ph, label %._crit_edge73.thread

.preheader.lr.ph:                                 ; preds = %._crit_edge62
  %cfg_DestPhi148 = phi i32 [ 899679767, %._crit_edge62 ]
  %289 = phi i32 [ 899679767, %._crit_edge62 ]
  %290 = phi i32 [ 899679767, %._crit_edge62 ]
  %cfg_DiffPhi149 = phi i32 [ %288, %._crit_edge62 ]
  %291 = phi i32 [ %288, %._crit_edge62 ]
  %292 = phi i32 [ %288, %._crit_edge62 ]
  %293 = phi i32 [ %288, %._crit_edge62 ]
  %icmpEq590 = icmp eq i32 %292, %293
  %zext591 = zext i1 %icmpEq590 to i32
  call void @assert_ft(i32 %zext591, i32 35)
  %icmpEq588 = icmp eq i32 %cfg_DiffPhi149, %291
  %294 = icmp eq i32 %291, %291
  %icmpEq592 = icmp eq i1 %icmpEq588, %294
  %zext593 = zext i1 %icmpEq592 to i32
  call void @assert_ft(i32 %zext593, i32 35)
  %zext589 = zext i1 %icmpEq588 to i32
  call void @assert_ft(i32 %zext589, i32 35)
  %icmpEq586 = icmp eq i32 %289, %290
  %zext587 = zext i1 %icmpEq586 to i32
  %295 = zext i1 %icmpEq586 to i32
  %icmpEq594 = icmp eq i32 %zext587, %295
  %zext595 = zext i1 %icmpEq594 to i32
  call void @assert_ft(i32 %zext595, i32 35)
  call void @assert_ft(i32 %zext587, i32 35)
  %icmpEq578 = icmp eq i32 %cfg_DiffPhi149, %292
  %zext579 = zext i1 %icmpEq578 to i32
  call void @assert_ft(i32 %zext579, i32 35)
  %icmpEq576 = icmp eq i32 %cfg_DestPhi148, %289
  %296 = icmp eq i32 %289, %290
  %icmpEq596 = icmp eq i1 %icmpEq576, %296
  %zext597 = zext i1 %icmpEq596 to i32
  call void @assert_ft(i32 %zext597, i32 35)
  %297 = icmp eq i32 %cfg_DestPhi148, %289
  %icmpEq580 = icmp eq i1 %icmpEq576, %297
  %zext581 = zext i1 %icmpEq580 to i32
  call void @assert_ft(i32 %zext581, i32 35)
  %zext577 = zext i1 %icmpEq576 to i32
  %298 = zext i1 %296 to i32
  %icmpEq598 = icmp eq i32 %zext577, %298
  %zext599 = zext i1 %icmpEq598 to i32
  call void @assert_ft(i32 %zext599, i32 35)
  call void @assert_ft(i32 %zext577, i32 35)
  %299 = xor i32 %cfg_DestPhi148, %cfg_DiffPhi149
  %cfg_icmpEq150 = icmp eq i32 %299, 951059218
  %300 = icmp eq i32 %299, 951059218
  %301 = icmp eq i32 %299, 951059218
  %icmpEq600 = icmp eq i1 %300, %301
  %zext601 = zext i1 %icmpEq600 to i32
  call void @assert_ft(i32 %zext601, i32 35)
  %icmpEq582 = icmp eq i1 %cfg_icmpEq150, %300
  %zext583 = zext i1 %icmpEq582 to i32
  call void @assert_ft(i32 %zext583, i32 35)
  %cfg_zext151 = zext i1 %cfg_icmpEq150 to i32
  %302 = zext i1 %300 to i32
  %icmpEq602 = icmp eq i32 %cfg_zext151, %302
  %zext603 = zext i1 %icmpEq602 to i32
  call void @assert_ft(i32 %zext603, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext151, i32 %299, i32 35)
  %total.promoted66 = load double, ptr @total, align 8
  %303 = zext i32 %284 to i64
  %304 = zext i32 %285 to i64
  %305 = zext i32 %285 to i64
  %icmpEq604 = icmp eq i64 %304, %305
  %zext605 = zext i1 %icmpEq604 to i32
  call void @assert_ft(i32 %zext605, i32 35)
  %icmpEq584 = icmp eq i64 %303, %304
  %zext585 = zext i1 %icmpEq584 to i32
  call void @assert_ft(i32 %zext585, i32 35)
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %._crit_edge65, %.preheader.lr.ph
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next90, %._crit_edge65 ]
  %306 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next90, %._crit_edge65 ]
  %307 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next90, %._crit_edge65 ]
  %308 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next90, %._crit_edge65 ]
  %total.promoted7071 = phi double [ %total.promoted66, %.preheader.lr.ph ], [ %total.promoted68, %._crit_edge65 ]
  %309 = phi double [ %total.promoted66, %.preheader.lr.ph ], [ %total.promoted68, %._crit_edge65 ]
  %310 = phi double [ %total.promoted66, %.preheader.lr.ph ], [ %total.promoted68, %._crit_edge65 ]
  %311 = phi double [ %total.promoted66, %.preheader.lr.ph ], [ %total.promoted68, %._crit_edge65 ]
  %cfg_DestPhi152 = phi i32 [ 1207960352, %._crit_edge65 ], [ 951059218, %.preheader.lr.ph ]
  %312 = phi i32 [ 1207960352, %._crit_edge65 ], [ 951059218, %.preheader.lr.ph ]
  %313 = phi i32 [ 1207960352, %._crit_edge65 ], [ 951059218, %.preheader.lr.ph ]
  %314 = phi i32 [ 1207960352, %._crit_edge65 ], [ 951059218, %.preheader.lr.ph ]
  %cfg_DiffPhi153 = phi i32 [ %408, %._crit_edge65 ], [ 57671700, %.preheader.lr.ph ]
  %315 = phi i32 [ %408, %._crit_edge65 ], [ 57671700, %.preheader.lr.ph ]
  %316 = phi i32 [ %408, %._crit_edge65 ], [ 57671700, %.preheader.lr.ph ]
  %317 = phi i32 [ %408, %._crit_edge65 ], [ 57671700, %.preheader.lr.ph ]
  %icmpEq628 = icmp eq i32 %316, %317
  %zext629 = zext i1 %icmpEq628 to i32
  call void @assert_ft(i32 %zext629, i32 35)
  %icmpEq626 = icmp eq i32 %cfg_DiffPhi153, %315
  %318 = icmp eq i32 %315, %315
  %icmpEq630 = icmp eq i1 %icmpEq626, %318
  %zext631 = zext i1 %icmpEq630 to i32
  call void @assert_ft(i32 %zext631, i32 35)
  %zext627 = zext i1 %icmpEq626 to i32
  call void @assert_ft(i32 %zext627, i32 35)
  %icmpEq624 = icmp eq i32 %313, %314
  %zext625 = zext i1 %icmpEq624 to i32
  %319 = zext i1 %icmpEq624 to i32
  %icmpEq632 = icmp eq i32 %zext625, %319
  %zext633 = zext i1 %icmpEq632 to i32
  call void @assert_ft(i32 %zext633, i32 35)
  call void @assert_ft(i32 %zext625, i32 35)
  %icmpEq622 = icmp eq i32 %cfg_DestPhi152, %312
  %zext623 = zext i1 %icmpEq622 to i32
  call void @assert_ft(i32 %zext623, i32 35)
  %icmpEq620 = icmp eq i64 %307, %308
  %320 = icmp eq i64 %308, %308
  %icmpEq634 = icmp eq i1 %icmpEq620, %320
  %zext635 = zext i1 %icmpEq634 to i32
  call void @assert_ft(i32 %zext635, i32 35)
  %zext621 = zext i1 %icmpEq620 to i32
  call void @assert_ft(i32 %zext621, i32 35)
  %icmpEq618 = icmp eq i64 %indvars.iv89, %306
  %zext619 = zext i1 %icmpEq618 to i32
  %321 = zext i1 %icmpEq618 to i32
  %icmpEq636 = icmp eq i32 %zext619, %321
  %zext637 = zext i1 %icmpEq636 to i32
  call void @assert_ft(i32 %zext637, i32 35)
  call void @assert_ft(i32 %zext619, i32 35)
  %icmpEq610 = icmp eq i32 %cfg_DiffPhi153, %316
  %zext611 = zext i1 %icmpEq610 to i32
  call void @assert_ft(i32 %zext611, i32 35)
  %icmpEq608 = icmp eq i32 %cfg_DestPhi152, %313
  %322 = icmp eq i32 %312, %314
  %icmpEq638 = icmp eq i1 %icmpEq608, %322
  %zext639 = zext i1 %icmpEq638 to i32
  call void @assert_ft(i32 %zext639, i32 35)
  %323 = icmp eq i32 %cfg_DestPhi152, %313
  %icmpEq612 = icmp eq i1 %icmpEq608, %323
  %zext613 = zext i1 %icmpEq612 to i32
  call void @assert_ft(i32 %zext613, i32 35)
  %zext609 = zext i1 %icmpEq608 to i32
  %324 = zext i1 %322 to i32
  %icmpEq640 = icmp eq i32 %zext609, %324
  %zext641 = zext i1 %icmpEq640 to i32
  call void @assert_ft(i32 %zext641, i32 35)
  call void @assert_ft(i32 %zext609, i32 35)
  %icmpEq606 = icmp eq i64 %indvars.iv89, %307
  %zext607 = zext i1 %icmpEq606 to i32
  %325 = zext i1 %icmpEq606 to i32
  %326 = zext i1 %icmpEq606 to i32
  %icmpEq642 = icmp eq i32 %325, %326
  %zext643 = zext i1 %icmpEq642 to i32
  call void @assert_ft(i32 %zext643, i32 35)
  %icmpEq614 = icmp eq i32 %zext607, %325
  %zext615 = zext i1 %icmpEq614 to i32
  call void @assert_ft(i32 %zext615, i32 35)
  call void @assert_ft(i32 %zext607, i32 35)
  %327 = xor i32 %cfg_DestPhi152, %cfg_DiffPhi153
  %328 = xor i32 %312, %315
  %icmpEq644 = icmp eq i32 %327, %328
  %zext645 = zext i1 %icmpEq644 to i32
  call void @assert_ft(i32 %zext645, i32 35)
  %cfg_icmpEq154 = icmp eq i32 %327, 1002439430
  %cfg_zext155 = zext i1 %cfg_icmpEq154 to i32
  %329 = zext i1 %cfg_icmpEq154 to i32
  %icmpEq616 = icmp eq i32 %cfg_zext155, %329
  %330 = icmp eq i32 %329, %329
  %icmpEq646 = icmp eq i1 %icmpEq616, %330
  %zext647 = zext i1 %icmpEq646 to i32
  call void @assert_ft(i32 %zext647, i32 35)
  %zext617 = zext i1 %icmpEq616 to i32
  call void @assert_ft(i32 %zext617, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext155, i32 %327, i32 35)
  br label %331

331:                                              ; preds = %387, %.lr.ph64
  %indvars.iv87 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next88, %387 ]
  %332 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next88, %387 ]
  %333 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next88, %387 ]
  %334 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next88, %387 ]
  %total.promoted69 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %total.promoted68, %387 ]
  %335 = phi double [ %309, %.lr.ph64 ], [ %total.promoted68, %387 ]
  %336 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %total.promoted68, %387 ]
  %337 = phi double [ %309, %.lr.ph64 ], [ %total.promoted68, %387 ]
  %338 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %389, %387 ]
  %339 = phi double [ %309, %.lr.ph64 ], [ %389, %387 ]
  %340 = phi double [ %total.promoted7071, %.lr.ph64 ], [ %389, %387 ]
  %341 = phi double [ %309, %.lr.ph64 ], [ %389, %387 ]
  %cfg_DestPhi156 = phi i32 [ 1002439430, %.lr.ph64 ], [ 1156580632, %387 ]
  %342 = phi i32 [ 1002439430, %.lr.ph64 ], [ 1156580632, %387 ]
  %343 = phi i32 [ 1002439430, %.lr.ph64 ], [ 1156580632, %387 ]
  %344 = phi i32 [ 1002439430, %.lr.ph64 ], [ 1156580632, %387 ]
  %cfg_DiffPhi157 = phi i32 [ 84936983, %.lr.ph64 ], [ %399, %387 ]
  %345 = phi i32 [ 84936983, %.lr.ph64 ], [ %399, %387 ]
  %346 = phi i32 [ 84936983, %.lr.ph64 ], [ %399, %387 ]
  %347 = phi i32 [ 84936983, %.lr.ph64 ], [ %399, %387 ]
  %icmpEq674 = icmp eq i32 %346, %347
  %zext675 = zext i1 %icmpEq674 to i32
  call void @assert_ft(i32 %zext675, i32 35)
  %icmpEq672 = icmp eq i32 %cfg_DiffPhi157, %345
  %348 = icmp eq i32 %345, %345
  %icmpEq676 = icmp eq i1 %icmpEq672, %348
  %zext677 = zext i1 %icmpEq676 to i32
  call void @assert_ft(i32 %zext677, i32 35)
  %zext673 = zext i1 %icmpEq672 to i32
  call void @assert_ft(i32 %zext673, i32 35)
  %icmpEq670 = icmp eq i32 %343, %344
  %zext671 = zext i1 %icmpEq670 to i32
  %349 = zext i1 %icmpEq670 to i32
  %icmpEq678 = icmp eq i32 %zext671, %349
  %zext679 = zext i1 %icmpEq678 to i32
  call void @assert_ft(i32 %zext679, i32 35)
  call void @assert_ft(i32 %zext671, i32 35)
  %icmpEq668 = icmp eq i32 %cfg_DestPhi156, %342
  %zext669 = zext i1 %icmpEq668 to i32
  call void @assert_ft(i32 %zext669, i32 35)
  %icmpEq666 = icmp eq i64 %333, %334
  %350 = icmp eq i64 %334, %334
  %icmpEq680 = icmp eq i1 %icmpEq666, %350
  %zext681 = zext i1 %icmpEq680 to i32
  call void @assert_ft(i32 %zext681, i32 35)
  %zext667 = zext i1 %icmpEq666 to i32
  call void @assert_ft(i32 %zext667, i32 35)
  %icmpEq664 = icmp eq i64 %indvars.iv87, %332
  %zext665 = zext i1 %icmpEq664 to i32
  %351 = zext i1 %icmpEq664 to i32
  %icmpEq682 = icmp eq i32 %zext665, %351
  %zext683 = zext i1 %icmpEq682 to i32
  call void @assert_ft(i32 %zext683, i32 35)
  call void @assert_ft(i32 %zext665, i32 35)
  %icmpEq652 = icmp eq i32 %cfg_DiffPhi157, %346
  %zext653 = zext i1 %icmpEq652 to i32
  call void @assert_ft(i32 %zext653, i32 35)
  %icmpEq650 = icmp eq i32 %cfg_DestPhi156, %343
  %352 = icmp eq i32 %342, %344
  %icmpEq684 = icmp eq i1 %icmpEq650, %352
  %zext685 = zext i1 %icmpEq684 to i32
  call void @assert_ft(i32 %zext685, i32 35)
  %353 = icmp eq i32 %cfg_DestPhi156, %343
  %icmpEq654 = icmp eq i1 %icmpEq650, %353
  %zext655 = zext i1 %icmpEq654 to i32
  call void @assert_ft(i32 %zext655, i32 35)
  %zext651 = zext i1 %icmpEq650 to i32
  %354 = zext i1 %352 to i32
  %icmpEq686 = icmp eq i32 %zext651, %354
  %zext687 = zext i1 %icmpEq686 to i32
  call void @assert_ft(i32 %zext687, i32 35)
  call void @assert_ft(i32 %zext651, i32 35)
  %icmpEq648 = icmp eq i64 %indvars.iv87, %333
  %zext649 = zext i1 %icmpEq648 to i32
  %355 = zext i1 %icmpEq648 to i32
  %356 = zext i1 %icmpEq648 to i32
  %icmpEq688 = icmp eq i32 %355, %356
  %zext689 = zext i1 %icmpEq688 to i32
  call void @assert_ft(i32 %zext689, i32 35)
  %icmpEq656 = icmp eq i32 %zext649, %355
  %zext657 = zext i1 %icmpEq656 to i32
  call void @assert_ft(i32 %zext657, i32 35)
  call void @assert_ft(i32 %zext649, i32 35)
  %357 = xor i32 %cfg_DestPhi156, %cfg_DiffPhi157
  %358 = xor i32 %342, %345
  %icmpEq690 = icmp eq i32 %357, %358
  %zext691 = zext i1 %icmpEq690 to i32
  call void @assert_ft(i32 %zext691, i32 35)
  %cfg_icmpEq158 = icmp eq i32 %357, 1053821457
  %cfg_zext159 = zext i1 %cfg_icmpEq158 to i32
  %359 = zext i1 %cfg_icmpEq158 to i32
  %icmpEq658 = icmp eq i32 %cfg_zext159, %359
  %360 = icmp eq i32 %359, %359
  %icmpEq692 = icmp eq i1 %icmpEq658, %360
  %zext693 = zext i1 %icmpEq692 to i32
  call void @assert_ft(i32 %zext693, i32 35)
  %zext659 = zext i1 %icmpEq658 to i32
  call void @assert_ft(i32 %zext659, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext159, i32 %357, i32 35)
  %361 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %indvars.iv89, i64 %indvars.iv87
  %362 = getelementptr inbounds [1024 x [1024 x i32]], ptr @C, i64 0, i64 %306, i64 %332
  %363 = load i32, ptr %361, align 4
  %364 = load i32, ptr %362, align 4
  %icmpEq694 = icmp eq i32 %363, %364
  %zext695 = zext i1 %icmpEq694 to i32
  call void @assert_ft(i32 %zext695, i32 35)
  %365 = sext i32 %363 to i64
  %366 = sext i32 %364 to i64
  %icmpEq660 = icmp eq i64 %365, %366
  %zext661 = zext i1 %icmpEq660 to i32
  %367 = zext i1 %icmpEq660 to i32
  %icmpEq696 = icmp eq i32 %zext661, %367
  %zext697 = zext i1 %icmpEq696 to i32
  call void @assert_ft(i32 %zext697, i32 35)
  call void @assert_ft(i32 %zext661, i32 35)
  %368 = getelementptr inbounds [1048576 x float], ptr @RC, i64 0, i64 %365
  %369 = load float, ptr %368, align 4
  %370 = fcmp ogt float %369, 3.000000e+06
  %371 = fcmp ogt float %369, 3.000000e+06
  %icmpEq698 = icmp eq i1 %370, %371
  %zext699 = zext i1 %icmpEq698 to i32
  call void @assert_ft(i32 %zext699, i32 35)
  %372 = select i1 %370, i32 1105200391, i32 1156580632
  %373 = select i1 %371, i32 1105200391, i32 1156580632
  %icmpEq662 = icmp eq i32 %372, %373
  %zext663 = zext i1 %icmpEq662 to i32
  %374 = zext i1 %icmpEq662 to i32
  %icmpEq700 = icmp eq i32 %zext663, %374
  %zext701 = zext i1 %icmpEq700 to i32
  call void @assert_ft(i32 %zext701, i32 35)
  call void @assert_ft(i32 %zext663, i32 35)
  %375 = xor i32 1053821457, %372
  br i1 %370, label %376, label %387

376:                                              ; preds = %331
  %cfg_DestPhi160 = phi i32 [ 1053821457, %331 ]
  %377 = phi i32 [ 1053821457, %331 ]
  %cfg_DiffPhi161 = phi i32 [ %375, %331 ]
  %378 = phi i32 [ %375, %331 ]
  %icmpEq704 = icmp eq i32 %cfg_DiffPhi161, %378
  %zext705 = zext i1 %icmpEq704 to i32
  call void @assert_ft(i32 %zext705, i32 35)
  %icmpEq702 = icmp eq i32 %cfg_DestPhi160, %377
  %379 = icmp eq i32 %377, %377
  %icmpEq706 = icmp eq i1 %icmpEq702, %379
  %zext707 = zext i1 %icmpEq706 to i32
  call void @assert_ft(i32 %zext707, i32 35)
  %zext703 = zext i1 %icmpEq702 to i32
  call void @assert_ft(i32 %zext703, i32 35)
  %380 = xor i32 %cfg_DestPhi160, %cfg_DiffPhi161
  %cfg_icmpEq162 = icmp eq i32 %380, 1105200391
  %381 = icmp eq i32 %380, 1105200391
  %icmpEq708 = icmp eq i1 %cfg_icmpEq162, %381
  %zext709 = zext i1 %icmpEq708 to i32
  call void @assert_ft(i32 %zext709, i32 35)
  %cfg_zext163 = zext i1 %cfg_icmpEq162 to i32
  call void @assert_cfg_ft(i32 %cfg_zext163, i32 %380, i32 35)
  %382 = fdiv float %369, 1.000000e+06
  %383 = fpext float %382 to double
  %384 = fpext float %382 to double
  %385 = fadd double %338, %383
  %386 = fadd double %339, %384
  store double %385, ptr @total, align 8
  br label %387

387:                                              ; preds = %376, %331
  %total.promoted68 = phi double [ %total.promoted69, %331 ], [ %385, %376 ]
  %388 = phi double [ %335, %331 ], [ %386, %376 ]
  %389 = phi double [ %338, %331 ], [ %385, %376 ]
  %390 = phi double [ %339, %331 ], [ %386, %376 ]
  %cfg_DestPhi164 = phi i32 [ 1053821457, %331 ], [ 1105200391, %376 ]
  %391 = phi i32 [ 1053821457, %331 ], [ 1105200391, %376 ]
  %cfg_DiffPhi165 = phi i32 [ %375, %331 ], [ 84934687, %376 ]
  %392 = phi i32 [ %375, %331 ], [ 84934687, %376 ]
  %icmpEq712 = icmp eq i32 %cfg_DiffPhi165, %392
  %zext713 = zext i1 %icmpEq712 to i32
  call void @assert_ft(i32 %zext713, i32 35)
  %icmpEq710 = icmp eq i32 %cfg_DestPhi164, %391
  %393 = icmp eq i32 %391, %391
  %icmpEq714 = icmp eq i1 %icmpEq710, %393
  %zext715 = zext i1 %icmpEq714 to i32
  call void @assert_ft(i32 %zext715, i32 35)
  %zext711 = zext i1 %icmpEq710 to i32
  call void @assert_ft(i32 %zext711, i32 35)
  %394 = xor i32 %cfg_DestPhi164, %cfg_DiffPhi165
  %cfg_icmpEq166 = icmp eq i32 %394, 1156580632
  %395 = icmp eq i32 %394, 1156580632
  %icmpEq716 = icmp eq i1 %cfg_icmpEq166, %395
  %zext717 = zext i1 %icmpEq716 to i32
  call void @assert_ft(i32 %zext717, i32 35)
  %cfg_zext167 = zext i1 %cfg_icmpEq166 to i32
  call void @assert_cfg_ft(i32 %cfg_zext167, i32 %394, i32 35)
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 3
  %396 = icmp ult i64 %indvars.iv.next88, %303
  %397 = icmp ult i64 %indvars.iv.next88, %304
  %icmpEq718 = icmp eq i1 %396, %397
  %zext719 = zext i1 %icmpEq718 to i32
  call void @assert_ft(i32 %zext719, i32 35)
  %398 = select i1 %396, i32 1053821457, i32 1207960352
  %399 = xor i32 1156580632, %398
  br i1 %396, label %331, label %._crit_edge65

._crit_edge65:                                    ; preds = %387
  %cfg_DestPhi168 = phi i32 [ 1156580632, %387 ]
  %400 = phi i32 [ 1156580632, %387 ]
  %cfg_DiffPhi169 = phi i32 [ %399, %387 ]
  %401 = phi i32 [ %399, %387 ]
  %icmpEq722 = icmp eq i32 %cfg_DiffPhi169, %401
  %zext723 = zext i1 %icmpEq722 to i32
  call void @assert_ft(i32 %zext723, i32 35)
  %icmpEq720 = icmp eq i32 %cfg_DestPhi168, %400
  %402 = icmp eq i32 %400, %400
  %icmpEq724 = icmp eq i1 %icmpEq720, %402
  %zext725 = zext i1 %icmpEq724 to i32
  call void @assert_ft(i32 %zext725, i32 35)
  %zext721 = zext i1 %icmpEq720 to i32
  call void @assert_ft(i32 %zext721, i32 35)
  %403 = xor i32 %cfg_DestPhi168, %cfg_DiffPhi169
  %cfg_icmpEq170 = icmp eq i32 %403, 1207960352
  %404 = icmp eq i32 %403, 1207960352
  %icmpEq726 = icmp eq i1 %cfg_icmpEq170, %404
  %zext727 = zext i1 %icmpEq726 to i32
  call void @assert_ft(i32 %zext727, i32 35)
  %cfg_zext171 = zext i1 %cfg_icmpEq170 to i32
  call void @assert_cfg_ft(i32 %cfg_zext171, i32 %403, i32 35)
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 2
  %405 = icmp ult i64 %indvars.iv.next90, %303
  %406 = icmp ult i64 %indvars.iv.next90, %304
  %icmpEq728 = icmp eq i1 %405, %406
  %zext729 = zext i1 %icmpEq728 to i32
  call void @assert_ft(i32 %zext729, i32 35)
  %407 = select i1 %405, i32 1002439430, i32 1259340289
  %408 = xor i32 1207960352, %407
  br i1 %405, label %.lr.ph64, label %._crit_edge73

._crit_edge73:                                    ; preds = %._crit_edge65
  %cfg_DestPhi172 = phi i32 [ 1207960352, %._crit_edge65 ]
  %409 = phi i32 [ 1207960352, %._crit_edge65 ]
  %410 = phi i32 [ 1207960352, %._crit_edge65 ]
  %411 = phi i32 [ 1207960352, %._crit_edge65 ]
  %412 = phi i32 [ 1207960352, %._crit_edge65 ]
  %413 = phi i32 [ 1207960352, %._crit_edge65 ]
  %414 = phi i32 [ 1207960352, %._crit_edge65 ]
  %cfg_DiffPhi173 = phi i32 [ %408, %._crit_edge65 ]
  %415 = phi i32 [ %408, %._crit_edge65 ]
  %416 = phi i32 [ %408, %._crit_edge65 ]
  %417 = phi i32 [ %408, %._crit_edge65 ]
  %418 = phi i32 [ %408, %._crit_edge65 ]
  %419 = phi i32 [ %408, %._crit_edge65 ]
  %420 = phi i32 [ %408, %._crit_edge65 ]
  %421 = phi i32 [ %408, %._crit_edge65 ]
  %icmpEq778 = icmp eq i32 %420, %421
  %zext779 = zext i1 %icmpEq778 to i32
  call void @assert_ft(i32 %zext779, i32 35)
  %icmpEq776 = icmp eq i32 %418, %419
  %422 = icmp eq i32 %419, %419
  %icmpEq780 = icmp eq i1 %icmpEq776, %422
  %zext781 = zext i1 %icmpEq780 to i32
  call void @assert_ft(i32 %zext781, i32 35)
  %zext777 = zext i1 %icmpEq776 to i32
  call void @assert_ft(i32 %zext777, i32 35)
  %icmpEq774 = icmp eq i32 %416, %417
  %zext775 = zext i1 %icmpEq774 to i32
  %423 = zext i1 %icmpEq774 to i32
  %icmpEq782 = icmp eq i32 %zext775, %423
  %zext783 = zext i1 %icmpEq782 to i32
  call void @assert_ft(i32 %zext783, i32 35)
  call void @assert_ft(i32 %zext775, i32 35)
  %icmpEq772 = icmp eq i32 %cfg_DiffPhi173, %415
  %zext773 = zext i1 %icmpEq772 to i32
  call void @assert_ft(i32 %zext773, i32 35)
  %icmpEq770 = icmp eq i32 %413, %414
  %424 = icmp eq i32 %414, %414
  %icmpEq784 = icmp eq i1 %icmpEq770, %424
  %zext785 = zext i1 %icmpEq784 to i32
  call void @assert_ft(i32 %zext785, i32 35)
  %zext771 = zext i1 %icmpEq770 to i32
  call void @assert_ft(i32 %zext771, i32 35)
  %icmpEq768 = icmp eq i32 %411, %412
  %zext769 = zext i1 %icmpEq768 to i32
  %425 = zext i1 %icmpEq768 to i32
  %icmpEq786 = icmp eq i32 %zext769, %425
  %zext787 = zext i1 %icmpEq786 to i32
  call void @assert_ft(i32 %zext787, i32 35)
  call void @assert_ft(i32 %zext769, i32 35)
  %icmpEq766 = icmp eq i32 %409, %410
  %zext767 = zext i1 %icmpEq766 to i32
  call void @assert_ft(i32 %zext767, i32 35)
  %icmpEq746 = icmp eq i32 %418, %420
  %426 = icmp eq i32 %419, %421
  %icmpEq788 = icmp eq i1 %icmpEq746, %426
  %zext789 = zext i1 %icmpEq788 to i32
  call void @assert_ft(i32 %zext789, i32 35)
  %zext747 = zext i1 %icmpEq746 to i32
  call void @assert_ft(i32 %zext747, i32 35)
  %icmpEq744 = icmp eq i32 %cfg_DiffPhi173, %416
  %427 = icmp eq i32 %415, %417
  %428 = icmp eq i32 %415, %417
  %icmpEq790 = icmp eq i1 %427, %428
  %zext791 = zext i1 %icmpEq790 to i32
  call void @assert_ft(i32 %zext791, i32 35)
  %icmpEq748 = icmp eq i1 %icmpEq744, %427
  %zext749 = zext i1 %icmpEq748 to i32
  call void @assert_ft(i32 %zext749, i32 35)
  %zext745 = zext i1 %icmpEq744 to i32
  %429 = zext i1 %427 to i32
  %icmpEq792 = icmp eq i32 %zext745, %429
  %zext793 = zext i1 %icmpEq792 to i32
  call void @assert_ft(i32 %zext793, i32 35)
  call void @assert_ft(i32 %zext745, i32 35)
  %icmpEq742 = icmp eq i32 %411, %413
  %zext743 = zext i1 %icmpEq742 to i32
  %430 = zext i1 %icmpEq742 to i32
  %431 = zext i1 %icmpEq742 to i32
  %icmpEq794 = icmp eq i32 %430, %431
  %zext795 = zext i1 %icmpEq794 to i32
  call void @assert_ft(i32 %zext795, i32 35)
  %icmpEq750 = icmp eq i32 %zext743, %430
  %zext751 = zext i1 %icmpEq750 to i32
  call void @assert_ft(i32 %zext751, i32 35)
  call void @assert_ft(i32 %zext743, i32 35)
  %icmpEq740 = icmp eq i32 %cfg_DestPhi172, %409
  %432 = icmp eq i32 %409, %410
  %icmpEq796 = icmp eq i1 %icmpEq740, %432
  %zext797 = zext i1 %icmpEq796 to i32
  call void @assert_ft(i32 %zext797, i32 35)
  %zext741 = zext i1 %icmpEq740 to i32
  call void @assert_ft(i32 %zext741, i32 35)
  %icmpEq732 = icmp eq i32 %cfg_DiffPhi173, %418
  %433 = icmp eq i32 %415, %419
  %434 = icmp eq i32 %415, %419
  %icmpEq798 = icmp eq i1 %433, %434
  %zext799 = zext i1 %icmpEq798 to i32
  call void @assert_ft(i32 %zext799, i32 35)
  %icmpEq752 = icmp eq i1 %icmpEq732, %433
  %zext753 = zext i1 %icmpEq752 to i32
  call void @assert_ft(i32 %zext753, i32 35)
  %zext733 = zext i1 %icmpEq732 to i32
  %435 = zext i1 %433 to i32
  %icmpEq800 = icmp eq i32 %zext733, %435
  %zext801 = zext i1 %icmpEq800 to i32
  call void @assert_ft(i32 %zext801, i32 35)
  call void @assert_ft(i32 %zext733, i32 35)
  %icmpEq730 = icmp eq i32 %cfg_DestPhi172, %411
  %436 = icmp eq i32 %409, %412
  %437 = icmp eq i32 %409, %412
  %438 = icmp eq i32 %409, %412
  %icmpEq802 = icmp eq i1 %437, %438
  %zext803 = zext i1 %icmpEq802 to i32
  call void @assert_ft(i32 %zext803, i32 35)
  %icmpEq754 = icmp eq i1 %436, %437
  %zext755 = zext i1 %icmpEq754 to i32
  call void @assert_ft(i32 %zext755, i32 35)
  %icmpEq734 = icmp eq i1 %icmpEq730, %436
  %439 = icmp eq i1 %436, %437
  %icmpEq804 = icmp eq i1 %icmpEq734, %439
  %zext805 = zext i1 %icmpEq804 to i32
  call void @assert_ft(i32 %zext805, i32 35)
  %zext735 = zext i1 %icmpEq734 to i32
  call void @assert_ft(i32 %zext735, i32 35)
  %zext731 = zext i1 %icmpEq730 to i32
  %440 = zext i1 %436 to i32
  %441 = zext i1 %436 to i32
  %icmpEq806 = icmp eq i32 %440, %441
  %zext807 = zext i1 %icmpEq806 to i32
  call void @assert_ft(i32 %zext807, i32 35)
  %icmpEq756 = icmp eq i32 %zext731, %440
  %zext757 = zext i1 %icmpEq756 to i32
  call void @assert_ft(i32 %zext757, i32 35)
  call void @assert_ft(i32 %zext731, i32 35)
  %442 = xor i32 %cfg_DestPhi172, %cfg_DiffPhi173
  %443 = xor i32 %409, %415
  %icmpEq808 = icmp eq i32 %442, %443
  %zext809 = zext i1 %icmpEq808 to i32
  call void @assert_ft(i32 %zext809, i32 35)
  %cfg_icmpEq174 = icmp eq i32 %442, 1259340289
  %444 = icmp eq i32 %443, 1259340289
  %445 = icmp eq i32 %443, 1259340289
  %icmpEq758 = icmp eq i1 %444, %445
  %446 = icmp eq i1 %445, %445
  %icmpEq810 = icmp eq i1 %icmpEq758, %446
  %zext811 = zext i1 %icmpEq810 to i32
  call void @assert_ft(i32 %zext811, i32 35)
  %zext759 = zext i1 %icmpEq758 to i32
  call void @assert_ft(i32 %zext759, i32 35)
  %icmpEq736 = icmp eq i1 %cfg_icmpEq174, %444
  %zext737 = zext i1 %icmpEq736 to i32
  %447 = zext i1 %icmpEq736 to i32
  %icmpEq812 = icmp eq i32 %zext737, %447
  %zext813 = zext i1 %icmpEq812 to i32
  call void @assert_ft(i32 %zext813, i32 35)
  call void @assert_ft(i32 %zext737, i32 35)
  %cfg_zext175 = zext i1 %cfg_icmpEq174 to i32
  %448 = zext i1 %444 to i32
  %icmpEq760 = icmp eq i32 %cfg_zext175, %448
  %449 = icmp eq i32 %448, %448
  %icmpEq814 = icmp eq i1 %icmpEq760, %449
  %zext815 = zext i1 %icmpEq814 to i32
  call void @assert_ft(i32 %zext815, i32 35)
  %zext761 = zext i1 %icmpEq760 to i32
  call void @assert_ft(i32 %zext761, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext175, i32 %442, i32 35)
  %450 = icmp eq i32 %284, 64
  %451 = icmp eq i32 %285, 64
  %icmpEq816 = icmp eq i1 %450, %451
  %zext817 = zext i1 %icmpEq816 to i32
  call void @assert_ft(i32 %zext817, i32 35)
  %452 = select i1 %450, i32 1362101255, i32 1310720271
  %453 = select i1 %451, i32 1362101255, i32 1310720271
  %454 = select i1 %451, i32 1362101255, i32 1310720271
  %icmpEq762 = icmp eq i32 %453, %454
  %455 = icmp eq i32 %454, %454
  %icmpEq818 = icmp eq i1 %icmpEq762, %455
  %zext819 = zext i1 %icmpEq818 to i32
  call void @assert_ft(i32 %zext819, i32 35)
  %zext763 = zext i1 %icmpEq762 to i32
  call void @assert_ft(i32 %zext763, i32 35)
  %icmpEq738 = icmp eq i32 %452, %453
  %zext739 = zext i1 %icmpEq738 to i32
  %456 = zext i1 %icmpEq738 to i32
  %icmpEq820 = icmp eq i32 %zext739, %456
  %zext821 = zext i1 %icmpEq820 to i32
  call void @assert_ft(i32 %zext821, i32 35)
  call void @assert_ft(i32 %zext739, i32 35)
  %457 = xor i32 1259340289, %452
  %458 = xor i32 1259340289, %453
  %icmpEq764 = icmp eq i32 %457, %458
  %459 = icmp eq i32 %458, %458
  %icmpEq822 = icmp eq i1 %icmpEq764, %459
  %zext823 = zext i1 %icmpEq822 to i32
  call void @assert_ft(i32 %zext823, i32 35)
  %zext765 = zext i1 %icmpEq764 to i32
  call void @assert_ft(i32 %zext765, i32 35)
  br i1 %450, label %465, label %._crit_edge73.thread

._crit_edge73.thread:                             ; preds = %._crit_edge73, %._crit_edge62
  %cfg_DestPhi176 = phi i32 [ 899679767, %._crit_edge62 ], [ 1259340289, %._crit_edge73 ]
  %460 = phi i32 [ 899679767, %._crit_edge62 ], [ 1259340289, %._crit_edge73 ]
  %cfg_DiffPhi177 = phi i32 [ %288, %._crit_edge62 ], [ %457, %._crit_edge73 ]
  %461 = phi i32 [ %288, %._crit_edge62 ], [ %458, %._crit_edge73 ]
  %icmpEq826 = icmp eq i32 %cfg_DiffPhi177, %461
  %zext827 = zext i1 %icmpEq826 to i32
  call void @assert_ft(i32 %zext827, i32 35)
  %icmpEq824 = icmp eq i32 %cfg_DestPhi176, %460
  %462 = icmp eq i32 %460, %460
  %icmpEq828 = icmp eq i1 %icmpEq824, %462
  %zext829 = zext i1 %icmpEq828 to i32
  call void @assert_ft(i32 %zext829, i32 35)
  %zext825 = zext i1 %icmpEq824 to i32
  call void @assert_ft(i32 %zext825, i32 35)
  %463 = xor i32 %cfg_DestPhi176, %cfg_DiffPhi177
  %cfg_icmpEq178 = icmp eq i32 %463, 1310720271
  %464 = icmp eq i32 %463, 1310720271
  %icmpEq830 = icmp eq i1 %cfg_icmpEq178, %464
  %zext831 = zext i1 %icmpEq830 to i32
  call void @assert_ft(i32 %zext831, i32 35)
  %cfg_zext179 = zext i1 %cfg_icmpEq178 to i32
  call void @assert_cfg_ft(i32 %cfg_zext179, i32 %463, i32 35)
  br label %465

465:                                              ; preds = %._crit_edge73.thread, %._crit_edge73
  %.str.6.sink = phi ptr [ @.str.6, %._crit_edge73.thread ], [ @.str.5, %._crit_edge73 ]
  %466 = phi ptr [ @.str.6, %._crit_edge73.thread ], [ @.str.5, %._crit_edge73 ]
  %cfg_DestPhi180 = phi i32 [ 1259340289, %._crit_edge73 ], [ 1310720271, %._crit_edge73.thread ]
  %467 = phi i32 [ 1259340289, %._crit_edge73 ], [ 1310720271, %._crit_edge73.thread ]
  %cfg_DiffPhi181 = phi i32 [ %457, %._crit_edge73 ], [ 521143560, %._crit_edge73.thread ]
  %468 = phi i32 [ %458, %._crit_edge73 ], [ 521143560, %._crit_edge73.thread ]
  %icmpEq834 = icmp eq i32 %cfg_DiffPhi181, %468
  %zext835 = zext i1 %icmpEq834 to i32
  call void @assert_ft(i32 %zext835, i32 35)
  %icmpEq832 = icmp eq i32 %cfg_DestPhi180, %467
  %469 = icmp eq i32 %467, %467
  %icmpEq836 = icmp eq i1 %icmpEq832, %469
  %zext837 = zext i1 %icmpEq836 to i32
  call void @assert_ft(i32 %zext837, i32 35)
  %zext833 = zext i1 %icmpEq832 to i32
  call void @assert_ft(i32 %zext833, i32 35)
  %470 = xor i32 %cfg_DestPhi180, %cfg_DiffPhi181
  %cfg_icmpEq182 = icmp eq i32 %470, 1362101255
  %471 = icmp eq i32 %470, 1362101255
  %icmpEq838 = icmp eq i1 %cfg_icmpEq182, %471
  %zext839 = zext i1 %icmpEq838 to i32
  call void @assert_ft(i32 %zext839, i32 35)
  %cfg_zext183 = zext i1 %cfg_icmpEq182 to i32
  call void @assert_cfg_ft(i32 %cfg_zext183, i32 %470, i32 35)
  %472 = load double, ptr @total, align 8
  %473 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.6.sink, double noundef %472)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

declare void @exit.4(i32, ...)

declare i32 @printf.5(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  call void @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

define void @assert_cfg_ft(i32 %0, i32 %1, i32 %2) {
entry:
  %3 = icmp ne i32 %0, 1
  br i1 %3, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
