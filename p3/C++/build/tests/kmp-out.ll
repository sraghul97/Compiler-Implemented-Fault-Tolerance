; ModuleID = 'kmp-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rndmill = type { i64, i64, i64 }

@next = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Usage:\0A\09%s <ref|train|test>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"train\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@buffer = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1
@pat = dso_local local_unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"Benchmark begin...\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%2d Pattern:\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c": found %d times\0A\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Invalid data set use ref or train or test\00", align 1
@str.2 = private unnamed_addr constant [20 x i8] c"Benchmark finish...\00", align 1
@str.3 = private unnamed_addr constant [24 x i8] c"KMP with test input set\00", align 1
@str.4 = private unnamed_addr constant [29 x i8] c"KMP with reference input set\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @preprocpat(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store i32 -1, ptr %1, align 4
  br label %3

3:                                                ; preds = %135, %2
  %.020 = phi i32 [ 0, %2 ], [ %.121, %135 ]
  %4 = phi i32 [ 0, %2 ], [ %.121, %135 ]
  %.0 = phi i32 [ -1, %2 ], [ %.1, %135 ]
  %5 = phi i32 [ -1, %2 ], [ %.1, %135 ]
  %cfg_DestPhi = phi i32 [ 488637721, %135 ], [ 128975389, %2 ]
  %6 = phi i32 [ 488637721, %135 ], [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %239, %135 ], [ 225445400, %2 ]
  %7 = phi i32 [ %239, %135 ], [ 225445400, %2 ]
  %icmpEq54 = icmp eq i32 %cfg_DiffPhi, %7
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq52 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq56 = icmp eq i1 %icmpEq52, %8
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %.0, %5
  %zext51 = zext i1 %icmpEq50 to i32
  %9 = zext i1 %icmpEq50 to i32
  %icmpEq58 = icmp eq i32 %zext51, %9
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq = icmp eq i32 %.020, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %10 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %11 = xor i32 %6, %7
  %icmpEq60 = icmp eq i32 %10, %11
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %cfg_icmpEq = icmp eq i32 %10, 180356101
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %10, i32 35)
  %12 = icmp eq i32 %.0, -1
  %13 = icmp eq i32 %5, -1
  %icmpEq62 = icmp eq i1 %12, %13
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %14 = select i1 %12, i32 283118105, i32 231737359
  %15 = xor i32 180356101, %14
  br i1 %12, label %34, label %16

16:                                               ; preds = %3
  %cfg_DestPhi22 = phi i32 [ 180356101, %3 ]
  %17 = phi i32 [ 180356101, %3 ]
  %cfg_DiffPhi23 = phi i32 [ %15, %3 ]
  %18 = phi i32 [ %15, %3 ]
  %icmpEq66 = icmp eq i32 %cfg_DiffPhi23, %18
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DestPhi22, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq68 = icmp eq i1 %icmpEq64, %19
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %20 = xor i32 %cfg_DestPhi22, %cfg_DiffPhi23
  %cfg_icmpEq24 = icmp eq i32 %20, 231737359
  %21 = icmp eq i32 %20, 231737359
  %icmpEq70 = icmp eq i1 %cfg_icmpEq24, %21
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %cfg_zext25 = zext i1 %cfg_icmpEq24 to i32
  call void @assert_cfg_ft(i32 %cfg_zext25, i32 %20, i32 35)
  %22 = sext i32 %.020 to i64
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = getelementptr inbounds i8, ptr %0, i64 %22
  %25 = load i8, ptr %23, align 1
  %26 = load i8, ptr %24, align 1
  %icmpEq72 = icmp eq i8 %25, %26
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %27 = sext i32 %.0 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %25, %29
  %31 = icmp eq i8 %26, %29
  %icmpEq74 = icmp eq i1 %30, %31
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %32 = select i1 %30, i32 283118105, i32 437256987
  %33 = xor i32 231737359, %32
  br i1 %30, label %34, label %116

34:                                               ; preds = %16, %3
  %cfg_DestPhi26 = phi i32 [ 231737359, %16 ], [ 180356101, %3 ]
  %35 = phi i32 [ 231737359, %16 ], [ 180356101, %3 ]
  %36 = phi i32 [ 231737359, %16 ], [ 180356101, %3 ]
  %37 = phi i32 [ 231737359, %16 ], [ 180356101, %3 ]
  %cfg_DiffPhi27 = phi i32 [ %33, %16 ], [ %15, %3 ]
  %38 = phi i32 [ %33, %16 ], [ %15, %3 ]
  %39 = phi i32 [ %33, %16 ], [ %15, %3 ]
  %40 = phi i32 [ %33, %16 ], [ %15, %3 ]
  %icmpEq96 = icmp eq i32 %39, %40
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %cfg_DiffPhi27, %38
  %41 = icmp eq i32 %38, %38
  %icmpEq98 = icmp eq i1 %icmpEq94, %41
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %36, %37
  %zext93 = zext i1 %icmpEq92 to i32
  %42 = zext i1 %icmpEq92 to i32
  %icmpEq100 = icmp eq i32 %zext93, %42
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq90 = icmp eq i32 %cfg_DestPhi26, %35
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq78 = icmp eq i32 %cfg_DiffPhi27, %39
  %43 = icmp eq i32 %38, %40
  %icmpEq102 = icmp eq i1 %icmpEq78, %43
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %cfg_DestPhi26, %36
  %44 = icmp eq i32 %35, %37
  %45 = icmp eq i32 %35, %37
  %icmpEq104 = icmp eq i1 %44, %45
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %icmpEq80 = icmp eq i1 %icmpEq76, %44
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %zext77 = zext i1 %icmpEq76 to i32
  %46 = zext i1 %44 to i32
  %icmpEq106 = icmp eq i32 %zext77, %46
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_ft(i32 %zext77, i32 35)
  %47 = xor i32 %cfg_DestPhi26, %cfg_DiffPhi27
  %cfg_icmpEq28 = icmp eq i32 %47, 283118105
  %48 = icmp eq i32 %47, 283118105
  %49 = icmp eq i32 %47, 283118105
  %icmpEq108 = icmp eq i1 %48, %49
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %icmpEq82 = icmp eq i1 %cfg_icmpEq28, %48
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %cfg_zext29 = zext i1 %cfg_icmpEq28 to i32
  %50 = zext i1 %48 to i32
  %icmpEq110 = icmp eq i32 %cfg_zext29, %50
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext29, i32 %47, i32 35)
  %51 = add nsw i32 %.020, 1
  %52 = add nsw i32 %.0, 1
  %53 = add nsw i32 %5, 1
  %54 = add nsw i32 %5, 1
  %icmpEq112 = icmp eq i32 %53, %54
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq84 = icmp eq i32 %52, %53
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %55 = sext i32 %52 to i64
  %56 = sext i32 %53 to i64
  %icmpEq114 = icmp eq i64 %55, %56
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %57 = getelementptr inbounds i8, ptr %0, i64 %55
  %58 = load i8, ptr %57, align 1
  %59 = sext i32 %51 to i64
  %60 = sext i32 %51 to i64
  %61 = sext i32 %51 to i64
  %icmpEq116 = icmp eq i64 %60, %61
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq86 = icmp eq i64 %59, %60
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %62 = getelementptr inbounds i8, ptr %0, i64 %59
  %63 = getelementptr inbounds i8, ptr %0, i64 %60
  %64 = load i8, ptr %62, align 1
  %65 = load i8, ptr %63, align 1
  %icmpEq118 = icmp eq i8 %64, %65
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %66 = icmp eq i8 %58, %64
  %67 = select i1 %66, i32 334496526, i32 385877276
  %68 = select i1 %66, i32 334496526, i32 385877276
  %icmpEq88 = icmp eq i32 %67, %68
  %69 = icmp eq i32 %68, %68
  %icmpEq120 = icmp eq i1 %icmpEq88, %69
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %70 = xor i32 283118105, %67
  br i1 %66, label %71, label %90

71:                                               ; preds = %34
  %cfg_DestPhi30 = phi i32 [ 283118105, %34 ]
  %72 = phi i32 [ 283118105, %34 ]
  %73 = phi i32 [ 283118105, %34 ]
  %cfg_DiffPhi31 = phi i32 [ %70, %34 ]
  %74 = phi i32 [ %70, %34 ]
  %75 = phi i32 [ %70, %34 ]
  %76 = phi i32 [ %70, %34 ]
  %icmpEq136 = icmp eq i32 %75, %76
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %icmpEq134 = icmp eq i32 %cfg_DiffPhi31, %74
  %77 = icmp eq i32 %74, %74
  %icmpEq138 = icmp eq i1 %icmpEq134, %77
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %icmpEq132 = icmp eq i32 %72, %73
  %zext133 = zext i1 %icmpEq132 to i32
  %78 = zext i1 %icmpEq132 to i32
  %icmpEq140 = icmp eq i32 %zext133, %78
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_ft(i32 %zext133, i32 35)
  %icmpEq124 = icmp eq i32 %cfg_DiffPhi31, %75
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq122 = icmp eq i32 %cfg_DestPhi30, %72
  %79 = icmp eq i32 %72, %73
  %icmpEq142 = icmp eq i1 %icmpEq122, %79
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %80 = icmp eq i32 %cfg_DestPhi30, %72
  %icmpEq126 = icmp eq i1 %icmpEq122, %80
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %zext123 = zext i1 %icmpEq122 to i32
  %81 = zext i1 %79 to i32
  %icmpEq144 = icmp eq i32 %zext123, %81
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  call void @assert_ft(i32 %zext123, i32 35)
  %82 = xor i32 %cfg_DestPhi30, %cfg_DiffPhi31
  %cfg_icmpEq32 = icmp eq i32 %82, 334496526
  %83 = icmp eq i32 %82, 334496526
  %84 = icmp eq i32 %82, 334496526
  %icmpEq146 = icmp eq i1 %83, %84
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %icmpEq128 = icmp eq i1 %cfg_icmpEq32, %83
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %cfg_zext33 = zext i1 %cfg_icmpEq32 to i32
  %85 = zext i1 %83 to i32
  %icmpEq148 = icmp eq i32 %cfg_zext33, %85
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext33, i32 %82, i32 35)
  %86 = getelementptr inbounds i32, ptr %1, i64 %55
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %86, align 4
  %89 = load i32, ptr %86, align 4
  %icmpEq150 = icmp eq i32 %88, %89
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq130 = icmp eq i32 %87, %88
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  br label %90

90:                                               ; preds = %71, %34
  %91 = phi i32 [ %87, %71 ], [ %52, %34 ]
  %92 = phi i32 [ %88, %71 ], [ %53, %34 ]
  %93 = phi i32 [ %88, %71 ], [ %53, %34 ]
  %cfg_DestPhi34 = phi i32 [ 283118105, %34 ], [ 334496526, %71 ]
  %94 = phi i32 [ 283118105, %34 ], [ 334496526, %71 ]
  %95 = phi i32 [ 283118105, %34 ], [ 334496526, %71 ]
  %96 = phi i32 [ 283118105, %34 ], [ 334496526, %71 ]
  %cfg_DiffPhi35 = phi i32 [ %70, %34 ], [ 82839058, %71 ]
  %97 = phi i32 [ %70, %34 ], [ 82839058, %71 ]
  %98 = phi i32 [ %70, %34 ], [ 82839058, %71 ]
  %99 = phi i32 [ %70, %34 ], [ 82839058, %71 ]
  %icmpEq174 = icmp eq i32 %98, %99
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %cfg_DiffPhi35, %97
  %100 = icmp eq i32 %97, %97
  %icmpEq176 = icmp eq i1 %icmpEq172, %100
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq170 = icmp eq i32 %95, %96
  %zext171 = zext i1 %icmpEq170 to i32
  %101 = zext i1 %icmpEq170 to i32
  %icmpEq178 = icmp eq i32 %zext171, %101
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  call void @assert_ft(i32 %zext171, i32 35)
  %icmpEq168 = icmp eq i32 %cfg_DestPhi34, %94
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq166 = icmp eq i32 %92, %93
  %102 = icmp eq i32 %93, %93
  %icmpEq180 = icmp eq i1 %icmpEq166, %102
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %icmpEq156 = icmp eq i32 %cfg_DiffPhi35, %98
  %zext157 = zext i1 %icmpEq156 to i32
  %103 = zext i1 %icmpEq156 to i32
  %icmpEq182 = icmp eq i32 %zext157, %103
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  call void @assert_ft(i32 %zext157, i32 35)
  %icmpEq154 = icmp eq i32 %cfg_DestPhi34, %95
  %104 = icmp eq i32 %94, %96
  %icmpEq158 = icmp eq i1 %icmpEq154, %104
  %105 = icmp eq i1 %104, %104
  %icmpEq184 = icmp eq i1 %icmpEq158, %105
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %icmpEq152 = icmp eq i32 %91, %92
  %106 = icmp eq i32 %92, %93
  %icmpEq186 = icmp eq i1 %icmpEq152, %106
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %zext153 = zext i1 %icmpEq152 to i32
  %107 = zext i1 %106 to i32
  %icmpEq160 = icmp eq i32 %zext153, %107
  %zext161 = zext i1 %icmpEq160 to i32
  %108 = zext i1 %icmpEq160 to i32
  %icmpEq188 = icmp eq i32 %zext161, %108
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  call void @assert_ft(i32 %zext161, i32 35)
  call void @assert_ft(i32 %zext153, i32 35)
  %109 = xor i32 %cfg_DestPhi34, %cfg_DiffPhi35
  %cfg_icmpEq36 = icmp eq i32 %109, 385877276
  %110 = icmp eq i32 %109, 385877276
  %icmpEq190 = icmp eq i1 %cfg_icmpEq36, %110
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %cfg_zext37 = zext i1 %cfg_icmpEq36 to i32
  %111 = zext i1 %110 to i32
  %icmpEq162 = icmp eq i32 %cfg_zext37, %111
  %zext163 = zext i1 %icmpEq162 to i32
  %112 = zext i1 %icmpEq162 to i32
  %icmpEq192 = icmp eq i32 %zext163, %112
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  call void @assert_ft(i32 %zext163, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext37, i32 %109, i32 35)
  %113 = getelementptr inbounds i32, ptr %1, i64 %59
  store i32 %91, ptr %113, align 4
  %.pre = load i8, ptr %62, align 1
  %114 = load i8, ptr %63, align 1
  %icmpEq194 = icmp eq i8 %.pre, %114
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %115 = load i8, ptr %62, align 1
  %icmpEq164 = icmp eq i8 %.pre, %115
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  br label %135

