; ModuleID = 'bitcount-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bfile = type { ptr, i8, i8, i8, i8 }

@bits.1 = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@main.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @bit_count(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 0
  %2 = icmp eq i64 %0, 0
  %icmpEq = icmp eq i1 %.not, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = select i1 %.not, i32 231735821, i32 180356882
  %4 = xor i32 128975389, %3
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader, %1
  %.05 = phi i64 [ %37, %.preheader ], [ %0, %1 ]
  %5 = phi i64 [ %38, %.preheader ], [ %0, %1 ]
  %6 = phi i64 [ %37, %.preheader ], [ %0, %1 ]
  %7 = phi i64 [ %38, %.preheader ], [ %0, %1 ]
  %.0 = phi i32 [ %33, %.preheader ], [ 0, %1 ]
  %8 = phi i32 [ %34, %.preheader ], [ 0, %1 ]
  %9 = phi i32 [ %33, %.preheader ], [ 0, %1 ]
  %10 = phi i32 [ %34, %.preheader ], [ 0, %1 ]
  %cfg_DestPhi = phi i32 [ 128975389, %1 ], [ 180356882, %.preheader ]
  %11 = phi i32 [ 128975389, %1 ], [ 180356882, %.preheader ]
  %12 = phi i32 [ 128975389, %1 ], [ 180356882, %.preheader ]
  %13 = phi i32 [ 128975389, %1 ], [ 180356882, %.preheader ]
  %cfg_DiffPhi = phi i32 [ %4, %1 ], [ %42, %.preheader ]
  %14 = phi i32 [ %4, %1 ], [ %42, %.preheader ]
  %15 = phi i32 [ %4, %1 ], [ %42, %.preheader ]
  %16 = phi i32 [ %4, %1 ], [ %42, %.preheader ]
  %icmpEq44 = icmp eq i32 %15, %16
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq42 = icmp eq i32 %cfg_DiffPhi, %14
  %17 = icmp eq i32 %14, %14
  %icmpEq46 = icmp eq i1 %icmpEq42, %17
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %12, %13
  %zext41 = zext i1 %icmpEq40 to i32
  %18 = zext i1 %icmpEq40 to i32
  %icmpEq48 = icmp eq i32 %zext41, %18
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %cfg_DestPhi, %11
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %icmpEq36 = icmp eq i32 %9, %10
  %19 = icmp eq i32 %10, %10
  %icmpEq50 = icmp eq i1 %icmpEq36, %19
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %icmpEq34 = icmp eq i32 %.0, %8
  %zext35 = zext i1 %icmpEq34 to i32
  %20 = zext i1 %icmpEq34 to i32
  %icmpEq52 = icmp eq i32 %zext35, %20
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  call void @assert_ft(i32 %zext35, i32 35)
  %icmpEq32 = icmp eq i64 %6, %7
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %icmpEq30 = icmp eq i64 %.05, %5
  %21 = icmp eq i64 %5, %5
  %icmpEq54 = icmp eq i1 %icmpEq30, %21
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %icmpEq18 = icmp eq i32 %cfg_DiffPhi, %15
  %zext19 = zext i1 %icmpEq18 to i32
  %22 = zext i1 %icmpEq18 to i32
  %icmpEq56 = icmp eq i32 %zext19, %22
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %cfg_DestPhi, %12
  %23 = icmp eq i32 %11, %13
  %icmpEq20 = icmp eq i1 %icmpEq16, %23
  %24 = icmp eq i1 %23, %23
  %icmpEq58 = icmp eq i1 %icmpEq20, %24
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %icmpEq14 = icmp eq i32 %.0, %9
  %25 = icmp eq i32 %8, %10
  %icmpEq60 = icmp eq i1 %icmpEq14, %25
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %zext15 = zext i1 %icmpEq14 to i32
  %26 = zext i1 %25 to i32
  %icmpEq22 = icmp eq i32 %zext15, %26
  %zext23 = zext i1 %icmpEq22 to i32
  %27 = zext i1 %icmpEq22 to i32
  %icmpEq62 = icmp eq i32 %zext23, %27
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  call void @assert_ft(i32 %zext23, i32 35)
  call void @assert_ft(i32 %zext15, i32 35)
  %icmpEq12 = icmp eq i64 %.05, %6
  %zext13 = zext i1 %icmpEq12 to i32
  %28 = zext i1 %icmpEq12 to i32
  %icmpEq64 = icmp eq i32 %zext13, %28
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  call void @assert_ft(i32 %zext13, i32 35)
  %29 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %30 = xor i32 %11, %14
  %icmpEq24 = icmp eq i32 %29, %30
  %31 = icmp eq i32 %30, %30
  %icmpEq66 = icmp eq i1 %icmpEq24, %31
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %cfg_icmpEq = icmp eq i32 %29, 180356882
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %32 = zext i1 %cfg_icmpEq to i32
  %icmpEq68 = icmp eq i32 %cfg_zext, %32
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %29, i32 35)
  %33 = add nuw nsw i32 %.0, 1
  %34 = add nuw nsw i32 %8, 1
  %icmpEq26 = icmp eq i32 %33, %34
  %35 = icmp eq i32 %34, %34
  %icmpEq70 = icmp eq i1 %icmpEq26, %35
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %36 = add nsw i64 %.05, -1
  %37 = and i64 %36, %.05
  %38 = and i64 %36, %5
  %icmpEq72 = icmp eq i64 %37, %38
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %.not7 = icmp eq i64 %37, 0
  %39 = select i1 %.not7, i32 231735821, i32 180356882
  %40 = select i1 %.not7, i32 231735821, i32 180356882
  %icmpEq28 = icmp eq i32 %39, %40
  %41 = icmp eq i32 %40, %40
  %icmpEq74 = icmp eq i1 %icmpEq28, %41
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %42 = xor i32 180356882, %39
  br i1 %.not7, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %1
  %.1 = phi i32 [ 0, %1 ], [ %33, %.preheader ]
  %43 = phi i32 [ 0, %1 ], [ %34, %.preheader ]
  %44 = phi i32 [ 0, %1 ], [ %33, %.preheader ]
  %45 = phi i32 [ 0, %1 ], [ %34, %.preheader ]
  %cfg_DestPhi8 = phi i32 [ 180356882, %.preheader ], [ 128975389, %1 ]
  %46 = phi i32 [ 180356882, %.preheader ], [ 128975389, %1 ]
  %47 = phi i32 [ 180356882, %.preheader ], [ 128975389, %1 ]
  %48 = phi i32 [ 180356882, %.preheader ], [ 128975389, %1 ]
  %cfg_DiffPhi9 = phi i32 [ %42, %.preheader ], [ %4, %1 ]
  %49 = phi i32 [ %42, %.preheader ], [ %4, %1 ]
  %50 = phi i32 [ %42, %.preheader ], [ %4, %1 ]
  %51 = phi i32 [ %42, %.preheader ], [ %4, %1 ]
  %icmpEq98 = icmp eq i32 %50, %51
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq96 = icmp eq i32 %cfg_DiffPhi9, %49
  %52 = icmp eq i32 %49, %49
  %icmpEq100 = icmp eq i1 %icmpEq96, %52
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %47, %48
  %zext95 = zext i1 %icmpEq94 to i32
  %53 = zext i1 %icmpEq94 to i32
  %icmpEq102 = icmp eq i32 %zext95, %53
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DestPhi8, %46
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq90 = icmp eq i32 %44, %45
  %54 = icmp eq i32 %45, %45
  %icmpEq104 = icmp eq i1 %icmpEq90, %54
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq88 = icmp eq i32 %.1, %43
  %zext89 = zext i1 %icmpEq88 to i32
  %55 = zext i1 %icmpEq88 to i32
  %icmpEq106 = icmp eq i32 %zext89, %55
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq80 = icmp eq i32 %cfg_DiffPhi9, %50
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %cfg_DestPhi8, %47
  %56 = icmp eq i32 %46, %48
  %icmpEq108 = icmp eq i1 %icmpEq78, %56
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %57 = icmp eq i32 %cfg_DestPhi8, %47
  %icmpEq82 = icmp eq i1 %icmpEq78, %57
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  %58 = zext i1 %56 to i32
  %icmpEq110 = icmp eq i32 %zext79, %58
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %.1, %44
  %zext77 = zext i1 %icmpEq76 to i32
  %59 = zext i1 %icmpEq76 to i32
  %60 = zext i1 %icmpEq76 to i32
  %icmpEq112 = icmp eq i32 %59, %60
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq84 = icmp eq i32 %zext77, %59
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  call void @assert_ft(i32 %zext77, i32 35)
  %61 = xor i32 %cfg_DestPhi8, %cfg_DiffPhi9
  %62 = xor i32 %46, %49
  %icmpEq114 = icmp eq i32 %61, %62
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %cfg_icmpEq10 = icmp eq i32 %61, 231735821
  %cfg_zext11 = zext i1 %cfg_icmpEq10 to i32
  %63 = zext i1 %cfg_icmpEq10 to i32
  %icmpEq86 = icmp eq i32 %cfg_zext11, %63
  %64 = icmp eq i32 %63, %63
  %icmpEq116 = icmp eq i1 %icmpEq86, %64
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext11, i32 %61, i32 35)
  ret i32 %.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @bitcount(i64 noundef %0) #1 {
  %2 = lshr i64 %0, 1
  %3 = lshr i64 %0, 1
  %icmpEq = icmp eq i64 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = and i64 %2, 1431655765
  %5 = and i64 %0, 1431655765
  %6 = add nuw nsw i64 %4, %5
  %7 = lshr i64 %6, 2
  %8 = lshr i64 %6, 2
  %icmpEq11 = icmp eq i64 %7, %8
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %9 = and i64 %7, 858993459
  %10 = and i64 %6, 858993459
  %11 = add nuw nsw i64 %9, %10
  %12 = lshr i64 %11, 4
  %13 = lshr i64 %11, 4
  %icmpEq13 = icmp eq i64 %12, %13
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %14 = and i64 %12, 117901063
  %15 = and i64 %11, 117901063
  %16 = add nuw nsw i64 %14, %15
  %17 = lshr i64 %16, 8
  %18 = lshr i64 %16, 8
  %icmpEq15 = icmp eq i64 %17, %18
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %19 = and i64 %17, 983055
  %20 = and i64 %16, 983055
  %21 = add nuw nsw i64 %19, %20
  %22 = lshr i64 %21, 16
  %23 = lshr i64 %21, 16
  %icmpEq17 = icmp eq i64 %22, %23
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %24 = and i64 %21, 31
  %25 = add nuw nsw i64 %22, %24
  %26 = trunc i64 %25 to i32
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @ntbl_bitcount(i64 noundef %0) #1 {
  %2 = and i64 %0, 15
  %3 = and i64 %0, 15
  %4 = and i64 %0, 15
  %icmpEq30 = icmp eq i64 %3, %4
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %icmpEq = icmp eq i64 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %6 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %7 = load i8, ptr %5, align 1
  %8 = load i8, ptr %6, align 1
  %icmpEq32 = icmp eq i8 %7, %8
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %9 = sext i8 %7 to i32
  %10 = lshr i64 %0, 4
  %11 = lshr i64 %0, 4
  %icmpEq8 = icmp eq i64 %10, %11
  %12 = icmp eq i64 %11, %11
  %icmpEq34 = icmp eq i1 %icmpEq8, %12
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  %13 = and i64 %10, 15
  %14 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %13
  %15 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %13
  %16 = load i8, ptr %14, align 1
  %17 = load i8, ptr %15, align 1
  %icmpEq36 = icmp eq i8 %16, %17
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %18 = sext i8 %16 to i32
  %19 = sext i8 %17 to i32
  %icmpEq10 = icmp eq i32 %18, %19
  %zext11 = zext i1 %icmpEq10 to i32
  %20 = zext i1 %icmpEq10 to i32
  %icmpEq38 = icmp eq i32 %zext11, %20
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  call void @assert_ft(i32 %zext11, i32 35)
  %21 = add nsw i32 %18, %9
  %22 = lshr i64 %0, 8
  %23 = and i64 %22, 15
  %24 = and i64 %22, 15
  %icmpEq40 = icmp eq i64 %23, %24
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %25 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %23
  %26 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %24
  %27 = load i8, ptr %25, align 1
  %28 = load i8, ptr %26, align 1
  %29 = load i8, ptr %26, align 1
  %icmpEq42 = icmp eq i8 %28, %29
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq12 = icmp eq i8 %27, %28
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %30 = sext i8 %27 to i32
  %31 = sext i8 %28 to i32
  %icmpEq44 = icmp eq i32 %30, %31
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %32 = add nsw i32 %21, %30
  %33 = lshr i64 %0, 12
  %34 = and i64 %33, 15
  %35 = and i64 %33, 15
  %36 = and i64 %33, 15
  %icmpEq46 = icmp eq i64 %35, %36
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq14 = icmp eq i64 %34, %35
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %37 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %34
  %38 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %35
  %39 = load i8, ptr %37, align 1
  %40 = load i8, ptr %38, align 1
  %icmpEq48 = icmp eq i8 %39, %40
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %41 = sext i8 %39 to i32
  %42 = add nsw i32 %32, %41
  %43 = add nsw i32 %32, %41
  %icmpEq16 = icmp eq i32 %42, %43
  %44 = icmp eq i32 %43, %43
  %icmpEq50 = icmp eq i1 %icmpEq16, %44
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %45 = lshr i64 %0, 16
  %46 = and i64 %45, 15
  %47 = and i64 %45, 15
  %icmpEq52 = icmp eq i64 %46, %47
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %48 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %46
  %49 = load i8, ptr %48, align 1
  %50 = load i8, ptr %48, align 1
  %icmpEq18 = icmp eq i8 %49, %50
  %51 = icmp eq i8 %50, %50
  %icmpEq54 = icmp eq i1 %icmpEq18, %51
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %52 = sext i8 %49 to i32
  %53 = add nsw i32 %42, %52
  %54 = add nsw i32 %43, %52
  %icmpEq56 = icmp eq i32 %53, %54
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %55 = lshr i64 %0, 20
  %56 = and i64 %55, 15
  %57 = and i64 %55, 15
  %icmpEq20 = icmp eq i64 %56, %57
  %58 = icmp eq i64 %57, %57
  %icmpEq58 = icmp eq i1 %icmpEq20, %58
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %59 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %56
  %60 = load i8, ptr %59, align 1
  %61 = load i8, ptr %59, align 1
  %icmpEq60 = icmp eq i8 %60, %61
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %62 = sext i8 %60 to i32
  %63 = add nsw i32 %53, %62
  %64 = add nsw i32 %54, %62
  %icmpEq22 = icmp eq i32 %63, %64
  %65 = icmp eq i32 %64, %64
  %icmpEq62 = icmp eq i1 %icmpEq22, %65
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %66 = lshr i64 %0, 24
  %67 = and i64 %66, 15
  %68 = and i64 %66, 15
  %icmpEq64 = icmp eq i64 %67, %68
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %69 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %67
  %70 = load i8, ptr %69, align 1
  %71 = load i8, ptr %69, align 1
  %icmpEq24 = icmp eq i8 %70, %71
  %72 = icmp eq i8 %71, %71
  %icmpEq66 = icmp eq i1 %icmpEq24, %72
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %73 = sext i8 %70 to i32
  %74 = add nsw i32 %63, %73
  %75 = add nsw i32 %64, %73
  %icmpEq68 = icmp eq i32 %74, %75
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %76 = lshr i64 %0, 28
  %77 = and i64 %76, 15
  %78 = and i64 %76, 15
  %icmpEq26 = icmp eq i64 %77, %78
  %79 = icmp eq i64 %78, %78
  %icmpEq70 = icmp eq i1 %icmpEq26, %79
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %80 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %77
  %81 = load i8, ptr %80, align 1
  %82 = load i8, ptr %80, align 1
  %icmpEq72 = icmp eq i8 %81, %82
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %83 = sext i8 %81 to i32
  %84 = add nsw i32 %74, %83
  %85 = add nsw i32 %75, %83
  %icmpEq28 = icmp eq i32 %84, %85
  %86 = icmp eq i32 %85, %85
  %icmpEq74 = icmp eq i1 %icmpEq28, %86
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  ret i32 %84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BW_btbl_bitcount(i64 noundef %0) #1 {
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %2 = lshr i64 %0, 8
  %icmpEq = icmp eq i64 %.sroa.2.0.extract.shift, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %.sroa.3.0.extract.shift = lshr i64 %0, 16
  %.sroa.4.0.extract.shift = lshr i64 %0, 24
  %3 = and i64 %0, 255
  %4 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %5 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %6 = load i8, ptr %4, align 1
  %7 = load i8, ptr %5, align 1
  %icmpEq1 = icmp eq i8 %6, %7
  %zext2 = zext i1 %icmpEq1 to i32
  call void @assert_ft(i32 %zext2, i32 35)
  %8 = sext i8 %6 to i32
  %9 = and i64 %.sroa.2.0.extract.shift, 255
  %10 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = load i8, ptr %10, align 1
  %icmpEq3 = icmp eq i8 %11, %12
  %zext4 = zext i1 %icmpEq3 to i32
  call void @assert_ft(i32 %zext4, i32 35)
  %13 = sext i8 %11 to i32
  %14 = add nsw i32 %13, %8
  %15 = and i64 %.sroa.4.0.extract.shift, 255
  %16 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %15
  %17 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %15
  %18 = load i8, ptr %16, align 1
  %19 = load i8, ptr %17, align 1
  %icmpEq5 = icmp eq i8 %18, %19
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %20 = sext i8 %18 to i32
  %21 = add nsw i32 %14, %20
  %22 = and i64 %.sroa.3.0.extract.shift, 255
  %23 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %22
  %24 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %22
  %25 = load i8, ptr %23, align 1
  %26 = load i8, ptr %24, align 1
  %icmpEq7 = icmp eq i8 %25, %26
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %27 = sext i8 %25 to i32
  %28 = add nsw i32 %21, %27
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @AR_btbl_bitcount(i64 noundef %0) #1 {
  %.sroa.2.0.extract.shift = lshr i64 %0, 8
  %2 = lshr i64 %0, 8
  %icmpEq = icmp eq i64 %.sroa.2.0.extract.shift, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %.sroa.3.0.extract.shift = lshr i64 %0, 16
  %.sroa.4.0.extract.shift = lshr i64 %0, 24
  %3 = and i64 %0, 255
  %4 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %5 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %3
  %6 = load i8, ptr %4, align 1
  %7 = load i8, ptr %5, align 1
  %icmpEq7 = icmp eq i8 %6, %7
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %8 = sext i8 %6 to i32
  %9 = and i64 %.sroa.2.0.extract.shift, 255
  %10 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = load i8, ptr %10, align 1
  %icmpEq9 = icmp eq i8 %11, %12
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %13 = sext i8 %11 to i32
  %14 = add nsw i32 %13, %8
  %15 = and i64 %.sroa.3.0.extract.shift, 255
  %16 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %15
  %17 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %15
  %18 = load i8, ptr %16, align 1
  %19 = load i8, ptr %17, align 1
  %icmpEq11 = icmp eq i8 %18, %19
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %20 = sext i8 %18 to i32
  %21 = add nsw i32 %14, %20
  %22 = and i64 %.sroa.4.0.extract.shift, 255
  %23 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %22
  %24 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %22
  %25 = load i8, ptr %23, align 1
  %26 = load i8, ptr %24, align 1
  %icmpEq13 = icmp eq i8 %25, %26
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %27 = sext i8 %25 to i32
  %28 = add nsw i32 %21, %27
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) #0 {
  %2 = and i64 %0, 15
  %3 = and i64 %0, 15
  %icmpEq = icmp eq i64 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  %.not6 = icmp ult i64 %0, 16
  %7 = icmp ult i64 %0, 16
  %icmpEq24 = icmp eq i1 %.not6, %7
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %8 = select i1 %.not6, i32 231736346, i32 180357911
  %9 = xor i32 128976397, %8
  br i1 %.not6, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %1
  %10 = phi i32 [ %27, %tailrecurse ], [ %6, %1 ]
  %11 = phi i32 [ %28, %tailrecurse ], [ %6, %1 ]
  %.tr8 = phi i64 [ %21, %tailrecurse ], [ %0, %1 ]
  %12 = phi i64 [ %21, %tailrecurse ], [ %0, %1 ]
  %accumulator.tr7 = phi i32 [ %22, %tailrecurse ], [ 0, %1 ]
  %13 = phi i32 [ %23, %tailrecurse ], [ 0, %1 ]
  %cfg_DestPhi = phi i32 [ 128976397, %1 ], [ 180357911, %tailrecurse ]
  %14 = phi i32 [ 128976397, %1 ], [ 180357911, %tailrecurse ]
  %cfg_DiffPhi = phi i32 [ %9, %1 ], [ %30, %tailrecurse ]
  %15 = phi i32 [ %9, %1 ], [ %30, %tailrecurse ]
  %icmpEq34 = icmp eq i32 %cfg_DiffPhi, %15
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %icmpEq32 = icmp eq i32 %cfg_DestPhi, %14
  %16 = icmp eq i32 %14, %14
  %icmpEq36 = icmp eq i1 %icmpEq32, %16
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %icmpEq30 = icmp eq i32 %accumulator.tr7, %13
  %zext31 = zext i1 %icmpEq30 to i32
  %17 = zext i1 %icmpEq30 to i32
  %icmpEq38 = icmp eq i32 %zext31, %17
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  call void @assert_ft(i32 %zext31, i32 35)
  %icmpEq28 = icmp eq i64 %.tr8, %12
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %icmpEq26 = icmp eq i32 %10, %11
  %18 = icmp eq i32 %11, %11
  %icmpEq40 = icmp eq i1 %icmpEq26, %18
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %19 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %19, 180357911
  %20 = icmp eq i32 %19, 180357911
  %icmpEq42 = icmp eq i1 %cfg_icmpEq, %20
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %19, i32 35)
  %21 = ashr i64 %.tr8, 4
  %22 = add nsw i32 %10, %accumulator.tr7
  %23 = add nsw i32 %11, %13
  %icmpEq44 = icmp eq i32 %22, %23
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %24 = and i64 %21, 15
  %25 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i8 %26 to i32
  %icmpEq46 = icmp eq i32 %27, %28
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %.not = icmp ult i64 %.tr8, 256
  %29 = select i1 %.not, i32 231736346, i32 180357911
  %30 = xor i32 180357911, %29
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %1
  %accumulator.tr.lcssa = phi i32 [ 0, %1 ], [ %22, %tailrecurse ]
  %31 = phi i32 [ 0, %1 ], [ %23, %tailrecurse ]
  %32 = phi i32 [ 0, %1 ], [ %23, %tailrecurse ]
  %.lcssa = phi i32 [ %6, %1 ], [ %27, %tailrecurse ]
  %33 = phi i32 [ %6, %1 ], [ %28, %tailrecurse ]
  %34 = phi i32 [ %6, %1 ], [ %27, %tailrecurse ]
  %35 = phi i32 [ %6, %1 ], [ %28, %tailrecurse ]
  %cfg_DestPhi20 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %36 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %37 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %38 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %cfg_DiffPhi21 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %39 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %40 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %41 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %icmpEq76 = icmp eq i32 %40, %41
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %icmpEq74 = icmp eq i32 %cfg_DiffPhi21, %39
  %42 = icmp eq i32 %39, %39
  %icmpEq78 = icmp eq i1 %icmpEq74, %42
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq72 = icmp eq i32 %37, %38
  %zext73 = zext i1 %icmpEq72 to i32
  %43 = zext i1 %icmpEq72 to i32
  %icmpEq80 = icmp eq i32 %zext73, %43
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i32 %cfg_DestPhi20, %36
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %icmpEq68 = icmp eq i32 %34, %35
  %44 = icmp eq i32 %35, %35
  %icmpEq82 = icmp eq i1 %icmpEq68, %44
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %icmpEq66 = icmp eq i32 %.lcssa, %33
  %zext67 = zext i1 %icmpEq66 to i32
  %45 = zext i1 %icmpEq66 to i32
  %icmpEq84 = icmp eq i32 %zext67, %45
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %31, %32
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %icmpEq54 = icmp eq i32 %cfg_DiffPhi21, %40
  %46 = icmp eq i32 %39, %41
  %icmpEq86 = icmp eq i1 %icmpEq54, %46
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq52 = icmp eq i32 %cfg_DestPhi20, %37
  %47 = icmp eq i32 %36, %38
  %48 = icmp eq i32 %36, %38
  %icmpEq88 = icmp eq i1 %47, %48
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq56 = icmp eq i1 %icmpEq52, %47
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %zext53 = zext i1 %icmpEq52 to i32
  %49 = zext i1 %47 to i32
  %icmpEq90 = icmp eq i32 %zext53, %49
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %.lcssa, %34
  %zext51 = zext i1 %icmpEq50 to i32
  %50 = zext i1 %icmpEq50 to i32
  %51 = zext i1 %icmpEq50 to i32
  %icmpEq92 = icmp eq i32 %50, %51
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq58 = icmp eq i32 %zext51, %50
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i32 %accumulator.tr.lcssa, %31
  %52 = icmp eq i32 %31, %32
  %icmpEq94 = icmp eq i1 %icmpEq48, %52
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %53 = xor i32 %cfg_DestPhi20, %cfg_DiffPhi21
  %54 = xor i32 %36, %39
  %55 = xor i32 %36, %39
  %icmpEq96 = icmp eq i32 %54, %55
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq60 = icmp eq i32 %53, %54
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %cfg_icmpEq22 = icmp eq i32 %53, 231736346
  %56 = icmp eq i32 %54, 231736346
  %icmpEq98 = icmp eq i1 %cfg_icmpEq22, %56
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %cfg_zext23 = zext i1 %cfg_icmpEq22 to i32
  call void @assert_cfg_ft(i32 %cfg_zext23, i32 %53, i32 35)
  %accumulator.ret.tr = add nsw i32 %.lcssa, %accumulator.tr.lcssa
  %57 = add nsw i32 %33, %31
  %58 = add nsw i32 %33, %31
  %icmpEq100 = icmp eq i32 %57, %58
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %icmpEq62 = icmp eq i32 %accumulator.ret.tr, %57
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
  %2 = and i64 %0, 255
  %3 = and i64 %0, 255
  %icmpEq = icmp eq i64 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %2
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  %.not16 = icmp ult i64 %0, 256
  %7 = icmp ult i64 %0, 256
  %icmpEq34 = icmp eq i1 %.not16, %7
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %8 = select i1 %.not16, i32 231736346, i32 180357911
  %9 = xor i32 128976397, %8
  br i1 %.not16, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %1
  %10 = phi i32 [ %27, %tailrecurse ], [ %6, %1 ]
  %11 = phi i32 [ %28, %tailrecurse ], [ %6, %1 ]
  %.tr18 = phi i64 [ %21, %tailrecurse ], [ %0, %1 ]
  %12 = phi i64 [ %21, %tailrecurse ], [ %0, %1 ]
  %accumulator.tr17 = phi i32 [ %22, %tailrecurse ], [ 0, %1 ]
  %13 = phi i32 [ %23, %tailrecurse ], [ 0, %1 ]
  %cfg_DestPhi = phi i32 [ 128976397, %1 ], [ 180357911, %tailrecurse ]
  %14 = phi i32 [ 128976397, %1 ], [ 180357911, %tailrecurse ]
  %cfg_DiffPhi = phi i32 [ %9, %1 ], [ %30, %tailrecurse ]
  %15 = phi i32 [ %9, %1 ], [ %30, %tailrecurse ]
  %icmpEq44 = icmp eq i32 %cfg_DiffPhi, %15
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq42 = icmp eq i32 %cfg_DestPhi, %14
  %16 = icmp eq i32 %14, %14
  %icmpEq46 = icmp eq i1 %icmpEq42, %16
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %accumulator.tr17, %13
  %zext41 = zext i1 %icmpEq40 to i32
  %17 = zext i1 %icmpEq40 to i32
  %icmpEq48 = icmp eq i32 %zext41, %17
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i64 %.tr18, %12
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %icmpEq36 = icmp eq i32 %10, %11
  %18 = icmp eq i32 %11, %11
  %icmpEq50 = icmp eq i1 %icmpEq36, %18
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %19 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %19, 180357911
  %20 = icmp eq i32 %19, 180357911
  %icmpEq52 = icmp eq i1 %cfg_icmpEq, %20
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %19, i32 35)
  %21 = ashr i64 %.tr18, 8
  %22 = add nsw i32 %10, %accumulator.tr17
  %23 = add nsw i32 %11, %13
  %icmpEq54 = icmp eq i32 %22, %23
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %24 = and i64 %21, 255
  %25 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i8 %26 to i32
  %icmpEq56 = icmp eq i32 %27, %28
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %.not = icmp ult i64 %.tr18, 65536
  %29 = select i1 %.not, i32 231736346, i32 180357911
  %30 = xor i32 180357911, %29
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %1
  %accumulator.tr.lcssa = phi i32 [ 0, %1 ], [ %22, %tailrecurse ]
  %31 = phi i32 [ 0, %1 ], [ %23, %tailrecurse ]
  %32 = phi i32 [ 0, %1 ], [ %23, %tailrecurse ]
  %.lcssa = phi i32 [ %6, %1 ], [ %27, %tailrecurse ]
  %33 = phi i32 [ %6, %1 ], [ %28, %tailrecurse ]
  %34 = phi i32 [ %6, %1 ], [ %27, %tailrecurse ]
  %35 = phi i32 [ %6, %1 ], [ %28, %tailrecurse ]
  %cfg_DestPhi30 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %36 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %37 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %38 = phi i32 [ 180357911, %tailrecurse ], [ 128976397, %1 ]
  %cfg_DiffPhi31 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %39 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %40 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %41 = phi i32 [ %30, %tailrecurse ], [ %9, %1 ]
  %icmpEq86 = icmp eq i32 %40, %41
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq84 = icmp eq i32 %cfg_DiffPhi31, %39
  %42 = icmp eq i32 %39, %39
  %icmpEq88 = icmp eq i1 %icmpEq84, %42
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i32 %37, %38
  %zext83 = zext i1 %icmpEq82 to i32
  %43 = zext i1 %icmpEq82 to i32
  %icmpEq90 = icmp eq i32 %zext83, %43
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  call void @assert_ft(i32 %zext83, i32 35)
  %icmpEq80 = icmp eq i32 %cfg_DestPhi30, %36
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %34, %35
  %44 = icmp eq i32 %35, %35
  %icmpEq92 = icmp eq i1 %icmpEq78, %44
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %.lcssa, %33
  %zext77 = zext i1 %icmpEq76 to i32
  %45 = zext i1 %icmpEq76 to i32
  %icmpEq94 = icmp eq i32 %zext77, %45
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  call void @assert_ft(i32 %zext77, i32 35)
  %icmpEq74 = icmp eq i32 %31, %32
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DiffPhi31, %40
  %46 = icmp eq i32 %39, %41
  %icmpEq96 = icmp eq i1 %icmpEq64, %46
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %icmpEq62 = icmp eq i32 %cfg_DestPhi30, %37
  %47 = icmp eq i32 %36, %38
  %48 = icmp eq i32 %36, %38
  %icmpEq98 = icmp eq i1 %47, %48
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq66 = icmp eq i1 %icmpEq62, %47
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %zext63 = zext i1 %icmpEq62 to i32
  %49 = zext i1 %47 to i32
  %icmpEq100 = icmp eq i32 %zext63, %49
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq60 = icmp eq i32 %.lcssa, %34
  %zext61 = zext i1 %icmpEq60 to i32
  %50 = zext i1 %icmpEq60 to i32
  %51 = zext i1 %icmpEq60 to i32
  %icmpEq102 = icmp eq i32 %50, %51
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %icmpEq68 = icmp eq i32 %zext61, %50
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i32 %accumulator.tr.lcssa, %31
  %52 = icmp eq i32 %31, %32
  %icmpEq104 = icmp eq i1 %icmpEq58, %52
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %53 = xor i32 %cfg_DestPhi30, %cfg_DiffPhi31
  %54 = xor i32 %36, %39
  %55 = xor i32 %36, %39
  %icmpEq106 = icmp eq i32 %54, %55
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq70 = icmp eq i32 %53, %54
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %cfg_icmpEq32 = icmp eq i32 %53, 231736346
  %56 = icmp eq i32 %54, 231736346
  %icmpEq108 = icmp eq i1 %cfg_icmpEq32, %56
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %cfg_zext33 = zext i1 %cfg_icmpEq32 to i32
  call void @assert_cfg_ft(i32 %cfg_zext33, i32 %53, i32 35)
  %accumulator.ret.tr = add nsw i32 %.lcssa, %accumulator.tr.lcssa
  %57 = add nsw i32 %33, %31
  %58 = add nsw i32 %33, %31
  %icmpEq110 = icmp eq i32 %57, %58
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %icmpEq72 = icmp eq i32 %accumulator.ret.tr, %57
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 2
  %4 = icmp slt i32 %0, 2
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180356101, i32 231737115
  %6 = xor i32 128975389, %5
  br i1 %3, label %7, label %15

7:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %8 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %6, %2 ]
  %9 = phi i32 [ %6, %2 ]
  %icmpEq72 = icmp eq i32 %cfg_DiffPhi, %9
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq74 = icmp eq i1 %icmpEq70, %10
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356101
  %12 = icmp eq i32 %11, 180356101
  %icmpEq76 = icmp eq i1 %cfg_icmpEq, %12
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = load ptr, ptr @stderr, align 8
  %14 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %13) #14
  tail call void @exit(i32 noundef -1) #15
  unreachable

15:                                               ; preds = %2
  %cfg_DestPhi46 = phi i32 [ 128975389, %2 ]
  %16 = phi i32 [ 128975389, %2 ]
  %17 = phi i32 [ 128975389, %2 ]
  %18 = phi i32 [ 128975389, %2 ]
  %19 = phi i32 [ 128975389, %2 ]
  %20 = phi i32 [ 128975389, %2 ]
  %21 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi47 = phi i32 [ %6, %2 ]
  %22 = phi i32 [ %6, %2 ]
  %23 = phi i32 [ %6, %2 ]
  %24 = phi i32 [ %6, %2 ]
  %25 = phi i32 [ %6, %2 ]
  %26 = phi i32 [ %6, %2 ]
  %27 = phi i32 [ %6, %2 ]
  %28 = phi i32 [ %6, %2 ]
  %icmpEq126 = icmp eq i32 %27, %28
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i32 %25, %26
  %29 = icmp eq i32 %26, %26
  %icmpEq128 = icmp eq i1 %icmpEq124, %29
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq122 = icmp eq i32 %23, %24
  %zext123 = zext i1 %icmpEq122 to i32
  %30 = zext i1 %icmpEq122 to i32
  %icmpEq130 = icmp eq i32 %zext123, %30
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  call void @assert_ft(i32 %zext123, i32 35)
  %icmpEq120 = icmp eq i32 %cfg_DiffPhi47, %22
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %icmpEq118 = icmp eq i32 %20, %21
  %31 = icmp eq i32 %21, %21
  %icmpEq132 = icmp eq i1 %icmpEq118, %31
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %icmpEq116 = icmp eq i32 %18, %19
  %zext117 = zext i1 %icmpEq116 to i32
  %32 = zext i1 %icmpEq116 to i32
  %icmpEq134 = icmp eq i32 %zext117, %32
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %16, %17
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq94 = icmp eq i32 %25, %27
  %33 = icmp eq i32 %26, %28
  %icmpEq136 = icmp eq i1 %icmpEq94, %33
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DiffPhi47, %23
  %34 = icmp eq i32 %22, %24
  %35 = icmp eq i32 %22, %24
  %icmpEq138 = icmp eq i1 %34, %35
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq96 = icmp eq i1 %icmpEq92, %34
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext93 = zext i1 %icmpEq92 to i32
  %36 = zext i1 %34 to i32
  %icmpEq140 = icmp eq i32 %zext93, %36
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq90 = icmp eq i32 %18, %20
  %zext91 = zext i1 %icmpEq90 to i32
  %37 = zext i1 %icmpEq90 to i32
  %38 = zext i1 %icmpEq90 to i32
  %icmpEq142 = icmp eq i32 %37, %38
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %icmpEq98 = icmp eq i32 %zext91, %37
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq88 = icmp eq i32 %cfg_DestPhi46, %16
  %39 = icmp eq i32 %16, %17
  %icmpEq144 = icmp eq i1 %icmpEq88, %39
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq80 = icmp eq i32 %cfg_DiffPhi47, %25
  %40 = icmp eq i32 %22, %26
  %41 = icmp eq i32 %22, %26
  %icmpEq146 = icmp eq i1 %40, %41
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %icmpEq100 = icmp eq i1 %icmpEq80, %40
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext81 = zext i1 %icmpEq80 to i32
  %42 = zext i1 %40 to i32
  %icmpEq148 = icmp eq i32 %zext81, %42
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %cfg_DestPhi46, %18
  %43 = icmp eq i32 %16, %19
  %44 = icmp eq i32 %16, %19
  %45 = icmp eq i32 %16, %19
  %icmpEq150 = icmp eq i1 %44, %45
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq102 = icmp eq i1 %43, %44
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %icmpEq82 = icmp eq i1 %icmpEq78, %43
  %46 = icmp eq i1 %43, %44
  %icmpEq152 = icmp eq i1 %icmpEq82, %46
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  %47 = zext i1 %43 to i32
  %48 = zext i1 %43 to i32
  %icmpEq154 = icmp eq i32 %47, %48
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %icmpEq104 = icmp eq i32 %zext79, %47
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  call void @assert_ft(i32 %zext79, i32 35)
  %49 = xor i32 %cfg_DestPhi46, %cfg_DiffPhi47
  %50 = xor i32 %16, %22
  %icmpEq156 = icmp eq i32 %49, %50
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %cfg_icmpEq48 = icmp eq i32 %49, 231737115
  %51 = icmp eq i32 %50, 231737115
  %52 = icmp eq i32 %50, 231737115
  %icmpEq106 = icmp eq i1 %51, %52
  %53 = icmp eq i1 %52, %52
  %icmpEq158 = icmp eq i1 %icmpEq106, %53
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq84 = icmp eq i1 %cfg_icmpEq48, %51
  %zext85 = zext i1 %icmpEq84 to i32
  %54 = zext i1 %icmpEq84 to i32
  %icmpEq160 = icmp eq i32 %zext85, %54
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  call void @assert_ft(i32 %zext85, i32 35)
  %cfg_zext49 = zext i1 %cfg_icmpEq48 to i32
  %55 = zext i1 %51 to i32
  %icmpEq108 = icmp eq i32 %cfg_zext49, %55
  %56 = icmp eq i32 %55, %55
  %icmpEq162 = icmp eq i1 %icmpEq108, %56
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext49, i32 %49, i32 35)
  %57 = getelementptr inbounds ptr, ptr %1, i64 1
  %58 = getelementptr inbounds ptr, ptr %1, i64 1
  %59 = load ptr, ptr %57, align 8
  %60 = load ptr, ptr %58, align 8
  %61 = load ptr, ptr %57, align 8
  %62 = load ptr, ptr %58, align 8
  %63 = load ptr, ptr %57, align 8
  %64 = load ptr, ptr %58, align 8
  %65 = tail call i32 @atoi(ptr nocapture noundef %59) #16
  %66 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %67 = sext i32 %65 to i64
  %68 = sext i32 %65 to i64
  %icmpEq164 = icmp eq i64 %67, %68
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %69 = sext i32 %65 to i64
  %icmpEq110 = icmp eq i64 %67, %69
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %70 = sext i32 %65 to i64
  %71 = sext i32 %65 to i64
  %icmpEq166 = icmp eq i64 %70, %71
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %icmpEq86 = icmp eq i64 %67, %70
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %72 = icmp sgt i32 %65, 0
  %73 = icmp sgt i32 %65, 0
  %icmpEq168 = icmp eq i1 %72, %73
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %74 = icmp sgt i32 %65, 0
  %icmpEq112 = icmp eq i1 %72, %74
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  br label %75

