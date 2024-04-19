; ModuleID = 'l2lat-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@a = dso_local global [160000 x ptr] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Time is %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"L2 Latency (ns) is %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"L2 BW is %f MB/sec\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"b is %ld\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %.01316 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %2 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %cfg_DestPhi = phi i32 [ 128975137, %0 ], [ 180356882, %1 ]
  %3 = phi i32 [ 128975137, %0 ], [ 180356882, %1 ]
  %cfg_DiffPhi = phi i32 [ 225445427, %0 ], [ %15, %1 ]
  %4 = phi i32 [ 225445427, %0 ], [ %15, %1 ]
  %icmpEq45 = icmp eq i32 %cfg_DiffPhi, %4
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %icmpEq43 = icmp eq i32 %cfg_DestPhi, %3
  %5 = icmp eq i32 %3, %3
  %icmpEq47 = icmp eq i1 %icmpEq43, %5
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq = icmp eq i64 %.01316, %2
  %zext = zext i1 %icmpEq to i32
  %6 = zext i1 %icmpEq to i32
  %icmpEq49 = icmp eq i32 %zext, %6
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %7 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %7, 180356882
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %8 = zext i1 %cfg_icmpEq to i32
  %icmpEq51 = icmp eq i32 %cfg_zext, %8
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %7, i32 35)
  %9 = add nuw nsw i64 %.01316, 1
  %10 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %9
  %11 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %.01316
  %12 = getelementptr inbounds [160000 x ptr], ptr @a, i64 0, i64 %2
  store ptr %10, ptr %11, align 8
  %exitcond.not = icmp eq i64 %9, 160000
  %13 = icmp eq i64 %9, 160000
  %icmpEq53 = icmp eq i1 %exitcond.not, %13
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %14 = select i1 %exitcond.not, i32 231736065, i32 180356882
  %15 = xor i32 180356882, %14
  br i1 %exitcond.not, label %16, label %1

16:                                               ; preds = %1
  %cfg_DestPhi23 = phi i32 [ 180356882, %1 ]
  %17 = phi i32 [ 180356882, %1 ]
  %cfg_DiffPhi24 = phi i32 [ %15, %1 ]
  %18 = phi i32 [ %15, %1 ]
  %icmpEq57 = icmp eq i32 %cfg_DiffPhi24, %18
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i32 %cfg_DestPhi23, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq59 = icmp eq i1 %icmpEq55, %19
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %20 = xor i32 %cfg_DestPhi23, %cfg_DiffPhi24
  %cfg_icmpEq25 = icmp eq i32 %20, 231736065
  %21 = icmp eq i32 %20, 231736065
  %icmpEq61 = icmp eq i1 %cfg_icmpEq25, %21
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %cfg_zext26 = zext i1 %cfg_icmpEq25 to i32
  call void @assert_cfg_ft(i32 %cfg_zext26, i32 %20, i32 35)
  %22 = tail call double @second()
  %.11517 = load ptr, ptr getelementptr inbounds ([160000 x ptr], ptr @a, i64 0, i64 7), align 8
  %23 = load ptr, ptr getelementptr inbounds ([160000 x ptr], ptr @a, i64 0, i64 7), align 8
  br label %.preheader

