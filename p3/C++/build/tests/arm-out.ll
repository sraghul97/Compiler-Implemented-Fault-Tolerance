; ModuleID = 'arm-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@nlinks = dso_local global i32 0, align 4
@target = dso_local global [2 x i32] zeroinitializer, align 4
@linklen = dso_local local_unnamed_addr global [20 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"%%==>Solve3: links = %d,%d,%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%%Solve3: link1=%d, link2=%d, joint=\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%%Solve3: link1=%d, link2=%d, link3=%d, joints=\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"%%<==Solve2: L1=%d, L2=%d; nsoln=%d, target=(%d,%d),J=(%g,%g)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%%TwoCircles00: p=(%g,%g)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%%Target point = (%d,%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"%5d    %5d    lineto\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%5d    %5d    moveto\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%8.2lf %8.2lf lineto\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%d:%d\09\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%%!PS\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"%%%%Creator: arm.c (Joseph O'Rourke)\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"%d %d translate\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"showpage\0A%%%%EOF\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"newpath\00", align 1
@str.1 = private unnamed_addr constant [22 x i8] c"Solven: no solutions!\00", align 1
@str.2 = private unnamed_addr constant [17 x i8] c"closepath stroke\00", align 1
@str.3 = private unnamed_addr constant [21 x i8] c".00 .00 setlinewidth\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [2 x i32], align 8
  store i64 0, ptr %1, align 8
  %2 = tail call i32 @ReadLinks()
  store i32 %2, ptr @nlinks, align 4
  tail call void @PostscriptOpen()
  br label %3

3:                                                ; preds = %33, %0
  %cfg_DestPhi = phi i32 [ 283116314, %33 ], [ 128976397, %0 ]
  %4 = phi i32 [ 283116314, %33 ], [ 128976397, %0 ]
  %5 = phi i32 [ 283116314, %33 ], [ 128976397, %0 ]
  %cfg_DiffPhi = phi i32 [ 438305800, %33 ], [ 225444127, %0 ]
  %6 = phi i32 [ 438305800, %33 ], [ 225444127, %0 ]
  %7 = phi i32 [ 438305800, %33 ], [ 225444127, %0 ]
  %8 = phi i32 [ 438305800, %33 ], [ 225444127, %0 ]
  %icmpEq25 = icmp eq i32 %7, %8
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq23 = icmp eq i32 %cfg_DiffPhi, %6
  %9 = icmp eq i32 %6, %6
  %icmpEq27 = icmp eq i1 %icmpEq23, %9
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %icmpEq21 = icmp eq i32 %4, %5
  %zext22 = zext i1 %icmpEq21 to i32
  %10 = zext i1 %icmpEq21 to i32
  %icmpEq29 = icmp eq i32 %zext22, %10
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  call void @assert_ft(i32 %zext22, i32 35)
  %icmpEq11 = icmp eq i32 %cfg_DiffPhi, %7
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %icmpEq = icmp eq i32 %cfg_DestPhi, %4
  %11 = icmp eq i32 %4, %5
  %icmpEq31 = icmp eq i1 %icmpEq, %11
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %12 = icmp eq i32 %cfg_DestPhi, %4
  %icmpEq13 = icmp eq i1 %icmpEq, %12
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %zext = zext i1 %icmpEq to i32
  %13 = zext i1 %11 to i32
  %icmpEq33 = icmp eq i32 %zext, %13
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %14 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %14, 180356882
  %15 = icmp eq i32 %14, 180356882
  %16 = icmp eq i32 %14, 180356882
  %icmpEq35 = icmp eq i1 %15, %16
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %icmpEq15 = icmp eq i1 %cfg_icmpEq, %15
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %17 = zext i1 %15 to i32
  %icmpEq37 = icmp eq i32 %cfg_zext, %17
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %14, i32 35)
  tail call void @ReadTarget(ptr noundef nonnull @target)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @MoveTo_i(ptr noundef nonnull %1)
  %18 = load i32, ptr @nlinks, align 4
  %19 = load i32, ptr @nlinks, align 4
  %icmpEq39 = icmp eq i32 %18, %19
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %20 = load i32, ptr @nlinks, align 4
  %icmpEq17 = icmp eq i32 %18, %20
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %21 = tail call i32 @Solven(i32 noundef %18), !range !6
  %.not = icmp eq i32 %21, 0
  %22 = icmp eq i32 %21, 0
  %icmpEq41 = icmp eq i1 %.not, %22
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %23 = select i1 %.not, i32 231735821, i32 283116314
  %24 = xor i32 180356882, %23
  %25 = xor i32 180356882, %23
  %icmpEq19 = icmp eq i32 %24, %25
  %26 = icmp eq i32 %25, %25
  %icmpEq43 = icmp eq i1 %icmpEq19, %26
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  br i1 %.not, label %27, label %33

27:                                               ; preds = %3
  %cfg_DestPhi3 = phi i32 [ 180356882, %3 ]
  %28 = phi i32 [ 180356882, %3 ]
  %cfg_DiffPhi4 = phi i32 [ %24, %3 ]
  %29 = phi i32 [ %25, %3 ]
  %icmpEq47 = icmp eq i32 %cfg_DiffPhi4, %29
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq45 = icmp eq i32 %cfg_DestPhi3, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq49 = icmp eq i1 %icmpEq45, %30
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %31 = xor i32 %cfg_DestPhi3, %cfg_DiffPhi4
  %cfg_icmpEq5 = icmp eq i32 %31, 231735821
  %32 = icmp eq i32 %31, 231735821
  %icmpEq51 = icmp eq i1 %cfg_icmpEq5, %32
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %cfg_zext6 = zext i1 %cfg_icmpEq5 to i32
  call void @assert_cfg_ft(i32 %cfg_zext6, i32 %31, i32 35)
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %33

33:                                               ; preds = %27, %3
  %cfg_DestPhi7 = phi i32 [ 231735821, %27 ], [ 180356882, %3 ]
  %34 = phi i32 [ 231735821, %27 ], [ 180356882, %3 ]
  %cfg_DiffPhi8 = phi i32 [ 489685271, %27 ], [ %24, %3 ]
  %35 = phi i32 [ 489685271, %27 ], [ %25, %3 ]
  %icmpEq55 = icmp eq i32 %cfg_DiffPhi8, %35
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i32 %cfg_DestPhi7, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq57 = icmp eq i1 %icmpEq53, %36
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %37 = xor i32 %cfg_DestPhi7, %cfg_DiffPhi8
  %cfg_icmpEq9 = icmp eq i32 %37, 283116314
  %38 = icmp eq i32 %37, 283116314
  %icmpEq59 = icmp eq i1 %cfg_icmpEq9, %38
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %cfg_zext10 = zext i1 %cfg_icmpEq9 to i32
  call void @assert_cfg_ft(i32 %cfg_zext10, i32 %37, i32 35)
  tail call void @LineTo_i(ptr noundef nonnull @target)
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %3
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @ReadLinks() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull @nlinks)
  %3 = load i32, ptr @nlinks, align 4
  %4 = load i32, ptr @nlinks, align 4
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = icmp sgt i32 %3, 0
  %6 = select i1 %5, i32 180357663, i32 231735821
  %7 = xor i32 128976145, %6
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %8 = phi i64 [ %75, %.lr.ph ], [ 0, %0 ]
  %9 = phi i64 [ %75, %.lr.ph ], [ 0, %0 ]
  %10 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %11 = phi i64 [ %75, %.lr.ph ], [ 0, %0 ]
  %12 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %13 = phi i64 [ %75, %.lr.ph ], [ 0, %0 ]
  %cfg_DestPhi = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %14 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %15 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %16 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %17 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %18 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %19 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %20 = phi i32 [ 128976145, %0 ], [ 180357663, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %7, %0 ], [ %90, %.lr.ph ]
  %21 = phi i32 [ %7, %0 ], [ %91, %.lr.ph ]
  %22 = phi i32 [ %7, %0 ], [ %90, %.lr.ph ]
  %23 = phi i32 [ %7, %0 ], [ %91, %.lr.ph ]
  %24 = phi i32 [ %7, %0 ], [ %90, %.lr.ph ]
  %25 = phi i32 [ %7, %0 ], [ %91, %.lr.ph ]
  %26 = phi i32 [ %7, %0 ], [ %90, %.lr.ph ]
  %27 = phi i32 [ %7, %0 ], [ %91, %.lr.ph ]
  %icmpEq90 = icmp eq i32 %26, %27
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq88 = icmp eq i32 %24, %25
  %28 = icmp eq i32 %25, %25
  %icmpEq92 = icmp eq i1 %icmpEq88, %28
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq86 = icmp eq i32 %22, %23
  %zext87 = zext i1 %icmpEq86 to i32
  %29 = zext i1 %icmpEq86 to i32
  %icmpEq94 = icmp eq i32 %zext87, %29
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq84 = icmp eq i32 %cfg_DiffPhi, %21
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i32 %19, %20
  %30 = icmp eq i32 %20, %20
  %icmpEq96 = icmp eq i1 %icmpEq82, %30
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %icmpEq80 = icmp eq i32 %17, %18
  %zext81 = zext i1 %icmpEq80 to i32
  %31 = zext i1 %icmpEq80 to i32
  %icmpEq98 = icmp eq i32 %zext81, %31
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %15, %16
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %cfg_DestPhi, %14
  %32 = icmp eq i32 %14, %14
  %icmpEq100 = icmp eq i1 %icmpEq76, %32
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %icmpEq74 = icmp eq i64 %12, %13
  %zext75 = zext i1 %icmpEq74 to i32
  %33 = zext i1 %icmpEq74 to i32
  %icmpEq102 = icmp eq i32 %zext75, %33
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq72 = icmp eq i64 %10, %11
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i64 %8, %9
  %34 = icmp eq i64 %9, %9
  %icmpEq104 = icmp eq i1 %icmpEq70, %34
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %icmpEq40 = icmp eq i32 %24, %26
  %zext41 = zext i1 %icmpEq40 to i32
  %35 = zext i1 %icmpEq40 to i32
  %icmpEq106 = icmp eq i32 %zext41, %35
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %cfg_DiffPhi, %22
  %36 = icmp eq i32 %21, %23
  %icmpEq42 = icmp eq i1 %icmpEq38, %36
  %37 = icmp eq i1 %36, %36
  %icmpEq108 = icmp eq i1 %icmpEq42, %37
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %icmpEq36 = icmp eq i32 %17, %19
  %38 = icmp eq i32 %18, %20
  %icmpEq110 = icmp eq i1 %icmpEq36, %38
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %zext37 = zext i1 %icmpEq36 to i32
  %39 = zext i1 %38 to i32
  %icmpEq44 = icmp eq i32 %zext37, %39
  %zext45 = zext i1 %icmpEq44 to i32
  %40 = zext i1 %icmpEq44 to i32
  %icmpEq112 = icmp eq i32 %zext45, %40
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  call void @assert_ft(i32 %zext45, i32 35)
  call void @assert_ft(i32 %zext37, i32 35)
  %icmpEq34 = icmp eq i32 %cfg_DestPhi, %15
  %zext35 = zext i1 %icmpEq34 to i32
  %41 = zext i1 %icmpEq34 to i32
  %icmpEq114 = icmp eq i32 %zext35, %41
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  call void @assert_ft(i32 %zext35, i32 35)
  %icmpEq32 = icmp eq i64 %10, %12
  %42 = icmp eq i64 %11, %13
  %icmpEq46 = icmp eq i1 %icmpEq32, %42
  %43 = icmp eq i1 %42, %42
  %icmpEq116 = icmp eq i1 %icmpEq46, %43
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %icmpEq30 = icmp eq i64 %indvars.iv, %8
  %44 = icmp eq i64 %8, %9
  %icmpEq118 = icmp eq i1 %icmpEq30, %44
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext31 = zext i1 %icmpEq30 to i32
  %45 = zext i1 %44 to i32
  %icmpEq48 = icmp eq i32 %zext31, %45
  %zext49 = zext i1 %icmpEq48 to i32
  %46 = zext i1 %icmpEq48 to i32
  %icmpEq120 = icmp eq i32 %zext49, %46
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  call void @assert_ft(i32 %zext49, i32 35)
  call void @assert_ft(i32 %zext31, i32 35)
  %icmpEq18 = icmp eq i32 %cfg_DiffPhi, %24
  %zext19 = zext i1 %icmpEq18 to i32
  %47 = zext i1 %icmpEq18 to i32
  %icmpEq122 = icmp eq i32 %zext19, %47
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %cfg_DestPhi, %17
  %48 = icmp eq i32 %14, %18
  %icmpEq50 = icmp eq i1 %icmpEq16, %48
  %49 = icmp eq i1 %48, %48
  %icmpEq124 = icmp eq i1 %icmpEq50, %49
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %50 = icmp eq i32 %cfg_DestPhi, %17
  %icmpEq20 = icmp eq i1 %icmpEq16, %50
  %51 = icmp eq i1 %48, %50
  %icmpEq126 = icmp eq i1 %icmpEq20, %51
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  %52 = zext i1 %48 to i32
  %53 = zext i1 %48 to i32
  %icmpEq128 = icmp eq i32 %52, %53
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq52 = icmp eq i32 %zext17, %52
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  call void @assert_ft(i32 %zext17, i32 35)
  %icmpEq14 = icmp eq i64 %indvars.iv, %10
  %54 = icmp eq i64 %8, %11
  %icmpEq130 = icmp eq i1 %icmpEq14, %54
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %zext15 = zext i1 %icmpEq14 to i32
  %55 = zext i1 %54 to i32
  %56 = zext i1 %54 to i32
  %icmpEq54 = icmp eq i32 %55, %56
  %57 = icmp eq i32 %56, %56
  %icmpEq132 = icmp eq i1 %icmpEq54, %57
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq22 = icmp eq i32 %zext15, %55
  %zext23 = zext i1 %icmpEq22 to i32
  %58 = zext i1 %icmpEq22 to i32
  %icmpEq134 = icmp eq i32 %zext23, %58
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  call void @assert_ft(i32 %zext23, i32 35)
  call void @assert_ft(i32 %zext15, i32 35)
  %59 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %60 = xor i32 %14, %21
  %61 = xor i32 %14, %21
  %icmpEq136 = icmp eq i32 %60, %61
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %icmpEq56 = icmp eq i32 %59, %60
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %cfg_icmpEq = icmp eq i32 %59, 180357663
  %62 = icmp eq i32 %60, 180357663
  %icmpEq138 = icmp eq i1 %cfg_icmpEq, %62
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %63 = zext i1 %62 to i32
  %icmpEq24 = icmp eq i32 %cfg_zext, %63
  %64 = icmp eq i32 %63, %63
  %65 = icmp eq i32 %63, %63
  %icmpEq140 = icmp eq i1 %64, %65
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %icmpEq58 = icmp eq i1 %icmpEq24, %64
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  %66 = zext i1 %64 to i32
  %icmpEq142 = icmp eq i32 %zext25, %66
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  call void @assert_ft(i32 %zext25, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %59, i32 35)
  %67 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %1)
  %68 = load i32, ptr %1, align 4
  %69 = load i32, ptr %1, align 4
  %icmpEq144 = icmp eq i32 %68, %69
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %70 = load i32, ptr %1, align 4
  %icmpEq60 = icmp eq i32 %68, %70
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %71 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %72 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %8
  %73 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %74 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %8
  store i32 %68, ptr %71, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %75 = add nuw nsw i64 %8, 1
  %icmpEq146 = icmp eq i64 %indvars.iv.next, %75
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %76 = add nuw nsw i64 %indvars.iv, 1
  %icmpEq62 = icmp eq i64 %indvars.iv.next, %76
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %77 = add nuw nsw i64 %indvars.iv, 1
  %78 = add nuw nsw i64 %8, 1
  %icmpEq148 = icmp eq i64 %77, %78
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %icmpEq26 = icmp eq i64 %indvars.iv.next, %77
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %79 = load i32, ptr @nlinks, align 4
  %80 = load i32, ptr @nlinks, align 4
  %icmpEq150 = icmp eq i32 %79, %80
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %81 = load i32, ptr @nlinks, align 4
  %icmpEq64 = icmp eq i32 %79, %81
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %82 = sext i32 %79 to i64
  %83 = sext i32 %80 to i64
  %icmpEq152 = icmp eq i64 %82, %83
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %84 = icmp slt i64 %indvars.iv.next, %82
  %85 = select i1 %84, i32 180357663, i32 231735821
  %86 = select i1 %84, i32 180357663, i32 231735821
  %87 = select i1 %84, i32 180357663, i32 231735821
  %88 = select i1 %84, i32 180357663, i32 231735821
  %icmpEq154 = icmp eq i32 %87, %88
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %icmpEq66 = icmp eq i32 %86, %87
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq28 = icmp eq i32 %85, %86
  %89 = icmp eq i32 %86, %87
  %icmpEq156 = icmp eq i1 %icmpEq28, %89
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %90 = xor i32 180357663, %85
  %91 = xor i32 180357663, %86
  %92 = xor i32 180357663, %86
  %icmpEq158 = icmp eq i32 %91, %92
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %icmpEq68 = icmp eq i32 %90, %91
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  br i1 %84, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi i32 [ %3, %0 ], [ %79, %.lr.ph ]
  %93 = phi i32 [ %4, %0 ], [ %80, %.lr.ph ]
  %94 = phi i32 [ %3, %0 ], [ %79, %.lr.ph ]
  %95 = phi i32 [ %4, %0 ], [ %80, %.lr.ph ]
  %cfg_DestPhi10 = phi i32 [ 180357663, %.lr.ph ], [ 128976145, %0 ]
  %96 = phi i32 [ 180357663, %.lr.ph ], [ 128976145, %0 ]
  %97 = phi i32 [ 180357663, %.lr.ph ], [ 128976145, %0 ]
  %98 = phi i32 [ 180357663, %.lr.ph ], [ 128976145, %0 ]
  %cfg_DiffPhi11 = phi i32 [ %90, %.lr.ph ], [ %7, %0 ]
  %99 = phi i32 [ %91, %.lr.ph ], [ %7, %0 ]
  %100 = phi i32 [ %90, %.lr.ph ], [ %7, %0 ]
  %101 = phi i32 [ %91, %.lr.ph ], [ %7, %0 ]
  %icmpEq182 = icmp eq i32 %100, %101
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %icmpEq180 = icmp eq i32 %cfg_DiffPhi11, %99
  %102 = icmp eq i32 %99, %99
  %icmpEq184 = icmp eq i1 %icmpEq180, %102
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %icmpEq178 = icmp eq i32 %97, %98
  %zext179 = zext i1 %icmpEq178 to i32
  %103 = zext i1 %icmpEq178 to i32
  %icmpEq186 = icmp eq i32 %zext179, %103
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  call void @assert_ft(i32 %zext179, i32 35)
  %icmpEq176 = icmp eq i32 %cfg_DestPhi10, %96
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq174 = icmp eq i32 %94, %95
  %104 = icmp eq i32 %95, %95
  %icmpEq188 = icmp eq i1 %icmpEq174, %104
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %.lcssa, %93
  %zext173 = zext i1 %icmpEq172 to i32
  %105 = zext i1 %icmpEq172 to i32
  %icmpEq190 = icmp eq i32 %zext173, %105
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq164 = icmp eq i32 %cfg_DiffPhi11, %100
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq162 = icmp eq i32 %cfg_DestPhi10, %97
  %106 = icmp eq i32 %96, %98
  %icmpEq192 = icmp eq i1 %icmpEq162, %106
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %107 = icmp eq i32 %cfg_DestPhi10, %97
  %icmpEq166 = icmp eq i1 %icmpEq162, %107
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %zext163 = zext i1 %icmpEq162 to i32
  %108 = zext i1 %106 to i32
  %icmpEq194 = icmp eq i32 %zext163, %108
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  call void @assert_ft(i32 %zext163, i32 35)
  %icmpEq160 = icmp eq i32 %.lcssa, %94
  %zext161 = zext i1 %icmpEq160 to i32
  %109 = zext i1 %icmpEq160 to i32
  %110 = zext i1 %icmpEq160 to i32
  %icmpEq196 = icmp eq i32 %109, %110
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %icmpEq168 = icmp eq i32 %zext161, %109
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  call void @assert_ft(i32 %zext161, i32 35)
  %111 = xor i32 %cfg_DestPhi10, %cfg_DiffPhi11
  %112 = xor i32 %96, %99
  %icmpEq198 = icmp eq i32 %111, %112
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %cfg_icmpEq12 = icmp eq i32 %111, 231735821
  %cfg_zext13 = zext i1 %cfg_icmpEq12 to i32
  %113 = zext i1 %cfg_icmpEq12 to i32
  %icmpEq170 = icmp eq i32 %cfg_zext13, %113
  %114 = icmp eq i32 %113, %113
  %icmpEq200 = icmp eq i1 %icmpEq170, %114
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext13, i32 %111, i32 35)
  ret i32 %.lcssa
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PostscriptOpen() local_unnamed_addr #1 {
  %1 = load i32, ptr @nlinks, align 4
  %2 = load i32, ptr @nlinks, align 4
  %icmpEq = icmp eq i32 %1, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = icmp sgt i32 %1, 0
  %4 = select i1 %3, i32 180355605, i32 283118105
  %5 = xor i32 128975641, %4
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %cfg_DestPhi = phi i32 [ 128975641, %0 ]
  %6 = phi i32 [ 128975641, %0 ]
  %cfg_DiffPhi = phi i32 [ %5, %0 ]
  %7 = phi i32 [ %5, %0 ]
  %icmpEq25 = icmp eq i32 %cfg_DiffPhi, %7
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq23 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq27 = icmp eq i1 %icmpEq23, %8
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180355605
  %10 = icmp eq i32 %9, 180355605
  %icmpEq29 = icmp eq i1 %cfg_icmpEq, %10
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %11 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %12 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %13 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %14 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %15 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %16 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %.014 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %17 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %18 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %19 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %20 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %21 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %22 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %23 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %cfg_DestPhi15 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %24 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %25 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %26 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %27 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %28 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %29 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %30 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %cfg_DiffPhi16 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %31 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %32 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %33 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %34 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %35 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %36 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %37 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %icmpEq125 = icmp eq i32 %36, %37
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq123 = icmp eq i32 %34, %35
  %38 = icmp eq i32 %35, %35
  %icmpEq127 = icmp eq i1 %icmpEq123, %38
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %icmpEq121 = icmp eq i32 %32, %33
  %zext122 = zext i1 %icmpEq121 to i32
  %39 = zext i1 %icmpEq121 to i32
  %icmpEq129 = icmp eq i32 %zext122, %39
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i32 %cfg_DiffPhi16, %31
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %icmpEq117 = icmp eq i32 %29, %30
  %40 = icmp eq i32 %30, %30
  %icmpEq131 = icmp eq i1 %icmpEq117, %40
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %icmpEq115 = icmp eq i32 %27, %28
  %zext116 = zext i1 %icmpEq115 to i32
  %41 = zext i1 %icmpEq115 to i32
  %icmpEq133 = icmp eq i32 %zext116, %41
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i32 %25, %26
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i32 %cfg_DestPhi15, %24
  %42 = icmp eq i32 %24, %24
  %icmpEq135 = icmp eq i1 %icmpEq111, %42
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %icmpEq109 = icmp eq i32 %22, %23
  %zext110 = zext i1 %icmpEq109 to i32
  %43 = zext i1 %icmpEq109 to i32
  %icmpEq137 = icmp eq i32 %zext110, %43
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i32 %20, %21
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %icmpEq105 = icmp eq i32 %18, %19
  %44 = icmp eq i32 %19, %19
  %icmpEq139 = icmp eq i1 %icmpEq105, %44
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %icmpEq103 = icmp eq i32 %.014, %17
  %zext104 = zext i1 %icmpEq103 to i32
  %45 = zext i1 %icmpEq103 to i32
  %icmpEq141 = icmp eq i32 %zext104, %45
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  call void @assert_ft(i32 %zext104, i32 35)
  %icmpEq101 = icmp eq i64 %15, %16
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %icmpEq99 = icmp eq i64 %13, %14
  %46 = icmp eq i64 %14, %14
  %icmpEq143 = icmp eq i1 %icmpEq99, %46
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq97 = icmp eq i64 %11, %12
  %zext98 = zext i1 %icmpEq97 to i32
  %47 = zext i1 %icmpEq97 to i32
  %icmpEq145 = icmp eq i32 %zext98, %47
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq63 = icmp eq i32 %34, %36
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq61 = icmp eq i32 %cfg_DiffPhi16, %32
  %48 = icmp eq i32 %31, %33
  %icmpEq147 = icmp eq i1 %icmpEq61, %48
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %49 = icmp eq i32 %cfg_DiffPhi16, %32
  %icmpEq65 = icmp eq i1 %icmpEq61, %49
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %zext62 = zext i1 %icmpEq61 to i32
  %50 = zext i1 %48 to i32
  %icmpEq149 = icmp eq i32 %zext62, %50
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq59 = icmp eq i32 %27, %29
  %zext60 = zext i1 %icmpEq59 to i32
  %51 = zext i1 %icmpEq59 to i32
  %52 = zext i1 %icmpEq59 to i32
  %icmpEq151 = icmp eq i32 %51, %52
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq67 = icmp eq i32 %zext60, %51
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq57 = icmp eq i32 %cfg_DestPhi15, %25
  %53 = icmp eq i32 %24, %26
  %icmpEq153 = icmp eq i1 %icmpEq57, %53
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i32 %20, %22
  %54 = icmp eq i32 %21, %23
  %55 = icmp eq i32 %21, %23
  %icmpEq155 = icmp eq i1 %54, %55
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %icmpEq69 = icmp eq i1 %icmpEq55, %54
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  %56 = zext i1 %54 to i32
  %icmpEq157 = icmp eq i32 %zext56, %56
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i32 %.014, %18
  %zext54 = zext i1 %icmpEq53 to i32
  %57 = zext i1 %icmpEq53 to i32
  %58 = zext i1 %icmpEq53 to i32
  %icmpEq159 = icmp eq i32 %57, %58
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %icmpEq71 = icmp eq i32 %zext54, %57
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  call void @assert_ft(i32 %zext54, i32 35)
  %icmpEq51 = icmp eq i64 %13, %15
  %59 = icmp eq i64 %14, %16
  %icmpEq161 = icmp eq i1 %icmpEq51, %59
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i64 %indvars.iv, %11
  %60 = icmp eq i64 %11, %12
  %61 = icmp eq i64 %11, %12
  %icmpEq163 = icmp eq i1 %60, %61
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq73 = icmp eq i1 %icmpEq49, %60
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %zext50 = zext i1 %icmpEq49 to i32
  %62 = zext i1 %60 to i32
  %icmpEq165 = icmp eq i32 %zext50, %62
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  call void @assert_ft(i32 %zext50, i32 35)
  %icmpEq37 = icmp eq i32 %cfg_DiffPhi16, %34
  %zext38 = zext i1 %icmpEq37 to i32
  %63 = zext i1 %icmpEq37 to i32
  %64 = zext i1 %icmpEq37 to i32
  %icmpEq167 = icmp eq i32 %63, %64
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %icmpEq75 = icmp eq i32 %zext38, %63
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  call void @assert_ft(i32 %zext38, i32 35)
  %icmpEq35 = icmp eq i32 %cfg_DestPhi15, %27
  %65 = icmp eq i32 %24, %28
  %icmpEq169 = icmp eq i1 %icmpEq35, %65
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %66 = icmp eq i32 %cfg_DestPhi15, %27
  %icmpEq39 = icmp eq i1 %icmpEq35, %66
  %67 = icmp eq i1 %65, %66
  %icmpEq77 = icmp eq i1 %icmpEq39, %67
  %68 = icmp eq i1 %67, %67
  %icmpEq171 = icmp eq i1 %icmpEq77, %68
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %zext36 = zext i1 %icmpEq35 to i32
  %69 = zext i1 %65 to i32
  %icmpEq173 = icmp eq i32 %zext36, %69
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  call void @assert_ft(i32 %zext36, i32 35)
  %icmpEq33 = icmp eq i32 %.014, %20
  %70 = icmp eq i32 %17, %21
  %icmpEq79 = icmp eq i1 %icmpEq33, %70
  %71 = icmp eq i1 %70, %70
  %icmpEq175 = icmp eq i1 %icmpEq79, %71
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %zext34 = zext i1 %icmpEq33 to i32
  %72 = zext i1 %70 to i32
  %73 = zext i1 %70 to i32
  %icmpEq177 = icmp eq i32 %72, %73
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %icmpEq41 = icmp eq i32 %zext34, %72
  %zext42 = zext i1 %icmpEq41 to i32
  %74 = zext i1 %icmpEq41 to i32
  %icmpEq81 = icmp eq i32 %zext42, %74
  %75 = icmp eq i32 %74, %74
  %icmpEq179 = icmp eq i1 %icmpEq81, %75
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  call void @assert_ft(i32 %zext42, i32 35)
  call void @assert_ft(i32 %zext34, i32 35)
  %icmpEq31 = icmp eq i64 %indvars.iv, %13
  %76 = icmp eq i64 %11, %14
  %icmpEq181 = icmp eq i1 %icmpEq31, %76
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %zext32 = zext i1 %icmpEq31 to i32
  %77 = zext i1 %76 to i32
  %icmpEq83 = icmp eq i32 %zext32, %77
  %zext84 = zext i1 %icmpEq83 to i32
  %78 = zext i1 %icmpEq83 to i32
  %icmpEq183 = icmp eq i32 %zext84, %78
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  call void @assert_ft(i32 %zext84, i32 35)
  call void @assert_ft(i32 %zext32, i32 35)
  %79 = xor i32 %cfg_DestPhi15, %cfg_DiffPhi16
  %80 = xor i32 %24, %31
  %81 = xor i32 %24, %31
  %icmpEq185 = icmp eq i32 %80, %81
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %icmpEq43 = icmp eq i32 %79, %80
  %82 = icmp eq i32 %80, %81
  %icmpEq85 = icmp eq i1 %icmpEq43, %82
  %zext86 = zext i1 %icmpEq85 to i32
  %83 = zext i1 %icmpEq85 to i32
  %icmpEq187 = icmp eq i32 %zext86, %83
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  call void @assert_ft(i32 %zext86, i32 35)
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %cfg_icmpEq17 = icmp eq i32 %79, 231737359
  %84 = icmp eq i32 %80, 231737359
  %icmpEq189 = icmp eq i1 %cfg_icmpEq17, %84
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %cfg_zext18 = zext i1 %cfg_icmpEq17 to i32
  %85 = zext i1 %84 to i32
  %icmpEq87 = icmp eq i32 %cfg_zext18, %85
  %zext88 = zext i1 %icmpEq87 to i32
  %86 = zext i1 %icmpEq87 to i32
  %icmpEq191 = icmp eq i32 %zext88, %86
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  call void @assert_ft(i32 %zext88, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext18, i32 %79, i32 35)
  %87 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %88 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %11
  %89 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %11
  %90 = load i32, ptr %87, align 4
  %91 = load i32, ptr %88, align 4
  %icmpEq193 = icmp eq i32 %90, %91
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  %92 = load i32, ptr %87, align 4
  %icmpEq89 = icmp eq i32 %90, %92
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %93 = load i32, ptr %87, align 4
  %94 = load i32, ptr %88, align 4
  %icmpEq195 = icmp eq i32 %93, %94
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %icmpEq45 = icmp eq i32 %90, %93
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %95 = add nsw i32 %90, %.014
  %96 = add nsw i32 %91, %17
  %icmpEq197 = icmp eq i32 %95, %96
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %97 = add nsw i32 %90, %.014
  %icmpEq91 = icmp eq i32 %95, %97
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %98 = add nuw nsw i64 %11, 1
  %icmpEq199 = icmp eq i64 %indvars.iv.next, %98
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %99 = select i1 %exitcond.not, i32 283118105, i32 231737359
  %100 = select i1 %exitcond.not, i32 283118105, i32 231737359
  %101 = select i1 %exitcond.not, i32 283118105, i32 231737359
  %102 = select i1 %exitcond.not, i32 283118105, i32 231737359
  %icmpEq201 = icmp eq i32 %101, %102
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %icmpEq93 = icmp eq i32 %100, %101
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %icmpEq47 = icmp eq i32 %99, %100
  %103 = icmp eq i32 %100, %101
  %icmpEq203 = icmp eq i1 %icmpEq47, %103
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %104 = xor i32 231737359, %99
  %105 = xor i32 231737359, %100
  %106 = xor i32 231737359, %100
  %icmpEq205 = icmp eq i32 %105, %106
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  %icmpEq95 = icmp eq i32 %104, %105
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.0.lcssa = phi i32 [ 0, %0 ], [ %95, %.lr.ph ]
  %107 = phi i32 [ 0, %0 ], [ %96, %.lr.ph ]
  %108 = phi i32 [ 0, %0 ], [ %95, %.lr.ph ]
  %109 = phi i32 [ 0, %0 ], [ %96, %.lr.ph ]
  %cfg_DestPhi19 = phi i32 [ 231737359, %.lr.ph ], [ 128975641, %0 ]
  %110 = phi i32 [ 231737359, %.lr.ph ], [ 128975641, %0 ]
  %111 = phi i32 [ 231737359, %.lr.ph ], [ 128975641, %0 ]
  %112 = phi i32 [ 231737359, %.lr.ph ], [ 128975641, %0 ]
  %cfg_DiffPhi20 = phi i32 [ %104, %.lr.ph ], [ %5, %0 ]
  %113 = phi i32 [ %105, %.lr.ph ], [ %5, %0 ]
  %114 = phi i32 [ %104, %.lr.ph ], [ %5, %0 ]
  %115 = phi i32 [ %105, %.lr.ph ], [ %5, %0 ]
  %icmpEq231 = icmp eq i32 %114, %115
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq229 = icmp eq i32 %cfg_DiffPhi20, %113
  %116 = icmp eq i32 %113, %113
  %icmpEq233 = icmp eq i1 %icmpEq229, %116
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %icmpEq227 = icmp eq i32 %111, %112
  %zext228 = zext i1 %icmpEq227 to i32
  %117 = zext i1 %icmpEq227 to i32
  %icmpEq235 = icmp eq i32 %zext228, %117
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq225 = icmp eq i32 %cfg_DestPhi19, %110
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %icmpEq223 = icmp eq i32 %108, %109
  %118 = icmp eq i32 %109, %109
  %icmpEq237 = icmp eq i1 %icmpEq223, %118
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  %icmpEq221 = icmp eq i32 %.0.lcssa, %107
  %zext222 = zext i1 %icmpEq221 to i32
  %119 = zext i1 %icmpEq221 to i32
  %icmpEq239 = icmp eq i32 %zext222, %119
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  call void @assert_ft(i32 %zext222, i32 35)
  %icmpEq211 = icmp eq i32 %cfg_DiffPhi20, %114
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %icmpEq209 = icmp eq i32 %cfg_DestPhi19, %111
  %120 = icmp eq i32 %110, %112
  %icmpEq241 = icmp eq i1 %icmpEq209, %120
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %121 = icmp eq i32 %cfg_DestPhi19, %111
  %icmpEq213 = icmp eq i1 %icmpEq209, %121
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  %zext210 = zext i1 %icmpEq209 to i32
  %122 = zext i1 %120 to i32
  %icmpEq243 = icmp eq i32 %zext210, %122
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  call void @assert_ft(i32 %zext210, i32 35)
  %icmpEq207 = icmp eq i32 %.0.lcssa, %108
  %zext208 = zext i1 %icmpEq207 to i32
  %123 = zext i1 %icmpEq207 to i32
  %124 = zext i1 %icmpEq207 to i32
  %icmpEq245 = icmp eq i32 %123, %124
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  %icmpEq215 = icmp eq i32 %zext208, %123
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  call void @assert_ft(i32 %zext208, i32 35)
  %125 = xor i32 %cfg_DestPhi19, %cfg_DiffPhi20
  %126 = xor i32 %110, %113
  %icmpEq247 = icmp eq i32 %125, %126
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %cfg_icmpEq21 = icmp eq i32 %125, 283118105
  %cfg_zext22 = zext i1 %cfg_icmpEq21 to i32
  %127 = zext i1 %cfg_icmpEq21 to i32
  %icmpEq217 = icmp eq i32 %cfg_zext22, %127
  %128 = icmp eq i32 %127, %127
  %icmpEq249 = icmp eq i1 %icmpEq217, %128
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext22, i32 %125, i32 35)
  %129 = sub nsw i32 0, %.0.lcssa
  %130 = sub nsw i32 0, %107
  %icmpEq251 = icmp eq i32 %129, %130
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15)
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16)
  %133 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %129, i32 noundef %129, i32 noundef %.0.lcssa, i32 noundef %.0.lcssa)
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %135 = add nsw i32 %.0.lcssa, 100
  %136 = add nsw i32 %107, 100
  %icmpEq253 = icmp eq i32 %135, %136
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %137 = add nsw i32 %.0.lcssa, 100
  %icmpEq219 = icmp eq i32 %135, %137
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %135, i32 noundef %135)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadTarget(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef %0)
  %3 = icmp eq i32 %2, -1
  %4 = icmp eq i32 %2, -1
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 283116314, i32 180356101
  %6 = xor i32 128975641, %5
  br i1 %3, label %41, label %7

