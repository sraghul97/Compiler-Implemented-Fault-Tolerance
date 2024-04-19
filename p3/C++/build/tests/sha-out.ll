; ModuleID = 'sha-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%08x %08x %08x %08x %08x\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SHA_INFO, align 4
  %4 = icmp slt i32 %0, 2
  %5 = icmp slt i32 %0, 2
  %icmpEq = icmp eq i1 %4, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = select i1 %4, i32 231736346, i32 180355605
  %7 = xor i32 128975641, %6
  br i1 %4, label %14, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975641, %2 ]
  %8 = phi i32 [ 128975641, %2 ]
  %cfg_DiffPhi = phi i32 [ %7, %2 ]
  %9 = phi i32 [ %7, %2 ]
  %icmpEq39 = icmp eq i32 %cfg_DiffPhi, %9
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq37 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq41 = icmp eq i1 %icmpEq37, %10
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180355605
  %12 = icmp eq i32 %11, 180355605
  %icmpEq43 = icmp eq i1 %cfg_icmpEq, %12
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = add nsw i32 %0, -1
  br label %.lr.ph

14:                                               ; preds = %2
  %cfg_DestPhi13 = phi i32 [ 128975641, %2 ]
  %15 = phi i32 [ 128975641, %2 ]
  %cfg_DiffPhi14 = phi i32 [ %7, %2 ]
  %16 = phi i32 [ %7, %2 ]
  %icmpEq47 = icmp eq i32 %cfg_DiffPhi14, %16
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq45 = icmp eq i32 %cfg_DestPhi13, %15
  %17 = icmp eq i32 %15, %15
  %icmpEq49 = icmp eq i1 %icmpEq45, %17
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %18 = xor i32 %cfg_DestPhi13, %cfg_DiffPhi14
  %cfg_icmpEq15 = icmp eq i32 %18, 231736346
  %19 = icmp eq i32 %18, 231736346
  %icmpEq51 = icmp eq i1 %cfg_icmpEq15, %19
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %cfg_zext16 = zext i1 %cfg_icmpEq15 to i32
  call void @assert_cfg_ft(i32 %cfg_zext16, i32 %18, i32 35)
  %20 = load ptr, ptr @stdin, align 8
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef %20)
  call void @sha_print(ptr noundef nonnull %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %52, %.lr.ph.preheader
  %21 = phi i32 [ %58, %52 ], [ %13, %.lr.ph.preheader ]
  %22 = phi i32 [ %58, %52 ], [ %13, %.lr.ph.preheader ]
  %.012 = phi ptr [ %30, %52 ], [ %1, %.lr.ph.preheader ]
  %23 = phi ptr [ %30, %52 ], [ %1, %.lr.ph.preheader ]
  %cfg_DestPhi17 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 437256987, %52 ]
  %24 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 437256987, %52 ]
  %cfg_DiffPhi18 = phi i32 [ 438306097, %.lr.ph.preheader ], [ %61, %52 ]
  %25 = phi i32 [ 438306097, %.lr.ph.preheader ], [ %61, %52 ]
  %icmpEq57 = icmp eq i32 %cfg_DiffPhi18, %25
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i32 %cfg_DestPhi17, %24
  %26 = icmp eq i32 %24, %24
  %icmpEq59 = icmp eq i1 %icmpEq55, %26
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i32 %21, %22
  %zext54 = zext i1 %icmpEq53 to i32
  %27 = zext i1 %icmpEq53 to i32
  %icmpEq61 = icmp eq i32 %zext54, %27
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  call void @assert_ft(i32 %zext54, i32 35)
  %28 = xor i32 %cfg_DestPhi17, %cfg_DiffPhi18
  %cfg_icmpEq19 = icmp eq i32 %28, 283117348
  %cfg_zext20 = zext i1 %cfg_icmpEq19 to i32
  %29 = zext i1 %cfg_icmpEq19 to i32
  %icmpEq63 = icmp eq i32 %cfg_zext20, %29
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext20, i32 %28, i32 35)
  %30 = getelementptr inbounds ptr, ptr %.012, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noalias ptr @fopen(ptr noundef %31, ptr noundef nonnull @.str)
  %33 = icmp eq ptr %32, null
  %34 = icmp eq ptr %32, null
  %icmpEq65 = icmp eq i1 %33, %34
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %35 = select i1 %33, i32 334496526, i32 385877007
  %36 = xor i32 283117348, %35
  br i1 %33, label %37, label %45

37:                                               ; preds = %.lr.ph
  %cfg_DestPhi21 = phi i32 [ 283117348, %.lr.ph ]
  %38 = phi i32 [ 283117348, %.lr.ph ]
  %cfg_DiffPhi22 = phi i32 [ %36, %.lr.ph ]
  %39 = phi i32 [ %36, %.lr.ph ]
  %icmpEq69 = icmp eq i32 %cfg_DiffPhi22, %39
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DestPhi21, %38
  %40 = icmp eq i32 %38, %38
  %icmpEq71 = icmp eq i1 %icmpEq67, %40
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %41 = xor i32 %cfg_DestPhi21, %cfg_DiffPhi22
  %cfg_icmpEq23 = icmp eq i32 %41, 334496526
  %42 = icmp eq i32 %41, 334496526
  %icmpEq73 = icmp eq i1 %cfg_icmpEq23, %42
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %cfg_zext24 = zext i1 %cfg_icmpEq23 to i32
  call void @assert_cfg_ft(i32 %cfg_zext24, i32 %41, i32 35)
  %43 = load ptr, ptr %30, align 8
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %43)
  br label %52

45:                                               ; preds = %.lr.ph
  %cfg_DestPhi25 = phi i32 [ 283117348, %.lr.ph ]
  %46 = phi i32 [ 283117348, %.lr.ph ]
  %cfg_DiffPhi26 = phi i32 [ %36, %.lr.ph ]
  %47 = phi i32 [ %36, %.lr.ph ]
  %icmpEq77 = icmp eq i32 %cfg_DiffPhi26, %47
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq75 = icmp eq i32 %cfg_DestPhi25, %46
  %48 = icmp eq i32 %46, %46
  %icmpEq79 = icmp eq i1 %icmpEq75, %48
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %49 = xor i32 %cfg_DestPhi25, %cfg_DiffPhi26
  %cfg_icmpEq27 = icmp eq i32 %49, 385877007
  %50 = icmp eq i32 %49, 385877007
  %icmpEq81 = icmp eq i1 %cfg_icmpEq27, %50
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %cfg_zext28 = zext i1 %cfg_icmpEq27 to i32
  call void @assert_cfg_ft(i32 %cfg_zext28, i32 %49, i32 35)
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef nonnull %32)
  call void @sha_print(ptr noundef nonnull %3)
  %51 = tail call i32 @fclose(ptr noundef nonnull %32)
  br label %52