75:                                               ; preds = %._crit_edge, %15
  %indvars.iv = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %76 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %77 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %78 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %79 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %80 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %81 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge ]
  %.044 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %82 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %83 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %84 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %85 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %86 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %87 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %88 = phi double [ 0x7FEFFFFFFFFFFFFF, %15 ], [ %.1, %._crit_edge ]
  %.02843 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %89 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %90 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %91 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %92 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %93 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %94 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %95 = phi i32 [ undef, %15 ], [ %.129, %._crit_edge ]
  %.03042 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %96 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %97 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %98 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %99 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %100 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %101 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %102 = phi i32 [ undef, %15 ], [ %.131, %._crit_edge ]
  %.03340 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %103 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %104 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %105 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %106 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %107 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %108 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %109 = phi double [ 0.000000e+00, %15 ], [ %.134, %._crit_edge ]
  %cfg_DestPhi50 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %110 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %111 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %112 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %113 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %114 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %115 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %116 = phi i32 [ 231737115, %15 ], [ 437260814, %._crit_edge ]
  %cfg_DiffPhi51 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %117 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %118 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %119 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %120 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %121 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %122 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %123 = phi i32 [ 489688847, %15 ], [ %250, %._crit_edge ]
  %icmpEq280 = icmp eq i32 %122, %123
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq278 = icmp eq i32 %120, %121
  %124 = icmp eq i32 %121, %121
  %icmpEq282 = icmp eq i1 %icmpEq278, %124
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %icmpEq276 = icmp eq i32 %118, %119
  %zext277 = zext i1 %icmpEq276 to i32
  %125 = zext i1 %icmpEq276 to i32
  %icmpEq284 = icmp eq i32 %zext277, %125
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  call void @assert_ft(i32 %zext277, i32 35)
  %icmpEq274 = icmp eq i32 %cfg_DiffPhi51, %117
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %icmpEq272 = icmp eq i32 %115, %116
  %126 = icmp eq i32 %116, %116
  %icmpEq286 = icmp eq i1 %icmpEq272, %126
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %icmpEq270 = icmp eq i32 %113, %114
  %zext271 = zext i1 %icmpEq270 to i32
  %127 = zext i1 %icmpEq270 to i32
  %icmpEq288 = icmp eq i32 %zext271, %127
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  call void @assert_ft(i32 %zext271, i32 35)
  %icmpEq268 = icmp eq i32 %111, %112
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq266 = icmp eq i32 %cfg_DestPhi50, %110
  %128 = icmp eq i32 %110, %110
  %icmpEq290 = icmp eq i1 %icmpEq266, %128
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %icmpEq264 = icmp eq i32 %101, %102
  %zext265 = zext i1 %icmpEq264 to i32
  %129 = zext i1 %icmpEq264 to i32
  %icmpEq292 = icmp eq i32 %zext265, %129
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq262 = icmp eq i32 %99, %100
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %icmpEq260 = icmp eq i32 %97, %98
  %130 = icmp eq i32 %98, %98
  %icmpEq294 = icmp eq i1 %icmpEq260, %130
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq258 = icmp eq i32 %.03042, %96
  %zext259 = zext i1 %icmpEq258 to i32
  %131 = zext i1 %icmpEq258 to i32
  %icmpEq296 = icmp eq i32 %zext259, %131
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  call void @assert_ft(i32 %zext259, i32 35)
  %icmpEq256 = icmp eq i32 %94, %95
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq254 = icmp eq i32 %92, %93
  %132 = icmp eq i32 %93, %93
  %icmpEq298 = icmp eq i1 %icmpEq254, %132
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %icmpEq252 = icmp eq i32 %90, %91
  %zext253 = zext i1 %icmpEq252 to i32
  %133 = zext i1 %icmpEq252 to i32
  %icmpEq300 = icmp eq i32 %zext253, %133
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq250 = icmp eq i32 %.02843, %89
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %icmpEq248 = icmp eq i64 %80, %81
  %134 = icmp eq i64 %81, %81
  %icmpEq302 = icmp eq i1 %icmpEq248, %134
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %icmpEq246 = icmp eq i64 %78, %79
  %zext247 = zext i1 %icmpEq246 to i32
  %135 = zext i1 %icmpEq246 to i32
  %icmpEq304 = icmp eq i32 %zext247, %135
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq244 = icmp eq i64 %76, %77
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %icmpEq208 = icmp eq i32 %120, %122
  %136 = icmp eq i32 %121, %123
  %icmpEq306 = icmp eq i1 %icmpEq208, %136
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %cfg_DiffPhi51, %118
  %137 = icmp eq i32 %117, %119
  %138 = icmp eq i32 %117, %119
  %icmpEq308 = icmp eq i1 %137, %138
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %icmpEq210 = icmp eq i1 %icmpEq206, %137
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %zext207 = zext i1 %icmpEq206 to i32
  %139 = zext i1 %137 to i32
  %icmpEq310 = icmp eq i32 %zext207, %139
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq204 = icmp eq i32 %113, %115
  %zext205 = zext i1 %icmpEq204 to i32
  %140 = zext i1 %icmpEq204 to i32
  %141 = zext i1 %icmpEq204 to i32
  %icmpEq312 = icmp eq i32 %140, %141
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %icmpEq212 = icmp eq i32 %zext205, %140
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  call void @assert_ft(i32 %zext205, i32 35)
  %icmpEq202 = icmp eq i32 %cfg_DestPhi50, %111
  %142 = icmp eq i32 %110, %112
  %icmpEq314 = icmp eq i1 %icmpEq202, %142
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %icmpEq200 = icmp eq i32 %99, %101
  %143 = icmp eq i32 %100, %102
  %144 = icmp eq i32 %100, %102
  %icmpEq316 = icmp eq i1 %143, %144
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq214 = icmp eq i1 %icmpEq200, %143
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %zext201 = zext i1 %icmpEq200 to i32
  %145 = zext i1 %143 to i32
  %icmpEq318 = icmp eq i32 %zext201, %145
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  call void @assert_ft(i32 %zext201, i32 35)
  %icmpEq198 = icmp eq i32 %.03042, %97
  %zext199 = zext i1 %icmpEq198 to i32
  %146 = zext i1 %icmpEq198 to i32
  %147 = zext i1 %icmpEq198 to i32
  %icmpEq320 = icmp eq i32 %146, %147
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq216 = icmp eq i32 %zext199, %146
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %92, %94
  %148 = icmp eq i32 %93, %95
  %icmpEq322 = icmp eq i1 %icmpEq196, %148
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %icmpEq194 = icmp eq i32 %.02843, %90
  %149 = icmp eq i32 %89, %91
  %150 = icmp eq i32 %89, %91
  %icmpEq324 = icmp eq i1 %149, %150
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  %icmpEq218 = icmp eq i1 %icmpEq194, %149
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %zext195 = zext i1 %icmpEq194 to i32
  %151 = zext i1 %149 to i32
  %icmpEq326 = icmp eq i32 %zext195, %151
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  call void @assert_ft(i32 %zext195, i32 35)
  %icmpEq192 = icmp eq i64 %78, %80
  %zext193 = zext i1 %icmpEq192 to i32
  %152 = zext i1 %icmpEq192 to i32
  %153 = zext i1 %icmpEq192 to i32
  %icmpEq328 = icmp eq i32 %152, %153
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %icmpEq220 = icmp eq i32 %zext193, %152
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq190 = icmp eq i64 %indvars.iv, %76
  %154 = icmp eq i64 %76, %77
  %icmpEq330 = icmp eq i1 %icmpEq190, %154
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %icmpEq178 = icmp eq i32 %cfg_DiffPhi51, %120
  %155 = icmp eq i32 %117, %121
  %156 = icmp eq i32 %117, %121
  %icmpEq332 = icmp eq i1 %155, %156
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %icmpEq222 = icmp eq i1 %icmpEq178, %155
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %zext179 = zext i1 %icmpEq178 to i32
  %157 = zext i1 %155 to i32
  %icmpEq334 = icmp eq i32 %zext179, %157
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  call void @assert_ft(i32 %zext179, i32 35)
  %icmpEq176 = icmp eq i32 %cfg_DestPhi50, %113
  %158 = icmp eq i32 %110, %114
  %159 = icmp eq i32 %110, %114
  %160 = icmp eq i32 %110, %114
  %icmpEq336 = icmp eq i1 %159, %160
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %icmpEq224 = icmp eq i1 %158, %159
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq180 = icmp eq i1 %icmpEq176, %158
  %161 = icmp eq i1 %158, %159
  %icmpEq338 = icmp eq i1 %icmpEq180, %161
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %zext177 = zext i1 %icmpEq176 to i32
  %162 = zext i1 %158 to i32
  %163 = zext i1 %158 to i32
  %icmpEq340 = icmp eq i32 %162, %163
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  %icmpEq226 = icmp eq i32 %zext177, %162
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq174 = icmp eq i32 %.03042, %99
  %164 = icmp eq i32 %96, %100
  %icmpEq342 = icmp eq i1 %icmpEq174, %164
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %zext175 = zext i1 %icmpEq174 to i32
  %165 = zext i1 %164 to i32
  %166 = zext i1 %164 to i32
  %icmpEq228 = icmp eq i32 %165, %166
  %167 = icmp eq i32 %166, %166
  %icmpEq344 = icmp eq i1 %icmpEq228, %167
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq182 = icmp eq i32 %zext175, %165
  %zext183 = zext i1 %icmpEq182 to i32
  %168 = zext i1 %icmpEq182 to i32
  %icmpEq346 = icmp eq i32 %zext183, %168
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  call void @assert_ft(i32 %zext183, i32 35)
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %.02843, %92
  %169 = icmp eq i32 %89, %93
  %170 = icmp eq i32 %89, %93
  %icmpEq348 = icmp eq i1 %169, %170
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  %icmpEq230 = icmp eq i1 %icmpEq172, %169
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %zext173 = zext i1 %icmpEq172 to i32
  %171 = zext i1 %169 to i32
  %icmpEq350 = icmp eq i32 %zext173, %171
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq170 = icmp eq i64 %indvars.iv, %78
  %172 = icmp eq i64 %76, %79
  %173 = icmp eq i64 %76, %79
  %174 = icmp eq i64 %76, %79
  %icmpEq352 = icmp eq i1 %173, %174
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  %icmpEq232 = icmp eq i1 %172, %173
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq184 = icmp eq i1 %icmpEq170, %172
  %175 = icmp eq i1 %172, %173
  %icmpEq354 = icmp eq i1 %icmpEq184, %175
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %zext171 = zext i1 %icmpEq170 to i32
  %176 = zext i1 %172 to i32
  %177 = zext i1 %172 to i32
  %icmpEq356 = icmp eq i32 %176, %177
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  %icmpEq234 = icmp eq i32 %zext171, %176
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  call void @assert_ft(i32 %zext171, i32 35)
  %178 = xor i32 %cfg_DestPhi50, %cfg_DiffPhi51
  %179 = xor i32 %110, %117
  %icmpEq358 = icmp eq i32 %178, %179
  %zext359 = zext i1 %icmpEq358 to i32
  call void @assert_ft(i32 %zext359, i32 35)
  %cfg_icmpEq52 = icmp eq i32 %178, 283117588
  %180 = icmp eq i32 %179, 283117588
  %181 = icmp eq i32 %179, 283117588
  %icmpEq236 = icmp eq i1 %180, %181
  %182 = icmp eq i1 %181, %181
  %icmpEq360 = icmp eq i1 %icmpEq236, %182
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %icmpEq186 = icmp eq i1 %cfg_icmpEq52, %180
  %zext187 = zext i1 %icmpEq186 to i32
  %183 = zext i1 %icmpEq186 to i32
  %icmpEq362 = icmp eq i32 %zext187, %183
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  call void @assert_ft(i32 %zext187, i32 35)
  %cfg_zext53 = zext i1 %cfg_icmpEq52 to i32
  %184 = zext i1 %180 to i32
  %icmpEq238 = icmp eq i32 %cfg_zext53, %184
  %185 = icmp eq i32 %184, %184
  %icmpEq364 = icmp eq i1 %icmpEq238, %185
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext53, i32 %178, i32 35)
  %186 = tail call i64 @clock() #17
  %187 = tail call i32 @rand() #17
  %188 = select i1 %72, i32 334496799, i32 437260814
  %189 = select i1 %73, i32 334496799, i32 437260814
  %icmpEq366 = icmp eq i32 %188, %189
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  %190 = select i1 %72, i32 334496799, i32 437260814
  %icmpEq240 = icmp eq i32 %188, %190
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %191 = select i1 %72, i32 334496799, i32 437260814
  %192 = select i1 %73, i32 334496799, i32 437260814
  %icmpEq368 = icmp eq i32 %191, %192
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %icmpEq188 = icmp eq i32 %188, %191
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %193 = xor i32 283117588, %188
  %194 = xor i32 283117588, %189
  %icmpEq370 = icmp eq i32 %193, %194
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %195 = xor i32 283117588, %188
  %icmpEq242 = icmp eq i32 %193, %195
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  br i1 %72, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %75
  %cfg_DestPhi54 = phi i32 [ 283117588, %75 ]
  %196 = phi i32 [ 283117588, %75 ]
  %cfg_DiffPhi55 = phi i32 [ %193, %75 ]
  %197 = phi i32 [ %194, %75 ]
  %icmpEq374 = icmp eq i32 %cfg_DiffPhi55, %197
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %icmpEq372 = icmp eq i32 %cfg_DestPhi54, %196
  %198 = icmp eq i32 %196, %196
  %icmpEq376 = icmp eq i1 %icmpEq372, %198
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  %199 = xor i32 %cfg_DestPhi54, %cfg_DiffPhi55
  %cfg_icmpEq56 = icmp eq i32 %199, 334496799
  %200 = icmp eq i32 %199, 334496799
  %icmpEq378 = icmp eq i1 %cfg_icmpEq56, %200
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %cfg_zext57 = zext i1 %cfg_icmpEq56 to i32
  call void @assert_cfg_ft(i32 %cfg_zext57, i32 %199, i32 35)
  %201 = sext i32 %187 to i64
  %202 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %indvars.iv
  %203 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %76
  %204 = load ptr, ptr %202, align 8
  %205 = load ptr, ptr %203, align 8
  br label %206