116:                                              ; preds = %16
  %cfg_DestPhi38 = phi i32 [ 231737359, %16 ]
  %117 = phi i32 [ 231737359, %16 ]
  %118 = phi i32 [ 231737359, %16 ]
  %cfg_DiffPhi39 = phi i32 [ %33, %16 ]
  %119 = phi i32 [ %33, %16 ]
  %120 = phi i32 [ %33, %16 ]
  %121 = phi i32 [ %33, %16 ]
  %icmpEq210 = icmp eq i32 %120, %121
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %icmpEq208 = icmp eq i32 %cfg_DiffPhi39, %119
  %122 = icmp eq i32 %119, %119
  %icmpEq212 = icmp eq i1 %icmpEq208, %122
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %117, %118
  %zext207 = zext i1 %icmpEq206 to i32
  %123 = zext i1 %icmpEq206 to i32
  %icmpEq214 = icmp eq i32 %zext207, %123
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq198 = icmp eq i32 %cfg_DiffPhi39, %120
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %cfg_DestPhi38, %117
  %124 = icmp eq i32 %117, %118
  %icmpEq216 = icmp eq i1 %icmpEq196, %124
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %125 = icmp eq i32 %cfg_DestPhi38, %117
  %icmpEq200 = icmp eq i1 %icmpEq196, %125
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext197 = zext i1 %icmpEq196 to i32
  %126 = zext i1 %124 to i32
  %icmpEq218 = icmp eq i32 %zext197, %126
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  call void @assert_ft(i32 %zext197, i32 35)
  %127 = xor i32 %cfg_DestPhi38, %cfg_DiffPhi39
  %cfg_icmpEq40 = icmp eq i32 %127, 437256987
  %128 = icmp eq i32 %127, 437256987
  %129 = icmp eq i32 %127, 437256987
  %icmpEq220 = icmp eq i1 %128, %129
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq202 = icmp eq i1 %cfg_icmpEq40, %128
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %cfg_zext41 = zext i1 %cfg_icmpEq40 to i32
  %130 = zext i1 %128 to i32
  %icmpEq222 = icmp eq i32 %cfg_zext41, %130
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext41, i32 %127, i32 35)
  %131 = getelementptr inbounds i32, ptr %1, i64 %27
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %131, align 4
  %134 = load i32, ptr %131, align 4
  %icmpEq224 = icmp eq i32 %133, %134
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq204 = icmp eq i32 %132, %133
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  br label %135

135:                                              ; preds = %116, %90
  %136 = phi i8 [ %.pre, %90 ], [ %25, %116 ]
  %137 = phi i8 [ %114, %90 ], [ %26, %116 ]
  %138 = phi i8 [ %114, %90 ], [ %26, %116 ]
  %139 = phi i8 [ %.pre, %90 ], [ %25, %116 ]
  %140 = phi i8 [ %114, %90 ], [ %26, %116 ]
  %141 = phi i8 [ %.pre, %90 ], [ %25, %116 ]
  %142 = phi i8 [ %114, %90 ], [ %26, %116 ]
  %.121 = phi i32 [ %51, %90 ], [ %.020, %116 ]
  %143 = phi i32 [ %51, %90 ], [ %4, %116 ]
  %144 = phi i32 [ %51, %90 ], [ %.020, %116 ]
  %145 = phi i32 [ %51, %90 ], [ %4, %116 ]
  %146 = phi i32 [ %51, %90 ], [ %.020, %116 ]
  %147 = phi i32 [ %51, %90 ], [ %4, %116 ]
  %148 = phi i32 [ %51, %90 ], [ %.020, %116 ]
  %149 = phi i32 [ %51, %90 ], [ %4, %116 ]
  %.1 = phi i32 [ %52, %90 ], [ %132, %116 ]
  %150 = phi i32 [ %53, %90 ], [ %133, %116 ]
  %151 = phi i32 [ %52, %90 ], [ %132, %116 ]
  %152 = phi i32 [ %53, %90 ], [ %133, %116 ]
  %153 = phi i32 [ %52, %90 ], [ %132, %116 ]
  %154 = phi i32 [ %53, %90 ], [ %133, %116 ]
  %155 = phi i32 [ %52, %90 ], [ %132, %116 ]
  %156 = phi i32 [ %53, %90 ], [ %133, %116 ]
  %cfg_DestPhi42 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %157 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %158 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %159 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %160 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %161 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %162 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %163 = phi i32 [ 385877276, %90 ], [ 437256987, %116 ]
  %cfg_DiffPhi43 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %164 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %165 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %166 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %167 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %168 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %169 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %170 = phi i32 [ 169869317, %90 ], [ 120587778, %116 ]
  %icmpEq336 = icmp eq i32 %169, %170
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %icmpEq334 = icmp eq i32 %167, %168
  %171 = icmp eq i32 %168, %168
  %icmpEq338 = icmp eq i1 %icmpEq334, %171
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  %icmpEq332 = icmp eq i32 %165, %166
  %zext333 = zext i1 %icmpEq332 to i32
  %172 = zext i1 %icmpEq332 to i32
  %icmpEq340 = icmp eq i32 %zext333, %172
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  call void @assert_ft(i32 %zext333, i32 35)
  %icmpEq330 = icmp eq i32 %cfg_DiffPhi43, %164
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  %icmpEq328 = icmp eq i32 %162, %163
  %173 = icmp eq i32 %163, %163
  %icmpEq342 = icmp eq i1 %icmpEq328, %173
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %icmpEq326 = icmp eq i32 %160, %161
  %zext327 = zext i1 %icmpEq326 to i32
  %174 = zext i1 %icmpEq326 to i32
  %icmpEq344 = icmp eq i32 %zext327, %174
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  call void @assert_ft(i32 %zext327, i32 35)
  %icmpEq324 = icmp eq i32 %158, %159
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  %icmpEq322 = icmp eq i32 %cfg_DestPhi42, %157
  %175 = icmp eq i32 %157, %157
  %icmpEq346 = icmp eq i1 %icmpEq322, %175
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %icmpEq320 = icmp eq i32 %155, %156
  %zext321 = zext i1 %icmpEq320 to i32
  %176 = zext i1 %icmpEq320 to i32
  %icmpEq348 = icmp eq i32 %zext321, %176
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq318 = icmp eq i32 %153, %154
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %icmpEq316 = icmp eq i32 %151, %152
  %177 = icmp eq i32 %152, %152
  %icmpEq350 = icmp eq i1 %icmpEq316, %177
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq314 = icmp eq i32 %.1, %150
  %zext315 = zext i1 %icmpEq314 to i32
  %178 = zext i1 %icmpEq314 to i32
  %icmpEq352 = icmp eq i32 %zext315, %178
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  call void @assert_ft(i32 %zext315, i32 35)
  %icmpEq312 = icmp eq i32 %148, %149
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %icmpEq310 = icmp eq i32 %146, %147
  %179 = icmp eq i32 %147, %147
  %icmpEq354 = icmp eq i1 %icmpEq310, %179
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %icmpEq308 = icmp eq i32 %144, %145
  %zext309 = zext i1 %icmpEq308 to i32
  %180 = zext i1 %icmpEq308 to i32
  %icmpEq356 = icmp eq i32 %zext309, %180
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  call void @assert_ft(i32 %zext309, i32 35)
  %icmpEq306 = icmp eq i32 %.121, %143
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %icmpEq304 = icmp eq i8 %141, %142
  %181 = icmp eq i8 %142, %142
  %icmpEq358 = icmp eq i1 %icmpEq304, %181
  %zext359 = zext i1 %icmpEq358 to i32
  call void @assert_ft(i32 %zext359, i32 35)
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %icmpEq302 = icmp eq i8 %139, %140
  %zext303 = zext i1 %icmpEq302 to i32
  %182 = zext i1 %icmpEq302 to i32
  %icmpEq360 = icmp eq i32 %zext303, %182
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  call void @assert_ft(i32 %zext303, i32 35)
  %icmpEq300 = icmp eq i8 %137, %138
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %icmpEq264 = icmp eq i32 %167, %169
  %183 = icmp eq i32 %168, %170
  %icmpEq362 = icmp eq i1 %icmpEq264, %183
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq262 = icmp eq i32 %cfg_DiffPhi43, %165
  %184 = icmp eq i32 %164, %166
  %185 = icmp eq i32 %164, %166
  %icmpEq364 = icmp eq i1 %184, %185
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %icmpEq266 = icmp eq i1 %icmpEq262, %184
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext263 = zext i1 %icmpEq262 to i32
  %186 = zext i1 %184 to i32
  %icmpEq366 = icmp eq i32 %zext263, %186
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  call void @assert_ft(i32 %zext263, i32 35)
  %icmpEq260 = icmp eq i32 %160, %162
  %zext261 = zext i1 %icmpEq260 to i32
  %187 = zext i1 %icmpEq260 to i32
  %188 = zext i1 %icmpEq260 to i32
  %icmpEq368 = icmp eq i32 %187, %188
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %icmpEq268 = icmp eq i32 %zext261, %187
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq258 = icmp eq i32 %cfg_DestPhi42, %158
  %189 = icmp eq i32 %157, %159
  %icmpEq370 = icmp eq i1 %icmpEq258, %189
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %icmpEq256 = icmp eq i32 %153, %155
  %190 = icmp eq i32 %154, %156
  %191 = icmp eq i32 %154, %156
  %icmpEq372 = icmp eq i1 %190, %191
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  %icmpEq270 = icmp eq i1 %icmpEq256, %190
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %zext257 = zext i1 %icmpEq256 to i32
  %192 = zext i1 %190 to i32
  %icmpEq374 = icmp eq i32 %zext257, %192
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq254 = icmp eq i32 %.1, %151
  %zext255 = zext i1 %icmpEq254 to i32
  %193 = zext i1 %icmpEq254 to i32
  %194 = zext i1 %icmpEq254 to i32
  %icmpEq376 = icmp eq i32 %193, %194
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %icmpEq272 = icmp eq i32 %zext255, %193
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  call void @assert_ft(i32 %zext255, i32 35)
  %icmpEq252 = icmp eq i32 %146, %148
  %195 = icmp eq i32 %147, %149
  %icmpEq378 = icmp eq i1 %icmpEq252, %195
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq250 = icmp eq i32 %.121, %144
  %196 = icmp eq i32 %143, %145
  %197 = icmp eq i32 %143, %145
  %icmpEq380 = icmp eq i1 %196, %197
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %icmpEq274 = icmp eq i1 %icmpEq250, %196
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %zext251 = zext i1 %icmpEq250 to i32
  %198 = zext i1 %196 to i32
  %icmpEq382 = icmp eq i32 %zext251, %198
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  call void @assert_ft(i32 %zext251, i32 35)
  %icmpEq248 = icmp eq i8 %139, %141
  %zext249 = zext i1 %icmpEq248 to i32
  %199 = zext i1 %icmpEq248 to i32
  %200 = zext i1 %icmpEq248 to i32
  %icmpEq384 = icmp eq i32 %199, %200
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %icmpEq276 = icmp eq i32 %zext249, %199
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  call void @assert_ft(i32 %zext249, i32 35)
  %icmpEq246 = icmp eq i8 %136, %137
  %201 = icmp eq i8 %137, %138
  %icmpEq386 = icmp eq i1 %icmpEq246, %201
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq234 = icmp eq i32 %cfg_DiffPhi43, %167
  %202 = icmp eq i32 %164, %168
  %203 = icmp eq i32 %164, %168
  %icmpEq388 = icmp eq i1 %202, %203
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %icmpEq278 = icmp eq i1 %icmpEq234, %202
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %zext235 = zext i1 %icmpEq234 to i32
  %204 = zext i1 %202 to i32
  %icmpEq390 = icmp eq i32 %zext235, %204
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq232 = icmp eq i32 %cfg_DestPhi42, %160
  %205 = icmp eq i32 %157, %161
  %206 = icmp eq i32 %157, %161
  %207 = icmp eq i32 %157, %161
  %icmpEq392 = icmp eq i1 %206, %207
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  %icmpEq280 = icmp eq i1 %205, %206
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq236 = icmp eq i1 %icmpEq232, %205
  %208 = icmp eq i1 %205, %206
  %icmpEq394 = icmp eq i1 %icmpEq236, %208
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %zext233 = zext i1 %icmpEq232 to i32
  %209 = zext i1 %205 to i32
  %210 = zext i1 %205 to i32
  %icmpEq396 = icmp eq i32 %209, %210
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %icmpEq282 = icmp eq i32 %zext233, %209
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq230 = icmp eq i32 %.1, %153
  %211 = icmp eq i32 %150, %154
  %icmpEq398 = icmp eq i1 %icmpEq230, %211
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %zext231 = zext i1 %icmpEq230 to i32
  %212 = zext i1 %211 to i32
  %213 = zext i1 %211 to i32
  %icmpEq284 = icmp eq i32 %212, %213
  %214 = icmp eq i32 %213, %213
  %icmpEq400 = icmp eq i1 %icmpEq284, %214
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %icmpEq238 = icmp eq i32 %zext231, %212
  %zext239 = zext i1 %icmpEq238 to i32
  %215 = zext i1 %icmpEq238 to i32
  %icmpEq402 = icmp eq i32 %zext239, %215
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  call void @assert_ft(i32 %zext239, i32 35)
  call void @assert_ft(i32 %zext231, i32 35)
  %icmpEq228 = icmp eq i32 %.121, %146
  %216 = icmp eq i32 %143, %147
  %217 = icmp eq i32 %143, %147
  %icmpEq404 = icmp eq i1 %216, %217
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  %icmpEq286 = icmp eq i1 %icmpEq228, %216
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %zext229 = zext i1 %icmpEq228 to i32
  %218 = zext i1 %216 to i32
  %icmpEq406 = icmp eq i32 %zext229, %218
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq226 = icmp eq i8 %136, %139
  %219 = icmp eq i8 %137, %140
  %220 = icmp eq i8 %137, %140
  %221 = icmp eq i8 %137, %140
  %icmpEq408 = icmp eq i1 %220, %221
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %icmpEq288 = icmp eq i1 %219, %220
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq240 = icmp eq i1 %icmpEq226, %219
  %222 = icmp eq i1 %219, %220
  %icmpEq410 = icmp eq i1 %icmpEq240, %222
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %zext227 = zext i1 %icmpEq226 to i32
  %223 = zext i1 %219 to i32
  %224 = zext i1 %219 to i32
  %icmpEq412 = icmp eq i32 %223, %224
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  %icmpEq290 = icmp eq i32 %zext227, %223
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  call void @assert_ft(i32 %zext227, i32 35)
  %225 = xor i32 %cfg_DestPhi42, %cfg_DiffPhi43
  %226 = xor i32 %157, %164
  %icmpEq414 = icmp eq i32 %225, %226
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  %cfg_icmpEq44 = icmp eq i32 %225, 488637721
  %227 = icmp eq i32 %226, 488637721
  %228 = icmp eq i32 %226, 488637721
  %icmpEq292 = icmp eq i1 %227, %228
  %229 = icmp eq i1 %228, %228
  %icmpEq416 = icmp eq i1 %icmpEq292, %229
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq242 = icmp eq i1 %cfg_icmpEq44, %227
  %zext243 = zext i1 %icmpEq242 to i32
  %230 = zext i1 %icmpEq242 to i32
  %icmpEq418 = icmp eq i32 %zext243, %230
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  call void @assert_ft(i32 %zext243, i32 35)
  %cfg_zext45 = zext i1 %cfg_icmpEq44 to i32
  %231 = zext i1 %227 to i32
  %icmpEq294 = icmp eq i32 %cfg_zext45, %231
  %232 = icmp eq i32 %231, %231
  %icmpEq420 = icmp eq i1 %icmpEq294, %232
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext45, i32 %225, i32 35)
  %.not = icmp eq i8 %136, 0
  %233 = icmp eq i8 %137, 0
  %icmpEq422 = icmp eq i1 %.not, %233
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %234 = select i1 %.not, i32 540016897, i32 180356101
  %235 = select i1 %233, i32 540016897, i32 180356101
  %236 = select i1 %233, i32 540016897, i32 180356101
  %icmpEq296 = icmp eq i32 %235, %236
  %237 = icmp eq i32 %236, %236
  %icmpEq424 = icmp eq i1 %icmpEq296, %237
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %icmpEq244 = icmp eq i32 %234, %235
  %zext245 = zext i1 %icmpEq244 to i32
  %238 = zext i1 %icmpEq244 to i32
  %icmpEq426 = icmp eq i32 %zext245, %238
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  call void @assert_ft(i32 %zext245, i32 35)
  %239 = xor i32 488637721, %234
  %240 = xor i32 488637721, %235
  %icmpEq298 = icmp eq i32 %239, %240
  %241 = icmp eq i32 %240, %240
  %icmpEq428 = icmp eq i1 %icmpEq298, %241
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  br i1 %.not, label %242, label %3

