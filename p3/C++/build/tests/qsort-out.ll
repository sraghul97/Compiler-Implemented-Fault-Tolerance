; ModuleID = 'qsort-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.my3DVertexStruct = type { i32, i32, i32, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\0ASorting %d vectors based on distance from the origin.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.my3DVertexStruct, ptr %0, i64 0, i32 3
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %4, align 8
  %7 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.my3DVertexStruct, ptr %1, i64 0, i32 3
  %9 = load double, ptr %7, align 8
  %10 = load double, ptr %8, align 8
  %11 = fcmp ogt double %5, %9
  %12 = fcmp ogt double %6, %10
  %icmpEq = icmp eq i1 %11, %12
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %13 = fcmp une double %5, %9
  %14 = sext i1 %13 to i32
  %15 = select i1 %11, i32 1, i32 %14
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp slt i32 %0, 2
  %8 = icmp slt i32 %0, 2
  %icmpEq = icmp eq i1 %7, %8
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %9 = select i1 %7, i32 180356101, i32 231736834
  %10 = xor i32 128976397, %9
  br i1 %7, label %11, label %19

11:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128976397, %2 ]
  %12 = phi i32 [ 128976397, %2 ]
  %cfg_DiffPhi = phi i32 [ %10, %2 ]
  %13 = phi i32 [ %10, %2 ]
  %icmpEq80 = icmp eq i32 %cfg_DiffPhi, %13
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %cfg_DestPhi, %12
  %14 = icmp eq i32 %12, %12
  %icmpEq82 = icmp eq i1 %icmpEq78, %14
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %15 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %15, 180356101
  %16 = icmp eq i32 %15, 180356101
  %icmpEq84 = icmp eq i1 %cfg_icmpEq, %16
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %15, i32 35)
  %17 = load ptr, ptr @stderr, align 8
  %18 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %17) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

19:                                               ; preds = %2
  %cfg_DestPhi42 = phi i32 [ 128976397, %2 ]
  %20 = phi i32 [ 128976397, %2 ]
  %cfg_DiffPhi43 = phi i32 [ %10, %2 ]
  %21 = phi i32 [ %10, %2 ]
  %icmpEq88 = icmp eq i32 %cfg_DiffPhi43, %21
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq86 = icmp eq i32 %cfg_DestPhi42, %20
  %22 = icmp eq i32 %20, %20
  %icmpEq90 = icmp eq i1 %icmpEq86, %22
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %23 = xor i32 %cfg_DestPhi42, %cfg_DiffPhi43
  %cfg_icmpEq44 = icmp eq i32 %23, 231736834
  %24 = icmp eq i32 %23, 231736834
  %icmpEq92 = icmp eq i1 %cfg_icmpEq44, %24
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %cfg_zext45 = zext i1 %cfg_icmpEq44 to i32
  call void @assert_cfg_ft(i32 %cfg_zext45, i32 %23, i32 35)
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %25, align 8
  %28 = tail call noalias ptr @fopen(ptr noundef %26, ptr noundef nonnull @.str.1)
  %29 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #10
  %30 = icmp eq i32 %29, 1
  %31 = icmp eq i32 %29, 1
  %icmpEq94 = icmp eq i1 %30, %31
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %32 = select i1 %30, i32 283116831, i32 540018182
  %33 = xor i32 231736834, %32
  br i1 %30, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %72, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %72 ], [ 0, %19 ]
  %34 = phi i64 [ %indvars.iv.next, %72 ], [ 0, %19 ]
  %.022 = phi i32 [ %209, %72 ], [ 0, %19 ]
  %35 = phi i32 [ %209, %72 ], [ 0, %19 ]
  %cfg_DestPhi46 = phi i32 [ 231736834, %19 ], [ 385882397, %72 ]
  %36 = phi i32 [ 231736834, %19 ], [ 385882397, %72 ]
  %cfg_DiffPhi47 = phi i32 [ %33, %19 ], [ %220, %72 ]
  %37 = phi i32 [ %33, %19 ], [ %220, %72 ]
  %icmpEq102 = icmp eq i32 %cfg_DiffPhi47, %37
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %icmpEq100 = icmp eq i32 %cfg_DestPhi46, %36
  %38 = icmp eq i32 %36, %36
  %icmpEq104 = icmp eq i1 %icmpEq100, %38
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %icmpEq98 = icmp eq i32 %.022, %35
  %zext99 = zext i1 %icmpEq98 to i32
  %39 = zext i1 %icmpEq98 to i32
  %icmpEq106 = icmp eq i32 %zext99, %39
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq96 = icmp eq i64 %indvars.iv, %34
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %40 = xor i32 %cfg_DestPhi46, %cfg_DiffPhi47
  %41 = xor i32 %36, %37
  %icmpEq108 = icmp eq i32 %40, %41
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %cfg_icmpEq48 = icmp eq i32 %40, 283116831
  %cfg_zext49 = zext i1 %cfg_icmpEq48 to i32
  call void @assert_cfg_ft(i32 %cfg_zext49, i32 %40, i32 35)
  %42 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #10
  %43 = icmp eq i32 %42, 1
  %44 = icmp eq i32 %42, 1
  %icmpEq110 = icmp eq i1 %43, %44
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %45 = select i1 %43, i32 334497035, i32 437256722
  %46 = xor i32 283116831, %45
  br i1 %43, label %47, label %.critedge.loopexit.split.loop.exit31