206:                                              ; preds = %206, %.lr.ph
  %.02539 = phi i64 [ %201, %.lr.ph ], [ %222, %206 ]
  %207 = phi i64 [ %201, %.lr.ph ], [ %222, %206 ]
  %.02638 = phi i64 [ 0, %.lr.ph ], [ %220, %206 ]
  %208 = phi i64 [ 0, %.lr.ph ], [ %220, %206 ]
  %.02737 = phi i64 [ 0, %.lr.ph ], [ %221, %206 ]
  %209 = phi i64 [ 0, %.lr.ph ], [ %221, %206 ]
  %cfg_DestPhi58 = phi i32 [ 334496799, %.lr.ph ], [ 385878547, %206 ]
  %210 = phi i32 [ 334496799, %.lr.ph ], [ 385878547, %206 ]
  %cfg_DiffPhi59 = phi i32 [ 82841100, %.lr.ph ], [ %225, %206 ]
  %211 = phi i32 [ 82841100, %.lr.ph ], [ %225, %206 ]
  %icmpEq388 = icmp eq i32 %cfg_DiffPhi59, %211
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %icmpEq386 = icmp eq i32 %cfg_DestPhi58, %210
  %212 = icmp eq i32 %210, %210
  %icmpEq390 = icmp eq i1 %icmpEq386, %212
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  %icmpEq384 = icmp eq i64 %.02737, %209
  %zext385 = zext i1 %icmpEq384 to i32
  %213 = zext i1 %icmpEq384 to i32
  %icmpEq392 = icmp eq i32 %zext385, %213
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  call void @assert_ft(i32 %zext385, i32 35)
  %icmpEq382 = icmp eq i64 %.02638, %208
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  %icmpEq380 = icmp eq i64 %.02539, %207
  %214 = icmp eq i64 %207, %207
  %icmpEq394 = icmp eq i1 %icmpEq380, %214
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %215 = xor i32 %cfg_DestPhi58, %cfg_DiffPhi59
  %cfg_icmpEq60 = icmp eq i32 %215, 385878547
  %216 = icmp eq i32 %215, 385878547
  %icmpEq396 = icmp eq i1 %cfg_icmpEq60, %216
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %cfg_zext61 = zext i1 %cfg_icmpEq60 to i32
  call void @assert_cfg_ft(i32 %cfg_zext61, i32 %215, i32 35)
  %217 = tail call i32 %204(i64 noundef %.02539) #17
  %218 = sext i32 %217 to i64
  %219 = sext i32 %217 to i64
  %icmpEq398 = icmp eq i64 %218, %219
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %220 = add nsw i64 %.02638, %218
  %221 = add nuw nsw i64 %.02737, 1
  %222 = add nsw i64 %.02539, 13
  %exitcond.not = icmp eq i64 %221, %67
  %223 = icmp eq i64 %221, %68
  %icmpEq400 = icmp eq i1 %exitcond.not, %223
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  %224 = select i1 %exitcond.not, i32 437260814, i32 385878547
  %225 = xor i32 385878547, %224
  br i1 %exitcond.not, label %._crit_edge, label %206

._crit_edge:                                      ; preds = %206, %75
  %.026.lcssa = phi i64 [ 0, %75 ], [ %220, %206 ]
  %226 = phi i64 [ 0, %75 ], [ %220, %206 ]
  %cfg_DestPhi62 = phi i32 [ 385878547, %206 ], [ 283117588, %75 ]
  %227 = phi i32 [ 385878547, %206 ], [ 283117588, %75 ]
  %cfg_DiffPhi63 = phi i32 [ %225, %206 ], [ %193, %75 ]
  %228 = phi i32 [ %225, %206 ], [ %194, %75 ]
  %icmpEq406 = icmp eq i32 %cfg_DiffPhi63, %228
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  %icmpEq404 = icmp eq i32 %cfg_DestPhi62, %227
  %229 = icmp eq i32 %227, %227
  %icmpEq408 = icmp eq i1 %icmpEq404, %229
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  %icmpEq402 = icmp eq i64 %.026.lcssa, %226
  %zext403 = zext i1 %icmpEq402 to i32
  %230 = zext i1 %icmpEq402 to i32
  %icmpEq410 = icmp eq i32 %zext403, %230
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  call void @assert_ft(i32 %zext403, i32 35)
  %231 = xor i32 %cfg_DestPhi62, %cfg_DiffPhi63
  %cfg_icmpEq64 = icmp eq i32 %231, 437260814
  %cfg_zext65 = zext i1 %cfg_icmpEq64 to i32
  %232 = zext i1 %cfg_icmpEq64 to i32
  %icmpEq412 = icmp eq i32 %cfg_zext65, %232
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext65, i32 %231, i32 35)
  %233 = tail call i64 @clock() #17
  %234 = sub nsw i64 %233, %186
  %235 = sitofp i64 %234 to double
  %236 = sitofp i64 %234 to double
  %237 = fdiv double %235, 1.000000e+06
  %238 = fdiv double %236, 1.000000e+06
  %239 = fcmp olt double %237, %.044
  %240 = fcmp olt double %238, %82
  %icmpEq414 = icmp eq i1 %239, %240
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  %241 = trunc i64 %indvars.iv to i32
  %.131 = select i1 %239, i32 %241, i32 %.03042
  %.1 = select i1 %239, double %237, double %.044
  %242 = fcmp ogt double %237, %.03340
  %243 = fcmp ogt double %238, %103
  %icmpEq416 = icmp eq i1 %242, %243
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %.134 = select i1 %242, double %237, double %.03340
  %.129 = select i1 %242, i32 %241, i32 %.02843
  %244 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %indvars.iv
  %245 = load ptr, ptr %244, align 8
  %246 = load ptr, ptr %244, align 8
  %247 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %245, double noundef %237, i64 noundef %.026.lcssa)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %248 = add nuw nsw i64 %76, 1
  %icmpEq418 = icmp eq i64 %indvars.iv.next, %248
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  %exitcond45.not = icmp eq i64 %indvars.iv.next, 7
  %249 = select i1 %exitcond45.not, i32 488638728, i32 283117588
  %250 = xor i32 437260814, %249
  br i1 %exitcond45.not, label %251, label %75

251:                                              ; preds = %._crit_edge
  %cfg_DestPhi66 = phi i32 [ 437260814, %._crit_edge ]
  %252 = phi i32 [ 437260814, %._crit_edge ]
  %cfg_DiffPhi67 = phi i32 [ %250, %._crit_edge ]
  %253 = phi i32 [ %250, %._crit_edge ]
  %icmpEq422 = icmp eq i32 %cfg_DiffPhi67, %253
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %icmpEq420 = icmp eq i32 %cfg_DestPhi66, %252
  %254 = icmp eq i32 %252, %252
  %icmpEq424 = icmp eq i1 %icmpEq420, %254
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  %255 = xor i32 %cfg_DestPhi66, %cfg_DiffPhi67
  %cfg_icmpEq68 = icmp eq i32 %255, 488638728
  %256 = icmp eq i32 %255, 488638728
  %icmpEq426 = icmp eq i1 %cfg_icmpEq68, %256
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  %cfg_zext69 = zext i1 %cfg_icmpEq68 to i32
  call void @assert_cfg_ft(i32 %cfg_zext69, i32 %255, i32 35)
  %257 = sext i32 %.131 to i64
  %258 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %257
  %259 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %257
  %260 = load ptr, ptr %258, align 8
  %261 = load ptr, ptr %259, align 8
  %262 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %260)
  %263 = sext i32 %.129 to i64
  %264 = sext i32 %.129 to i64
  %icmpEq428 = icmp eq i64 %263, %264
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %265 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %263
  %266 = load ptr, ptr %265, align 8
  %267 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %266)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define internal i32 @bit_shifter(i64 noundef %0) #0 {
  %.not = icmp eq i64 %0, 0
  %2 = icmp eq i64 %0, 0
  %icmpEq = icmp eq i1 %.not, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = select i1 %.not, i32 231735821, i32 180358159
  %4 = xor i32 128975389, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %1
  %.011 = phi i32 [ %42, %.lr.ph ], [ 0, %1 ]
  %5 = phi i32 [ %43, %.lr.ph ], [ 0, %1 ]
  %6 = phi i32 [ %43, %.lr.ph ], [ 0, %1 ]
  %.0710 = phi i32 [ %44, %.lr.ph ], [ 0, %1 ]
  %7 = phi i32 [ %44, %.lr.ph ], [ 0, %1 ]
  %8 = phi i32 [ %44, %.lr.ph ], [ 0, %1 ]
  %9 = phi i32 [ %44, %.lr.ph ], [ 0, %1 ]
  %.089 = phi i64 [ %45, %.lr.ph ], [ %0, %1 ]
  %10 = phi i64 [ %45, %.lr.ph ], [ %0, %1 ]
  %11 = phi i64 [ %45, %.lr.ph ], [ %0, %1 ]
  %12 = phi i64 [ %45, %.lr.ph ], [ %0, %1 ]
  %cfg_DestPhi = phi i32 [ 128975389, %1 ], [ 180358159, %.lr.ph ]
  %13 = phi i32 [ 128975389, %1 ], [ 180358159, %.lr.ph ]
  %14 = phi i32 [ 128975389, %1 ], [ 180358159, %.lr.ph ]
  %15 = phi i32 [ 128975389, %1 ], [ 180358159, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %4, %1 ], [ %53, %.lr.ph ]
  %16 = phi i32 [ %4, %1 ], [ %54, %.lr.ph ]
  %17 = phi i32 [ %4, %1 ], [ %53, %.lr.ph ]
  %18 = phi i32 [ %4, %1 ], [ %54, %.lr.ph ]
  %icmpEq56 = icmp eq i32 %17, %18
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %icmpEq54 = icmp eq i32 %cfg_DiffPhi, %16
  %19 = icmp eq i32 %16, %16
  %icmpEq58 = icmp eq i1 %icmpEq54, %19
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq52 = icmp eq i32 %14, %15
  %zext53 = zext i1 %icmpEq52 to i32
  %20 = zext i1 %icmpEq52 to i32
  %icmpEq60 = icmp eq i32 %zext53, %20
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %cfg_DestPhi, %13
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i64 %11, %12
  %21 = icmp eq i64 %12, %12
  %icmpEq62 = icmp eq i1 %icmpEq48, %21
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %icmpEq46 = icmp eq i64 %.089, %10
  %zext47 = zext i1 %icmpEq46 to i32
  %22 = zext i1 %icmpEq46 to i32
  %icmpEq64 = icmp eq i32 %zext47, %22
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq44 = icmp eq i32 %8, %9
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq42 = icmp eq i32 %.0710, %7
  %23 = icmp eq i32 %7, %7
  %icmpEq66 = icmp eq i1 %icmpEq42, %23
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %5, %6
  %zext41 = zext i1 %icmpEq40 to i32
  %24 = zext i1 %icmpEq40 to i32
  %icmpEq68 = icmp eq i32 %zext41, %24
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq24 = icmp eq i32 %cfg_DiffPhi, %17
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %icmpEq22 = icmp eq i32 %cfg_DestPhi, %14
  %25 = icmp eq i32 %13, %15
  %icmpEq70 = icmp eq i1 %icmpEq22, %25
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %26 = icmp eq i32 %cfg_DestPhi, %14
  %icmpEq26 = icmp eq i1 %icmpEq22, %26
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %zext23 = zext i1 %icmpEq22 to i32
  %27 = zext i1 %25 to i32
  %icmpEq72 = icmp eq i32 %zext23, %27
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  call void @assert_ft(i32 %zext23, i32 35)
  %icmpEq20 = icmp eq i64 %.089, %11
  %zext21 = zext i1 %icmpEq20 to i32
  %28 = zext i1 %icmpEq20 to i32
  %29 = zext i1 %icmpEq20 to i32
  %icmpEq74 = icmp eq i32 %28, %29
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq28 = icmp eq i32 %zext21, %28
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  call void @assert_ft(i32 %zext21, i32 35)
  %icmpEq18 = icmp eq i32 %.0710, %8
  %30 = icmp eq i32 %7, %9
  %icmpEq76 = icmp eq i1 %icmpEq18, %30
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %.011, %5
  %31 = icmp eq i32 %5, %6
  %32 = icmp eq i32 %5, %6
  %icmpEq78 = icmp eq i1 %31, %32
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq30 = icmp eq i1 %icmpEq16, %31
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  %33 = zext i1 %31 to i32
  %icmpEq80 = icmp eq i32 %zext17, %33
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  call void @assert_ft(i32 %zext17, i32 35)
  %34 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %34, 180358159
  %35 = icmp eq i32 %34, 180358159
  %36 = icmp eq i32 %34, 180358159
  %icmpEq82 = icmp eq i1 %35, %36
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %icmpEq32 = icmp eq i1 %cfg_icmpEq, %35
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %37 = zext i1 %35 to i32
  %icmpEq84 = icmp eq i32 %cfg_zext, %37
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %34, i32 35)
  %38 = trunc i64 %.089 to i32
  %39 = and i32 %38, 1
  %40 = and i32 %38, 1
  %41 = and i32 %38, 1
  %icmpEq86 = icmp eq i32 %40, %41
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq34 = icmp eq i32 %39, %40
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %42 = add nuw nsw i32 %.011, %39
  %43 = add nuw nsw i32 %5, %40
  %icmpEq88 = icmp eq i32 %42, %43
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %44 = add nuw nsw i32 %.0710, 1
  %45 = ashr i64 %.089, 1
  %46 = icmp ugt i64 %.089, 1
  %47 = icmp ugt i64 %10, 1
  %48 = icmp ugt i64 %10, 1
  %icmpEq90 = icmp eq i1 %47, %48
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq36 = icmp eq i1 %46, %47
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %49 = icmp ult i32 %.0710, 63
  %50 = icmp ult i32 %7, 63
  %icmpEq92 = icmp eq i1 %49, %50
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %51 = select i1 %46, i1 %49, i1 false
  %52 = select i1 %51, i32 180358159, i32 231735821
  %53 = xor i32 180358159, %52
  %54 = xor i32 180358159, %52
  %55 = xor i32 180358159, %52
  %icmpEq94 = icmp eq i32 %54, %55
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq38 = icmp eq i32 %53, %54
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  br i1 %51, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %42, %.lr.ph ]
  %56 = phi i32 [ 0, %1 ], [ %43, %.lr.ph ]
  %57 = phi i32 [ 0, %1 ], [ %42, %.lr.ph ]
  %58 = phi i32 [ 0, %1 ], [ %43, %.lr.ph ]
  %cfg_DestPhi12 = phi i32 [ 180358159, %.lr.ph ], [ 128975389, %1 ]
  %59 = phi i32 [ 180358159, %.lr.ph ], [ 128975389, %1 ]
  %60 = phi i32 [ 180358159, %.lr.ph ], [ 128975389, %1 ]
  %61 = phi i32 [ 180358159, %.lr.ph ], [ 128975389, %1 ]
  %cfg_DiffPhi13 = phi i32 [ %53, %.lr.ph ], [ %4, %1 ]
  %62 = phi i32 [ %54, %.lr.ph ], [ %4, %1 ]
  %63 = phi i32 [ %53, %.lr.ph ], [ %4, %1 ]
  %64 = phi i32 [ %54, %.lr.ph ], [ %4, %1 ]
  %icmpEq118 = icmp eq i32 %63, %64
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %icmpEq116 = icmp eq i32 %cfg_DiffPhi13, %62
  %65 = icmp eq i32 %62, %62
  %icmpEq120 = icmp eq i1 %icmpEq116, %65
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %60, %61
  %zext115 = zext i1 %icmpEq114 to i32
  %66 = zext i1 %icmpEq114 to i32
  %icmpEq122 = icmp eq i32 %zext115, %66
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq112 = icmp eq i32 %cfg_DestPhi12, %59
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq110 = icmp eq i32 %57, %58
  %67 = icmp eq i32 %58, %58
  %icmpEq124 = icmp eq i1 %icmpEq110, %67
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %icmpEq108 = icmp eq i32 %.0.lcssa, %56
  %zext109 = zext i1 %icmpEq108 to i32
  %68 = zext i1 %icmpEq108 to i32
  %icmpEq126 = icmp eq i32 %zext109, %68
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  call void @assert_ft(i32 %zext109, i32 35)
  %icmpEq100 = icmp eq i32 %cfg_DiffPhi13, %63
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %icmpEq98 = icmp eq i32 %cfg_DestPhi12, %60
  %69 = icmp eq i32 %59, %61
  %icmpEq128 = icmp eq i1 %icmpEq98, %69
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %70 = icmp eq i32 %cfg_DestPhi12, %60
  %icmpEq102 = icmp eq i1 %icmpEq98, %70
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %zext99 = zext i1 %icmpEq98 to i32
  %71 = zext i1 %69 to i32
  %icmpEq130 = icmp eq i32 %zext99, %71
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq96 = icmp eq i32 %.0.lcssa, %57
  %zext97 = zext i1 %icmpEq96 to i32
  %72 = zext i1 %icmpEq96 to i32
  %73 = zext i1 %icmpEq96 to i32
  %icmpEq132 = icmp eq i32 %72, %73
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %icmpEq104 = icmp eq i32 %zext97, %72
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  call void @assert_ft(i32 %zext97, i32 35)
  %74 = xor i32 %cfg_DestPhi12, %cfg_DiffPhi13
  %75 = xor i32 %59, %62
  %icmpEq134 = icmp eq i32 %74, %75
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %cfg_icmpEq14 = icmp eq i32 %74, 231735821
  %cfg_zext15 = zext i1 %cfg_icmpEq14 to i32
  %76 = zext i1 %cfg_icmpEq14 to i32
  %icmpEq106 = icmp eq i32 %cfg_zext15, %76
  %77 = icmp eq i32 %76, %76
  %icmpEq136 = icmp eq i1 %icmpEq106, %77
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext15, i32 %74, i32 35)
  ret i32 %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @bfopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18
  %4 = icmp eq ptr %3, null
  %5 = icmp eq ptr %3, null
  %icmpEq = icmp eq i1 %4, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = select i1 %4, i32 334496290, i32 180356101
  %7 = xor i32 128975641, %6
  br i1 %4, label %34, label %8

8:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975641, %2 ]
  %9 = phi i32 [ 128975641, %2 ]
  %cfg_DiffPhi = phi i32 [ %7, %2 ]
  %10 = phi i32 [ %7, %2 ]
  %icmpEq25 = icmp eq i32 %cfg_DiffPhi, %10
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq23 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq27 = icmp eq i1 %icmpEq23, %11
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %12 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %12, 180356101
  %13 = icmp eq i32 %12, 180356101
  %icmpEq29 = icmp eq i1 %cfg_icmpEq, %13
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %12, i32 35)
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  store ptr %14, ptr %3, align 8
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %14, null
  %icmpEq31 = icmp eq i1 %15, %16
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %17 = select i1 %15, i32 231735821, i32 283116831
  %18 = xor i32 180356101, %17
  br i1 %15, label %19, label %25

19:                                               ; preds = %8
  %cfg_DestPhi11 = phi i32 [ 180356101, %8 ]
  %20 = phi i32 [ 180356101, %8 ]
  %cfg_DiffPhi12 = phi i32 [ %18, %8 ]
  %21 = phi i32 [ %18, %8 ]
  %icmpEq35 = icmp eq i32 %cfg_DiffPhi12, %21
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %icmpEq33 = icmp eq i32 %cfg_DestPhi11, %20
  %22 = icmp eq i32 %20, %20
  %icmpEq37 = icmp eq i1 %icmpEq33, %22
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %23 = xor i32 %cfg_DestPhi11, %cfg_DiffPhi12
  %cfg_icmpEq13 = icmp eq i32 %23, 231735821
  %24 = icmp eq i32 %23, 231735821
  %icmpEq39 = icmp eq i1 %cfg_icmpEq13, %24
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %cfg_zext14 = zext i1 %cfg_icmpEq13 to i32
  call void @assert_cfg_ft(i32 %cfg_zext14, i32 %23, i32 35)
  tail call void @free(ptr noundef nonnull %3) #17
  br label %34

25:                                               ; preds = %8
  %cfg_DestPhi15 = phi i32 [ 180356101, %8 ]
  %26 = phi i32 [ 180356101, %8 ]
  %cfg_DiffPhi16 = phi i32 [ %18, %8 ]
  %27 = phi i32 [ %18, %8 ]
  %icmpEq43 = icmp eq i32 %cfg_DiffPhi16, %27
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq41 = icmp eq i32 %cfg_DestPhi15, %26
  %28 = icmp eq i32 %26, %26
  %icmpEq45 = icmp eq i1 %icmpEq41, %28
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %29 = xor i32 %cfg_DestPhi15, %cfg_DiffPhi16
  %cfg_icmpEq17 = icmp eq i32 %29, 283116831
  %30 = icmp eq i32 %29, 283116831
  %icmpEq47 = icmp eq i1 %cfg_icmpEq17, %30
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %cfg_zext18 = zext i1 %cfg_icmpEq17 to i32
  call void @assert_cfg_ft(i32 %cfg_zext18, i32 %29, i32 35)
  %31 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 2
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  %33 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  store i8 0, ptr %32, align 1
  br label %34

34:                                               ; preds = %25, %19, %2
  %.0 = phi ptr [ null, %19 ], [ %3, %25 ], [ null, %2 ]
  %35 = phi ptr [ null, %19 ], [ %3, %25 ], [ null, %2 ]
  %cfg_DestPhi19 = phi i32 [ 128975641, %2 ], [ 283116831, %25 ], [ 231735821, %19 ]
  %36 = phi i32 [ 128975641, %2 ], [ 283116831, %25 ], [ 231735821, %19 ]
  %cfg_DiffPhi20 = phi i32 [ %7, %2 ], [ 51382077, %25 ], [ 505413679, %19 ]
  %37 = phi i32 [ %7, %2 ], [ 51382077, %25 ], [ 505413679, %19 ]
  %icmpEq51 = icmp eq i32 %cfg_DiffPhi20, %37
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i32 %cfg_DestPhi19, %36
  %38 = icmp eq i32 %36, %36
  %icmpEq53 = icmp eq i1 %icmpEq49, %38
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %39 = xor i32 %cfg_DestPhi19, %cfg_DiffPhi20
  %cfg_icmpEq21 = icmp eq i32 %39, 334496290
  %40 = icmp eq i32 %39, 334496290
  %icmpEq55 = icmp eq i1 %cfg_icmpEq21, %40
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %cfg_zext22 = zext i1 %cfg_icmpEq21 to i32
  call void @assert_cfg_ft(i32 %cfg_zext22, i32 %39, i32 35)
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @bfread(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %2, align 1
  %5 = load i8, ptr %3, align 1
  %icmpEq = icmp eq i8 %4, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = icmp eq i8 %4, 0
  %7 = select i1 %6, i32 231736834, i32 180356101
  %8 = xor i32 128975893, %7
  br i1 %6, label %58, label %._crit_edge

._crit_edge:                                      ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975893, %1 ]
  %9 = phi i32 [ 128975893, %1 ]
  %10 = phi i32 [ 128975893, %1 ]
  %11 = phi i32 [ 128975893, %1 ]
  %12 = phi i32 [ 128975893, %1 ]
  %13 = phi i32 [ 128975893, %1 ]
  %14 = phi i32 [ 128975893, %1 ]
  %cfg_DiffPhi = phi i32 [ %8, %1 ]
  %15 = phi i32 [ %8, %1 ]
  %16 = phi i32 [ %8, %1 ]
  %17 = phi i32 [ %8, %1 ]
  %18 = phi i32 [ %8, %1 ]
  %19 = phi i32 [ %8, %1 ]
  %20 = phi i32 [ %8, %1 ]
  %21 = phi i32 [ %8, %1 ]
  %icmpEq63 = icmp eq i32 %20, %21
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq61 = icmp eq i32 %18, %19
  %22 = icmp eq i32 %19, %19
  %icmpEq65 = icmp eq i1 %icmpEq61, %22
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq59 = icmp eq i32 %16, %17
  %zext60 = zext i1 %icmpEq59 to i32
  %23 = zext i1 %icmpEq59 to i32
  %icmpEq67 = icmp eq i32 %zext60, %23
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq57 = icmp eq i32 %cfg_DiffPhi, %15
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i32 %13, %14
  %24 = icmp eq i32 %14, %14
  %icmpEq69 = icmp eq i1 %icmpEq55, %24
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i32 %11, %12
  %zext54 = zext i1 %icmpEq53 to i32
  %25 = zext i1 %icmpEq53 to i32
  %icmpEq71 = icmp eq i32 %zext54, %25
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  call void @assert_ft(i32 %zext54, i32 35)
  %icmpEq51 = icmp eq i32 %9, %10
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq31 = icmp eq i32 %18, %20
  %26 = icmp eq i32 %19, %21
  %icmpEq73 = icmp eq i1 %icmpEq31, %26
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %icmpEq29 = icmp eq i32 %cfg_DiffPhi, %16
  %27 = icmp eq i32 %15, %17
  %28 = icmp eq i32 %15, %17
  %icmpEq75 = icmp eq i1 %27, %28
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %icmpEq33 = icmp eq i1 %icmpEq29, %27
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %zext30 = zext i1 %icmpEq29 to i32
  %29 = zext i1 %27 to i32
  %icmpEq77 = icmp eq i32 %zext30, %29
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq27 = icmp eq i32 %11, %13
  %zext28 = zext i1 %icmpEq27 to i32
  %30 = zext i1 %icmpEq27 to i32
  %31 = zext i1 %icmpEq27 to i32
  %icmpEq79 = icmp eq i32 %30, %31
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq35 = icmp eq i32 %zext28, %30
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq25 = icmp eq i32 %cfg_DestPhi, %9
  %32 = icmp eq i32 %9, %10
  %icmpEq81 = icmp eq i1 %icmpEq25, %32
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq17 = icmp eq i32 %cfg_DiffPhi, %18
  %33 = icmp eq i32 %15, %19
  %34 = icmp eq i32 %15, %19
  %icmpEq83 = icmp eq i1 %33, %34
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %icmpEq37 = icmp eq i1 %icmpEq17, %33
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %zext18 = zext i1 %icmpEq17 to i32
  %35 = zext i1 %33 to i32
  %icmpEq85 = icmp eq i32 %zext18, %35
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  call void @assert_ft(i32 %zext18, i32 35)
  %icmpEq15 = icmp eq i32 %cfg_DestPhi, %11
  %36 = icmp eq i32 %9, %12
  %37 = icmp eq i32 %9, %12
  %38 = icmp eq i32 %9, %12
  %icmpEq87 = icmp eq i1 %37, %38
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq39 = icmp eq i1 %36, %37
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq19 = icmp eq i1 %icmpEq15, %36
  %39 = icmp eq i1 %36, %37
  %icmpEq89 = icmp eq i1 %icmpEq19, %39
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %zext16 = zext i1 %icmpEq15 to i32
  %40 = zext i1 %36 to i32
  %41 = zext i1 %36 to i32
  %icmpEq91 = icmp eq i32 %40, %41
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %icmpEq41 = icmp eq i32 %zext16, %40
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  call void @assert_ft(i32 %zext16, i32 35)
  %42 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %43 = xor i32 %9, %15
  %icmpEq93 = icmp eq i32 %42, %43
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %cfg_icmpEq = icmp eq i32 %42, 180356101
  %44 = icmp eq i32 %43, 180356101
  %45 = icmp eq i32 %43, 180356101
  %icmpEq43 = icmp eq i1 %44, %45
  %46 = icmp eq i1 %45, %45
  %icmpEq95 = icmp eq i1 %icmpEq43, %46
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq21 = icmp eq i1 %cfg_icmpEq, %44
  %zext22 = zext i1 %icmpEq21 to i32
  %47 = zext i1 %icmpEq21 to i32
  %icmpEq97 = icmp eq i32 %zext22, %47
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  call void @assert_ft(i32 %zext22, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %48 = zext i1 %44 to i32
  %icmpEq45 = icmp eq i32 %cfg_zext, %48
  %49 = icmp eq i32 %48, %48
  %icmpEq99 = icmp eq i1 %icmpEq45, %49
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %42, i32 35)
  %.phi.trans.insert = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %51 = load i8, ptr %50, align 8
  %icmpEq101 = icmp eq i8 %.pre, %51
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %52 = load i8, ptr %.phi.trans.insert, align 8
  %53 = load i8, ptr %50, align 8
  %icmpEq47 = icmp eq i8 %52, %53
  %zext48 = zext i1 %icmpEq47 to i32
  %54 = zext i1 %icmpEq47 to i32
  %icmpEq103 = icmp eq i32 %zext48, %54
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq23 = icmp eq i8 %.pre, %52
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %55 = add i8 %4, -1
  %56 = add i8 %5, -1
  %icmpEq105 = icmp eq i8 %55, %56
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %57 = add i8 %4, -1
  %icmpEq49 = icmp eq i8 %55, %57
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  br label %69

58:                                               ; preds = %1
  %cfg_DestPhi7 = phi i32 [ 128975893, %1 ]
  %59 = phi i32 [ 128975893, %1 ]
  %cfg_DiffPhi8 = phi i32 [ %8, %1 ]
  %60 = phi i32 [ %8, %1 ]
  %icmpEq109 = icmp eq i32 %cfg_DiffPhi8, %60
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i32 %cfg_DestPhi7, %59
  %61 = icmp eq i32 %59, %59
  %icmpEq111 = icmp eq i1 %icmpEq107, %61
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %62 = xor i32 %cfg_DestPhi7, %cfg_DiffPhi8
  %cfg_icmpEq9 = icmp eq i32 %62, 231736834
  %63 = icmp eq i32 %62, 231736834
  %icmpEq113 = icmp eq i1 %cfg_icmpEq9, %63
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %cfg_zext10 = zext i1 %cfg_icmpEq9 to i32
  call void @assert_cfg_ft(i32 %cfg_zext10, i32 %62, i32 35)
  %64 = load ptr, ptr %0, align 8
  %65 = tail call i32 @fgetc(ptr noundef %64)
  %66 = trunc i32 %65 to i8
  %67 = trunc i32 %65 to i8
  %icmpEq115 = icmp eq i8 %66, %67
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %68 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  store i8 %66, ptr %68, align 8
  br label %69

