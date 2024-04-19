; ModuleID = 'basicmath-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\0Asqrt(%lX) = %X, remainder = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.1 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [3 x double], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.int_sqrt, align 4
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  br label %4

4:                                                ; preds = %4, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %4 ]
  %5 = phi i64 [ 0, %0 ], [ %indvars.iv.next, %4 ]
  %cfg_DestPhi = phi i32 [ 128976145, %0 ], [ 180356386, %4 ]
  %6 = phi i32 [ 128976145, %0 ], [ 180356386, %4 ]
  %cfg_DiffPhi = phi i32 [ 225443891, %0 ], [ %15, %4 ]
  %7 = phi i32 [ 225443891, %0 ], [ %15, %4 ]
  %icmpEq297 = icmp eq i32 %cfg_DiffPhi, %7
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  %icmpEq295 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq299 = icmp eq i1 %icmpEq295, %8
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  %icmpEq = icmp eq i64 %indvars.iv, %5
  %zext = zext i1 %icmpEq to i32
  %9 = zext i1 %icmpEq to i32
  %icmpEq301 = icmp eq i32 %zext, %9
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %10 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %10, 180356386
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %11 = zext i1 %cfg_icmpEq to i32
  %icmpEq303 = icmp eq i32 %cfg_zext, %11
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %10, i32 35)
  call void @usqrt(i64 noundef %indvars.iv, ptr noundef nonnull %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %12 = icmp ult i64 %indvars.iv, 98
  %13 = icmp ult i64 %5, 98
  %icmpEq305 = icmp eq i1 %12, %13
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %14 = select i1 %12, i32 180356386, i32 231736834
  %15 = xor i32 180356386, %14
  br i1 %12, label %4, label %16

16:                                               ; preds = %4
  %cfg_DestPhi159 = phi i32 [ 180356386, %4 ]
  %17 = phi i32 [ 180356386, %4 ]
  %cfg_DiffPhi160 = phi i32 [ %15, %4 ]
  %18 = phi i32 [ %15, %4 ]
  %icmpEq309 = icmp eq i32 %cfg_DiffPhi160, %18
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %icmpEq307 = icmp eq i32 %cfg_DestPhi159, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq311 = icmp eq i1 %icmpEq307, %19
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %20 = xor i32 %cfg_DestPhi159, %cfg_DiffPhi160
  %cfg_icmpEq161 = icmp eq i32 %20, 231736834
  %21 = icmp eq i32 %20, 231736834
  %icmpEq313 = icmp eq i1 %cfg_icmpEq161, %21
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %cfg_zext162 = zext i1 %cfg_icmpEq161 to i32
  call void @assert_cfg_ft(i32 %cfg_zext162, i32 %20, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %23 = load i32, ptr %2, align 4
  %24 = load i32, ptr %2, align 4
  %icmpEq315 = icmp eq i32 %23, %24
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  %25 = icmp sgt i32 %23, 0
  %26 = select i1 %25, i32 283116037, i32 385877508
  %27 = xor i32 231736834, %26
  br i1 %25, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %16
  %cfg_DestPhi163 = phi i32 [ 231736834, %16 ]
  %28 = phi i32 [ 231736834, %16 ]
  %cfg_DiffPhi164 = phi i32 [ %27, %16 ]
  %29 = phi i32 [ %27, %16 ]
  %icmpEq319 = icmp eq i32 %cfg_DiffPhi164, %29
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %icmpEq317 = icmp eq i32 %cfg_DestPhi163, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq321 = icmp eq i1 %icmpEq317, %30
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %31 = xor i32 %cfg_DestPhi163, %cfg_DiffPhi164
  %cfg_icmpEq165 = icmp eq i32 %31, 283116037
  %32 = icmp eq i32 %31, 283116037
  %icmpEq323 = icmp eq i1 %cfg_icmpEq165, %32
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  %cfg_zext166 = zext i1 %cfg_icmpEq165 to i32
  call void @assert_cfg_ft(i32 %cfg_zext166, i32 %31, i32 35)
  %wide.trip.count = zext i32 %23 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next130, %.lr.ph ]
  %33 = phi i64 [ 0, %.lr.ph.preheader ], [ %43, %.lr.ph ]
  %cfg_DestPhi167 = phi i32 [ 283116037, %.lr.ph.preheader ], [ 334497544, %.lr.ph ]
  %34 = phi i32 [ 283116037, %.lr.ph.preheader ], [ 334497544, %.lr.ph ]
  %cfg_DiffPhi168 = phi i32 [ 51381517, %.lr.ph.preheader ], [ %45, %.lr.ph ]
  %35 = phi i32 [ 51381517, %.lr.ph.preheader ], [ %45, %.lr.ph ]
  %icmpEq329 = icmp eq i32 %cfg_DiffPhi168, %35
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  %icmpEq327 = icmp eq i32 %cfg_DestPhi167, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq331 = icmp eq i1 %icmpEq327, %36
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %icmpEq325 = icmp eq i64 %indvars.iv129, %33
  %zext326 = zext i1 %icmpEq325 to i32
  %37 = zext i1 %icmpEq325 to i32
  %icmpEq333 = icmp eq i32 %zext326, %37
  %zext334 = zext i1 %icmpEq333 to i32
  call void @assert_ft(i32 %zext334, i32 35)
  call void @assert_ft(i32 %zext326, i32 35)
  %38 = xor i32 %cfg_DestPhi167, %cfg_DiffPhi168
  %cfg_icmpEq169 = icmp eq i32 %38, 334497544
  %cfg_zext170 = zext i1 %cfg_icmpEq169 to i32
  %39 = zext i1 %cfg_icmpEq169 to i32
  %icmpEq335 = icmp eq i32 %cfg_zext170, %39
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext170, i32 %38, i32 35)
  %40 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv129
  %41 = load double, ptr %40, align 8
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %41)
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %43 = add nuw nsw i64 %33, 1
  %icmpEq337 = icmp eq i64 %indvars.iv.next130, %43
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count
  %44 = select i1 %exitcond.not, i32 385877508, i32 334497544
  %45 = xor i32 334497544, %44
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %16
  %cfg_DestPhi171 = phi i32 [ 334497544, %.lr.ph ], [ 231736834, %16 ]
  %46 = phi i32 [ 334497544, %.lr.ph ], [ 231736834, %16 ]
  %cfg_DiffPhi172 = phi i32 [ %45, %.lr.ph ], [ %27, %16 ]
  %47 = phi i32 [ %45, %.lr.ph ], [ %27, %16 ]
  %icmpEq341 = icmp eq i32 %cfg_DiffPhi172, %47
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  %icmpEq339 = icmp eq i32 %cfg_DestPhi171, %46
  %48 = icmp eq i32 %46, %46
  %icmpEq343 = icmp eq i1 %icmpEq339, %48
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %49 = xor i32 %cfg_DestPhi171, %cfg_DiffPhi172
  %cfg_icmpEq173 = icmp eq i32 %49, 385877508
  %50 = icmp eq i32 %49, 385877508
  %icmpEq345 = icmp eq i1 %cfg_icmpEq173, %50
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %cfg_zext174 = zext i1 %cfg_icmpEq173 to i32
  call void @assert_cfg_ft(i32 %cfg_zext174, i32 %49, i32 35)
  %putchar = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %52 = load i32, ptr %2, align 4
  %53 = load i32, ptr %2, align 4
  %icmpEq347 = icmp eq i32 %52, %53
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %54 = icmp sgt i32 %52, 0
  %55 = select i1 %54, i32 437256722, i32 540018182
  %56 = xor i32 385877508, %55
  br i1 %54, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %cfg_DestPhi175 = phi i32 [ 385877508, %._crit_edge ]
  %57 = phi i32 [ 385877508, %._crit_edge ]
  %cfg_DiffPhi176 = phi i32 [ %56, %._crit_edge ]
  %58 = phi i32 [ %56, %._crit_edge ]
  %icmpEq351 = icmp eq i32 %cfg_DiffPhi176, %58
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %icmpEq349 = icmp eq i32 %cfg_DestPhi175, %57
  %59 = icmp eq i32 %57, %57
  %icmpEq353 = icmp eq i1 %icmpEq349, %59
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  %60 = xor i32 %cfg_DestPhi175, %cfg_DiffPhi176
  %cfg_icmpEq177 = icmp eq i32 %60, 437256722
  %61 = icmp eq i32 %60, 437256722
  %icmpEq355 = icmp eq i1 %cfg_icmpEq177, %61
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %cfg_zext178 = zext i1 %cfg_icmpEq177 to i32
  call void @assert_cfg_ft(i32 %cfg_zext178, i32 %60, i32 35)
  %wide.trip.count133 = zext i32 %52 to i64
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101, %.lr.ph101.preheader
  %indvars.iv131 = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next132, %.lr.ph101 ]
  %62 = phi i64 [ 0, %.lr.ph101.preheader ], [ %72, %.lr.ph101 ]
  %cfg_DestPhi179 = phi i32 [ 437256722, %.lr.ph101.preheader ], [ 488638243, %.lr.ph101 ]
  %63 = phi i32 [ 437256722, %.lr.ph101.preheader ], [ 488638243, %.lr.ph101 ]
  %cfg_DiffPhi180 = phi i32 [ 120587569, %.lr.ph101.preheader ], [ %74, %.lr.ph101 ]
  %64 = phi i32 [ 120587569, %.lr.ph101.preheader ], [ %74, %.lr.ph101 ]
  %icmpEq361 = icmp eq i32 %cfg_DiffPhi180, %64
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  %icmpEq359 = icmp eq i32 %cfg_DestPhi179, %63
  %65 = icmp eq i32 %63, %63
  %icmpEq363 = icmp eq i1 %icmpEq359, %65
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %icmpEq357 = icmp eq i64 %indvars.iv131, %62
  %zext358 = zext i1 %icmpEq357 to i32
  %66 = zext i1 %icmpEq357 to i32
  %icmpEq365 = icmp eq i32 %zext358, %66
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  call void @assert_ft(i32 %zext358, i32 35)
  %67 = xor i32 %cfg_DestPhi179, %cfg_DiffPhi180
  %cfg_icmpEq181 = icmp eq i32 %67, 488638243
  %cfg_zext182 = zext i1 %cfg_icmpEq181 to i32
  %68 = zext i1 %cfg_icmpEq181 to i32
  %icmpEq367 = icmp eq i32 %cfg_zext182, %68
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext182, i32 %67, i32 35)
  %69 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv131
  %70 = load double, ptr %69, align 8
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %70)
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %72 = add nuw nsw i64 %62, 1
  %icmpEq369 = icmp eq i64 %indvars.iv.next132, %72
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count133
  %73 = select i1 %exitcond134.not, i32 540018182, i32 488638243
  %74 = xor i32 488638243, %73
  br i1 %exitcond134.not, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101, %._crit_edge
  %cfg_DestPhi183 = phi i32 [ 488638243, %.lr.ph101 ], [ 385877508, %._crit_edge ]
  %75 = phi i32 [ 488638243, %.lr.ph101 ], [ 385877508, %._crit_edge ]
  %cfg_DiffPhi184 = phi i32 [ %74, %.lr.ph101 ], [ %56, %._crit_edge ]
  %76 = phi i32 [ %74, %.lr.ph101 ], [ %56, %._crit_edge ]
  %icmpEq373 = icmp eq i32 %cfg_DiffPhi184, %76
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %icmpEq371 = icmp eq i32 %cfg_DestPhi183, %75
  %77 = icmp eq i32 %75, %75
  %icmpEq375 = icmp eq i1 %icmpEq371, %77
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  %78 = xor i32 %cfg_DestPhi183, %cfg_DiffPhi184
  %cfg_icmpEq185 = icmp eq i32 %78, 540018182
  %79 = icmp eq i32 %78, 540018182
  %icmpEq377 = icmp eq i1 %cfg_icmpEq185, %79
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %cfg_zext186 = zext i1 %cfg_icmpEq185 to i32
  call void @assert_cfg_ft(i32 %cfg_zext186, i32 %78, i32 35)
  %putchar85 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %81 = load i32, ptr %2, align 4
  %82 = load i32, ptr %2, align 4
  %icmpEq379 = icmp eq i32 %81, %82
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %83 = icmp sgt i32 %81, 0
  %84 = select i1 %83, i32 591397407, i32 694158856
  %85 = xor i32 540018182, %84
  br i1 %83, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %._crit_edge102
  %cfg_DestPhi187 = phi i32 [ 540018182, %._crit_edge102 ]
  %86 = phi i32 [ 540018182, %._crit_edge102 ]
  %cfg_DiffPhi188 = phi i32 [ %85, %._crit_edge102 ]
  %87 = phi i32 [ %85, %._crit_edge102 ]
  %icmpEq383 = icmp eq i32 %cfg_DiffPhi188, %87
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  %icmpEq381 = icmp eq i32 %cfg_DestPhi187, %86
  %88 = icmp eq i32 %86, %86
  %icmpEq385 = icmp eq i1 %icmpEq381, %88
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  %89 = xor i32 %cfg_DestPhi187, %cfg_DiffPhi188
  %cfg_icmpEq189 = icmp eq i32 %89, 591397407
  %90 = icmp eq i32 %89, 591397407
  %icmpEq387 = icmp eq i1 %cfg_icmpEq189, %90
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  %cfg_zext190 = zext i1 %cfg_icmpEq189 to i32
  call void @assert_cfg_ft(i32 %cfg_zext190, i32 %89, i32 35)
  %wide.trip.count137 = zext i32 %81 to i64
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader
  %indvars.iv135 = phi i64 [ 0, %.lr.ph105.preheader ], [ %indvars.iv.next136, %.lr.ph105 ]
  %91 = phi i64 [ 0, %.lr.ph105.preheader ], [ %101, %.lr.ph105 ]
  %cfg_DestPhi191 = phi i32 [ 591397407, %.lr.ph105.preheader ], [ 642778905, %.lr.ph105 ]
  %92 = phi i32 [ 591397407, %.lr.ph105.preheader ], [ 642778905, %.lr.ph105 ]
  %cfg_DiffPhi192 = phi i32 [ 84935942, %.lr.ph105.preheader ], [ %103, %.lr.ph105 ]
  %93 = phi i32 [ 84935942, %.lr.ph105.preheader ], [ %103, %.lr.ph105 ]
  %icmpEq393 = icmp eq i32 %cfg_DiffPhi192, %93
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  %icmpEq391 = icmp eq i32 %cfg_DestPhi191, %92
  %94 = icmp eq i32 %92, %92
  %icmpEq395 = icmp eq i1 %icmpEq391, %94
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %icmpEq389 = icmp eq i64 %indvars.iv135, %91
  %zext390 = zext i1 %icmpEq389 to i32
  %95 = zext i1 %icmpEq389 to i32
  %icmpEq397 = icmp eq i32 %zext390, %95
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  call void @assert_ft(i32 %zext390, i32 35)
  %96 = xor i32 %cfg_DestPhi191, %cfg_DiffPhi192
  %cfg_icmpEq193 = icmp eq i32 %96, 642778905
  %cfg_zext194 = zext i1 %cfg_icmpEq193 to i32
  %97 = zext i1 %cfg_icmpEq193 to i32
  %icmpEq399 = icmp eq i32 %cfg_zext194, %97
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext194, i32 %96, i32 35)
  %98 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv135
  %99 = load double, ptr %98, align 8
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %99)
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %101 = add nuw nsw i64 %91, 1
  %icmpEq401 = icmp eq i64 %indvars.iv.next136, %101
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count137
  %102 = select i1 %exitcond138.not, i32 694158856, i32 642778905
  %103 = xor i32 642778905, %102
  br i1 %exitcond138.not, label %._crit_edge106, label %.lr.ph105