7:                                                ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975641, %1 ]
  %8 = phi i32 [ 128975641, %1 ]
  %cfg_DiffPhi = phi i32 [ %6, %1 ]
  %9 = phi i32 [ %6, %1 ]
  %icmpEq17 = icmp eq i32 %cfg_DiffPhi, %9
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %icmpEq15 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq19 = icmp eq i1 %icmpEq15, %10
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356101
  %12 = icmp eq i32 %11, 180356101
  %icmpEq21 = icmp eq i1 %cfg_icmpEq, %12
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = getelementptr inbounds i32, ptr %0, i64 1
  %14 = tail call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %13)
  %15 = icmp eq i32 %14, -1
  %16 = icmp eq i32 %14, -1
  %icmpEq23 = icmp eq i1 %15, %16
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %17 = select i1 %15, i32 283116314, i32 231736346
  %18 = xor i32 180356101, %17
  br i1 %15, label %41, label %19

19:                                               ; preds = %7
  %cfg_DestPhi7 = phi i32 [ 180356101, %7 ]
  %20 = phi i32 [ 180356101, %7 ]
  %21 = phi i32 [ 180356101, %7 ]
  %22 = phi i32 [ 180356101, %7 ]
  %cfg_DiffPhi8 = phi i32 [ %18, %7 ]
  %23 = phi i32 [ %18, %7 ]
  %24 = phi i32 [ %18, %7 ]
  %25 = phi i32 [ %18, %7 ]
  %icmpEq41 = icmp eq i32 %24, %25
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %icmpEq39 = icmp eq i32 %cfg_DiffPhi8, %23
  %26 = icmp eq i32 %23, %23
  %icmpEq43 = icmp eq i1 %icmpEq39, %26
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq37 = icmp eq i32 %21, %22
  %zext38 = zext i1 %icmpEq37 to i32
  %27 = zext i1 %icmpEq37 to i32
  %icmpEq45 = icmp eq i32 %zext38, %27
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  call void @assert_ft(i32 %zext38, i32 35)
  %icmpEq35 = icmp eq i32 %cfg_DestPhi7, %20
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %icmpEq27 = icmp eq i32 %cfg_DiffPhi8, %24
  %28 = icmp eq i32 %23, %25
  %icmpEq47 = icmp eq i1 %icmpEq27, %28
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq25 = icmp eq i32 %cfg_DestPhi7, %21
  %29 = icmp eq i32 %20, %22
  %30 = icmp eq i32 %20, %22
  %icmpEq49 = icmp eq i1 %29, %30
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %icmpEq29 = icmp eq i1 %icmpEq25, %29
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %zext26 = zext i1 %icmpEq25 to i32
  %31 = zext i1 %29 to i32
  %icmpEq51 = icmp eq i32 %zext26, %31
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  call void @assert_ft(i32 %zext26, i32 35)
  %32 = xor i32 %cfg_DestPhi7, %cfg_DiffPhi8
  %cfg_icmpEq9 = icmp eq i32 %32, 231736346
  %33 = icmp eq i32 %32, 231736346
  %34 = icmp eq i32 %32, 231736346
  %icmpEq53 = icmp eq i1 %33, %34
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %icmpEq31 = icmp eq i1 %cfg_icmpEq9, %33
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %cfg_zext10 = zext i1 %cfg_icmpEq9 to i32
  %35 = zext i1 %33 to i32
  %icmpEq55 = icmp eq i32 %cfg_zext10, %35
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext10, i32 %32, i32 35)
  %36 = load i32, ptr %0, align 4
  %37 = load i32, ptr %13, align 4
  %38 = load i32, ptr %13, align 4
  %39 = load i32, ptr %13, align 4
  %icmpEq57 = icmp eq i32 %38, %39
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq33 = icmp eq i32 %37, %38
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %36, i32 noundef %37)
  ret void