69:                                               ; preds = %58, %._crit_edge
  %70 = phi i8 [ %66, %58 ], [ %.pre, %._crit_edge ]
  %71 = phi i8 [ %67, %58 ], [ %51, %._crit_edge ]
  %72 = phi i8 [ 7, %58 ], [ %55, %._crit_edge ]
  %73 = phi i8 [ 7, %58 ], [ %56, %._crit_edge ]
  %cfg_DestPhi11 = phi i32 [ 180356101, %._crit_edge ], [ 231736834, %58 ]
  %74 = phi i32 [ 180356101, %._crit_edge ], [ 231736834, %58 ]
  %cfg_DiffPhi12 = phi i32 [ 438307857, %._crit_edge ], [ 489688598, %58 ]
  %75 = phi i32 [ 438307857, %._crit_edge ], [ 489688598, %58 ]
  %icmpEq123 = icmp eq i32 %cfg_DiffPhi12, %75
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %icmpEq121 = icmp eq i32 %cfg_DestPhi11, %74
  %76 = icmp eq i32 %74, %74
  %icmpEq125 = icmp eq i1 %icmpEq121, %76
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i8 %72, %73
  %zext120 = zext i1 %icmpEq119 to i32
  %77 = zext i1 %icmpEq119 to i32
  %icmpEq127 = icmp eq i32 %zext120, %77
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  call void @assert_ft(i32 %zext120, i32 35)
  %icmpEq117 = icmp eq i8 %70, %71
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %78 = xor i32 %cfg_DestPhi11, %cfg_DiffPhi12
  %79 = xor i32 %74, %75
  %icmpEq129 = icmp eq i32 %78, %79
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %cfg_icmpEq13 = icmp eq i32 %78, 283117588
  %cfg_zext14 = zext i1 %cfg_icmpEq13 to i32
  call void @assert_cfg_ft(i32 %cfg_zext14, i32 %78, i32 35)
  store i8 %72, ptr %2, align 1
  %80 = sext i8 %70 to i32
  %81 = sext i8 %71 to i32
  %icmpEq131 = icmp eq i32 %80, %81
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %82 = zext i8 %72 to i32
  %83 = lshr i32 %80, %82
  %84 = and i32 %83, 1
  ret i32 %84
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @bfwrite(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %4 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %5 = load i8, ptr %3, align 1
  %6 = load i8, ptr %4, align 1
  %icmpEq = icmp eq i8 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = icmp eq i8 %5, 8
  %8 = select i1 %7, i32 180356634, i32 231738128
  %9 = xor i32 128975893, %8
  br i1 %7, label %10, label %22

10:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975893, %2 ]
  %11 = phi i32 [ 128975893, %2 ]
  %cfg_DiffPhi = phi i32 [ %9, %2 ]
  %12 = phi i32 [ %9, %2 ]
  %icmpEq13 = icmp eq i32 %cfg_DiffPhi, %12
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %icmpEq11 = icmp eq i32 %cfg_DestPhi, %11
  %13 = icmp eq i32 %11, %11
  %icmpEq15 = icmp eq i1 %icmpEq11, %13
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %14 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %14, 180356634
  %15 = icmp eq i32 %14, 180356634
  %icmpEq17 = icmp eq i1 %cfg_icmpEq, %15
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %14, i32 35)
  %16 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %17 = load i8, ptr %16, align 2
  %18 = load i8, ptr %16, align 2
  %icmpEq19 = icmp eq i8 %17, %18
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %19 = sext i8 %17 to i32
  %20 = load ptr, ptr %1, align 8
  %21 = tail call i32 @fputc(i32 noundef %19, ptr noundef %20)
  br label %22

22:                                               ; preds = %10, %2
  %23 = phi i8 [ 0, %10 ], [ %5, %2 ]
  %24 = phi i8 [ 0, %10 ], [ %6, %2 ]
  %25 = phi i8 [ 0, %10 ], [ %5, %2 ]
  %26 = phi i8 [ 0, %10 ], [ %6, %2 ]
  %cfg_DestPhi7 = phi i32 [ 180356634, %10 ], [ 128975893, %2 ]
  %27 = phi i32 [ 180356634, %10 ], [ 128975893, %2 ]
  %28 = phi i32 [ 180356634, %10 ], [ 128975893, %2 ]
  %29 = phi i32 [ 180356634, %10 ], [ 128975893, %2 ]
  %cfg_DiffPhi8 = phi i32 [ 118492426, %10 ], [ %9, %2 ]
  %30 = phi i32 [ 118492426, %10 ], [ %9, %2 ]
  %31 = phi i32 [ 118492426, %10 ], [ %9, %2 ]
  %32 = phi i32 [ 118492426, %10 ], [ %9, %2 ]
  %icmpEq47 = icmp eq i32 %31, %32
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq45 = icmp eq i32 %cfg_DiffPhi8, %30
  %33 = icmp eq i32 %30, %30
  %icmpEq49 = icmp eq i1 %icmpEq45, %33
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %icmpEq43 = icmp eq i32 %28, %29
  %zext44 = zext i1 %icmpEq43 to i32
  %34 = zext i1 %icmpEq43 to i32
  %icmpEq51 = icmp eq i32 %zext44, %34
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq41 = icmp eq i32 %cfg_DestPhi7, %27
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %icmpEq39 = icmp eq i8 %25, %26
  %35 = icmp eq i8 %26, %26
  %icmpEq53 = icmp eq i1 %icmpEq39, %35
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq37 = icmp eq i8 %23, %24
  %zext38 = zext i1 %icmpEq37 to i32
  %36 = zext i1 %icmpEq37 to i32
  %icmpEq55 = icmp eq i32 %zext38, %36
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  call void @assert_ft(i32 %zext38, i32 35)
  %icmpEq25 = icmp eq i32 %cfg_DiffPhi8, %31
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq23 = icmp eq i32 %cfg_DestPhi7, %28
  %37 = icmp eq i32 %27, %29
  %icmpEq57 = icmp eq i1 %icmpEq23, %37
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %38 = icmp eq i32 %cfg_DestPhi7, %28
  %icmpEq27 = icmp eq i1 %icmpEq23, %38
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %zext24 = zext i1 %icmpEq23 to i32
  %39 = zext i1 %37 to i32
  %icmpEq59 = icmp eq i32 %zext24, %39
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  call void @assert_ft(i32 %zext24, i32 35)
  %icmpEq21 = icmp eq i8 %23, %25
  %zext22 = zext i1 %icmpEq21 to i32
  %40 = zext i1 %icmpEq21 to i32
  %41 = zext i1 %icmpEq21 to i32
  %icmpEq61 = icmp eq i32 %40, %41
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq29 = icmp eq i32 %zext22, %40
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  call void @assert_ft(i32 %zext22, i32 35)
  %42 = xor i32 %cfg_DestPhi7, %cfg_DiffPhi8
  %43 = xor i32 %27, %30
  %icmpEq63 = icmp eq i32 %42, %43
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %cfg_icmpEq9 = icmp eq i32 %42, 231738128
  %cfg_zext10 = zext i1 %cfg_icmpEq9 to i32
  %44 = zext i1 %cfg_icmpEq9 to i32
  %icmpEq31 = icmp eq i32 %cfg_zext10, %44
  %45 = icmp eq i32 %44, %44
  %icmpEq65 = icmp eq i1 %icmpEq31, %45
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext10, i32 %42, i32 35)
  %46 = add i8 %23, 1
  %47 = add i8 %24, 1
  %icmpEq67 = icmp eq i8 %46, %47
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  store i8 %46, ptr %3, align 1
  %48 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %49 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %50 = load i8, ptr %48, align 2
  %51 = load i8, ptr %49, align 2
  %icmpEq69 = icmp eq i8 %50, %51
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %52 = load i8, ptr %48, align 2
  %icmpEq33 = icmp eq i8 %50, %52
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %53 = shl i8 %50, 1
  %54 = shl i8 %51, 1
  %icmpEq71 = icmp eq i8 %53, %54
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %55 = trunc i32 %0 to i8
  %56 = and i8 %55, 1
  %57 = or i8 %53, %56
  %58 = or i8 %54, %56
  %59 = or i8 %54, %56
  %icmpEq73 = icmp eq i8 %58, %59
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %icmpEq35 = icmp eq i8 %57, %58
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  store i8 %57, ptr %48, align 2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfclose(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @fclose(ptr noundef %2)
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @bitstring(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  %5 = ashr i32 %2, 2
  %6 = ashr i32 %2, 2
  %7 = ashr i32 %2, 2
  %icmpEq69 = icmp eq i32 %6, %7
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq57 = icmp eq i32 %5, %6
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %8 = ashr i32 %2, 2
  %9 = ashr i32 %2, 2
  %icmpEq71 = icmp eq i32 %8, %9
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %icmpEq = icmp eq i32 %5, %8
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %10 = and i32 %2, 3
  %11 = and i32 %2, 3
  %icmpEq73 = icmp eq i32 %10, %11
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %12 = and i32 %2, 3
  %icmpEq59 = icmp eq i32 %10, %12
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %.not = icmp eq i32 %10, 0
  %13 = icmp eq i32 %11, 0
  %icmpEq75 = icmp eq i1 %.not, %13
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %.neg.neg28 = zext i1 %.not to i32
  %14 = add i32 %5, %2
  %15 = add i32 %6, %2
  %16 = add i32 %6, %2
  %17 = add i32 %6, %2
  %icmpEq77 = icmp eq i32 %16, %17
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq61 = icmp eq i32 %15, %16
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq53 = icmp eq i32 %14, %15
  %18 = icmp eq i32 %15, %16
  %icmpEq79 = icmp eq i1 %icmpEq53, %18
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %.neg22 = sub i32 %3, %14
  %19 = sub i32 %3, %15
  %20 = sub i32 %3, %15
  %icmpEq81 = icmp eq i32 %19, %20
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq63 = icmp eq i32 %.neg22, %19
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %21 = add i32 %.neg22, %.neg.neg28
  %22 = add i32 %19, %.neg.neg28
  %icmpEq83 = icmp eq i32 %21, %22
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %23 = icmp sgt i32 %21, 0
  %24 = select i1 %23, i32 180357130, i32 231736065
  %25 = select i1 %23, i32 180357130, i32 231736065
  %26 = select i1 %23, i32 180357130, i32 231736065
  %27 = select i1 %23, i32 180357130, i32 231736065
  %icmpEq85 = icmp eq i32 %26, %27
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq65 = icmp eq i32 %25, %26
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq55 = icmp eq i32 %24, %25
  %28 = icmp eq i32 %25, %26
  %icmpEq87 = icmp eq i1 %icmpEq55, %28
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %29 = xor i32 128977153, %24
  %30 = xor i32 128977153, %25
  %31 = xor i32 128977153, %25
  %icmpEq89 = icmp eq i32 %30, %31
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %icmpEq67 = icmp eq i32 %29, %30
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  br i1 %23, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %4
  %cfg_DestPhi = phi i32 [ 128977153, %4 ]
  %32 = phi i32 [ 128977153, %4 ]
  %cfg_DiffPhi = phi i32 [ %29, %4 ]
  %33 = phi i32 [ %30, %4 ]
  %icmpEq93 = icmp eq i32 %cfg_DiffPhi, %33
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %icmpEq91 = icmp eq i32 %cfg_DestPhi, %32
  %34 = icmp eq i32 %32, %32
  %icmpEq95 = icmp eq i1 %icmpEq91, %34
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %35 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %35, 180357130
  %36 = icmp eq i32 %35, 180357130
  %icmpEq97 = icmp eq i1 %cfg_icmpEq, %36
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %35, i32 35)
  %37 = add i32 %.neg.neg28, %3
  %38 = xor i32 %14, -1
  %39 = xor i32 %15, -1
  %icmpEq99 = icmp eq i32 %38, %39
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %40 = add i32 %37, %38
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 32, i64 %42, i1 false)
  %scevgep = getelementptr i8, ptr %0, i64 %42
  %43 = getelementptr i8, ptr %0, i64 %42
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %4
  %.0.lcssa = phi ptr [ %0, %4 ], [ %scevgep, %.lr.ph.preheader ]
  %44 = phi ptr [ %0, %4 ], [ %43, %.lr.ph.preheader ]
  %45 = phi ptr [ %0, %4 ], [ %43, %.lr.ph.preheader ]
  %46 = phi ptr [ %0, %4 ], [ %scevgep, %.lr.ph.preheader ]
  %47 = phi ptr [ %0, %4 ], [ %43, %.lr.ph.preheader ]
  %48 = phi ptr [ %0, %4 ], [ %scevgep, %.lr.ph.preheader ]
  %49 = phi ptr [ %0, %4 ], [ %43, %.lr.ph.preheader ]
  %cfg_DestPhi29 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %50 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %51 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %52 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %53 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %54 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %55 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %56 = phi i32 [ 180357130, %.lr.ph.preheader ], [ 128977153, %4 ]
  %cfg_DiffPhi30 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %29, %4 ]
  %57 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %30, %4 ]
  %58 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %29, %4 ]
  %59 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %30, %4 ]
  %60 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %29, %4 ]
  %61 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %30, %4 ]
  %62 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %29, %4 ]
  %63 = phi i32 [ 118491915, %.lr.ph.preheader ], [ %30, %4 ]
  %icmpEq151 = icmp eq i32 %62, %63
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq149 = icmp eq i32 %60, %61
  %64 = icmp eq i32 %61, %61
  %icmpEq153 = icmp eq i1 %icmpEq149, %64
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %icmpEq147 = icmp eq i32 %58, %59
  %zext148 = zext i1 %icmpEq147 to i32
  %65 = zext i1 %icmpEq147 to i32
  %icmpEq155 = icmp eq i32 %zext148, %65
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  call void @assert_ft(i32 %zext148, i32 35)
  %icmpEq145 = icmp eq i32 %cfg_DiffPhi30, %57
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %55, %56
  %66 = icmp eq i32 %56, %56
  %icmpEq157 = icmp eq i1 %icmpEq143, %66
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %53, %54
  %zext142 = zext i1 %icmpEq141 to i32
  %67 = zext i1 %icmpEq141 to i32
  %icmpEq159 = icmp eq i32 %zext142, %67
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  call void @assert_ft(i32 %zext142, i32 35)
  %icmpEq139 = icmp eq i32 %51, %52
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %icmpEq137 = icmp eq i32 %cfg_DestPhi29, %50
  %68 = icmp eq i32 %50, %50
  %icmpEq161 = icmp eq i1 %icmpEq137, %68
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %icmpEq117 = icmp eq i32 %60, %62
  %zext118 = zext i1 %icmpEq117 to i32
  %69 = zext i1 %icmpEq117 to i32
  %icmpEq163 = icmp eq i32 %zext118, %69
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  call void @assert_ft(i32 %zext118, i32 35)
  %icmpEq115 = icmp eq i32 %cfg_DiffPhi30, %58
  %70 = icmp eq i32 %57, %59
  %icmpEq119 = icmp eq i1 %icmpEq115, %70
  %71 = icmp eq i1 %70, %70
  %icmpEq165 = icmp eq i1 %icmpEq119, %71
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i32 %53, %55
  %72 = icmp eq i32 %54, %56
  %icmpEq167 = icmp eq i1 %icmpEq113, %72
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %zext114 = zext i1 %icmpEq113 to i32
  %73 = zext i1 %72 to i32
  %icmpEq121 = icmp eq i32 %zext114, %73
  %zext122 = zext i1 %icmpEq121 to i32
  %74 = zext i1 %icmpEq121 to i32
  %icmpEq169 = icmp eq i32 %zext122, %74
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  call void @assert_ft(i32 %zext122, i32 35)
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i32 %cfg_DestPhi29, %51
  %zext112 = zext i1 %icmpEq111 to i32
  %75 = zext i1 %icmpEq111 to i32
  %icmpEq171 = icmp eq i32 %zext112, %75
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  call void @assert_ft(i32 %zext112, i32 35)
  %icmpEq103 = icmp eq i32 %cfg_DiffPhi30, %60
  %76 = icmp eq i32 %57, %61
  %icmpEq123 = icmp eq i1 %icmpEq103, %76
  %77 = icmp eq i1 %76, %76
  %icmpEq173 = icmp eq i1 %icmpEq123, %77
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %icmpEq101 = icmp eq i32 %cfg_DestPhi29, %53
  %78 = icmp eq i32 %50, %54
  %icmpEq175 = icmp eq i1 %icmpEq101, %78
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %79 = icmp eq i32 %cfg_DestPhi29, %53
  %80 = icmp eq i32 %50, %54
  %icmpEq125 = icmp eq i1 %79, %80
  %zext126 = zext i1 %icmpEq125 to i32
  %81 = zext i1 %icmpEq125 to i32
  %icmpEq177 = icmp eq i32 %zext126, %81
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq105 = icmp eq i1 %icmpEq101, %79
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %zext102 = zext i1 %icmpEq101 to i32
  %82 = zext i1 %78 to i32
  %icmpEq179 = icmp eq i32 %zext102, %82
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %83 = zext i1 %icmpEq101 to i32
  %icmpEq127 = icmp eq i32 %zext102, %83
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  call void @assert_ft(i32 %zext102, i32 35)
  %84 = xor i32 %cfg_DestPhi29, %cfg_DiffPhi30
  %85 = xor i32 %50, %57
  %icmpEq181 = icmp eq i32 %84, %85
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %cfg_icmpEq31 = icmp eq i32 %84, 231736065
  %86 = icmp eq i32 %85, 231736065
  %87 = icmp eq i32 %85, 231736065
  %icmpEq129 = icmp eq i1 %86, %87
  %88 = icmp eq i1 %87, %87
  %icmpEq183 = icmp eq i1 %icmpEq129, %88
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %icmpEq107 = icmp eq i1 %cfg_icmpEq31, %86
  %zext108 = zext i1 %icmpEq107 to i32
  %89 = zext i1 %icmpEq107 to i32
  %icmpEq185 = icmp eq i32 %zext108, %89
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  call void @assert_ft(i32 %zext108, i32 35)
  %cfg_zext32 = zext i1 %cfg_icmpEq31 to i32
  %90 = zext i1 %86 to i32
  %icmpEq131 = icmp eq i32 %cfg_zext32, %90
  %91 = icmp eq i32 %90, %90
  %icmpEq187 = icmp eq i1 %icmpEq131, %91
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext32, i32 %84, i32 35)
  %92 = icmp sgt i32 %2, 0
  %93 = icmp sgt i32 %2, 0
  %icmpEq189 = icmp eq i1 %92, %93
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %94 = select i1 %92, i32 283116037, i32 488637199
  %95 = select i1 %93, i32 283116037, i32 488637199
  %96 = select i1 %93, i32 283116037, i32 488637199
  %icmpEq133 = icmp eq i32 %95, %96
  %97 = icmp eq i32 %96, %96
  %icmpEq191 = icmp eq i1 %icmpEq133, %97
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq109 = icmp eq i32 %94, %95
  %zext110 = zext i1 %icmpEq109 to i32
  %98 = zext i1 %icmpEq109 to i32
  %icmpEq193 = icmp eq i32 %zext110, %98
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  call void @assert_ft(i32 %zext110, i32 35)
  %99 = xor i32 231736065, %94
  %100 = xor i32 231736065, %95
  %icmpEq135 = icmp eq i32 %99, %100
  %101 = icmp eq i32 %100, %100
  %icmpEq195 = icmp eq i1 %icmpEq135, %101
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  br i1 %92, label %.lr.ph26.preheader, label %._crit_edge