52:                                               ; preds = %45, %37
  %cfg_DestPhi29 = phi i32 [ 385877007, %45 ], [ 334496526, %37 ]
  %53 = phi i32 [ 385877007, %45 ], [ 334496526, %37 ]
  %cfg_DiffPhi30 = phi i32 [ 219154196, %45 ], [ 165675029, %37 ]
  %54 = phi i32 [ 219154196, %45 ], [ 165675029, %37 ]
  %icmpEq85 = icmp eq i32 %cfg_DiffPhi30, %54
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq83 = icmp eq i32 %cfg_DestPhi29, %53
  %55 = icmp eq i32 %53, %53
  %icmpEq87 = icmp eq i1 %icmpEq83, %55
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %56 = xor i32 %cfg_DestPhi29, %cfg_DiffPhi30
  %cfg_icmpEq31 = icmp eq i32 %56, 437256987
  %57 = icmp eq i32 %56, 437256987
  %icmpEq89 = icmp eq i1 %cfg_icmpEq31, %57
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %cfg_zext32 = zext i1 %cfg_icmpEq31 to i32
  call void @assert_cfg_ft(i32 %cfg_zext32, i32 %56, i32 35)
  %58 = add nsw i32 %21, -1
  %.not = icmp eq i32 %58, 0
  %59 = icmp eq i32 %58, 0
  %icmpEq91 = icmp eq i1 %.not, %59
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %60 = select i1 %.not, i32 488636677, i32 283117348
  %61 = xor i32 437256987, %60
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %52, %14
  %cfg_DestPhi33 = phi i32 [ 437256987, %52 ], [ 231736346, %14 ]
  %62 = phi i32 [ 437256987, %52 ], [ 231736346, %14 ]
  %cfg_DiffPhi34 = phi i32 [ %61, %52 ], [ 284165407, %14 ]
  %63 = phi i32 [ %61, %52 ], [ 284165407, %14 ]
  %icmpEq95 = icmp eq i32 %cfg_DiffPhi34, %63
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %icmpEq93 = icmp eq i32 %cfg_DestPhi33, %62
  %64 = icmp eq i32 %62, %62
  %icmpEq97 = icmp eq i1 %icmpEq93, %64
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %65 = xor i32 %cfg_DestPhi33, %cfg_DiffPhi34
  %cfg_icmpEq35 = icmp eq i32 %65, 488636677
  %66 = icmp eq i32 %65, 488636677
  %icmpEq99 = icmp eq i1 %cfg_icmpEq35, %66
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %cfg_zext36 = zext i1 %cfg_icmpEq35 to i32
  call void @assert_cfg_ft(i32 %cfg_zext36, i32 %65, i32 35)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store i32 1732584193, ptr %0, align 4
  %2 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %3 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  store i32 -271733879, ptr %2, align 4
  %4 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %5 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  store i32 -1732584194, ptr %4, align 4
  %6 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %7 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  store i32 271733878, ptr %6, align 4
  %8 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %9 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  store i32 -1009589776, ptr %8, align 4
  %10 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  store i32 0, ptr %10, align 4
  %12 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
._crit_edge22:
  %3 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %icmpEq = icmp eq i32 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = shl i32 %2, 3
  %8 = xor i32 %5, -1
  %9 = icmp ugt i32 %7, %8
  %10 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %10, align 4
  %13 = load i32, ptr %11, align 4
  %icmpEq35 = icmp eq i32 %12, %13
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %14 = zext i1 %9 to i32
  %15 = add i32 %12, %14
  %16 = add i32 %5, %7
  store i32 %16, ptr %3, align 4
  %17 = lshr i32 %2, 29
  %18 = lshr i32 %2, 29
  %icmpEq37 = icmp eq i32 %17, %18
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %19 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %20 = add i32 %15, %17
  store i32 %20, ptr %19, align 4
  %21 = icmp sgt i32 %2, 63
  %22 = icmp sgt i32 %2, 63
  %icmpEq39 = icmp eq i1 %21, %22
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %23 = select i1 %21, i32 180355605, i32 283117071
  %24 = xor i32 128979206, %23
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge22
  %cfg_DestPhi = phi i32 [ 128979206, %._crit_edge22 ]
  %25 = phi i32 [ 128979206, %._crit_edge22 ]
  %cfg_DiffPhi = phi i32 [ %24, %._crit_edge22 ]
  %26 = phi i32 [ %24, %._crit_edge22 ]
  %icmpEq43 = icmp eq i32 %cfg_DiffPhi, %26
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq41 = icmp eq i32 %cfg_DestPhi, %25
  %27 = icmp eq i32 %25, %25
  %icmpEq45 = icmp eq i1 %icmpEq41, %27
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %28 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %28, 180355605
  %29 = icmp eq i32 %28, 180355605
  %icmpEq47 = icmp eq i1 %cfg_icmpEq, %29
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %28, i32 35)
  %30 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  br label %31