242:                                              ; preds = %135
  %cfg_DestPhi46 = phi i32 [ 488637721, %135 ]
  %243 = phi i32 [ 488637721, %135 ]
  %cfg_DiffPhi47 = phi i32 [ %239, %135 ]
  %244 = phi i32 [ %240, %135 ]
  %icmpEq432 = icmp eq i32 %cfg_DiffPhi47, %244
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  %icmpEq430 = icmp eq i32 %cfg_DestPhi46, %243
  %245 = icmp eq i32 %243, %243
  %icmpEq434 = icmp eq i1 %icmpEq430, %245
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  %246 = xor i32 %cfg_DestPhi46, %cfg_DiffPhi47
  %cfg_icmpEq48 = icmp eq i32 %246, 540016897
  %247 = icmp eq i32 %246, 540016897
  %icmpEq436 = icmp eq i1 %cfg_icmpEq48, %247
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %cfg_zext49 = zext i1 %cfg_icmpEq48 to i32
  call void @assert_cfg_ft(i32 %cfg_zext49, i32 %246, i32 35)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @search(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %0, align 1
  %4 = load i8, ptr %0, align 1
  %icmpEq = icmp eq i8 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = icmp eq i8 %3, 0
  %6 = select i1 %5, i32 591397407, i32 180356386
  %7 = xor i32 128975641, %6
  br i1 %5, label %.loopexit, label %8

8:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975641, %2 ]
  %9 = phi i32 [ 128975641, %2 ]
  %cfg_DiffPhi = phi i32 [ %7, %2 ]
  %10 = phi i32 [ %7, %2 ]
  %icmpEq62 = icmp eq i32 %cfg_DiffPhi, %10
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq60 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq64 = icmp eq i1 %icmpEq60, %11
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %12 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %12, 180356386
  %13 = icmp eq i32 %12, 180356386
  %icmpEq66 = icmp eq i1 %cfg_icmpEq, %13
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %12, i32 35)
  %14 = load ptr, ptr @next, align 8
  tail call void @preprocpat(ptr noundef nonnull %0, ptr noundef %14)
  %15 = load i8, ptr %1, align 1
  %16 = load i8, ptr %1, align 1
  %icmpEq68 = icmp eq i8 %15, %16
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %.not20 = icmp eq i8 %15, 0
  %17 = select i1 %.not20, i32 591397407, i32 231735821
  %18 = xor i32 180356386, %17
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %8
  %cfg_DestPhi28 = phi i32 [ 180356386, %8 ]
  %19 = phi i32 [ 180356386, %8 ]
  %cfg_DiffPhi29 = phi i32 [ %18, %8 ]
  %20 = phi i32 [ %18, %8 ]
  %icmpEq72 = icmp eq i32 %cfg_DiffPhi29, %20
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i32 %cfg_DestPhi28, %19
  %21 = icmp eq i32 %19, %19
  %icmpEq74 = icmp eq i1 %icmpEq70, %21
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %22 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %cfg_icmpEq30 = icmp eq i32 %22, 231735821
  %23 = icmp eq i32 %22, 231735821
  %icmpEq76 = icmp eq i1 %cfg_icmpEq30, %23
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %22, i32 35)
  %24 = load ptr, ptr @next, align 8
  br label %25

25:                                               ; preds = %98, %.lr.ph
  %26 = phi i8 [ %15, %.lr.ph ], [ %124, %98 ]
  %27 = phi i8 [ %16, %.lr.ph ], [ %124, %98 ]
  %.022 = phi i32 [ 0, %.lr.ph ], [ %.1, %98 ]
  %28 = phi i32 [ 0, %.lr.ph ], [ %.1, %98 ]
  %.01521 = phi ptr [ %1, %.lr.ph ], [ %.116, %98 ]
  %29 = phi ptr [ %1, %.lr.ph ], [ %.116, %98 ]
  %cfg_DestPhi32 = phi i32 [ 231735821, %.lr.ph ], [ 540017925, %98 ]
  %30 = phi i32 [ 231735821, %.lr.ph ], [ 540017925, %98 ]
  %cfg_DiffPhi33 = phi i32 [ 489686802, %.lr.ph ], [ %129, %98 ]
  %31 = phi i32 [ 489686802, %.lr.ph ], [ %129, %98 ]
  %icmpEq84 = icmp eq i32 %cfg_DiffPhi33, %31
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i32 %cfg_DestPhi32, %30
  %32 = icmp eq i32 %30, %30
  %icmpEq86 = icmp eq i1 %icmpEq82, %32
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %icmpEq80 = icmp eq i32 %.022, %28
  %zext81 = zext i1 %icmpEq80 to i32
  %33 = zext i1 %icmpEq80 to i32
  %icmpEq88 = icmp eq i32 %zext81, %33
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i8 %26, %27
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %34 = xor i32 %cfg_DestPhi32, %cfg_DiffPhi33
  %35 = xor i32 %30, %31
  %icmpEq90 = icmp eq i32 %34, %35
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %cfg_icmpEq34 = icmp eq i32 %34, 283116831
  %cfg_zext35 = zext i1 %cfg_icmpEq34 to i32
  call void @assert_cfg_ft(i32 %cfg_zext35, i32 %34, i32 35)
  %36 = icmp eq i32 %.022, -1
  %37 = icmp eq i32 %28, -1
  %icmpEq92 = icmp eq i1 %36, %37
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %38 = select i1 %36, i32 385877777, i32 334497035
  %39 = xor i32 283116831, %38
  br i1 %36, label %54, label %40

40:                                               ; preds = %25
  %cfg_DestPhi36 = phi i32 [ 283116831, %25 ]
  %41 = phi i32 [ 283116831, %25 ]
  %cfg_DiffPhi37 = phi i32 [ %39, %25 ]
  %42 = phi i32 [ %39, %25 ]
  %icmpEq96 = icmp eq i32 %cfg_DiffPhi37, %42
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %cfg_DestPhi36, %41
  %43 = icmp eq i32 %41, %41
  %icmpEq98 = icmp eq i1 %icmpEq94, %43
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %44 = xor i32 %cfg_DestPhi36, %cfg_DiffPhi37
  %cfg_icmpEq38 = icmp eq i32 %44, 334497035
  %45 = icmp eq i32 %44, 334497035
  %icmpEq100 = icmp eq i1 %cfg_icmpEq38, %45
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %cfg_zext39 = zext i1 %cfg_icmpEq38 to i32
  call void @assert_cfg_ft(i32 %cfg_zext39, i32 %44, i32 35)
  %46 = sext i32 %.022 to i64
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = getelementptr inbounds i8, ptr %0, i64 %46
  %49 = load i8, ptr %47, align 1
  %50 = load i8, ptr %48, align 1
  %icmpEq102 = icmp eq i8 %49, %50
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %51 = icmp eq i8 %49, %26
  %52 = select i1 %51, i32 385877777, i32 488637199
  %53 = xor i32 334497035, %52
  br i1 %51, label %54, label %79

54:                                               ; preds = %40, %25
  %cfg_DestPhi40 = phi i32 [ 334497035, %40 ], [ 283116831, %25 ]
  %55 = phi i32 [ 334497035, %40 ], [ 283116831, %25 ]
  %cfg_DiffPhi41 = phi i32 [ %53, %40 ], [ %39, %25 ]
  %56 = phi i32 [ %53, %40 ], [ %39, %25 ]
  %icmpEq106 = icmp eq i32 %cfg_DiffPhi41, %56
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq104 = icmp eq i32 %cfg_DestPhi40, %55
  %57 = icmp eq i32 %55, %55
  %icmpEq108 = icmp eq i1 %icmpEq104, %57
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %58 = xor i32 %cfg_DestPhi40, %cfg_DiffPhi41
  %cfg_icmpEq42 = icmp eq i32 %58, 385877777
  %59 = icmp eq i32 %58, 385877777
  %icmpEq110 = icmp eq i1 %cfg_icmpEq42, %59
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %cfg_zext43 = zext i1 %cfg_icmpEq42 to i32
  call void @assert_cfg_ft(i32 %cfg_zext43, i32 %58, i32 35)
  %60 = getelementptr inbounds i8, ptr %.01521, i64 1
  %61 = add nsw i32 %.022, 1
  %62 = add nsw i32 %28, 1
  %icmpEq112 = icmp eq i32 %61, %62
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %0, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  %67 = icmp eq i8 %65, 0
  %icmpEq114 = icmp eq i1 %66, %67
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %68 = select i1 %66, i32 437256987, i32 540017925
  %69 = xor i32 385877777, %68
  br i1 %66, label %70, label %98

70:                                               ; preds = %54
  %cfg_DestPhi44 = phi i32 [ 385877777, %54 ]
  %71 = phi i32 [ 385877777, %54 ]
  %cfg_DiffPhi45 = phi i32 [ %69, %54 ]
  %72 = phi i32 [ %69, %54 ]
  %icmpEq118 = icmp eq i32 %cfg_DiffPhi45, %72
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %icmpEq116 = icmp eq i32 %cfg_DestPhi44, %71
  %73 = icmp eq i32 %71, %71
  %icmpEq120 = icmp eq i1 %icmpEq116, %73
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %74 = xor i32 %cfg_DestPhi44, %cfg_DiffPhi45
  %cfg_icmpEq46 = icmp eq i32 %74, 437256987
  %75 = icmp eq i32 %74, 437256987
  %icmpEq122 = icmp eq i1 %cfg_icmpEq46, %75
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %cfg_zext47 = zext i1 %cfg_icmpEq46 to i32
  call void @assert_cfg_ft(i32 %cfg_zext47, i32 %74, i32 35)
  %76 = sub nsw i64 0, %63
  %77 = getelementptr inbounds i8, ptr %60, i64 %76
  %78 = getelementptr inbounds i8, ptr %60, i64 %76
  br label %.loopexit

79:                                               ; preds = %40
  %cfg_DestPhi48 = phi i32 [ 334497035, %40 ]
  %80 = phi i32 [ 334497035, %40 ]
  %81 = phi i32 [ 334497035, %40 ]
  %cfg_DiffPhi49 = phi i32 [ %53, %40 ]
  %82 = phi i32 [ %53, %40 ]
  %83 = phi i32 [ %53, %40 ]
  %84 = phi i32 [ %53, %40 ]
  %icmpEq138 = icmp eq i32 %83, %84
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq136 = icmp eq i32 %cfg_DiffPhi49, %82
  %85 = icmp eq i32 %82, %82
  %icmpEq140 = icmp eq i1 %icmpEq136, %85
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %icmpEq134 = icmp eq i32 %80, %81
  %zext135 = zext i1 %icmpEq134 to i32
  %86 = zext i1 %icmpEq134 to i32
  %icmpEq142 = icmp eq i32 %zext135, %86
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  call void @assert_ft(i32 %zext135, i32 35)
  %icmpEq126 = icmp eq i32 %cfg_DiffPhi49, %83
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i32 %cfg_DestPhi48, %80
  %87 = icmp eq i32 %80, %81
  %icmpEq144 = icmp eq i1 %icmpEq124, %87
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %88 = icmp eq i32 %cfg_DestPhi48, %80
  %icmpEq128 = icmp eq i1 %icmpEq124, %88
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %zext125 = zext i1 %icmpEq124 to i32
  %89 = zext i1 %87 to i32
  %icmpEq146 = icmp eq i32 %zext125, %89
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  call void @assert_ft(i32 %zext125, i32 35)
  %90 = xor i32 %cfg_DestPhi48, %cfg_DiffPhi49
  %cfg_icmpEq50 = icmp eq i32 %90, 488637199
  %91 = icmp eq i32 %90, 488637199
  %92 = icmp eq i32 %90, 488637199
  %icmpEq148 = icmp eq i1 %91, %92
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %icmpEq130 = icmp eq i1 %cfg_icmpEq50, %91
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %cfg_zext51 = zext i1 %cfg_icmpEq50 to i32
  %93 = zext i1 %91 to i32
  %icmpEq150 = icmp eq i32 %cfg_zext51, %93
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext51, i32 %90, i32 35)
  %94 = getelementptr inbounds i32, ptr %24, i64 %46
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %94, align 4
  %97 = load i32, ptr %94, align 4
  %icmpEq152 = icmp eq i32 %96, %97
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %icmpEq132 = icmp eq i32 %95, %96
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  br label %98