.lr.ph26.preheader:                               ; preds = %.preheader
  %cfg_DestPhi33 = phi i32 [ 231736065, %.preheader ]
  %102 = phi i32 [ 231736065, %.preheader ]
  %cfg_DiffPhi34 = phi i32 [ %99, %.preheader ]
  %103 = phi i32 [ %100, %.preheader ]
  %icmpEq199 = icmp eq i32 %cfg_DiffPhi34, %103
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %icmpEq197 = icmp eq i32 %cfg_DestPhi33, %102
  %104 = icmp eq i32 %102, %102
  %icmpEq201 = icmp eq i1 %icmpEq197, %104
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %105 = xor i32 %cfg_DestPhi33, %cfg_DiffPhi34
  %cfg_icmpEq35 = icmp eq i32 %105, 283116037
  %106 = icmp eq i32 %105, 283116037
  %icmpEq203 = icmp eq i1 %cfg_icmpEq35, %106
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %cfg_zext36 = zext i1 %cfg_icmpEq35 to i32
  call void @assert_cfg_ft(i32 %cfg_zext36, i32 %105, i32 35)
  %107 = zext i32 %2 to i64
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %236, %.lr.ph26.preheader
  %indvars.iv = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %108 = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %109 = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %110 = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %111 = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %112 = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %113 = phi i64 [ %107, %.lr.ph26.preheader ], [ %indvars.iv.next, %236 ]
  %.in = phi i32 [ %2, %.lr.ph26.preheader ], [ %191, %236 ]
  %114 = phi i32 [ %2, %.lr.ph26.preheader ], [ %192, %236 ]
  %115 = phi i32 [ %2, %.lr.ph26.preheader ], [ %191, %236 ]
  %116 = phi i32 [ %2, %.lr.ph26.preheader ], [ %192, %236 ]
  %117 = phi i32 [ %2, %.lr.ph26.preheader ], [ %191, %236 ]
  %118 = phi i32 [ %2, %.lr.ph26.preheader ], [ %192, %236 ]
  %119 = phi i32 [ %2, %.lr.ph26.preheader ], [ %191, %236 ]
  %120 = phi i32 [ %2, %.lr.ph26.preheader ], [ %192, %236 ]
  %.125 = phi ptr [ %.0.lcssa, %.lr.ph26.preheader ], [ %.2, %236 ]
  %121 = phi ptr [ %44, %.lr.ph26.preheader ], [ %.2, %236 ]
  %122 = phi ptr [ %.0.lcssa, %.lr.ph26.preheader ], [ %.2, %236 ]
  %123 = phi ptr [ %44, %.lr.ph26.preheader ], [ %.2, %236 ]
  %124 = phi ptr [ %.0.lcssa, %.lr.ph26.preheader ], [ %.2, %236 ]
  %125 = phi ptr [ %44, %.lr.ph26.preheader ], [ %.2, %236 ]
  %126 = phi ptr [ %.0.lcssa, %.lr.ph26.preheader ], [ %.2, %236 ]
  %127 = phi ptr [ %44, %.lr.ph26.preheader ], [ %.2, %236 ]
  %cfg_DestPhi37 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %128 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %129 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %130 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %131 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %132 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %133 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %134 = phi i32 [ 283116037, %.lr.ph26.preheader ], [ 437257252, %236 ]
  %cfg_DiffPhi38 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %135 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %136 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %137 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %138 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %139 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %140 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %141 = phi i32 [ 51384840, %.lr.ph26.preheader ], [ %246, %236 ]
  %icmpEq309 = icmp eq i32 %140, %141
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %icmpEq307 = icmp eq i32 %138, %139
  %142 = icmp eq i32 %139, %139
  %icmpEq311 = icmp eq i1 %icmpEq307, %142
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %icmpEq305 = icmp eq i32 %136, %137
  %zext306 = zext i1 %icmpEq305 to i32
  %143 = zext i1 %icmpEq305 to i32
  %icmpEq313 = icmp eq i32 %zext306, %143
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  call void @assert_ft(i32 %zext306, i32 35)
  %icmpEq303 = icmp eq i32 %cfg_DiffPhi38, %135
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  %icmpEq301 = icmp eq i32 %133, %134
  %144 = icmp eq i32 %134, %134
  %icmpEq315 = icmp eq i1 %icmpEq301, %144
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %icmpEq299 = icmp eq i32 %131, %132
  %zext300 = zext i1 %icmpEq299 to i32
  %145 = zext i1 %icmpEq299 to i32
  %icmpEq317 = icmp eq i32 %zext300, %145
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  call void @assert_ft(i32 %zext300, i32 35)
  %icmpEq297 = icmp eq i32 %129, %130
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  %icmpEq295 = icmp eq i32 %cfg_DestPhi37, %128
  %146 = icmp eq i32 %128, %128
  %icmpEq319 = icmp eq i1 %icmpEq295, %146
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  %icmpEq293 = icmp eq i32 %119, %120
  %zext294 = zext i1 %icmpEq293 to i32
  %147 = zext i1 %icmpEq293 to i32
  %icmpEq321 = icmp eq i32 %zext294, %147
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  call void @assert_ft(i32 %zext294, i32 35)
  %icmpEq291 = icmp eq i32 %117, %118
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  %icmpEq289 = icmp eq i32 %115, %116
  %148 = icmp eq i32 %116, %116
  %icmpEq323 = icmp eq i1 %icmpEq289, %148
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %icmpEq287 = icmp eq i32 %.in, %114
  %zext288 = zext i1 %icmpEq287 to i32
  %149 = zext i1 %icmpEq287 to i32
  %icmpEq325 = icmp eq i32 %zext288, %149
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  call void @assert_ft(i32 %zext288, i32 35)
  %icmpEq285 = icmp eq i64 %112, %113
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %icmpEq283 = icmp eq i64 %110, %111
  %150 = icmp eq i64 %111, %111
  %icmpEq327 = icmp eq i1 %icmpEq283, %150
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %zext284 = zext i1 %icmpEq283 to i32
  call void @assert_ft(i32 %zext284, i32 35)
  %icmpEq281 = icmp eq i64 %108, %109
  %zext282 = zext i1 %icmpEq281 to i32
  %151 = zext i1 %icmpEq281 to i32
  %icmpEq329 = icmp eq i32 %zext282, %151
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  call void @assert_ft(i32 %zext282, i32 35)
  %icmpEq241 = icmp eq i32 %138, %140
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %icmpEq239 = icmp eq i32 %cfg_DiffPhi38, %136
  %152 = icmp eq i32 %135, %137
  %icmpEq331 = icmp eq i1 %icmpEq239, %152
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %153 = icmp eq i32 %cfg_DiffPhi38, %136
  %icmpEq243 = icmp eq i1 %icmpEq239, %153
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %zext240 = zext i1 %icmpEq239 to i32
  %154 = zext i1 %152 to i32
  %icmpEq333 = icmp eq i32 %zext240, %154
  %zext334 = zext i1 %icmpEq333 to i32
  call void @assert_ft(i32 %zext334, i32 35)
  call void @assert_ft(i32 %zext240, i32 35)
  %icmpEq237 = icmp eq i32 %131, %133
  %zext238 = zext i1 %icmpEq237 to i32
  %155 = zext i1 %icmpEq237 to i32
  %156 = zext i1 %icmpEq237 to i32
  %icmpEq335 = icmp eq i32 %155, %156
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq245 = icmp eq i32 %zext238, %155
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  call void @assert_ft(i32 %zext238, i32 35)
  %icmpEq235 = icmp eq i32 %cfg_DestPhi37, %129
  %157 = icmp eq i32 %128, %130
  %icmpEq337 = icmp eq i1 %icmpEq235, %157
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %icmpEq233 = icmp eq i32 %117, %119
  %158 = icmp eq i32 %118, %120
  %159 = icmp eq i32 %118, %120
  %icmpEq339 = icmp eq i1 %158, %159
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %icmpEq247 = icmp eq i1 %icmpEq233, %158
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %zext234 = zext i1 %icmpEq233 to i32
  %160 = zext i1 %158 to i32
  %icmpEq341 = icmp eq i32 %zext234, %160
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  call void @assert_ft(i32 %zext234, i32 35)
  %icmpEq231 = icmp eq i32 %.in, %115
  %zext232 = zext i1 %icmpEq231 to i32
  %161 = zext i1 %icmpEq231 to i32
  %162 = zext i1 %icmpEq231 to i32
  %icmpEq343 = icmp eq i32 %161, %162
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %icmpEq249 = icmp eq i32 %zext232, %161
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq229 = icmp eq i64 %110, %112
  %163 = icmp eq i64 %111, %113
  %icmpEq345 = icmp eq i1 %icmpEq229, %163
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %icmpEq227 = icmp eq i64 %indvars.iv, %108
  %164 = icmp eq i64 %108, %109
  %165 = icmp eq i64 %108, %109
  %icmpEq347 = icmp eq i1 %164, %165
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %icmpEq251 = icmp eq i1 %icmpEq227, %164
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %zext228 = zext i1 %icmpEq227 to i32
  %166 = zext i1 %164 to i32
  %icmpEq349 = icmp eq i32 %zext228, %166
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq211 = icmp eq i32 %cfg_DiffPhi38, %138
  %zext212 = zext i1 %icmpEq211 to i32
  %167 = zext i1 %icmpEq211 to i32
  %168 = zext i1 %icmpEq211 to i32
  %icmpEq351 = icmp eq i32 %167, %168
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %icmpEq253 = icmp eq i32 %zext212, %167
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  call void @assert_ft(i32 %zext212, i32 35)
  %icmpEq209 = icmp eq i32 %cfg_DestPhi37, %131
  %169 = icmp eq i32 %128, %132
  %icmpEq353 = icmp eq i1 %icmpEq209, %169
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  %170 = icmp eq i32 %cfg_DestPhi37, %131
  %icmpEq213 = icmp eq i1 %icmpEq209, %170
  %171 = icmp eq i1 %169, %170
  %icmpEq255 = icmp eq i1 %icmpEq213, %171
  %172 = icmp eq i1 %171, %171
  %icmpEq355 = icmp eq i1 %icmpEq255, %172
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  %zext210 = zext i1 %icmpEq209 to i32
  %173 = zext i1 %169 to i32
  %icmpEq357 = icmp eq i32 %zext210, %173
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  call void @assert_ft(i32 %zext210, i32 35)
  %icmpEq207 = icmp eq i32 %.in, %117
  %174 = icmp eq i32 %114, %118
  %icmpEq257 = icmp eq i1 %icmpEq207, %174
  %175 = icmp eq i1 %174, %174
  %icmpEq359 = icmp eq i1 %icmpEq257, %175
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  %zext208 = zext i1 %icmpEq207 to i32
  %176 = zext i1 %174 to i32
  %177 = zext i1 %174 to i32
  %icmpEq361 = icmp eq i32 %176, %177
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  %icmpEq215 = icmp eq i32 %zext208, %176
  %zext216 = zext i1 %icmpEq215 to i32
  %178 = zext i1 %icmpEq215 to i32
  %icmpEq259 = icmp eq i32 %zext216, %178
  %179 = icmp eq i32 %178, %178
  %icmpEq363 = icmp eq i1 %icmpEq259, %179
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %zext260 = zext i1 %icmpEq259 to i32
  call void @assert_ft(i32 %zext260, i32 35)
  call void @assert_ft(i32 %zext216, i32 35)
  call void @assert_ft(i32 %zext208, i32 35)
  %icmpEq205 = icmp eq i64 %indvars.iv, %110
  %180 = icmp eq i64 %108, %111
  %icmpEq365 = icmp eq i1 %icmpEq205, %180
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %zext206 = zext i1 %icmpEq205 to i32
  %181 = zext i1 %180 to i32
  %icmpEq261 = icmp eq i32 %zext206, %181
  %zext262 = zext i1 %icmpEq261 to i32
  %182 = zext i1 %icmpEq261 to i32
  %icmpEq367 = icmp eq i32 %zext262, %182
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  call void @assert_ft(i32 %zext262, i32 35)
  call void @assert_ft(i32 %zext206, i32 35)
  %183 = xor i32 %cfg_DestPhi37, %cfg_DiffPhi38
  %184 = xor i32 %128, %135
  %185 = xor i32 %128, %135
  %icmpEq369 = icmp eq i32 %184, %185
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %icmpEq217 = icmp eq i32 %183, %184
  %186 = icmp eq i32 %184, %185
  %icmpEq263 = icmp eq i1 %icmpEq217, %186
  %zext264 = zext i1 %icmpEq263 to i32
  %187 = zext i1 %icmpEq263 to i32
  %icmpEq371 = icmp eq i32 %zext264, %187
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  call void @assert_ft(i32 %zext264, i32 35)
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  %cfg_icmpEq39 = icmp eq i32 %183, 334499853
  %188 = icmp eq i32 %184, 334499853
  %icmpEq373 = icmp eq i1 %cfg_icmpEq39, %188
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %cfg_zext40 = zext i1 %cfg_icmpEq39 to i32
  %189 = zext i1 %188 to i32
  %icmpEq265 = icmp eq i32 %cfg_zext40, %189
  %zext266 = zext i1 %icmpEq265 to i32
  %190 = zext i1 %icmpEq265 to i32
  %icmpEq375 = icmp eq i32 %zext266, %190
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  call void @assert_ft(i32 %zext266, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext40, i32 %183, i32 35)
  %191 = add nsw i32 %.in, -1
  %192 = add nsw i32 %114, -1
  %193 = add nsw i32 %114, -1
  %icmpEq377 = icmp eq i32 %192, %193
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %icmpEq219 = icmp eq i32 %191, %192
  %194 = icmp eq i32 %192, %193
  %icmpEq267 = icmp eq i1 %icmpEq219, %194
  %zext268 = zext i1 %icmpEq267 to i32
  %195 = zext i1 %icmpEq267 to i32
  %icmpEq379 = icmp eq i32 %zext268, %195
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  call void @assert_ft(i32 %zext268, i32 35)
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %196 = zext i32 %191 to i64
  %197 = zext i32 %192 to i64
  %icmpEq381 = icmp eq i64 %196, %197
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  %198 = lshr i64 %1, %196
  %199 = lshr i64 %1, %197
  %icmpEq269 = icmp eq i64 %198, %199
  %zext270 = zext i1 %icmpEq269 to i32
  %200 = zext i1 %icmpEq269 to i32
  %icmpEq383 = icmp eq i32 %zext270, %200
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  call void @assert_ft(i32 %zext270, i32 35)
  %201 = trunc i64 %198 to i8
  %202 = and i8 %201, 1
  %203 = and i8 %201, 1
  %204 = and i8 %201, 1
  %icmpEq385 = icmp eq i8 %203, %204
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %icmpEq221 = icmp eq i8 %202, %203
  %205 = icmp eq i8 %203, %204
  %icmpEq271 = icmp eq i1 %icmpEq221, %205
  %zext272 = zext i1 %icmpEq271 to i32
  %206 = zext i1 %icmpEq271 to i32
  %icmpEq387 = icmp eq i32 %zext272, %206
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  call void @assert_ft(i32 %zext272, i32 35)
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  %207 = or i8 %202, 48
  %208 = or i8 %203, 48
  %icmpEq389 = icmp eq i8 %207, %208
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  %209 = getelementptr inbounds i8, ptr %.125, i64 1
  %210 = getelementptr inbounds i8, ptr %121, i64 1
  store i8 %207, ptr %.125, align 1
  %211 = and i32 %191, 3
  %212 = and i32 %192, 3
  %icmpEq391 = icmp eq i32 %211, %212
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %213 = and i32 %191, 3
  %icmpEq273 = icmp eq i32 %211, %213
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  %214 = and i32 %191, 3
  %215 = and i32 %192, 3
  %icmpEq393 = icmp eq i32 %214, %215
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  %icmpEq223 = icmp eq i32 %211, %214
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  %216 = icmp eq i32 %211, 0
  %217 = icmp eq i32 %212, 0
  %icmpEq395 = icmp eq i1 %216, %217
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  %218 = icmp eq i32 %211, 0
  %icmpEq275 = icmp eq i1 %216, %218
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  %219 = icmp ne i32 %191, 0
  %220 = icmp ne i32 %192, 0
  %icmpEq397 = icmp eq i1 %219, %220
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  %or.cond = and i1 %219, %216
  %221 = select i1 %or.cond, i32 385876738, i32 437257252
  %222 = select i1 %or.cond, i32 385876738, i32 437257252
  %223 = select i1 %or.cond, i32 385876738, i32 437257252
  %224 = select i1 %or.cond, i32 385876738, i32 437257252
  %icmpEq399 = icmp eq i32 %223, %224
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  %icmpEq277 = icmp eq i32 %222, %223
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  %icmpEq225 = icmp eq i32 %221, %222
  %225 = icmp eq i32 %222, %223
  %icmpEq401 = icmp eq i1 %icmpEq225, %225
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %226 = xor i32 334499853, %221
  %227 = xor i32 334499853, %222
  %228 = xor i32 334499853, %222
  %icmpEq403 = icmp eq i32 %227, %228
  %zext404 = zext i1 %icmpEq403 to i32
  call void @assert_ft(i32 %zext404, i32 35)
  %icmpEq279 = icmp eq i32 %226, %227
  %zext280 = zext i1 %icmpEq279 to i32
  call void @assert_ft(i32 %zext280, i32 35)
  br i1 %or.cond, label %229, label %236