31:                                               ; preds = %31, %.lr.ph
  %.019 = phi i32 [ %2, %.lr.ph ], [ %42, %31 ]
  %32 = phi i32 [ %2, %.lr.ph ], [ %43, %31 ]
  %.01718 = phi ptr [ %1, %.lr.ph ], [ %40, %31 ]
  %33 = phi ptr [ %1, %.lr.ph ], [ %41, %31 ]
  %cfg_DestPhi27 = phi i32 [ 180355605, %.lr.ph ], [ 231737603, %31 ]
  %34 = phi i32 [ 180355605, %.lr.ph ], [ 231737603, %31 ]
  %cfg_DiffPhi28 = phi i32 [ 118491926, %.lr.ph ], [ %46, %31 ]
  %35 = phi i32 [ 118491926, %.lr.ph ], [ %46, %31 ]
  %icmpEq53 = icmp eq i32 %cfg_DiffPhi28, %35
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %icmpEq51 = icmp eq i32 %cfg_DestPhi27, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq55 = icmp eq i1 %icmpEq51, %36
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i32 %.019, %32
  %zext50 = zext i1 %icmpEq49 to i32
  %37 = zext i1 %icmpEq49 to i32
  %icmpEq57 = icmp eq i32 %zext50, %37
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  call void @assert_ft(i32 %zext50, i32 35)
  %38 = xor i32 %cfg_DestPhi27, %cfg_DiffPhi28
  %cfg_icmpEq29 = icmp eq i32 %38, 231737603
  %cfg_zext30 = zext i1 %cfg_icmpEq29 to i32
  %39 = zext i1 %cfg_icmpEq29 to i32
  %icmpEq59 = icmp eq i32 %cfg_zext30, %39
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext30, i32 %38, i32 35)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %30, ptr noundef nonnull align 1 dereferenceable(64) %.01718, i64 64, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %30)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  %40 = getelementptr inbounds i8, ptr %.01718, i64 64
  %41 = getelementptr inbounds i8, ptr %33, i64 64
  %42 = add nsw i32 %.019, -64
  %43 = add nsw i32 %32, -64
  %icmpEq61 = icmp eq i32 %42, %43
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %44 = icmp ugt i32 %.019, 127
  %45 = select i1 %44, i32 231737603, i32 283117071
  %46 = xor i32 231737603, %45
  br i1 %44, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %31, %._crit_edge22
  %.017.lcssa = phi ptr [ %1, %._crit_edge22 ], [ %40, %31 ]
  %47 = phi ptr [ %1, %._crit_edge22 ], [ %41, %31 ]
  %.0.lcssa = phi i32 [ %2, %._crit_edge22 ], [ %42, %31 ]
  %48 = phi i32 [ %2, %._crit_edge22 ], [ %43, %31 ]
  %cfg_DestPhi31 = phi i32 [ 231737603, %31 ], [ 128979206, %._crit_edge22 ]
  %49 = phi i32 [ 231737603, %31 ], [ 128979206, %._crit_edge22 ]
  %cfg_DiffPhi32 = phi i32 [ %46, %31 ], [ %24, %._crit_edge22 ]
  %50 = phi i32 [ %46, %31 ], [ %24, %._crit_edge22 ]
  %icmpEq67 = icmp eq i32 %cfg_DiffPhi32, %50
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %cfg_DestPhi31, %49
  %51 = icmp eq i32 %49, %49
  %icmpEq69 = icmp eq i1 %icmpEq65, %51
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq63 = icmp eq i32 %.0.lcssa, %48
  %zext64 = zext i1 %icmpEq63 to i32
  %52 = zext i1 %icmpEq63 to i32
  %icmpEq71 = icmp eq i32 %zext64, %52
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  call void @assert_ft(i32 %zext64, i32 35)
  %53 = xor i32 %cfg_DestPhi31, %cfg_DiffPhi32
  %cfg_icmpEq33 = icmp eq i32 %53, 283117071
  %cfg_zext34 = zext i1 %cfg_icmpEq33 to i32
  %54 = zext i1 %cfg_icmpEq33 to i32
  %icmpEq73 = icmp eq i32 %cfg_zext34, %54
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext34, i32 %53, i32 35)
  %55 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %56 = sext i32 %.0.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %55, ptr align 1 %.017.lcssa, i64 %56, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_reverse(ptr nocapture noundef %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %2, %1
  %.015 = phi ptr [ %0, %1 ], [ %20, %2 ]
  %3 = phi ptr [ %0, %1 ], [ %21, %2 ]
  %.01314 = phi i32 [ 0, %1 ], [ %22, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %23, %2 ]
  %cfg_DestPhi = phi i32 [ 128975137, %1 ], [ 180359436, %2 ]
  %5 = phi i32 [ 128975137, %1 ], [ 180359436, %2 ]
  %cfg_DiffPhi = phi i32 [ 225447981, %1 ], [ %25, %2 ]
  %6 = phi i32 [ 225447981, %1 ], [ %25, %2 ]
  %icmpEq7 = icmp eq i32 %cfg_DiffPhi, %6
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %icmpEq5 = icmp eq i32 %cfg_DestPhi, %5
  %7 = icmp eq i32 %5, %5
  %icmpEq9 = icmp eq i1 %icmpEq5, %7
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %icmpEq = icmp eq i32 %.01314, %4
  %zext = zext i1 %icmpEq to i32
  %8 = zext i1 %icmpEq to i32
  %icmpEq11 = icmp eq i32 %zext, %8
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180359436
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %10 = zext i1 %cfg_icmpEq to i32
  %icmpEq13 = icmp eq i32 %cfg_zext, %10
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %11 = load i8, ptr %.015, align 1
  %12 = getelementptr inbounds i8, ptr %.015, i64 1
  %13 = load i8, ptr %12, align 1
  %14 = load i8, ptr %12, align 1
  %icmpEq15 = icmp eq i8 %13, %14
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %15 = getelementptr inbounds i8, ptr %.015, i64 2
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds i8, ptr %.015, i64 3
  %18 = load i8, ptr %17, align 1
  %19 = load i8, ptr %17, align 1
  %icmpEq17 = icmp eq i8 %18, %19
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  store i8 %18, ptr %.015, align 1
  store i8 %16, ptr %12, align 1
  store i8 %13, ptr %15, align 1
  store i8 %11, ptr %17, align 1
  %20 = getelementptr inbounds i8, ptr %.015, i64 4
  %21 = getelementptr inbounds i8, ptr %3, i64 4
  %22 = add nuw nsw i32 %.01314, 1
  %23 = add nuw nsw i32 %4, 1
  %icmpEq19 = icmp eq i32 %22, %23
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %exitcond.not = icmp eq i32 %22, 16
  %24 = select i1 %exitcond.not, i32 231735577, i32 180359436
  %25 = xor i32 180359436, %24
  br i1 %exitcond.not, label %26, label %2

26:                                               ; preds = %2
  %cfg_DestPhi1 = phi i32 [ 180359436, %2 ]
  %27 = phi i32 [ 180359436, %2 ]
  %cfg_DiffPhi2 = phi i32 [ %25, %2 ]
  %28 = phi i32 [ %25, %2 ]
  %icmpEq23 = icmp eq i32 %cfg_DiffPhi2, %28
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %icmpEq21 = icmp eq i32 %cfg_DestPhi1, %27
  %29 = icmp eq i32 %27, %27
  %icmpEq25 = icmp eq i1 %icmpEq21, %29
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %30 = xor i32 %cfg_DestPhi1, %cfg_DiffPhi2
  %cfg_icmpEq3 = icmp eq i32 %30, 231735577
  %31 = icmp eq i32 %30, 231735577
  %icmpEq27 = icmp eq i1 %cfg_icmpEq3, %31
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %cfg_zext4 = zext i1 %cfg_icmpEq3 to i32
  call void @assert_cfg_ft(i32 %cfg_zext4, i32 %30, i32 35)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha_transform(ptr nocapture noundef %0) unnamed_addr #6 {
.preheader112.preheader:
  %1 = alloca [80 x i32], align 16
  %scevgep = getelementptr i8, ptr %0, i64 28
  %2 = getelementptr i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %scevgep, i64 64, i1 false)
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112, %.preheader112.preheader
  %indvars.iv = phi i64 [ 16, %.preheader112.preheader ], [ %indvars.iv.next, %.preheader112 ]
  %3 = phi i64 [ 16, %.preheader112.preheader ], [ %indvars.iv.next, %.preheader112 ]
  %cfg_DestPhi = phi i32 [ 128975893, %.preheader112.preheader ], [ 180360465, %.preheader112 ]
  %4 = phi i32 [ 128975893, %.preheader112.preheader ], [ 180360465, %.preheader112 ]
  %cfg_DiffPhi = phi i32 [ 225448196, %.preheader112.preheader ], [ %32, %.preheader112 ]
  %5 = phi i32 [ 225448196, %.preheader112.preheader ], [ %32, %.preheader112 ]
  %icmpEq212 = icmp eq i32 %cfg_DiffPhi, %5
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %icmpEq210 = icmp eq i32 %cfg_DestPhi, %4
  %6 = icmp eq i32 %4, %4
  %icmpEq214 = icmp eq i1 %icmpEq210, %6
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %icmpEq = icmp eq i64 %indvars.iv, %3
  %zext = zext i1 %icmpEq to i32
  %7 = zext i1 %icmpEq to i32
  %icmpEq216 = icmp eq i32 %zext, %7
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %8 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %8, 180360465
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %9 = zext i1 %cfg_icmpEq to i32
  %icmpEq218 = icmp eq i32 %cfg_zext, %9
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %8, i32 35)
  %10 = add nsw i64 %indvars.iv, -3
  %11 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %11, align 4
  %icmpEq220 = icmp eq i32 %12, %13
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %14 = add nsw i64 %indvars.iv, -8
  %15 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %12
  %18 = xor i32 %16, %13
  %icmpEq222 = icmp eq i32 %17, %18
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %19 = add nsw i64 %indvars.iv, -14
  %20 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %17, %21
  %23 = xor i32 %18, %21
  %icmpEq224 = icmp eq i32 %22, %23
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %24 = add nsw i64 %indvars.iv, -16
  %25 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %22, %26
  %28 = xor i32 %23, %26
  %icmpEq226 = icmp eq i32 %27, %28
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %29 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv
  store i32 %27, ptr %29, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  %30 = icmp eq i64 %indvars.iv.next, 80
  %icmpEq228 = icmp eq i1 %exitcond.not, %30
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %31 = select i1 %exitcond.not, i32 231737884, i32 180360465
  %32 = xor i32 180360465, %31
  br i1 %exitcond.not, label %33, label %.preheader112