41:                                               ; preds = %7, %1
  %cfg_DestPhi11 = phi i32 [ 180356101, %7 ], [ 128975641, %1 ]
  %42 = phi i32 [ 180356101, %7 ], [ 128975641, %1 ]
  %cfg_DiffPhi12 = phi i32 [ %18, %7 ], [ %6, %1 ]
  %43 = phi i32 [ %18, %7 ], [ %6, %1 ]
  %icmpEq61 = icmp eq i32 %cfg_DiffPhi12, %43
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq59 = icmp eq i32 %cfg_DestPhi11, %42
  %44 = icmp eq i32 %42, %42
  %icmpEq63 = icmp eq i1 %icmpEq59, %44
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %45 = xor i32 %cfg_DestPhi11, %cfg_DiffPhi12
  %cfg_icmpEq13 = icmp eq i32 %45, 283116314
  %46 = icmp eq i32 %45, 283116314
  %icmpEq65 = icmp eq i1 %cfg_icmpEq13, %46
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %cfg_zext14 = zext i1 %cfg_icmpEq13 to i32
  call void @assert_cfg_ft(i32 %cfg_zext14, i32 %45, i32 35)
  tail call void @PostscriptClose()
  tail call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @MoveTo_i(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %2, i32 noundef %5)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solven(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp sgt i32 %0, 0
  %3 = icmp sgt i32 %0, 0
  %icmpEq = icmp eq i1 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %2, i32 180355605, i32 540019210
  %5 = xor i32 128975389, %4
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge35

.lr.ph.preheader:                                 ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975389, %1 ]
  %6 = phi i32 [ 128975389, %1 ]
  %cfg_DiffPhi = phi i32 [ %5, %1 ]
  %7 = phi i32 [ %5, %1 ]
  %icmpEq89 = icmp eq i32 %cfg_DiffPhi, %7
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %icmpEq87 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq91 = icmp eq i1 %icmpEq87, %8
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180355605
  %10 = icmp eq i32 %9, 180355605
  %icmpEq93 = icmp eq i1 %cfg_icmpEq, %10
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %wide.trip.count = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %11 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %12 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %13 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %14 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %15 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %16 = phi i64 [ 0, %.lr.ph.preheader ], [ %98, %.lr.ph ]
  %.02230 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %17 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %18 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %19 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %20 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %21 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %22 = phi i32 [ 0, %.lr.ph.preheader ], [ %95, %.lr.ph ]
  %23 = phi i32 [ 0, %.lr.ph.preheader ], [ %96, %.lr.ph ]
  %cfg_DestPhi59 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %24 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %25 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %26 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %27 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %28 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %29 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %30 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231737359, %.lr.ph ]
  %cfg_DiffPhi60 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %31 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %32 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %33 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %34 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %35 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %36 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %104, %.lr.ph ]
  %37 = phi i32 [ 118491674, %.lr.ph.preheader ], [ %105, %.lr.ph ]
  %icmpEq189 = icmp eq i32 %36, %37
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %icmpEq187 = icmp eq i32 %34, %35
  %38 = icmp eq i32 %35, %35
  %icmpEq191 = icmp eq i1 %icmpEq187, %38
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %icmpEq185 = icmp eq i32 %32, %33
  %zext186 = zext i1 %icmpEq185 to i32
  %39 = zext i1 %icmpEq185 to i32
  %icmpEq193 = icmp eq i32 %zext186, %39
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  call void @assert_ft(i32 %zext186, i32 35)
  %icmpEq183 = icmp eq i32 %cfg_DiffPhi60, %31
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %icmpEq181 = icmp eq i32 %29, %30
  %40 = icmp eq i32 %30, %30
  %icmpEq195 = icmp eq i1 %icmpEq181, %40
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %icmpEq179 = icmp eq i32 %27, %28
  %zext180 = zext i1 %icmpEq179 to i32
  %41 = zext i1 %icmpEq179 to i32
  %icmpEq197 = icmp eq i32 %zext180, %41
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  call void @assert_ft(i32 %zext180, i32 35)
  %icmpEq177 = icmp eq i32 %25, %26
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %icmpEq175 = icmp eq i32 %cfg_DestPhi59, %24
  %42 = icmp eq i32 %24, %24
  %icmpEq199 = icmp eq i1 %icmpEq175, %42
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %icmpEq173 = icmp eq i32 %22, %23
  %zext174 = zext i1 %icmpEq173 to i32
  %43 = zext i1 %icmpEq173 to i32
  %icmpEq201 = icmp eq i32 %zext174, %43
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  call void @assert_ft(i32 %zext174, i32 35)
  %icmpEq171 = icmp eq i32 %20, %21
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %icmpEq169 = icmp eq i32 %18, %19
  %44 = icmp eq i32 %19, %19
  %icmpEq203 = icmp eq i1 %icmpEq169, %44
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %icmpEq167 = icmp eq i32 %.02230, %17
  %zext168 = zext i1 %icmpEq167 to i32
  %45 = zext i1 %icmpEq167 to i32
  %icmpEq205 = icmp eq i32 %zext168, %45
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  call void @assert_ft(i32 %zext168, i32 35)
  %icmpEq165 = icmp eq i64 %15, %16
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %icmpEq163 = icmp eq i64 %13, %14
  %46 = icmp eq i64 %14, %14
  %icmpEq207 = icmp eq i1 %icmpEq163, %46
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq161 = icmp eq i64 %11, %12
  %zext162 = zext i1 %icmpEq161 to i32
  %47 = zext i1 %icmpEq161 to i32
  %icmpEq209 = icmp eq i32 %zext162, %47
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  call void @assert_ft(i32 %zext162, i32 35)
  %icmpEq127 = icmp eq i32 %34, %36
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %icmpEq125 = icmp eq i32 %cfg_DiffPhi60, %32
  %48 = icmp eq i32 %31, %33
  %icmpEq211 = icmp eq i1 %icmpEq125, %48
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %49 = icmp eq i32 %cfg_DiffPhi60, %32
  %icmpEq129 = icmp eq i1 %icmpEq125, %49
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %zext126 = zext i1 %icmpEq125 to i32
  %50 = zext i1 %48 to i32
  %icmpEq213 = icmp eq i32 %zext126, %50
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq123 = icmp eq i32 %27, %29
  %zext124 = zext i1 %icmpEq123 to i32
  %51 = zext i1 %icmpEq123 to i32
  %52 = zext i1 %icmpEq123 to i32
  %icmpEq215 = icmp eq i32 %51, %52
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  %icmpEq131 = icmp eq i32 %zext124, %51
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  call void @assert_ft(i32 %zext124, i32 35)
  %icmpEq121 = icmp eq i32 %cfg_DestPhi59, %25
  %53 = icmp eq i32 %24, %26
  %icmpEq217 = icmp eq i1 %icmpEq121, %53
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i32 %20, %22
  %54 = icmp eq i32 %21, %23
  %55 = icmp eq i32 %21, %23
  %icmpEq219 = icmp eq i1 %54, %55
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %icmpEq133 = icmp eq i1 %icmpEq119, %54
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %zext120 = zext i1 %icmpEq119 to i32
  %56 = zext i1 %54 to i32
  %icmpEq221 = icmp eq i32 %zext120, %56
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  call void @assert_ft(i32 %zext120, i32 35)
  %icmpEq117 = icmp eq i32 %.02230, %18
  %zext118 = zext i1 %icmpEq117 to i32
  %57 = zext i1 %icmpEq117 to i32
  %58 = zext i1 %icmpEq117 to i32
  %icmpEq223 = icmp eq i32 %57, %58
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  %icmpEq135 = icmp eq i32 %zext118, %57
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  call void @assert_ft(i32 %zext118, i32 35)
  %icmpEq115 = icmp eq i64 %13, %15
  %59 = icmp eq i64 %14, %16
  %icmpEq225 = icmp eq i1 %icmpEq115, %59
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i64 %indvars.iv, %11
  %60 = icmp eq i64 %11, %12
  %61 = icmp eq i64 %11, %12
  %icmpEq227 = icmp eq i1 %60, %61
  %zext228 = zext i1 %icmpEq227 to i32
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq137 = icmp eq i1 %icmpEq113, %60
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %zext114 = zext i1 %icmpEq113 to i32
  %62 = zext i1 %60 to i32
  %icmpEq229 = icmp eq i32 %zext114, %62
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq101 = icmp eq i32 %cfg_DiffPhi60, %34
  %zext102 = zext i1 %icmpEq101 to i32
  %63 = zext i1 %icmpEq101 to i32
  %64 = zext i1 %icmpEq101 to i32
  %icmpEq231 = icmp eq i32 %63, %64
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq139 = icmp eq i32 %zext102, %63
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  call void @assert_ft(i32 %zext102, i32 35)
  %icmpEq99 = icmp eq i32 %cfg_DestPhi59, %27
  %65 = icmp eq i32 %24, %28
  %icmpEq233 = icmp eq i1 %icmpEq99, %65
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %66 = icmp eq i32 %cfg_DestPhi59, %27
  %icmpEq103 = icmp eq i1 %icmpEq99, %66
  %67 = icmp eq i1 %65, %66
  %icmpEq141 = icmp eq i1 %icmpEq103, %67
  %68 = icmp eq i1 %67, %67
  %icmpEq235 = icmp eq i1 %icmpEq141, %68
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %zext100 = zext i1 %icmpEq99 to i32
  %69 = zext i1 %65 to i32
  %icmpEq237 = icmp eq i32 %zext100, %69
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq97 = icmp eq i32 %.02230, %20
  %70 = icmp eq i32 %17, %21
  %icmpEq143 = icmp eq i1 %icmpEq97, %70
  %71 = icmp eq i1 %70, %70
  %icmpEq239 = icmp eq i1 %icmpEq143, %71
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %zext98 = zext i1 %icmpEq97 to i32
  %72 = zext i1 %70 to i32
  %73 = zext i1 %70 to i32
  %icmpEq241 = icmp eq i32 %72, %73
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %icmpEq105 = icmp eq i32 %zext98, %72
  %zext106 = zext i1 %icmpEq105 to i32
  %74 = zext i1 %icmpEq105 to i32
  %icmpEq145 = icmp eq i32 %zext106, %74
  %75 = icmp eq i32 %74, %74
  %icmpEq243 = icmp eq i1 %icmpEq145, %75
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  call void @assert_ft(i32 %zext106, i32 35)
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq95 = icmp eq i64 %indvars.iv, %13
  %76 = icmp eq i64 %11, %14
  %icmpEq245 = icmp eq i1 %icmpEq95, %76
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  %zext96 = zext i1 %icmpEq95 to i32
  %77 = zext i1 %76 to i32
  %icmpEq147 = icmp eq i32 %zext96, %77
  %zext148 = zext i1 %icmpEq147 to i32
  %78 = zext i1 %icmpEq147 to i32
  %icmpEq247 = icmp eq i32 %zext148, %78
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  call void @assert_ft(i32 %zext148, i32 35)
  call void @assert_ft(i32 %zext96, i32 35)
  %79 = xor i32 %cfg_DestPhi59, %cfg_DiffPhi60
  %80 = xor i32 %24, %31
  %81 = xor i32 %24, %31
  %icmpEq249 = icmp eq i32 %80, %81
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %icmpEq107 = icmp eq i32 %79, %80
  %82 = icmp eq i32 %80, %81
  %icmpEq149 = icmp eq i1 %icmpEq107, %82
  %zext150 = zext i1 %icmpEq149 to i32
  %83 = zext i1 %icmpEq149 to i32
  %icmpEq251 = icmp eq i32 %zext150, %83
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  call void @assert_ft(i32 %zext150, i32 35)
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %cfg_icmpEq61 = icmp eq i32 %79, 231737359
  %84 = icmp eq i32 %80, 231737359
  %icmpEq253 = icmp eq i1 %cfg_icmpEq61, %84
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %cfg_zext62 = zext i1 %cfg_icmpEq61 to i32
  %85 = zext i1 %84 to i32
  %icmpEq151 = icmp eq i32 %cfg_zext62, %85
  %zext152 = zext i1 %icmpEq151 to i32
  %86 = zext i1 %icmpEq151 to i32
  %icmpEq255 = icmp eq i32 %zext152, %86
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  call void @assert_ft(i32 %zext152, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext62, i32 %79, i32 35)
  %87 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %88 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %11
  %89 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %11
  %90 = load i32, ptr %87, align 4
  %91 = load i32, ptr %88, align 4
  %icmpEq257 = icmp eq i32 %90, %91
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  %92 = load i32, ptr %87, align 4
  %icmpEq153 = icmp eq i32 %90, %92
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %93 = load i32, ptr %87, align 4
  %94 = load i32, ptr %88, align 4
  %icmpEq259 = icmp eq i32 %93, %94
  %zext260 = zext i1 %icmpEq259 to i32
  call void @assert_ft(i32 %zext260, i32 35)
  %icmpEq109 = icmp eq i32 %90, %93
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %95 = add nsw i32 %90, %.02230
  %96 = add nsw i32 %91, %17
  %icmpEq261 = icmp eq i32 %95, %96
  %zext262 = zext i1 %icmpEq261 to i32
  call void @assert_ft(i32 %zext262, i32 35)
  %97 = add nsw i32 %90, %.02230
  %icmpEq155 = icmp eq i32 %95, %97
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %98 = add nuw nsw i64 %11, 1
  %icmpEq263 = icmp eq i64 %indvars.iv.next, %98
  %zext264 = zext i1 %icmpEq263 to i32
  call void @assert_ft(i32 %zext264, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %99 = select i1 %exitcond.not, i32 283116037, i32 231737359
  %100 = select i1 %exitcond.not, i32 283116037, i32 231737359
  %101 = select i1 %exitcond.not, i32 283116037, i32 231737359
  %102 = select i1 %exitcond.not, i32 283116037, i32 231737359
  %icmpEq265 = icmp eq i32 %101, %102
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %icmpEq157 = icmp eq i32 %100, %101
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %icmpEq111 = icmp eq i32 %99, %100
  %103 = icmp eq i32 %100, %101
  %icmpEq267 = icmp eq i1 %icmpEq111, %103
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %104 = xor i32 231737359, %99
  %105 = xor i32 231737359, %100
  %106 = xor i32 231737359, %100
  %icmpEq269 = icmp eq i32 %105, %106
  %zext270 = zext i1 %icmpEq269 to i32
  call void @assert_ft(i32 %zext270, i32 35)
  %icmpEq159 = icmp eq i32 %104, %105
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %cfg_DestPhi63 = phi i32 [ 231737359, %.lr.ph ]
  %107 = phi i32 [ 231737359, %.lr.ph ]
  %108 = phi i32 [ 231737359, %.lr.ph ]
  %109 = phi i32 [ 231737359, %.lr.ph ]
  %110 = phi i32 [ 231737359, %.lr.ph ]
  %111 = phi i32 [ 231737359, %.lr.ph ]
  %112 = phi i32 [ 231737359, %.lr.ph ]
  %cfg_DiffPhi64 = phi i32 [ %104, %.lr.ph ]
  %113 = phi i32 [ %105, %.lr.ph ]
  %114 = phi i32 [ %104, %.lr.ph ]
  %115 = phi i32 [ %105, %.lr.ph ]
  %116 = phi i32 [ %104, %.lr.ph ]
  %117 = phi i32 [ %105, %.lr.ph ]
  %118 = phi i32 [ %104, %.lr.ph ]
  %119 = phi i32 [ %105, %.lr.ph ]
  %icmpEq319 = icmp eq i32 %118, %119
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %icmpEq317 = icmp eq i32 %116, %117
  %120 = icmp eq i32 %117, %117
  %icmpEq321 = icmp eq i1 %icmpEq317, %120
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %icmpEq315 = icmp eq i32 %114, %115
  %zext316 = zext i1 %icmpEq315 to i32
  %121 = zext i1 %icmpEq315 to i32
  %icmpEq323 = icmp eq i32 %zext316, %121
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  call void @assert_ft(i32 %zext316, i32 35)
  %icmpEq313 = icmp eq i32 %cfg_DiffPhi64, %113
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %icmpEq311 = icmp eq i32 %111, %112
  %122 = icmp eq i32 %112, %112
  %icmpEq325 = icmp eq i1 %icmpEq311, %122
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %icmpEq309 = icmp eq i32 %109, %110
  %zext310 = zext i1 %icmpEq309 to i32
  %123 = zext i1 %icmpEq309 to i32
  %icmpEq327 = icmp eq i32 %zext310, %123
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  call void @assert_ft(i32 %zext310, i32 35)
  %icmpEq307 = icmp eq i32 %107, %108
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %icmpEq287 = icmp eq i32 %116, %118
  %124 = icmp eq i32 %117, %119
  %icmpEq329 = icmp eq i1 %icmpEq287, %124
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  %zext288 = zext i1 %icmpEq287 to i32
  call void @assert_ft(i32 %zext288, i32 35)
  %icmpEq285 = icmp eq i32 %cfg_DiffPhi64, %114
  %125 = icmp eq i32 %113, %115
  %126 = icmp eq i32 %113, %115
  %icmpEq331 = icmp eq i1 %125, %126
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %icmpEq289 = icmp eq i1 %icmpEq285, %125
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %zext286 = zext i1 %icmpEq285 to i32
  %127 = zext i1 %125 to i32
  %icmpEq333 = icmp eq i32 %zext286, %127
  %zext334 = zext i1 %icmpEq333 to i32
  call void @assert_ft(i32 %zext334, i32 35)
  call void @assert_ft(i32 %zext286, i32 35)
  %icmpEq283 = icmp eq i32 %109, %111
  %zext284 = zext i1 %icmpEq283 to i32
  %128 = zext i1 %icmpEq283 to i32
  %129 = zext i1 %icmpEq283 to i32
  %icmpEq335 = icmp eq i32 %128, %129
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq291 = icmp eq i32 %zext284, %128
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  call void @assert_ft(i32 %zext284, i32 35)
  %icmpEq281 = icmp eq i32 %cfg_DestPhi63, %107
  %130 = icmp eq i32 %107, %108
  %icmpEq337 = icmp eq i1 %icmpEq281, %130
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  %icmpEq273 = icmp eq i32 %cfg_DiffPhi64, %116
  %131 = icmp eq i32 %113, %117
  %132 = icmp eq i32 %113, %117
  %icmpEq339 = icmp eq i1 %131, %132
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %icmpEq293 = icmp eq i1 %icmpEq273, %131
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  %zext274 = zext i1 %icmpEq273 to i32
  %133 = zext i1 %131 to i32
  %icmpEq341 = icmp eq i32 %zext274, %133
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  call void @assert_ft(i32 %zext274, i32 35)
  %icmpEq271 = icmp eq i32 %cfg_DestPhi63, %109
  %134 = icmp eq i32 %107, %110
  %135 = icmp eq i32 %107, %110
  %136 = icmp eq i32 %107, %110
  %icmpEq343 = icmp eq i1 %135, %136
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %icmpEq295 = icmp eq i1 %134, %135
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  %icmpEq275 = icmp eq i1 %icmpEq271, %134
  %137 = icmp eq i1 %134, %135
  %icmpEq345 = icmp eq i1 %icmpEq275, %137
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  %zext272 = zext i1 %icmpEq271 to i32
  %138 = zext i1 %134 to i32
  %139 = zext i1 %134 to i32
  %icmpEq347 = icmp eq i32 %138, %139
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %icmpEq297 = icmp eq i32 %zext272, %138
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  call void @assert_ft(i32 %zext272, i32 35)
  %140 = xor i32 %cfg_DestPhi63, %cfg_DiffPhi64
  %141 = xor i32 %107, %113
  %icmpEq349 = icmp eq i32 %140, %141
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  %cfg_icmpEq65 = icmp eq i32 %140, 283116037
  %142 = icmp eq i32 %141, 283116037
  %143 = icmp eq i32 %141, 283116037
  %icmpEq299 = icmp eq i1 %142, %143
  %144 = icmp eq i1 %143, %143
  %icmpEq351 = icmp eq i1 %icmpEq299, %144
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  %icmpEq277 = icmp eq i1 %cfg_icmpEq65, %142
  %zext278 = zext i1 %icmpEq277 to i32
  %145 = zext i1 %icmpEq277 to i32
  %icmpEq353 = icmp eq i32 %zext278, %145
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  call void @assert_ft(i32 %zext278, i32 35)
  %cfg_zext66 = zext i1 %cfg_icmpEq65 to i32
  %146 = zext i1 %142 to i32
  %icmpEq301 = icmp eq i32 %cfg_zext66, %146
  %147 = icmp eq i32 %146, %146
  %icmpEq355 = icmp eq i1 %icmpEq301, %147
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext66, i32 %140, i32 35)
  %148 = sdiv i32 %95, 2
  %149 = sdiv i32 %96, 2
  %icmpEq357 = icmp eq i32 %148, %149
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  %150 = select i1 %2, i32 334496290, i32 540019210
  %151 = select i1 %3, i32 334496290, i32 540019210
  %152 = select i1 %3, i32 334496290, i32 540019210
  %icmpEq303 = icmp eq i32 %151, %152
  %153 = icmp eq i32 %152, %152
  %icmpEq359 = icmp eq i1 %icmpEq303, %153
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  %icmpEq279 = icmp eq i32 %150, %151
  %zext280 = zext i1 %icmpEq279 to i32
  %154 = zext i1 %icmpEq279 to i32
  %icmpEq361 = icmp eq i32 %zext280, %154
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  call void @assert_ft(i32 %zext280, i32 35)
  %155 = xor i32 283116037, %150
  %156 = xor i32 283116037, %151
  %icmpEq305 = icmp eq i32 %155, %156
  %157 = icmp eq i32 %156, %156
  %icmpEq363 = icmp eq i1 %icmpEq305, %157
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  br i1 %2, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %cfg_DestPhi67 = phi i32 [ 283116037, %._crit_edge ]
  %158 = phi i32 [ 283116037, %._crit_edge ]
  %cfg_DiffPhi68 = phi i32 [ %155, %._crit_edge ]
  %159 = phi i32 [ %156, %._crit_edge ]
  %icmpEq367 = icmp eq i32 %cfg_DiffPhi68, %159
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %icmpEq365 = icmp eq i32 %cfg_DestPhi67, %158
  %160 = icmp eq i32 %158, %158
  %icmpEq369 = icmp eq i1 %icmpEq365, %160
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %161 = xor i32 %cfg_DestPhi67, %cfg_DiffPhi68
  %cfg_icmpEq69 = icmp eq i32 %161, 334496290
  %162 = icmp eq i32 %161, 334496290
  %icmpEq371 = icmp eq i1 %cfg_icmpEq69, %162
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  %cfg_zext70 = zext i1 %cfg_icmpEq69 to i32
  call void @assert_cfg_ft(i32 %cfg_zext70, i32 %161, i32 35)
  %wide.trip.count43 = zext i32 %0 to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %202, %.lr.ph34.preheader
  %indvars.iv41 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next42, %202 ]
  %163 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next42, %202 ]
  %164 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next42, %202 ]
  %.02531 = phi i32 [ 0, %.lr.ph34.preheader ], [ %195, %202 ]
  %165 = phi i32 [ 0, %.lr.ph34.preheader ], [ %196, %202 ]
  %166 = phi i32 [ 0, %.lr.ph34.preheader ], [ %195, %202 ]
  %167 = phi i32 [ 0, %.lr.ph34.preheader ], [ %196, %202 ]
  %cfg_DestPhi71 = phi i32 [ 334496290, %.lr.ph34.preheader ], [ 437256987, %202 ]
  %168 = phi i32 [ 334496290, %.lr.ph34.preheader ], [ 437256987, %202 ]
  %169 = phi i32 [ 334496290, %.lr.ph34.preheader ], [ 437256987, %202 ]
  %170 = phi i32 [ 334496290, %.lr.ph34.preheader ], [ 437256987, %202 ]
  %cfg_DiffPhi72 = phi i32 [ 82838835, %.lr.ph34.preheader ], [ %210, %202 ]
  %171 = phi i32 [ 82838835, %.lr.ph34.preheader ], [ %210, %202 ]
  %172 = phi i32 [ 82838835, %.lr.ph34.preheader ], [ %210, %202 ]
  %173 = phi i32 [ 82838835, %.lr.ph34.preheader ], [ %210, %202 ]
  %icmpEq403 = icmp eq i32 %172, %173
  %zext404 = zext i1 %icmpEq403 to i32
  call void @assert_ft(i32 %zext404, i32 35)
  %icmpEq401 = icmp eq i32 %cfg_DiffPhi72, %171
  %174 = icmp eq i32 %171, %171
  %icmpEq405 = icmp eq i1 %icmpEq401, %174
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %icmpEq399 = icmp eq i32 %169, %170
  %zext400 = zext i1 %icmpEq399 to i32
  %175 = zext i1 %icmpEq399 to i32
  %icmpEq407 = icmp eq i32 %zext400, %175
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  call void @assert_ft(i32 %zext400, i32 35)
  %icmpEq397 = icmp eq i32 %cfg_DestPhi71, %168
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  %icmpEq395 = icmp eq i32 %166, %167
  %176 = icmp eq i32 %167, %167
  %icmpEq409 = icmp eq i1 %icmpEq395, %176
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  %icmpEq393 = icmp eq i32 %.02531, %165
  %zext394 = zext i1 %icmpEq393 to i32
  %177 = zext i1 %icmpEq393 to i32
  %icmpEq411 = icmp eq i32 %zext394, %177
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  call void @assert_ft(i32 %zext394, i32 35)
  %icmpEq391 = icmp eq i64 %163, %164
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %icmpEq379 = icmp eq i32 %cfg_DiffPhi72, %172
  %178 = icmp eq i32 %171, %173
  %icmpEq413 = icmp eq i1 %icmpEq379, %178
  %zext414 = zext i1 %icmpEq413 to i32
  call void @assert_ft(i32 %zext414, i32 35)
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %icmpEq377 = icmp eq i32 %cfg_DestPhi71, %169
  %179 = icmp eq i32 %168, %170
  %180 = icmp eq i32 %168, %170
  %icmpEq415 = icmp eq i1 %179, %180
  %zext416 = zext i1 %icmpEq415 to i32
  call void @assert_ft(i32 %zext416, i32 35)
  %icmpEq381 = icmp eq i1 %icmpEq377, %179
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  %zext378 = zext i1 %icmpEq377 to i32
  %181 = zext i1 %179 to i32
  %icmpEq417 = icmp eq i32 %zext378, %181
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  call void @assert_ft(i32 %zext378, i32 35)
  %icmpEq375 = icmp eq i32 %.02531, %166
  %zext376 = zext i1 %icmpEq375 to i32
  %182 = zext i1 %icmpEq375 to i32
  %183 = zext i1 %icmpEq375 to i32
  %icmpEq419 = icmp eq i32 %182, %183
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %icmpEq383 = icmp eq i32 %zext376, %182
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  call void @assert_ft(i32 %zext376, i32 35)
  %icmpEq373 = icmp eq i64 %indvars.iv41, %163
  %184 = icmp eq i64 %163, %164
  %icmpEq421 = icmp eq i1 %icmpEq373, %184
  %zext422 = zext i1 %icmpEq421 to i32
  call void @assert_ft(i32 %zext422, i32 35)
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %185 = xor i32 %cfg_DestPhi71, %cfg_DiffPhi72
  %186 = xor i32 %168, %171
  %187 = xor i32 %168, %171
  %icmpEq423 = icmp eq i32 %186, %187
  %zext424 = zext i1 %icmpEq423 to i32
  call void @assert_ft(i32 %zext424, i32 35)
  %icmpEq385 = icmp eq i32 %185, %186
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %cfg_icmpEq73 = icmp eq i32 %185, 385877777
  %188 = icmp eq i32 %186, 385877777
  %icmpEq425 = icmp eq i1 %cfg_icmpEq73, %188
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  %cfg_zext74 = zext i1 %cfg_icmpEq73 to i32
  call void @assert_cfg_ft(i32 %cfg_zext74, i32 %185, i32 35)
  %189 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv41
  %190 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %163
  %191 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %163
  %192 = load i32, ptr %189, align 4
  %193 = load i32, ptr %190, align 4
  %icmpEq427 = icmp eq i32 %192, %193
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  %194 = load i32, ptr %189, align 4
  %icmpEq387 = icmp eq i32 %192, %194
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  %195 = add nsw i32 %192, %.02531
  %196 = add nsw i32 %193, %165
  %icmpEq429 = icmp eq i32 %195, %196
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  %197 = icmp sgt i32 %195, %148
  %198 = select i1 %197, i32 488636938, i32 437256987
  %199 = xor i32 385877777, %198
  %200 = xor i32 385877777, %198
  %201 = xor i32 385877777, %198
  %icmpEq431 = icmp eq i32 %200, %201
  %zext432 = zext i1 %icmpEq431 to i32
  call void @assert_ft(i32 %zext432, i32 35)
  %icmpEq389 = icmp eq i32 %199, %200
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  br i1 %197, label %._crit_edge35.loopexit.split.loop.exit, label %202