.preheader:                                       ; preds = %61, %16
  %.120 = phi i64 [ 0, %16 ], [ %67, %61 ]
  %24 = phi i64 [ 0, %16 ], [ %67, %61 ]
  %25 = phi i64 [ 0, %16 ], [ %67, %61 ]
  %26 = phi i64 [ 0, %16 ], [ %67, %61 ]
  %cfg_DestPhi27 = phi i32 [ 231736065, %16 ], [ 385876738, %61 ]
  %27 = phi i32 [ 231736065, %16 ], [ 385876738, %61 ]
  %28 = phi i32 [ 231736065, %16 ], [ 385876738, %61 ]
  %29 = phi i32 [ 231736065, %16 ], [ 385876738, %61 ]
  %cfg_DiffPhi28 = phi i32 [ 489685252, %16 ], [ %70, %61 ]
  %30 = phi i32 [ 489685252, %16 ], [ %70, %61 ]
  %31 = phi i32 [ 489685252, %16 ], [ %70, %61 ]
  %32 = phi i32 [ 489685252, %16 ], [ %70, %61 ]
  %icmpEq85 = icmp eq i32 %31, %32
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq83 = icmp eq i32 %cfg_DiffPhi28, %30
  %33 = icmp eq i32 %30, %30
  %icmpEq87 = icmp eq i1 %icmpEq83, %33
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %icmpEq81 = icmp eq i32 %28, %29
  %zext82 = zext i1 %icmpEq81 to i32
  %34 = zext i1 %icmpEq81 to i32
  %icmpEq89 = icmp eq i32 %zext82, %34
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq79 = icmp eq i32 %cfg_DestPhi27, %27
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq77 = icmp eq i64 %25, %26
  %35 = icmp eq i64 %26, %26
  %icmpEq91 = icmp eq i1 %icmpEq77, %35
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq75 = icmp eq i64 %.120, %24
  %zext76 = zext i1 %icmpEq75 to i32
  %36 = zext i1 %icmpEq75 to i32
  %icmpEq93 = icmp eq i32 %zext76, %36
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  call void @assert_ft(i32 %zext76, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DiffPhi28, %31
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %cfg_DestPhi27, %28
  %37 = icmp eq i32 %27, %29
  %icmpEq95 = icmp eq i1 %icmpEq65, %37
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %38 = icmp eq i32 %cfg_DestPhi27, %28
  %icmpEq69 = icmp eq i1 %icmpEq65, %38
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  %39 = zext i1 %37 to i32
  %icmpEq97 = icmp eq i32 %zext66, %39
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq63 = icmp eq i64 %.120, %25
  %zext64 = zext i1 %icmpEq63 to i32
  %40 = zext i1 %icmpEq63 to i32
  %41 = zext i1 %icmpEq63 to i32
  %icmpEq99 = icmp eq i32 %40, %41
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq71 = icmp eq i32 %zext64, %40
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  call void @assert_ft(i32 %zext64, i32 35)
  %42 = xor i32 %cfg_DestPhi27, %cfg_DiffPhi28
  %43 = xor i32 %27, %30
  %icmpEq101 = icmp eq i32 %42, %43
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %cfg_icmpEq29 = icmp eq i32 %42, 283116037
  %cfg_zext30 = zext i1 %cfg_icmpEq29 to i32
  %44 = zext i1 %cfg_icmpEq29 to i32
  %icmpEq73 = icmp eq i32 %cfg_zext30, %44
  %45 = icmp eq i32 %44, %44
  %icmpEq103 = icmp eq i1 %icmpEq73, %45
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext30, i32 %42, i32 35)
  br label %46