._crit_edge106:                                   ; preds = %.lr.ph105, %._crit_edge102
  %cfg_DestPhi195 = phi i32 [ 642778905, %.lr.ph105 ], [ 540018182, %._crit_edge102 ]
  %104 = phi i32 [ 642778905, %.lr.ph105 ], [ 540018182, %._crit_edge102 ]
  %cfg_DiffPhi196 = phi i32 [ %103, %.lr.ph105 ], [ %85, %._crit_edge102 ]
  %105 = phi i32 [ %103, %.lr.ph105 ], [ %85, %._crit_edge102 ]
  %icmpEq405 = icmp eq i32 %cfg_DiffPhi196, %105
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %icmpEq403 = icmp eq i32 %cfg_DestPhi195, %104
  %106 = icmp eq i32 %104, %104
  %icmpEq407 = icmp eq i1 %icmpEq403, %106
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %zext404 = zext i1 %icmpEq403 to i32
  call void @assert_ft(i32 %zext404, i32 35)
  %107 = xor i32 %cfg_DestPhi195, %cfg_DiffPhi196
  %cfg_icmpEq197 = icmp eq i32 %107, 694158856
  %108 = icmp eq i32 %107, 694158856
  %icmpEq409 = icmp eq i1 %cfg_icmpEq197, %108
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  %cfg_zext198 = zext i1 %cfg_icmpEq197 to i32
  call void @assert_cfg_ft(i32 %cfg_zext198, i32 %107, i32 35)
  %putchar86 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %110 = load i32, ptr %2, align 4
  %111 = load i32, ptr %2, align 4
  %icmpEq411 = icmp eq i32 %110, %111
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  %112 = icmp sgt i32 %110, 0
  %113 = select i1 %112, i32 745538055, i32 848299530
  %114 = xor i32 694158856, %113
  br i1 %112, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %._crit_edge106
  %cfg_DestPhi199 = phi i32 [ 694158856, %._crit_edge106 ]
  %115 = phi i32 [ 694158856, %._crit_edge106 ]
  %cfg_DiffPhi200 = phi i32 [ %114, %._crit_edge106 ]
  %116 = phi i32 [ %114, %._crit_edge106 ]
  %icmpEq415 = icmp eq i32 %cfg_DiffPhi200, %116
  %zext416 = zext i1 %icmpEq415 to i32
  call void @assert_ft(i32 %zext416, i32 35)
  %icmpEq413 = icmp eq i32 %cfg_DestPhi199, %115
  %117 = icmp eq i32 %115, %115
  %icmpEq417 = icmp eq i1 %icmpEq413, %117
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  %zext414 = zext i1 %icmpEq413 to i32
  call void @assert_ft(i32 %zext414, i32 35)
  %118 = xor i32 %cfg_DestPhi199, %cfg_DiffPhi200
  %cfg_icmpEq201 = icmp eq i32 %118, 745538055
  %119 = icmp eq i32 %118, 745538055
  %icmpEq419 = icmp eq i1 %cfg_icmpEq201, %119
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %cfg_zext202 = zext i1 %cfg_icmpEq201 to i32
  call void @assert_cfg_ft(i32 %cfg_zext202, i32 %118, i32 35)
  %wide.trip.count141 = zext i32 %110 to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader
  %indvars.iv139 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next140, %.lr.ph109 ]
  %120 = phi i64 [ 0, %.lr.ph109.preheader ], [ %130, %.lr.ph109 ]
  %cfg_DestPhi203 = phi i32 [ 745538055, %.lr.ph109.preheader ], [ 796919567, %.lr.ph109 ]
  %121 = phi i32 [ 745538055, %.lr.ph109.preheader ], [ 796919567, %.lr.ph109 ]
  %cfg_DiffPhi204 = phi i32 [ 66061576, %.lr.ph109.preheader ], [ %132, %.lr.ph109 ]
  %122 = phi i32 [ 66061576, %.lr.ph109.preheader ], [ %132, %.lr.ph109 ]
  %icmpEq425 = icmp eq i32 %cfg_DiffPhi204, %122
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  %icmpEq423 = icmp eq i32 %cfg_DestPhi203, %121
  %123 = icmp eq i32 %121, %121
  %icmpEq427 = icmp eq i1 %icmpEq423, %123
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  %zext424 = zext i1 %icmpEq423 to i32
  call void @assert_ft(i32 %zext424, i32 35)
  %icmpEq421 = icmp eq i64 %indvars.iv139, %120
  %zext422 = zext i1 %icmpEq421 to i32
  %124 = zext i1 %icmpEq421 to i32
  %icmpEq429 = icmp eq i32 %zext422, %124
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  call void @assert_ft(i32 %zext422, i32 35)
  %125 = xor i32 %cfg_DestPhi203, %cfg_DiffPhi204
  %cfg_icmpEq205 = icmp eq i32 %125, 796919567
  %cfg_zext206 = zext i1 %cfg_icmpEq205 to i32
  %126 = zext i1 %cfg_icmpEq205 to i32
  %icmpEq431 = icmp eq i32 %cfg_zext206, %126
  %zext432 = zext i1 %icmpEq431 to i32
  call void @assert_ft(i32 %zext432, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext206, i32 %125, i32 35)
  %127 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv139
  %128 = load double, ptr %127, align 8
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %128)
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %130 = add nuw nsw i64 %120, 1
  %icmpEq433 = icmp eq i64 %indvars.iv.next140, %130
  %zext434 = zext i1 %icmpEq433 to i32
  call void @assert_ft(i32 %zext434, i32 35)
  %exitcond142.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count141
  %131 = select i1 %exitcond142.not, i32 848299530, i32 796919567
  %132 = xor i32 796919567, %131
  br i1 %exitcond142.not, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %._crit_edge106
  %cfg_DestPhi207 = phi i32 [ 796919567, %.lr.ph109 ], [ 694158856, %._crit_edge106 ]
  %133 = phi i32 [ 796919567, %.lr.ph109 ], [ 694158856, %._crit_edge106 ]
  %cfg_DiffPhi208 = phi i32 [ %132, %.lr.ph109 ], [ %114, %._crit_edge106 ]
  %134 = phi i32 [ %132, %.lr.ph109 ], [ %114, %._crit_edge106 ]
  %icmpEq437 = icmp eq i32 %cfg_DiffPhi208, %134
  %zext438 = zext i1 %icmpEq437 to i32
  call void @assert_ft(i32 %zext438, i32 35)
  %icmpEq435 = icmp eq i32 %cfg_DestPhi207, %133
  %135 = icmp eq i32 %133, %133
  %icmpEq439 = icmp eq i1 %icmpEq435, %135
  %zext440 = zext i1 %icmpEq439 to i32
  call void @assert_ft(i32 %zext440, i32 35)
  %zext436 = zext i1 %icmpEq435 to i32
  call void @assert_ft(i32 %zext436, i32 35)
  %136 = xor i32 %cfg_DestPhi207, %cfg_DiffPhi208
  %cfg_icmpEq209 = icmp eq i32 %136, 848299530
  %137 = icmp eq i32 %136, 848299530
  %icmpEq441 = icmp eq i1 %cfg_icmpEq209, %137
  %zext442 = zext i1 %icmpEq441 to i32
  call void @assert_ft(i32 %zext442, i32 35)
  %cfg_zext210 = zext i1 %cfg_icmpEq209 to i32
  call void @assert_cfg_ft(i32 %cfg_zext210, i32 %136, i32 35)
  %putchar87 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %139 = load i32, ptr %2, align 4
  %140 = load i32, ptr %2, align 4
  %icmpEq443 = icmp eq i32 %139, %140
  %zext444 = zext i1 %icmpEq443 to i32
  call void @assert_ft(i32 %zext444, i32 35)
  %141 = icmp sgt i32 %139, 0
  %142 = select i1 %141, i32 899678740, i32 1002441752
  %143 = xor i32 848299530, %142
  br i1 %141, label %.lr.ph113.preheader, label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %._crit_edge110
  %cfg_DestPhi211 = phi i32 [ 848299530, %._crit_edge110 ]
  %144 = phi i32 [ 848299530, %._crit_edge110 ]
  %cfg_DiffPhi212 = phi i32 [ %143, %._crit_edge110 ]
  %145 = phi i32 [ %143, %._crit_edge110 ]
  %icmpEq447 = icmp eq i32 %cfg_DiffPhi212, %145
  %zext448 = zext i1 %icmpEq447 to i32
  call void @assert_ft(i32 %zext448, i32 35)
  %icmpEq445 = icmp eq i32 %cfg_DestPhi211, %144
  %146 = icmp eq i32 %144, %144
  %icmpEq449 = icmp eq i1 %icmpEq445, %146
  %zext450 = zext i1 %icmpEq449 to i32
  call void @assert_ft(i32 %zext450, i32 35)
  %zext446 = zext i1 %icmpEq445 to i32
  call void @assert_ft(i32 %zext446, i32 35)
  %147 = xor i32 %cfg_DestPhi211, %cfg_DiffPhi212
  %cfg_icmpEq213 = icmp eq i32 %147, 899678740
  %148 = icmp eq i32 %147, 899678740
  %icmpEq451 = icmp eq i1 %cfg_icmpEq213, %148
  %zext452 = zext i1 %icmpEq451 to i32
  call void @assert_ft(i32 %zext452, i32 35)
  %cfg_zext214 = zext i1 %cfg_icmpEq213 to i32
  call void @assert_cfg_ft(i32 %cfg_zext214, i32 %147, i32 35)
  %wide.trip.count145 = zext i32 %139 to i64
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113, %.lr.ph113.preheader
  %indvars.iv143 = phi i64 [ 0, %.lr.ph113.preheader ], [ %indvars.iv.next144, %.lr.ph113 ]
  %149 = phi i64 [ 0, %.lr.ph113.preheader ], [ %159, %.lr.ph113 ]
  %cfg_DestPhi215 = phi i32 [ 899678740, %.lr.ph113.preheader ], [ 951060229, %.lr.ph113 ]
  %150 = phi i32 [ 899678740, %.lr.ph113.preheader ], [ 951060229, %.lr.ph113 ]
  %cfg_DiffPhi216 = phi i32 [ 219153681, %.lr.ph113.preheader ], [ %161, %.lr.ph113 ]
  %151 = phi i32 [ 219153681, %.lr.ph113.preheader ], [ %161, %.lr.ph113 ]
  %icmpEq457 = icmp eq i32 %cfg_DiffPhi216, %151
  %zext458 = zext i1 %icmpEq457 to i32
  call void @assert_ft(i32 %zext458, i32 35)
  %icmpEq455 = icmp eq i32 %cfg_DestPhi215, %150
  %152 = icmp eq i32 %150, %150
  %icmpEq459 = icmp eq i1 %icmpEq455, %152
  %zext460 = zext i1 %icmpEq459 to i32
  call void @assert_ft(i32 %zext460, i32 35)
  %zext456 = zext i1 %icmpEq455 to i32
  call void @assert_ft(i32 %zext456, i32 35)
  %icmpEq453 = icmp eq i64 %indvars.iv143, %149
  %zext454 = zext i1 %icmpEq453 to i32
  %153 = zext i1 %icmpEq453 to i32
  %icmpEq461 = icmp eq i32 %zext454, %153
  %zext462 = zext i1 %icmpEq461 to i32
  call void @assert_ft(i32 %zext462, i32 35)
  call void @assert_ft(i32 %zext454, i32 35)
  %154 = xor i32 %cfg_DestPhi215, %cfg_DiffPhi216
  %cfg_icmpEq217 = icmp eq i32 %154, 951060229
  %cfg_zext218 = zext i1 %cfg_icmpEq217 to i32
  %155 = zext i1 %cfg_icmpEq217 to i32
  %icmpEq463 = icmp eq i32 %cfg_zext218, %155
  %zext464 = zext i1 %icmpEq463 to i32
  call void @assert_ft(i32 %zext464, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext218, i32 %154, i32 35)
  %156 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv143
  %157 = load double, ptr %156, align 8
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %157)
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %159 = add nuw nsw i64 %149, 1
  %icmpEq465 = icmp eq i64 %indvars.iv.next144, %159
  %zext466 = zext i1 %icmpEq465 to i32
  call void @assert_ft(i32 %zext466, i32 35)
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count145
  %160 = select i1 %exitcond146.not, i32 1002441752, i32 951060229
  %161 = xor i32 951060229, %160
  br i1 %exitcond146.not, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %.lr.ph113, %._crit_edge110
  %cfg_DestPhi219 = phi i32 [ 951060229, %.lr.ph113 ], [ 848299530, %._crit_edge110 ]
  %162 = phi i32 [ 951060229, %.lr.ph113 ], [ 848299530, %._crit_edge110 ]
  %cfg_DiffPhi220 = phi i32 [ %161, %.lr.ph113 ], [ %143, %._crit_edge110 ]
  %163 = phi i32 [ %161, %.lr.ph113 ], [ %143, %._crit_edge110 ]
  %icmpEq469 = icmp eq i32 %cfg_DiffPhi220, %163
  %zext470 = zext i1 %icmpEq469 to i32
  call void @assert_ft(i32 %zext470, i32 35)
  %icmpEq467 = icmp eq i32 %cfg_DestPhi219, %162
  %164 = icmp eq i32 %162, %162
  %icmpEq471 = icmp eq i1 %icmpEq467, %164
  %zext472 = zext i1 %icmpEq471 to i32
  call void @assert_ft(i32 %zext472, i32 35)
  %zext468 = zext i1 %icmpEq467 to i32
  call void @assert_ft(i32 %zext468, i32 35)
  %165 = xor i32 %cfg_DestPhi219, %cfg_DiffPhi220
  %cfg_icmpEq221 = icmp eq i32 %165, 1002441752
  %166 = icmp eq i32 %165, 1002441752
  %icmpEq473 = icmp eq i1 %cfg_icmpEq221, %166
  %zext474 = zext i1 %icmpEq473 to i32
  call void @assert_ft(i32 %zext474, i32 35)
  %cfg_zext222 = zext i1 %cfg_icmpEq221 to i32
  call void @assert_cfg_ft(i32 %cfg_zext222, i32 %165, i32 35)
  %putchar88 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %167 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %putchar89 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %168 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %putchar90 = tail call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %170 = load i32, ptr %2, align 4
  %171 = load i32, ptr %2, align 4
  %icmpEq475 = icmp eq i32 %170, %171
  %zext476 = zext i1 %icmpEq475 to i32
  call void @assert_ft(i32 %zext476, i32 35)
  %172 = icmp sgt i32 %170, 0
  %173 = select i1 %172, i32 1053819425, i32 1156579857
  %174 = xor i32 1002441752, %173
  br i1 %172, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %._crit_edge114
  %cfg_DestPhi223 = phi i32 [ 1002441752, %._crit_edge114 ]
  %175 = phi i32 [ 1002441752, %._crit_edge114 ]
  %cfg_DiffPhi224 = phi i32 [ %174, %._crit_edge114 ]
  %176 = phi i32 [ %174, %._crit_edge114 ]
  %icmpEq479 = icmp eq i32 %cfg_DiffPhi224, %176
  %zext480 = zext i1 %icmpEq479 to i32
  call void @assert_ft(i32 %zext480, i32 35)
  %icmpEq477 = icmp eq i32 %cfg_DestPhi223, %175
  %177 = icmp eq i32 %175, %175
  %icmpEq481 = icmp eq i1 %icmpEq477, %177
  %zext482 = zext i1 %icmpEq481 to i32
  call void @assert_ft(i32 %zext482, i32 35)
  %zext478 = zext i1 %icmpEq477 to i32
  call void @assert_ft(i32 %zext478, i32 35)
  %178 = xor i32 %cfg_DestPhi223, %cfg_DiffPhi224
  %cfg_icmpEq225 = icmp eq i32 %178, 1053819425
  %179 = icmp eq i32 %178, 1053819425
  %icmpEq483 = icmp eq i1 %cfg_icmpEq225, %179
  %zext484 = zext i1 %icmpEq483 to i32
  call void @assert_ft(i32 %zext484, i32 35)
  %cfg_zext226 = zext i1 %cfg_icmpEq225 to i32
  call void @assert_cfg_ft(i32 %cfg_zext226, i32 %178, i32 35)
  %wide.trip.count149 = zext i32 %170 to i64
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117, %.lr.ph117.preheader
  %indvars.iv147 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next148, %.lr.ph117 ]
  %180 = phi i64 [ 0, %.lr.ph117.preheader ], [ %190, %.lr.ph117 ]
  %cfg_DestPhi227 = phi i32 [ 1053819425, %.lr.ph117.preheader ], [ 1105200928, %.lr.ph117 ]
  %181 = phi i32 [ 1053819425, %.lr.ph117.preheader ], [ 1105200928, %.lr.ph117 ]
  %cfg_DiffPhi228 = phi i32 [ 2133853441, %.lr.ph117.preheader ], [ %192, %.lr.ph117 ]
  %182 = phi i32 [ 2133853441, %.lr.ph117.preheader ], [ %192, %.lr.ph117 ]
  %icmpEq489 = icmp eq i32 %cfg_DiffPhi228, %182
  %zext490 = zext i1 %icmpEq489 to i32
  call void @assert_ft(i32 %zext490, i32 35)
  %icmpEq487 = icmp eq i32 %cfg_DestPhi227, %181
  %183 = icmp eq i32 %181, %181
  %icmpEq491 = icmp eq i1 %icmpEq487, %183
  %zext492 = zext i1 %icmpEq491 to i32
  call void @assert_ft(i32 %zext492, i32 35)
  %zext488 = zext i1 %icmpEq487 to i32
  call void @assert_ft(i32 %zext488, i32 35)
  %icmpEq485 = icmp eq i64 %indvars.iv147, %180
  %zext486 = zext i1 %icmpEq485 to i32
  %184 = zext i1 %icmpEq485 to i32
  %icmpEq493 = icmp eq i32 %zext486, %184
  %zext494 = zext i1 %icmpEq493 to i32
  call void @assert_ft(i32 %zext494, i32 35)
  call void @assert_ft(i32 %zext486, i32 35)
  %185 = xor i32 %cfg_DestPhi227, %cfg_DiffPhi228
  %cfg_icmpEq229 = icmp eq i32 %185, 1105200928
  %cfg_zext230 = zext i1 %cfg_icmpEq229 to i32
  %186 = zext i1 %cfg_icmpEq229 to i32
  %icmpEq495 = icmp eq i32 %cfg_zext230, %186
  %zext496 = zext i1 %icmpEq495 to i32
  call void @assert_ft(i32 %zext496, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext230, i32 %185, i32 35)
  %187 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv147
  %188 = load double, ptr %187, align 8
  %189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %188)
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %190 = add nuw nsw i64 %180, 1
  %icmpEq497 = icmp eq i64 %indvars.iv.next148, %190
  %zext498 = zext i1 %icmpEq497 to i32
  call void @assert_ft(i32 %zext498, i32 35)
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count149
  %191 = select i1 %exitcond150.not, i32 1156579857, i32 1105200928
  %192 = xor i32 1105200928, %191
  br i1 %exitcond150.not, label %._crit_edge118, label %.lr.ph117