47:                                               ; preds = %.lr.ph
  %cfg_DestPhi50 = phi i32 [ 283116831, %.lr.ph ]
  %48 = phi i32 [ 283116831, %.lr.ph ]
  %49 = phi i32 [ 283116831, %.lr.ph ]
  %cfg_DiffPhi51 = phi i32 [ %46, %.lr.ph ]
  %50 = phi i32 [ %46, %.lr.ph ]
  %51 = phi i32 [ %46, %.lr.ph ]
  %52 = phi i32 [ %46, %.lr.ph ]
  %icmpEq128 = icmp eq i32 %51, %52
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq126 = icmp eq i32 %cfg_DiffPhi51, %50
  %53 = icmp eq i32 %50, %50
  %icmpEq130 = icmp eq i1 %icmpEq126, %53
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i32 %48, %49
  %zext125 = zext i1 %icmpEq124 to i32
  %54 = zext i1 %icmpEq124 to i32
  %icmpEq132 = icmp eq i32 %zext125, %54
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq114 = icmp eq i32 %cfg_DiffPhi51, %51
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq112 = icmp eq i32 %cfg_DestPhi50, %48
  %55 = icmp eq i32 %48, %49
  %icmpEq134 = icmp eq i1 %icmpEq112, %55
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %56 = icmp eq i32 %cfg_DestPhi50, %48
  %icmpEq116 = icmp eq i1 %icmpEq112, %56
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext113 = zext i1 %icmpEq112 to i32
  %57 = zext i1 %55 to i32
  %icmpEq136 = icmp eq i32 %zext113, %57
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  call void @assert_ft(i32 %zext113, i32 35)
  %58 = xor i32 %cfg_DestPhi50, %cfg_DiffPhi51
  %cfg_icmpEq52 = icmp eq i32 %58, 334497035
  %59 = icmp eq i32 %58, 334497035
  %60 = icmp eq i32 %58, 334497035
  %icmpEq138 = icmp eq i1 %59, %60
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq118 = icmp eq i1 %cfg_icmpEq52, %59
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %cfg_zext53 = zext i1 %cfg_icmpEq52 to i32
  %61 = zext i1 %59 to i32
  %icmpEq140 = icmp eq i32 %cfg_zext53, %61
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext53, i32 %58, i32 35)
  %62 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  %63 = icmp eq i32 %62, 1
  %64 = icmp eq i32 %62, 1
  %65 = icmp eq i32 %62, 1
  %icmpEq142 = icmp eq i1 %64, %65
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %icmpEq120 = icmp eq i1 %63, %64
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %66 = icmp ult i64 %indvars.iv, 60000
  %67 = icmp ult i64 %34, 60000
  %icmpEq144 = icmp eq i1 %66, %67
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %or.cond = select i1 %63, i1 %66, i1 false
  %68 = select i1 %or.cond, i32 385882397, i32 488636938
  %69 = xor i32 334497035, %68
  %70 = xor i32 334497035, %68
  %71 = xor i32 334497035, %68
  %icmpEq146 = icmp eq i32 %70, %71
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %icmpEq122 = icmp eq i32 %69, %70
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  br i1 %or.cond, label %72, label %.critedge.loopexit.split.loop.exit33

