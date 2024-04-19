; ModuleID = 'dijkstra-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._NODE = type { i32, i32 }
%struct._QITEM = type { i32, i32, i32, ptr }

@qHead = dso_local local_unnamed_addr global ptr null, align 8
@g_qCount = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = dso_local local_unnamed_addr global i32 0, align 4
@rgnNodes = dso_local global [100 x %struct._NODE] zeroinitializer, align 16
@iNode = dso_local global i32 0, align 4
@iDist = dso_local global i32 0, align 4
@iPrev = dso_local global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@AdjMatrix = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_path(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  %icmpEq11 = icmp eq i64 %3, %4
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %5 = sext i32 %1 to i64
  %icmpEq = icmp eq i64 %3, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = getelementptr inbounds %struct._NODE, ptr %0, i64 %3, i32 1
  %7 = getelementptr inbounds %struct._NODE, ptr %0, i64 %4, i32 1
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %7, align 4
  %icmpEq13 = icmp eq i32 %8, %9
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %.not = icmp eq i32 %8, 9999
  %10 = select i1 %.not, i32 231736346, i32 180355605
  %11 = select i1 %.not, i32 231736346, i32 180355605
  %icmpEq9 = icmp eq i32 %10, %11
  %12 = icmp eq i32 %11, %11
  %icmpEq15 = icmp eq i1 %icmpEq9, %12
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %13 = xor i32 128976145, %10
  br i1 %.not, label %20, label %14

14:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128976145, %2 ]
  %15 = phi i32 [ 128976145, %2 ]
  %cfg_DiffPhi = phi i32 [ %13, %2 ]
  %16 = phi i32 [ %13, %2 ]
  %icmpEq19 = icmp eq i32 %cfg_DiffPhi, %16
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %icmpEq17 = icmp eq i32 %cfg_DestPhi, %15
  %17 = icmp eq i32 %15, %15
  %icmpEq21 = icmp eq i1 %icmpEq17, %17
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %18 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %18, 180355605
  %19 = icmp eq i32 %18, 180355605
  %icmpEq23 = icmp eq i1 %cfg_icmpEq, %19
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %18, i32 35)
  tail call void @print_path(ptr noundef nonnull %0, i32 noundef %8)
  br label %20

20:                                               ; preds = %14, %2
  %cfg_DestPhi5 = phi i32 [ 180355605, %14 ], [ 128976145, %2 ]
  %21 = phi i32 [ 180355605, %14 ], [ 128976145, %2 ]
  %cfg_DiffPhi6 = phi i32 [ 118490639, %14 ], [ %13, %2 ]
  %22 = phi i32 [ 118490639, %14 ], [ %13, %2 ]
  %icmpEq27 = icmp eq i32 %cfg_DiffPhi6, %22
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq25 = icmp eq i32 %cfg_DestPhi5, %21
  %23 = icmp eq i32 %21, %21
  %icmpEq29 = icmp eq i1 %icmpEq25, %23
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %24 = xor i32 %cfg_DestPhi5, %cfg_DiffPhi6
  %cfg_icmpEq7 = icmp eq i32 %24, 231736346
  %25 = icmp eq i32 %24, 231736346
  %icmpEq31 = icmp eq i1 %cfg_icmpEq7, %25
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %cfg_zext8 = zext i1 %cfg_icmpEq7 to i32
  call void @assert_cfg_ft(i32 %cfg_zext8, i32 %24, i32 35)
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %27 = load ptr, ptr @stdout, align 8
  %28 = load ptr, ptr @stdout, align 8
  %29 = tail call i32 @fflush(ptr noundef %27)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue0(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11
  %.not = icmp eq ptr %4, null
  %5 = icmp eq ptr %4, null
  %icmpEq = icmp eq i1 %.not, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = select i1 %.not, i32 180356101, i32 231737884
  %7 = xor i32 128975641, %6
  br i1 %.not, label %8, label %16

8:                                                ; preds = %3
  %cfg_DestPhi = phi i32 [ 128975641, %3 ]
  %9 = phi i32 [ 128975641, %3 ]
  %cfg_DiffPhi = phi i32 [ %7, %3 ]
  %10 = phi i32 [ %7, %3 ]
  %icmpEq32 = icmp eq i32 %cfg_DiffPhi, %10
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %icmpEq30 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq34 = icmp eq i1 %icmpEq30, %11
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %12 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %12, 180356101
  %13 = icmp eq i32 %12, 180356101
  %icmpEq36 = icmp eq i1 %cfg_icmpEq, %13
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %12, i32 35)
  %14 = load ptr, ptr @stderr, align 8
  %15 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %14) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