._crit_edge118:                                   ; preds = %.lr.ph117, %._crit_edge114
  %cfg_DestPhi231 = phi i32 [ 1105200928, %.lr.ph117 ], [ 1002441752, %._crit_edge114 ]
  %193 = phi i32 [ 1105200928, %.lr.ph117 ], [ 1002441752, %._crit_edge114 ]
  %cfg_DiffPhi232 = phi i32 [ %192, %.lr.ph117 ], [ %174, %._crit_edge114 ]
  %194 = phi i32 [ %192, %.lr.ph117 ], [ %174, %._crit_edge114 ]
  %icmpEq501 = icmp eq i32 %cfg_DiffPhi232, %194
  %zext502 = zext i1 %icmpEq501 to i32
  call void @assert_ft(i32 %zext502, i32 35)
  %icmpEq499 = icmp eq i32 %cfg_DestPhi231, %193
  %195 = icmp eq i32 %193, %193
  %icmpEq503 = icmp eq i1 %icmpEq499, %195
  %zext504 = zext i1 %icmpEq503 to i32
  call void @assert_ft(i32 %zext504, i32 35)
  %zext500 = zext i1 %icmpEq499 to i32
  call void @assert_ft(i32 %zext500, i32 35)
  %196 = xor i32 %cfg_DestPhi231, %cfg_DiffPhi232
  %cfg_icmpEq233 = icmp eq i32 %196, 1156579857
  %197 = icmp eq i32 %196, 1156579857
  %icmpEq505 = icmp eq i1 %cfg_icmpEq233, %197
  %zext506 = zext i1 %icmpEq505 to i32
  call void @assert_ft(i32 %zext506, i32 35)
  %cfg_zext234 = zext i1 %cfg_icmpEq233 to i32
  call void @assert_cfg_ft(i32 %cfg_zext234, i32 %196, i32 35)
  %putchar91 = tail call i32 @putchar(i32 10)
  br label %.preheader96