33:                                               ; preds = %.preheader112
  %cfg_DestPhi186 = phi i32 [ 180360465, %.preheader112 ]
  %34 = phi i32 [ 180360465, %.preheader112 ]
  %cfg_DiffPhi187 = phi i32 [ %32, %.preheader112 ]
  %35 = phi i32 [ %32, %.preheader112 ]
  %icmpEq232 = icmp eq i32 %cfg_DiffPhi187, %35
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq230 = icmp eq i32 %cfg_DestPhi186, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq234 = icmp eq i1 %icmpEq230, %36
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %37 = xor i32 %cfg_DestPhi186, %cfg_DiffPhi187
  %cfg_icmpEq188 = icmp eq i32 %37, 231737884
  %38 = icmp eq i32 %37, 231737884
  %icmpEq236 = icmp eq i1 %cfg_icmpEq188, %38
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %cfg_zext189 = zext i1 %cfg_icmpEq188 to i32
  call void @assert_cfg_ft(i32 %cfg_zext189, i32 %37, i32 35)
  %39 = load i32, ptr %0, align 4
  %40 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %41 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %42 = load i32, ptr %40, align 4
  %43 = load i32, ptr %41, align 4
  %icmpEq238 = icmp eq i32 %42, %43
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %44 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %46, align 4
  %icmpEq240 = icmp eq i32 %47, %48
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %49 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %51, %33
  %indvars.iv146 = phi i64 [ 0, %33 ], [ %indvars.iv.next147, %51 ]
  %52 = phi i64 [ 0, %33 ], [ %indvars.iv.next147, %51 ]
  %.0120 = phi i32 [ %50, %33 ], [ %.090119, %51 ]
  %53 = phi i32 [ %50, %33 ], [ %54, %51 ]
  %.090119 = phi i32 [ %47, %33 ], [ %.094118, %51 ]
  %54 = phi i32 [ %48, %33 ], [ %55, %51 ]
  %.094118 = phi i32 [ %45, %33 ], [ %81, %51 ]
  %55 = phi i32 [ %45, %33 ], [ %81, %51 ]
  %.098117 = phi i32 [ %42, %33 ], [ %.0102116, %51 ]
  %56 = phi i32 [ %43, %33 ], [ %57, %51 ]
  %.0102116 = phi i32 [ %39, %33 ], [ %80, %51 ]
  %57 = phi i32 [ %39, %33 ], [ %80, %51 ]
  %cfg_DestPhi190 = phi i32 [ 231737884, %33 ], [ 283120930, %51 ]
  %58 = phi i32 [ 231737884, %33 ], [ 283120930, %51 ]
  %cfg_DiffPhi191 = phi i32 [ 489692990, %33 ], [ %84, %51 ]
  %59 = phi i32 [ 489692990, %33 ], [ %84, %51 ]
  %icmpEq256 = icmp eq i32 %cfg_DiffPhi191, %59
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq254 = icmp eq i32 %cfg_DestPhi190, %58
  %60 = icmp eq i32 %58, %58
  %icmpEq258 = icmp eq i1 %icmpEq254, %60
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %icmpEq252 = icmp eq i32 %.0102116, %57
  %zext253 = zext i1 %icmpEq252 to i32
  %61 = zext i1 %icmpEq252 to i32
  %icmpEq260 = icmp eq i32 %zext253, %61
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq250 = icmp eq i32 %.098117, %56
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %icmpEq248 = icmp eq i32 %.094118, %55
  %62 = icmp eq i32 %55, %55
  %icmpEq262 = icmp eq i1 %icmpEq248, %62
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %icmpEq246 = icmp eq i32 %.090119, %54
  %zext247 = zext i1 %icmpEq246 to i32
  %63 = zext i1 %icmpEq246 to i32
  %icmpEq264 = icmp eq i32 %zext247, %63
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq244 = icmp eq i32 %.0120, %53
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %icmpEq242 = icmp eq i64 %indvars.iv146, %52
  %64 = icmp eq i64 %52, %52
  %icmpEq266 = icmp eq i1 %icmpEq242, %64
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %65 = xor i32 %cfg_DestPhi190, %cfg_DiffPhi191
  %cfg_icmpEq192 = icmp eq i32 %65, 283120930
  %66 = icmp eq i32 %65, 283120930
  %icmpEq268 = icmp eq i1 %cfg_icmpEq192, %66
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %cfg_zext193 = zext i1 %cfg_icmpEq192 to i32
  call void @assert_cfg_ft(i32 %cfg_zext193, i32 %65, i32 35)
  %67 = tail call i32 @llvm.fshl.i32(i32 %.0102116, i32 %.0102116, i32 5)
  %68 = and i32 %.094118, %.098117
  %69 = and i32 %55, %56
  %icmpEq270 = icmp eq i32 %68, %69
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %70 = xor i32 %.098117, -1
  %71 = and i32 %.090119, %70
  %72 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv146
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %72, align 4
  %icmpEq272 = icmp eq i32 %73, %74
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %75 = add i32 %67, 1518500249
  %76 = add i32 %75, %68
  %77 = add i32 %76, %71
  %78 = add i32 %77, %.0120
  %79 = add i32 %77, %53
  %icmpEq274 = icmp eq i32 %78, %79
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %80 = add i32 %78, %73
  %81 = tail call i32 @llvm.fshl.i32(i32 %.098117, i32 %.098117, i32 30)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next147, 20
  %82 = icmp eq i64 %indvars.iv.next147, 20
  %icmpEq276 = icmp eq i1 %exitcond148.not, %82
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %83 = select i1 %exitcond148.not, i32 334500635, i32 283120930
  %84 = xor i32 283120930, %83
  br i1 %exitcond148.not, label %.preheader111, label %51

.preheader111:                                    ; preds = %.preheader111, %51
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.preheader111 ], [ 20, %51 ]
  %85 = phi i64 [ %112, %.preheader111 ], [ 20, %51 ]
  %.1126 = phi i32 [ %.191125, %.preheader111 ], [ %.090119, %51 ]
  %86 = phi i32 [ %87, %.preheader111 ], [ %54, %51 ]
  %.191125 = phi i32 [ %.195124, %.preheader111 ], [ %.094118, %51 ]
  %87 = phi i32 [ %88, %.preheader111 ], [ %55, %51 ]
  %.195124 = phi i32 [ %111, %.preheader111 ], [ %81, %51 ]
  %88 = phi i32 [ %111, %.preheader111 ], [ %81, %51 ]
  %.199123 = phi i32 [ %.1103122, %.preheader111 ], [ %.0102116, %51 ]
  %89 = phi i32 [ %90, %.preheader111 ], [ %57, %51 ]
  %.1103122 = phi i32 [ %110, %.preheader111 ], [ %80, %51 ]
  %90 = phi i32 [ %110, %.preheader111 ], [ %80, %51 ]
  %cfg_DestPhi194 = phi i32 [ 283120930, %51 ], [ 334500635, %.preheader111 ]
  %91 = phi i32 [ 283120930, %51 ], [ 334500635, %.preheader111 ]
  %cfg_DiffPhi195 = phi i32 [ %84, %51 ], [ %114, %.preheader111 ]
  %92 = phi i32 [ %84, %51 ], [ %114, %.preheader111 ]
  %icmpEq292 = icmp eq i32 %cfg_DiffPhi195, %92
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq290 = icmp eq i32 %cfg_DestPhi194, %91
  %93 = icmp eq i32 %91, %91
  %icmpEq294 = icmp eq i1 %icmpEq290, %93
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %icmpEq288 = icmp eq i32 %.1103122, %90
  %zext289 = zext i1 %icmpEq288 to i32
  %94 = zext i1 %icmpEq288 to i32
  %icmpEq296 = icmp eq i32 %zext289, %94
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %.199123, %89
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %icmpEq284 = icmp eq i32 %.195124, %88
  %95 = icmp eq i32 %88, %88
  %icmpEq298 = icmp eq i1 %icmpEq284, %95
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %icmpEq282 = icmp eq i32 %.191125, %87
  %zext283 = zext i1 %icmpEq282 to i32
  %96 = zext i1 %icmpEq282 to i32
  %icmpEq300 = icmp eq i32 %zext283, %96
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  call void @assert_ft(i32 %zext283, i32 35)
  %icmpEq280 = icmp eq i32 %.1126, %86
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq278 = icmp eq i64 %indvars.iv149, %85
  %97 = icmp eq i64 %85, %85
  %icmpEq302 = icmp eq i1 %icmpEq278, %97
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %98 = xor i32 %cfg_DestPhi194, %cfg_DiffPhi195
  %cfg_icmpEq196 = icmp eq i32 %98, 334500635
  %99 = icmp eq i32 %98, 334500635
  %icmpEq304 = icmp eq i1 %cfg_icmpEq196, %99
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %cfg_zext197 = zext i1 %cfg_icmpEq196 to i32
  call void @assert_cfg_ft(i32 %cfg_zext197, i32 %98, i32 35)
  %100 = tail call i32 @llvm.fshl.i32(i32 %.1103122, i32 %.1103122, i32 5)
  %101 = xor i32 %.195124, %.199123
  %102 = xor i32 %88, %89
  %icmpEq306 = icmp eq i32 %101, %102
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %103 = xor i32 %101, %.191125
  %104 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv149
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %100, 1859775393
  %107 = add i32 %100, 1859775393
  %icmpEq308 = icmp eq i32 %106, %107
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %108 = add i32 %106, %103
  %109 = add i32 %108, %.1126
  %110 = add i32 %109, %105
  %111 = tail call i32 @llvm.fshl.i32(i32 %.199123, i32 %.199123, i32 30)
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %112 = add nuw nsw i64 %85, 1
  %icmpEq310 = icmp eq i64 %indvars.iv.next150, %112
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %exitcond151.not = icmp eq i64 %indvars.iv.next150, 40
  %113 = select i1 %exitcond151.not, i32 385881358, i32 334500635
  %114 = xor i32 334500635, %113
  br i1 %exitcond151.not, label %.preheader110, label %.preheader111