16:                                               ; preds = %3
  %cfg_DestPhi18 = phi i32 [ 128975641, %3 ]
  %17 = phi i32 [ 128975641, %3 ]
  %cfg_DiffPhi19 = phi i32 [ %7, %3 ]
  %18 = phi i32 [ %7, %3 ]
  %icmpEq40 = icmp eq i32 %cfg_DiffPhi19, %18
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %cfg_DestPhi18, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq42 = icmp eq i1 %icmpEq38, %19
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %20 = xor i32 %cfg_DestPhi18, %cfg_DiffPhi19
  %cfg_icmpEq20 = icmp eq i32 %20, 231737884
  %21 = icmp eq i32 %20, 231737884
  %icmpEq44 = icmp eq i1 %cfg_icmpEq20, %21
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %cfg_zext21 = zext i1 %cfg_icmpEq20 to i32
  call void @assert_cfg_ft(i32 %cfg_zext21, i32 %20, i32 35)
  %22 = load ptr, ptr @qHead, align 8
  store i32 %0, ptr %4, align 8
  %23 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %24 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  store i32 %1, ptr %23, align 4
  %25 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  %26 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  store i32 %2, ptr %25, align 8
  %27 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  %28 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  store ptr null, ptr %27, align 8
  %.not16 = icmp eq ptr %22, null
  %29 = icmp eq ptr %22, null
  %icmpEq46 = icmp eq i1 %.not16, %29
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %30 = select i1 %.not16, i32 334497308, i32 283116831
  %31 = xor i32 231737884, %30
  br i1 %.not16, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader, %16
  %.0 = phi ptr [ %39, %.preheader ], [ %22, %16 ]
  %32 = phi ptr [ %40, %.preheader ], [ %22, %16 ]
  %cfg_DestPhi22 = phi i32 [ 231737884, %16 ], [ 283116831, %.preheader ]
  %33 = phi i32 [ 231737884, %16 ], [ 283116831, %.preheader ]
  %cfg_DiffPhi23 = phi i32 [ %31, %16 ], [ %43, %.preheader ]
  %34 = phi i32 [ %31, %16 ], [ %43, %.preheader ]
  %icmpEq50 = icmp eq i32 %cfg_DiffPhi23, %34
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i32 %cfg_DestPhi22, %33
  %35 = icmp eq i32 %33, %33
  %icmpEq52 = icmp eq i1 %icmpEq48, %35
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %36 = xor i32 %cfg_DestPhi22, %cfg_DiffPhi23
  %cfg_icmpEq24 = icmp eq i32 %36, 283116831
  %37 = icmp eq i32 %36, 283116831
  %icmpEq54 = icmp eq i1 %cfg_icmpEq24, %37
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %cfg_zext25 = zext i1 %cfg_icmpEq24 to i32
  call void @assert_cfg_ft(i32 %cfg_zext25, i32 %36, i32 35)
  %38 = getelementptr inbounds %struct._QITEM, ptr %.0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %38, align 8
  %.not17 = icmp eq ptr %39, null
  %41 = icmp eq ptr %40, null
  %icmpEq56 = icmp eq i1 %.not17, %41
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %42 = select i1 %.not17, i32 334497308, i32 283116831
  %43 = xor i32 283116831, %42
  br i1 %.not17, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %16
  %.lcssa.sink = phi ptr [ @qHead, %16 ], [ %38, %.preheader ]
  %44 = phi ptr [ @qHead, %16 ], [ %38, %.preheader ]
  %cfg_DestPhi26 = phi i32 [ 283116831, %.preheader ], [ 231737884, %16 ]
  %45 = phi i32 [ 283116831, %.preheader ], [ 231737884, %16 ]
  %cfg_DiffPhi27 = phi i32 [ %43, %.preheader ], [ %31, %16 ]
  %46 = phi i32 [ %43, %.preheader ], [ %31, %16 ]
  %icmpEq60 = icmp eq i32 %cfg_DiffPhi27, %46
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i32 %cfg_DestPhi26, %45
  %47 = icmp eq i32 %45, %45
  %icmpEq62 = icmp eq i1 %icmpEq58, %47
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %48 = xor i32 %cfg_DestPhi26, %cfg_DiffPhi27
  %cfg_icmpEq28 = icmp eq i32 %48, 334497308
  %49 = icmp eq i32 %48, 334497308
  %icmpEq64 = icmp eq i1 %cfg_icmpEq28, %49
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %cfg_zext29 = zext i1 %cfg_icmpEq28 to i32
  call void @assert_cfg_ft(i32 %cfg_zext29, i32 %48, i32 35)
  store ptr %4, ptr %.lcssa.sink, align 8
  %50 = load i32, ptr @g_qCount, align 4
  %51 = load i32, ptr @g_qCount, align 4
  %icmpEq66 = icmp eq i32 %50, %51
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %52 = add nsw i32 %50, 1
  store i32 %52, ptr @g_qCount, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local void @dequeue0(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr @qHead, align 8
  %5 = load ptr, ptr @qHead, align 8
  %.not = icmp eq ptr %4, null
  %6 = icmp eq ptr %5, null
  %icmpEq = icmp eq i1 %.not, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = select i1 %.not, i32 231735577, i32 180359969
  %8 = xor i32 128975641, %7
  br i1 %.not, label %33, label %9

9:                                                ; preds = %3
  %cfg_DestPhi = phi i32 [ 128975641, %3 ]
  %10 = phi i32 [ 128975641, %3 ]
  %cfg_DiffPhi = phi i32 [ %8, %3 ]
  %11 = phi i32 [ %8, %3 ]
  %icmpEq10 = icmp eq i32 %cfg_DiffPhi, %11
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  %icmpEq8 = icmp eq i32 %cfg_DestPhi, %10
  %12 = icmp eq i32 %10, %10
  %icmpEq12 = icmp eq i1 %icmpEq8, %12
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  %13 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %13, 180359969
  %14 = icmp eq i32 %13, 180359969
  %icmpEq14 = icmp eq i1 %cfg_icmpEq, %14
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %13, i32 35)
  %15 = load i32, ptr %4, align 8
  store i32 %15, ptr %0, align 4
  %16 = load ptr, ptr @qHead, align 8
  %17 = load ptr, ptr @qHead, align 8
  %18 = getelementptr inbounds %struct._QITEM, ptr %16, i64 0, i32 1
  %19 = getelementptr inbounds %struct._QITEM, ptr %17, i64 0, i32 1
  %20 = load i32, ptr %18, align 4
  %21 = load i32, ptr %19, align 4
  %icmpEq16 = icmp eq i32 %20, %21
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  store i32 %20, ptr %1, align 4
  %22 = load ptr, ptr @qHead, align 8
  %23 = getelementptr inbounds %struct._QITEM, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = load i32, ptr %23, align 8
  %icmpEq18 = icmp eq i32 %24, %25
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  store i32 %24, ptr %2, align 4
  %26 = load ptr, ptr @qHead, align 8
  %27 = getelementptr inbounds %struct._QITEM, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %27, align 8
  store ptr %28, ptr @qHead, align 8
  tail call void @free(ptr noundef nonnull %4) #14
  %30 = load i32, ptr @g_qCount, align 4
  %31 = load i32, ptr @g_qCount, align 4
  %icmpEq20 = icmp eq i32 %30, %31
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %32 = add nsw i32 %30, -1
  store i32 %32, ptr @g_qCount, align 4
  br label %33

33:                                               ; preds = %9, %3
  %cfg_DestPhi4 = phi i32 [ 180359969, %9 ], [ 128975641, %3 ]
  %34 = phi i32 [ 180359969, %9 ], [ 128975641, %3 ]
  %cfg_DiffPhi5 = phi i32 [ 118493752, %9 ], [ %8, %3 ]
  %35 = phi i32 [ 118493752, %9 ], [ %8, %3 ]
  %icmpEq24 = icmp eq i32 %cfg_DiffPhi5, %35
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %icmpEq22 = icmp eq i32 %cfg_DestPhi4, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq26 = icmp eq i1 %icmpEq22, %36
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %37 = xor i32 %cfg_DestPhi4, %cfg_DiffPhi5
  %cfg_icmpEq6 = icmp eq i32 %37, 231735577
  %38 = icmp eq i32 %37, 231735577
  %icmpEq28 = icmp eq i1 %cfg_icmpEq6, %38
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %cfg_zext7 = zext i1 %cfg_icmpEq6 to i32
  call void @assert_cfg_ft(i32 %cfg_zext7, i32 %37, i32 35)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @qcount() local_unnamed_addr #7 {
  %1 = load i32, ptr @g_qCount, align 4
  %2 = load i32, ptr @g_qCount, align 4
  %3 = load i32, ptr @g_qCount, align 4
  %icmpEq1 = icmp eq i32 %2, %3
  %zext2 = zext i1 %icmpEq1 to i32
  call void @assert_ft(i32 %zext2, i32 35)
  %icmpEq = icmp eq i32 %1, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  br label %3