.preheader96:                                     ; preds = %281, %._crit_edge118
  %.0126.int = phi i32 [ 1, %._crit_edge118 ], [ %.int, %281 ]
  %198 = phi i32 [ 1, %._crit_edge118 ], [ %.int, %281 ]
  %cfg_DestPhi235 = phi i32 [ 1156579857, %._crit_edge118 ], [ 1670382371, %281 ]
  %199 = phi i32 [ 1156579857, %._crit_edge118 ], [ 1670382371, %281 ]
  %cfg_DiffPhi236 = phi i32 [ 217055537, %._crit_edge118 ], [ %289, %281 ]
  %200 = phi i32 [ 217055537, %._crit_edge118 ], [ %289, %281 ]
  %icmpEq511 = icmp eq i32 %cfg_DiffPhi236, %200
  %zext512 = zext i1 %icmpEq511 to i32
  call void @assert_ft(i32 %zext512, i32 35)
  %icmpEq509 = icmp eq i32 %cfg_DestPhi235, %199
  %201 = icmp eq i32 %199, %199
  %icmpEq513 = icmp eq i1 %icmpEq509, %201
  %zext514 = zext i1 %icmpEq513 to i32
  call void @assert_ft(i32 %zext514, i32 35)
  %zext510 = zext i1 %icmpEq509 to i32
  call void @assert_ft(i32 %zext510, i32 35)
  %icmpEq507 = icmp eq i32 %.0126.int, %198
  %zext508 = zext i1 %icmpEq507 to i32
  %202 = zext i1 %icmpEq507 to i32
  %icmpEq515 = icmp eq i32 %zext508, %202
  %zext516 = zext i1 %icmpEq515 to i32
  call void @assert_ft(i32 %zext516, i32 35)
  call void @assert_ft(i32 %zext508, i32 35)
  %203 = xor i32 %cfg_DestPhi235, %cfg_DiffPhi236
  %cfg_icmpEq237 = icmp eq i32 %203, 1207960352
  %cfg_zext238 = zext i1 %cfg_icmpEq237 to i32
  %204 = zext i1 %cfg_icmpEq237 to i32
  %icmpEq517 = icmp eq i32 %cfg_zext238, %204
  %zext518 = zext i1 %icmpEq517 to i32
  call void @assert_ft(i32 %zext518, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext238, i32 %203, i32 35)
  %indvar.conv = sitofp i32 %.0126.int to double
  br label %.preheader95

.preheader95:                                     ; preds = %270, %.preheader96
  %.084125 = phi double [ 1.000000e+01, %.preheader96 ], [ %276, %270 ]
  %205 = phi double [ 1.000000e+01, %.preheader96 ], [ %276, %270 ]
  %cfg_DestPhi239 = phi i32 [ 1207960352, %.preheader96 ], [ 1619002122, %270 ]
  %206 = phi i32 [ 1207960352, %.preheader96 ], [ 1619002122, %270 ]
  %cfg_DiffPhi240 = phi i32 [ 51380513, %.preheader96 ], [ %280, %270 ]
  %207 = phi i32 [ 51380513, %.preheader96 ], [ %280, %270 ]
  %icmpEq521 = icmp eq i32 %cfg_DiffPhi240, %207
  %zext522 = zext i1 %icmpEq521 to i32
  call void @assert_ft(i32 %zext522, i32 35)
  %icmpEq519 = icmp eq i32 %cfg_DestPhi239, %206
  %208 = icmp eq i32 %206, %206
  %icmpEq523 = icmp eq i1 %icmpEq519, %208
  %zext524 = zext i1 %icmpEq523 to i32
  call void @assert_ft(i32 %zext524, i32 35)
  %zext520 = zext i1 %icmpEq519 to i32
  call void @assert_ft(i32 %zext520, i32 35)
  %209 = xor i32 %cfg_DestPhi239, %cfg_DiffPhi240
  %cfg_icmpEq241 = icmp eq i32 %209, 1259340289
  %210 = icmp eq i32 %209, 1259340289
  %icmpEq525 = icmp eq i1 %cfg_icmpEq241, %210
  %zext526 = zext i1 %icmpEq525 to i32
  call void @assert_ft(i32 %zext526, i32 35)
  %cfg_zext242 = zext i1 %cfg_icmpEq241 to i32
  call void @assert_cfg_ft(i32 %cfg_zext242, i32 %209, i32 35)
  br label %.preheader

.preheader:                                       ; preds = %259, %.preheader95
  %.083124 = phi double [ 5.000000e+00, %.preheader95 ], [ %265, %259 ]
  %211 = phi double [ 5.000000e+00, %.preheader95 ], [ %265, %259 ]
  %cfg_DestPhi243 = phi i32 [ 1259340289, %.preheader95 ], [ 1567621910, %259 ]
  %212 = phi i32 [ 1259340289, %.preheader95 ], [ 1567621910, %259 ]
  %cfg_DiffPhi244 = phi i32 [ 87031839, %.preheader95 ], [ %269, %259 ]
  %213 = phi i32 [ 87031839, %.preheader95 ], [ %269, %259 ]
  %icmpEq529 = icmp eq i32 %cfg_DiffPhi244, %213
  %zext530 = zext i1 %icmpEq529 to i32
  call void @assert_ft(i32 %zext530, i32 35)
  %icmpEq527 = icmp eq i32 %cfg_DestPhi243, %212
  %214 = icmp eq i32 %212, %212
  %icmpEq531 = icmp eq i1 %icmpEq527, %214
  %zext532 = zext i1 %icmpEq531 to i32
  call void @assert_ft(i32 %zext532, i32 35)
  %zext528 = zext i1 %icmpEq527 to i32
  call void @assert_ft(i32 %zext528, i32 35)
  %215 = xor i32 %cfg_DestPhi243, %cfg_DiffPhi244
  %cfg_icmpEq245 = icmp eq i32 %215, 1310720542
  %216 = icmp eq i32 %215, 1310720542
  %icmpEq533 = icmp eq i1 %cfg_icmpEq245, %216
  %zext534 = zext i1 %icmpEq533 to i32
  call void @assert_ft(i32 %zext534, i32 35)
  %cfg_zext246 = zext i1 %cfg_icmpEq245 to i32
  call void @assert_cfg_ft(i32 %cfg_zext246, i32 %215, i32 35)
  br label %217