202:                                              ; preds = %.lr.ph34
  %cfg_DestPhi75 = phi i32 [ 385877777, %.lr.ph34 ]
  %203 = phi i32 [ 385877777, %.lr.ph34 ]
  %cfg_DiffPhi76 = phi i32 [ %199, %.lr.ph34 ]
  %204 = phi i32 [ %200, %.lr.ph34 ]
  %icmpEq435 = icmp eq i32 %cfg_DiffPhi76, %204
  %zext436 = zext i1 %icmpEq435 to i32
  call void @assert_ft(i32 %zext436, i32 35)
  %icmpEq433 = icmp eq i32 %cfg_DestPhi75, %203
  %205 = icmp eq i32 %203, %203
  %icmpEq437 = icmp eq i1 %icmpEq433, %205
  %zext438 = zext i1 %icmpEq437 to i32
  call void @assert_ft(i32 %zext438, i32 35)
  %zext434 = zext i1 %icmpEq433 to i32
  call void @assert_ft(i32 %zext434, i32 35)
  %206 = xor i32 %cfg_DestPhi75, %cfg_DiffPhi76
  %cfg_icmpEq77 = icmp eq i32 %206, 437256987
  %207 = icmp eq i32 %206, 437256987
  %icmpEq439 = icmp eq i1 %cfg_icmpEq77, %207
  %zext440 = zext i1 %icmpEq439 to i32
  call void @assert_ft(i32 %zext440, i32 35)
  %cfg_zext78 = zext i1 %cfg_icmpEq77 to i32
  call void @assert_cfg_ft(i32 %cfg_zext78, i32 %206, i32 35)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count43
  %208 = icmp eq i64 %indvars.iv.next42, %wide.trip.count43
  %icmpEq441 = icmp eq i1 %exitcond44.not, %208
  %zext442 = zext i1 %icmpEq441 to i32
  call void @assert_ft(i32 %zext442, i32 35)
  %209 = select i1 %exitcond44.not, i32 540019210, i32 385877777
  %210 = xor i32 437256987, %209
  br i1 %exitcond44.not, label %._crit_edge35, label %.lr.ph34