3:                                                ; preds = %3, %2
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %3 ]
  %4 = phi i64 [ 0, %2 ], [ %14, %3 ]
  %cfg_DestPhi = phi i32 [ 128975137, %2 ], [ 180357130, %3 ]
  %5 = phi i32 [ 128975137, %2 ], [ 180357130, %3 ]
  %cfg_DiffPhi = phi i32 [ 225446187, %2 ], [ %16, %3 ]
  %6 = phi i32 [ 225446187, %2 ], [ %16, %3 ]
  %icmpEq66 = icmp eq i32 %cfg_DiffPhi, %6
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DestPhi, %5
  %7 = icmp eq i32 %5, %5
  %icmpEq68 = icmp eq i1 %icmpEq64, %7
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %icmpEq = icmp eq i64 %indvars.iv, %4
  %zext = zext i1 %icmpEq to i32
  %8 = zext i1 %icmpEq to i32
  %icmpEq70 = icmp eq i32 %zext, %8
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180357130
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %10 = zext i1 %cfg_icmpEq to i32
  %icmpEq72 = icmp eq i32 %cfg_zext, %10
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %11 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %indvars.iv
  store i32 9999, ptr %11, align 8
  %12 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %indvars.iv, i32 1
  %13 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %4, i32 1
  store i32 9999, ptr %12, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %14 = add nuw nsw i64 %4, 1
  %icmpEq74 = icmp eq i64 %indvars.iv.next, %14
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  %15 = select i1 %exitcond.not, i32 231736065, i32 180357130
  %16 = xor i32 180357130, %15
  br i1 %exitcond.not, label %17, label %3

17:                                               ; preds = %3
  %cfg_DestPhi20 = phi i32 [ 180357130, %3 ]
  %18 = phi i32 [ 180357130, %3 ]
  %cfg_DiffPhi21 = phi i32 [ %16, %3 ]
  %19 = phi i32 [ %16, %3 ]
  %icmpEq78 = icmp eq i32 %cfg_DiffPhi21, %19
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %cfg_DestPhi20, %18
  %20 = icmp eq i32 %18, %18
  %icmpEq80 = icmp eq i1 %icmpEq76, %20
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %21 = xor i32 %cfg_DestPhi20, %cfg_DiffPhi21
  %cfg_icmpEq22 = icmp eq i32 %21, 231736065
  %22 = icmp eq i32 %21, 231736065
  %icmpEq82 = icmp eq i1 %cfg_icmpEq22, %22
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %cfg_zext23 = zext i1 %cfg_icmpEq22 to i32
  call void @assert_cfg_ft(i32 %cfg_zext23, i32 %21, i32 35)
  store i32 100, ptr @ch, align 4
  %23 = icmp eq i32 %0, %1
  %24 = icmp eq i32 %0, %1
  %icmpEq84 = icmp eq i1 %23, %24
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %25 = select i1 %23, i32 283116037, i32 334498053
  %26 = xor i32 231736065, %25
  br i1 %23, label %27, label %33

27:                                               ; preds = %17
  %cfg_DestPhi24 = phi i32 [ 231736065, %17 ]
  %28 = phi i32 [ 231736065, %17 ]
  %cfg_DiffPhi25 = phi i32 [ %26, %17 ]
  %29 = phi i32 [ %26, %17 ]
  %icmpEq88 = icmp eq i32 %cfg_DiffPhi25, %29
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq86 = icmp eq i32 %cfg_DestPhi24, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq90 = icmp eq i1 %icmpEq86, %30
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %31 = xor i32 %cfg_DestPhi24, %cfg_DiffPhi25
  %cfg_icmpEq26 = icmp eq i32 %31, 283116037
  %32 = icmp eq i32 %31, 283116037
  %icmpEq92 = icmp eq i1 %cfg_icmpEq26, %32
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %cfg_zext27 = zext i1 %cfg_icmpEq26 to i32
  call void @assert_cfg_ft(i32 %cfg_zext27, i32 %31, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %210

33:                                               ; preds = %17
  %cfg_DestPhi28 = phi i32 [ 231736065, %17 ]
  %34 = phi i32 [ 231736065, %17 ]
  %cfg_DiffPhi29 = phi i32 [ %26, %17 ]
  %35 = phi i32 [ %26, %17 ]
  %icmpEq96 = icmp eq i32 %cfg_DiffPhi29, %35
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %cfg_DestPhi28, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq98 = icmp eq i1 %icmpEq94, %36
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %37 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %cfg_icmpEq30 = icmp eq i32 %37, 334498053
  %38 = icmp eq i32 %37, 334498053
  %icmpEq100 = icmp eq i1 %cfg_icmpEq30, %38
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %37, i32 35)
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %39
  %41 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %39
  store i32 0, ptr %40, align 8
  %42 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %39, i32 1
  %43 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %39, i32 1
  store i32 9999, ptr %42, align 4
  tail call void @enqueue0(i32 noundef %0, i32 noundef 0, i32 noundef 9999)
  %44 = tail call i32 @qcount()
  %45 = icmp sgt i32 %44, 0
  %46 = icmp sgt i32 %44, 0
  %icmpEq102 = icmp eq i1 %45, %46
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %47 = select i1 %45, i32 437257252, i32 694159383
  %48 = xor i32 334498053, %47
  br i1 %45, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %160
  %cfg_DestPhi32 = phi i32 [ 642778656, %160 ]
  %49 = phi i32 [ 642778656, %160 ]
  %cfg_DiffPhi33 = phi i32 [ %195, %160 ]
  %50 = phi i32 [ %195, %160 ]
  %icmpEq106 = icmp eq i32 %cfg_DiffPhi33, %50
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq104 = icmp eq i32 %cfg_DestPhi32, %49
  %51 = icmp eq i32 %49, %49
  %icmpEq108 = icmp eq i1 %icmpEq104, %51
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %52 = xor i32 %cfg_DestPhi32, %cfg_DiffPhi33
  %cfg_icmpEq34 = icmp eq i32 %52, 385876738
  %53 = icmp eq i32 %52, 385876738
  %icmpEq110 = icmp eq i1 %cfg_icmpEq34, %53
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %cfg_zext35 = zext i1 %cfg_icmpEq34 to i32
  call void @assert_cfg_ft(i32 %cfg_zext35, i32 %52, i32 35)
  %54 = tail call i32 @qcount()
  %55 = icmp sgt i32 %54, 0
  %56 = icmp sgt i32 %54, 0
  %icmpEq112 = icmp eq i1 %55, %56
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %57 = select i1 %55, i32 437257252, i32 694159383
  %58 = xor i32 385876738, %57
  br i1 %55, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit, %33
  %cfg_DestPhi36 = phi i32 [ 334498053, %33 ], [ 385876738, %.loopexit ]
  %59 = phi i32 [ 334498053, %33 ], [ 385876738, %.loopexit ]
  %60 = phi i32 [ 334498053, %33 ], [ 385876738, %.loopexit ]
  %cfg_DiffPhi37 = phi i32 [ %48, %33 ], [ %58, %.loopexit ]
  %61 = phi i32 [ %48, %33 ], [ %58, %.loopexit ]
  %62 = phi i32 [ %48, %33 ], [ %58, %.loopexit ]
  %63 = phi i32 [ %48, %33 ], [ %58, %.loopexit ]
  %icmpEq128 = icmp eq i32 %62, %63
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq126 = icmp eq i32 %cfg_DiffPhi37, %61
  %64 = icmp eq i32 %61, %61
  %icmpEq130 = icmp eq i1 %icmpEq126, %64
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i32 %59, %60
  %zext125 = zext i1 %icmpEq124 to i32
  %65 = zext i1 %icmpEq124 to i32
  %icmpEq132 = icmp eq i32 %zext125, %65
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq116 = icmp eq i32 %cfg_DiffPhi37, %62
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %cfg_DestPhi36, %59
  %66 = icmp eq i32 %59, %60
  %icmpEq134 = icmp eq i1 %icmpEq114, %66
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %67 = icmp eq i32 %cfg_DestPhi36, %59
  %icmpEq118 = icmp eq i1 %icmpEq114, %67
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext115 = zext i1 %icmpEq114 to i32
  %68 = zext i1 %66 to i32
  %icmpEq136 = icmp eq i32 %zext115, %68
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  call void @assert_ft(i32 %zext115, i32 35)
  %69 = xor i32 %cfg_DestPhi36, %cfg_DiffPhi37
  %cfg_icmpEq38 = icmp eq i32 %69, 437257252
  %70 = icmp eq i32 %69, 437257252
  %71 = icmp eq i32 %69, 437257252
  %icmpEq138 = icmp eq i1 %70, %71
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq120 = icmp eq i1 %cfg_icmpEq38, %70
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %cfg_zext39 = zext i1 %cfg_icmpEq38 to i32
  %72 = zext i1 %70 to i32
  %icmpEq140 = icmp eq i32 %cfg_zext39, %72
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext39, i32 %69, i32 35)
  tail call void @dequeue0(ptr noundef nonnull @iNode, ptr noundef nonnull @iDist, ptr noundef nonnull @iPrev)
  store i32 0, ptr @i, align 4
  %.pre15 = load i32, ptr @iNode, align 4
  %73 = load i32, ptr @iNode, align 4
  %icmpEq142 = icmp eq i32 %.pre15, %73
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %74 = load i32, ptr @iNode, align 4
  %icmpEq122 = icmp eq i32 %.pre15, %74
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  br label %75