46:                                               ; preds = %46, %.preheader
  %.11519 = phi ptr [ %.11517, %.preheader ], [ %.115, %46 ]
  %47 = phi ptr [ %23, %.preheader ], [ %57, %46 ]
  %.018 = phi i64 [ 0, %.preheader ], [ %56, %46 ]
  %48 = phi i64 [ 0, %.preheader ], [ %56, %46 ]
  %cfg_DestPhi31 = phi i32 [ 283116037, %.preheader ], [ 334497544, %46 ]
  %49 = phi i32 [ 283116037, %.preheader ], [ 334497544, %46 ]
  %cfg_DiffPhi32 = phi i32 [ 51381517, %.preheader ], [ %60, %46 ]
  %50 = phi i32 [ 51381517, %.preheader ], [ %60, %46 ]
  %icmpEq109 = icmp eq i32 %cfg_DiffPhi32, %50
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i32 %cfg_DestPhi31, %49
  %51 = icmp eq i32 %49, %49
  %icmpEq111 = icmp eq i1 %icmpEq107, %51
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %icmpEq105 = icmp eq i64 %.018, %48
  %zext106 = zext i1 %icmpEq105 to i32
  %52 = zext i1 %icmpEq105 to i32
  %icmpEq113 = icmp eq i32 %zext106, %52
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  call void @assert_ft(i32 %zext106, i32 35)
  %53 = xor i32 %cfg_DestPhi31, %cfg_DiffPhi32
  %cfg_icmpEq33 = icmp eq i32 %53, 334497544
  %cfg_zext34 = zext i1 %cfg_icmpEq33 to i32
  %54 = zext i1 %cfg_icmpEq33 to i32
  %icmpEq115 = icmp eq i32 %cfg_zext34, %54
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext34, i32 %53, i32 35)
  %55 = getelementptr inbounds ptr, ptr %.11519, i64 8
  %56 = add nuw nsw i64 %.018, 1
  %.115 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %55, align 8
  %exitcond21.not = icmp eq i64 %56, 5000
  %58 = icmp eq i64 %56, 5000
  %icmpEq117 = icmp eq i1 %exitcond21.not, %58
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %59 = select i1 %exitcond21.not, i32 385876738, i32 334497544
  %60 = xor i32 334497544, %59
  br i1 %exitcond21.not, label %61, label %46

61:                                               ; preds = %46
  %cfg_DestPhi35 = phi i32 [ 334497544, %46 ]
  %62 = phi i32 [ 334497544, %46 ]
  %cfg_DiffPhi36 = phi i32 [ %60, %46 ]
  %63 = phi i32 [ %60, %46 ]
  %icmpEq121 = icmp eq i32 %cfg_DiffPhi36, %63
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i32 %cfg_DestPhi35, %62
  %64 = icmp eq i32 %62, %62
  %icmpEq123 = icmp eq i1 %icmpEq119, %64
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %65 = xor i32 %cfg_DestPhi35, %cfg_DiffPhi36
  %cfg_icmpEq37 = icmp eq i32 %65, 385876738
  %66 = icmp eq i32 %65, 385876738
  %icmpEq125 = icmp eq i1 %cfg_icmpEq37, %66
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %cfg_zext38 = zext i1 %cfg_icmpEq37 to i32
  call void @assert_cfg_ft(i32 %cfg_zext38, i32 %65, i32 35)
  %67 = add nuw nsw i64 %.120, 1
  %exitcond22.not = icmp eq i64 %67, 1500
  %68 = icmp eq i64 %67, 1500
  %icmpEq127 = icmp eq i1 %exitcond22.not, %68
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %69 = select i1 %exitcond22.not, i32 437260321, i32 283116037
  %70 = xor i32 385876738, %69
  br i1 %exitcond22.not, label %71, label %.preheader