._crit_edge35.loopexit.split.loop.exit:           ; preds = %.lr.ph34
  %cfg_DestPhi79 = phi i32 [ 385877777, %.lr.ph34 ]
  %211 = phi i32 [ 385877777, %.lr.ph34 ]
  %cfg_DiffPhi80 = phi i32 [ %199, %.lr.ph34 ]
  %212 = phi i32 [ %200, %.lr.ph34 ]
  %icmpEq445 = icmp eq i32 %cfg_DiffPhi80, %212
  %zext446 = zext i1 %icmpEq445 to i32
  call void @assert_ft(i32 %zext446, i32 35)
  %icmpEq443 = icmp eq i32 %cfg_DestPhi79, %211
  %213 = icmp eq i32 %211, %211
  %icmpEq447 = icmp eq i1 %icmpEq443, %213
  %zext448 = zext i1 %icmpEq447 to i32
  call void @assert_ft(i32 %zext448, i32 35)
  %zext444 = zext i1 %icmpEq443 to i32
  call void @assert_ft(i32 %zext444, i32 35)
  %214 = xor i32 %cfg_DestPhi79, %cfg_DiffPhi80
  %cfg_icmpEq81 = icmp eq i32 %214, 488636938
  %215 = icmp eq i32 %214, 488636938
  %icmpEq449 = icmp eq i1 %cfg_icmpEq81, %215
  %zext450 = zext i1 %icmpEq449 to i32
  call void @assert_ft(i32 %zext450, i32 35)
  %cfg_zext82 = zext i1 %cfg_icmpEq81 to i32
  call void @assert_cfg_ft(i32 %cfg_zext82, i32 %214, i32 35)
  %216 = trunc i64 %indvars.iv41 to i32
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.split.loop.exit, %202, %._crit_edge, %1
  %.022.lcssa46 = phi i32 [ %95, %._crit_edge ], [ 0, %1 ], [ %95, %._crit_edge35.loopexit.split.loop.exit ], [ %95, %202 ]
  %217 = phi i32 [ %96, %._crit_edge ], [ 0, %1 ], [ %96, %._crit_edge35.loopexit.split.loop.exit ], [ %96, %202 ]
  %.025.lcssa = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %.02531, %._crit_edge35.loopexit.split.loop.exit ], [ %195, %202 ]
  %218 = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %165, %._crit_edge35.loopexit.split.loop.exit ], [ %196, %202 ]
  %.024.lcssa = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %216, %._crit_edge35.loopexit.split.loop.exit ], [ %0, %202 ]
  %219 = phi i32 [ 0, %._crit_edge ], [ 0, %1 ], [ %216, %._crit_edge35.loopexit.split.loop.exit ], [ %0, %202 ]
  %cfg_DestPhi83 = phi i32 [ 437256987, %202 ], [ 488636938, %._crit_edge35.loopexit.split.loop.exit ], [ 128975389, %1 ], [ 283116037, %._crit_edge ]
  %220 = phi i32 [ 437256987, %202 ], [ 488636938, %._crit_edge35.loopexit.split.loop.exit ], [ 128975389, %1 ], [ 283116037, %._crit_edge ]
  %cfg_DiffPhi84 = phi i32 [ %210, %202 ], [ 1024460800, %._crit_edge35.loopexit.split.loop.exit ], [ %5, %1 ], [ %155, %._crit_edge ]
  %221 = phi i32 [ %210, %202 ], [ 1024460800, %._crit_edge35.loopexit.split.loop.exit ], [ %5, %1 ], [ %156, %._crit_edge ]
  %icmpEq459 = icmp eq i32 %cfg_DiffPhi84, %221
  %zext460 = zext i1 %icmpEq459 to i32
  call void @assert_ft(i32 %zext460, i32 35)
  %icmpEq457 = icmp eq i32 %cfg_DestPhi83, %220
  %222 = icmp eq i32 %220, %220
  %icmpEq461 = icmp eq i1 %icmpEq457, %222
  %zext462 = zext i1 %icmpEq461 to i32
  call void @assert_ft(i32 %zext462, i32 35)
  %zext458 = zext i1 %icmpEq457 to i32
  call void @assert_ft(i32 %zext458, i32 35)
  %icmpEq455 = icmp eq i32 %.024.lcssa, %219
  %zext456 = zext i1 %icmpEq455 to i32
  %223 = zext i1 %icmpEq455 to i32
  %icmpEq463 = icmp eq i32 %zext456, %223
  %zext464 = zext i1 %icmpEq463 to i32
  call void @assert_ft(i32 %zext464, i32 35)
  call void @assert_ft(i32 %zext456, i32 35)
  %icmpEq453 = icmp eq i32 %.025.lcssa, %218
  %zext454 = zext i1 %icmpEq453 to i32
  call void @assert_ft(i32 %zext454, i32 35)
  %icmpEq451 = icmp eq i32 %.022.lcssa46, %217
  %224 = icmp eq i32 %217, %217
  %icmpEq465 = icmp eq i1 %icmpEq451, %224
  %zext466 = zext i1 %icmpEq465 to i32
  call void @assert_ft(i32 %zext466, i32 35)
  %zext452 = zext i1 %icmpEq451 to i32
  call void @assert_ft(i32 %zext452, i32 35)
  %225 = xor i32 %cfg_DestPhi83, %cfg_DiffPhi84
  %cfg_icmpEq85 = icmp eq i32 %225, 540019210
  %226 = icmp eq i32 %225, 540019210
  %icmpEq467 = icmp eq i1 %cfg_icmpEq85, %226
  %zext468 = zext i1 %icmpEq467 to i32
  call void @assert_ft(i32 %zext468, i32 35)
  %cfg_zext86 = zext i1 %cfg_icmpEq85 to i32
  call void @assert_cfg_ft(i32 %cfg_zext86, i32 %225, i32 35)
  %227 = zext i32 %.024.lcssa to i64
  %228 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %227
  %229 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %227
  %230 = load i32, ptr %228, align 4
  %231 = load i32, ptr %229, align 4
  %icmpEq469 = icmp eq i32 %230, %231
  %zext470 = zext i1 %icmpEq469 to i32
  call void @assert_ft(i32 %zext470, i32 35)
  %232 = add i32 %.025.lcssa, %230
  %233 = sub i32 %.022.lcssa46, %232
  %234 = tail call i32 @Solve3(i32 noundef %.025.lcssa, i32 noundef %230, i32 noundef %233, ptr noundef nonnull @target), !range !6
  ret i32 %234
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @LineTo_i(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %2, i32 noundef %5)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solve3(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [2 x double], align 16
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %9 = add nsw i32 %1, %0
  %10 = add nsw i32 %1, %0
  %icmpEq53 = icmp eq i32 %9, %10
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %11 = add nsw i32 %1, %0
  %icmpEq = icmp eq i32 %9, %11
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %12 = call i32 @Solve2(i32 noundef %9, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5), !range !6
  %.not = icmp eq i32 %12, 0
  %13 = icmp eq i32 %12, 0
  %icmpEq55 = icmp eq i1 %.not, %13
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %14 = select i1 %.not, i32 231736346, i32 180355605
  %15 = xor i32 128976901, %14
  %16 = xor i32 128976901, %14
  %icmpEq51 = icmp eq i32 %15, %16
  %17 = icmp eq i32 %16, %16
  %icmpEq57 = icmp eq i1 %icmpEq51, %17
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  br i1 %.not, label %25, label %18

18:                                               ; preds = %4
  %cfg_DestPhi = phi i32 [ 128976901, %4 ]
  %19 = phi i32 [ 128976901, %4 ]
  %cfg_DiffPhi = phi i32 [ %15, %4 ]
  %20 = phi i32 [ %16, %4 ]
  %icmpEq61 = icmp eq i32 %cfg_DiffPhi, %20
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq59 = icmp eq i32 %cfg_DestPhi, %19
  %21 = icmp eq i32 %19, %19
  %icmpEq63 = icmp eq i1 %icmpEq59, %21
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %22 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %22, 180355605
  %23 = icmp eq i32 %22, 180355605
  %icmpEq65 = icmp eq i1 %cfg_icmpEq, %23
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %22, i32 35)
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %9, i32 noundef %2)
  br label %.sink.split

25:                                               ; preds = %4
  %cfg_DestPhi27 = phi i32 [ 128976901, %4 ]
  %26 = phi i32 [ 128976901, %4 ]
  %cfg_DiffPhi28 = phi i32 [ %15, %4 ]
  %27 = phi i32 [ %16, %4 ]
  %icmpEq69 = icmp eq i32 %cfg_DiffPhi28, %27
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DestPhi27, %26
  %28 = icmp eq i32 %26, %26
  %icmpEq71 = icmp eq i1 %icmpEq67, %28
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %29 = xor i32 %cfg_DestPhi27, %cfg_DiffPhi28
  %cfg_icmpEq29 = icmp eq i32 %29, 231736346
  %30 = icmp eq i32 %29, 231736346
  %icmpEq73 = icmp eq i1 %cfg_icmpEq29, %30
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %cfg_zext30 = zext i1 %cfg_icmpEq29 to i32
  call void @assert_cfg_ft(i32 %cfg_zext30, i32 %29, i32 35)
  %31 = add nsw i32 %2, %1
  %32 = call i32 @Solve2(i32 noundef %0, i32 noundef %31, ptr noundef %3, ptr noundef nonnull %5), !range !6
  %.not25 = icmp eq i32 %32, 0
  %33 = icmp eq i32 %32, 0
  %icmpEq75 = icmp eq i1 %.not25, %33
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %34 = select i1 %.not25, i32 334497544, i32 283116037
  %35 = xor i32 231736346, %34
  br i1 %.not25, label %43, label %36

36:                                               ; preds = %25
  %cfg_DestPhi31 = phi i32 [ 231736346, %25 ]
  %37 = phi i32 [ 231736346, %25 ]
  %cfg_DiffPhi32 = phi i32 [ %35, %25 ]
  %38 = phi i32 [ %35, %25 ]
  %icmpEq79 = icmp eq i32 %cfg_DiffPhi32, %38
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq77 = icmp eq i32 %cfg_DestPhi31, %37
  %39 = icmp eq i32 %37, %37
  %icmpEq81 = icmp eq i1 %icmpEq77, %39
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %40 = xor i32 %cfg_DestPhi31, %cfg_DiffPhi32
  %cfg_icmpEq33 = icmp eq i32 %40, 283116037
  %41 = icmp eq i32 %40, 283116037
  %icmpEq83 = icmp eq i1 %cfg_icmpEq33, %41
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %cfg_zext34 = zext i1 %cfg_icmpEq33 to i32
  call void @assert_cfg_ft(i32 %cfg_zext34, i32 %40, i32 35)
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0, i32 noundef %31)
  br label %.sink.split