75:                                               ; preds = %160, %.lr.ph
  %76 = phi i32 [ %.pre15, %.lr.ph ], [ %164, %160 ]
  %77 = phi i32 [ %73, %.lr.ph ], [ %164, %160 ]
  %storemerge1214 = phi i32 [ 0, %.lr.ph ], [ %189, %160 ]
  %78 = phi i32 [ 0, %.lr.ph ], [ %189, %160 ]
  %cfg_DestPhi40 = phi i32 [ 437257252, %.lr.ph ], [ 642778656, %160 ]
  %79 = phi i32 [ 437257252, %.lr.ph ], [ 642778656, %160 ]
  %cfg_DiffPhi41 = phi i32 [ 120589612, %.lr.ph ], [ %195, %160 ]
  %80 = phi i32 [ 120589612, %.lr.ph ], [ %195, %160 ]
  %icmpEq150 = icmp eq i32 %cfg_DiffPhi41, %80
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq148 = icmp eq i32 %cfg_DestPhi40, %79
  %81 = icmp eq i32 %79, %79
  %icmpEq152 = icmp eq i1 %icmpEq148, %81
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %icmpEq146 = icmp eq i32 %storemerge1214, %78
  %zext147 = zext i1 %icmpEq146 to i32
  %82 = zext i1 %icmpEq146 to i32
  %icmpEq154 = icmp eq i32 %zext147, %82
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  call void @assert_ft(i32 %zext147, i32 35)
  %icmpEq144 = icmp eq i32 %76, %77
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %83 = xor i32 %cfg_DestPhi40, %cfg_DiffPhi41
  %84 = xor i32 %79, %80
  %icmpEq156 = icmp eq i32 %83, %84
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %cfg_icmpEq42 = icmp eq i32 %83, 488638728
  %cfg_zext43 = zext i1 %cfg_icmpEq42 to i32
  call void @assert_cfg_ft(i32 %cfg_zext43, i32 %83, i32 35)
  %85 = sext i32 %76 to i64
  %86 = sext i32 %77 to i64
  %icmpEq158 = icmp eq i64 %85, %86
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %87 = sext i32 %storemerge1214 to i64
  %88 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %85, i64 %87
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr @iCost, align 4
  %.not = icmp eq i32 %89, 9999
  %90 = icmp eq i32 %89, 9999
  %icmpEq160 = icmp eq i1 %.not, %90
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %91 = select i1 %.not, i32 642778656, i32 540018696
  %92 = xor i32 488638728, %91
  br i1 %.not, label %160, label %93

93:                                               ; preds = %75
  %cfg_DestPhi44 = phi i32 [ 488638728, %75 ]
  %94 = phi i32 [ 488638728, %75 ]
  %cfg_DiffPhi45 = phi i32 [ %92, %75 ]
  %95 = phi i32 [ %92, %75 ]
  %icmpEq164 = icmp eq i32 %cfg_DiffPhi45, %95
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq162 = icmp eq i32 %cfg_DestPhi44, %94
  %96 = icmp eq i32 %94, %94
  %icmpEq166 = icmp eq i1 %icmpEq162, %96
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %97 = xor i32 %cfg_DestPhi44, %cfg_DiffPhi45
  %cfg_icmpEq46 = icmp eq i32 %97, 540018696
  %98 = icmp eq i32 %97, 540018696
  %icmpEq168 = icmp eq i1 %cfg_icmpEq46, %98
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %cfg_zext47 = zext i1 %cfg_icmpEq46 to i32
  call void @assert_cfg_ft(i32 %cfg_zext47, i32 %97, i32 35)
  %99 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87
  %100 = load i32, ptr %99, align 8
  %101 = load i32, ptr %99, align 8
  %icmpEq170 = icmp eq i32 %100, %101
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %102 = icmp eq i32 %100, 9999
  %.pre16 = load i32, ptr @iDist, align 4
  %.pre19 = add nsw i32 %.pre16, %89
  %103 = icmp sgt i32 %100, %.pre19
  %104 = icmp sgt i32 %101, %.pre19
  %icmpEq172 = icmp eq i1 %103, %104
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %or.cond = select i1 %102, i1 true, i1 %103
  %105 = select i1 %or.cond, i32 591398672, i32 642778656
  %106 = xor i32 540018696, %105
  br i1 %or.cond, label %._crit_edge18, label %160