.preheader110:                                    ; preds = %.preheader110, %.preheader111
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.preheader110 ], [ 40, %.preheader111 ]
  %115 = phi i64 [ %191, %.preheader110 ], [ 40, %.preheader111 ]
  %116 = phi i64 [ %indvars.iv.next153, %.preheader110 ], [ 40, %.preheader111 ]
  %117 = phi i64 [ %191, %.preheader110 ], [ 40, %.preheader111 ]
  %.2132 = phi i32 [ %.292131, %.preheader110 ], [ %.191125, %.preheader111 ]
  %118 = phi i32 [ %121, %.preheader110 ], [ %87, %.preheader111 ]
  %119 = phi i32 [ %.292131, %.preheader110 ], [ %.191125, %.preheader111 ]
  %120 = phi i32 [ %121, %.preheader110 ], [ %87, %.preheader111 ]
  %.292131 = phi i32 [ %.296130, %.preheader110 ], [ %.195124, %.preheader111 ]
  %121 = phi i32 [ %124, %.preheader110 ], [ %88, %.preheader111 ]
  %122 = phi i32 [ %.296130, %.preheader110 ], [ %.195124, %.preheader111 ]
  %123 = phi i32 [ %124, %.preheader110 ], [ %88, %.preheader111 ]
  %.296130 = phi i32 [ %190, %.preheader110 ], [ %111, %.preheader111 ]
  %124 = phi i32 [ %190, %.preheader110 ], [ %111, %.preheader111 ]
  %125 = phi i32 [ %190, %.preheader110 ], [ %111, %.preheader111 ]
  %126 = phi i32 [ %190, %.preheader110 ], [ %111, %.preheader111 ]
  %.2100129 = phi i32 [ %.2104128, %.preheader110 ], [ %.1103122, %.preheader111 ]
  %127 = phi i32 [ %130, %.preheader110 ], [ %90, %.preheader111 ]
  %128 = phi i32 [ %.2104128, %.preheader110 ], [ %.1103122, %.preheader111 ]
  %129 = phi i32 [ %130, %.preheader110 ], [ %90, %.preheader111 ]
  %.2104128 = phi i32 [ %187, %.preheader110 ], [ %110, %.preheader111 ]
  %130 = phi i32 [ %188, %.preheader110 ], [ %110, %.preheader111 ]
  %131 = phi i32 [ %187, %.preheader110 ], [ %110, %.preheader111 ]
  %132 = phi i32 [ %188, %.preheader110 ], [ %110, %.preheader111 ]
  %cfg_DestPhi198 = phi i32 [ 334500635, %.preheader111 ], [ 385881358, %.preheader110 ]
  %133 = phi i32 [ 334500635, %.preheader111 ], [ 385881358, %.preheader110 ]
  %134 = phi i32 [ 334500635, %.preheader111 ], [ 385881358, %.preheader110 ]
  %135 = phi i32 [ 334500635, %.preheader111 ], [ 385881358, %.preheader110 ]
  %cfg_DiffPhi199 = phi i32 [ %114, %.preheader111 ], [ %195, %.preheader110 ]
  %136 = phi i32 [ %114, %.preheader111 ], [ %195, %.preheader110 ]
  %137 = phi i32 [ %114, %.preheader111 ], [ %195, %.preheader110 ]
  %138 = phi i32 [ %114, %.preheader111 ], [ %195, %.preheader110 ]
  %icmpEq378 = icmp eq i32 %137, %138
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %icmpEq376 = icmp eq i32 %cfg_DiffPhi199, %136
  %139 = icmp eq i32 %136, %136
  %icmpEq380 = icmp eq i1 %icmpEq376, %139
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %icmpEq374 = icmp eq i32 %134, %135
  %zext375 = zext i1 %icmpEq374 to i32
  %140 = zext i1 %icmpEq374 to i32
  %icmpEq382 = icmp eq i32 %zext375, %140
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  call void @assert_ft(i32 %zext375, i32 35)
  %icmpEq372 = icmp eq i32 %cfg_DestPhi198, %133
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  %icmpEq370 = icmp eq i32 %131, %132
  %141 = icmp eq i32 %132, %132
  %icmpEq384 = icmp eq i1 %icmpEq370, %141
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %icmpEq368 = icmp eq i32 %.2104128, %130
  %zext369 = zext i1 %icmpEq368 to i32
  %142 = zext i1 %icmpEq368 to i32
  %icmpEq386 = icmp eq i32 %zext369, %142
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  call void @assert_ft(i32 %zext369, i32 35)
  %icmpEq366 = icmp eq i32 %128, %129
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  %icmpEq364 = icmp eq i32 %.2100129, %127
  %143 = icmp eq i32 %127, %127
  %icmpEq388 = icmp eq i1 %icmpEq364, %143
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %icmpEq362 = icmp eq i32 %125, %126
  %zext363 = zext i1 %icmpEq362 to i32
  %144 = zext i1 %icmpEq362 to i32
  %icmpEq390 = icmp eq i32 %zext363, %144
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  call void @assert_ft(i32 %zext363, i32 35)
  %icmpEq360 = icmp eq i32 %.296130, %124
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %icmpEq358 = icmp eq i32 %122, %123
  %145 = icmp eq i32 %123, %123
  %icmpEq392 = icmp eq i1 %icmpEq358, %145
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  %zext359 = zext i1 %icmpEq358 to i32
  call void @assert_ft(i32 %zext359, i32 35)
  %icmpEq356 = icmp eq i32 %.292131, %121
  %zext357 = zext i1 %icmpEq356 to i32
  %146 = zext i1 %icmpEq356 to i32
  %icmpEq394 = icmp eq i32 %zext357, %146
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  call void @assert_ft(i32 %zext357, i32 35)
  %icmpEq354 = icmp eq i32 %119, %120
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %icmpEq352 = icmp eq i32 %.2132, %118
  %147 = icmp eq i32 %118, %118
  %icmpEq396 = icmp eq i1 %icmpEq352, %147
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  %icmpEq350 = icmp eq i64 %116, %117
  %zext351 = zext i1 %icmpEq350 to i32
  %148 = zext i1 %icmpEq350 to i32
  %icmpEq398 = icmp eq i32 %zext351, %148
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  call void @assert_ft(i32 %zext351, i32 35)
  %icmpEq348 = icmp eq i64 %indvars.iv152, %115
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  %icmpEq326 = icmp eq i32 %cfg_DiffPhi199, %137
  %149 = icmp eq i32 %136, %138
  %icmpEq400 = icmp eq i1 %icmpEq326, %149
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  %icmpEq324 = icmp eq i32 %cfg_DestPhi198, %134
  %150 = icmp eq i32 %133, %135
  %151 = icmp eq i32 %133, %135
  %icmpEq402 = icmp eq i1 %150, %151
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  %icmpEq328 = icmp eq i1 %icmpEq324, %150
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %zext325 = zext i1 %icmpEq324 to i32
  %152 = zext i1 %150 to i32
  %icmpEq404 = icmp eq i32 %zext325, %152
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  call void @assert_ft(i32 %zext325, i32 35)
  %icmpEq322 = icmp eq i32 %.2104128, %131
  %zext323 = zext i1 %icmpEq322 to i32
  %153 = zext i1 %icmpEq322 to i32
  %154 = zext i1 %icmpEq322 to i32
  %icmpEq406 = icmp eq i32 %153, %154
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  %icmpEq330 = icmp eq i32 %zext323, %153
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  call void @assert_ft(i32 %zext323, i32 35)
  %icmpEq320 = icmp eq i32 %.2100129, %128
  %155 = icmp eq i32 %127, %129
  %icmpEq408 = icmp eq i1 %icmpEq320, %155
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq318 = icmp eq i32 %.296130, %125
  %156 = icmp eq i32 %124, %126
  %157 = icmp eq i32 %124, %126
  %icmpEq410 = icmp eq i1 %156, %157
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  %icmpEq332 = icmp eq i1 %icmpEq318, %156
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %zext319 = zext i1 %icmpEq318 to i32
  %158 = zext i1 %156 to i32
  %icmpEq412 = icmp eq i32 %zext319, %158
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  call void @assert_ft(i32 %zext319, i32 35)
  %icmpEq316 = icmp eq i32 %.292131, %122
  %zext317 = zext i1 %icmpEq316 to i32
  %159 = zext i1 %icmpEq316 to i32
  %160 = zext i1 %icmpEq316 to i32
  %icmpEq414 = icmp eq i32 %159, %160
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  %icmpEq334 = icmp eq i32 %zext317, %159
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq314 = icmp eq i32 %.2132, %119
  %161 = icmp eq i32 %118, %120
  %icmpEq416 = icmp eq i1 %icmpEq314, %161
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %icmpEq312 = icmp eq i64 %indvars.iv152, %116
  %162 = icmp eq i64 %115, %117
  %163 = icmp eq i64 %115, %117
  %icmpEq418 = icmp eq i1 %162, %163
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  %icmpEq336 = icmp eq i1 %icmpEq312, %162
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %zext313 = zext i1 %icmpEq312 to i32
  %164 = zext i1 %162 to i32
  %icmpEq420 = icmp eq i32 %zext313, %164
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  call void @assert_ft(i32 %zext313, i32 35)
  %165 = xor i32 %cfg_DestPhi198, %cfg_DiffPhi199
  %cfg_icmpEq200 = icmp eq i32 %165, 385881358
  %166 = icmp eq i32 %165, 385881358
  %167 = icmp eq i32 %165, 385881358
  %icmpEq422 = icmp eq i1 %166, %167
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %icmpEq338 = icmp eq i1 %cfg_icmpEq200, %166
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %cfg_zext201 = zext i1 %cfg_icmpEq200 to i32
  %168 = zext i1 %166 to i32
  %icmpEq424 = icmp eq i32 %cfg_zext201, %168
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext201, i32 %165, i32 35)
  %169 = tail call i32 @llvm.fshl.i32(i32 %.2104128, i32 %.2104128, i32 5)
  %170 = or i32 %.292131, %.296130
  %171 = or i32 %121, %124
  %172 = or i32 %121, %124
  %icmpEq426 = icmp eq i32 %171, %172
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  %icmpEq340 = icmp eq i32 %170, %171
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  %173 = and i32 %170, %.2100129
  %174 = and i32 %171, %127
  %icmpEq428 = icmp eq i32 %173, %174
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %175 = and i32 %.292131, %.296130
  %176 = or i32 %173, %175
  %177 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv152
  %178 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %115
  %179 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %115
  %180 = load i32, ptr %177, align 4
  %181 = load i32, ptr %178, align 4
  %icmpEq430 = icmp eq i32 %180, %181
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  %182 = load i32, ptr %177, align 4
  %icmpEq342 = icmp eq i32 %180, %182
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %183 = add i32 %169, -1894007588
  %184 = add i32 %169, -1894007588
  %icmpEq432 = icmp eq i32 %183, %184
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  %185 = add i32 %183, %.2132
  %186 = add i32 %185, %176
  %187 = add i32 %186, %180
  %188 = add i32 %186, %181
  %189 = add i32 %186, %181
  %icmpEq434 = icmp eq i32 %188, %189
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  %icmpEq344 = icmp eq i32 %187, %188
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  %190 = tail call i32 @llvm.fshl.i32(i32 %.2100129, i32 %.2100129, i32 30)
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %191 = add nuw nsw i64 %115, 1
  %icmpEq436 = icmp eq i64 %indvars.iv.next153, %191
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %exitcond154.not = icmp eq i64 %indvars.iv.next153, 60
  %192 = select i1 %exitcond154.not, i32 437261079, i32 385881358
  %193 = select i1 %exitcond154.not, i32 437261079, i32 385881358
  %icmpEq346 = icmp eq i32 %192, %193
  %194 = icmp eq i32 %193, %193
  %icmpEq438 = icmp eq i1 %icmpEq346, %194
  %zext439 = zext i1 %icmpEq438 to i32
  call void @assert_ft(i32 %zext439, i32 35)
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  %195 = xor i32 385881358, %192
  br i1 %exitcond154.not, label %.preheader, label %.preheader110