43:                                               ; preds = %25
  %cfg_DestPhi35 = phi i32 [ 231736346, %25 ]
  %44 = phi i32 [ 231736346, %25 ]
  %cfg_DiffPhi36 = phi i32 [ %35, %25 ]
  %45 = phi i32 [ %35, %25 ]
  %icmpEq87 = icmp eq i32 %cfg_DiffPhi36, %45
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %cfg_DestPhi35, %44
  %46 = icmp eq i32 %44, %44
  %icmpEq89 = icmp eq i1 %icmpEq85, %46
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %47 = xor i32 %cfg_DestPhi35, %cfg_DiffPhi36
  %cfg_icmpEq37 = icmp eq i32 %47, 334497544
  %48 = icmp eq i32 %47, 334497544
  %icmpEq91 = icmp eq i1 %cfg_icmpEq37, %48
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %cfg_zext38 = zext i1 %cfg_icmpEq37 to i32
  call void @assert_cfg_ft(i32 %cfg_zext38, i32 %47, i32 35)
  store i32 %0, ptr %6, align 4
  %49 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %50 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 0, ptr %49, align 4
  call void @SubVec(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %51 = call i32 @Solve2(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %5), !range !6
  %.not26 = icmp eq i32 %51, 0
  %52 = icmp eq i32 %51, 0
  %icmpEq93 = icmp eq i1 %.not26, %52
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %53 = select i1 %.not26, i32 488636938, i32 385877777
  %54 = xor i32 334497544, %53
  br i1 %.not26, label %72, label %55

55:                                               ; preds = %43
  %cfg_DestPhi39 = phi i32 [ 334497544, %43 ]
  %56 = phi i32 [ 334497544, %43 ]
  %cfg_DiffPhi40 = phi i32 [ %54, %43 ]
  %57 = phi i32 [ %54, %43 ]
  %icmpEq97 = icmp eq i32 %cfg_DiffPhi40, %57
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq95 = icmp eq i32 %cfg_DestPhi39, %56
  %58 = icmp eq i32 %56, %56
  %icmpEq99 = icmp eq i1 %icmpEq95, %58
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %59 = xor i32 %cfg_DestPhi39, %cfg_DiffPhi40
  %cfg_icmpEq41 = icmp eq i32 %59, 385877777
  %60 = icmp eq i32 %59, 385877777
  %icmpEq101 = icmp eq i1 %cfg_icmpEq41, %60
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %cfg_zext42 = zext i1 %cfg_icmpEq41 to i32
  call void @assert_cfg_ft(i32 %cfg_zext42, i32 %59, i32 35)
  %61 = sitofp i32 %0 to double
  %62 = load double, ptr %5, align 16
  %63 = load double, ptr %5, align 16
  %64 = fadd double %62, %61
  %65 = fadd double %63, %61
  store double %64, ptr %5, align 16
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  call void @LineTo_i(ptr noundef nonnull %6)
  br label %.sink.split

.sink.split:                                      ; preds = %55, %36, %18
  %cfg_DestPhi43 = phi i32 [ 180355605, %18 ], [ 283116037, %36 ], [ 385877777, %55 ]
  %67 = phi i32 [ 180355605, %18 ], [ 283116037, %36 ], [ 385877777, %55 ]
  %cfg_DiffPhi44 = phi i32 [ 282066951, %18 ], [ 183500823, %36 ], [ 219153667, %55 ]
  %68 = phi i32 [ 282066951, %18 ], [ 183500823, %36 ], [ 219153667, %55 ]
  %icmpEq105 = icmp eq i32 %cfg_DiffPhi44, %68
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %icmpEq103 = icmp eq i32 %cfg_DestPhi43, %67
  %69 = icmp eq i32 %67, %67
  %icmpEq107 = icmp eq i1 %icmpEq103, %69
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %70 = xor i32 %cfg_DestPhi43, %cfg_DiffPhi44
  %cfg_icmpEq45 = icmp eq i32 %70, 437256722
  %71 = icmp eq i32 %70, 437256722
  %icmpEq109 = icmp eq i1 %cfg_icmpEq45, %71
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %cfg_zext46 = zext i1 %cfg_icmpEq45 to i32
  call void @assert_cfg_ft(i32 %cfg_zext46, i32 %70, i32 35)
  call void @LineTo_d(ptr noundef nonnull %5)
  br label %72

72:                                               ; preds = %.sink.split, %43
  %.0 = phi i32 [ 0, %43 ], [ 1, %.sink.split ]
  %73 = phi i32 [ 0, %43 ], [ 1, %.sink.split ]
  %74 = phi i32 [ 0, %43 ], [ 1, %.sink.split ]
  %75 = phi i32 [ 0, %43 ], [ 1, %.sink.split ]
  %cfg_DestPhi47 = phi i32 [ 437256722, %.sink.split ], [ 334497544, %43 ]
  %76 = phi i32 [ 437256722, %.sink.split ], [ 334497544, %43 ]
  %77 = phi i32 [ 437256722, %.sink.split ], [ 334497544, %43 ]
  %78 = phi i32 [ 437256722, %.sink.split ], [ 334497544, %43 ]
  %cfg_DiffPhi48 = phi i32 [ 120586264, %.sink.split ], [ %54, %43 ]
  %79 = phi i32 [ 120586264, %.sink.split ], [ %54, %43 ]
  %80 = phi i32 [ 120586264, %.sink.split ], [ %54, %43 ]
  %81 = phi i32 [ 120586264, %.sink.split ], [ %54, %43 ]
  %icmpEq133 = icmp eq i32 %80, %81
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq131 = icmp eq i32 %cfg_DiffPhi48, %79
  %82 = icmp eq i32 %79, %79
  %icmpEq135 = icmp eq i1 %icmpEq131, %82
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %icmpEq129 = icmp eq i32 %77, %78
  %zext130 = zext i1 %icmpEq129 to i32
  %83 = zext i1 %icmpEq129 to i32
  %icmpEq137 = icmp eq i32 %zext130, %83
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  call void @assert_ft(i32 %zext130, i32 35)
  %icmpEq127 = icmp eq i32 %cfg_DestPhi47, %76
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %icmpEq125 = icmp eq i32 %74, %75
  %84 = icmp eq i32 %75, %75
  %icmpEq139 = icmp eq i1 %icmpEq125, %84
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq123 = icmp eq i32 %.0, %73
  %zext124 = zext i1 %icmpEq123 to i32
  %85 = zext i1 %icmpEq123 to i32
  %icmpEq141 = icmp eq i32 %zext124, %85
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  call void @assert_ft(i32 %zext124, i32 35)
  %icmpEq115 = icmp eq i32 %cfg_DiffPhi48, %80
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i32 %cfg_DestPhi47, %77
  %86 = icmp eq i32 %76, %78
  %icmpEq143 = icmp eq i1 %icmpEq113, %86
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %87 = icmp eq i32 %cfg_DestPhi47, %77
  %icmpEq117 = icmp eq i1 %icmpEq113, %87
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %zext114 = zext i1 %icmpEq113 to i32
  %88 = zext i1 %86 to i32
  %icmpEq145 = icmp eq i32 %zext114, %88
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i32 %.0, %74
  %zext112 = zext i1 %icmpEq111 to i32
  %89 = zext i1 %icmpEq111 to i32
  %90 = zext i1 %icmpEq111 to i32
  %icmpEq147 = icmp eq i32 %89, %90
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %icmpEq119 = icmp eq i32 %zext112, %89
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  call void @assert_ft(i32 %zext112, i32 35)
  %91 = xor i32 %cfg_DestPhi47, %cfg_DiffPhi48
  %92 = xor i32 %76, %79
  %icmpEq149 = icmp eq i32 %91, %92
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %cfg_icmpEq49 = icmp eq i32 %91, 488636938
  %cfg_zext50 = zext i1 %cfg_icmpEq49 to i32
  %93 = zext i1 %cfg_icmpEq49 to i32
  %icmpEq121 = icmp eq i32 %cfg_zext50, %93
  %94 = icmp eq i32 %93, %93
  %icmpEq151 = icmp eq i1 %icmpEq121, %94
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext50, i32 %91, i32 35)
  ret i32 %.0
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @Solve2(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x i32], align 8
  store i64 0, ptr %5, align 8
  %6 = call i32 @TwoCircles(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %2, i32 noundef %1, ptr noundef %3), !range !7
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %icmpEq21 = icmp eq i32 %7, %8
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %9 = load i32, ptr %2, align 4
  %icmpEq13 = icmp eq i32 %7, %9
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %10 = load i32, ptr %2, align 4
  %11 = load i32, ptr %2, align 4
  %icmpEq23 = icmp eq i32 %10, %11
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %icmpEq = icmp eq i32 %7, %10
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %12 = getelementptr inbounds i32, ptr %2, i64 1
  %13 = getelementptr inbounds i32, ptr %2, i64 1
  %14 = getelementptr inbounds i32, ptr %2, i64 1
  %15 = getelementptr inbounds i32, ptr %2, i64 1
  %16 = load i32, ptr %12, align 4
  %17 = load i32, ptr %13, align 4
  %icmpEq25 = icmp eq i32 %16, %17
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %18 = load i32, ptr %12, align 4
  %icmpEq15 = icmp eq i32 %16, %18
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %19 = load double, ptr %3, align 8
  %20 = load double, ptr %3, align 8
  %21 = getelementptr inbounds double, ptr %3, i64 1
  %22 = getelementptr inbounds double, ptr %3, i64 1
  %23 = getelementptr inbounds double, ptr %3, i64 1
  %24 = getelementptr inbounds double, ptr %3, i64 1
  %25 = load double, ptr %21, align 8
  %26 = load double, ptr %22, align 8
  %27 = load double, ptr %21, align 8
  %28 = load double, ptr %22, align 8
  %29 = load double, ptr %21, align 8
  %30 = load double, ptr %22, align 8
  %31 = load double, ptr %21, align 8
  %32 = load double, ptr %22, align 8
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %16, double noundef %19, double noundef %25)
  %34 = icmp ne i32 %6, 0
  %35 = icmp ne i32 %6, 0
  %icmpEq27 = icmp eq i1 %34, %35
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %36 = icmp ne i32 %6, 0
  %icmpEq17 = icmp eq i1 %34, %36
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %37 = icmp ne i32 %6, 0
  %38 = icmp ne i32 %6, 0
  %icmpEq29 = icmp eq i1 %37, %38
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq11 = icmp eq i1 %34, %37
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %39 = zext i1 %34 to i32
  %40 = zext i1 %35 to i32
  %icmpEq31 = icmp eq i32 %39, %40
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %41 = zext i1 %34 to i32
  %icmpEq19 = icmp eq i32 %39, %41
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  ret i32 %39
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @LineTo_d(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load double, ptr %0, align 8
  %3 = load double, ptr %0, align 8
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %4, align 8
  %7 = load double, ptr %5, align 8
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %2, double noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @SubVec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %4, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = load i32, ptr %1, align 4
  %7 = sub nsw i32 %4, %6
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds i32, ptr %0, i64 1
  %9 = getelementptr inbounds i32, ptr %0, i64 1
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %icmpEq8 = icmp eq i32 %10, %11
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  %12 = getelementptr inbounds i32, ptr %1, i64 1
  %13 = load i32, ptr %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = getelementptr inbounds i32, ptr %2, i64 1
  %16 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %14, ptr %15, align 4
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x double], align 16
  call void @SubVec(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %6)
  %8 = call i32 @TwoCircles0a(i32 noundef %1, ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %7), !range !7
  %9 = load double, ptr %7, align 16
  %10 = load double, ptr %7, align 16
  %11 = load i32, ptr %0, align 4
  %12 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %11, %12
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %13 = sitofp i32 %11 to double
  %14 = fadd double %9, %13
  store double %14, ptr %4, align 8
  %15 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %17 = load double, ptr %15, align 8
  %18 = load double, ptr %16, align 8
  %19 = getelementptr inbounds i32, ptr %0, i64 1
  %20 = getelementptr inbounds i32, ptr %0, i64 1
  %21 = load i32, ptr %19, align 4
  %22 = load i32, ptr %20, align 4
  %icmpEq8 = icmp eq i32 %21, %22
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  %23 = sitofp i32 %21 to double
  %24 = fadd double %17, %23
  %25 = getelementptr inbounds double, ptr %4, i64 1
  store double %24, ptr %25, align 8
  ret i32 %8
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles0a(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = tail call double @Length2(ptr noundef %1)
  %6 = add nsw i32 %2, %0
  %7 = add nsw i32 %2, %0
  %icmpEq = icmp eq i32 %6, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = mul nsw i32 %6, %6
  %9 = sitofp i32 %8 to double
  %10 = sub nsw i32 %0, %2
  %11 = mul nsw i32 %10, %10
  %12 = mul nsw i32 %10, %10
  %icmpEq74 = icmp eq i32 %11, %12
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %13 = sitofp i32 %11 to double
  %14 = fcmp ogt double %5, %9
  %15 = fcmp olt double %5, %13
  %or.cond = select i1 %14, i1 true, i1 %15
  %16 = select i1 %14, i1 true, i1 %15
  %icmpEq76 = icmp eq i1 %or.cond, %16
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %17 = select i1 %or.cond, i32 540017154, i32 180355605
  %18 = xor i32 128977694, %17
  br i1 %or.cond, label %235, label %19

19:                                               ; preds = %4
  %cfg_DestPhi = phi i32 [ 128977694, %4 ]
  %20 = phi i32 [ 128977694, %4 ]
  %21 = phi i32 [ 128977694, %4 ]
  %22 = phi i32 [ 128977694, %4 ]
  %23 = phi i32 [ 128977694, %4 ]
  %24 = phi i32 [ 128977694, %4 ]
  %25 = phi i32 [ 128977694, %4 ]
  %cfg_DiffPhi = phi i32 [ %18, %4 ]
  %26 = phi i32 [ %18, %4 ]
  %27 = phi i32 [ %18, %4 ]
  %28 = phi i32 [ %18, %4 ]
  %29 = phi i32 [ %18, %4 ]
  %30 = phi i32 [ %18, %4 ]
  %31 = phi i32 [ %18, %4 ]
  %32 = phi i32 [ %18, %4 ]
  %icmpEq126 = icmp eq i32 %31, %32
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i32 %29, %30
  %33 = icmp eq i32 %30, %30
  %icmpEq128 = icmp eq i1 %icmpEq124, %33
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq122 = icmp eq i32 %27, %28
  %zext123 = zext i1 %icmpEq122 to i32
  %34 = zext i1 %icmpEq122 to i32
  %icmpEq130 = icmp eq i32 %zext123, %34
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  call void @assert_ft(i32 %zext123, i32 35)
  %icmpEq120 = icmp eq i32 %cfg_DiffPhi, %26
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %icmpEq118 = icmp eq i32 %24, %25
  %35 = icmp eq i32 %25, %25
  %icmpEq132 = icmp eq i1 %icmpEq118, %35
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %icmpEq116 = icmp eq i32 %22, %23
  %zext117 = zext i1 %icmpEq116 to i32
  %36 = zext i1 %icmpEq116 to i32
  %icmpEq134 = icmp eq i32 %zext117, %36
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %20, %21
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq94 = icmp eq i32 %29, %31
  %37 = icmp eq i32 %30, %32
  %icmpEq136 = icmp eq i1 %icmpEq94, %37
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DiffPhi, %27
  %38 = icmp eq i32 %26, %28
  %39 = icmp eq i32 %26, %28
  %icmpEq138 = icmp eq i1 %38, %39
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq96 = icmp eq i1 %icmpEq92, %38
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext93 = zext i1 %icmpEq92 to i32
  %40 = zext i1 %38 to i32
  %icmpEq140 = icmp eq i32 %zext93, %40
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq90 = icmp eq i32 %22, %24
  %zext91 = zext i1 %icmpEq90 to i32
  %41 = zext i1 %icmpEq90 to i32
  %42 = zext i1 %icmpEq90 to i32
  %icmpEq142 = icmp eq i32 %41, %42
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %icmpEq98 = icmp eq i32 %zext91, %41
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq88 = icmp eq i32 %cfg_DestPhi, %20
  %43 = icmp eq i32 %20, %21
  %icmpEq144 = icmp eq i1 %icmpEq88, %43
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq80 = icmp eq i32 %cfg_DiffPhi, %29
  %44 = icmp eq i32 %26, %30
  %45 = icmp eq i32 %26, %30
  %icmpEq146 = icmp eq i1 %44, %45
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %icmpEq100 = icmp eq i1 %icmpEq80, %44
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext81 = zext i1 %icmpEq80 to i32
  %46 = zext i1 %44 to i32
  %icmpEq148 = icmp eq i32 %zext81, %46
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %cfg_DestPhi, %22
  %47 = icmp eq i32 %20, %23
  %48 = icmp eq i32 %20, %23
  %49 = icmp eq i32 %20, %23
  %icmpEq150 = icmp eq i1 %48, %49
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq102 = icmp eq i1 %47, %48
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %icmpEq82 = icmp eq i1 %icmpEq78, %47
  %50 = icmp eq i1 %47, %48
  %icmpEq152 = icmp eq i1 %icmpEq82, %50
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  %51 = zext i1 %47 to i32
  %52 = zext i1 %47 to i32
  %icmpEq154 = icmp eq i32 %51, %52
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %icmpEq104 = icmp eq i32 %zext79, %51
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  call void @assert_ft(i32 %zext79, i32 35)
  %53 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %54 = xor i32 %20, %26
  %icmpEq156 = icmp eq i32 %53, %54
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %cfg_icmpEq = icmp eq i32 %53, 180355605
  %55 = icmp eq i32 %54, 180355605
  %56 = icmp eq i32 %54, 180355605
  %icmpEq106 = icmp eq i1 %55, %56
  %57 = icmp eq i1 %56, %56
  %icmpEq158 = icmp eq i1 %icmpEq106, %57
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq84 = icmp eq i1 %cfg_icmpEq, %55
  %zext85 = zext i1 %icmpEq84 to i32
  %58 = zext i1 %icmpEq84 to i32
  %icmpEq160 = icmp eq i32 %zext85, %58
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  call void @assert_ft(i32 %zext85, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %59 = zext i1 %55 to i32
  %icmpEq108 = icmp eq i32 %cfg_zext, %59
  %60 = icmp eq i32 %59, %59
  %icmpEq162 = icmp eq i1 %icmpEq108, %60
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %53, i32 35)
  %61 = fcmp oeq double %5, %9
  %62 = fcmp oeq double %5, %9
  %icmpEq164 = icmp eq i1 %61, %62
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %63 = select i1 %61, i32 231738897, i32 283116037
  %64 = select i1 %62, i32 231738897, i32 283116037
  %65 = select i1 %62, i32 231738897, i32 283116037
  %icmpEq110 = icmp eq i32 %64, %65
  %66 = icmp eq i32 %65, %65
  %icmpEq166 = icmp eq i1 %icmpEq110, %66
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %icmpEq86 = icmp eq i32 %63, %64
  %zext87 = zext i1 %icmpEq86 to i32
  %67 = zext i1 %icmpEq86 to i32
  %icmpEq168 = icmp eq i32 %zext87, %67
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  call void @assert_ft(i32 %zext87, i32 35)
  %68 = xor i32 180355605, %63
  %69 = xor i32 180355605, %64
  %icmpEq112 = icmp eq i32 %68, %69
  %70 = icmp eq i32 %69, %69
  %icmpEq170 = icmp eq i1 %icmpEq112, %70
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  br i1 %61, label %71, label %93

71:                                               ; preds = %19
  %cfg_DestPhi46 = phi i32 [ 180355605, %19 ]
  %72 = phi i32 [ 180355605, %19 ]
  %cfg_DiffPhi47 = phi i32 [ %68, %19 ]
  %73 = phi i32 [ %69, %19 ]
  %icmpEq174 = icmp eq i32 %cfg_DiffPhi47, %73
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %cfg_DestPhi46, %72
  %74 = icmp eq i32 %72, %72
  %icmpEq176 = icmp eq i1 %icmpEq172, %74
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %75 = xor i32 %cfg_DestPhi46, %cfg_DiffPhi47
  %cfg_icmpEq48 = icmp eq i32 %75, 231738897
  %76 = icmp eq i32 %75, 231738897
  %icmpEq178 = icmp eq i1 %cfg_icmpEq48, %76
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %cfg_zext49 = zext i1 %cfg_icmpEq48 to i32
  call void @assert_cfg_ft(i32 %cfg_zext49, i32 %75, i32 35)
  %77 = sitofp i32 %0 to double
  %78 = sitofp i32 %6 to double
  %79 = sitofp i32 %7 to double
  %80 = fdiv double %77, %78
  %81 = fdiv double %77, %79
  %82 = load i32, ptr %1, align 4
  %83 = load i32, ptr %1, align 4
  %icmpEq180 = icmp eq i32 %82, %83
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %84 = sitofp i32 %82 to double
  %85 = fmul double %80, %84
  store double %85, ptr %3, align 8
  %86 = getelementptr inbounds i32, ptr %1, i64 1
  %87 = getelementptr inbounds i32, ptr %1, i64 1
  %88 = load i32, ptr %86, align 4
  %89 = load i32, ptr %87, align 4
  %icmpEq182 = icmp eq i32 %88, %89
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %90 = sitofp i32 %88 to double
  %91 = fmul double %80, %90
  %92 = getelementptr inbounds double, ptr %3, i64 1
  store double %91, ptr %92, align 8
  br label %235

93:                                               ; preds = %19
  %cfg_DestPhi50 = phi i32 [ 180355605, %19 ]
  %94 = phi i32 [ 180355605, %19 ]
  %95 = phi i32 [ 180355605, %19 ]
  %96 = phi i32 [ 180355605, %19 ]
  %97 = phi i32 [ 180355605, %19 ]
  %98 = phi i32 [ 180355605, %19 ]
  %99 = phi i32 [ 180355605, %19 ]
  %cfg_DiffPhi51 = phi i32 [ %68, %19 ]
  %100 = phi i32 [ %69, %19 ]
  %101 = phi i32 [ %68, %19 ]
  %102 = phi i32 [ %69, %19 ]
  %103 = phi i32 [ %68, %19 ]
  %104 = phi i32 [ %69, %19 ]
  %105 = phi i32 [ %68, %19 ]
  %106 = phi i32 [ %69, %19 ]
  %icmpEq232 = icmp eq i32 %105, %106
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq230 = icmp eq i32 %103, %104
  %107 = icmp eq i32 %104, %104
  %icmpEq234 = icmp eq i1 %icmpEq230, %107
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %icmpEq228 = icmp eq i32 %101, %102
  %zext229 = zext i1 %icmpEq228 to i32
  %108 = zext i1 %icmpEq228 to i32
  %icmpEq236 = icmp eq i32 %zext229, %108
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq226 = icmp eq i32 %cfg_DiffPhi51, %100
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %icmpEq224 = icmp eq i32 %98, %99
  %109 = icmp eq i32 %99, %99
  %icmpEq238 = icmp eq i1 %icmpEq224, %109
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq222 = icmp eq i32 %96, %97
  %zext223 = zext i1 %icmpEq222 to i32
  %110 = zext i1 %icmpEq222 to i32
  %icmpEq240 = icmp eq i32 %zext223, %110
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  call void @assert_ft(i32 %zext223, i32 35)
  %icmpEq220 = icmp eq i32 %94, %95
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq200 = icmp eq i32 %103, %105
  %111 = icmp eq i32 %104, %106
  %icmpEq242 = icmp eq i1 %icmpEq200, %111
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %icmpEq198 = icmp eq i32 %cfg_DiffPhi51, %101
  %112 = icmp eq i32 %100, %102
  %113 = icmp eq i32 %100, %102
  %icmpEq244 = icmp eq i1 %112, %113
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %icmpEq202 = icmp eq i1 %icmpEq198, %112
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %zext199 = zext i1 %icmpEq198 to i32
  %114 = zext i1 %112 to i32
  %icmpEq246 = icmp eq i32 %zext199, %114
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %96, %98
  %zext197 = zext i1 %icmpEq196 to i32
  %115 = zext i1 %icmpEq196 to i32
  %116 = zext i1 %icmpEq196 to i32
  %icmpEq248 = icmp eq i32 %115, %116
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %icmpEq204 = icmp eq i32 %zext197, %115
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  call void @assert_ft(i32 %zext197, i32 35)
  %icmpEq194 = icmp eq i32 %cfg_DestPhi50, %94
  %117 = icmp eq i32 %94, %95
  %icmpEq250 = icmp eq i1 %icmpEq194, %117
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %icmpEq186 = icmp eq i32 %cfg_DiffPhi51, %103
  %118 = icmp eq i32 %100, %104
  %119 = icmp eq i32 %100, %104
  %icmpEq252 = icmp eq i1 %118, %119
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq206 = icmp eq i1 %icmpEq186, %118
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %zext187 = zext i1 %icmpEq186 to i32
  %120 = zext i1 %118 to i32
  %icmpEq254 = icmp eq i32 %zext187, %120
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  call void @assert_ft(i32 %zext187, i32 35)
  %icmpEq184 = icmp eq i32 %cfg_DestPhi50, %96
  %121 = icmp eq i32 %94, %97
  %122 = icmp eq i32 %94, %97
  %123 = icmp eq i32 %94, %97
  %icmpEq256 = icmp eq i1 %122, %123
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq208 = icmp eq i1 %121, %122
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq188 = icmp eq i1 %icmpEq184, %121
  %124 = icmp eq i1 %121, %122
  %icmpEq258 = icmp eq i1 %icmpEq188, %124
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %zext185 = zext i1 %icmpEq184 to i32
  %125 = zext i1 %121 to i32
  %126 = zext i1 %121 to i32
  %icmpEq260 = icmp eq i32 %125, %126
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq210 = icmp eq i32 %zext185, %125
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  call void @assert_ft(i32 %zext185, i32 35)
  %127 = xor i32 %cfg_DestPhi50, %cfg_DiffPhi51
  %128 = xor i32 %94, %100
  %icmpEq262 = icmp eq i32 %127, %128
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %cfg_icmpEq52 = icmp eq i32 %127, 283116037
  %129 = icmp eq i32 %128, 283116037
  %130 = icmp eq i32 %128, 283116037
  %icmpEq212 = icmp eq i1 %129, %130
  %131 = icmp eq i1 %130, %130
  %icmpEq264 = icmp eq i1 %icmpEq212, %131
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %icmpEq190 = icmp eq i1 %cfg_icmpEq52, %129
  %zext191 = zext i1 %icmpEq190 to i32
  %132 = zext i1 %icmpEq190 to i32
  %icmpEq266 = icmp eq i32 %zext191, %132
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  call void @assert_ft(i32 %zext191, i32 35)
  %cfg_zext53 = zext i1 %cfg_icmpEq52 to i32
  %133 = zext i1 %129 to i32
  %icmpEq214 = icmp eq i32 %cfg_zext53, %133
  %134 = icmp eq i32 %133, %133
  %icmpEq268 = icmp eq i1 %icmpEq214, %134
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext53, i32 %127, i32 35)
  %135 = fcmp oeq double %5, %13
  %136 = fcmp oeq double %5, %13
  %icmpEq270 = icmp eq i1 %135, %136
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %137 = select i1 %135, i32 334496290, i32 488636938
  %138 = select i1 %136, i32 334496290, i32 488636938
  %139 = select i1 %136, i32 334496290, i32 488636938
  %icmpEq216 = icmp eq i32 %138, %139
  %140 = icmp eq i32 %139, %139
  %icmpEq272 = icmp eq i1 %icmpEq216, %140
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %icmpEq192 = icmp eq i32 %137, %138
  %zext193 = zext i1 %icmpEq192 to i32
  %141 = zext i1 %icmpEq192 to i32
  %icmpEq274 = icmp eq i32 %zext193, %141
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  call void @assert_ft(i32 %zext193, i32 35)
  %142 = xor i32 283116037, %137
  %143 = xor i32 283116037, %138
  %icmpEq218 = icmp eq i32 %142, %143
  %144 = icmp eq i32 %143, %143
  %icmpEq276 = icmp eq i1 %icmpEq218, %144
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  br i1 %135, label %145, label %228