98:                                               ; preds = %79, %54
  %.116 = phi ptr [ %60, %54 ], [ %.01521, %79 ]
  %99 = phi ptr [ %60, %54 ], [ %29, %79 ]
  %100 = phi ptr [ %60, %54 ], [ %.01521, %79 ]
  %101 = phi ptr [ %60, %54 ], [ %29, %79 ]
  %.1 = phi i32 [ %61, %54 ], [ %95, %79 ]
  %102 = phi i32 [ %62, %54 ], [ %96, %79 ]
  %103 = phi i32 [ %61, %54 ], [ %95, %79 ]
  %104 = phi i32 [ %62, %54 ], [ %96, %79 ]
  %cfg_DestPhi52 = phi i32 [ 385877777, %54 ], [ 488637199, %79 ]
  %105 = phi i32 [ 385877777, %54 ], [ 488637199, %79 ]
  %106 = phi i32 [ 385877777, %54 ], [ 488637199, %79 ]
  %107 = phi i32 [ 385877777, %54 ], [ 488637199, %79 ]
  %cfg_DiffPhi53 = phi i32 [ %69, %54 ], [ 1024460298, %79 ]
  %108 = phi i32 [ %69, %54 ], [ 1024460298, %79 ]
  %109 = phi i32 [ %69, %54 ], [ 1024460298, %79 ]
  %110 = phi i32 [ %69, %54 ], [ 1024460298, %79 ]
  %icmpEq178 = icmp eq i32 %109, %110
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %icmpEq176 = icmp eq i32 %cfg_DiffPhi53, %108
  %111 = icmp eq i32 %108, %108
  %icmpEq180 = icmp eq i1 %icmpEq176, %111
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq174 = icmp eq i32 %106, %107
  %zext175 = zext i1 %icmpEq174 to i32
  %112 = zext i1 %icmpEq174 to i32
  %icmpEq182 = icmp eq i32 %zext175, %112
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %cfg_DestPhi52, %105
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq170 = icmp eq i32 %103, %104
  %113 = icmp eq i32 %104, %104
  %icmpEq184 = icmp eq i1 %icmpEq170, %113
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %icmpEq168 = icmp eq i32 %.1, %102
  %zext169 = zext i1 %icmpEq168 to i32
  %114 = zext i1 %icmpEq168 to i32
  %icmpEq186 = icmp eq i32 %zext169, %114
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq158 = icmp eq i32 %cfg_DiffPhi53, %109
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %icmpEq156 = icmp eq i32 %cfg_DestPhi52, %106
  %115 = icmp eq i32 %105, %107
  %icmpEq188 = icmp eq i1 %icmpEq156, %115
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %116 = icmp eq i32 %cfg_DestPhi52, %106
  %icmpEq160 = icmp eq i1 %icmpEq156, %116
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %zext157 = zext i1 %icmpEq156 to i32
  %117 = zext i1 %115 to i32
  %icmpEq190 = icmp eq i32 %zext157, %117
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  call void @assert_ft(i32 %zext157, i32 35)
  %icmpEq154 = icmp eq i32 %.1, %103
  %zext155 = zext i1 %icmpEq154 to i32
  %118 = zext i1 %icmpEq154 to i32
  %119 = zext i1 %icmpEq154 to i32
  %icmpEq192 = icmp eq i32 %118, %119
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq162 = icmp eq i32 %zext155, %118
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  call void @assert_ft(i32 %zext155, i32 35)
  %120 = xor i32 %cfg_DestPhi52, %cfg_DiffPhi53
  %121 = xor i32 %105, %108
  %icmpEq194 = icmp eq i32 %120, %121
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %cfg_icmpEq54 = icmp eq i32 %120, 540017925
  %cfg_zext55 = zext i1 %cfg_icmpEq54 to i32
  %122 = zext i1 %cfg_icmpEq54 to i32
  %icmpEq164 = icmp eq i32 %cfg_zext55, %122
  %123 = icmp eq i32 %122, %122
  %icmpEq196 = icmp eq i1 %icmpEq164, %123
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext55, i32 %120, i32 35)
  %124 = load i8, ptr %.116, align 1
  %125 = load i8, ptr %99, align 1
  %icmpEq198 = icmp eq i8 %124, %125
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %.not = icmp eq i8 %124, 0
  %126 = select i1 %.not, i32 591397407, i32 283116831
  %127 = select i1 %.not, i32 591397407, i32 283116831
  %icmpEq166 = icmp eq i32 %126, %127
  %128 = icmp eq i32 %127, %127
  %icmpEq200 = icmp eq i1 %icmpEq166, %128
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %129 = xor i32 540017925, %126
  br i1 %.not, label %.loopexit, label %25

.loopexit:                                        ; preds = %98, %70, %8, %2
  %.017 = phi ptr [ %77, %70 ], [ %1, %2 ], [ null, %8 ], [ null, %98 ]
  %130 = phi ptr [ %78, %70 ], [ %1, %2 ], [ null, %8 ], [ null, %98 ]
  %cfg_DestPhi56 = phi i32 [ 540017925, %98 ], [ 180356386, %8 ], [ 128975641, %2 ], [ 437256987, %70 ]
  %131 = phi i32 [ 540017925, %98 ], [ 180356386, %8 ], [ 128975641, %2 ], [ 437256987, %70 ]
  %cfg_DiffPhi57 = phi i32 [ %129, %98 ], [ %18, %8 ], [ %7, %2 ], [ 961544452, %70 ]
  %132 = phi i32 [ %129, %98 ], [ %18, %8 ], [ %7, %2 ], [ 961544452, %70 ]
  %icmpEq204 = icmp eq i32 %cfg_DiffPhi57, %132
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  %icmpEq202 = icmp eq i32 %cfg_DestPhi56, %131
  %133 = icmp eq i32 %131, %131
  %icmpEq206 = icmp eq i1 %icmpEq202, %133
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %134 = xor i32 %cfg_DestPhi56, %cfg_DiffPhi57
  %cfg_icmpEq58 = icmp eq i32 %134, 591397407
  %135 = icmp eq i32 %134, 591397407
  %icmpEq208 = icmp eq i1 %cfg_icmpEq58, %135
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %cfg_zext59 = zext i1 %cfg_icmpEq58 to i32
  call void @assert_cfg_ft(i32 %cfg_zext59, i32 %134, i32 35)
  ret ptr %.017
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 2
  %4 = icmp slt i32 %0, 2
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180356101, i32 231736590
  %6 = xor i32 128975389, %5
  br i1 %3, label %7, label %15

7:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %8 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %6, %2 ]
  %9 = phi i32 [ %6, %2 ]
  %icmpEq125 = icmp eq i32 %cfg_DiffPhi, %9
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq123 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq127 = icmp eq i1 %icmpEq123, %10
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356101
  %12 = icmp eq i32 %11, 180356101
  %icmpEq129 = icmp eq i1 %cfg_icmpEq, %12
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = load ptr, ptr %1, align 8
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %13)
  tail call void @exit(i32 noundef 0) #13
  unreachable

15:                                               ; preds = %2
  %cfg_DestPhi55 = phi i32 [ 128975389, %2 ]
  %16 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi56 = phi i32 [ %6, %2 ]
  %17 = phi i32 [ %6, %2 ]
  %icmpEq133 = icmp eq i32 %cfg_DiffPhi56, %17
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq131 = icmp eq i32 %cfg_DestPhi55, %16
  %18 = icmp eq i32 %16, %16
  %icmpEq135 = icmp eq i1 %icmpEq131, %18
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %19 = xor i32 %cfg_DestPhi55, %cfg_DiffPhi56
  %cfg_icmpEq57 = icmp eq i32 %19, 231736590
  %20 = icmp eq i32 %19, 231736590
  %icmpEq137 = icmp eq i1 %cfg_icmpEq57, %20
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %cfg_zext58 = zext i1 %cfg_icmpEq57 to i32
  call void @assert_cfg_ft(i32 %cfg_zext58, i32 %19, i32 35)
  %21 = getelementptr inbounds ptr, ptr %1, i64 1
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %21, align 8
  %24 = tail call i32 @strcasecmp(ptr noundef %22, ptr noundef nonnull @.str.1) #14
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq i32 %24, 0
  %icmpEq139 = icmp eq i1 %25, %26
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %27 = select i1 %25, i32 437258503, i32 283116314
  %28 = xor i32 231736590, %27
  br i1 %25, label %57, label %29

29:                                               ; preds = %15
  %cfg_DestPhi59 = phi i32 [ 231736590, %15 ]
  %30 = phi i32 [ 231736590, %15 ]
  %cfg_DiffPhi60 = phi i32 [ %28, %15 ]
  %31 = phi i32 [ %28, %15 ]
  %icmpEq143 = icmp eq i32 %cfg_DiffPhi60, %31
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %cfg_DestPhi59, %30
  %32 = icmp eq i32 %30, %30
  %icmpEq145 = icmp eq i1 %icmpEq141, %32
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %33 = xor i32 %cfg_DestPhi59, %cfg_DiffPhi60
  %cfg_icmpEq61 = icmp eq i32 %33, 283116314
  %34 = icmp eq i32 %33, 283116314
  %icmpEq147 = icmp eq i1 %cfg_icmpEq61, %34
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %cfg_zext62 = zext i1 %cfg_icmpEq61 to i32
  call void @assert_cfg_ft(i32 %cfg_zext62, i32 %33, i32 35)
  %35 = tail call i32 @strcasecmp(ptr noundef %22, ptr noundef nonnull @.str.3) #14
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i32 %35, 0
  %icmpEq149 = icmp eq i1 %36, %37
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %38 = select i1 %36, i32 437258503, i32 334496526
  %39 = xor i32 283116314, %38
  br i1 %36, label %57, label %40

40:                                               ; preds = %29
  %cfg_DestPhi63 = phi i32 [ 283116314, %29 ]
  %41 = phi i32 [ 283116314, %29 ]
  %cfg_DiffPhi64 = phi i32 [ %39, %29 ]
  %42 = phi i32 [ %39, %29 ]
  %icmpEq153 = icmp eq i32 %cfg_DiffPhi64, %42
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %icmpEq151 = icmp eq i32 %cfg_DestPhi63, %41
  %43 = icmp eq i32 %41, %41
  %icmpEq155 = icmp eq i1 %icmpEq151, %43
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %44 = xor i32 %cfg_DestPhi63, %cfg_DiffPhi64
  %cfg_icmpEq65 = icmp eq i32 %44, 334496526
  %45 = icmp eq i32 %44, 334496526
  %icmpEq157 = icmp eq i1 %cfg_icmpEq65, %45
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %cfg_zext66 = zext i1 %cfg_icmpEq65 to i32
  call void @assert_cfg_ft(i32 %cfg_zext66, i32 %44, i32 35)
  %46 = tail call i32 @strcasecmp(ptr noundef %22, ptr noundef nonnull @.str.5) #14
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq i32 %46, 0
  %icmpEq159 = icmp eq i1 %47, %48
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %49 = select i1 %47, i32 437258503, i32 385876738
  %50 = xor i32 334496526, %49
  br i1 %47, label %57, label %51