.preheader:                                       ; preds = %.preheader, %.preheader110
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.preheader ], [ 60, %.preheader110 ]
  %196 = phi i64 [ %223, %.preheader ], [ 60, %.preheader110 ]
  %.3138 = phi i32 [ %.393137, %.preheader ], [ %.292131, %.preheader110 ]
  %197 = phi i32 [ %198, %.preheader ], [ %121, %.preheader110 ]
  %.393137 = phi i32 [ %.397136, %.preheader ], [ %.296130, %.preheader110 ]
  %198 = phi i32 [ %199, %.preheader ], [ %124, %.preheader110 ]
  %.397136 = phi i32 [ %222, %.preheader ], [ %190, %.preheader110 ]
  %199 = phi i32 [ %222, %.preheader ], [ %190, %.preheader110 ]
  %.3101135 = phi i32 [ %.3105134, %.preheader ], [ %.2104128, %.preheader110 ]
  %200 = phi i32 [ %201, %.preheader ], [ %130, %.preheader110 ]
  %.3105134 = phi i32 [ %221, %.preheader ], [ %187, %.preheader110 ]
  %201 = phi i32 [ %221, %.preheader ], [ %188, %.preheader110 ]
  %cfg_DestPhi202 = phi i32 [ 385881358, %.preheader110 ], [ 437261079, %.preheader ]
  %202 = phi i32 [ 385881358, %.preheader110 ], [ 437261079, %.preheader ]
  %cfg_DiffPhi203 = phi i32 [ %195, %.preheader110 ], [ %225, %.preheader ]
  %203 = phi i32 [ %195, %.preheader110 ], [ %225, %.preheader ]
  %icmpEq454 = icmp eq i32 %cfg_DiffPhi203, %203
  %zext455 = zext i1 %icmpEq454 to i32
  call void @assert_ft(i32 %zext455, i32 35)
  %icmpEq452 = icmp eq i32 %cfg_DestPhi202, %202
  %204 = icmp eq i32 %202, %202
  %icmpEq456 = icmp eq i1 %icmpEq452, %204
  %zext457 = zext i1 %icmpEq456 to i32
  call void @assert_ft(i32 %zext457, i32 35)
  %zext453 = zext i1 %icmpEq452 to i32
  call void @assert_ft(i32 %zext453, i32 35)
  %icmpEq450 = icmp eq i32 %.3105134, %201
  %zext451 = zext i1 %icmpEq450 to i32
  %205 = zext i1 %icmpEq450 to i32
  %icmpEq458 = icmp eq i32 %zext451, %205
  %zext459 = zext i1 %icmpEq458 to i32
  call void @assert_ft(i32 %zext459, i32 35)
  call void @assert_ft(i32 %zext451, i32 35)
  %icmpEq448 = icmp eq i32 %.3101135, %200
  %zext449 = zext i1 %icmpEq448 to i32
  call void @assert_ft(i32 %zext449, i32 35)
  %icmpEq446 = icmp eq i32 %.397136, %199
  %206 = icmp eq i32 %199, %199
  %icmpEq460 = icmp eq i1 %icmpEq446, %206
  %zext461 = zext i1 %icmpEq460 to i32
  call void @assert_ft(i32 %zext461, i32 35)
  %zext447 = zext i1 %icmpEq446 to i32
  call void @assert_ft(i32 %zext447, i32 35)
  %icmpEq444 = icmp eq i32 %.393137, %198
  %zext445 = zext i1 %icmpEq444 to i32
  %207 = zext i1 %icmpEq444 to i32
  %icmpEq462 = icmp eq i32 %zext445, %207
  %zext463 = zext i1 %icmpEq462 to i32
  call void @assert_ft(i32 %zext463, i32 35)
  call void @assert_ft(i32 %zext445, i32 35)
  %icmpEq442 = icmp eq i32 %.3138, %197
  %zext443 = zext i1 %icmpEq442 to i32
  call void @assert_ft(i32 %zext443, i32 35)
  %icmpEq440 = icmp eq i64 %indvars.iv155, %196
  %208 = icmp eq i64 %196, %196
  %icmpEq464 = icmp eq i1 %icmpEq440, %208
  %zext465 = zext i1 %icmpEq464 to i32
  call void @assert_ft(i32 %zext465, i32 35)
  %zext441 = zext i1 %icmpEq440 to i32
  call void @assert_ft(i32 %zext441, i32 35)
  %209 = xor i32 %cfg_DestPhi202, %cfg_DiffPhi203
  %cfg_icmpEq204 = icmp eq i32 %209, 437261079
  %210 = icmp eq i32 %209, 437261079
  %icmpEq466 = icmp eq i1 %cfg_icmpEq204, %210
  %zext467 = zext i1 %icmpEq466 to i32
  call void @assert_ft(i32 %zext467, i32 35)
  %cfg_zext205 = zext i1 %cfg_icmpEq204 to i32
  call void @assert_cfg_ft(i32 %cfg_zext205, i32 %209, i32 35)
  %211 = tail call i32 @llvm.fshl.i32(i32 %.3105134, i32 %.3105134, i32 5)
  %212 = xor i32 %.397136, %.3101135
  %213 = xor i32 %199, %200
  %icmpEq468 = icmp eq i32 %212, %213
  %zext469 = zext i1 %icmpEq468 to i32
  call void @assert_ft(i32 %zext469, i32 35)
  %214 = xor i32 %212, %.393137
  %215 = getelementptr inbounds [80 x i32], ptr %1, i64 0, i64 %indvars.iv155
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %211, -899497514
  %218 = add i32 %211, -899497514
  %icmpEq470 = icmp eq i32 %217, %218
  %zext471 = zext i1 %icmpEq470 to i32
  call void @assert_ft(i32 %zext471, i32 35)
  %219 = add i32 %217, %214
  %220 = add i32 %219, %.3138
  %221 = add i32 %220, %216
  %222 = tail call i32 @llvm.fshl.i32(i32 %.3101135, i32 %.3101135, i32 30)
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %223 = add nuw nsw i64 %196, 1
  %icmpEq472 = icmp eq i64 %indvars.iv.next156, %223
  %zext473 = zext i1 %icmpEq472 to i32
  call void @assert_ft(i32 %zext473, i32 35)
  %exitcond157.not = icmp eq i64 %indvars.iv.next156, 80
  %224 = select i1 %exitcond157.not, i32 488639250, i32 437261079
  %225 = xor i32 437261079, %224
  br i1 %exitcond157.not, label %226, label %.preheader