145:                                              ; preds = %93
  %cfg_DestPhi54 = phi i32 [ 283116037, %93 ]
  %146 = phi i32 [ 283116037, %93 ]
  %147 = phi i32 [ 283116037, %93 ]
  %148 = phi i32 [ 283116037, %93 ]
  %149 = phi i32 [ 283116037, %93 ]
  %150 = phi i32 [ 283116037, %93 ]
  %151 = phi i32 [ 283116037, %93 ]
  %cfg_DiffPhi55 = phi i32 [ %142, %93 ]
  %152 = phi i32 [ %143, %93 ]
  %153 = phi i32 [ %142, %93 ]
  %154 = phi i32 [ %143, %93 ]
  %155 = phi i32 [ %142, %93 ]
  %156 = phi i32 [ %143, %93 ]
  %157 = phi i32 [ %142, %93 ]
  %158 = phi i32 [ %143, %93 ]
  %icmpEq326 = icmp eq i32 %157, %158
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  %icmpEq324 = icmp eq i32 %155, %156
  %159 = icmp eq i32 %156, %156
  %icmpEq328 = icmp eq i1 %icmpEq324, %159
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  %icmpEq322 = icmp eq i32 %153, %154
  %zext323 = zext i1 %icmpEq322 to i32
  %160 = zext i1 %icmpEq322 to i32
  %icmpEq330 = icmp eq i32 %zext323, %160
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  call void @assert_ft(i32 %zext323, i32 35)
  %icmpEq320 = icmp eq i32 %cfg_DiffPhi55, %152
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq318 = icmp eq i32 %150, %151
  %161 = icmp eq i32 %151, %151
  %icmpEq332 = icmp eq i1 %icmpEq318, %161
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %icmpEq316 = icmp eq i32 %148, %149
  %zext317 = zext i1 %icmpEq316 to i32
  %162 = zext i1 %icmpEq316 to i32
  %icmpEq334 = icmp eq i32 %zext317, %162
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq314 = icmp eq i32 %146, %147
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %icmpEq294 = icmp eq i32 %155, %157
  %163 = icmp eq i32 %156, %158
  %icmpEq336 = icmp eq i1 %icmpEq294, %163
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %icmpEq292 = icmp eq i32 %cfg_DiffPhi55, %153
  %164 = icmp eq i32 %152, %154
  %165 = icmp eq i32 %152, %154
  %icmpEq338 = icmp eq i1 %164, %165
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %icmpEq296 = icmp eq i1 %icmpEq292, %164
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %zext293 = zext i1 %icmpEq292 to i32
  %166 = zext i1 %164 to i32
  %icmpEq340 = icmp eq i32 %zext293, %166
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq290 = icmp eq i32 %148, %150
  %zext291 = zext i1 %icmpEq290 to i32
  %167 = zext i1 %icmpEq290 to i32
  %168 = zext i1 %icmpEq290 to i32
  %icmpEq342 = icmp eq i32 %167, %168
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %icmpEq298 = icmp eq i32 %zext291, %167
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  call void @assert_ft(i32 %zext291, i32 35)
  %icmpEq288 = icmp eq i32 %cfg_DestPhi54, %146
  %169 = icmp eq i32 %146, %147
  %icmpEq344 = icmp eq i1 %icmpEq288, %169
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq280 = icmp eq i32 %cfg_DiffPhi55, %155
  %170 = icmp eq i32 %152, %156
  %171 = icmp eq i32 %152, %156
  %icmpEq346 = icmp eq i1 %170, %171
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  %icmpEq300 = icmp eq i1 %icmpEq280, %170
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %zext281 = zext i1 %icmpEq280 to i32
  %172 = zext i1 %170 to i32
  %icmpEq348 = icmp eq i32 %zext281, %172
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq278 = icmp eq i32 %cfg_DestPhi54, %148
  %173 = icmp eq i32 %146, %149
  %174 = icmp eq i32 %146, %149
  %175 = icmp eq i32 %146, %149
  %icmpEq350 = icmp eq i1 %174, %175
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  %icmpEq302 = icmp eq i1 %173, %174
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %icmpEq282 = icmp eq i1 %icmpEq278, %173
  %176 = icmp eq i1 %173, %174
  %icmpEq352 = icmp eq i1 %icmpEq282, %176
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  %177 = zext i1 %173 to i32
  %178 = zext i1 %173 to i32
  %icmpEq354 = icmp eq i32 %177, %178
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %icmpEq304 = icmp eq i32 %zext279, %177
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  call void @assert_ft(i32 %zext279, i32 35)
  %179 = xor i32 %cfg_DestPhi54, %cfg_DiffPhi55
  %180 = xor i32 %146, %152
  %icmpEq356 = icmp eq i32 %179, %180
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  %cfg_icmpEq56 = icmp eq i32 %179, 334496290
  %181 = icmp eq i32 %180, 334496290
  %182 = icmp eq i32 %180, 334496290
  %icmpEq306 = icmp eq i1 %181, %182
  %183 = icmp eq i1 %182, %182
  %icmpEq358 = icmp eq i1 %icmpEq306, %183
  %zext359 = zext i1 %icmpEq358 to i32
  call void @assert_ft(i32 %zext359, i32 35)
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %icmpEq284 = icmp eq i1 %cfg_icmpEq56, %181
  %zext285 = zext i1 %icmpEq284 to i32
  %184 = zext i1 %icmpEq284 to i32
  %icmpEq360 = icmp eq i32 %zext285, %184
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  call void @assert_ft(i32 %zext285, i32 35)
  %cfg_zext57 = zext i1 %cfg_icmpEq56 to i32
  %185 = zext i1 %181 to i32
  %icmpEq308 = icmp eq i32 %cfg_zext57, %185
  %186 = icmp eq i32 %185, %185
  %icmpEq362 = icmp eq i1 %icmpEq308, %186
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext57, i32 %179, i32 35)
  %187 = icmp eq i32 %0, %2
  %188 = icmp eq i32 %0, %2
  %icmpEq364 = icmp eq i1 %187, %188
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %189 = select i1 %187, i32 385877276, i32 437259791
  %190 = select i1 %188, i32 385877276, i32 437259791
  %191 = select i1 %188, i32 385877276, i32 437259791
  %icmpEq310 = icmp eq i32 %190, %191
  %192 = icmp eq i32 %191, %191
  %icmpEq366 = icmp eq i1 %icmpEq310, %192
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %icmpEq286 = icmp eq i32 %189, %190
  %zext287 = zext i1 %icmpEq286 to i32
  %193 = zext i1 %icmpEq286 to i32
  %icmpEq368 = icmp eq i32 %zext287, %193
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  call void @assert_ft(i32 %zext287, i32 35)
  %194 = xor i32 334496290, %189
  %195 = xor i32 334496290, %190
  %icmpEq312 = icmp eq i32 %194, %195
  %196 = icmp eq i32 %195, %195
  %icmpEq370 = icmp eq i1 %icmpEq312, %196
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  br i1 %187, label %197, label %206

197:                                              ; preds = %145
  %cfg_DestPhi58 = phi i32 [ 334496290, %145 ]
  %198 = phi i32 [ 334496290, %145 ]
  %cfg_DiffPhi59 = phi i32 [ %194, %145 ]
  %199 = phi i32 [ %195, %145 ]
  %icmpEq374 = icmp eq i32 %cfg_DiffPhi59, %199
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %icmpEq372 = icmp eq i32 %cfg_DestPhi58, %198
  %200 = icmp eq i32 %198, %198
  %icmpEq376 = icmp eq i1 %icmpEq372, %200
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  %201 = xor i32 %cfg_DestPhi58, %cfg_DiffPhi59
  %cfg_icmpEq60 = icmp eq i32 %201, 385877276
  %202 = icmp eq i32 %201, 385877276
  %icmpEq378 = icmp eq i1 %cfg_icmpEq60, %202
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %cfg_zext61 = zext i1 %cfg_icmpEq60 to i32
  call void @assert_cfg_ft(i32 %cfg_zext61, i32 %201, i32 35)
  %203 = sitofp i32 %2 to double
  store double %203, ptr %3, align 8
  %204 = getelementptr inbounds double, ptr %3, i64 1
  %205 = getelementptr inbounds double, ptr %3, i64 1
  store double 0.000000e+00, ptr %204, align 8
  br label %235

206:                                              ; preds = %145
  %cfg_DestPhi62 = phi i32 [ 334496290, %145 ]
  %207 = phi i32 [ 334496290, %145 ]
  %cfg_DiffPhi63 = phi i32 [ %194, %145 ]
  %208 = phi i32 [ %195, %145 ]
  %icmpEq382 = icmp eq i32 %cfg_DiffPhi63, %208
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  %icmpEq380 = icmp eq i32 %cfg_DestPhi62, %207
  %209 = icmp eq i32 %207, %207
  %icmpEq384 = icmp eq i1 %icmpEq380, %209
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %210 = xor i32 %cfg_DestPhi62, %cfg_DiffPhi63
  %cfg_icmpEq64 = icmp eq i32 %210, 437259791
  %211 = icmp eq i32 %210, 437259791
  %icmpEq386 = icmp eq i1 %cfg_icmpEq64, %211
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  %cfg_zext65 = zext i1 %cfg_icmpEq64 to i32
  call void @assert_cfg_ft(i32 %cfg_zext65, i32 %210, i32 35)
  %212 = sitofp i32 %0 to double
  %213 = sitofp i32 %10 to double
  %214 = sitofp i32 %10 to double
  %215 = fdiv double %212, %213
  %216 = fdiv double %212, %214
  %217 = load i32, ptr %1, align 4
  %218 = load i32, ptr %1, align 4
  %icmpEq388 = icmp eq i32 %217, %218
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %219 = sitofp i32 %217 to double
  %220 = fmul double %215, %219
  store double %220, ptr %3, align 8
  %221 = getelementptr inbounds i32, ptr %1, i64 1
  %222 = getelementptr inbounds i32, ptr %1, i64 1
  %223 = load i32, ptr %221, align 4
  %224 = load i32, ptr %222, align 4
  %icmpEq390 = icmp eq i32 %223, %224
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %225 = sitofp i32 %223 to double
  %226 = fmul double %215, %225
  %227 = getelementptr inbounds double, ptr %3, i64 1
  store double %226, ptr %227, align 8
  br label %235