72:                                               ; preds = %47
  %cfg_DestPhi54 = phi i32 [ 334497035, %47 ]
  %73 = phi i32 [ 334497035, %47 ]
  %74 = phi i32 [ 334497035, %47 ]
  %75 = phi i32 [ 334497035, %47 ]
  %76 = phi i32 [ 334497035, %47 ]
  %77 = phi i32 [ 334497035, %47 ]
  %78 = phi i32 [ 334497035, %47 ]
  %cfg_DiffPhi55 = phi i32 [ %69, %47 ]
  %79 = phi i32 [ %70, %47 ]
  %80 = phi i32 [ %69, %47 ]
  %81 = phi i32 [ %70, %47 ]
  %82 = phi i32 [ %69, %47 ]
  %83 = phi i32 [ %70, %47 ]
  %84 = phi i32 [ %69, %47 ]
  %85 = phi i32 [ %70, %47 ]
  %icmpEq208 = icmp eq i32 %84, %85
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %82, %83
  %86 = icmp eq i32 %83, %83
  %icmpEq210 = icmp eq i1 %icmpEq206, %86
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq204 = icmp eq i32 %80, %81
  %zext205 = zext i1 %icmpEq204 to i32
  %87 = zext i1 %icmpEq204 to i32
  %icmpEq212 = icmp eq i32 %zext205, %87
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  call void @assert_ft(i32 %zext205, i32 35)
  %icmpEq202 = icmp eq i32 %cfg_DiffPhi55, %79
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %icmpEq200 = icmp eq i32 %77, %78
  %88 = icmp eq i32 %78, %78
  %icmpEq214 = icmp eq i1 %icmpEq200, %88
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %icmpEq198 = icmp eq i32 %75, %76
  %zext199 = zext i1 %icmpEq198 to i32
  %89 = zext i1 %icmpEq198 to i32
  %icmpEq216 = icmp eq i32 %zext199, %89
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %73, %74
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %icmpEq168 = icmp eq i32 %82, %84
  %90 = icmp eq i32 %83, %85
  %icmpEq218 = icmp eq i1 %icmpEq168, %90
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq166 = icmp eq i32 %cfg_DiffPhi55, %80
  %91 = icmp eq i32 %79, %81
  %92 = icmp eq i32 %79, %81
  %icmpEq220 = icmp eq i1 %91, %92
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq170 = icmp eq i1 %icmpEq166, %91
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %zext167 = zext i1 %icmpEq166 to i32
  %93 = zext i1 %91 to i32
  %icmpEq222 = icmp eq i32 %zext167, %93
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  call void @assert_ft(i32 %zext167, i32 35)
  %icmpEq164 = icmp eq i32 %75, %77
  %zext165 = zext i1 %icmpEq164 to i32
  %94 = zext i1 %icmpEq164 to i32
  %95 = zext i1 %icmpEq164 to i32
  %icmpEq224 = icmp eq i32 %94, %95
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq172 = icmp eq i32 %zext165, %94
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq162 = icmp eq i32 %cfg_DestPhi54, %73
  %96 = icmp eq i32 %73, %74
  %icmpEq226 = icmp eq i1 %icmpEq162, %96
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %icmpEq150 = icmp eq i32 %cfg_DiffPhi55, %82
  %97 = icmp eq i32 %79, %83
  %98 = icmp eq i32 %79, %83
  %icmpEq228 = icmp eq i1 %97, %98
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq174 = icmp eq i1 %icmpEq150, %97
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %zext151 = zext i1 %icmpEq150 to i32
  %99 = zext i1 %97 to i32
  %icmpEq230 = icmp eq i32 %zext151, %99
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq148 = icmp eq i32 %cfg_DestPhi54, %75
  %100 = icmp eq i32 %73, %76
  %101 = icmp eq i32 %73, %76
  %102 = icmp eq i32 %73, %76
  %icmpEq232 = icmp eq i1 %101, %102
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq176 = icmp eq i1 %100, %101
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq152 = icmp eq i1 %icmpEq148, %100
  %103 = icmp eq i1 %100, %101
  %icmpEq234 = icmp eq i1 %icmpEq152, %103
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext149 = zext i1 %icmpEq148 to i32
  %104 = zext i1 %100 to i32
  %105 = zext i1 %100 to i32
  %icmpEq236 = icmp eq i32 %104, %105
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %icmpEq178 = icmp eq i32 %zext149, %104
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  call void @assert_ft(i32 %zext149, i32 35)
  %106 = xor i32 %cfg_DestPhi54, %cfg_DiffPhi55
  %107 = xor i32 %73, %79
  %icmpEq238 = icmp eq i32 %106, %107
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %cfg_icmpEq56 = icmp eq i32 %106, 385882397
  %108 = icmp eq i32 %107, 385882397
  %109 = icmp eq i32 %107, 385882397
  %icmpEq180 = icmp eq i1 %108, %109
  %110 = icmp eq i1 %109, %109
  %icmpEq240 = icmp eq i1 %icmpEq180, %110
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %icmpEq154 = icmp eq i1 %cfg_icmpEq56, %108
  %zext155 = zext i1 %icmpEq154 to i32
  %111 = zext i1 %icmpEq154 to i32
  %icmpEq242 = icmp eq i32 %zext155, %111
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  call void @assert_ft(i32 %zext155, i32 35)
  %cfg_zext57 = zext i1 %cfg_icmpEq56 to i32
  %112 = zext i1 %108 to i32
  %icmpEq182 = icmp eq i32 %cfg_zext57, %112
  %113 = icmp eq i32 %112, %112
  %icmpEq244 = icmp eq i1 %icmpEq182, %113
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext57, i32 %106, i32 35)
  %114 = load i32, ptr %4, align 4
  %115 = load i32, ptr %4, align 4
  %icmpEq246 = icmp eq i32 %114, %115
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %116 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv
  %117 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34
  %118 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34
  store i32 %114, ptr %116, align 8
  %119 = load i32, ptr %5, align 4
  %120 = load i32, ptr %5, align 4
  %icmpEq248 = icmp eq i32 %119, %120
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %121 = load i32, ptr %5, align 4
  %icmpEq184 = icmp eq i32 %119, %121
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %122 = load i32, ptr %5, align 4
  %123 = load i32, ptr %5, align 4
  %icmpEq250 = icmp eq i32 %122, %123
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %icmpEq156 = icmp eq i32 %119, %122
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %124 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 1
  %125 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 1
  %126 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 1
  %127 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 1
  store i32 %119, ptr %124, align 4
  %128 = load i32, ptr %6, align 4
  %129 = load i32, ptr %6, align 4
  %icmpEq252 = icmp eq i32 %128, %129
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %130 = load i32, ptr %6, align 4
  %icmpEq186 = icmp eq i32 %128, %130
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %131 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 2
  %132 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 2
  %133 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 2
  %134 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 2
  store i32 %128, ptr %131, align 8
  %135 = sitofp i32 %114 to double
  %136 = sitofp i32 %115 to double
  %137 = sitofp i32 %114 to double
  %138 = sitofp i32 %115 to double
  %139 = sitofp i32 %114 to double
  %140 = sitofp i32 %115 to double
  %141 = sitofp i32 %114 to double
  %142 = sitofp i32 %115 to double
  %square = fmul double %135, %135
  %143 = fmul double %136, %136
  %144 = fmul double %135, %135
  %145 = fmul double %136, %136
  %146 = fmul double %135, %135
  %147 = fmul double %136, %136
  %148 = fmul double %135, %135
  %149 = fmul double %136, %136
  %150 = sitofp i32 %119 to double
  %151 = sitofp i32 %120 to double
  %152 = sitofp i32 %119 to double
  %153 = sitofp i32 %120 to double
  %154 = sitofp i32 %119 to double
  %155 = sitofp i32 %120 to double
  %156 = sitofp i32 %119 to double
  %157 = sitofp i32 %120 to double
  %square20 = fmul double %150, %150
  %158 = fmul double %151, %151
  %159 = fmul double %150, %150
  %160 = fmul double %151, %151
  %161 = fmul double %150, %150
  %162 = fmul double %151, %151
  %163 = fmul double %150, %150
  %164 = fmul double %151, %151
  %165 = fadd double %square, %square20
  %166 = fadd double %143, %158
  %167 = fadd double %square, %square20
  %168 = fadd double %143, %158
  %169 = fadd double %square, %square20
  %170 = fadd double %143, %158
  %171 = fadd double %square, %square20
  %172 = fadd double %143, %158
  %173 = sitofp i32 %128 to double
  %174 = sitofp i32 %129 to double
  %175 = sitofp i32 %128 to double
  %176 = sitofp i32 %129 to double
  %177 = sitofp i32 %128 to double
  %178 = sitofp i32 %129 to double
  %179 = sitofp i32 %128 to double
  %180 = sitofp i32 %129 to double
  %square21 = fmul double %173, %173
  %181 = fmul double %174, %174
  %182 = fmul double %173, %173
  %183 = fmul double %174, %174
  %184 = fmul double %173, %173
  %185 = fmul double %174, %174
  %186 = fmul double %173, %173
  %187 = fmul double %174, %174
  %188 = fadd double %165, %square21
  %189 = fadd double %166, %181
  %190 = fadd double %165, %square21
  %191 = fadd double %166, %181
  %192 = fadd double %165, %square21
  %193 = fadd double %166, %181
  %194 = fadd double %165, %square21
  %195 = fadd double %166, %181
  %196 = call double @sqrt(double noundef %188) #10
  %197 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 3
  %198 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 3
  %199 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 3
  %200 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 3
  %201 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 3
  %202 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 3
  %203 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv, i32 3
  %204 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %34, i32 3
  store double %196, ptr %197, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %205 = add nuw nsw i64 %34, 1
  %icmpEq254 = icmp eq i64 %indvars.iv.next, %205
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %206 = add nuw nsw i64 %indvars.iv, 1
  %icmpEq188 = icmp eq i64 %indvars.iv.next, %206
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %207 = add nuw nsw i64 %indvars.iv, 1
  %208 = add nuw nsw i64 %34, 1
  %icmpEq256 = icmp eq i64 %207, %208
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq158 = icmp eq i64 %indvars.iv.next, %207
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %209 = add nuw nsw i32 %.022, 1
  %210 = add nuw nsw i32 %35, 1
  %icmpEq258 = icmp eq i32 %209, %210
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %211 = add nuw nsw i32 %.022, 1
  %icmpEq190 = icmp eq i32 %209, %211
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %212 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #10
  %213 = icmp eq i32 %212, 1
  %214 = icmp eq i32 %212, 1
  %icmpEq260 = icmp eq i1 %213, %214
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %215 = select i1 %213, i32 283116831, i32 540018182
  %216 = select i1 %214, i32 283116831, i32 540018182
  %217 = select i1 %214, i32 283116831, i32 540018182
  %icmpEq192 = icmp eq i32 %216, %217
  %218 = icmp eq i32 %217, %217
  %icmpEq262 = icmp eq i1 %icmpEq192, %218
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq160 = icmp eq i32 %215, %216
  %zext161 = zext i1 %icmpEq160 to i32
  %219 = zext i1 %icmpEq160 to i32
  %icmpEq264 = icmp eq i32 %zext161, %219
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  call void @assert_ft(i32 %zext161, i32 35)
  %220 = xor i32 385882397, %215
  %221 = xor i32 385882397, %216
  %icmpEq194 = icmp eq i32 %220, %221
  %222 = icmp eq i32 %221, %221
  %icmpEq266 = icmp eq i1 %icmpEq194, %222
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  br i1 %213, label %.lr.ph, label %.critedge