._crit_edge18:                                    ; preds = %93
  %cfg_DestPhi48 = phi i32 [ 540018696, %93 ]
  %107 = phi i32 [ 540018696, %93 ]
  %108 = phi i32 [ 540018696, %93 ]
  %109 = phi i32 [ 540018696, %93 ]
  %110 = phi i32 [ 540018696, %93 ]
  %111 = phi i32 [ 540018696, %93 ]
  %112 = phi i32 [ 540018696, %93 ]
  %cfg_DiffPhi49 = phi i32 [ %106, %93 ]
  %113 = phi i32 [ %106, %93 ]
  %114 = phi i32 [ %106, %93 ]
  %115 = phi i32 [ %106, %93 ]
  %116 = phi i32 [ %106, %93 ]
  %117 = phi i32 [ %106, %93 ]
  %118 = phi i32 [ %106, %93 ]
  %119 = phi i32 [ %106, %93 ]
  %icmpEq222 = icmp eq i32 %118, %119
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %icmpEq220 = icmp eq i32 %116, %117
  %120 = icmp eq i32 %117, %117
  %icmpEq224 = icmp eq i1 %icmpEq220, %120
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq218 = icmp eq i32 %114, %115
  %zext219 = zext i1 %icmpEq218 to i32
  %121 = zext i1 %icmpEq218 to i32
  %icmpEq226 = icmp eq i32 %zext219, %121
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  call void @assert_ft(i32 %zext219, i32 35)
  %icmpEq216 = icmp eq i32 %cfg_DiffPhi49, %113
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %icmpEq214 = icmp eq i32 %111, %112
  %122 = icmp eq i32 %112, %112
  %icmpEq228 = icmp eq i1 %icmpEq214, %122
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %icmpEq212 = icmp eq i32 %109, %110
  %zext213 = zext i1 %icmpEq212 to i32
  %123 = zext i1 %icmpEq212 to i32
  %icmpEq230 = icmp eq i32 %zext213, %123
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  call void @assert_ft(i32 %zext213, i32 35)
  %icmpEq210 = icmp eq i32 %107, %108
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %icmpEq190 = icmp eq i32 %116, %118
  %124 = icmp eq i32 %117, %119
  %icmpEq232 = icmp eq i1 %icmpEq190, %124
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %icmpEq188 = icmp eq i32 %cfg_DiffPhi49, %114
  %125 = icmp eq i32 %113, %115
  %126 = icmp eq i32 %113, %115
  %icmpEq234 = icmp eq i1 %125, %126
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq192 = icmp eq i1 %icmpEq188, %125
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %zext189 = zext i1 %icmpEq188 to i32
  %127 = zext i1 %125 to i32
  %icmpEq236 = icmp eq i32 %zext189, %127
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  call void @assert_ft(i32 %zext189, i32 35)
  %icmpEq186 = icmp eq i32 %109, %111
  %zext187 = zext i1 %icmpEq186 to i32
  %128 = zext i1 %icmpEq186 to i32
  %129 = zext i1 %icmpEq186 to i32
  %icmpEq238 = icmp eq i32 %128, %129
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %icmpEq194 = icmp eq i32 %zext187, %128
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  call void @assert_ft(i32 %zext187, i32 35)
  %icmpEq184 = icmp eq i32 %cfg_DestPhi48, %107
  %130 = icmp eq i32 %107, %108
  %icmpEq240 = icmp eq i1 %icmpEq184, %130
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %icmpEq176 = icmp eq i32 %cfg_DiffPhi49, %116
  %131 = icmp eq i32 %113, %117
  %132 = icmp eq i32 %113, %117
  %icmpEq242 = icmp eq i1 %131, %132
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %icmpEq196 = icmp eq i1 %icmpEq176, %131
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %zext177 = zext i1 %icmpEq176 to i32
  %133 = zext i1 %131 to i32
  %icmpEq244 = icmp eq i32 %zext177, %133
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq174 = icmp eq i32 %cfg_DestPhi48, %109
  %134 = icmp eq i32 %107, %110
  %135 = icmp eq i32 %107, %110
  %136 = icmp eq i32 %107, %110
  %icmpEq246 = icmp eq i1 %135, %136
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq198 = icmp eq i1 %134, %135
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq178 = icmp eq i1 %icmpEq174, %134
  %137 = icmp eq i1 %134, %135
  %icmpEq248 = icmp eq i1 %icmpEq178, %137
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %zext175 = zext i1 %icmpEq174 to i32
  %138 = zext i1 %134 to i32
  %139 = zext i1 %134 to i32
  %icmpEq250 = icmp eq i32 %138, %139
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %icmpEq200 = icmp eq i32 %zext175, %138
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  call void @assert_ft(i32 %zext175, i32 35)
  %140 = xor i32 %cfg_DestPhi48, %cfg_DiffPhi49
  %141 = xor i32 %107, %113
  %icmpEq252 = icmp eq i32 %140, %141
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %cfg_icmpEq50 = icmp eq i32 %140, 591398672
  %142 = icmp eq i32 %141, 591398672
  %143 = icmp eq i32 %141, 591398672
  %icmpEq202 = icmp eq i1 %142, %143
  %144 = icmp eq i1 %143, %143
  %icmpEq254 = icmp eq i1 %icmpEq202, %144
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %icmpEq180 = icmp eq i1 %cfg_icmpEq50, %142
  %zext181 = zext i1 %icmpEq180 to i32
  %145 = zext i1 %icmpEq180 to i32
  %icmpEq256 = icmp eq i32 %zext181, %145
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  call void @assert_ft(i32 %zext181, i32 35)
  %cfg_zext51 = zext i1 %cfg_icmpEq50 to i32
  %146 = zext i1 %142 to i32
  %icmpEq204 = icmp eq i32 %cfg_zext51, %146
  %147 = icmp eq i32 %146, %146
  %icmpEq258 = icmp eq i1 %icmpEq204, %147
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext51, i32 %140, i32 35)
  store i32 %.pre19, ptr %99, align 8
  %148 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87, i32 1
  %149 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87, i32 1
  %150 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87, i32 1
  %151 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87, i32 1
  %152 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87, i32 1
  %153 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %87, i32 1
  store i32 %76, ptr %148, align 4
  tail call void @enqueue0(i32 noundef %storemerge1214, i32 noundef %.pre19, i32 noundef %76)
  %.pre = load i32, ptr @iNode, align 4
  %154 = load i32, ptr @iNode, align 4
  %icmpEq260 = icmp eq i32 %.pre, %154
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %155 = load i32, ptr @iNode, align 4
  %icmpEq206 = icmp eq i32 %.pre, %155
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %156 = load i32, ptr @iNode, align 4
  %157 = load i32, ptr @iNode, align 4
  %icmpEq262 = icmp eq i32 %156, %157
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %icmpEq182 = icmp eq i32 %.pre, %156
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %.pre17 = load i32, ptr @i, align 4
  %158 = load i32, ptr @i, align 4
  %icmpEq264 = icmp eq i32 %.pre17, %158
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %159 = load i32, ptr @i, align 4
  %icmpEq208 = icmp eq i32 %.pre17, %159
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  br label %160