228:                                              ; preds = %93
  %cfg_DestPhi66 = phi i32 [ 283116037, %93 ]
  %229 = phi i32 [ 283116037, %93 ]
  %cfg_DiffPhi67 = phi i32 [ %142, %93 ]
  %230 = phi i32 [ %143, %93 ]
  %icmpEq394 = icmp eq i32 %cfg_DiffPhi67, %230
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %icmpEq392 = icmp eq i32 %cfg_DestPhi66, %229
  %231 = icmp eq i32 %229, %229
  %icmpEq396 = icmp eq i1 %icmpEq392, %231
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  %232 = xor i32 %cfg_DestPhi66, %cfg_DiffPhi67
  %cfg_icmpEq68 = icmp eq i32 %232, 488636938
  %233 = icmp eq i32 %232, 488636938
  %icmpEq398 = icmp eq i1 %cfg_icmpEq68, %233
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %cfg_zext69 = zext i1 %cfg_icmpEq68 to i32
  call void @assert_cfg_ft(i32 %cfg_zext69, i32 %232, i32 35)
  %234 = tail call i32 @TwoCircles0b(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %235

235:                                              ; preds = %228, %206, %197, %71, %4
  %.0 = phi i32 [ 1, %71 ], [ 3, %197 ], [ 1, %206 ], [ 2, %228 ], [ 0, %4 ]
  %236 = phi i32 [ 1, %71 ], [ 3, %197 ], [ 1, %206 ], [ 2, %228 ], [ 0, %4 ]
  %237 = phi i32 [ 1, %71 ], [ 3, %197 ], [ 1, %206 ], [ 2, %228 ], [ 0, %4 ]
  %238 = phi i32 [ 1, %71 ], [ 3, %197 ], [ 1, %206 ], [ 2, %228 ], [ 0, %4 ]
  %cfg_DestPhi70 = phi i32 [ 128977694, %4 ], [ 488636938, %228 ], [ 437259791, %206 ], [ 385877276, %197 ], [ 231738897, %71 ]
  %239 = phi i32 [ 128977694, %4 ], [ 488636938, %228 ], [ 437259791, %206 ], [ 385877276, %197 ], [ 231738897, %71 ]
  %240 = phi i32 [ 128977694, %4 ], [ 488636938, %228 ], [ 437259791, %206 ], [ 385877276, %197 ], [ 231738897, %71 ]
  %241 = phi i32 [ 128977694, %4 ], [ 488636938, %228 ], [ 437259791, %206 ], [ 385877276, %197 ], [ 231738897, %71 ]
  %cfg_DiffPhi71 = phi i32 [ %18, %4 ], [ 1024458760, %228 ], [ 975178765, %206 ], [ 925894430, %197 ], [ 769657875, %71 ]
  %242 = phi i32 [ %18, %4 ], [ 1024458760, %228 ], [ 975178765, %206 ], [ 925894430, %197 ], [ 769657875, %71 ]
  %243 = phi i32 [ %18, %4 ], [ 1024458760, %228 ], [ 975178765, %206 ], [ 925894430, %197 ], [ 769657875, %71 ]
  %244 = phi i32 [ %18, %4 ], [ 1024458760, %228 ], [ 975178765, %206 ], [ 925894430, %197 ], [ 769657875, %71 ]
  %icmpEq422 = icmp eq i32 %243, %244
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %icmpEq420 = icmp eq i32 %cfg_DiffPhi71, %242
  %245 = icmp eq i32 %242, %242
  %icmpEq424 = icmp eq i1 %icmpEq420, %245
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  %icmpEq418 = icmp eq i32 %240, %241
  %zext419 = zext i1 %icmpEq418 to i32
  %246 = zext i1 %icmpEq418 to i32
  %icmpEq426 = icmp eq i32 %zext419, %246
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  call void @assert_ft(i32 %zext419, i32 35)
  %icmpEq416 = icmp eq i32 %cfg_DestPhi70, %239
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %icmpEq414 = icmp eq i32 %237, %238
  %247 = icmp eq i32 %238, %238
  %icmpEq428 = icmp eq i1 %icmpEq414, %247
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  %icmpEq412 = icmp eq i32 %.0, %236
  %zext413 = zext i1 %icmpEq412 to i32
  %248 = zext i1 %icmpEq412 to i32
  %icmpEq430 = icmp eq i32 %zext413, %248
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  call void @assert_ft(i32 %zext413, i32 35)
  %icmpEq404 = icmp eq i32 %cfg_DiffPhi71, %243
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  %icmpEq402 = icmp eq i32 %cfg_DestPhi70, %240
  %249 = icmp eq i32 %239, %241
  %icmpEq432 = icmp eq i1 %icmpEq402, %249
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  %250 = icmp eq i32 %cfg_DestPhi70, %240
  %icmpEq406 = icmp eq i1 %icmpEq402, %250
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  %zext403 = zext i1 %icmpEq402 to i32
  %251 = zext i1 %249 to i32
  %icmpEq434 = icmp eq i32 %zext403, %251
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  call void @assert_ft(i32 %zext403, i32 35)
  %icmpEq400 = icmp eq i32 %.0, %237
  %zext401 = zext i1 %icmpEq400 to i32
  %252 = zext i1 %icmpEq400 to i32
  %253 = zext i1 %icmpEq400 to i32
  %icmpEq436 = icmp eq i32 %252, %253
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %icmpEq408 = icmp eq i32 %zext401, %252
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  call void @assert_ft(i32 %zext401, i32 35)
  %254 = xor i32 %cfg_DestPhi70, %cfg_DiffPhi71
  %255 = xor i32 %239, %242
  %icmpEq438 = icmp eq i32 %254, %255
  %zext439 = zext i1 %icmpEq438 to i32
  call void @assert_ft(i32 %zext439, i32 35)
  %cfg_icmpEq72 = icmp eq i32 %254, 540017154
  %cfg_zext73 = zext i1 %cfg_icmpEq72 to i32
  %256 = zext i1 %cfg_icmpEq72 to i32
  %icmpEq410 = icmp eq i32 %cfg_zext73, %256
  %257 = icmp eq i32 %256, %256
  %icmpEq440 = icmp eq i1 %icmpEq410, %257
  %zext441 = zext i1 %icmpEq440 to i32
  call void @assert_ft(i32 %zext441, i32 35)
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext73, i32 %254, i32 35)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local double @Length2(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = sitofp i32 %2 to double
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %4, double 0.000000e+00)
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %6, align 4
  %icmpEq10 = icmp eq i32 %7, %8
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  %9 = sitofp i32 %7 to double
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %5)
  ret double %10
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @TwoCircles0b(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [2 x double], align 16
  %6 = tail call double @Length2(ptr noundef %1)
  %7 = tail call double @sqrt(double noundef %6) #13
  %8 = load i32, ptr %1, align 4
  %9 = load i32, ptr %1, align 4
  %icmpEq = icmp eq i32 %8, %9
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %10 = sitofp i32 %8 to double
  %11 = fdiv double %10, %7
  %12 = getelementptr inbounds i32, ptr %1, i64 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %12, align 4
  %icmpEq13 = icmp eq i32 %13, %14
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %15 = sitofp i32 %13 to double
  %16 = fdiv double %15, %7
  call void @TwoCircles00(i32 noundef %0, double noundef %7, i32 noundef %2, ptr noundef nonnull %5)
  %17 = load double, ptr %5, align 16
  %18 = load double, ptr %5, align 16
  %19 = fneg double %16
  %20 = fneg double %16
  %21 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %22 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %23 = load double, ptr %21, align 8
  %24 = load double, ptr %22, align 8
  %25 = fmul double %23, %19
  %26 = fmul double %24, %20
  %27 = tail call double @llvm.fmuladd.f64(double %11, double %17, double %25)
  store double %27, ptr %3, align 8
  %28 = fmul double %11, %23
  %29 = fmul double %11, %24
  %30 = tail call double @llvm.fmuladd.f64(double %16, double %17, double %28)
  %31 = getelementptr inbounds double, ptr %3, i64 1
  %32 = getelementptr inbounds double, ptr %3, i64 1
  store double %30, ptr %31, align 8
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @TwoCircles00(i32 noundef %0, double noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #1 {
  %5 = mul nsw i32 %0, %0
  %6 = mul nsw i32 %0, %0
  %icmpEq = icmp eq i32 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = sitofp i32 %5 to double
  %8 = mul nsw i32 %2, %2
  %9 = sitofp i32 %8 to double
  %10 = fsub double %7, %9
  %11 = fsub double %7, %9
  %12 = fdiv double %10, %1
  %13 = fdiv double %11, %1
  %14 = fadd double %12, %1
  %15 = fadd double %13, %1
  %16 = fmul double %14, 5.000000e-01
  %17 = fmul double %15, 5.000000e-01
  store double %16, ptr %3, align 8
  %18 = fneg double %16
  %19 = fneg double %17
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %16, double %7)
  %21 = tail call double @sqrt(double noundef %20) #13
  %22 = getelementptr inbounds double, ptr %3, i64 1
  %23 = getelementptr inbounds double, ptr %3, i64 1
  store double %21, ptr %22, align 8
  %24 = load double, ptr %3, align 8
  %25 = load double, ptr %3, align 8
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %24, double noundef %21)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PostscriptClose() local_unnamed_addr #1 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintLinks() local_unnamed_addr #1 {
  %putchar = tail call i32 @putchar(i32 37)
  %1 = load i32, ptr @nlinks, align 4
  %2 = load i32, ptr @nlinks, align 4
  %icmpEq = icmp eq i32 %1, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = icmp sgt i32 %1, 0
  %4 = select i1 %3, i32 180357663, i32 231735821
  %5 = xor i32 128975893, %4
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %6 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %cfg_DestPhi = phi i32 [ 128975893, %0 ], [ 180357663, %.lr.ph ]
  %7 = phi i32 [ 128975893, %0 ], [ 180357663, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %5, %0 ], [ %23, %.lr.ph ]
  %8 = phi i32 [ %5, %0 ], [ %23, %.lr.ph ]
  %icmpEq13 = icmp eq i32 %cfg_DiffPhi, %8
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %icmpEq11 = icmp eq i32 %cfg_DestPhi, %7
  %9 = icmp eq i32 %7, %7
  %icmpEq15 = icmp eq i1 %icmpEq11, %9
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %icmpEq9 = icmp eq i64 %indvars.iv, %6
  %zext10 = zext i1 %icmpEq9 to i32
  %10 = zext i1 %icmpEq9 to i32
  %icmpEq17 = icmp eq i32 %zext10, %10
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  call void @assert_ft(i32 %zext10, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180357663
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %12 = zext i1 %cfg_icmpEq to i32
  %icmpEq19 = icmp eq i32 %cfg_zext, %12
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = getelementptr inbounds [20 x i32], ptr @linklen, i64 0, i64 %indvars.iv
  %14 = load i32, ptr %13, align 4
  %15 = trunc i64 %indvars.iv to i32
  %16 = trunc i64 %6 to i32
  %icmpEq21 = icmp eq i32 %15, %16
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %15, i32 noundef %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = load i32, ptr @nlinks, align 4
  %19 = sext i32 %18 to i64
  %20 = sext i32 %18 to i64
  %icmpEq23 = icmp eq i64 %19, %20
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %21 = icmp slt i64 %indvars.iv.next, %19
  %22 = select i1 %21, i32 180357663, i32 231735821
  %23 = xor i32 180357663, %22
  br i1 %21, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %cfg_DestPhi5 = phi i32 [ 180357663, %.lr.ph ], [ 128975893, %0 ]
  %24 = phi i32 [ 180357663, %.lr.ph ], [ 128975893, %0 ]
  %cfg_DiffPhi6 = phi i32 [ %23, %.lr.ph ], [ %5, %0 ]
  %25 = phi i32 [ %23, %.lr.ph ], [ %5, %0 ]
  %icmpEq27 = icmp eq i32 %cfg_DiffPhi6, %25
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq25 = icmp eq i32 %cfg_DestPhi5, %24
  %26 = icmp eq i32 %24, %24
  %icmpEq29 = icmp eq i1 %icmpEq25, %26
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %27 = xor i32 %cfg_DestPhi5, %cfg_DiffPhi6
  %cfg_icmpEq7 = icmp eq i32 %27, 231735821
  %28 = icmp eq i32 %27, 231735821
  %icmpEq31 = icmp eq i1 %cfg_icmpEq7, %28
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %cfg_zext8 = zext i1 %cfg_icmpEq7 to i32
  call void @assert_cfg_ft(i32 %cfg_zext8, i32 %27, i32 35)
  %29 = tail call i32 @putchar(i32 noundef 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @EqPointi(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %0, align 4
  %icmpEq14 = icmp eq i32 %4, %5
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = load i32, ptr %1, align 4
  %7 = load i32, ptr %1, align 4
  %icmpEq16 = icmp eq i32 %6, %7
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %.not = icmp eq i32 %3, %6
  %8 = select i1 %.not, i32 180356882, i32 231735821
  %9 = xor i32 128975893, %8
  %10 = xor i32 128975893, %8
  %11 = xor i32 128975893, %8
  %icmpEq18 = icmp eq i32 %10, %11
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq12 = icmp eq i32 %9, %10
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  br i1 %.not, label %12, label %37

12:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975893, %2 ]
  %13 = phi i32 [ 128975893, %2 ]
  %14 = phi i32 [ 128975893, %2 ]
  %cfg_DiffPhi = phi i32 [ %9, %2 ]
  %15 = phi i32 [ %10, %2 ]
  %16 = phi i32 [ %9, %2 ]
  %17 = phi i32 [ %10, %2 ]
  %icmpEq36 = icmp eq i32 %16, %17
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %icmpEq34 = icmp eq i32 %cfg_DiffPhi, %15
  %18 = icmp eq i32 %15, %15
  %icmpEq38 = icmp eq i1 %icmpEq34, %18
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %icmpEq32 = icmp eq i32 %13, %14
  %zext33 = zext i1 %icmpEq32 to i32
  %19 = zext i1 %icmpEq32 to i32
  %icmpEq40 = icmp eq i32 %zext33, %19
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  call void @assert_ft(i32 %zext33, i32 35)
  %icmpEq22 = icmp eq i32 %cfg_DiffPhi, %16
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %icmpEq20 = icmp eq i32 %cfg_DestPhi, %13
  %20 = icmp eq i32 %13, %14
  %icmpEq42 = icmp eq i1 %icmpEq20, %20
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %21 = icmp eq i32 %cfg_DestPhi, %13
  %icmpEq24 = icmp eq i1 %icmpEq20, %21
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %zext21 = zext i1 %icmpEq20 to i32
  %22 = zext i1 %20 to i32
  %icmpEq44 = icmp eq i32 %zext21, %22
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  call void @assert_ft(i32 %zext21, i32 35)
  %23 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %23, 180356882
  %24 = icmp eq i32 %23, 180356882
  %25 = icmp eq i32 %23, 180356882
  %icmpEq46 = icmp eq i1 %24, %25
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq26 = icmp eq i1 %cfg_icmpEq, %24
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %26 = zext i1 %24 to i32
  %icmpEq48 = icmp eq i32 %cfg_zext, %26
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %23, i32 35)
  %27 = getelementptr inbounds i32, ptr %0, i64 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %27, align 4
  %30 = load i32, ptr %27, align 4
  %icmpEq50 = icmp eq i32 %29, %30
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq28 = icmp eq i32 %28, %29
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %31 = getelementptr inbounds i32, ptr %1, i64 1
  %32 = getelementptr inbounds i32, ptr %1, i64 1
  %33 = load i32, ptr %31, align 4
  %34 = load i32, ptr %32, align 4
  %icmpEq52 = icmp eq i32 %33, %34
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %.not.1 = icmp eq i32 %28, %33
  %spec.select = zext i1 %.not.1 to i32
  %35 = zext i1 %.not.1 to i32
  %icmpEq30 = icmp eq i32 %spec.select, %35
  %36 = icmp eq i32 %35, %35
  %icmpEq54 = icmp eq i1 %icmpEq30, %36
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  br label %37

37:                                               ; preds = %12, %2
  %.06 = phi i32 [ 0, %2 ], [ %spec.select, %12 ]
  %38 = phi i32 [ 0, %2 ], [ %35, %12 ]
  %39 = phi i32 [ 0, %2 ], [ %spec.select, %12 ]
  %40 = phi i32 [ 0, %2 ], [ %35, %12 ]
  %cfg_DestPhi8 = phi i32 [ 180356882, %12 ], [ 128975893, %2 ]
  %41 = phi i32 [ 180356882, %12 ], [ 128975893, %2 ]
  %42 = phi i32 [ 180356882, %12 ], [ 128975893, %2 ]
  %43 = phi i32 [ 180356882, %12 ], [ 128975893, %2 ]
  %cfg_DiffPhi9 = phi i32 [ 118490399, %12 ], [ %9, %2 ]
  %44 = phi i32 [ 118490399, %12 ], [ %10, %2 ]
  %45 = phi i32 [ 118490399, %12 ], [ %9, %2 ]
  %46 = phi i32 [ 118490399, %12 ], [ %10, %2 ]
  %icmpEq78 = icmp eq i32 %45, %46
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %cfg_DiffPhi9, %44
  %47 = icmp eq i32 %44, %44
  %icmpEq80 = icmp eq i1 %icmpEq76, %47
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %icmpEq74 = icmp eq i32 %42, %43
  %zext75 = zext i1 %icmpEq74 to i32
  %48 = zext i1 %icmpEq74 to i32
  %icmpEq82 = icmp eq i32 %zext75, %48
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq72 = icmp eq i32 %cfg_DestPhi8, %41
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i32 %39, %40
  %49 = icmp eq i32 %40, %40
  %icmpEq84 = icmp eq i1 %icmpEq70, %49
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %icmpEq68 = icmp eq i32 %.06, %38
  %zext69 = zext i1 %icmpEq68 to i32
  %50 = zext i1 %icmpEq68 to i32
  %icmpEq86 = icmp eq i32 %zext69, %50
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  call void @assert_ft(i32 %zext69, i32 35)
  %icmpEq60 = icmp eq i32 %cfg_DiffPhi9, %45
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i32 %cfg_DestPhi8, %42
  %51 = icmp eq i32 %41, %43
  %icmpEq88 = icmp eq i1 %icmpEq58, %51
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %52 = icmp eq i32 %cfg_DestPhi8, %42
  %icmpEq62 = icmp eq i1 %icmpEq58, %52
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  %53 = zext i1 %51 to i32
  %icmpEq90 = icmp eq i32 %zext59, %53
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq56 = icmp eq i32 %.06, %39
  %zext57 = zext i1 %icmpEq56 to i32
  %54 = zext i1 %icmpEq56 to i32
  %55 = zext i1 %icmpEq56 to i32
  %icmpEq92 = icmp eq i32 %54, %55
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq64 = icmp eq i32 %zext57, %54
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  call void @assert_ft(i32 %zext57, i32 35)
  %56 = xor i32 %cfg_DestPhi8, %cfg_DiffPhi9
  %57 = xor i32 %41, %44
  %icmpEq94 = icmp eq i32 %56, %57
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %cfg_icmpEq10 = icmp eq i32 %56, 231735821
  %cfg_zext11 = zext i1 %cfg_icmpEq10 to i32
  %58 = zext i1 %cfg_icmpEq10 to i32
  %icmpEq66 = icmp eq i32 %cfg_zext11, %58
  %59 = icmp eq i32 %58, %58
  %icmpEq96 = icmp eq i1 %icmpEq66, %59
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext11, i32 %56, i32 35)
  ret i32 %.06
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @RadDeg(double noundef %0) local_unnamed_addr #10 {
  %2 = fmul double %0, 1.800000e+02
  %3 = fmul double %0, 1.800000e+02
  %4 = fdiv double %2, 0x400921FB54442D18
  %5 = fdiv double %3, 0x400921FB54442D18
  ret double %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

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

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 0, i32 2}
!7 = !{i32 0, i32 4}