.critedge.loopexit.split.loop.exit31:             ; preds = %.lr.ph
  %cfg_DestPhi58 = phi i32 [ 283116831, %.lr.ph ]
  %223 = phi i32 [ 283116831, %.lr.ph ]
  %cfg_DiffPhi59 = phi i32 [ %46, %.lr.ph ]
  %224 = phi i32 [ %46, %.lr.ph ]
  %icmpEq270 = icmp eq i32 %cfg_DiffPhi59, %224
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %icmpEq268 = icmp eq i32 %cfg_DestPhi58, %223
  %225 = icmp eq i32 %223, %223
  %icmpEq272 = icmp eq i1 %icmpEq268, %225
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %226 = xor i32 %cfg_DestPhi58, %cfg_DiffPhi59
  %cfg_icmpEq60 = icmp eq i32 %226, 437256722
  %227 = icmp eq i32 %226, 437256722
  %icmpEq274 = icmp eq i1 %cfg_icmpEq60, %227
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %cfg_zext61 = zext i1 %cfg_icmpEq60 to i32
  call void @assert_cfg_ft(i32 %cfg_zext61, i32 %226, i32 35)
  %228 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit33:             ; preds = %47
  %cfg_DestPhi62 = phi i32 [ 334497035, %47 ]
  %229 = phi i32 [ 334497035, %47 ]
  %cfg_DiffPhi63 = phi i32 [ %69, %47 ]
  %230 = phi i32 [ %70, %47 ]
  %icmpEq278 = icmp eq i32 %cfg_DiffPhi63, %230
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %icmpEq276 = icmp eq i32 %cfg_DestPhi62, %229
  %231 = icmp eq i32 %229, %229
  %icmpEq280 = icmp eq i1 %icmpEq276, %231
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %232 = xor i32 %cfg_DestPhi62, %cfg_DiffPhi63
  %cfg_icmpEq64 = icmp eq i32 %232, 488636938
  %233 = icmp eq i32 %232, 488636938
  %icmpEq282 = icmp eq i1 %cfg_icmpEq64, %233
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %cfg_zext65 = zext i1 %cfg_icmpEq64 to i32
  call void @assert_cfg_ft(i32 %cfg_zext65, i32 %232, i32 35)
  %234 = trunc i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.split.loop.exit33, %.critedge.loopexit.split.loop.exit31, %72, %19
  %.0.lcssa = phi i32 [ 0, %19 ], [ %228, %.critedge.loopexit.split.loop.exit31 ], [ %234, %.critedge.loopexit.split.loop.exit33 ], [ %209, %72 ]
  %235 = phi i32 [ 0, %19 ], [ %228, %.critedge.loopexit.split.loop.exit31 ], [ %234, %.critedge.loopexit.split.loop.exit33 ], [ %210, %72 ]
  %cfg_DestPhi66 = phi i32 [ 385882397, %72 ], [ 437256722, %.critedge.loopexit.split.loop.exit31 ], [ 488636938, %.critedge.loopexit.split.loop.exit33 ], [ 231736834, %19 ]
  %236 = phi i32 [ 385882397, %72 ], [ 437256722, %.critedge.loopexit.split.loop.exit31 ], [ 488636938, %.critedge.loopexit.split.loop.exit33 ], [ 231736834, %19 ]
  %cfg_DiffPhi67 = phi i32 [ %220, %72 ], [ 975176724, %.critedge.loopexit.split.loop.exit31 ], [ 1024459788, %.critedge.loopexit.split.loop.exit33 ], [ %33, %19 ]
  %237 = phi i32 [ %221, %72 ], [ 975176724, %.critedge.loopexit.split.loop.exit31 ], [ 1024459788, %.critedge.loopexit.split.loop.exit33 ], [ %33, %19 ]
  %icmpEq288 = icmp eq i32 %cfg_DiffPhi67, %237
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %cfg_DestPhi66, %236
  %238 = icmp eq i32 %236, %236
  %icmpEq290 = icmp eq i1 %icmpEq286, %238
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %icmpEq284 = icmp eq i32 %.0.lcssa, %235
  %zext285 = zext i1 %icmpEq284 to i32
  %239 = zext i1 %icmpEq284 to i32
  %icmpEq292 = icmp eq i32 %zext285, %239
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  call void @assert_ft(i32 %zext285, i32 35)
  %240 = xor i32 %cfg_DestPhi66, %cfg_DiffPhi67
  %cfg_icmpEq68 = icmp eq i32 %240, 540018182
  %cfg_zext69 = zext i1 %cfg_icmpEq68 to i32
  %241 = zext i1 %cfg_icmpEq68 to i32
  %icmpEq294 = icmp eq i32 %cfg_zext69, %241
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext69, i32 %240, i32 35)
  %242 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.0.lcssa)
  %243 = zext i32 %.0.lcssa to i64
  call void @qsort(ptr noundef nonnull %3, i64 noundef %243, i64 noundef 24, ptr noundef nonnull @compare) #10
  %.not = icmp eq i32 %.0.lcssa, 0
  %244 = icmp eq i32 %235, 0
  %icmpEq296 = icmp eq i1 %.not, %244
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %245 = select i1 %.not, i32 642777374, i32 591399684
  %246 = xor i32 540018182, %245
  br i1 %.not, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28, %.critedge
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph28 ], [ 0, %.critedge ]
  %247 = phi i64 [ %263, %.lr.ph28 ], [ 0, %.critedge ]
  %cfg_DestPhi70 = phi i32 [ 540018182, %.critedge ], [ 591399684, %.lr.ph28 ]
  %248 = phi i32 [ 540018182, %.critedge ], [ 591399684, %.lr.ph28 ]
  %cfg_DiffPhi71 = phi i32 [ %246, %.critedge ], [ %265, %.lr.ph28 ]
  %249 = phi i32 [ %246, %.critedge ], [ %265, %.lr.ph28 ]
  %icmpEq302 = icmp eq i32 %cfg_DiffPhi71, %249
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %icmpEq300 = icmp eq i32 %cfg_DestPhi70, %248
  %250 = icmp eq i32 %248, %248
  %icmpEq304 = icmp eq i1 %icmpEq300, %250
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %icmpEq298 = icmp eq i64 %indvars.iv29, %247
  %zext299 = zext i1 %icmpEq298 to i32
  %251 = zext i1 %icmpEq298 to i32
  %icmpEq306 = icmp eq i32 %zext299, %251
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  call void @assert_ft(i32 %zext299, i32 35)
  %252 = xor i32 %cfg_DestPhi70, %cfg_DiffPhi71
  %cfg_icmpEq72 = icmp eq i32 %252, 591399684
  %cfg_zext73 = zext i1 %cfg_icmpEq72 to i32
  %253 = zext i1 %cfg_icmpEq72 to i32
  %icmpEq308 = icmp eq i32 %cfg_zext73, %253
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext73, i32 %252, i32 35)
  %254 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29
  %255 = load i32, ptr %254, align 8
  %256 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29, i32 1
  %257 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %247, i32 1
  %258 = load i32, ptr %256, align 4
  %259 = load i32, ptr %257, align 4
  %icmpEq310 = icmp eq i32 %258, %259
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %260 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], ptr %3, i64 0, i64 %indvars.iv29, i32 2
  %261 = load i32, ptr %260, align 8
  %262 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %255, i32 noundef %258, i32 noundef %261)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %263 = add nuw nsw i64 %247, 1
  %icmpEq312 = icmp eq i64 %indvars.iv.next30, %263
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %243
  %264 = select i1 %exitcond.not, i32 642777374, i32 591399684
  %265 = xor i32 591399684, %264
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph28