160:                                              ; preds = %._crit_edge18, %93, %75
  %161 = phi i32 [ %storemerge1214, %75 ], [ %.pre17, %._crit_edge18 ], [ %storemerge1214, %93 ]
  %162 = phi i32 [ %78, %75 ], [ %158, %._crit_edge18 ], [ %78, %93 ]
  %163 = phi i32 [ %78, %75 ], [ %158, %._crit_edge18 ], [ %78, %93 ]
  %164 = phi i32 [ %76, %75 ], [ %.pre, %._crit_edge18 ], [ %76, %93 ]
  %165 = phi i32 [ %77, %75 ], [ %154, %._crit_edge18 ], [ %77, %93 ]
  %166 = phi i32 [ %76, %75 ], [ %.pre, %._crit_edge18 ], [ %76, %93 ]
  %167 = phi i32 [ %77, %75 ], [ %154, %._crit_edge18 ], [ %77, %93 ]
  %cfg_DestPhi52 = phi i32 [ 540018696, %93 ], [ 488638728, %75 ], [ 591398672, %._crit_edge18 ]
  %168 = phi i32 [ 540018696, %93 ], [ 488638728, %75 ], [ 591398672, %._crit_edge18 ]
  %169 = phi i32 [ 540018696, %93 ], [ 488638728, %75 ], [ 591398672, %._crit_edge18 ]
  %170 = phi i32 [ 540018696, %93 ], [ 488638728, %75 ], [ 591398672, %._crit_edge18 ]
  %cfg_DiffPhi53 = phi i32 [ %106, %93 ], [ %92, %75 ], [ 84934960, %._crit_edge18 ]
  %171 = phi i32 [ %106, %93 ], [ %92, %75 ], [ 84934960, %._crit_edge18 ]
  %172 = phi i32 [ %106, %93 ], [ %92, %75 ], [ 84934960, %._crit_edge18 ]
  %173 = phi i32 [ %106, %93 ], [ %92, %75 ], [ 84934960, %._crit_edge18 ]
  %icmpEq296 = icmp eq i32 %172, %173
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %icmpEq294 = icmp eq i32 %cfg_DiffPhi53, %171
  %174 = icmp eq i32 %171, %171
  %icmpEq298 = icmp eq i1 %icmpEq294, %174
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %icmpEq292 = icmp eq i32 %169, %170
  %zext293 = zext i1 %icmpEq292 to i32
  %175 = zext i1 %icmpEq292 to i32
  %icmpEq300 = icmp eq i32 %zext293, %175
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq290 = icmp eq i32 %cfg_DestPhi52, %168
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %icmpEq288 = icmp eq i32 %166, %167
  %176 = icmp eq i32 %167, %167
  %icmpEq302 = icmp eq i1 %icmpEq288, %176
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %164, %165
  %zext287 = zext i1 %icmpEq286 to i32
  %177 = zext i1 %icmpEq286 to i32
  %icmpEq304 = icmp eq i32 %zext287, %177
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  call void @assert_ft(i32 %zext287, i32 35)
  %icmpEq284 = icmp eq i32 %162, %163
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %icmpEq272 = icmp eq i32 %cfg_DiffPhi53, %172
  %178 = icmp eq i32 %171, %173
  %icmpEq306 = icmp eq i1 %icmpEq272, %178
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %icmpEq270 = icmp eq i32 %cfg_DestPhi52, %169
  %179 = icmp eq i32 %168, %170
  %180 = icmp eq i32 %168, %170
  %icmpEq308 = icmp eq i1 %179, %180
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %icmpEq274 = icmp eq i1 %icmpEq270, %179
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %zext271 = zext i1 %icmpEq270 to i32
  %181 = zext i1 %179 to i32
  %icmpEq310 = icmp eq i32 %zext271, %181
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  call void @assert_ft(i32 %zext271, i32 35)
  %icmpEq268 = icmp eq i32 %164, %166
  %zext269 = zext i1 %icmpEq268 to i32
  %182 = zext i1 %icmpEq268 to i32
  %183 = zext i1 %icmpEq268 to i32
  %icmpEq312 = icmp eq i32 %182, %183
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %icmpEq276 = icmp eq i32 %zext269, %182
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq266 = icmp eq i32 %161, %162
  %184 = icmp eq i32 %162, %163
  %icmpEq314 = icmp eq i1 %icmpEq266, %184
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %185 = xor i32 %cfg_DestPhi52, %cfg_DiffPhi53
  %186 = xor i32 %168, %171
  %187 = xor i32 %168, %171
  %icmpEq316 = icmp eq i32 %186, %187
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq278 = icmp eq i32 %185, %186
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %cfg_icmpEq54 = icmp eq i32 %185, 642778656
  %188 = icmp eq i32 %186, 642778656
  %icmpEq318 = icmp eq i1 %cfg_icmpEq54, %188
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %cfg_zext55 = zext i1 %cfg_icmpEq54 to i32
  call void @assert_cfg_ft(i32 %cfg_zext55, i32 %185, i32 35)
  %189 = add nsw i32 %161, 1
  %190 = add nsw i32 %162, 1
  %191 = add nsw i32 %162, 1
  %icmpEq320 = icmp eq i32 %190, %191
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq280 = icmp eq i32 %189, %190
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  store i32 %189, ptr @i, align 4
  %192 = icmp slt i32 %161, 99
  %193 = icmp slt i32 %162, 99
  %icmpEq322 = icmp eq i1 %192, %193
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %194 = select i1 %192, i32 488638728, i32 385876738
  %195 = xor i32 642778656, %194
  %196 = xor i32 642778656, %194
  %icmpEq282 = icmp eq i32 %195, %196
  %197 = icmp eq i32 %196, %196
  %icmpEq324 = icmp eq i1 %icmpEq282, %197
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  br i1 %192, label %75, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %33
  %cfg_DestPhi56 = phi i32 [ 385876738, %.loopexit ], [ 334498053, %33 ]
  %198 = phi i32 [ 385876738, %.loopexit ], [ 334498053, %33 ]
  %cfg_DiffPhi57 = phi i32 [ %58, %.loopexit ], [ %48, %33 ]
  %199 = phi i32 [ %58, %.loopexit ], [ %48, %33 ]
  %icmpEq328 = icmp eq i32 %cfg_DiffPhi57, %199
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %icmpEq326 = icmp eq i32 %cfg_DestPhi56, %198
  %200 = icmp eq i32 %198, %198
  %icmpEq330 = icmp eq i1 %icmpEq326, %200
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  %201 = xor i32 %cfg_DestPhi56, %cfg_DiffPhi57
  %cfg_icmpEq58 = icmp eq i32 %201, 694159383
  %202 = icmp eq i32 %201, 694159383
  %icmpEq332 = icmp eq i1 %cfg_icmpEq58, %202
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %cfg_zext59 = zext i1 %cfg_icmpEq58 to i32
  call void @assert_cfg_ft(i32 %cfg_zext59, i32 %201, i32 35)
  %203 = sext i32 %1 to i64
  %204 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %203
  %205 = getelementptr inbounds [100 x %struct._NODE], ptr @rgnNodes, i64 0, i64 %203
  %206 = load i32, ptr %204, align 8
  %207 = load i32, ptr %205, align 8
  %icmpEq334 = icmp eq i32 %206, %207
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  %208 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %206)
  %209 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  tail call void @print_path(ptr noundef nonnull @rgnNodes, i32 noundef %1)
  %putchar = tail call i32 @putchar(i32 10)
  br label %210