217:                                              ; preds = %._crit_edge122, %.preheader
  %.082123 = phi double [ -1.000000e+00, %.preheader ], [ %253, %._crit_edge122 ]
  %218 = phi double [ -1.000000e+00, %.preheader ], [ %253, %._crit_edge122 ]
  %cfg_DestPhi247 = phi i32 [ 1310720542, %.preheader ], [ 1516241953, %._crit_edge122 ]
  %219 = phi i32 [ 1310720542, %.preheader ], [ 1516241953, %._crit_edge122 ]
  %cfg_DiffPhi248 = phi i32 [ 521143299, %.preheader ], [ %258, %._crit_edge122 ]
  %220 = phi i32 [ 521143299, %.preheader ], [ %258, %._crit_edge122 ]
  %icmpEq537 = icmp eq i32 %cfg_DiffPhi248, %220
  %zext538 = zext i1 %icmpEq537 to i32
  call void @assert_ft(i32 %zext538, i32 35)
  %icmpEq535 = icmp eq i32 %cfg_DestPhi247, %219
  %221 = icmp eq i32 %219, %219
  %icmpEq539 = icmp eq i1 %icmpEq535, %221
  %zext540 = zext i1 %icmpEq539 to i32
  call void @assert_ft(i32 %zext540, i32 35)
  %zext536 = zext i1 %icmpEq535 to i32
  call void @assert_ft(i32 %zext536, i32 35)
  %222 = xor i32 %cfg_DestPhi247, %cfg_DiffPhi248
  %cfg_icmpEq249 = icmp eq i32 %222, 1362101789
  %223 = icmp eq i32 %222, 1362101789
  %icmpEq541 = icmp eq i1 %cfg_icmpEq249, %223
  %zext542 = zext i1 %icmpEq541 to i32
  call void @assert_ft(i32 %zext542, i32 35)
  %cfg_zext250 = zext i1 %cfg_icmpEq249 to i32
  call void @assert_cfg_ft(i32 %cfg_zext250, i32 %222, i32 35)
  call void @SolveCubic(double noundef %indvar.conv, double noundef %.084125, double noundef %.083124, double noundef %.082123, ptr noundef nonnull %2, ptr noundef nonnull %1)
  %224 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %225 = load i32, ptr %2, align 4
  %226 = load i32, ptr %2, align 4
  %icmpEq543 = icmp eq i32 %225, %226
  %zext544 = zext i1 %icmpEq543 to i32
  call void @assert_ft(i32 %zext544, i32 35)
  %227 = icmp sgt i32 %225, 0
  %228 = select i1 %227, i32 1413480974, i32 1516241953
  %229 = xor i32 1362101789, %228
  br i1 %227, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %217
  %cfg_DestPhi251 = phi i32 [ 1362101789, %217 ]
  %230 = phi i32 [ 1362101789, %217 ]
  %cfg_DiffPhi252 = phi i32 [ %229, %217 ]
  %231 = phi i32 [ %229, %217 ]
  %icmpEq547 = icmp eq i32 %cfg_DiffPhi252, %231
  %zext548 = zext i1 %icmpEq547 to i32
  call void @assert_ft(i32 %zext548, i32 35)
  %icmpEq545 = icmp eq i32 %cfg_DestPhi251, %230
  %232 = icmp eq i32 %230, %230
  %icmpEq549 = icmp eq i1 %icmpEq545, %232
  %zext550 = zext i1 %icmpEq549 to i32
  call void @assert_ft(i32 %zext550, i32 35)
  %zext546 = zext i1 %icmpEq545 to i32
  call void @assert_ft(i32 %zext546, i32 35)
  %233 = xor i32 %cfg_DestPhi251, %cfg_DiffPhi252
  %cfg_icmpEq253 = icmp eq i32 %233, 1413480974
  %234 = icmp eq i32 %233, 1413480974
  %icmpEq551 = icmp eq i1 %cfg_icmpEq253, %234
  %zext552 = zext i1 %icmpEq551 to i32
  call void @assert_ft(i32 %zext552, i32 35)
  %cfg_zext254 = zext i1 %cfg_icmpEq253 to i32
  call void @assert_cfg_ft(i32 %cfg_zext254, i32 %233, i32 35)
  %wide.trip.count153 = zext i32 %225 to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121, %.lr.ph121.preheader
  %indvars.iv151 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next152, %.lr.ph121 ]
  %235 = phi i64 [ 0, %.lr.ph121.preheader ], [ %245, %.lr.ph121 ]
  %cfg_DestPhi255 = phi i32 [ 1413480974, %.lr.ph121.preheader ], [ 1464862485, %.lr.ph121 ]
  %236 = phi i32 [ 1413480974, %.lr.ph121.preheader ], [ 1464862485, %.lr.ph121 ]
  %cfg_DiffPhi256 = phi i32 [ 51381531, %.lr.ph121.preheader ], [ %247, %.lr.ph121 ]
  %237 = phi i32 [ 51381531, %.lr.ph121.preheader ], [ %247, %.lr.ph121 ]
  %icmpEq557 = icmp eq i32 %cfg_DiffPhi256, %237
  %zext558 = zext i1 %icmpEq557 to i32
  call void @assert_ft(i32 %zext558, i32 35)
  %icmpEq555 = icmp eq i32 %cfg_DestPhi255, %236
  %238 = icmp eq i32 %236, %236
  %icmpEq559 = icmp eq i1 %icmpEq555, %238
  %zext560 = zext i1 %icmpEq559 to i32
  call void @assert_ft(i32 %zext560, i32 35)
  %zext556 = zext i1 %icmpEq555 to i32
  call void @assert_ft(i32 %zext556, i32 35)
  %icmpEq553 = icmp eq i64 %indvars.iv151, %235
  %zext554 = zext i1 %icmpEq553 to i32
  %239 = zext i1 %icmpEq553 to i32
  %icmpEq561 = icmp eq i32 %zext554, %239
  %zext562 = zext i1 %icmpEq561 to i32
  call void @assert_ft(i32 %zext562, i32 35)
  call void @assert_ft(i32 %zext554, i32 35)
  %240 = xor i32 %cfg_DestPhi255, %cfg_DiffPhi256
  %cfg_icmpEq257 = icmp eq i32 %240, 1464862485
  %cfg_zext258 = zext i1 %cfg_icmpEq257 to i32
  %241 = zext i1 %cfg_icmpEq257 to i32
  %icmpEq563 = icmp eq i32 %cfg_zext258, %241
  %zext564 = zext i1 %icmpEq563 to i32
  call void @assert_ft(i32 %zext564, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext258, i32 %240, i32 35)
  %242 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %indvars.iv151
  %243 = load double, ptr %242, align 8
  %244 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %243)
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1
  %245 = add nuw nsw i64 %235, 1
  %icmpEq565 = icmp eq i64 %indvars.iv.next152, %245
  %zext566 = zext i1 %icmpEq565 to i32
  call void @assert_ft(i32 %zext566, i32 35)
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count153
  %246 = select i1 %exitcond154.not, i32 1516241953, i32 1464862485
  %247 = xor i32 1464862485, %246
  br i1 %exitcond154.not, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %.lr.ph121, %217
  %cfg_DestPhi259 = phi i32 [ 1464862485, %.lr.ph121 ], [ 1362101789, %217 ]
  %248 = phi i32 [ 1464862485, %.lr.ph121 ], [ 1362101789, %217 ]
  %cfg_DiffPhi260 = phi i32 [ %247, %.lr.ph121 ], [ %229, %217 ]
  %249 = phi i32 [ %247, %.lr.ph121 ], [ %229, %217 ]
  %icmpEq569 = icmp eq i32 %cfg_DiffPhi260, %249
  %zext570 = zext i1 %icmpEq569 to i32
  call void @assert_ft(i32 %zext570, i32 35)
  %icmpEq567 = icmp eq i32 %cfg_DestPhi259, %248
  %250 = icmp eq i32 %248, %248
  %icmpEq571 = icmp eq i1 %icmpEq567, %250
  %zext572 = zext i1 %icmpEq571 to i32
  call void @assert_ft(i32 %zext572, i32 35)
  %zext568 = zext i1 %icmpEq567 to i32
  call void @assert_ft(i32 %zext568, i32 35)
  %251 = xor i32 %cfg_DestPhi259, %cfg_DiffPhi260
  %cfg_icmpEq261 = icmp eq i32 %251, 1516241953
  %252 = icmp eq i32 %251, 1516241953
  %icmpEq573 = icmp eq i1 %cfg_icmpEq261, %252
  %zext574 = zext i1 %icmpEq573 to i32
  call void @assert_ft(i32 %zext574, i32 35)
  %cfg_zext262 = zext i1 %cfg_icmpEq261 to i32
  call void @assert_cfg_ft(i32 %cfg_zext262, i32 %251, i32 35)
  %putchar94 = tail call i32 @putchar(i32 10)
  %253 = fadd double %.082123, -4.510000e-01
  %254 = fadd double %218, -4.510000e-01
  %255 = fcmp ogt double %253, -5.000000e+00
  %256 = fcmp ogt double %254, -5.000000e+00
  %icmpEq575 = icmp eq i1 %255, %256
  %zext576 = zext i1 %icmpEq575 to i32
  call void @assert_ft(i32 %zext576, i32 35)
  %257 = select i1 %255, i32 1362101789, i32 1567621910
  %258 = xor i32 1516241953, %257
  br i1 %255, label %217, label %259

259:                                              ; preds = %._crit_edge122
  %cfg_DestPhi263 = phi i32 [ 1516241953, %._crit_edge122 ]
  %260 = phi i32 [ 1516241953, %._crit_edge122 ]
  %cfg_DiffPhi264 = phi i32 [ %258, %._crit_edge122 ]
  %261 = phi i32 [ %258, %._crit_edge122 ]
  %icmpEq579 = icmp eq i32 %cfg_DiffPhi264, %261
  %zext580 = zext i1 %icmpEq579 to i32
  call void @assert_ft(i32 %zext580, i32 35)
  %icmpEq577 = icmp eq i32 %cfg_DestPhi263, %260
  %262 = icmp eq i32 %260, %260
  %icmpEq581 = icmp eq i1 %icmpEq577, %262
  %zext582 = zext i1 %icmpEq581 to i32
  call void @assert_ft(i32 %zext582, i32 35)
  %zext578 = zext i1 %icmpEq577 to i32
  call void @assert_ft(i32 %zext578, i32 35)
  %263 = xor i32 %cfg_DestPhi263, %cfg_DiffPhi264
  %cfg_icmpEq265 = icmp eq i32 %263, 1567621910
  %264 = icmp eq i32 %263, 1567621910
  %icmpEq583 = icmp eq i1 %cfg_icmpEq265, %264
  %zext584 = zext i1 %icmpEq583 to i32
  call void @assert_ft(i32 %zext584, i32 35)
  %cfg_zext266 = zext i1 %cfg_icmpEq265 to i32
  call void @assert_cfg_ft(i32 %cfg_zext266, i32 %263, i32 35)
  %265 = fadd double %.083124, 6.100000e-01
  %266 = fcmp olt double %265, 1.500000e+01
  %267 = fcmp olt double %265, 1.500000e+01
  %icmpEq585 = icmp eq i1 %266, %267
  %zext586 = zext i1 %icmpEq585 to i32
  call void @assert_ft(i32 %zext586, i32 35)
  %268 = select i1 %266, i32 1310720542, i32 1619002122
  %269 = xor i32 1567621910, %268
  br i1 %266, label %.preheader, label %270

270:                                              ; preds = %259
  %cfg_DestPhi267 = phi i32 [ 1567621910, %259 ]
  %271 = phi i32 [ 1567621910, %259 ]
  %cfg_DiffPhi268 = phi i32 [ %269, %259 ]
  %272 = phi i32 [ %269, %259 ]
  %icmpEq589 = icmp eq i32 %cfg_DiffPhi268, %272
  %zext590 = zext i1 %icmpEq589 to i32
  call void @assert_ft(i32 %zext590, i32 35)
  %icmpEq587 = icmp eq i32 %cfg_DestPhi267, %271
  %273 = icmp eq i32 %271, %271
  %icmpEq591 = icmp eq i1 %icmpEq587, %273
  %zext592 = zext i1 %icmpEq591 to i32
  call void @assert_ft(i32 %zext592, i32 35)
  %zext588 = zext i1 %icmpEq587 to i32
  call void @assert_ft(i32 %zext588, i32 35)
  %274 = xor i32 %cfg_DestPhi267, %cfg_DiffPhi268
  %cfg_icmpEq269 = icmp eq i32 %274, 1619002122
  %275 = icmp eq i32 %274, 1619002122
  %icmpEq593 = icmp eq i1 %cfg_icmpEq269, %275
  %zext594 = zext i1 %icmpEq593 to i32
  call void @assert_ft(i32 %zext594, i32 35)
  %cfg_zext270 = zext i1 %cfg_icmpEq269 to i32
  call void @assert_cfg_ft(i32 %cfg_zext270, i32 %274, i32 35)
  %276 = fadd double %.084125, -2.500000e-01
  %277 = fcmp ogt double %276, 0.000000e+00
  %278 = fcmp ogt double %276, 0.000000e+00
  %icmpEq595 = icmp eq i1 %277, %278
  %zext596 = zext i1 %icmpEq595 to i32
  call void @assert_ft(i32 %zext596, i32 35)
  %279 = select i1 %277, i32 1259340289, i32 1670382371
  %280 = xor i32 1619002122, %279
  br i1 %277, label %.preheader95, label %281