226:                                              ; preds = %.preheader
  %cfg_DestPhi206 = phi i32 [ 437261079, %.preheader ]
  %227 = phi i32 [ 437261079, %.preheader ]
  %cfg_DiffPhi207 = phi i32 [ %225, %.preheader ]
  %228 = phi i32 [ %225, %.preheader ]
  %icmpEq476 = icmp eq i32 %cfg_DiffPhi207, %228
  %zext477 = zext i1 %icmpEq476 to i32
  call void @assert_ft(i32 %zext477, i32 35)
  %icmpEq474 = icmp eq i32 %cfg_DestPhi206, %227
  %229 = icmp eq i32 %227, %227
  %icmpEq478 = icmp eq i1 %icmpEq474, %229
  %zext479 = zext i1 %icmpEq478 to i32
  call void @assert_ft(i32 %zext479, i32 35)
  %zext475 = zext i1 %icmpEq474 to i32
  call void @assert_ft(i32 %zext475, i32 35)
  %230 = xor i32 %cfg_DestPhi206, %cfg_DiffPhi207
  %cfg_icmpEq208 = icmp eq i32 %230, 488639250
  %231 = icmp eq i32 %230, 488639250
  %icmpEq480 = icmp eq i1 %cfg_icmpEq208, %231
  %zext481 = zext i1 %icmpEq480 to i32
  call void @assert_ft(i32 %zext481, i32 35)
  %cfg_zext209 = zext i1 %cfg_icmpEq208 to i32
  call void @assert_cfg_ft(i32 %cfg_zext209, i32 %230, i32 35)
  %232 = add i32 %221, %39
  store i32 %232, ptr %0, align 4
  %233 = add i32 %.3105134, %42
  %234 = add i32 %201, %43
  %icmpEq482 = icmp eq i32 %233, %234
  %zext483 = zext i1 %icmpEq482 to i32
  call void @assert_ft(i32 %zext483, i32 35)
  store i32 %233, ptr %40, align 4
  %235 = add i32 %222, %45
  store i32 %235, ptr %44, align 4
  %236 = add i32 %.397136, %47
  %237 = add i32 %199, %48
  %icmpEq484 = icmp eq i32 %236, %237
  %zext485 = zext i1 %icmpEq484 to i32
  call void @assert_ft(i32 %zext485, i32 35)
  store i32 %236, ptr %46, align 4
  %238 = add i32 %.393137, %50
  store i32 %238, ptr %49, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha_final(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %2, align 4
  %6 = load i32, ptr %3, align 4
  %icmpEq34 = icmp eq i32 %5, %6
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %7 = load i32, ptr %2, align 4
  %icmpEq = icmp eq i32 %5, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %icmpEq36 = icmp eq i32 %10, %11
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %12 = lshr i32 %5, 3
  %13 = and i32 %12, 63
  %14 = and i32 %12, 63
  %icmpEq28 = icmp eq i32 %13, %14
  %15 = icmp eq i32 %14, %14
  %icmpEq38 = icmp eq i1 %icmpEq28, %15
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %16 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3
  %17 = add nuw nsw i32 %13, 1
  %18 = add nuw nsw i32 %14, 1
  %icmpEq40 = icmp eq i32 %17, %18
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %19 = zext i32 %13 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = getelementptr inbounds i8, ptr %16, i64 %19
  store i8 -128, ptr %20, align 1
  %22 = icmp ugt i32 %13, 55
  %23 = icmp ugt i32 %14, 55
  %icmpEq42 = icmp eq i1 %22, %23
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %24 = icmp ugt i32 %13, 55
  %icmpEq30 = icmp eq i1 %22, %24
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %25 = zext i32 %17 to i64
  %26 = zext i32 %18 to i64
  %icmpEq44 = icmp eq i64 %25, %26
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %27 = getelementptr inbounds i8, ptr %16, i64 %25
  %28 = select i1 %22, i32 180356882, i32 231736346
  %29 = xor i32 128978702, %28
  %30 = xor i32 128978702, %28
  %31 = xor i32 128978702, %28
  %icmpEq46 = icmp eq i32 %30, %31
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq32 = icmp eq i32 %29, %30
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  br i1 %22, label %32, label %41

32:                                               ; preds = %1
  %cfg_DestPhi = phi i32 [ 128978702, %1 ]
  %33 = phi i32 [ 128978702, %1 ]
  %cfg_DiffPhi = phi i32 [ %29, %1 ]
  %34 = phi i32 [ %30, %1 ]
  %icmpEq50 = icmp eq i32 %cfg_DiffPhi, %34
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i32 %cfg_DestPhi, %33
  %35 = icmp eq i32 %33, %33
  %icmpEq52 = icmp eq i1 %icmpEq48, %35
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %36 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %36, 180356882
  %37 = icmp eq i32 %36, 180356882
  %icmpEq54 = icmp eq i1 %cfg_icmpEq, %37
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %36, i32 35)
  %38 = xor i32 %13, 63
  %39 = zext i32 %38 to i64
  %40 = zext i32 %38 to i64
  %icmpEq56 = icmp eq i64 %39, %40
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %27, i8 0, i64 %39, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %16)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %16, i8 0, i64 56, i1 false)
  br label %62