210:                                              ; preds = %._crit_edge, %27
  %cfg_DestPhi60 = phi i32 [ 694159383, %._crit_edge ], [ 283116037, %27 ]
  %211 = phi i32 [ 694159383, %._crit_edge ], [ 283116037, %27 ]
  %cfg_DiffPhi61 = phi i32 [ 84936961, %._crit_edge ], [ 1016070931, %27 ]
  %212 = phi i32 [ 84936961, %._crit_edge ], [ 1016070931, %27 ]
  %icmpEq338 = icmp eq i32 %cfg_DiffPhi61, %212
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %icmpEq336 = icmp eq i32 %cfg_DestPhi60, %211
  %213 = icmp eq i32 %211, %211
  %icmpEq340 = icmp eq i1 %icmpEq336, %213
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %214 = xor i32 %cfg_DestPhi60, %cfg_DiffPhi61
  %cfg_icmpEq62 = icmp eq i32 %214, 745537814
  %215 = icmp eq i32 %214, 745537814
  %icmpEq342 = icmp eq i1 %cfg_icmpEq62, %215
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %cfg_zext63 = zext i1 %cfg_icmpEq62 to i32
  call void @assert_cfg_ft(i32 %cfg_zext63, i32 %214, i32 35)
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = alloca i32, align 4
  %4 = icmp slt i32 %0, 2
  %5 = icmp slt i32 %0, 2
  %icmpEq = icmp eq i1 %4, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = select i1 %4, i32 180356386, i32 231736346
  %7 = xor i32 128975641, %6
  br i1 %4, label %8, label %19

8:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975641, %2 ]
  %9 = phi i32 [ 128975641, %2 ]
  %cfg_DiffPhi = phi i32 [ %7, %2 ]
  %10 = phi i32 [ %7, %2 ]
  %icmpEq51 = icmp eq i32 %cfg_DiffPhi, %10
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq53 = icmp eq i1 %icmpEq49, %11
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %12 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %12, 180356386
  %13 = icmp eq i32 %12, 180356386
  %icmpEq55 = icmp eq i1 %cfg_icmpEq, %13
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %12, i32 35)
  %14 = load ptr, ptr @stderr, align 8
  %15 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %14) #12
  %16 = load ptr, ptr @stderr, align 8
  %17 = load ptr, ptr @stderr, align 8
  %18 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %16) #12
  br label %19

19:                                               ; preds = %8, %2
  %cfg_DestPhi25 = phi i32 [ 180356386, %8 ], [ 128975641, %2 ]
  %20 = phi i32 [ 180356386, %8 ], [ 128975641, %2 ]
  %cfg_DiffPhi26 = phi i32 [ 118489400, %8 ], [ %7, %2 ]
  %21 = phi i32 [ 118489400, %8 ], [ %7, %2 ]
  %icmpEq59 = icmp eq i32 %cfg_DiffPhi26, %21
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq57 = icmp eq i32 %cfg_DestPhi25, %20
  %22 = icmp eq i32 %20, %20
  %icmpEq61 = icmp eq i1 %icmpEq57, %22
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %23 = xor i32 %cfg_DestPhi25, %cfg_DiffPhi26
  %cfg_icmpEq27 = icmp eq i32 %23, 231736346
  %24 = icmp eq i32 %23, 231736346
  %icmpEq63 = icmp eq i1 %cfg_icmpEq27, %24
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %cfg_zext28 = zext i1 %cfg_icmpEq27 to i32
  call void @assert_cfg_ft(i32 %cfg_zext28, i32 %23, i32 35)
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %25, align 8
  %28 = tail call noalias ptr @fopen(ptr noundef %26, ptr noundef nonnull @.str.8)
  br label %.preheader16

.preheader16:                                     ; preds = %66, %19
  %indvars.iv21 = phi i64 [ 0, %19 ], [ %indvars.iv.next22, %66 ]
  %29 = phi i64 [ 0, %19 ], [ %indvars.iv.next22, %66 ]
  %30 = phi i64 [ 0, %19 ], [ %indvars.iv.next22, %66 ]
  %31 = phi i64 [ 0, %19 ], [ %indvars.iv.next22, %66 ]
  %cfg_DestPhi29 = phi i32 [ 231736346, %19 ], [ 385876738, %66 ]
  %32 = phi i32 [ 231736346, %19 ], [ 385876738, %66 ]
  %33 = phi i32 [ 231736346, %19 ], [ 385876738, %66 ]
  %34 = phi i32 [ 231736346, %19 ], [ 385876738, %66 ]
  %cfg_DiffPhi30 = phi i32 [ 489686559, %19 ], [ %74, %66 ]
  %35 = phi i32 [ 489686559, %19 ], [ %74, %66 ]
  %36 = phi i32 [ 489686559, %19 ], [ %74, %66 ]
  %37 = phi i32 [ 489686559, %19 ], [ %74, %66 ]
  %icmpEq87 = icmp eq i32 %36, %37
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %cfg_DiffPhi30, %35
  %38 = icmp eq i32 %35, %35
  %icmpEq89 = icmp eq i1 %icmpEq85, %38
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq83 = icmp eq i32 %33, %34
  %zext84 = zext i1 %icmpEq83 to i32
  %39 = zext i1 %icmpEq83 to i32
  %icmpEq91 = icmp eq i32 %zext84, %39
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  call void @assert_ft(i32 %zext84, i32 35)
  %icmpEq81 = icmp eq i32 %cfg_DestPhi29, %32
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq79 = icmp eq i64 %30, %31
  %40 = icmp eq i64 %31, %31
  %icmpEq93 = icmp eq i1 %icmpEq79, %40
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq77 = icmp eq i64 %indvars.iv21, %29
  %zext78 = zext i1 %icmpEq77 to i32
  %41 = zext i1 %icmpEq77 to i32
  %icmpEq95 = icmp eq i32 %zext78, %41
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq69 = icmp eq i32 %cfg_DiffPhi30, %36
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DestPhi29, %33
  %42 = icmp eq i32 %32, %34
  %icmpEq97 = icmp eq i1 %icmpEq67, %42
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %43 = icmp eq i32 %cfg_DestPhi29, %33
  %icmpEq71 = icmp eq i1 %icmpEq67, %43
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  %44 = zext i1 %42 to i32
  %icmpEq99 = icmp eq i32 %zext68, %44
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i64 %indvars.iv21, %30
  %zext66 = zext i1 %icmpEq65 to i32
  %45 = zext i1 %icmpEq65 to i32
  %46 = zext i1 %icmpEq65 to i32
  %icmpEq101 = icmp eq i32 %45, %46
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %icmpEq73 = icmp eq i32 %zext66, %45
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  call void @assert_ft(i32 %zext66, i32 35)
  %47 = xor i32 %cfg_DestPhi29, %cfg_DiffPhi30
  %48 = xor i32 %32, %35
  %icmpEq103 = icmp eq i32 %47, %48
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %cfg_icmpEq31 = icmp eq i32 %47, 283116037
  %cfg_zext32 = zext i1 %cfg_icmpEq31 to i32
  %49 = zext i1 %cfg_icmpEq31 to i32
  %icmpEq75 = icmp eq i32 %cfg_zext32, %49
  %50 = icmp eq i32 %49, %49
  %icmpEq105 = icmp eq i1 %icmpEq75, %50
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext32, i32 %47, i32 35)
  br label %51