71:                                               ; preds = %61
  %cfg_DestPhi39 = phi i32 [ 385876738, %61 ]
  %72 = phi i32 [ 385876738, %61 ]
  %73 = phi i32 [ 385876738, %61 ]
  %74 = phi i32 [ 385876738, %61 ]
  %cfg_DiffPhi40 = phi i32 [ %70, %61 ]
  %75 = phi i32 [ %70, %61 ]
  %76 = phi i32 [ %70, %61 ]
  %77 = phi i32 [ %70, %61 ]
  %icmpEq145 = icmp eq i32 %76, %77
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %cfg_DiffPhi40, %75
  %78 = icmp eq i32 %75, %75
  %icmpEq147 = icmp eq i1 %icmpEq143, %78
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %73, %74
  %zext142 = zext i1 %icmpEq141 to i32
  %79 = zext i1 %icmpEq141 to i32
  %icmpEq149 = icmp eq i32 %zext142, %79
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  call void @assert_ft(i32 %zext142, i32 35)
  %icmpEq139 = icmp eq i32 %cfg_DestPhi39, %72
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %icmpEq131 = icmp eq i32 %cfg_DiffPhi40, %76
  %80 = icmp eq i32 %75, %77
  %icmpEq151 = icmp eq i1 %icmpEq131, %80
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %icmpEq129 = icmp eq i32 %cfg_DestPhi39, %73
  %81 = icmp eq i32 %72, %74
  %82 = icmp eq i32 %72, %74
  %icmpEq153 = icmp eq i1 %81, %82
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %icmpEq133 = icmp eq i1 %icmpEq129, %81
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %zext130 = zext i1 %icmpEq129 to i32
  %83 = zext i1 %81 to i32
  %icmpEq155 = icmp eq i32 %zext130, %83
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  call void @assert_ft(i32 %zext130, i32 35)
  %84 = xor i32 %cfg_DestPhi39, %cfg_DiffPhi40
  %cfg_icmpEq41 = icmp eq i32 %84, 437260321
  %85 = icmp eq i32 %84, 437260321
  %86 = icmp eq i32 %84, 437260321
  %icmpEq157 = icmp eq i1 %85, %86
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %icmpEq135 = icmp eq i1 %cfg_icmpEq41, %85
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %cfg_zext42 = zext i1 %cfg_icmpEq41 to i32
  %87 = zext i1 %85 to i32
  %icmpEq159 = icmp eq i32 %cfg_zext42, %87
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext42, i32 %84, i32 35)
  %88 = tail call double @second()
  %89 = fsub double %88, %22
  %90 = fsub double %88, %22
  %91 = fsub double %88, %22
  %92 = load ptr, ptr @stderr, align 8
  %93 = load ptr, ptr @stderr, align 8
  %94 = load ptr, ptr @stderr, align 8
  %95 = load ptr, ptr @stderr, align 8
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str, double noundef %89) #2
  %97 = load ptr, ptr @stderr, align 8
  %98 = load ptr, ptr @stderr, align 8
  %99 = load ptr, ptr @stderr, align 8
  %100 = load ptr, ptr @stderr, align 8
  %101 = fdiv double %89, 7.500000e+06
  %102 = fdiv double %90, 7.500000e+06
  %103 = fdiv double %89, 7.500000e+06
  %104 = fdiv double %90, 7.500000e+06
  %105 = fmul double %101, 1.000000e+09
  %106 = fmul double %102, 1.000000e+09
  %107 = fmul double %101, 1.000000e+09
  %108 = fmul double %102, 1.000000e+09
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.1, double noundef %105) #2
  %110 = load ptr, ptr @stderr, align 8
  %111 = load ptr, ptr @stderr, align 8
  %112 = load ptr, ptr @stderr, align 8
  %113 = load ptr, ptr @stderr, align 8
  %114 = fmul double %89, 1.000000e+06
  %115 = fmul double %90, 1.000000e+06
  %116 = fmul double %89, 1.000000e+06
  %117 = fmul double %90, 1.000000e+06
  %118 = fdiv double 4.800000e+08, %114
  %119 = fdiv double 4.800000e+08, %115
  %120 = fdiv double 4.800000e+08, %114
  %121 = fdiv double 4.800000e+08, %115
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.2, double noundef %118) #2
  %123 = load ptr, ptr @stderr, align 8
  %124 = load ptr, ptr @stderr, align 8
  %125 = load ptr, ptr @stderr, align 8
  %126 = load ptr, ptr @stderr, align 8
  %127 = ptrtoint ptr %.115 to i64
  %128 = ptrtoint ptr %57 to i64
  %icmpEq161 = icmp eq i64 %127, %128
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %129 = ptrtoint ptr %.115 to i64
  %icmpEq137 = icmp eq i64 %127, %129
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.3, i64 noundef %127) #2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local double @second() local_unnamed_addr #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #3
  %3 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %icmpEq = icmp eq i64 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = sitofp i64 %5 to double
  %8 = fdiv double %7, 1.000000e+06
  %9 = load i64, ptr %1, align 8
  %10 = sitofp i64 %9 to double
  %11 = sitofp i64 %9 to double
  %12 = fadd double %8, %10
  %13 = fadd double %8, %11
  ret double %12
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @exit(i32, ...)

declare i32 @printf(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @0, i32 %1)
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
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