281:                                              ; preds = %270
  %cfg_DestPhi271 = phi i32 [ 1619002122, %270 ]
  %282 = phi i32 [ 1619002122, %270 ]
  %cfg_DiffPhi272 = phi i32 [ %280, %270 ]
  %283 = phi i32 [ %280, %270 ]
  %icmpEq599 = icmp eq i32 %cfg_DiffPhi272, %283
  %zext600 = zext i1 %icmpEq599 to i32
  call void @assert_ft(i32 %zext600, i32 35)
  %icmpEq597 = icmp eq i32 %cfg_DestPhi271, %282
  %284 = icmp eq i32 %282, %282
  %icmpEq601 = icmp eq i1 %icmpEq597, %284
  %zext602 = zext i1 %icmpEq601 to i32
  call void @assert_ft(i32 %zext602, i32 35)
  %zext598 = zext i1 %icmpEq597 to i32
  call void @assert_ft(i32 %zext598, i32 35)
  %285 = xor i32 %cfg_DestPhi271, %cfg_DiffPhi272
  %cfg_icmpEq273 = icmp eq i32 %285, 1670382371
  %286 = icmp eq i32 %285, 1670382371
  %icmpEq603 = icmp eq i1 %cfg_icmpEq273, %286
  %zext604 = zext i1 %icmpEq603 to i32
  call void @assert_ft(i32 %zext604, i32 35)
  %cfg_zext274 = zext i1 %cfg_icmpEq273 to i32
  call void @assert_cfg_ft(i32 %cfg_zext274, i32 %285, i32 35)
  %.int = add nuw nsw i32 %.0126.int, 1
  %exitcond155.not = icmp eq i32 %.int, 10
  %287 = icmp eq i32 %.int, 10
  %icmpEq605 = icmp eq i1 %exitcond155.not, %287
  %zext606 = zext i1 %icmpEq605 to i32
  call void @assert_ft(i32 %zext606, i32 35)
  %288 = select i1 %exitcond155.not, i32 1721762307, i32 1207960352
  %289 = xor i32 1670382371, %288
  br i1 %exitcond155.not, label %290, label %.preheader96

290:                                              ; preds = %281
  %cfg_DestPhi275 = phi i32 [ 1670382371, %281 ]
  %291 = phi i32 [ 1670382371, %281 ]
  %cfg_DiffPhi276 = phi i32 [ %289, %281 ]
  %292 = phi i32 [ %289, %281 ]
  %icmpEq609 = icmp eq i32 %cfg_DiffPhi276, %292
  %zext610 = zext i1 %icmpEq609 to i32
  call void @assert_ft(i32 %zext610, i32 35)
  %icmpEq607 = icmp eq i32 %cfg_DestPhi275, %291
  %293 = icmp eq i32 %291, %291
  %icmpEq611 = icmp eq i1 %icmpEq607, %293
  %zext612 = zext i1 %icmpEq611 to i32
  call void @assert_ft(i32 %zext612, i32 35)
  %zext608 = zext i1 %icmpEq607 to i32
  call void @assert_ft(i32 %zext608, i32 35)
  %294 = xor i32 %cfg_DestPhi275, %cfg_DiffPhi276
  %cfg_icmpEq277 = icmp eq i32 %294, 1721762307
  %295 = icmp eq i32 %294, 1721762307
  %icmpEq613 = icmp eq i1 %cfg_icmpEq277, %295
  %zext614 = zext i1 %icmpEq613 to i32
  call void @assert_ft(i32 %zext614, i32 35)
  %cfg_zext278 = zext i1 %cfg_icmpEq277 to i32
  call void @assert_cfg_ft(i32 %cfg_zext278, i32 %294, i32 35)
  %puts92 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %296

296:                                              ; preds = %296, %290
  %indvars.iv156 = phi i64 [ 0, %290 ], [ %indvars.iv.next157, %296 ]
  %297 = phi i64 [ 0, %290 ], [ %indvars.iv.next157, %296 ]
  %298 = phi i64 [ 0, %290 ], [ %indvars.iv.next157, %296 ]
  %299 = phi i64 [ 0, %290 ], [ %indvars.iv.next157, %296 ]
  %cfg_DestPhi279 = phi i32 [ 1721762307, %290 ], [ 1773144081, %296 ]
  %300 = phi i32 [ 1721762307, %290 ], [ 1773144081, %296 ]
  %301 = phi i32 [ 1721762307, %290 ], [ 1773144081, %296 ]
  %302 = phi i32 [ 1721762307, %290 ], [ 1773144081, %296 ]
  %cfg_DiffPhi280 = phi i32 [ 252709394, %290 ], [ %330, %296 ]
  %303 = phi i32 [ 252709394, %290 ], [ %330, %296 ]
  %304 = phi i32 [ 252709394, %290 ], [ %330, %296 ]
  %305 = phi i32 [ 252709394, %290 ], [ %330, %296 ]
  %icmpEq641 = icmp eq i32 %304, %305
  %zext642 = zext i1 %icmpEq641 to i32
  call void @assert_ft(i32 %zext642, i32 35)
  %icmpEq639 = icmp eq i32 %cfg_DiffPhi280, %303
  %306 = icmp eq i32 %303, %303
  %icmpEq643 = icmp eq i1 %icmpEq639, %306
  %zext644 = zext i1 %icmpEq643 to i32
  call void @assert_ft(i32 %zext644, i32 35)
  %zext640 = zext i1 %icmpEq639 to i32
  call void @assert_ft(i32 %zext640, i32 35)
  %icmpEq637 = icmp eq i32 %301, %302
  %zext638 = zext i1 %icmpEq637 to i32
  %307 = zext i1 %icmpEq637 to i32
  %icmpEq645 = icmp eq i32 %zext638, %307
  %zext646 = zext i1 %icmpEq645 to i32
  call void @assert_ft(i32 %zext646, i32 35)
  call void @assert_ft(i32 %zext638, i32 35)
  %icmpEq635 = icmp eq i32 %cfg_DestPhi279, %300
  %zext636 = zext i1 %icmpEq635 to i32
  call void @assert_ft(i32 %zext636, i32 35)
  %icmpEq633 = icmp eq i64 %298, %299
  %308 = icmp eq i64 %299, %299
  %icmpEq647 = icmp eq i1 %icmpEq633, %308
  %zext648 = zext i1 %icmpEq647 to i32
  call void @assert_ft(i32 %zext648, i32 35)
  %zext634 = zext i1 %icmpEq633 to i32
  call void @assert_ft(i32 %zext634, i32 35)
  %icmpEq631 = icmp eq i64 %indvars.iv156, %297
  %zext632 = zext i1 %icmpEq631 to i32
  %309 = zext i1 %icmpEq631 to i32
  %icmpEq649 = icmp eq i32 %zext632, %309
  %zext650 = zext i1 %icmpEq649 to i32
  call void @assert_ft(i32 %zext650, i32 35)
  call void @assert_ft(i32 %zext632, i32 35)
  %icmpEq619 = icmp eq i32 %cfg_DiffPhi280, %304
  %zext620 = zext i1 %icmpEq619 to i32
  call void @assert_ft(i32 %zext620, i32 35)
  %icmpEq617 = icmp eq i32 %cfg_DestPhi279, %301
  %310 = icmp eq i32 %300, %302
  %icmpEq651 = icmp eq i1 %icmpEq617, %310
  %zext652 = zext i1 %icmpEq651 to i32
  call void @assert_ft(i32 %zext652, i32 35)
  %311 = icmp eq i32 %cfg_DestPhi279, %301
  %icmpEq621 = icmp eq i1 %icmpEq617, %311
  %zext622 = zext i1 %icmpEq621 to i32
  call void @assert_ft(i32 %zext622, i32 35)
  %zext618 = zext i1 %icmpEq617 to i32
  %312 = zext i1 %310 to i32
  %icmpEq653 = icmp eq i32 %zext618, %312
  %zext654 = zext i1 %icmpEq653 to i32
  call void @assert_ft(i32 %zext654, i32 35)
  call void @assert_ft(i32 %zext618, i32 35)
  %icmpEq615 = icmp eq i64 %indvars.iv156, %298
  %zext616 = zext i1 %icmpEq615 to i32
  %313 = zext i1 %icmpEq615 to i32
  %314 = zext i1 %icmpEq615 to i32
  %icmpEq655 = icmp eq i32 %313, %314
  %zext656 = zext i1 %icmpEq655 to i32
  call void @assert_ft(i32 %zext656, i32 35)
  %icmpEq623 = icmp eq i32 %zext616, %313
  %zext624 = zext i1 %icmpEq623 to i32
  call void @assert_ft(i32 %zext624, i32 35)
  call void @assert_ft(i32 %zext616, i32 35)
  %315 = xor i32 %cfg_DestPhi279, %cfg_DiffPhi280
  %316 = xor i32 %300, %303
  %icmpEq657 = icmp eq i32 %315, %316
  %zext658 = zext i1 %icmpEq657 to i32
  call void @assert_ft(i32 %zext658, i32 35)
  %cfg_icmpEq281 = icmp eq i32 %315, 1773144081
  %cfg_zext282 = zext i1 %cfg_icmpEq281 to i32
  %317 = zext i1 %cfg_icmpEq281 to i32
  %icmpEq625 = icmp eq i32 %cfg_zext282, %317
  %318 = icmp eq i32 %317, %317
  %icmpEq659 = icmp eq i1 %icmpEq625, %318
  %zext660 = zext i1 %icmpEq659 to i32
  call void @assert_ft(i32 %zext660, i32 35)
  %zext626 = zext i1 %icmpEq625 to i32
  call void @assert_ft(i32 %zext626, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext282, i32 %315, i32 35)
  call void @usqrt(i64 noundef %indvars.iv156, ptr noundef nonnull %3)
  %319 = load i32, ptr %3, align 4
  %320 = load i32, ptr %3, align 4
  %icmpEq661 = icmp eq i32 %319, %320
  %zext662 = zext i1 %icmpEq661 to i32
  call void @assert_ft(i32 %zext662, i32 35)
  %321 = trunc i64 %indvars.iv156 to i32
  %322 = trunc i64 %297 to i32
  %icmpEq627 = icmp eq i32 %321, %322
  %zext628 = zext i1 %icmpEq627 to i32
  %323 = zext i1 %icmpEq627 to i32
  %icmpEq663 = icmp eq i32 %zext628, %323
  %zext664 = zext i1 %icmpEq663 to i32
  call void @assert_ft(i32 %zext664, i32 35)
  call void @assert_ft(i32 %zext628, i32 35)
  %324 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %321, i32 noundef %319)
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 2
  %325 = icmp ult i64 %indvars.iv156, 99998
  %326 = icmp ult i64 %297, 99998
  %icmpEq665 = icmp eq i1 %325, %326
  %zext666 = zext i1 %icmpEq665 to i32
  call void @assert_ft(i32 %zext666, i32 35)
  %327 = select i1 %325, i32 1773144081, i32 1824523044
  %328 = select i1 %326, i32 1773144081, i32 1824523044
  %icmpEq629 = icmp eq i32 %327, %328
  %zext630 = zext i1 %icmpEq629 to i32
  %329 = zext i1 %icmpEq629 to i32
  %icmpEq667 = icmp eq i32 %zext630, %329
  %zext668 = zext i1 %icmpEq667 to i32
  call void @assert_ft(i32 %zext668, i32 35)
  call void @assert_ft(i32 %zext630, i32 35)
  %330 = xor i32 1773144081, %327
  br i1 %325, label %296, label %331