._crit_edge:                                      ; preds = %.lr.ph28, %.critedge
  %cfg_DestPhi74 = phi i32 [ 591399684, %.lr.ph28 ], [ 540018182, %.critedge ]
  %266 = phi i32 [ 591399684, %.lr.ph28 ], [ 540018182, %.critedge ]
  %cfg_DiffPhi75 = phi i32 [ %265, %.lr.ph28 ], [ %246, %.critedge ]
  %267 = phi i32 [ %265, %.lr.ph28 ], [ %246, %.critedge ]
  %icmpEq316 = icmp eq i32 %cfg_DiffPhi75, %267
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq314 = icmp eq i32 %cfg_DestPhi74, %266
  %268 = icmp eq i32 %266, %266
  %icmpEq318 = icmp eq i1 %icmpEq314, %268
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %269 = xor i32 %cfg_DestPhi74, %cfg_DiffPhi75
  %cfg_icmpEq76 = icmp eq i32 %269, 642777374
  %270 = icmp eq i32 %269, 642777374
  %icmpEq320 = icmp eq i1 %cfg_icmpEq76, %270
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %cfg_zext77 = zext i1 %cfg_icmpEq76 to i32
  call void @assert_cfg_ft(i32 %cfg_zext77, i32 %269, i32 35)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

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

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