51:                                               ; preds = %51, %.preheader16
  %indvars.iv = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next, %51 ]
  %52 = phi i64 [ 0, %.preheader16 ], [ %63, %51 ]
  %cfg_DestPhi33 = phi i32 [ 283116037, %.preheader16 ], [ 334497817, %51 ]
  %53 = phi i32 [ 283116037, %.preheader16 ], [ 334497817, %51 ]
  %cfg_DiffPhi34 = phi i32 [ 51382812, %.preheader16 ], [ %65, %51 ]
  %54 = phi i32 [ 51382812, %.preheader16 ], [ %65, %51 ]
  %icmpEq111 = icmp eq i32 %cfg_DiffPhi34, %54
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %icmpEq109 = icmp eq i32 %cfg_DestPhi33, %53
  %55 = icmp eq i32 %53, %53
  %icmpEq113 = icmp eq i1 %icmpEq109, %55
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i64 %indvars.iv, %52
  %zext108 = zext i1 %icmpEq107 to i32
  %56 = zext i1 %icmpEq107 to i32
  %icmpEq115 = icmp eq i32 %zext108, %56
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  call void @assert_ft(i32 %zext108, i32 35)
  %57 = xor i32 %cfg_DestPhi33, %cfg_DiffPhi34
  %cfg_icmpEq35 = icmp eq i32 %57, 334497817
  %cfg_zext36 = zext i1 %cfg_icmpEq35 to i32
  %58 = zext i1 %cfg_icmpEq35 to i32
  %icmpEq117 = icmp eq i32 %cfg_zext36, %58
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext36, i32 %57, i32 35)
  %59 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %28, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #14
  %60 = load i32, ptr %3, align 4
  %61 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %62 = getelementptr inbounds [100 x [100 x i32]], ptr @AdjMatrix, i64 0, i64 %29, i64 %52
  store i32 %60, ptr %61, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %63 = add nuw nsw i64 %52, 1
  %icmpEq119 = icmp eq i64 %indvars.iv.next, %63
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  %64 = select i1 %exitcond.not, i32 385876738, i32 334497817
  %65 = xor i32 334497817, %64
  br i1 %exitcond.not, label %66, label %51

66:                                               ; preds = %51
  %cfg_DestPhi37 = phi i32 [ 334497817, %51 ]
  %67 = phi i32 [ 334497817, %51 ]
  %cfg_DiffPhi38 = phi i32 [ %65, %51 ]
  %68 = phi i32 [ %65, %51 ]
  %icmpEq123 = icmp eq i32 %cfg_DiffPhi38, %68
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %icmpEq121 = icmp eq i32 %cfg_DestPhi37, %67
  %69 = icmp eq i32 %67, %67
  %icmpEq125 = icmp eq i1 %icmpEq121, %69
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %70 = xor i32 %cfg_DestPhi37, %cfg_DiffPhi38
  %cfg_icmpEq39 = icmp eq i32 %70, 385876738
  %71 = icmp eq i32 %70, 385876738
  %icmpEq127 = icmp eq i1 %cfg_icmpEq39, %71
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %cfg_zext40 = zext i1 %cfg_icmpEq39 to i32
  call void @assert_cfg_ft(i32 %cfg_zext40, i32 %70, i32 35)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next22, 100
  %72 = icmp eq i64 %indvars.iv.next22, 100
  %icmpEq129 = icmp eq i1 %exitcond23.not, %72
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %73 = select i1 %exitcond23.not, i32 437258275, i32 283116037
  %74 = xor i32 385876738, %73
  br i1 %exitcond23.not, label %.preheader, label %.preheader16

.preheader:                                       ; preds = %.preheader, %66
  %.120 = phi i32 [ %86, %.preheader ], [ 0, %66 ]
  %75 = phi i32 [ %86, %.preheader ], [ 0, %66 ]
  %.11519 = phi i32 [ %87, %.preheader ], [ 50, %66 ]
  %76 = phi i32 [ %87, %.preheader ], [ 50, %66 ]
  %cfg_DestPhi41 = phi i32 [ 385876738, %66 ], [ 437258275, %.preheader ]
  %77 = phi i32 [ 385876738, %66 ], [ 437258275, %.preheader ]
  %cfg_DiffPhi42 = phi i32 [ %74, %66 ], [ %90, %.preheader ]
  %78 = phi i32 [ %74, %66 ], [ %90, %.preheader ]
  %icmpEq137 = icmp eq i32 %cfg_DiffPhi42, %78
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %icmpEq135 = icmp eq i32 %cfg_DestPhi41, %77
  %79 = icmp eq i32 %77, %77
  %icmpEq139 = icmp eq i1 %icmpEq135, %79
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %icmpEq133 = icmp eq i32 %.11519, %76
  %zext134 = zext i1 %icmpEq133 to i32
  %80 = zext i1 %icmpEq133 to i32
  %icmpEq141 = icmp eq i32 %zext134, %80
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq131 = icmp eq i32 %.120, %75
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %81 = xor i32 %cfg_DestPhi41, %cfg_DiffPhi42
  %82 = xor i32 %77, %78
  %icmpEq143 = icmp eq i32 %81, %82
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %cfg_icmpEq43 = icmp eq i32 %81, 437258275
  %cfg_zext44 = zext i1 %cfg_icmpEq43 to i32
  call void @assert_cfg_ft(i32 %cfg_zext44, i32 %81, i32 35)
  %83 = srem i32 %.11519, 100
  %84 = srem i32 %76, 100
  %icmpEq145 = icmp eq i32 %83, %84
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %85 = call i32 @dijkstra(i32 noundef %.120, i32 noundef %83)
  %86 = add nuw nsw i32 %.120, 1
  %87 = add nsw i32 %83, 1
  %exitcond24.not = icmp eq i32 %86, 100
  %88 = icmp eq i32 %86, 100
  %icmpEq147 = icmp eq i1 %exitcond24.not, %88
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %89 = select i1 %exitcond24.not, i32 488636938, i32 437258275
  %90 = xor i32 437258275, %89
  br i1 %exitcond24.not, label %91, label %.preheader

91:                                               ; preds = %.preheader
  %cfg_DestPhi45 = phi i32 [ 437258275, %.preheader ]
  %92 = phi i32 [ 437258275, %.preheader ]
  %cfg_DiffPhi46 = phi i32 [ %90, %.preheader ]
  %93 = phi i32 [ %90, %.preheader ]
  %icmpEq151 = icmp eq i32 %cfg_DiffPhi46, %93
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq149 = icmp eq i32 %cfg_DestPhi45, %92
  %94 = icmp eq i32 %92, %92
  %icmpEq153 = icmp eq i1 %icmpEq149, %94
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %95 = xor i32 %cfg_DestPhi45, %cfg_DiffPhi46
  %cfg_icmpEq47 = icmp eq i32 %95, 488636938
  %96 = icmp eq i32 %95, 488636938
  %icmpEq155 = icmp eq i1 %cfg_icmpEq47, %96
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %cfg_zext48 = zext i1 %cfg_icmpEq47 to i32
  call void @assert_cfg_ft(i32 %cfg_zext48, i32 %95, i32 35)
  call void @exit(i32 noundef 0) #13
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

declare void @exit.1(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

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
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