331:                                              ; preds = %296
  %cfg_DestPhi283 = phi i32 [ 1773144081, %296 ]
  %332 = phi i32 [ 1773144081, %296 ]
  %cfg_DiffPhi284 = phi i32 [ %330, %296 ]
  %333 = phi i32 [ %330, %296 ]
  %icmpEq671 = icmp eq i32 %cfg_DiffPhi284, %333
  %zext672 = zext i1 %icmpEq671 to i32
  call void @assert_ft(i32 %zext672, i32 35)
  %icmpEq669 = icmp eq i32 %cfg_DestPhi283, %332
  %334 = icmp eq i32 %332, %332
  %icmpEq673 = icmp eq i1 %icmpEq669, %334
  %zext674 = zext i1 %icmpEq673 to i32
  call void @assert_ft(i32 %zext674, i32 35)
  %zext670 = zext i1 %icmpEq669 to i32
  call void @assert_ft(i32 %zext670, i32 35)
  %335 = xor i32 %cfg_DestPhi283, %cfg_DiffPhi284
  %cfg_icmpEq285 = icmp eq i32 %335, 1824523044
  %336 = icmp eq i32 %335, 1824523044
  %icmpEq675 = icmp eq i1 %cfg_icmpEq285, %336
  %zext676 = zext i1 %icmpEq675 to i32
  call void @assert_ft(i32 %zext676, i32 35)
  %cfg_zext286 = zext i1 %cfg_icmpEq285 to i32
  call void @assert_cfg_ft(i32 %cfg_zext286, i32 %335, i32 35)
  %putchar93 = tail call i32 @putchar(i32 10)
  %337 = getelementptr inbounds %struct.int_sqrt, ptr %3, i64 0, i32 1
  %338 = getelementptr inbounds %struct.int_sqrt, ptr %3, i64 0, i32 1
  br label %339

339:                                              ; preds = %339, %331
  %.080128 = phi i64 [ 1072497001, %331 ], [ %352, %339 ]
  %340 = phi i64 [ 1072497001, %331 ], [ %352, %339 ]
  %cfg_DestPhi287 = phi i32 [ 1824523044, %331 ], [ 1875904803, %339 ]
  %341 = phi i32 [ 1824523044, %331 ], [ 1875904803, %339 ]
  %cfg_DiffPhi288 = phi i32 [ 51382791, %331 ], [ %355, %339 ]
  %342 = phi i32 [ 51382791, %331 ], [ %355, %339 ]
  %icmpEq681 = icmp eq i32 %cfg_DiffPhi288, %342
  %zext682 = zext i1 %icmpEq681 to i32
  call void @assert_ft(i32 %zext682, i32 35)
  %icmpEq679 = icmp eq i32 %cfg_DestPhi287, %341
  %343 = icmp eq i32 %341, %341
  %icmpEq683 = icmp eq i1 %icmpEq679, %343
  %zext684 = zext i1 %icmpEq683 to i32
  call void @assert_ft(i32 %zext684, i32 35)
  %zext680 = zext i1 %icmpEq679 to i32
  call void @assert_ft(i32 %zext680, i32 35)
  %icmpEq677 = icmp eq i64 %.080128, %340
  %zext678 = zext i1 %icmpEq677 to i32
  %344 = zext i1 %icmpEq677 to i32
  %icmpEq685 = icmp eq i32 %zext678, %344
  %zext686 = zext i1 %icmpEq685 to i32
  call void @assert_ft(i32 %zext686, i32 35)
  call void @assert_ft(i32 %zext678, i32 35)
  %345 = xor i32 %cfg_DestPhi287, %cfg_DiffPhi288
  %cfg_icmpEq289 = icmp eq i32 %345, 1875904803
  %cfg_zext290 = zext i1 %cfg_icmpEq289 to i32
  %346 = zext i1 %cfg_icmpEq289 to i32
  %icmpEq687 = icmp eq i32 %cfg_zext290, %346
  %zext688 = zext i1 %icmpEq687 to i32
  call void @assert_ft(i32 %zext688, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext290, i32 %345, i32 35)
  call void @usqrt(i64 noundef %.080128, ptr noundef nonnull %3)
  %347 = load i32, ptr %3, align 4
  %348 = load i32, ptr %337, align 4
  %349 = load i32, ptr %338, align 4
  %icmpEq689 = icmp eq i32 %348, %349
  %zext690 = zext i1 %icmpEq689 to i32
  call void @assert_ft(i32 %zext690, i32 35)
  %350 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %.080128, i32 noundef %347, i32 noundef %348)
  %351 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %.080128, i32 noundef %347)
  %352 = add nuw nsw i64 %.080128, 1
  %exitcond158.not = icmp eq i64 %352, 1072513385
  %353 = icmp eq i64 %352, 1072513385
  %icmpEq691 = icmp eq i1 %exitcond158.not, %353
  %zext692 = zext i1 %icmpEq691 to i32
  call void @assert_ft(i32 %zext692, i32 35)
  %354 = select i1 %exitcond158.not, i32 1927282948, i32 1875904803
  %355 = xor i32 1875904803, %354
  br i1 %exitcond158.not, label %356, label %339

356:                                              ; preds = %339
  %cfg_DestPhi291 = phi i32 [ 1875904803, %339 ]
  %357 = phi i32 [ 1875904803, %339 ]
  %cfg_DiffPhi292 = phi i32 [ %355, %339 ]
  %358 = phi i32 [ %355, %339 ]
  %icmpEq695 = icmp eq i32 %cfg_DiffPhi292, %358
  %zext696 = zext i1 %icmpEq695 to i32
  call void @assert_ft(i32 %zext696, i32 35)
  %icmpEq693 = icmp eq i32 %cfg_DestPhi291, %357
  %359 = icmp eq i32 %357, %357
  %icmpEq697 = icmp eq i1 %icmpEq693, %359
  %zext698 = zext i1 %icmpEq697 to i32
  call void @assert_ft(i32 %zext698, i32 35)
  %zext694 = zext i1 %icmpEq693 to i32
  call void @assert_ft(i32 %zext694, i32 35)
  %360 = xor i32 %cfg_DestPhi291, %cfg_DiffPhi292
  %cfg_icmpEq293 = icmp eq i32 %360, 1927282948
  %361 = icmp eq i32 %360, 1927282948
  %icmpEq699 = icmp eq i1 %cfg_icmpEq293, %361
  %zext700 = zext i1 %icmpEq699 to i32
  call void @assert_ft(i32 %zext700, i32 35)
  %cfg_zext294 = zext i1 %cfg_icmpEq293 to i32
  call void @assert_cfg_ft(i32 %cfg_zext294, i32 %360, i32 35)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @rad2deg(double noundef %0) local_unnamed_addr #2 {
  %2 = fmul double %0, 1.800000e+02
  %3 = fmul double %0, 1.800000e+02
  %4 = fdiv double %2, 0x400921FB54442D18
  %5 = fdiv double %3, 0x400921FB54442D18
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @deg2rad(double noundef %0) local_unnamed_addr #2 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fmul double %0, 0x400921FB54442D18
  %4 = fdiv double %2, 1.800000e+02
  %5 = fdiv double %3, 1.800000e+02
  ret double %4
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write) uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = fdiv double %1, %0
  %8 = fdiv double %1, %0
  %9 = fpext double %7 to x86_fp80
  %10 = fpext double %8 to x86_fp80
  %11 = fdiv double %2, %0
  %12 = fdiv double %2, %0
  %13 = fpext double %11 to x86_fp80
  %14 = fpext double %12 to x86_fp80
  %15 = fdiv double %3, %0
  %16 = fdiv double %3, %0
  %17 = fpext double %15 to x86_fp80
  %18 = fpext double %16 to x86_fp80
  %19 = fmul x86_fp80 %13, 0xKC000C000000000000000
  %20 = fmul x86_fp80 %14, 0xKC000C000000000000000
  %21 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %9, x86_fp80 %9, x86_fp80 %19)
  %22 = fdiv x86_fp80 %21, 0xK40029000000000000000
  %23 = fdiv x86_fp80 %21, 0xK40029000000000000000
  %24 = fmul x86_fp80 %9, 0xK40008000000000000000
  %25 = fmul x86_fp80 %10, 0xK40008000000000000000
  %26 = fmul x86_fp80 %24, %9
  %27 = fmul x86_fp80 %25, %10
  %28 = fmul x86_fp80 %9, 0xKC0029000000000000000
  %29 = fmul x86_fp80 %10, 0xKC0029000000000000000
  %30 = fmul x86_fp80 %28, %13
  %31 = fmul x86_fp80 %29, %14
  %32 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %26, x86_fp80 %9, x86_fp80 %30)
  %33 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %17, x86_fp80 0xK4003D800000000000000, x86_fp80 %32)
  %34 = fdiv x86_fp80 %33, 0xK4004D800000000000000
  %35 = fdiv x86_fp80 %33, 0xK4004D800000000000000
  %36 = fmul x86_fp80 %22, %22
  %37 = fmul x86_fp80 %23, %23
  %38 = fmul x86_fp80 %22, %36
  %39 = fmul x86_fp80 %23, %37
  %40 = fneg x86_fp80 %38
  %41 = fneg x86_fp80 %39
  %42 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %34, x86_fp80 %34, x86_fp80 %40)
  %43 = fptrunc x86_fp80 %42 to double
  %44 = fptrunc x86_fp80 %42 to double
  %45 = fcmp ugt double %43, 0.000000e+00
  %46 = fcmp ugt double %44, 0.000000e+00
  %icmpEq = icmp eq i1 %45, %46
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %47 = select i1 %45, i32 231740191, i32 180365573
  %48 = xor i32 128980755, %47
  br i1 %45, label %119, label %49