51:                                               ; preds = %40
  %cfg_DestPhi67 = phi i32 [ 334496526, %40 ]
  %52 = phi i32 [ 334496526, %40 ]
  %cfg_DiffPhi68 = phi i32 [ %50, %40 ]
  %53 = phi i32 [ %50, %40 ]
  %icmpEq163 = icmp eq i32 %cfg_DiffPhi68, %53
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq161 = icmp eq i32 %cfg_DestPhi67, %52
  %54 = icmp eq i32 %52, %52
  %icmpEq165 = icmp eq i1 %icmpEq161, %54
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %55 = xor i32 %cfg_DestPhi67, %cfg_DiffPhi68
  %cfg_icmpEq69 = icmp eq i32 %55, 385876738
  %56 = icmp eq i32 %55, 385876738
  %icmpEq167 = icmp eq i1 %cfg_icmpEq69, %56
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %cfg_zext70 = zext i1 %cfg_icmpEq69 to i32
  call void @assert_cfg_ft(i32 %cfg_zext70, i32 %55, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #13
  unreachable

57:                                               ; preds = %40, %29, %15
  %str.3.sink = phi ptr [ @str.4, %15 ], [ @str.3, %29 ], [ @str.3, %40 ]
  %58 = phi ptr [ @str.4, %15 ], [ @str.3, %29 ], [ @str.3, %40 ]
  %59 = phi ptr [ @str.4, %15 ], [ @str.3, %29 ], [ @str.3, %40 ]
  %60 = phi ptr [ @str.4, %15 ], [ @str.3, %29 ], [ @str.3, %40 ]
  %.039 = phi i32 [ 6, %15 ], [ 5, %29 ], [ 4, %40 ]
  %61 = phi i32 [ 6, %15 ], [ 5, %29 ], [ 4, %40 ]
  %62 = phi i32 [ 6, %15 ], [ 5, %29 ], [ 4, %40 ]
  %63 = phi i32 [ 6, %15 ], [ 5, %29 ], [ 4, %40 ]
  %.038 = phi i32 [ 524305, %15 ], [ 98321, %29 ], [ 32785, %40 ]
  %64 = phi i32 [ 524305, %15 ], [ 98321, %29 ], [ 32785, %40 ]
  %65 = phi i32 [ 524305, %15 ], [ 98321, %29 ], [ 32785, %40 ]
  %66 = phi i32 [ 524305, %15 ], [ 98321, %29 ], [ 32785, %40 ]
  %cfg_DestPhi71 = phi i32 [ 334496526, %40 ], [ 283116314, %29 ], [ 231736590, %15 ]
  %67 = phi i32 [ 334496526, %40 ], [ 283116314, %29 ], [ 231736590, %15 ]
  %68 = phi i32 [ 334496526, %40 ], [ 283116314, %29 ], [ 231736590, %15 ]
  %69 = phi i32 [ 334496526, %40 ], [ 283116314, %29 ], [ 231736590, %15 ]
  %cfg_DiffPhi72 = phi i32 [ %50, %40 ], [ %39, %29 ], [ %28, %15 ]
  %70 = phi i32 [ %50, %40 ], [ %39, %29 ], [ %28, %15 ]
  %71 = phi i32 [ %50, %40 ], [ %39, %29 ], [ %28, %15 ]
  %72 = phi i32 [ %50, %40 ], [ %39, %29 ], [ %28, %15 ]
  %icmpEq201 = icmp eq i32 %71, %72
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %icmpEq199 = icmp eq i32 %cfg_DiffPhi72, %70
  %73 = icmp eq i32 %70, %70
  %icmpEq203 = icmp eq i1 %icmpEq199, %73
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %icmpEq197 = icmp eq i32 %68, %69
  %zext198 = zext i1 %icmpEq197 to i32
  %74 = zext i1 %icmpEq197 to i32
  %icmpEq205 = icmp eq i32 %zext198, %74
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  call void @assert_ft(i32 %zext198, i32 35)
  %icmpEq195 = icmp eq i32 %cfg_DestPhi71, %67
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %icmpEq193 = icmp eq i32 %65, %66
  %75 = icmp eq i32 %66, %66
  %icmpEq207 = icmp eq i1 %icmpEq193, %75
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  %icmpEq191 = icmp eq i32 %.038, %64
  %zext192 = zext i1 %icmpEq191 to i32
  %76 = zext i1 %icmpEq191 to i32
  %icmpEq209 = icmp eq i32 %zext192, %76
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  call void @assert_ft(i32 %zext192, i32 35)
  %icmpEq189 = icmp eq i32 %62, %63
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %icmpEq187 = icmp eq i32 %.039, %61
  %77 = icmp eq i32 %61, %61
  %icmpEq211 = icmp eq i1 %icmpEq187, %77
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %icmpEq175 = icmp eq i32 %cfg_DiffPhi72, %71
  %zext176 = zext i1 %icmpEq175 to i32
  %78 = zext i1 %icmpEq175 to i32
  %icmpEq213 = icmp eq i32 %zext176, %78
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  call void @assert_ft(i32 %zext176, i32 35)
  %icmpEq173 = icmp eq i32 %cfg_DestPhi71, %68
  %79 = icmp eq i32 %67, %69
  %icmpEq177 = icmp eq i1 %icmpEq173, %79
  %80 = icmp eq i1 %79, %79
  %icmpEq215 = icmp eq i1 %icmpEq177, %80
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %icmpEq171 = icmp eq i32 %.038, %65
  %81 = icmp eq i32 %64, %66
  %icmpEq217 = icmp eq i1 %icmpEq171, %81
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  %zext172 = zext i1 %icmpEq171 to i32
  %82 = zext i1 %81 to i32
  %icmpEq179 = icmp eq i32 %zext172, %82
  %zext180 = zext i1 %icmpEq179 to i32
  %83 = zext i1 %icmpEq179 to i32
  %icmpEq219 = icmp eq i32 %zext180, %83
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  call void @assert_ft(i32 %zext180, i32 35)
  call void @assert_ft(i32 %zext172, i32 35)
  %icmpEq169 = icmp eq i32 %.039, %62
  %zext170 = zext i1 %icmpEq169 to i32
  %84 = zext i1 %icmpEq169 to i32
  %icmpEq221 = icmp eq i32 %zext170, %84
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  call void @assert_ft(i32 %zext170, i32 35)
  %85 = xor i32 %cfg_DestPhi71, %cfg_DiffPhi72
  %86 = xor i32 %67, %70
  %icmpEq181 = icmp eq i32 %85, %86
  %87 = icmp eq i32 %86, %86
  %icmpEq223 = icmp eq i1 %icmpEq181, %87
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %cfg_icmpEq73 = icmp eq i32 %85, 437258503
  %cfg_zext74 = zext i1 %cfg_icmpEq73 to i32
  %88 = zext i1 %cfg_icmpEq73 to i32
  %icmpEq225 = icmp eq i32 %cfg_zext74, %88
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext74, i32 %85, i32 35)
  %puts44 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink)
  %89 = zext i32 %.038 to i64
  %90 = zext i32 %64 to i64
  %91 = zext i32 %64 to i64
  %icmpEq227 = icmp eq i64 %90, %91
  %zext228 = zext i1 %icmpEq227 to i32
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq183 = icmp eq i64 %89, %90
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %92 = tail call noalias ptr @malloc(i64 noundef %89) #15
  store ptr %92, ptr @buffer, align 8
  %.not = icmp eq ptr %92, null
  %93 = icmp eq ptr %92, null
  %icmpEq229 = icmp eq i1 %.not, %93
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %94 = select i1 %.not, i32 488637460, i32 540020238
  %95 = select i1 %93, i32 488637460, i32 540020238
  %icmpEq185 = icmp eq i32 %94, %95
  %zext186 = zext i1 %icmpEq185 to i32
  %96 = zext i1 %icmpEq185 to i32
  %icmpEq231 = icmp eq i32 %zext186, %96
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  call void @assert_ft(i32 %zext186, i32 35)
  %97 = xor i32 437258503, %94
  br i1 %.not, label %98, label %106

98:                                               ; preds = %57
  %cfg_DestPhi75 = phi i32 [ 437258503, %57 ]
  %99 = phi i32 [ 437258503, %57 ]
  %cfg_DiffPhi76 = phi i32 [ %97, %57 ]
  %100 = phi i32 [ %97, %57 ]
  %icmpEq235 = icmp eq i32 %cfg_DiffPhi76, %100
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %icmpEq233 = icmp eq i32 %cfg_DestPhi75, %99
  %101 = icmp eq i32 %99, %99
  %icmpEq237 = icmp eq i1 %icmpEq233, %101
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %102 = xor i32 %cfg_DestPhi75, %cfg_DiffPhi76
  %cfg_icmpEq77 = icmp eq i32 %102, 488637460
  %103 = icmp eq i32 %102, 488637460
  %icmpEq239 = icmp eq i1 %cfg_icmpEq77, %103
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  %cfg_zext78 = zext i1 %cfg_icmpEq77 to i32
  call void @assert_cfg_ft(i32 %cfg_zext78, i32 %102, i32 35)
  %104 = load ptr, ptr @stderr, align 8
  %105 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %104) #16
  tail call void @exit(i32 noundef 0) #13
  unreachable

106:                                              ; preds = %57
  %cfg_DestPhi79 = phi i32 [ 437258503, %57 ]
  %107 = phi i32 [ 437258503, %57 ]
  %108 = phi i32 [ 437258503, %57 ]
  %109 = phi i32 [ 437258503, %57 ]
  %110 = phi i32 [ 437258503, %57 ]
  %111 = phi i32 [ 437258503, %57 ]
  %112 = phi i32 [ 437258503, %57 ]
  %cfg_DiffPhi80 = phi i32 [ %97, %57 ]
  %113 = phi i32 [ %97, %57 ]
  %114 = phi i32 [ %97, %57 ]
  %115 = phi i32 [ %97, %57 ]
  %116 = phi i32 [ %97, %57 ]
  %117 = phi i32 [ %97, %57 ]
  %118 = phi i32 [ %97, %57 ]
  %119 = phi i32 [ %97, %57 ]
  %icmpEq307 = icmp eq i32 %118, %119
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %icmpEq305 = icmp eq i32 %116, %117
  %120 = icmp eq i32 %117, %117
  %icmpEq309 = icmp eq i1 %icmpEq305, %120
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %icmpEq303 = icmp eq i32 %114, %115
  %zext304 = zext i1 %icmpEq303 to i32
  %121 = zext i1 %icmpEq303 to i32
  %icmpEq311 = icmp eq i32 %zext304, %121
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  call void @assert_ft(i32 %zext304, i32 35)
  %icmpEq301 = icmp eq i32 %cfg_DiffPhi80, %113
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %icmpEq299 = icmp eq i32 %111, %112
  %122 = icmp eq i32 %112, %112
  %icmpEq313 = icmp eq i1 %icmpEq299, %122
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  %icmpEq297 = icmp eq i32 %109, %110
  %zext298 = zext i1 %icmpEq297 to i32
  %123 = zext i1 %icmpEq297 to i32
  %icmpEq315 = icmp eq i32 %zext298, %123
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  call void @assert_ft(i32 %zext298, i32 35)
  %icmpEq295 = icmp eq i32 %107, %108
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  %icmpEq263 = icmp eq i32 %116, %118
  %124 = icmp eq i32 %117, %119
  %icmpEq317 = icmp eq i1 %icmpEq263, %124
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %zext264 = zext i1 %icmpEq263 to i32
  call void @assert_ft(i32 %zext264, i32 35)
  %icmpEq261 = icmp eq i32 %cfg_DiffPhi80, %114
  %125 = icmp eq i32 %113, %115
  %126 = icmp eq i32 %113, %115
  %icmpEq319 = icmp eq i1 %125, %126
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %icmpEq265 = icmp eq i1 %icmpEq261, %125
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %zext262 = zext i1 %icmpEq261 to i32
  %127 = zext i1 %125 to i32
  %icmpEq321 = icmp eq i32 %zext262, %127
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  call void @assert_ft(i32 %zext262, i32 35)
  %icmpEq259 = icmp eq i32 %109, %111
  %zext260 = zext i1 %icmpEq259 to i32
  %128 = zext i1 %icmpEq259 to i32
  %129 = zext i1 %icmpEq259 to i32
  %icmpEq323 = icmp eq i32 %128, %129
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  %icmpEq267 = icmp eq i32 %zext260, %128
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  call void @assert_ft(i32 %zext260, i32 35)
  %icmpEq257 = icmp eq i32 %cfg_DestPhi79, %107
  %130 = icmp eq i32 %107, %108
  %icmpEq325 = icmp eq i1 %icmpEq257, %130
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  %icmpEq243 = icmp eq i32 %cfg_DiffPhi80, %116
  %131 = icmp eq i32 %113, %117
  %132 = icmp eq i32 %113, %117
  %icmpEq327 = icmp eq i1 %131, %132
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %icmpEq269 = icmp eq i1 %icmpEq243, %131
  %zext270 = zext i1 %icmpEq269 to i32
  call void @assert_ft(i32 %zext270, i32 35)
  %zext244 = zext i1 %icmpEq243 to i32
  %133 = zext i1 %131 to i32
  %icmpEq329 = icmp eq i32 %zext244, %133
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  call void @assert_ft(i32 %zext244, i32 35)
  %icmpEq241 = icmp eq i32 %cfg_DestPhi79, %109
  %134 = icmp eq i32 %107, %110
  %135 = icmp eq i32 %107, %110
  %136 = icmp eq i32 %107, %110
  %icmpEq331 = icmp eq i1 %135, %136
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %icmpEq271 = icmp eq i1 %134, %135
  %zext272 = zext i1 %icmpEq271 to i32
  call void @assert_ft(i32 %zext272, i32 35)
  %icmpEq245 = icmp eq i1 %icmpEq241, %134
  %137 = icmp eq i1 %134, %135
  %icmpEq333 = icmp eq i1 %icmpEq245, %137
  %zext334 = zext i1 %icmpEq333 to i32
  call void @assert_ft(i32 %zext334, i32 35)
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  %zext242 = zext i1 %icmpEq241 to i32
  %138 = zext i1 %134 to i32
  %139 = zext i1 %134 to i32
  %icmpEq335 = icmp eq i32 %138, %139
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq273 = icmp eq i32 %zext242, %138
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  call void @assert_ft(i32 %zext242, i32 35)
  %140 = xor i32 %cfg_DestPhi79, %cfg_DiffPhi80
  %141 = xor i32 %107, %113
  %icmpEq337 = icmp eq i32 %140, %141
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %cfg_icmpEq81 = icmp eq i32 %140, 540020238
  %142 = icmp eq i32 %141, 540020238
  %143 = icmp eq i32 %141, 540020238
  %icmpEq275 = icmp eq i1 %142, %143
  %144 = icmp eq i1 %143, %143
  %icmpEq339 = icmp eq i1 %icmpEq275, %144
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  %icmpEq247 = icmp eq i1 %cfg_icmpEq81, %142
  %zext248 = zext i1 %icmpEq247 to i32
  %145 = zext i1 %icmpEq247 to i32
  %icmpEq341 = icmp eq i32 %zext248, %145
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  call void @assert_ft(i32 %zext248, i32 35)
  %cfg_zext82 = zext i1 %cfg_icmpEq81 to i32
  %146 = zext i1 %142 to i32
  %icmpEq277 = icmp eq i32 %cfg_zext82, %146
  %147 = icmp eq i32 %146, %146
  %icmpEq343 = icmp eq i1 %icmpEq277, %147
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext82, i32 %140, i32 35)
  %148 = tail call ptr @init_mill(i64 noundef 63009, i64 noundef 12584, i64 noundef 33363)
  %149 = add nuw nsw i32 %.039, 1
  %150 = add nuw nsw i32 %61, 1
  %icmpEq345 = icmp eq i32 %149, %150
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %151 = add nuw nsw i32 %.039, 1
  %152 = add nuw nsw i32 %61, 1
  %icmpEq279 = icmp eq i32 %151, %152
  %zext280 = zext i1 %icmpEq279 to i32
  %153 = zext i1 %icmpEq279 to i32
  %icmpEq347 = icmp eq i32 %zext280, %153
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  call void @assert_ft(i32 %zext280, i32 35)
  %icmpEq249 = icmp eq i32 %149, %151
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %154 = zext i32 %149 to i64
  %155 = zext i32 %150 to i64
  %icmpEq349 = icmp eq i64 %154, %155
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  %156 = zext i32 %149 to i64
  %icmpEq281 = icmp eq i64 %154, %156
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  %157 = tail call noalias ptr @malloc(i64 noundef %154) #15
  store ptr %157, ptr @pat, align 8
  %158 = zext i32 %.039 to i64
  %159 = zext i32 %61 to i64
  %icmpEq351 = icmp eq i64 %158, %159
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %160 = zext i32 %.039 to i64
  %161 = zext i32 %61 to i64
  %icmpEq283 = icmp eq i64 %160, %161
  %zext284 = zext i1 %icmpEq283 to i32
  %162 = zext i1 %icmpEq283 to i32
  %icmpEq353 = icmp eq i32 %zext284, %162
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  call void @assert_ft(i32 %zext284, i32 35)
  %icmpEq251 = icmp eq i64 %158, %160
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %163 = shl nuw nsw i64 %158, 2
  %164 = shl nuw nsw i64 %159, 2
  %icmpEq355 = icmp eq i64 %163, %164
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %165 = shl nuw nsw i64 %158, 2
  %icmpEq285 = icmp eq i64 %163, %165
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %166 = tail call noalias ptr @malloc(i64 noundef %163) #15
  store ptr %166, ptr @next, align 8
  %167 = icmp ne ptr %157, null
  %168 = icmp ne ptr %157, null
  %icmpEq357 = icmp eq i1 %167, %168
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  %169 = icmp ne ptr %157, null
  %170 = icmp ne ptr %157, null
  %icmpEq287 = icmp eq i1 %169, %170
  %zext288 = zext i1 %icmpEq287 to i32
  %171 = zext i1 %icmpEq287 to i32
  %icmpEq359 = icmp eq i32 %zext288, %171
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  call void @assert_ft(i32 %zext288, i32 35)
  %icmpEq253 = icmp eq i1 %167, %169
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %172 = icmp ne ptr %166, null
  %173 = icmp ne ptr %166, null
  %icmpEq361 = icmp eq i1 %172, %173
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  %174 = icmp ne ptr %166, null
  %icmpEq289 = icmp eq i1 %172, %174
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %or.cond = and i1 %167, %172
  %175 = and i1 %168, %173
  %icmpEq363 = icmp eq i1 %or.cond, %175
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %176 = load ptr, ptr @stderr, align 8
  %177 = select i1 %or.cond, i32 642777623, i32 591397660
  %178 = select i1 %175, i32 642777623, i32 591397660
  %179 = select i1 %175, i32 642777623, i32 591397660
  %180 = select i1 %175, i32 642777623, i32 591397660
  %icmpEq365 = icmp eq i32 %179, %180
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %icmpEq291 = icmp eq i32 %178, %179
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  %icmpEq255 = icmp eq i32 %177, %178
  %181 = icmp eq i32 %178, %179
  %icmpEq367 = icmp eq i1 %icmpEq255, %181
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %182 = xor i32 540020238, %177
  %183 = xor i32 540020238, %178
  %184 = xor i32 540020238, %178
  %icmpEq369 = icmp eq i32 %183, %184
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %icmpEq293 = icmp eq i32 %182, %183
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  br i1 %or.cond, label %192, label %185