229:                                              ; preds = %.lr.ph26
  %cfg_DestPhi41 = phi i32 [ 334499853, %.lr.ph26 ]
  %230 = phi i32 [ 334499853, %.lr.ph26 ]
  %cfg_DiffPhi42 = phi i32 [ %226, %.lr.ph26 ]
  %231 = phi i32 [ %227, %.lr.ph26 ]
  %icmpEq407 = icmp eq i32 %cfg_DiffPhi42, %231
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %icmpEq405 = icmp eq i32 %cfg_DestPhi41, %230
  %232 = icmp eq i32 %230, %230
  %icmpEq409 = icmp eq i1 %icmpEq405, %232
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %233 = xor i32 %cfg_DestPhi41, %cfg_DiffPhi42
  %cfg_icmpEq43 = icmp eq i32 %233, 385876738
  %234 = icmp eq i32 %233, 385876738
  %icmpEq411 = icmp eq i1 %cfg_icmpEq43, %234
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  %cfg_zext44 = zext i1 %cfg_icmpEq43 to i32
  call void @assert_cfg_ft(i32 %cfg_zext44, i32 %233, i32 35)
  %235 = getelementptr inbounds i8, ptr %.125, i64 2
  store i8 32, ptr %209, align 1
  br label %236

236:                                              ; preds = %229, %.lr.ph26
  %.2 = phi ptr [ %235, %229 ], [ %209, %.lr.ph26 ]
  %237 = phi ptr [ %235, %229 ], [ %210, %.lr.ph26 ]
  %cfg_DestPhi45 = phi i32 [ 385876738, %229 ], [ 334499853, %.lr.ph26 ]
  %238 = phi i32 [ 385876738, %229 ], [ 334499853, %.lr.ph26 ]
  %cfg_DiffPhi46 = phi i32 [ 219154214, %229 ], [ %226, %.lr.ph26 ]
  %239 = phi i32 [ 219154214, %229 ], [ %227, %.lr.ph26 ]
  %icmpEq415 = icmp eq i32 %cfg_DiffPhi46, %239
  %zext416 = zext i1 %icmpEq415 to i32
  call void @assert_ft(i32 %zext416, i32 35)
  %icmpEq413 = icmp eq i32 %cfg_DestPhi45, %238
  %240 = icmp eq i32 %238, %238
  %icmpEq417 = icmp eq i1 %icmpEq413, %240
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  %zext414 = zext i1 %icmpEq413 to i32
  call void @assert_ft(i32 %zext414, i32 35)
  %241 = xor i32 %cfg_DestPhi45, %cfg_DiffPhi46
  %cfg_icmpEq47 = icmp eq i32 %241, 437257252
  %242 = icmp eq i32 %241, 437257252
  %icmpEq419 = icmp eq i1 %cfg_icmpEq47, %242
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %cfg_zext48 = zext i1 %cfg_icmpEq47 to i32
  call void @assert_cfg_ft(i32 %cfg_zext48, i32 %241, i32 35)
  %243 = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %244 = add nsw i64 %108, -1
  %icmpEq421 = icmp eq i64 %indvars.iv.next, %244
  %zext422 = zext i1 %icmpEq421 to i32
  call void @assert_ft(i32 %zext422, i32 35)
  %245 = select i1 %243, i32 334499853, i32 488637199
  %246 = xor i32 437257252, %245
  br i1 %243, label %.lr.ph26, label %._crit_edge

._crit_edge:                                      ; preds = %236, %.preheader
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader ], [ %.2, %236 ]
  %247 = phi ptr [ %44, %.preheader ], [ %237, %236 ]
  %cfg_DestPhi49 = phi i32 [ 437257252, %236 ], [ 231736065, %.preheader ]
  %248 = phi i32 [ 437257252, %236 ], [ 231736065, %.preheader ]
  %cfg_DiffPhi50 = phi i32 [ %246, %236 ], [ %99, %.preheader ]
  %249 = phi i32 [ %246, %236 ], [ %100, %.preheader ]
  %icmpEq425 = icmp eq i32 %cfg_DiffPhi50, %249
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  %icmpEq423 = icmp eq i32 %cfg_DestPhi49, %248
  %250 = icmp eq i32 %248, %248
  %icmpEq427 = icmp eq i1 %icmpEq423, %250
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  %zext424 = zext i1 %icmpEq423 to i32
  call void @assert_ft(i32 %zext424, i32 35)
  %251 = xor i32 %cfg_DestPhi49, %cfg_DiffPhi50
  %cfg_icmpEq51 = icmp eq i32 %251, 488637199
  %252 = icmp eq i32 %251, 488637199
  %icmpEq429 = icmp eq i1 %cfg_icmpEq51, %252
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  %cfg_zext52 = zext i1 %cfg_icmpEq51 to i32
  call void @assert_cfg_ft(i32 %cfg_zext52, i32 %251, i32 35)
  store i8 0, ptr %.1.lcssa, align 1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bstr_i(ptr noundef readonly %0) local_unnamed_addr #11 {
  %.not12 = icmp eq ptr %0, null
  %2 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not12, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = select i1 %.not12, i32 334496290, i32 180355853
  %4 = xor i32 128975389, %3
  br i1 %.not12, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975389, %1 ]
  %5 = phi i32 [ 128975389, %1 ]
  %cfg_DiffPhi = phi i32 [ %4, %1 ]
  %6 = phi i32 [ %4, %1 ]
  %icmpEq38 = icmp eq i32 %cfg_DiffPhi, %6
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %icmpEq36 = icmp eq i32 %cfg_DestPhi, %5
  %7 = icmp eq i32 %5, %5
  %icmpEq40 = icmp eq i1 %icmpEq36, %7
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %8 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %8, 180355853
  %9 = icmp eq i32 %8, 180355853
  %icmpEq42 = icmp eq i1 %cfg_icmpEq, %9
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %8, i32 35)
  %10 = load i8, ptr %0, align 1
  %.not919 = icmp eq i8 %10, 0
  %11 = icmp eq i8 %10, 0
  %icmpEq44 = icmp eq i1 %.not919, %11
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %12 = select i1 %.not919, i32 334496290, i32 231737884
  %13 = xor i32 180355853, %12
  br i1 %.not919, label %.critedge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph, %.lr.ph.preheader
  %14 = phi i8 [ %42, %.lr.ph ], [ %10, %.lr.ph.preheader ]
  %15 = phi i8 [ %42, %.lr.ph ], [ %10, %.lr.ph.preheader ]
  %.071321 = phi ptr [ %36, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %16 = phi ptr [ %36, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.01420 = phi i32 [ %41, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %17 = phi i32 [ %41, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %cfg_DestPhi24 = phi i32 [ 180355853, %.lr.ph.preheader ], [ 283117588, %.lr.ph ]
  %18 = phi i32 [ 180355853, %.lr.ph.preheader ], [ 283117588, %.lr.ph ]
  %cfg_DiffPhi25 = phi i32 [ %13, %.lr.ph.preheader ], [ %45, %.lr.ph ]
  %19 = phi i32 [ %13, %.lr.ph.preheader ], [ %45, %.lr.ph ]
  %icmpEq52 = icmp eq i32 %cfg_DiffPhi25, %19
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %cfg_DestPhi24, %18
  %20 = icmp eq i32 %18, %18
  %icmpEq54 = icmp eq i1 %icmpEq50, %20
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i32 %.01420, %17
  %zext49 = zext i1 %icmpEq48 to i32
  %21 = zext i1 %icmpEq48 to i32
  %icmpEq56 = icmp eq i32 %zext49, %21
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  call void @assert_ft(i32 %zext49, i32 35)
  %icmpEq46 = icmp eq i8 %14, %15
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %22 = xor i32 %cfg_DestPhi24, %cfg_DiffPhi25
  %23 = xor i32 %18, %19
  %icmpEq58 = icmp eq i32 %22, %23
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %cfg_icmpEq26 = icmp eq i32 %22, 231737884
  %cfg_zext27 = zext i1 %cfg_icmpEq26 to i32
  call void @assert_cfg_ft(i32 %cfg_zext27, i32 %22, i32 35)
  %24 = zext i8 %14 to i64
  %25 = zext i8 %15 to i64
  %icmpEq60 = icmp eq i64 %24, %25
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %memchr.bounds = icmp ugt i8 %14, 63
  %26 = shl nuw i64 1, %24
  %27 = and i64 %26, 844424930131969
  %memchr.bits = icmp eq i64 %27, 0
  %28 = icmp eq i64 %27, 0
  %icmpEq62 = icmp eq i1 %memchr.bits, %28
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %memchr10.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  %29 = select i1 %memchr10.not, i32 334496290, i32 283117588
  %30 = xor i32 231737884, %29
  br i1 %memchr10.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %cfg_DestPhi28 = phi i32 [ 231737884, %.lr.ph22 ]
  %31 = phi i32 [ 231737884, %.lr.ph22 ]
  %cfg_DiffPhi29 = phi i32 [ %30, %.lr.ph22 ]
  %32 = phi i32 [ %30, %.lr.ph22 ]
  %icmpEq66 = icmp eq i32 %cfg_DiffPhi29, %32
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DestPhi28, %31
  %33 = icmp eq i32 %31, %31
  %icmpEq68 = icmp eq i1 %icmpEq64, %33
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %34 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %cfg_icmpEq30 = icmp eq i32 %34, 283117588
  %35 = icmp eq i32 %34, 283117588
  %icmpEq70 = icmp eq i1 %cfg_icmpEq30, %35
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %34, i32 35)
  %36 = getelementptr inbounds i8, ptr %.071321, i64 1
  %37 = shl i32 %.01420, 1
  %38 = shl i32 %17, 1
  %icmpEq72 = icmp eq i32 %37, %38
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %39 = and i8 %14, 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %37, %40
  %42 = load i8, ptr %36, align 1
  %43 = load i8, ptr %36, align 1
  %icmpEq74 = icmp eq i8 %42, %43
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %.not9 = icmp eq i8 %42, 0
  %44 = select i1 %.not9, i32 334496290, i32 231737884
  %45 = xor i32 283117588, %44
  br i1 %.not9, label %.critedge, label %.lr.ph22

.critedge:                                        ; preds = %.lr.ph, %.lr.ph22, %.lr.ph.preheader, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %.01420, %.lr.ph22 ], [ %41, %.lr.ph ]
  %46 = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %17, %.lr.ph22 ], [ %41, %.lr.ph ]
  %47 = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %.01420, %.lr.ph22 ], [ %41, %.lr.ph ]
  %48 = phi i32 [ 0, %1 ], [ 0, %.lr.ph.preheader ], [ %17, %.lr.ph22 ], [ %41, %.lr.ph ]
  %cfg_DestPhi32 = phi i32 [ 283117588, %.lr.ph ], [ 231737884, %.lr.ph22 ], [ 180355853, %.lr.ph.preheader ], [ 128975389, %1 ]
  %49 = phi i32 [ 283117588, %.lr.ph ], [ 231737884, %.lr.ph22 ], [ 180355853, %.lr.ph.preheader ], [ 128975389, %1 ]
  %50 = phi i32 [ 283117588, %.lr.ph ], [ 231737884, %.lr.ph22 ], [ 180355853, %.lr.ph.preheader ], [ 128975389, %1 ]
  %51 = phi i32 [ 283117588, %.lr.ph ], [ 231737884, %.lr.ph22 ], [ 180355853, %.lr.ph.preheader ], [ 128975389, %1 ]
  %cfg_DiffPhi33 = phi i32 [ %45, %.lr.ph ], [ %30, %.lr.ph22 ], [ %13, %.lr.ph.preheader ], [ %4, %1 ]
  %52 = phi i32 [ %45, %.lr.ph ], [ %30, %.lr.ph22 ], [ %13, %.lr.ph.preheader ], [ %4, %1 ]
  %53 = phi i32 [ %45, %.lr.ph ], [ %30, %.lr.ph22 ], [ %13, %.lr.ph.preheader ], [ %4, %1 ]
  %54 = phi i32 [ %45, %.lr.ph ], [ %30, %.lr.ph22 ], [ %13, %.lr.ph.preheader ], [ %4, %1 ]
  %icmpEq98 = icmp eq i32 %53, %54
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq96 = icmp eq i32 %cfg_DiffPhi33, %52
  %55 = icmp eq i32 %52, %52
  %icmpEq100 = icmp eq i1 %icmpEq96, %55
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %50, %51
  %zext95 = zext i1 %icmpEq94 to i32
  %56 = zext i1 %icmpEq94 to i32
  %icmpEq102 = icmp eq i32 %zext95, %56
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DestPhi32, %49
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq90 = icmp eq i32 %47, %48
  %57 = icmp eq i32 %48, %48
  %icmpEq104 = icmp eq i1 %icmpEq90, %57
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq88 = icmp eq i32 %.0.lcssa, %46
  %zext89 = zext i1 %icmpEq88 to i32
  %58 = zext i1 %icmpEq88 to i32
  %icmpEq106 = icmp eq i32 %zext89, %58
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq80 = icmp eq i32 %cfg_DiffPhi33, %53
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %cfg_DestPhi32, %50
  %59 = icmp eq i32 %49, %51
  %icmpEq108 = icmp eq i1 %icmpEq78, %59
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %60 = icmp eq i32 %cfg_DestPhi32, %50
  %icmpEq82 = icmp eq i1 %icmpEq78, %60
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  %61 = zext i1 %59 to i32
  %icmpEq110 = icmp eq i32 %zext79, %61
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %.0.lcssa, %47
  %zext77 = zext i1 %icmpEq76 to i32
  %62 = zext i1 %icmpEq76 to i32
  %63 = zext i1 %icmpEq76 to i32
  %icmpEq112 = icmp eq i32 %62, %63
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq84 = icmp eq i32 %zext77, %62
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  call void @assert_ft(i32 %zext77, i32 35)
  %64 = xor i32 %cfg_DestPhi32, %cfg_DiffPhi33
  %65 = xor i32 %49, %52
  %icmpEq114 = icmp eq i32 %64, %65
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %cfg_icmpEq34 = icmp eq i32 %64, 334496290
  %cfg_zext35 = zext i1 %cfg_icmpEq34 to i32
  %66 = zext i1 %cfg_icmpEq34 to i32
  %icmpEq86 = icmp eq i32 %cfg_zext35, %66
  %67 = icmp eq i32 %66, %66
  %icmpEq116 = icmp eq i1 %icmpEq86, %67
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext35, i32 %64, i32 35)
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

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

attributes #0 = { nofree noinline norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind memory(write, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