49:                                               ; preds = %6
  %cfg_DestPhi = phi i32 [ 128980755, %6 ]
  %50 = phi i32 [ 128980755, %6 ]
  %cfg_DiffPhi = phi i32 [ %48, %6 ]
  %51 = phi i32 [ %48, %6 ]
  %icmpEq59 = icmp eq i32 %cfg_DiffPhi, %51
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq57 = icmp eq i32 %cfg_DestPhi, %50
  %52 = icmp eq i32 %50, %50
  %icmpEq61 = icmp eq i1 %icmpEq57, %52
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %53 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %53, 180365573
  %54 = icmp eq i32 %53, 180365573
  %icmpEq63 = icmp eq i1 %cfg_icmpEq, %54
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %53, i32 35)
  store i32 3, ptr %4, align 4
  %55 = fptrunc x86_fp80 %38 to double
  %56 = fptrunc x86_fp80 %39 to double
  %57 = tail call double @sqrt(double noundef %55) #8
  %58 = fpext double %57 to x86_fp80
  %59 = fpext double %57 to x86_fp80
  %60 = fdiv x86_fp80 %34, %58
  %61 = fdiv x86_fp80 %35, %59
  %62 = fptrunc x86_fp80 %60 to double
  %63 = fptrunc x86_fp80 %61 to double
  %64 = tail call double @acos(double noundef %62) #8
  %65 = fptrunc x86_fp80 %22 to double
  %66 = fptrunc x86_fp80 %23 to double
  %67 = tail call double @sqrt(double noundef %65) #8
  %68 = fmul double %67, -2.000000e+00
  %69 = fmul double %67, -2.000000e+00
  %70 = fdiv double %64, 3.000000e+00
  %71 = fdiv double %64, 3.000000e+00
  %72 = tail call double @cos(double noundef %70) #8
  %73 = fmul double %68, %72
  %74 = fmul double %69, %72
  %75 = fpext double %73 to x86_fp80
  %76 = fpext double %74 to x86_fp80
  %77 = fdiv x86_fp80 %9, 0xK4000C000000000000000
  %78 = fdiv x86_fp80 %10, 0xK4000C000000000000000
  %79 = fsub x86_fp80 %75, %77
  %80 = fsub x86_fp80 %76, %78
  %81 = fptrunc x86_fp80 %79 to double
  %82 = fptrunc x86_fp80 %80 to double
  store double %81, ptr %5, align 8
  %83 = tail call double @sqrt(double noundef %65) #8
  %84 = fmul double %83, -2.000000e+00
  %85 = fmul double %83, -2.000000e+00
  %86 = fadd double %64, 0x401921FB54442D18
  %87 = fadd double %64, 0x401921FB54442D18
  %88 = fdiv double %86, 3.000000e+00
  %89 = fdiv double %87, 3.000000e+00
  %90 = tail call double @cos(double noundef %88) #8
  %91 = fmul double %84, %90
  %92 = fmul double %85, %90
  %93 = fpext double %91 to x86_fp80
  %94 = fpext double %92 to x86_fp80
  %95 = fsub x86_fp80 %93, %77
  %96 = fsub x86_fp80 %94, %78
  %97 = fptrunc x86_fp80 %95 to double
  %98 = fptrunc x86_fp80 %96 to double
  %99 = getelementptr inbounds double, ptr %5, i64 1
  %100 = getelementptr inbounds double, ptr %5, i64 1
  store double %97, ptr %99, align 8
  %101 = tail call double @sqrt(double noundef %65) #8
  %102 = fmul double %101, -2.000000e+00
  %103 = fmul double %101, -2.000000e+00
  %104 = fadd double %64, 0x402921FB54442D18
  %105 = fadd double %64, 0x402921FB54442D18
  %106 = fdiv double %104, 3.000000e+00
  %107 = fdiv double %105, 3.000000e+00
  %108 = tail call double @cos(double noundef %106) #8
  %109 = fmul double %102, %108
  %110 = fmul double %103, %108
  %111 = fpext double %109 to x86_fp80
  %112 = fpext double %110 to x86_fp80
  %113 = fsub x86_fp80 %111, %77
  %114 = fsub x86_fp80 %112, %78
  %115 = fptrunc x86_fp80 %113 to double
  %116 = fptrunc x86_fp80 %114 to double
  %117 = getelementptr inbounds double, ptr %5, i64 2
  %118 = getelementptr inbounds double, ptr %5, i64 2
  store double %115, ptr %117, align 8
  br label %151

119:                                              ; preds = %6
  %cfg_DestPhi49 = phi i32 [ 128980755, %6 ]
  %120 = phi i32 [ 128980755, %6 ]
  %cfg_DiffPhi50 = phi i32 [ %48, %6 ]
  %121 = phi i32 [ %48, %6 ]
  %icmpEq67 = icmp eq i32 %cfg_DiffPhi50, %121
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %cfg_DestPhi49, %120
  %122 = icmp eq i32 %120, %120
  %icmpEq69 = icmp eq i1 %icmpEq65, %122
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %123 = xor i32 %cfg_DestPhi49, %cfg_DiffPhi50
  %cfg_icmpEq51 = icmp eq i32 %123, 231740191
  %124 = icmp eq i32 %123, 231740191
  %icmpEq71 = icmp eq i1 %cfg_icmpEq51, %124
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %cfg_zext52 = zext i1 %cfg_icmpEq51 to i32
  call void @assert_cfg_ft(i32 %cfg_zext52, i32 %123, i32 35)
  store i32 1, ptr %4, align 4
  %125 = tail call double @sqrt(double noundef %43) #8
  %126 = fptrunc x86_fp80 %34 to double
  %127 = fptrunc x86_fp80 %35 to double
  %128 = tail call double @llvm.fabs.f64(double %126)
  %129 = fadd double %128, %125
  %130 = fadd double %128, %125
  %131 = tail call double @pow(double noundef %129, double noundef 0x3FD5555555555555) #8
  %132 = fpext double %131 to x86_fp80
  %133 = fpext double %131 to x86_fp80
  %134 = fdiv x86_fp80 %22, %132
  %135 = fdiv x86_fp80 %23, %133
  %136 = fadd x86_fp80 %134, %132
  %137 = fadd x86_fp80 %135, %133
  %138 = fptrunc x86_fp80 %136 to double
  %139 = fptrunc x86_fp80 %137 to double
  %140 = fcmp olt x86_fp80 %34, 0xK00000000000000000000
  %141 = fcmp olt x86_fp80 %35, 0xK00000000000000000000
  %icmpEq73 = icmp eq i1 %140, %141
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %142 = fneg double %138
  %143 = select i1 %140, double %138, double %142
  %144 = fdiv x86_fp80 %9, 0xK4000C000000000000000
  %145 = fpext double %143 to x86_fp80
  %146 = fpext double %143 to x86_fp80
  %147 = fsub x86_fp80 %145, %144
  %148 = fsub x86_fp80 %146, %144
  %149 = fptrunc x86_fp80 %147 to double
  %150 = fptrunc x86_fp80 %148 to double
  store double %149, ptr %5, align 8
  br label %151

151:                                              ; preds = %119, %49
  %cfg_DestPhi53 = phi i32 [ 231740191, %119 ], [ 180365573, %49 ]
  %152 = phi i32 [ 231740191, %119 ], [ 180365573, %49 ]
  %cfg_DiffPhi54 = phi i32 [ 489689610, %119 ], [ 438315024, %49 ]
  %153 = phi i32 [ 489689610, %119 ], [ 438315024, %49 ]
  %icmpEq77 = icmp eq i32 %cfg_DiffPhi54, %153
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq75 = icmp eq i32 %cfg_DestPhi53, %152
  %154 = icmp eq i32 %152, %152
  %icmpEq79 = icmp eq i1 %icmpEq75, %154
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %155 = xor i32 %cfg_DestPhi53, %cfg_DiffPhi54
  %cfg_icmpEq55 = icmp eq i32 %155, 283115797
  %156 = icmp eq i32 %155, 283115797
  %icmpEq81 = icmp eq i1 %cfg_icmpEq55, %156
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %cfg_zext56 = zext i1 %cfg_icmpEq55 to i32
  call void @assert_cfg_ft(i32 %cfg_zext56, i32 %155, i32 35)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @usqrt(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  br label %3

3:                                                ; preds = %3, %2
  %.022 = phi i32 [ 0, %2 ], [ %29, %3 ]
  %4 = phi i32 [ 0, %2 ], [ %29, %3 ]
  %.01221 = phi i64 [ 0, %2 ], [ %.1, %3 ]
  %5 = phi i64 [ 0, %2 ], [ %.1, %3 ]
  %.01320 = phi i64 [ 0, %2 ], [ %.114, %3 ]
  %6 = phi i64 [ 0, %2 ], [ %27, %3 ]
  %.01519 = phi i64 [ %0, %2 ], [ %21, %3 ]
  %7 = phi i64 [ %0, %2 ], [ %21, %3 ]
  %cfg_DestPhi = phi i32 [ 128975137, %2 ], [ 180360217, %3 ]
  %8 = phi i32 [ 128975137, %2 ], [ 180360217, %3 ]
  %cfg_DiffPhi = phi i32 [ 225449272, %2 ], [ %32, %3 ]
  %9 = phi i32 [ 225449272, %2 ], [ %32, %3 ]
  %icmpEq35 = icmp eq i32 %cfg_DiffPhi, %9
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %icmpEq33 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq37 = icmp eq i1 %icmpEq33, %10
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %icmpEq31 = icmp eq i64 %.01519, %7
  %zext32 = zext i1 %icmpEq31 to i32
  %11 = zext i1 %icmpEq31 to i32
  %icmpEq39 = icmp eq i32 %zext32, %11
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  call void @assert_ft(i32 %zext32, i32 35)
  %icmpEq29 = icmp eq i64 %.01320, %6
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq27 = icmp eq i64 %.01221, %5
  %12 = icmp eq i64 %5, %5
  %icmpEq41 = icmp eq i1 %icmpEq27, %12
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq = icmp eq i32 %.022, %4
  %zext = zext i1 %icmpEq to i32
  %13 = zext i1 %icmpEq to i32
  %icmpEq43 = icmp eq i32 %zext, %13
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %14 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %14, 180360217
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %15 = zext i1 %cfg_icmpEq to i32
  %icmpEq45 = icmp eq i32 %cfg_zext, %15
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %14, i32 35)
  %16 = shl i64 %.01221, 2
  %17 = lshr i64 %.01519, 30
  %18 = and i64 %17, 3
  %19 = and i64 %17, 3
  %icmpEq47 = icmp eq i64 %18, %19
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %20 = or i64 %16, %18
  %21 = shl i64 %.01519, 2
  %22 = shl i64 %.01320, 1
  %23 = shl i64 %.01320, 2
  %24 = shl i64 %6, 2
  %icmpEq49 = icmp eq i64 %23, %24
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %25 = or i64 %23, 1
  %.not = icmp uge i64 %20, %25
  %26 = zext i1 %.not to i64
  %.114 = or i64 %22, %26
  %27 = or i64 %22, %26
  %icmpEq51 = icmp eq i64 %.114, %27
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %28 = select i1 %.not, i64 %25, i64 0
  %.1 = sub i64 %20, %28
  %29 = add nuw nsw i32 %.022, 1
  %exitcond.not = icmp eq i32 %29, 32
  %30 = icmp eq i32 %29, 32
  %icmpEq53 = icmp eq i1 %exitcond.not, %30
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %31 = select i1 %exitcond.not, i32 231735821, i32 180360217
  %32 = xor i32 180360217, %31
  br i1 %exitcond.not, label %33, label %3

33:                                               ; preds = %3
  %cfg_DestPhi23 = phi i32 [ 180360217, %3 ]
  %34 = phi i32 [ 180360217, %3 ]
  %cfg_DiffPhi24 = phi i32 [ %32, %3 ]
  %35 = phi i32 [ %32, %3 ]
  %icmpEq57 = icmp eq i32 %cfg_DiffPhi24, %35
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i32 %cfg_DestPhi23, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq59 = icmp eq i1 %icmpEq55, %36
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %37 = xor i32 %cfg_DestPhi23, %cfg_DiffPhi24
  %cfg_icmpEq25 = icmp eq i32 %37, 231735821
  %38 = icmp eq i32 %37, 231735821
  %icmpEq61 = icmp eq i1 %cfg_icmpEq25, %38
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %cfg_zext26 = zext i1 %cfg_icmpEq25 to i32
  call void @assert_cfg_ft(i32 %cfg_zext26, i32 %37, i32 35)
  store i64 %.114, ptr %1, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

declare void @exit(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  call void (i32, ...) @exit(i32 1099)
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
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind willreturn memory(write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