185:                                              ; preds = %106
  %cfg_DestPhi83 = phi i32 [ 540020238, %106 ]
  %186 = phi i32 [ 540020238, %106 ]
  %cfg_DiffPhi84 = phi i32 [ %182, %106 ]
  %187 = phi i32 [ %183, %106 ]
  %icmpEq373 = icmp eq i32 %cfg_DiffPhi84, %187
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %icmpEq371 = icmp eq i32 %cfg_DestPhi83, %186
  %188 = icmp eq i32 %186, %186
  %icmpEq375 = icmp eq i1 %icmpEq371, %188
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  %189 = xor i32 %cfg_DestPhi83, %cfg_DiffPhi84
  %cfg_icmpEq85 = icmp eq i32 %189, 591397660
  %190 = icmp eq i32 %189, 591397660
  %icmpEq377 = icmp eq i1 %cfg_icmpEq85, %190
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %cfg_zext86 = zext i1 %cfg_icmpEq85 to i32
  call void @assert_cfg_ft(i32 %cfg_zext86, i32 %189, i32 35)
  %191 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 18, i64 1, ptr %176) #16
  tail call void @exit(i32 noundef 0) #13
  unreachable

192:                                              ; preds = %106
  %cfg_DestPhi87 = phi i32 [ 540020238, %106 ]
  %193 = phi i32 [ 540020238, %106 ]
  %cfg_DiffPhi88 = phi i32 [ %182, %106 ]
  %194 = phi i32 [ %183, %106 ]
  %icmpEq381 = icmp eq i32 %cfg_DiffPhi88, %194
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  %icmpEq379 = icmp eq i32 %cfg_DestPhi87, %193
  %195 = icmp eq i32 %193, %193
  %icmpEq383 = icmp eq i1 %icmpEq379, %195
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %196 = xor i32 %cfg_DestPhi87, %cfg_DiffPhi88
  %cfg_icmpEq89 = icmp eq i32 %196, 642777623
  %197 = icmp eq i32 %196, 642777623
  %icmpEq385 = icmp eq i1 %cfg_icmpEq89, %197
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %cfg_zext90 = zext i1 %cfg_icmpEq89 to i32
  call void @assert_cfg_ft(i32 %cfg_zext90, i32 %196, i32 35)
  %198 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 19, i64 1, ptr %176) #16
  br label %199

199:                                              ; preds = %199, %192
  %indvars.iv = phi i64 [ 0, %192 ], [ %indvars.iv.next, %199 ]
  %200 = phi i64 [ 0, %192 ], [ %214, %199 ]
  %cfg_DestPhi91 = phi i32 [ 642777623, %192 ], [ 694160155, %199 ]
  %201 = phi i32 [ 642777623, %192 ], [ 694160155, %199 ]
  %cfg_DiffPhi92 = phi i32 [ 254806284, %192 ], [ %216, %199 ]
  %202 = phi i32 [ 254806284, %192 ], [ %216, %199 ]
  %icmpEq391 = icmp eq i32 %cfg_DiffPhi92, %202
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %icmpEq389 = icmp eq i32 %cfg_DestPhi91, %201
  %203 = icmp eq i32 %201, %201
  %icmpEq393 = icmp eq i1 %icmpEq389, %203
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  %icmpEq387 = icmp eq i64 %indvars.iv, %200
  %zext388 = zext i1 %icmpEq387 to i32
  %204 = zext i1 %icmpEq387 to i32
  %icmpEq395 = icmp eq i32 %zext388, %204
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  call void @assert_ft(i32 %zext388, i32 35)
  %205 = xor i32 %cfg_DestPhi91, %cfg_DiffPhi92
  %cfg_icmpEq93 = icmp eq i32 %205, 694160155
  %cfg_zext94 = zext i1 %cfg_icmpEq93 to i32
  %206 = zext i1 %cfg_icmpEq93 to i32
  %icmpEq397 = icmp eq i32 %cfg_zext94, %206
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext94, i32 %205, i32 35)
  %207 = tail call i64 @rndnum(ptr noundef %148)
  %208 = urem i64 %207, 7
  %209 = trunc i64 %208 to i8
  %210 = trunc i64 %208 to i8
  %icmpEq399 = icmp eq i8 %209, %210
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  %211 = add nuw nsw i8 %209, 97
  %212 = load ptr, ptr @buffer, align 8
  %213 = getelementptr inbounds i8, ptr %212, i64 %indvars.iv
  store i8 %211, ptr %213, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %214 = add nuw nsw i64 %200, 1
  %icmpEq401 = icmp eq i64 %indvars.iv.next, %214
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %89
  %215 = select i1 %exitcond.not, i32 745539334, i32 694160155
  %216 = xor i32 694160155, %215
  br i1 %exitcond.not, label %217, label %199

217:                                              ; preds = %199
  %cfg_DestPhi95 = phi i32 [ 694160155, %199 ]
  %218 = phi i32 [ 694160155, %199 ]
  %219 = phi i32 [ 694160155, %199 ]
  %cfg_DiffPhi96 = phi i32 [ %216, %199 ]
  %220 = phi i32 [ %216, %199 ]
  %221 = phi i32 [ %216, %199 ]
  %222 = phi i32 [ %216, %199 ]
  %icmpEq419 = icmp eq i32 %221, %222
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %icmpEq417 = icmp eq i32 %cfg_DiffPhi96, %220
  %223 = icmp eq i32 %220, %220
  %icmpEq421 = icmp eq i1 %icmpEq417, %223
  %zext422 = zext i1 %icmpEq421 to i32
  call void @assert_ft(i32 %zext422, i32 35)
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  %icmpEq415 = icmp eq i32 %218, %219
  %zext416 = zext i1 %icmpEq415 to i32
  %224 = zext i1 %icmpEq415 to i32
  %icmpEq423 = icmp eq i32 %zext416, %224
  %zext424 = zext i1 %icmpEq423 to i32
  call void @assert_ft(i32 %zext424, i32 35)
  call void @assert_ft(i32 %zext416, i32 35)
  %icmpEq405 = icmp eq i32 %cfg_DiffPhi96, %221
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %icmpEq403 = icmp eq i32 %cfg_DestPhi95, %218
  %225 = icmp eq i32 %218, %219
  %icmpEq425 = icmp eq i1 %icmpEq403, %225
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  %226 = icmp eq i32 %cfg_DestPhi95, %218
  %icmpEq407 = icmp eq i1 %icmpEq403, %226
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %zext404 = zext i1 %icmpEq403 to i32
  %227 = zext i1 %225 to i32
  %icmpEq427 = icmp eq i32 %zext404, %227
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  call void @assert_ft(i32 %zext404, i32 35)
  %228 = xor i32 %cfg_DestPhi95, %cfg_DiffPhi96
  %cfg_icmpEq97 = icmp eq i32 %228, 745539334
  %229 = icmp eq i32 %228, 745539334
  %230 = icmp eq i32 %228, 745539334
  %icmpEq429 = icmp eq i1 %229, %230
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  %icmpEq409 = icmp eq i1 %cfg_icmpEq97, %229
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  %cfg_zext98 = zext i1 %cfg_icmpEq97 to i32
  %231 = zext i1 %229 to i32
  %icmpEq431 = icmp eq i32 %cfg_zext98, %231
  %zext432 = zext i1 %icmpEq431 to i32
  call void @assert_ft(i32 %zext432, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext98, i32 %228, i32 35)
  %232 = load ptr, ptr @buffer, align 8
  %233 = add nsw i32 %.038, -1
  %234 = add nsw i32 %64, -1
  %235 = add nsw i32 %64, -1
  %icmpEq433 = icmp eq i32 %234, %235
  %zext434 = zext i1 %icmpEq433 to i32
  call void @assert_ft(i32 %zext434, i32 35)
  %icmpEq411 = icmp eq i32 %233, %234
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  %236 = zext i32 %233 to i64
  %237 = zext i32 %234 to i64
  %icmpEq435 = icmp eq i64 %236, %237
  %zext436 = zext i1 %icmpEq435 to i32
  call void @assert_ft(i32 %zext436, i32 35)
  %238 = getelementptr inbounds i8, ptr %232, i64 %236
  store i8 0, ptr %238, align 1
  %239 = mul nuw nsw i32 %.038, 3
  %240 = mul nuw nsw i32 %64, 3
  %241 = mul nuw nsw i32 %64, 3
  %icmpEq437 = icmp eq i32 %240, %241
  %zext438 = zext i1 %icmpEq437 to i32
  call void @assert_ft(i32 %zext438, i32 35)
  %icmpEq413 = icmp eq i32 %239, %240
  %zext414 = zext i1 %icmpEq413 to i32
  call void @assert_ft(i32 %zext414, i32 35)
  br label %242

242:                                              ; preds = %._crit_edge, %217
  %.04049 = phi i32 [ 0, %217 ], [ %250, %._crit_edge ]
  %243 = phi i32 [ 0, %217 ], [ %250, %._crit_edge ]
  %cfg_DestPhi99 = phi i32 [ 745539334, %217 ], [ 1002440462, %._crit_edge ]
  %244 = phi i32 [ 745539334, %217 ], [ 1002440462, %._crit_edge ]
  %cfg_DiffPhi100 = phi i32 [ 66061093, %217 ], [ %338, %._crit_edge ]
  %245 = phi i32 [ 66061093, %217 ], [ %338, %._crit_edge ]
  %icmpEq443 = icmp eq i32 %cfg_DiffPhi100, %245
  %zext444 = zext i1 %icmpEq443 to i32
  call void @assert_ft(i32 %zext444, i32 35)
  %icmpEq441 = icmp eq i32 %cfg_DestPhi99, %244
  %246 = icmp eq i32 %244, %244
  %icmpEq445 = icmp eq i1 %icmpEq441, %246
  %zext446 = zext i1 %icmpEq445 to i32
  call void @assert_ft(i32 %zext446, i32 35)
  %zext442 = zext i1 %icmpEq441 to i32
  call void @assert_ft(i32 %zext442, i32 35)
  %icmpEq439 = icmp eq i32 %.04049, %243
  %zext440 = zext i1 %icmpEq439 to i32
  %247 = zext i1 %icmpEq439 to i32
  %icmpEq447 = icmp eq i32 %zext440, %247
  %zext448 = zext i1 %icmpEq447 to i32
  call void @assert_ft(i32 %zext448, i32 35)
  call void @assert_ft(i32 %zext440, i32 35)
  %248 = xor i32 %cfg_DestPhi99, %cfg_DiffPhi100
  %cfg_icmpEq101 = icmp eq i32 %248, 796918819
  %cfg_zext102 = zext i1 %cfg_icmpEq101 to i32
  %249 = zext i1 %cfg_icmpEq101 to i32
  %icmpEq449 = icmp eq i32 %cfg_zext102, %249
  %zext450 = zext i1 %icmpEq449 to i32
  call void @assert_ft(i32 %zext450, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext102, i32 %248, i32 35)
  %250 = add nuw nsw i32 %.04049, 1
  %251 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %250)
  br label %252