41:                                               ; preds = %1
  %cfg_DestPhi20 = phi i32 [ 128978702, %1 ]
  %42 = phi i32 [ 128978702, %1 ]
  %43 = phi i32 [ 128978702, %1 ]
  %44 = phi i32 [ 128978702, %1 ]
  %cfg_DiffPhi21 = phi i32 [ %29, %1 ]
  %45 = phi i32 [ %30, %1 ]
  %46 = phi i32 [ %29, %1 ]
  %47 = phi i32 [ %30, %1 ]
  %icmpEq74 = icmp eq i32 %46, %47
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq72 = icmp eq i32 %cfg_DiffPhi21, %45
  %48 = icmp eq i32 %45, %45
  %icmpEq76 = icmp eq i1 %icmpEq72, %48
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i32 %43, %44
  %zext71 = zext i1 %icmpEq70 to i32
  %49 = zext i1 %icmpEq70 to i32
  %icmpEq78 = icmp eq i32 %zext71, %49
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  call void @assert_ft(i32 %zext71, i32 35)
  %icmpEq68 = icmp eq i32 %cfg_DestPhi20, %42
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %icmpEq60 = icmp eq i32 %cfg_DiffPhi21, %46
  %50 = icmp eq i32 %45, %47
  %icmpEq80 = icmp eq i1 %icmpEq60, %50
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i32 %cfg_DestPhi20, %43
  %51 = icmp eq i32 %42, %44
  %52 = icmp eq i32 %42, %44
  %icmpEq82 = icmp eq i1 %51, %52
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %icmpEq62 = icmp eq i1 %icmpEq58, %51
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  %53 = zext i1 %51 to i32
  %icmpEq84 = icmp eq i32 %zext59, %53
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  call void @assert_ft(i32 %zext59, i32 35)
  %54 = xor i32 %cfg_DestPhi20, %cfg_DiffPhi21
  %cfg_icmpEq22 = icmp eq i32 %54, 231736346
  %55 = icmp eq i32 %54, 231736346
  %56 = icmp eq i32 %54, 231736346
  %icmpEq86 = icmp eq i1 %55, %56
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq64 = icmp eq i1 %cfg_icmpEq22, %55
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %cfg_zext23 = zext i1 %cfg_icmpEq22 to i32
  %57 = zext i1 %55 to i32
  %icmpEq88 = icmp eq i32 %cfg_zext23, %57
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext23, i32 %54, i32 35)
  %58 = sub nuw nsw i32 55, %13
  %59 = zext i32 %58 to i64
  %60 = zext i32 %58 to i64
  %61 = zext i32 %58 to i64
  %icmpEq90 = icmp eq i64 %60, %61
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq66 = icmp eq i64 %59, %60
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %27, i8 0, i64 %59, i1 false)
  br label %62

62:                                               ; preds = %41, %32
  %cfg_DestPhi24 = phi i32 [ 231736346, %41 ], [ 180356882, %32 ]
  %63 = phi i32 [ 231736346, %41 ], [ 180356882, %32 ]
  %cfg_DiffPhi25 = phi i32 [ 489685822, %41 ], [ 438304822, %32 ]
  %64 = phi i32 [ 489685822, %41 ], [ 438304822, %32 ]
  %icmpEq94 = icmp eq i32 %cfg_DiffPhi25, %64
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DestPhi24, %63
  %65 = icmp eq i32 %63, %63
  %icmpEq96 = icmp eq i1 %icmpEq92, %65
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %66 = xor i32 %cfg_DestPhi24, %cfg_DiffPhi25
  %cfg_icmpEq26 = icmp eq i32 %66, 283117348
  %67 = icmp eq i32 %66, 283117348
  %icmpEq98 = icmp eq i1 %cfg_icmpEq26, %67
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %cfg_zext27 = zext i1 %cfg_icmpEq26 to i32
  call void @assert_cfg_ft(i32 %cfg_zext27, i32 %66, i32 35)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %16)
  %68 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  %69 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 14
  store i32 %10, ptr %68, align 4
  %70 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  %71 = getelementptr inbounds %struct.SHA_INFO, ptr %0, i64 0, i32 3, i64 15
  store i32 %5, ptr %70, align 4
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @sha_stream(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8192 x i8], align 16
  tail call void @sha_init(ptr noundef %0)
  %4 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %5 = trunc i64 %4 to i32
  %6 = trunc i64 %4 to i32
  %icmpEq = icmp eq i32 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = icmp sgt i32 %5, 0
  %8 = select i1 %7, i32 180356634, i32 231735821
  %9 = xor i32 128976397, %8
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %10 = phi i32 [ %19, %.lr.ph ], [ %5, %2 ]
  %11 = phi i32 [ %20, %.lr.ph ], [ %6, %2 ]
  %cfg_DestPhi = phi i32 [ 128976397, %2 ], [ 180356634, %.lr.ph ]
  %12 = phi i32 [ 128976397, %2 ], [ 180356634, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %9, %2 ], [ %23, %.lr.ph ]
  %13 = phi i32 [ %9, %2 ], [ %23, %.lr.ph ]
  %icmpEq12 = icmp eq i32 %cfg_DiffPhi, %13
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %icmpEq10 = icmp eq i32 %cfg_DestPhi, %12
  %14 = icmp eq i32 %12, %12
  %icmpEq14 = icmp eq i1 %icmpEq10, %14
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  %icmpEq8 = icmp eq i32 %10, %11
  %zext9 = zext i1 %icmpEq8 to i32
  %15 = zext i1 %icmpEq8 to i32
  %icmpEq16 = icmp eq i32 %zext9, %15
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  call void @assert_ft(i32 %zext9, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180356634
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %17 = zext i1 %cfg_icmpEq to i32
  %icmpEq18 = icmp eq i32 %cfg_zext, %17
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  call void @sha_update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %10)
  %18 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %19 = trunc i64 %18 to i32
  %20 = trunc i64 %18 to i32
  %icmpEq20 = icmp eq i32 %19, %20
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %21 = icmp sgt i32 %19, 0
  %22 = select i1 %21, i32 180356634, i32 231735821
  %23 = xor i32 180356634, %22
  br i1 %21, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %2
  %cfg_DestPhi4 = phi i32 [ 180356634, %.lr.ph ], [ 128976397, %2 ]
  %24 = phi i32 [ 180356634, %.lr.ph ], [ 128976397, %2 ]
  %cfg_DiffPhi5 = phi i32 [ %23, %.lr.ph ], [ %9, %2 ]
  %25 = phi i32 [ %23, %.lr.ph ], [ %9, %2 ]
  %icmpEq24 = icmp eq i32 %cfg_DiffPhi5, %25
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %icmpEq22 = icmp eq i32 %cfg_DestPhi4, %24
  %26 = icmp eq i32 %24, %24
  %icmpEq26 = icmp eq i1 %icmpEq22, %26
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %27 = xor i32 %cfg_DestPhi4, %cfg_DiffPhi5
  %cfg_icmpEq6 = icmp eq i32 %27, 231735821
  %28 = icmp eq i32 %27, 231735821
  %icmpEq28 = icmp eq i1 %cfg_icmpEq6, %28
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %cfg_zext7 = zext i1 %cfg_icmpEq6 to i32
  call void @assert_cfg_ft(i32 %cfg_zext7, i32 %27, i32 35)
  tail call void @sha_final(ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @sha_print(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %icmpEq9 = icmp eq i32 %2, %3
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %4 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %2, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %6 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 1
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %6, align 4
  %icmpEq11 = icmp eq i32 %7, %8
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %9 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 2
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %9, align 4
  %icmpEq5 = icmp eq i32 %10, %11
  %12 = icmp eq i32 %11, %11
  %icmpEq13 = icmp eq i1 %icmpEq5, %12
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %13 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 3
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %13, align 4
  %icmpEq15 = icmp eq i32 %14, %15
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %16 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %16, align 4
  %icmpEq7 = icmp eq i32 %17, %18
  %19 = icmp eq i32 %18, %18
  %icmpEq17 = icmp eq i1 %icmpEq7, %19
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2, i32 noundef %7, i32 noundef %10, i32 noundef %14, i32 noundef %17)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

declare void @exit(i32, ...)

declare i32 @printf.1(ptr, i32, ...)

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
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