252:                                              ; preds = %252, %242
  %indvars.iv50 = phi i64 [ 0, %242 ], [ %indvars.iv.next51, %252 ]
  %253 = phi i64 [ 0, %242 ], [ %indvars.iv.next51, %252 ]
  %cfg_DestPhi103 = phi i32 [ 796918819, %242 ], [ 848302082, %252 ]
  %254 = phi i32 [ 796918819, %242 ], [ 848302082, %252 ]
  %cfg_DiffPhi104 = phi i32 [ 487592993, %242 ], [ %276, %252 ]
  %255 = phi i32 [ 487592993, %242 ], [ %276, %252 ]
  %icmpEq455 = icmp eq i32 %cfg_DiffPhi104, %255
  %zext456 = zext i1 %icmpEq455 to i32
  call void @assert_ft(i32 %zext456, i32 35)
  %icmpEq453 = icmp eq i32 %cfg_DestPhi103, %254
  %256 = icmp eq i32 %254, %254
  %icmpEq457 = icmp eq i1 %icmpEq453, %256
  %zext458 = zext i1 %icmpEq457 to i32
  call void @assert_ft(i32 %zext458, i32 35)
  %zext454 = zext i1 %icmpEq453 to i32
  call void @assert_ft(i32 %zext454, i32 35)
  %icmpEq451 = icmp eq i64 %indvars.iv50, %253
  %zext452 = zext i1 %icmpEq451 to i32
  %257 = zext i1 %icmpEq451 to i32
  %icmpEq459 = icmp eq i32 %zext452, %257
  %zext460 = zext i1 %icmpEq459 to i32
  call void @assert_ft(i32 %zext460, i32 35)
  call void @assert_ft(i32 %zext452, i32 35)
  %258 = xor i32 %cfg_DestPhi103, %cfg_DiffPhi104
  %cfg_icmpEq105 = icmp eq i32 %258, 848302082
  %cfg_zext106 = zext i1 %cfg_icmpEq105 to i32
  %259 = zext i1 %cfg_icmpEq105 to i32
  %icmpEq461 = icmp eq i32 %cfg_zext106, %259
  %zext462 = zext i1 %icmpEq461 to i32
  call void @assert_ft(i32 %zext462, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext106, i32 %258, i32 35)
  %260 = tail call i64 @rndnum(ptr noundef %148)
  %261 = urem i64 %260, 7
  %262 = trunc i64 %261 to i8
  %263 = trunc i64 %261 to i8
  %icmpEq463 = icmp eq i8 %262, %263
  %zext464 = zext i1 %icmpEq463 to i32
  call void @assert_ft(i32 %zext464, i32 35)
  %264 = add nuw nsw i8 %262, 97
  %265 = load ptr, ptr @pat, align 8
  %266 = getelementptr inbounds i8, ptr %265, i64 %indvars.iv50
  store i8 %264, ptr %266, align 1
  %267 = load ptr, ptr @pat, align 8
  %268 = load ptr, ptr @pat, align 8
  %269 = getelementptr inbounds i8, ptr %267, i64 %indvars.iv50
  %270 = getelementptr inbounds i8, ptr %268, i64 %253
  %271 = load i8, ptr %269, align 1
  %272 = load i8, ptr %270, align 1
  %icmpEq465 = icmp eq i8 %271, %272
  %zext466 = zext i1 %icmpEq465 to i32
  call void @assert_ft(i32 %zext466, i32 35)
  %273 = sext i8 %271 to i32
  %putchar = tail call i32 @putchar(i32 %273)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, %158
  %274 = icmp eq i64 %indvars.iv.next51, %159
  %icmpEq467 = icmp eq i1 %exitcond53.not, %274
  %zext468 = zext i1 %icmpEq467 to i32
  call void @assert_ft(i32 %zext468, i32 35)
  %275 = select i1 %exitcond53.not, i32 899683077, i32 848302082
  %276 = xor i32 848302082, %275
  br i1 %exitcond53.not, label %277, label %252

277:                                              ; preds = %252
  %cfg_DestPhi107 = phi i32 [ 848302082, %252 ]
  %278 = phi i32 [ 848302082, %252 ]
  %cfg_DiffPhi108 = phi i32 [ %276, %252 ]
  %279 = phi i32 [ %276, %252 ]
  %icmpEq471 = icmp eq i32 %cfg_DiffPhi108, %279
  %zext472 = zext i1 %icmpEq471 to i32
  call void @assert_ft(i32 %zext472, i32 35)
  %icmpEq469 = icmp eq i32 %cfg_DestPhi107, %278
  %280 = icmp eq i32 %278, %278
  %icmpEq473 = icmp eq i1 %icmpEq469, %280
  %zext474 = zext i1 %icmpEq473 to i32
  call void @assert_ft(i32 %zext474, i32 35)
  %zext470 = zext i1 %icmpEq469 to i32
  call void @assert_ft(i32 %zext470, i32 35)
  %281 = xor i32 %cfg_DestPhi107, %cfg_DiffPhi108
  %cfg_icmpEq109 = icmp eq i32 %281, 899683077
  %282 = icmp eq i32 %281, 899683077
  %icmpEq475 = icmp eq i1 %cfg_icmpEq109, %282
  %zext476 = zext i1 %icmpEq475 to i32
  call void @assert_ft(i32 %zext476, i32 35)
  %cfg_zext110 = zext i1 %cfg_icmpEq109 to i32
  call void @assert_cfg_ft(i32 %cfg_zext110, i32 %281, i32 35)
  %283 = load ptr, ptr @pat, align 8
  %284 = getelementptr inbounds i8, ptr %283, i64 %158
  %285 = getelementptr inbounds i8, ptr %283, i64 %159
  store i8 0, ptr %284, align 1
  %286 = load ptr, ptr @buffer, align 8
  %287 = load ptr, ptr @buffer, align 8
  %288 = urem i32 %.04049, 3
  %289 = urem i32 %243, 3
  %icmpEq477 = icmp eq i32 %288, %289
  %zext478 = zext i1 %icmpEq477 to i32
  call void @assert_ft(i32 %zext478, i32 35)
  %290 = add nuw nsw i32 %288, 3
  %291 = udiv i32 %239, %290
  %292 = add nsw i32 %291, -1
  %293 = zext i32 %292 to i64
  %294 = zext i32 %292 to i64
  %icmpEq479 = icmp eq i64 %293, %294
  %zext480 = zext i1 %icmpEq479 to i32
  call void @assert_ft(i32 %zext480, i32 35)
  %295 = getelementptr inbounds i8, ptr %286, i64 %293
  store i8 0, ptr %295, align 1
  %296 = load ptr, ptr @buffer, align 8
  %297 = lshr i32 %292, 2
  %298 = lshr i32 %292, 2
  %icmpEq481 = icmp eq i32 %297, %298
  %zext482 = zext i1 %icmpEq481 to i32
  call void @assert_ft(i32 %zext482, i32 35)
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds i8, ptr %296, i64 %299
  %301 = load ptr, ptr @pat, align 8
  %302 = tail call ptr @search(ptr noundef %301, ptr noundef %300)
  %303 = icmp eq ptr %302, null
  %304 = icmp eq ptr %302, null
  %icmpEq483 = icmp eq i1 %303, %304
  %zext484 = zext i1 %icmpEq483 to i32
  call void @assert_ft(i32 %zext484, i32 35)
  %305 = select i1 %303, i32 1002440462, i32 951060491
  %306 = xor i32 899683077, %305
  br i1 %303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %277
  %307 = phi ptr [ %320, %.lr.ph ], [ %302, %277 ]
  %308 = phi ptr [ %320, %.lr.ph ], [ %302, %277 ]
  %.048 = phi i32 [ %317, %.lr.ph ], [ 0, %277 ]
  %309 = phi i32 [ %317, %.lr.ph ], [ 0, %277 ]
  %cfg_DestPhi111 = phi i32 [ 899683077, %277 ], [ 951060491, %.lr.ph ]
  %310 = phi i32 [ 899683077, %277 ], [ 951060491, %.lr.ph ]
  %cfg_DiffPhi112 = phi i32 [ %306, %277 ], [ %324, %.lr.ph ]
  %311 = phi i32 [ %306, %277 ], [ %324, %.lr.ph ]
  %icmpEq489 = icmp eq i32 %cfg_DiffPhi112, %311
  %zext490 = zext i1 %icmpEq489 to i32
  call void @assert_ft(i32 %zext490, i32 35)
  %icmpEq487 = icmp eq i32 %cfg_DestPhi111, %310
  %312 = icmp eq i32 %310, %310
  %icmpEq491 = icmp eq i1 %icmpEq487, %312
  %zext492 = zext i1 %icmpEq491 to i32
  call void @assert_ft(i32 %zext492, i32 35)
  %zext488 = zext i1 %icmpEq487 to i32
  call void @assert_ft(i32 %zext488, i32 35)
  %icmpEq485 = icmp eq i32 %.048, %309
  %zext486 = zext i1 %icmpEq485 to i32
  %313 = zext i1 %icmpEq485 to i32
  %icmpEq493 = icmp eq i32 %zext486, %313
  %zext494 = zext i1 %icmpEq493 to i32
  call void @assert_ft(i32 %zext494, i32 35)
  call void @assert_ft(i32 %zext486, i32 35)
  %314 = xor i32 %cfg_DestPhi111, %cfg_DiffPhi112
  %cfg_icmpEq113 = icmp eq i32 %314, 951060491
  %cfg_zext114 = zext i1 %cfg_icmpEq113 to i32
  %315 = zext i1 %cfg_icmpEq113 to i32
  %icmpEq495 = icmp eq i32 %cfg_zext114, %315
  %zext496 = zext i1 %icmpEq495 to i32
  call void @assert_ft(i32 %zext496, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext114, i32 %314, i32 35)
  %316 = getelementptr inbounds i8, ptr %307, i64 1
  %317 = add nuw nsw i32 %.048, 1
  %318 = load ptr, ptr @pat, align 8
  %319 = load ptr, ptr @pat, align 8
  %320 = tail call ptr @search(ptr noundef %318, ptr noundef nonnull %316)
  %321 = icmp eq ptr %320, null
  %322 = icmp eq ptr %320, null
  %icmpEq497 = icmp eq i1 %321, %322
  %zext498 = zext i1 %icmpEq497 to i32
  call void @assert_ft(i32 %zext498, i32 35)
  %323 = select i1 %321, i32 1002440462, i32 951060491
  %324 = xor i32 951060491, %323
  br i1 %321, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %277
  %.0.lcssa = phi i32 [ 0, %277 ], [ %317, %.lr.ph ]
  %325 = phi i32 [ 0, %277 ], [ %317, %.lr.ph ]
  %cfg_DestPhi115 = phi i32 [ 951060491, %.lr.ph ], [ 899683077, %277 ]
  %326 = phi i32 [ 951060491, %.lr.ph ], [ 899683077, %277 ]
  %cfg_DiffPhi116 = phi i32 [ %324, %.lr.ph ], [ %306, %277 ]
  %327 = phi i32 [ %324, %.lr.ph ], [ %306, %277 ]
  %icmpEq503 = icmp eq i32 %cfg_DiffPhi116, %327
  %zext504 = zext i1 %icmpEq503 to i32
  call void @assert_ft(i32 %zext504, i32 35)
  %icmpEq501 = icmp eq i32 %cfg_DestPhi115, %326
  %328 = icmp eq i32 %326, %326
  %icmpEq505 = icmp eq i1 %icmpEq501, %328
  %zext506 = zext i1 %icmpEq505 to i32
  call void @assert_ft(i32 %zext506, i32 35)
  %zext502 = zext i1 %icmpEq501 to i32
  call void @assert_ft(i32 %zext502, i32 35)
  %icmpEq499 = icmp eq i32 %.0.lcssa, %325
  %zext500 = zext i1 %icmpEq499 to i32
  %329 = zext i1 %icmpEq499 to i32
  %icmpEq507 = icmp eq i32 %zext500, %329
  %zext508 = zext i1 %icmpEq507 to i32
  call void @assert_ft(i32 %zext508, i32 35)
  call void @assert_ft(i32 %zext500, i32 35)
  %330 = xor i32 %cfg_DestPhi115, %cfg_DiffPhi116
  %cfg_icmpEq117 = icmp eq i32 %330, 1002440462
  %cfg_zext118 = zext i1 %cfg_icmpEq117 to i32
  %331 = zext i1 %cfg_icmpEq117 to i32
  %icmpEq509 = icmp eq i32 %cfg_zext118, %331
  %zext510 = zext i1 %icmpEq509 to i32
  call void @assert_ft(i32 %zext510, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext118, i32 %330, i32 35)
  %332 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.0.lcssa)
  %333 = load ptr, ptr @buffer, align 8
  %334 = getelementptr inbounds i8, ptr %333, i64 %293
  %335 = getelementptr inbounds i8, ptr %333, i64 %294
  store i8 97, ptr %334, align 1
  %exitcond54.not = icmp eq i32 %250, 23
  %336 = icmp eq i32 %250, 23
  %icmpEq511 = icmp eq i1 %exitcond54.not, %336
  %zext512 = zext i1 %icmpEq511 to i32
  call void @assert_ft(i32 %zext512, i32 35)
  %337 = select i1 %exitcond54.not, i32 1053819679, i32 796918819
  %338 = xor i32 1002440462, %337
  br i1 %exitcond54.not, label %339, label %242

339:                                              ; preds = %._crit_edge
  %cfg_DestPhi119 = phi i32 [ 1002440462, %._crit_edge ]
  %340 = phi i32 [ 1002440462, %._crit_edge ]
  %cfg_DiffPhi120 = phi i32 [ %338, %._crit_edge ]
  %341 = phi i32 [ %338, %._crit_edge ]
  %icmpEq515 = icmp eq i32 %cfg_DiffPhi120, %341
  %zext516 = zext i1 %icmpEq515 to i32
  call void @assert_ft(i32 %zext516, i32 35)
  %icmpEq513 = icmp eq i32 %cfg_DestPhi119, %340
  %342 = icmp eq i32 %340, %340
  %icmpEq517 = icmp eq i1 %icmpEq513, %342
  %zext518 = zext i1 %icmpEq517 to i32
  call void @assert_ft(i32 %zext518, i32 35)
  %zext514 = zext i1 %icmpEq513 to i32
  call void @assert_ft(i32 %zext514, i32 35)
  %343 = xor i32 %cfg_DestPhi119, %cfg_DiffPhi120
  %cfg_icmpEq121 = icmp eq i32 %343, 1053819679
  %344 = icmp eq i32 %343, 1053819679
  %icmpEq519 = icmp eq i1 %cfg_icmpEq121, %344
  %zext520 = zext i1 %icmpEq519 to i32
  call void @assert_ft(i32 %zext520, i32 35)
  %cfg_zext122 = zext i1 %cfg_icmpEq121 to i32
  call void @assert_cfg_ft(i32 %cfg_zext122, i32 %343, i32 35)
  %puts43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  tail call void @nuke_mill(ptr noundef %148)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @init_mill(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.rndmill, ptr %4, i64 0, i32 2
  store i64 %2, ptr %7, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @nuke_mill(ptr nocapture noundef %0) local_unnamed_addr #8 {
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @rndnum(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %.promoted = load i64, ptr %0, align 8
  %6 = load i64, ptr %0, align 8
  %icmpEq = icmp eq i64 %.promoted, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %.promoted25 = load i64, ptr %2, align 8
  %.promoted27 = load i64, ptr %4, align 8
  br label %7

7:                                                ; preds = %7, %1
  %.030 = phi i32 [ 0, %1 ], [ %108, %7 ]
  %8 = phi i32 [ 0, %1 ], [ %109, %7 ]
  %9 = phi i32 [ 0, %1 ], [ %109, %7 ]
  %.02429 = phi i64 [ 0, %1 ], [ %105, %7 ]
  %10 = phi i64 [ 0, %1 ], [ %106, %7 ]
  %11 = phi i64 [ 0, %1 ], [ %105, %7 ]
  %12 = phi i64 [ 0, %1 ], [ %106, %7 ]
  %13 = phi i64 [ %.promoted, %1 ], [ %76, %7 ]
  %14 = phi i64 [ %6, %1 ], [ %76, %7 ]
  %15 = phi i64 [ %.promoted, %1 ], [ %76, %7 ]
  %16 = phi i64 [ %6, %1 ], [ %76, %7 ]
  %17 = phi i64 [ %.promoted25, %1 ], [ %84, %7 ]
  %18 = phi i64 [ %.promoted25, %1 ], [ %85, %7 ]
  %19 = phi i64 [ %.promoted25, %1 ], [ %84, %7 ]
  %20 = phi i64 [ %.promoted25, %1 ], [ %85, %7 ]
  %21 = phi i64 [ %.promoted27, %1 ], [ %94, %7 ]
  %22 = phi i64 [ %.promoted27, %1 ], [ %95, %7 ]
  %23 = phi i64 [ %.promoted27, %1 ], [ %94, %7 ]
  %24 = phi i64 [ %.promoted27, %1 ], [ %95, %7 ]
  %cfg_DestPhi = phi i32 [ 128976397, %1 ], [ 180364544, %7 ]
  %25 = phi i32 [ 128976397, %1 ], [ 180364544, %7 ]
  %26 = phi i32 [ 128976397, %1 ], [ 180364544, %7 ]
  %27 = phi i32 [ 128976397, %1 ], [ 180364544, %7 ]
  %cfg_DiffPhi = phi i32 [ 225452813, %1 ], [ %111, %7 ]
  %28 = phi i32 [ 225452813, %1 ], [ %112, %7 ]
  %29 = phi i32 [ 225452813, %1 ], [ %111, %7 ]
  %30 = phi i32 [ 225452813, %1 ], [ %112, %7 ]
  %icmpEq116 = icmp eq i32 %29, %30
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %cfg_DiffPhi, %28
  %31 = icmp eq i32 %28, %28
  %icmpEq118 = icmp eq i1 %icmpEq114, %31
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq112 = icmp eq i32 %26, %27
  %zext113 = zext i1 %icmpEq112 to i32
  %32 = zext i1 %icmpEq112 to i32
  %icmpEq120 = icmp eq i32 %zext113, %32
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq110 = icmp eq i32 %cfg_DestPhi, %25
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %icmpEq108 = icmp eq i64 %23, %24
  %33 = icmp eq i64 %24, %24
  %icmpEq122 = icmp eq i1 %icmpEq108, %33
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %icmpEq106 = icmp eq i64 %21, %22
  %zext107 = zext i1 %icmpEq106 to i32
  %34 = zext i1 %icmpEq106 to i32
  %icmpEq124 = icmp eq i32 %zext107, %34
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq104 = icmp eq i64 %19, %20
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %icmpEq102 = icmp eq i64 %17, %18
  %35 = icmp eq i64 %18, %18
  %icmpEq126 = icmp eq i1 %icmpEq102, %35
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %icmpEq100 = icmp eq i64 %15, %16
  %zext101 = zext i1 %icmpEq100 to i32
  %36 = zext i1 %icmpEq100 to i32
  %icmpEq128 = icmp eq i32 %zext101, %36
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  call void @assert_ft(i32 %zext101, i32 35)
  %icmpEq98 = icmp eq i64 %13, %14
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq96 = icmp eq i64 %11, %12
  %37 = icmp eq i64 %12, %12
  %icmpEq130 = icmp eq i1 %icmpEq96, %37
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i64 %.02429, %10
  %zext95 = zext i1 %icmpEq94 to i32
  %38 = zext i1 %icmpEq94 to i32
  %icmpEq132 = icmp eq i32 %zext95, %38
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %8, %9
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %icmpEq62 = icmp eq i32 %cfg_DiffPhi, %29
  %39 = icmp eq i32 %28, %30
  %icmpEq134 = icmp eq i1 %icmpEq62, %39
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq60 = icmp eq i32 %cfg_DestPhi, %26
  %40 = icmp eq i32 %25, %27
  %41 = icmp eq i32 %25, %27
  %icmpEq136 = icmp eq i1 %40, %41
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %icmpEq64 = icmp eq i1 %icmpEq60, %40
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %zext61 = zext i1 %icmpEq60 to i32
  %42 = zext i1 %40 to i32
  %icmpEq138 = icmp eq i32 %zext61, %42
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i64 %21, %23
  %zext59 = zext i1 %icmpEq58 to i32
  %43 = zext i1 %icmpEq58 to i32
  %44 = zext i1 %icmpEq58 to i32
  %icmpEq140 = icmp eq i32 %43, %44
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %icmpEq66 = icmp eq i32 %zext59, %43
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq56 = icmp eq i64 %17, %19
  %45 = icmp eq i64 %18, %20
  %icmpEq142 = icmp eq i1 %icmpEq56, %45
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %icmpEq54 = icmp eq i64 %13, %15
  %46 = icmp eq i64 %14, %16
  %47 = icmp eq i64 %14, %16
  %icmpEq144 = icmp eq i1 %46, %47
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %icmpEq68 = icmp eq i1 %icmpEq54, %46
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %zext55 = zext i1 %icmpEq54 to i32
  %48 = zext i1 %46 to i32
  %icmpEq146 = icmp eq i32 %zext55, %48
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq52 = icmp eq i64 %.02429, %11
  %zext53 = zext i1 %icmpEq52 to i32
  %49 = zext i1 %icmpEq52 to i32
  %50 = zext i1 %icmpEq52 to i32
  %icmpEq148 = icmp eq i32 %49, %50
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %icmpEq70 = icmp eq i32 %zext53, %49
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %.030, %8
  %51 = icmp eq i32 %8, %9
  %icmpEq150 = icmp eq i1 %icmpEq50, %51
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %52 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %53 = xor i32 %25, %28
  %54 = xor i32 %25, %28
  %icmpEq152 = icmp eq i32 %53, %54
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %icmpEq72 = icmp eq i32 %52, %53
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %cfg_icmpEq = icmp eq i32 %52, 180364544
  %55 = icmp eq i32 %53, 180364544
  %icmpEq154 = icmp eq i1 %cfg_icmpEq, %55
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %52, i32 35)
  %56 = lshr i64 %13, 31
  %57 = lshr i64 %14, 31
  %58 = lshr i64 %14, 31
  %icmpEq156 = icmp eq i64 %57, %58
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %icmpEq74 = icmp eq i64 %56, %57
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %59 = lshr i64 %13, 6
  %60 = lshr i64 %14, 6
  %icmpEq158 = icmp eq i64 %59, %60
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %61 = lshr i64 %13, 4
  %62 = lshr i64 %13, 2
  %63 = xor i64 %59, %56
  %64 = xor i64 %60, %57
  %65 = xor i64 %60, %57
  %icmpEq160 = icmp eq i64 %64, %65
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %icmpEq76 = icmp eq i64 %63, %64
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %66 = xor i64 %63, %61
  %67 = xor i64 %64, %61
  %icmpEq162 = icmp eq i64 %66, %67
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %68 = xor i64 %66, %62
  %69 = xor i64 %68, %13
  %70 = shl i64 %69, 31
  %71 = shl i64 %69, 31
  %72 = shl i64 %69, 31
  %icmpEq164 = icmp eq i64 %71, %72
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq78 = icmp eq i64 %70, %71
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %73 = and i64 %70, 2147483648
  %74 = and i64 %71, 2147483648
  %icmpEq166 = icmp eq i64 %73, %74
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %75 = lshr i64 %13, 1
  %76 = or i64 %73, %75
  %77 = shl i64 %17, 28
  %78 = shl i64 %18, 28
  %79 = shl i64 %18, 28
  %icmpEq168 = icmp eq i64 %78, %79
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq80 = icmp eq i64 %77, %78
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %80 = xor i64 %77, %17
  %81 = xor i64 %78, %18
  %icmpEq170 = icmp eq i64 %80, %81
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %82 = and i64 %80, 1073741824
  %83 = lshr i64 %17, 1
  %84 = or i64 %82, %83
  %85 = or i64 %82, %83
  %86 = or i64 %82, %83
  %icmpEq172 = icmp eq i64 %85, %86
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq82 = icmp eq i64 %84, %85
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %87 = lshr i64 %21, 1
  %88 = lshr i64 %22, 1
  %icmpEq174 = icmp eq i64 %87, %88
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %89 = shl i64 %87, 28
  %90 = xor i64 %89, %21
  %91 = and i64 %90, 268435456
  %92 = and i64 %90, 268435456
  %93 = and i64 %90, 268435456
  %icmpEq176 = icmp eq i64 %92, %93
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq84 = icmp eq i64 %91, %92
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %94 = or i64 %91, %87
  %95 = or i64 %92, %88
  %icmpEq178 = icmp eq i64 %94, %95
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %96 = and i64 %83, %75
  %97 = xor i64 %75, -1
  %98 = and i64 %87, %97
  %99 = and i64 %88, %97
  %100 = and i64 %88, %97
  %icmpEq180 = icmp eq i64 %99, %100
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %icmpEq86 = icmp eq i64 %98, %99
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %101 = or i64 %98, %96
  %102 = or i64 %99, %96
  %icmpEq182 = icmp eq i64 %101, %102
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %103 = and i64 %101, 1
  %104 = shl i64 %.02429, 1
  %105 = or i64 %103, %104
  %106 = or i64 %103, %104
  %107 = or i64 %103, %104
  %icmpEq184 = icmp eq i64 %106, %107
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %icmpEq88 = icmp eq i64 %105, %106
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %108 = add nuw nsw i32 %.030, 1
  %109 = add nuw nsw i32 %8, 1
  %icmpEq186 = icmp eq i32 %108, %109
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %exitcond.not = icmp eq i32 %108, 32
  %110 = select i1 %exitcond.not, i32 231736346, i32 180364544
  %111 = xor i32 180364544, %110
  %112 = xor i32 180364544, %110
  %113 = xor i32 180364544, %110
  %icmpEq188 = icmp eq i32 %112, %113
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %icmpEq90 = icmp eq i32 %111, %112
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  br i1 %exitcond.not, label %114, label %7

114:                                              ; preds = %7
  %cfg_DestPhi46 = phi i32 [ 180364544, %7 ]
  %115 = phi i32 [ 180364544, %7 ]
  %cfg_DiffPhi47 = phi i32 [ %111, %7 ]
  %116 = phi i32 [ %112, %7 ]
  %icmpEq192 = icmp eq i32 %cfg_DiffPhi47, %116
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq190 = icmp eq i32 %cfg_DestPhi46, %115
  %117 = icmp eq i32 %115, %115
  %icmpEq194 = icmp eq i1 %icmpEq190, %117
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %118 = xor i32 %cfg_DestPhi46, %cfg_DiffPhi47
  %cfg_icmpEq48 = icmp eq i32 %118, 231736346
  %119 = icmp eq i32 %118, 231736346
  %icmpEq196 = icmp eq i1 %cfg_icmpEq48, %119
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %cfg_zext49 = zext i1 %cfg_icmpEq48 to i32
  call void @assert_cfg_ft(i32 %cfg_zext49, i32 %118, i32 35)
  store i64 %76, ptr %0, align 8
  store i64 %84, ptr %2, align 8
  store i64 %94, ptr %4, align 8
  ret i64 %105
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @checkpoint_mill(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = load i64, ptr %0, align 8
  %icmpEq5 = icmp eq i64 %2, %3
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %4 = load i64, ptr %0, align 8
  %icmpEq = icmp eq i64 %2, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %5, align 8
  %8 = load i64, ptr %6, align 8
  %icmpEq7 = icmp eq i64 %7, %8
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %9 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %9, align 8
  %icmpEq3 = icmp eq i64 %10, %11
  %12 = icmp eq i64 %11, %11
  %icmpEq9 = icmp eq i1 %icmpEq3, %12
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %zext4 = zext i1 %icmpEq3 to i32
  call void @assert_ft(i32 %zext4, i32 35)
  %13 = tail call ptr @init_mill(i64 noundef %2, i64 noundef %7, i64 noundef %10)
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @reset_mill(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load i64, ptr %1, align 8
  %4 = load i64, ptr %1, align 8
  %icmpEq = icmp eq i64 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  store i64 %3, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 1
  store i64 %6, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.rndmill, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %9, align 8
  %12 = load i64, ptr %10, align 8
  %icmpEq6 = icmp eq i64 %11, %12
  %zext7 = zext i1 %icmpEq6 to i32
  call void @assert_ft(i32 %zext7, i32 35)
  %13 = getelementptr inbounds %struct.rndmill, ptr %0, i64 0, i32 2
  store i64 %11, ptr %13, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

declare void @exit.5(i32, ...)

declare i32 @printf.6(ptr, i32, ...)

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

attributes #0 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }
attributes #17 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
