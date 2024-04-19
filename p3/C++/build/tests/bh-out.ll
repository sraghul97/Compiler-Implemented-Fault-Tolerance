; ModuleID = 'bh-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.datapoints = type { [3 x double], [3 x double], ptr, ptr }
%struct.tree = type { [3 x double], double, ptr, [64 x ptr], [64 x ptr] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, ptr, ptr }
%struct.hgstruct = type { ptr, [3 x double], double, [3 x double] }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x ptr], ptr }
%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.tms = type { i64, i64, i64, i64 }

@__NumNodes = dso_local local_unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@bp_free_list = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"testdata: not enough memory\0A\00", align 1
@root = dso_local local_unnamed_addr global ptr null, align 8
@rmin = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@rsize = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@arg1 = dso_local local_unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"times() call failed\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@nbody = dso_local local_unnamed_addr global i32 0, align 4
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1)
  %4 = load i32, ptr @nbody, align 4
  %5 = load i32, ptr @nbody, align 4
  %icmpEq = icmp eq i32 %4, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = load i32, ptr @__NumNodes, align 4
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4, i32 noundef %6)
  %8 = tail call ptr @old_main()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @old_main() local_unnamed_addr #0 {
.preheader109.preheader:
  %0 = alloca [64 x i32], align 16
  %1 = alloca [64 x ptr], align 16
  %2 = alloca %struct.datapoints, align 8
  %3 = load i32, ptr @__NumNodes, align 4
  %4 = load i32, ptr @__NumNodes, align 4
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = tail call i32 @srand(i32 noundef 123) #28
  %6 = tail call noalias dereferenceable_or_null(1064) ptr @malloc(i64 noundef 1064) #28
  %7 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 2
  store ptr null, ptr %7, align 8
  store double -2.000000e+00, ptr %6, align 8
  %8 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %9 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  store double -2.000000e+00, ptr %8, align 8
  %10 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %11 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  store double -2.000000e+00, ptr %10, align 8
  %12 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 1
  %13 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 1
  store double 4.000000e+00, ptr %12, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 8
  %14 = getelementptr inbounds i8, ptr %2, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 16
  %15 = getelementptr inbounds i8, ptr %2, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 24
  %16 = getelementptr inbounds i8, ptr %2, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 32
  %17 = getelementptr inbounds i8, ptr %2, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 40
  %18 = getelementptr inbounds i8, ptr %2, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 48
  %19 = getelementptr inbounds i8, ptr %2, i64 48
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %2, i64 56
  %20 = getelementptr inbounds i8, ptr %2, i64 56
  br label %76

.preheader106:                                    ; preds = %.preheader107.preheader
  %cfg_DestPhi = phi i32 [ 334497817, %.preheader107.preheader ]
  %21 = phi i32 [ 334497817, %.preheader107.preheader ]
  %22 = phi i32 [ 334497817, %.preheader107.preheader ]
  %23 = phi i32 [ 334497817, %.preheader107.preheader ]
  %cfg_DiffPhi = phi i32 [ %140, %.preheader107.preheader ]
  %24 = phi i32 [ %140, %.preheader107.preheader ]
  %25 = phi i32 [ %140, %.preheader107.preheader ]
  %26 = phi i32 [ %140, %.preheader107.preheader ]
  %icmpEq234 = icmp eq i32 %25, %26
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq232 = icmp eq i32 %cfg_DiffPhi, %24
  %27 = icmp eq i32 %24, %24
  %icmpEq236 = icmp eq i1 %icmpEq232, %27
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq230 = icmp eq i32 %22, %23
  %zext231 = zext i1 %icmpEq230 to i32
  %28 = zext i1 %icmpEq230 to i32
  %icmpEq238 = icmp eq i32 %zext231, %28
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  call void @assert_ft(i32 %zext231, i32 35)
  %icmpEq228 = icmp eq i32 %cfg_DestPhi, %21
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq218 = icmp eq i32 %cfg_DiffPhi, %25
  %29 = icmp eq i32 %24, %26
  %icmpEq240 = icmp eq i1 %icmpEq218, %29
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %icmpEq216 = icmp eq i32 %cfg_DestPhi, %22
  %30 = icmp eq i32 %21, %23
  %31 = icmp eq i32 %21, %23
  %icmpEq242 = icmp eq i1 %30, %31
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %icmpEq220 = icmp eq i1 %icmpEq216, %30
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %zext217 = zext i1 %icmpEq216 to i32
  %32 = zext i1 %30 to i32
  %icmpEq244 = icmp eq i32 %zext217, %32
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  call void @assert_ft(i32 %zext217, i32 35)
  %33 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %33, 180358940
  %34 = icmp eq i32 %33, 180358940
  %35 = icmp eq i32 %33, 180358940
  %icmpEq246 = icmp eq i1 %34, %35
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq222 = icmp eq i1 %cfg_icmpEq, %34
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %36 = zext i1 %34 to i32
  %icmpEq248 = icmp eq i32 %cfg_zext, %36
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %33, i32 35)
  %37 = load i32, ptr @nbody, align 4
  %38 = sitofp i32 %37 to double
  %39 = sitofp i32 %37 to double
  %40 = sitofp i32 %37 to double
  %41 = fdiv double %127, %38
  %42 = fdiv double %127, %39
  %43 = fdiv double %127, %38
  %44 = fdiv double %127, %39
  %45 = fdiv double %128, %38
  %46 = fdiv double %128, %39
  %47 = fdiv double %128, %38
  %48 = fdiv double %128, %39
  %49 = fdiv double %130, %38
  %50 = fdiv double %130, %39
  %51 = fdiv double %130, %38
  %52 = fdiv double %130, %39
  %53 = fdiv double %132, %38
  %54 = fdiv double %132, %39
  %55 = fdiv double %132, %38
  %56 = fdiv double %132, %39
  %57 = fdiv double %134, %38
  %58 = fdiv double %134, %39
  %59 = fdiv double %134, %38
  %60 = fdiv double %134, %39
  %61 = fdiv double %136, %38
  %62 = fdiv double %136, %39
  %63 = fdiv double %136, %38
  %64 = fdiv double %136, %39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %1, i8 0, i64 512, i1 false)
  %65 = sdiv i32 64, %3
  %66 = sdiv i32 64, %4
  %icmpEq250 = icmp eq i32 %65, %66
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %67 = sdiv i32 64, %3
  %icmpEq224 = icmp eq i32 %65, %67
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %68 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 3
  %69 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 3
  %.090121 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %69, align 8
  %.not122 = icmp eq ptr %.090121, null
  %71 = icmp eq ptr %70, null
  %icmpEq252 = icmp eq i1 %.not122, %71
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %72 = select i1 %.not122, i32 437256987, i32 385888520
  %73 = select i1 %71, i32 437256987, i32 385888520
  %icmpEq226 = icmp eq i32 %72, %73
  %zext227 = zext i1 %icmpEq226 to i32
  %74 = zext i1 %icmpEq226 to i32
  %icmpEq254 = icmp eq i32 %zext227, %74
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  call void @assert_ft(i32 %zext227, i32 35)
  %75 = xor i32 180358940, %72
  br i1 %.not122, label %.preheader101, label %.preheader103

76:                                               ; preds = %.preheader107.preheader, %.preheader109.preheader
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %136, %.preheader107.preheader ]
  %77 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %136, %.preheader107.preheader ]
  %.sroa.6146.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %134, %.preheader107.preheader ]
  %78 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %134, %.preheader107.preheader ]
  %.sroa.0143.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %132, %.preheader107.preheader ]
  %79 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %132, %.preheader107.preheader ]
  %.sroa.11157.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %130, %.preheader107.preheader ]
  %80 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %130, %.preheader107.preheader ]
  %.sroa.6154.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %128, %.preheader107.preheader ]
  %81 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %128, %.preheader107.preheader ]
  %.sroa.0151.0 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %127, %.preheader107.preheader ]
  %82 = phi double [ 0.000000e+00, %.preheader109.preheader ], [ %127, %.preheader107.preheader ]
  %indvars.iv = phi i64 [ 0, %.preheader109.preheader ], [ %indvars.iv.next, %.preheader107.preheader ]
  %83 = phi i64 [ 0, %.preheader109.preheader ], [ %99, %.preheader107.preheader ]
  %.087115 = phi i32 [ 0, %.preheader109.preheader ], [ %100, %.preheader107.preheader ]
  %84 = phi i32 [ 0, %.preheader109.preheader ], [ %100, %.preheader107.preheader ]
  %.091114 = phi ptr [ null, %.preheader109.preheader ], [ %.sroa.8.0.copyload, %.preheader107.preheader ]
  %85 = phi ptr [ null, %.preheader109.preheader ], [ %109, %.preheader107.preheader ]
  %cfg_DestPhi180 = phi i32 [ 128980755, %.preheader109.preheader ], [ 334497817, %.preheader107.preheader ]
  %86 = phi i32 [ 128980755, %.preheader109.preheader ], [ 334497817, %.preheader107.preheader ]
  %cfg_DiffPhi181 = phi i32 [ 174077464, %.preheader109.preheader ], [ %140, %.preheader107.preheader ]
  %87 = phi i32 [ 174077464, %.preheader109.preheader ], [ %140, %.preheader107.preheader ]
  %icmpEq262 = icmp eq i32 %cfg_DiffPhi181, %87
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %icmpEq260 = icmp eq i32 %cfg_DestPhi180, %86
  %88 = icmp eq i32 %86, %86
  %icmpEq264 = icmp eq i1 %icmpEq260, %88
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq258 = icmp eq i32 %.087115, %84
  %zext259 = zext i1 %icmpEq258 to i32
  %89 = zext i1 %icmpEq258 to i32
  %icmpEq266 = icmp eq i32 %zext259, %89
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  call void @assert_ft(i32 %zext259, i32 35)
  %icmpEq256 = icmp eq i64 %indvars.iv, %83
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %90 = xor i32 %cfg_DestPhi180, %cfg_DiffPhi181
  %91 = xor i32 %86, %87
  %icmpEq268 = icmp eq i32 %90, %91
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %cfg_icmpEq182 = icmp eq i32 %90, 231743755
  %cfg_zext183 = zext i1 %cfg_icmpEq182 to i32
  call void @assert_cfg_ft(i32 %cfg_zext183, i32 %90, i32 35)
  %92 = load i32, ptr @__NumNodes, align 4
  %93 = load i32, ptr @__NumNodes, align 4
  %icmpEq270 = icmp eq i32 %92, %93
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %94 = sdiv i32 32, %92
  %.lhs.trunc = trunc i32 %.087115 to i8
  %.rhs.trunc = trunc i32 %94 to i8
  %95 = sdiv i8 %.lhs.trunc, %.rhs.trunc
  %96 = sdiv i8 %.lhs.trunc, %.rhs.trunc
  %icmpEq272 = icmp eq i8 %95, %96
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %.sext = sext i8 %95 to i32
  %97 = load i32, ptr @nbody, align 4
  %98 = sdiv i32 %97, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %99 = add nuw nsw i64 %83, 1
  %icmpEq274 = icmp eq i64 %indvars.iv.next, %99
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %100 = add nuw nsw i32 %.087115, 1
  %101 = trunc i64 %indvars.iv.next to i32
  call void @uniform_testdata(ptr nonnull sret(%struct.datapoints) align 8 %2, i32 noundef %.sext, i32 noundef %98, i32 noundef %101)
  %.sroa.0.0.copyload = load double, ptr %2, align 8
  %102 = load double, ptr %2, align 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8
  %103 = load double, ptr %14, align 8
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8
  %104 = load double, ptr %15, align 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %105 = load double, ptr %16, align 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %106 = load double, ptr %17, align 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %107 = load double, ptr %18, align 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %108 = load ptr, ptr %19, align 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %109 = load ptr, ptr %20, align 8
  %110 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 3, i64 %indvars.iv
  %111 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 3, i64 %83
  store ptr %.sroa.7.0.copyload, ptr %110, align 8
  %.not100 = icmp eq ptr %.091114, null
  %112 = icmp eq ptr %85, null
  %icmpEq276 = icmp eq i1 %.not100, %112
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %113 = select i1 %.not100, i32 334497817, i32 283116314
  %114 = xor i32 231743755, %113
  br i1 %.not100, label %.preheader107.preheader, label %115

115:                                              ; preds = %76
  %cfg_DestPhi184 = phi i32 [ 231743755, %76 ]
  %116 = phi i32 [ 231743755, %76 ]
  %cfg_DiffPhi185 = phi i32 [ %114, %76 ]
  %117 = phi i32 [ %114, %76 ]
  %icmpEq280 = icmp eq i32 %cfg_DiffPhi185, %117
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq278 = icmp eq i32 %cfg_DestPhi184, %116
  %118 = icmp eq i32 %116, %116
  %icmpEq282 = icmp eq i1 %icmpEq278, %118
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %119 = xor i32 %cfg_DestPhi184, %cfg_DiffPhi185
  %cfg_icmpEq186 = icmp eq i32 %119, 283116314
  %120 = icmp eq i32 %119, 283116314
  %icmpEq284 = icmp eq i1 %cfg_icmpEq186, %120
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %cfg_zext187 = zext i1 %cfg_icmpEq186 to i32
  call void @assert_cfg_ft(i32 %cfg_zext187, i32 %119, i32 35)
  %121 = getelementptr inbounds %struct.bnode, ptr %.091114, i64 0, i32 9
  store ptr %.sroa.7.0.copyload, ptr %121, align 8
  br label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %115, %76
  %cfg_DestPhi188 = phi i32 [ 283116314, %115 ], [ 231743755, %76 ]
  %122 = phi i32 [ 283116314, %115 ], [ 231743755, %76 ]
  %cfg_DiffPhi189 = phi i32 [ 51383043, %115 ], [ %114, %76 ]
  %123 = phi i32 [ 51383043, %115 ], [ %114, %76 ]
  %icmpEq288 = icmp eq i32 %cfg_DiffPhi189, %123
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %cfg_DestPhi188, %122
  %124 = icmp eq i32 %122, %122
  %icmpEq290 = icmp eq i1 %icmpEq286, %124
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %125 = xor i32 %cfg_DestPhi188, %cfg_DiffPhi189
  %cfg_icmpEq190 = icmp eq i32 %125, 334497817
  %126 = icmp eq i32 %125, 334497817
  %icmpEq292 = icmp eq i1 %cfg_icmpEq190, %126
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %cfg_zext191 = zext i1 %cfg_icmpEq190 to i32
  call void @assert_cfg_ft(i32 %cfg_zext191, i32 %125, i32 35)
  %127 = fadd double %.sroa.0151.0, %.sroa.0.0.copyload
  %128 = fadd double %.sroa.6154.0, %.sroa.2.0.copyload
  %129 = fadd double %81, %103
  %130 = fadd double %.sroa.11157.0, %.sroa.3.0.copyload
  %131 = fadd double %80, %104
  %132 = fadd double %.sroa.0143.0, %.sroa.4.0.copyload
  %133 = fadd double %79, %105
  %134 = fadd double %.sroa.6146.0, %.sroa.5.0.copyload
  %135 = fadd double %78, %106
  %136 = fadd double %.sroa.11.0, %.sroa.6.0.copyload
  %137 = fadd double %77, %107
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  %138 = icmp eq i64 %99, 32
  %icmpEq294 = icmp eq i1 %exitcond.not, %138
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %139 = select i1 %exitcond.not, i32 180358940, i32 231743755
  %140 = xor i32 334497817, %139
  br i1 %exitcond.not, label %.preheader106, label %76

.preheader103:                                    ; preds = %.preheader103, %.preheader106
  %.090123 = phi ptr [ %.090, %.preheader103 ], [ %.090121, %.preheader106 ]
  %141 = phi ptr [ %206, %.preheader103 ], [ %70, %.preheader106 ]
  %cfg_DestPhi192 = phi i32 [ 180358940, %.preheader106 ], [ 385888520, %.preheader103 ]
  %142 = phi i32 [ 180358940, %.preheader106 ], [ 385888520, %.preheader103 ]
  %cfg_DiffPhi193 = phi i32 [ %75, %.preheader106 ], [ %209, %.preheader103 ]
  %143 = phi i32 [ %75, %.preheader106 ], [ %209, %.preheader103 ]
  %icmpEq298 = icmp eq i32 %cfg_DiffPhi193, %143
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %icmpEq296 = icmp eq i32 %cfg_DestPhi192, %142
  %144 = icmp eq i32 %142, %142
  %icmpEq300 = icmp eq i1 %icmpEq296, %144
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %145 = xor i32 %cfg_DestPhi192, %cfg_DiffPhi193
  %cfg_icmpEq194 = icmp eq i32 %145, 385888520
  %146 = icmp eq i32 %145, 385888520
  %icmpEq302 = icmp eq i1 %cfg_icmpEq194, %146
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %cfg_zext195 = zext i1 %cfg_icmpEq194 to i32
  call void @assert_cfg_ft(i32 %cfg_zext195, i32 %145, i32 35)
  %147 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 0
  %148 = load double, ptr %147, align 8
  %149 = load double, ptr %147, align 8
  %150 = fsub double %148, %41
  %151 = fsub double %149, %42
  store double %150, ptr %147, align 8
  %152 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 1
  %153 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 2, i64 1
  %154 = load double, ptr %152, align 8
  %155 = load double, ptr %153, align 8
  %156 = fsub double %154, %45
  %157 = fsub double %155, %46
  store double %156, ptr %152, align 8
  %158 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 2, i64 2
  %159 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 2, i64 2
  %160 = load double, ptr %158, align 8
  %161 = load double, ptr %159, align 8
  %162 = fsub double %160, %49
  %163 = fsub double %161, %50
  store double %162, ptr %158, align 8
  %164 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 0
  %165 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 5, i64 0
  %166 = load double, ptr %164, align 8
  %167 = load double, ptr %165, align 8
  %168 = fsub double %166, %53
  %169 = fsub double %167, %54
  store double %168, ptr %164, align 8
  %170 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 1
  %171 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 5, i64 1
  %172 = load double, ptr %170, align 8
  %173 = load double, ptr %171, align 8
  %174 = fsub double %172, %57
  %175 = fsub double %173, %58
  store double %174, ptr %170, align 8
  %176 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 5, i64 2
  %177 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 5, i64 2
  %178 = load double, ptr %176, align 8
  %179 = load double, ptr %177, align 8
  %180 = fsub double %178, %61
  %181 = fsub double %179, %62
  store double %180, ptr %176, align 8
  %182 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %.090123, ptr noundef nonnull %6)
  %183 = extractvalue { i64, i64 } %182, 0
  %184 = extractvalue { i64, i64 } %182, 0
  %icmpEq304 = icmp eq i64 %183, %184
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %185 = extractvalue { i64, i64 } %182, 1
  %186 = tail call i32 @old_subindex(i64 %183, i64 %185, i32 noundef 536870912)
  %187 = shl i32 %186, 3
  %188 = tail call i32 @old_subindex(i64 %183, i64 %185, i32 noundef 268435456)
  %189 = add nsw i32 %187, %188
  %190 = add nsw i32 %187, %188
  %icmpEq306 = icmp eq i32 %189, %190
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %191 = sdiv i32 %189, %65
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4
  %195 = load i32, ptr %193, align 4
  %icmpEq308 = icmp eq i32 %194, %195
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %196 = add nsw i32 %194, 1
  store i32 %196, ptr %193, align 4
  %197 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %192
  %198 = load ptr, ptr %197, align 8
  %199 = load ptr, ptr %197, align 8
  %200 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 10
  %201 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 10
  store ptr %198, ptr %200, align 8
  store ptr %.090123, ptr %197, align 8
  %202 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 3
  %203 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 3
  store i32 %191, ptr %202, align 8
  %204 = getelementptr inbounds %struct.bnode, ptr %.090123, i64 0, i32 9
  %205 = getelementptr inbounds %struct.bnode, ptr %141, i64 0, i32 9
  %.090 = load ptr, ptr %204, align 8
  %206 = load ptr, ptr %205, align 8
  %.not = icmp eq ptr %.090, null
  %207 = icmp eq ptr %206, null
  %icmpEq310 = icmp eq i1 %.not, %207
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %208 = select i1 %.not, i32 437256987, i32 385888520
  %209 = xor i32 385888520, %208
  br i1 %.not, label %.preheader101, label %.preheader103

.preheader101:                                    ; preds = %.preheader103, %.preheader106
  %cfg_DestPhi196 = phi i32 [ 385888520, %.preheader103 ], [ 180358940, %.preheader106 ]
  %210 = phi i32 [ 385888520, %.preheader103 ], [ 180358940, %.preheader106 ]
  %cfg_DiffPhi197 = phi i32 [ %209, %.preheader103 ], [ %75, %.preheader106 ]
  %211 = phi i32 [ %209, %.preheader103 ], [ %75, %.preheader106 ]
  %icmpEq314 = icmp eq i32 %cfg_DiffPhi197, %211
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %icmpEq312 = icmp eq i32 %cfg_DestPhi196, %210
  %212 = icmp eq i32 %210, %210
  %icmpEq316 = icmp eq i1 %icmpEq312, %212
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %213 = xor i32 %cfg_DestPhi196, %cfg_DiffPhi197
  %cfg_icmpEq198 = icmp eq i32 %213, 437256987
  %214 = icmp eq i32 %213, 437256987
  %icmpEq318 = icmp eq i1 %cfg_icmpEq198, %214
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %cfg_zext199 = zext i1 %cfg_icmpEq198 to i32
  call void @assert_cfg_ft(i32 %cfg_zext199, i32 %213, i32 35)
  %215 = load i32, ptr @__NumNodes, align 4
  %216 = icmp sgt i32 %215, 0
  %217 = icmp sgt i32 %215, 0
  %icmpEq320 = icmp eq i1 %216, %217
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %218 = select i1 %216, i32 488640033, i32 540016897
  %219 = xor i32 437256987, %218
  br i1 %216, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.preheader101
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph ], [ 0, %.preheader101 ]
  %220 = phi i64 [ %305, %.lr.ph ], [ 0, %.preheader101 ]
  %221 = phi i64 [ %305, %.lr.ph ], [ 0, %.preheader101 ]
  %222 = phi i64 [ %indvars.iv.next142, %.lr.ph ], [ 0, %.preheader101 ]
  %223 = phi i64 [ %305, %.lr.ph ], [ 0, %.preheader101 ]
  %224 = phi i64 [ %indvars.iv.next142, %.lr.ph ], [ 0, %.preheader101 ]
  %225 = phi i64 [ %305, %.lr.ph ], [ 0, %.preheader101 ]
  %cfg_DestPhi200 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %226 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %227 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %228 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %229 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %230 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %231 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %232 = phi i32 [ 437256987, %.preheader101 ], [ 488640033, %.lr.ph ]
  %cfg_DiffPhi201 = phi i32 [ %219, %.preheader101 ], [ %320, %.lr.ph ]
  %233 = phi i32 [ %219, %.preheader101 ], [ %321, %.lr.ph ]
  %234 = phi i32 [ %219, %.preheader101 ], [ %320, %.lr.ph ]
  %235 = phi i32 [ %219, %.preheader101 ], [ %321, %.lr.ph ]
  %236 = phi i32 [ %219, %.preheader101 ], [ %320, %.lr.ph ]
  %237 = phi i32 [ %219, %.preheader101 ], [ %321, %.lr.ph ]
  %238 = phi i32 [ %219, %.preheader101 ], [ %320, %.lr.ph ]
  %239 = phi i32 [ %219, %.preheader101 ], [ %321, %.lr.ph ]
  %icmpEq402 = icmp eq i32 %238, %239
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  %icmpEq400 = icmp eq i32 %236, %237
  %240 = icmp eq i32 %237, %237
  %icmpEq404 = icmp eq i1 %icmpEq400, %240
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  %icmpEq398 = icmp eq i32 %234, %235
  %zext399 = zext i1 %icmpEq398 to i32
  %241 = zext i1 %icmpEq398 to i32
  %icmpEq406 = icmp eq i32 %zext399, %241
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  call void @assert_ft(i32 %zext399, i32 35)
  %icmpEq396 = icmp eq i32 %cfg_DiffPhi201, %233
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %icmpEq394 = icmp eq i32 %231, %232
  %242 = icmp eq i32 %232, %232
  %icmpEq408 = icmp eq i1 %icmpEq394, %242
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %icmpEq392 = icmp eq i32 %229, %230
  %zext393 = zext i1 %icmpEq392 to i32
  %243 = zext i1 %icmpEq392 to i32
  %icmpEq410 = icmp eq i32 %zext393, %243
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  call void @assert_ft(i32 %zext393, i32 35)
  %icmpEq390 = icmp eq i32 %227, %228
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %icmpEq388 = icmp eq i32 %cfg_DestPhi200, %226
  %244 = icmp eq i32 %226, %226
  %icmpEq412 = icmp eq i1 %icmpEq388, %244
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %icmpEq386 = icmp eq i64 %224, %225
  %zext387 = zext i1 %icmpEq386 to i32
  %245 = zext i1 %icmpEq386 to i32
  %icmpEq414 = icmp eq i32 %zext387, %245
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  call void @assert_ft(i32 %zext387, i32 35)
  %icmpEq384 = icmp eq i64 %222, %223
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %icmpEq382 = icmp eq i64 %220, %221
  %246 = icmp eq i64 %221, %221
  %icmpEq416 = icmp eq i1 %icmpEq382, %246
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  %icmpEq350 = icmp eq i32 %236, %238
  %zext351 = zext i1 %icmpEq350 to i32
  %247 = zext i1 %icmpEq350 to i32
  %icmpEq418 = icmp eq i32 %zext351, %247
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  call void @assert_ft(i32 %zext351, i32 35)
  %icmpEq348 = icmp eq i32 %cfg_DiffPhi201, %234
  %248 = icmp eq i32 %233, %235
  %icmpEq352 = icmp eq i1 %icmpEq348, %248
  %249 = icmp eq i1 %248, %248
  %icmpEq420 = icmp eq i1 %icmpEq352, %249
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  %icmpEq346 = icmp eq i32 %229, %231
  %250 = icmp eq i32 %230, %232
  %icmpEq422 = icmp eq i1 %icmpEq346, %250
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %zext347 = zext i1 %icmpEq346 to i32
  %251 = zext i1 %250 to i32
  %icmpEq354 = icmp eq i32 %zext347, %251
  %zext355 = zext i1 %icmpEq354 to i32
  %252 = zext i1 %icmpEq354 to i32
  %icmpEq424 = icmp eq i32 %zext355, %252
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  call void @assert_ft(i32 %zext355, i32 35)
  call void @assert_ft(i32 %zext347, i32 35)
  %icmpEq344 = icmp eq i32 %cfg_DestPhi200, %227
  %zext345 = zext i1 %icmpEq344 to i32
  %253 = zext i1 %icmpEq344 to i32
  %icmpEq426 = icmp eq i32 %zext345, %253
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  call void @assert_ft(i32 %zext345, i32 35)
  %icmpEq342 = icmp eq i64 %222, %224
  %254 = icmp eq i64 %223, %225
  %icmpEq356 = icmp eq i1 %icmpEq342, %254
  %255 = icmp eq i1 %254, %254
  %icmpEq428 = icmp eq i1 %icmpEq356, %255
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %icmpEq340 = icmp eq i64 %indvars.iv141, %220
  %256 = icmp eq i64 %220, %221
  %icmpEq430 = icmp eq i1 %icmpEq340, %256
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  %zext341 = zext i1 %icmpEq340 to i32
  %257 = zext i1 %256 to i32
  %icmpEq358 = icmp eq i32 %zext341, %257
  %zext359 = zext i1 %icmpEq358 to i32
  %258 = zext i1 %icmpEq358 to i32
  %icmpEq432 = icmp eq i32 %zext359, %258
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  call void @assert_ft(i32 %zext359, i32 35)
  call void @assert_ft(i32 %zext341, i32 35)
  %icmpEq326 = icmp eq i32 %cfg_DiffPhi201, %236
  %zext327 = zext i1 %icmpEq326 to i32
  %259 = zext i1 %icmpEq326 to i32
  %icmpEq434 = icmp eq i32 %zext327, %259
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  call void @assert_ft(i32 %zext327, i32 35)
  %icmpEq324 = icmp eq i32 %cfg_DestPhi200, %229
  %260 = icmp eq i32 %226, %230
  %icmpEq360 = icmp eq i1 %icmpEq324, %260
  %261 = icmp eq i1 %260, %260
  %icmpEq436 = icmp eq i1 %icmpEq360, %261
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %262 = icmp eq i32 %cfg_DestPhi200, %229
  %icmpEq328 = icmp eq i1 %icmpEq324, %262
  %263 = icmp eq i1 %260, %262
  %icmpEq438 = icmp eq i1 %icmpEq328, %263
  %zext439 = zext i1 %icmpEq438 to i32
  call void @assert_ft(i32 %zext439, i32 35)
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %zext325 = zext i1 %icmpEq324 to i32
  %264 = zext i1 %260 to i32
  %265 = zext i1 %260 to i32
  %icmpEq440 = icmp eq i32 %264, %265
  %zext441 = zext i1 %icmpEq440 to i32
  call void @assert_ft(i32 %zext441, i32 35)
  %icmpEq362 = icmp eq i32 %zext325, %264
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  call void @assert_ft(i32 %zext325, i32 35)
  %icmpEq322 = icmp eq i64 %indvars.iv141, %222
  %266 = icmp eq i64 %220, %223
  %icmpEq442 = icmp eq i1 %icmpEq322, %266
  %zext443 = zext i1 %icmpEq442 to i32
  call void @assert_ft(i32 %zext443, i32 35)
  %zext323 = zext i1 %icmpEq322 to i32
  %267 = zext i1 %266 to i32
  %268 = zext i1 %266 to i32
  %icmpEq364 = icmp eq i32 %267, %268
  %269 = icmp eq i32 %268, %268
  %icmpEq444 = icmp eq i1 %icmpEq364, %269
  %zext445 = zext i1 %icmpEq444 to i32
  call void @assert_ft(i32 %zext445, i32 35)
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %icmpEq330 = icmp eq i32 %zext323, %267
  %zext331 = zext i1 %icmpEq330 to i32
  %270 = zext i1 %icmpEq330 to i32
  %icmpEq446 = icmp eq i32 %zext331, %270
  %zext447 = zext i1 %icmpEq446 to i32
  call void @assert_ft(i32 %zext447, i32 35)
  call void @assert_ft(i32 %zext331, i32 35)
  call void @assert_ft(i32 %zext323, i32 35)
  %271 = xor i32 %cfg_DestPhi200, %cfg_DiffPhi201
  %272 = xor i32 %226, %233
  %273 = xor i32 %226, %233
  %icmpEq448 = icmp eq i32 %272, %273
  %zext449 = zext i1 %icmpEq448 to i32
  call void @assert_ft(i32 %zext449, i32 35)
  %icmpEq366 = icmp eq i32 %271, %272
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  %cfg_icmpEq202 = icmp eq i32 %271, 488640033
  %274 = icmp eq i32 %272, 488640033
  %icmpEq450 = icmp eq i1 %cfg_icmpEq202, %274
  %zext451 = zext i1 %icmpEq450 to i32
  call void @assert_ft(i32 %zext451, i32 35)
  %cfg_zext203 = zext i1 %cfg_icmpEq202 to i32
  %275 = zext i1 %274 to i32
  %icmpEq332 = icmp eq i32 %cfg_zext203, %275
  %276 = icmp eq i32 %275, %275
  %277 = icmp eq i32 %275, %275
  %icmpEq452 = icmp eq i1 %276, %277
  %zext453 = zext i1 %icmpEq452 to i32
  call void @assert_ft(i32 %zext453, i32 35)
  %icmpEq368 = icmp eq i1 %icmpEq332, %276
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %zext333 = zext i1 %icmpEq332 to i32
  %278 = zext i1 %276 to i32
  %icmpEq454 = icmp eq i32 %zext333, %278
  %zext455 = zext i1 %icmpEq454 to i32
  call void @assert_ft(i32 %zext455, i32 35)
  call void @assert_ft(i32 %zext333, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext203, i32 %271, i32 35)
  %279 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %indvars.iv141
  %280 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %220
  %281 = getelementptr inbounds [64 x i32], ptr %0, i64 0, i64 %220
  %282 = load i32, ptr %279, align 4
  %283 = load i32, ptr %280, align 4
  %icmpEq456 = icmp eq i32 %282, %283
  %zext457 = zext i1 %icmpEq456 to i32
  call void @assert_ft(i32 %zext457, i32 35)
  %284 = load i32, ptr %279, align 4
  %icmpEq370 = icmp eq i32 %282, %284
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %285 = trunc i64 %indvars.iv141 to i32
  %286 = trunc i64 %220 to i32
  %icmpEq458 = icmp eq i32 %285, %286
  %zext459 = zext i1 %icmpEq458 to i32
  call void @assert_ft(i32 %zext459, i32 35)
  %287 = trunc i64 %indvars.iv141 to i32
  %icmpEq334 = icmp eq i32 %285, %287
  %zext335 = zext i1 %icmpEq334 to i32
  %288 = zext i1 %icmpEq334 to i32
  %289 = zext i1 %icmpEq334 to i32
  %icmpEq460 = icmp eq i32 %288, %289
  %zext461 = zext i1 %icmpEq460 to i32
  call void @assert_ft(i32 %zext461, i32 35)
  %icmpEq372 = icmp eq i32 %zext335, %288
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  call void @assert_ft(i32 %zext335, i32 35)
  %290 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %285, i32 noundef %282)
  %291 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %indvars.iv141
  %292 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %220
  %293 = load ptr, ptr %291, align 8
  %294 = load ptr, ptr %292, align 8
  %295 = load ptr, ptr %291, align 8
  %296 = load ptr, ptr %292, align 8
  %297 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %indvars.iv141
  %298 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %220
  %299 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %indvars.iv141
  %300 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %220
  %301 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %indvars.iv141
  %302 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %220
  %303 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %indvars.iv141
  %304 = getelementptr inbounds %struct.tree, ptr %6, i64 0, i32 4, i64 %220
  store ptr %293, ptr %297, align 8
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %305 = add nuw nsw i64 %220, 1
  %icmpEq462 = icmp eq i64 %indvars.iv.next142, %305
  %zext463 = zext i1 %icmpEq462 to i32
  call void @assert_ft(i32 %zext463, i32 35)
  %306 = add nuw nsw i64 %indvars.iv141, 1
  %icmpEq374 = icmp eq i64 %indvars.iv.next142, %306
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %307 = add nuw nsw i64 %indvars.iv141, 1
  %308 = add nuw nsw i64 %220, 1
  %icmpEq464 = icmp eq i64 %307, %308
  %zext465 = zext i1 %icmpEq464 to i32
  call void @assert_ft(i32 %zext465, i32 35)
  %icmpEq336 = icmp eq i64 %indvars.iv.next142, %307
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %309 = load i32, ptr @__NumNodes, align 4
  %310 = load i32, ptr @__NumNodes, align 4
  %icmpEq466 = icmp eq i32 %309, %310
  %zext467 = zext i1 %icmpEq466 to i32
  call void @assert_ft(i32 %zext467, i32 35)
  %311 = load i32, ptr @__NumNodes, align 4
  %icmpEq376 = icmp eq i32 %309, %311
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %312 = sext i32 %309 to i64
  %313 = sext i32 %310 to i64
  %icmpEq468 = icmp eq i64 %312, %313
  %zext469 = zext i1 %icmpEq468 to i32
  call void @assert_ft(i32 %zext469, i32 35)
  %314 = icmp slt i64 %indvars.iv.next142, %312
  %315 = select i1 %314, i32 488640033, i32 540016897
  %316 = select i1 %314, i32 488640033, i32 540016897
  %317 = select i1 %314, i32 488640033, i32 540016897
  %318 = select i1 %314, i32 488640033, i32 540016897
  %icmpEq470 = icmp eq i32 %317, %318
  %zext471 = zext i1 %icmpEq470 to i32
  call void @assert_ft(i32 %zext471, i32 35)
  %icmpEq378 = icmp eq i32 %316, %317
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %icmpEq338 = icmp eq i32 %315, %316
  %319 = icmp eq i32 %316, %317
  %icmpEq472 = icmp eq i1 %icmpEq338, %319
  %zext473 = zext i1 %icmpEq472 to i32
  call void @assert_ft(i32 %zext473, i32 35)
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %320 = xor i32 488640033, %315
  %321 = xor i32 488640033, %316
  %322 = xor i32 488640033, %316
  %icmpEq474 = icmp eq i32 %321, %322
  %zext475 = zext i1 %icmpEq474 to i32
  call void @assert_ft(i32 %zext475, i32 35)
  %icmpEq380 = icmp eq i32 %320, %321
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  br i1 %314, label %.lr.ph, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader101
  %cfg_DestPhi204 = phi i32 [ 488640033, %.lr.ph ], [ 437256987, %.preheader101 ]
  %323 = phi i32 [ 488640033, %.lr.ph ], [ 437256987, %.preheader101 ]
  %cfg_DiffPhi205 = phi i32 [ %320, %.lr.ph ], [ %219, %.preheader101 ]
  %324 = phi i32 [ %321, %.lr.ph ], [ %219, %.preheader101 ]
  %icmpEq478 = icmp eq i32 %cfg_DiffPhi205, %324
  %zext479 = zext i1 %icmpEq478 to i32
  call void @assert_ft(i32 %zext479, i32 35)
  %icmpEq476 = icmp eq i32 %cfg_DestPhi204, %323
  %325 = icmp eq i32 %323, %323
  %icmpEq480 = icmp eq i1 %icmpEq476, %325
  %zext481 = zext i1 %icmpEq480 to i32
  call void @assert_ft(i32 %zext481, i32 35)
  %zext477 = zext i1 %icmpEq476 to i32
  call void @assert_ft(i32 %zext477, i32 35)
  %326 = xor i32 %cfg_DestPhi204, %cfg_DiffPhi205
  %cfg_icmpEq206 = icmp eq i32 %326, 540016897
  %327 = icmp eq i32 %326, 540016897
  %icmpEq482 = icmp eq i1 %cfg_icmpEq206, %327
  %zext483 = zext i1 %icmpEq482 to i32
  call void @assert_ft(i32 %zext483, i32 35)
  %cfg_zext207 = zext i1 %cfg_icmpEq206 to i32
  call void @assert_cfg_ft(i32 %cfg_zext207, i32 %326, i32 35)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.0126 = phi double [ %395, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %328 = phi double [ %396, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %329 = phi double [ %396, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %330 = phi double [ %395, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %331 = phi double [ %396, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %332 = phi double [ %395, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %333 = phi double [ %396, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %.1125 = phi i32 [ %399, %.preheader ], [ 0, %.preheader.preheader ]
  %334 = phi i32 [ %400, %.preheader ], [ 0, %.preheader.preheader ]
  %335 = phi i32 [ %399, %.preheader ], [ 0, %.preheader.preheader ]
  %336 = phi i32 [ %400, %.preheader ], [ 0, %.preheader.preheader ]
  %337 = phi i32 [ %399, %.preheader ], [ 0, %.preheader.preheader ]
  %338 = phi i32 [ %400, %.preheader ], [ 0, %.preheader.preheader ]
  %339 = phi i32 [ %399, %.preheader ], [ 0, %.preheader.preheader ]
  %340 = phi i32 [ %400, %.preheader ], [ 0, %.preheader.preheader ]
  %cfg_DestPhi208 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %341 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %342 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %343 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %344 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %345 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %346 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %347 = phi i32 [ 540016897, %.preheader.preheader ], [ 591399178, %.preheader ]
  %cfg_DiffPhi209 = phi i32 [ 57673739, %.preheader.preheader ], [ %415, %.preheader ]
  %348 = phi i32 [ 57673739, %.preheader.preheader ], [ %416, %.preheader ]
  %349 = phi i32 [ 57673739, %.preheader.preheader ], [ %415, %.preheader ]
  %350 = phi i32 [ 57673739, %.preheader.preheader ], [ %416, %.preheader ]
  %351 = phi i32 [ 57673739, %.preheader.preheader ], [ %415, %.preheader ]
  %352 = phi i32 [ 57673739, %.preheader.preheader ], [ %416, %.preheader ]
  %353 = phi i32 [ 57673739, %.preheader.preheader ], [ %415, %.preheader ]
  %354 = phi i32 [ 57673739, %.preheader.preheader ], [ %416, %.preheader ]
  %icmpEq560 = icmp eq i32 %353, %354
  %zext561 = zext i1 %icmpEq560 to i32
  call void @assert_ft(i32 %zext561, i32 35)
  %icmpEq558 = icmp eq i32 %351, %352
  %355 = icmp eq i32 %352, %352
  %icmpEq562 = icmp eq i1 %icmpEq558, %355
  %zext563 = zext i1 %icmpEq562 to i32
  call void @assert_ft(i32 %zext563, i32 35)
  %zext559 = zext i1 %icmpEq558 to i32
  call void @assert_ft(i32 %zext559, i32 35)
  %icmpEq556 = icmp eq i32 %349, %350
  %zext557 = zext i1 %icmpEq556 to i32
  %356 = zext i1 %icmpEq556 to i32
  %icmpEq564 = icmp eq i32 %zext557, %356
  %zext565 = zext i1 %icmpEq564 to i32
  call void @assert_ft(i32 %zext565, i32 35)
  call void @assert_ft(i32 %zext557, i32 35)
  %icmpEq554 = icmp eq i32 %cfg_DiffPhi209, %348
  %zext555 = zext i1 %icmpEq554 to i32
  call void @assert_ft(i32 %zext555, i32 35)
  %icmpEq552 = icmp eq i32 %346, %347
  %357 = icmp eq i32 %347, %347
  %icmpEq566 = icmp eq i1 %icmpEq552, %357
  %zext567 = zext i1 %icmpEq566 to i32
  call void @assert_ft(i32 %zext567, i32 35)
  %zext553 = zext i1 %icmpEq552 to i32
  call void @assert_ft(i32 %zext553, i32 35)
  %icmpEq550 = icmp eq i32 %344, %345
  %zext551 = zext i1 %icmpEq550 to i32
  %358 = zext i1 %icmpEq550 to i32
  %icmpEq568 = icmp eq i32 %zext551, %358
  %zext569 = zext i1 %icmpEq568 to i32
  call void @assert_ft(i32 %zext569, i32 35)
  call void @assert_ft(i32 %zext551, i32 35)
  %icmpEq548 = icmp eq i32 %342, %343
  %zext549 = zext i1 %icmpEq548 to i32
  call void @assert_ft(i32 %zext549, i32 35)
  %icmpEq546 = icmp eq i32 %cfg_DestPhi208, %341
  %359 = icmp eq i32 %341, %341
  %icmpEq570 = icmp eq i1 %icmpEq546, %359
  %zext571 = zext i1 %icmpEq570 to i32
  call void @assert_ft(i32 %zext571, i32 35)
  %zext547 = zext i1 %icmpEq546 to i32
  call void @assert_ft(i32 %zext547, i32 35)
  %icmpEq544 = icmp eq i32 %339, %340
  %zext545 = zext i1 %icmpEq544 to i32
  %360 = zext i1 %icmpEq544 to i32
  %icmpEq572 = icmp eq i32 %zext545, %360
  %zext573 = zext i1 %icmpEq572 to i32
  call void @assert_ft(i32 %zext573, i32 35)
  call void @assert_ft(i32 %zext545, i32 35)
  %icmpEq542 = icmp eq i32 %337, %338
  %zext543 = zext i1 %icmpEq542 to i32
  call void @assert_ft(i32 %zext543, i32 35)
  %icmpEq540 = icmp eq i32 %335, %336
  %361 = icmp eq i32 %336, %336
  %icmpEq574 = icmp eq i1 %icmpEq540, %361
  %zext575 = zext i1 %icmpEq574 to i32
  call void @assert_ft(i32 %zext575, i32 35)
  %zext541 = zext i1 %icmpEq540 to i32
  call void @assert_ft(i32 %zext541, i32 35)
  %icmpEq538 = icmp eq i32 %.1125, %334
  %zext539 = zext i1 %icmpEq538 to i32
  %362 = zext i1 %icmpEq538 to i32
  %icmpEq576 = icmp eq i32 %zext539, %362
  %zext577 = zext i1 %icmpEq576 to i32
  call void @assert_ft(i32 %zext577, i32 35)
  call void @assert_ft(i32 %zext539, i32 35)
  %icmpEq510 = icmp eq i32 %351, %353
  %zext511 = zext i1 %icmpEq510 to i32
  call void @assert_ft(i32 %zext511, i32 35)
  %icmpEq508 = icmp eq i32 %cfg_DiffPhi209, %349
  %363 = icmp eq i32 %348, %350
  %icmpEq578 = icmp eq i1 %icmpEq508, %363
  %zext579 = zext i1 %icmpEq578 to i32
  call void @assert_ft(i32 %zext579, i32 35)
  %364 = icmp eq i32 %cfg_DiffPhi209, %349
  %icmpEq512 = icmp eq i1 %icmpEq508, %364
  %zext513 = zext i1 %icmpEq512 to i32
  call void @assert_ft(i32 %zext513, i32 35)
  %zext509 = zext i1 %icmpEq508 to i32
  %365 = zext i1 %363 to i32
  %icmpEq580 = icmp eq i32 %zext509, %365
  %zext581 = zext i1 %icmpEq580 to i32
  call void @assert_ft(i32 %zext581, i32 35)
  call void @assert_ft(i32 %zext509, i32 35)
  %icmpEq506 = icmp eq i32 %344, %346
  %zext507 = zext i1 %icmpEq506 to i32
  %366 = zext i1 %icmpEq506 to i32
  %367 = zext i1 %icmpEq506 to i32
  %icmpEq582 = icmp eq i32 %366, %367
  %zext583 = zext i1 %icmpEq582 to i32
  call void @assert_ft(i32 %zext583, i32 35)
  %icmpEq514 = icmp eq i32 %zext507, %366
  %zext515 = zext i1 %icmpEq514 to i32
  call void @assert_ft(i32 %zext515, i32 35)
  call void @assert_ft(i32 %zext507, i32 35)
  %icmpEq504 = icmp eq i32 %cfg_DestPhi208, %342
  %368 = icmp eq i32 %341, %343
  %icmpEq584 = icmp eq i1 %icmpEq504, %368
  %zext585 = zext i1 %icmpEq584 to i32
  call void @assert_ft(i32 %zext585, i32 35)
  %zext505 = zext i1 %icmpEq504 to i32
  call void @assert_ft(i32 %zext505, i32 35)
  %icmpEq502 = icmp eq i32 %337, %339
  %369 = icmp eq i32 %338, %340
  %370 = icmp eq i32 %338, %340
  %icmpEq586 = icmp eq i1 %369, %370
  %zext587 = zext i1 %icmpEq586 to i32
  call void @assert_ft(i32 %zext587, i32 35)
  %icmpEq516 = icmp eq i1 %icmpEq502, %369
  %zext517 = zext i1 %icmpEq516 to i32
  call void @assert_ft(i32 %zext517, i32 35)
  %zext503 = zext i1 %icmpEq502 to i32
  %371 = zext i1 %369 to i32
  %icmpEq588 = icmp eq i32 %zext503, %371
  %zext589 = zext i1 %icmpEq588 to i32
  call void @assert_ft(i32 %zext589, i32 35)
  call void @assert_ft(i32 %zext503, i32 35)
  %icmpEq500 = icmp eq i32 %.1125, %335
  %zext501 = zext i1 %icmpEq500 to i32
  %372 = zext i1 %icmpEq500 to i32
  %373 = zext i1 %icmpEq500 to i32
  %icmpEq590 = icmp eq i32 %372, %373
  %zext591 = zext i1 %icmpEq590 to i32
  call void @assert_ft(i32 %zext591, i32 35)
  %icmpEq518 = icmp eq i32 %zext501, %372
  %zext519 = zext i1 %icmpEq518 to i32
  call void @assert_ft(i32 %zext519, i32 35)
  call void @assert_ft(i32 %zext501, i32 35)
  %icmpEq488 = icmp eq i32 %cfg_DiffPhi209, %351
  %374 = icmp eq i32 %348, %352
  %icmpEq592 = icmp eq i1 %icmpEq488, %374
  %zext593 = zext i1 %icmpEq592 to i32
  call void @assert_ft(i32 %zext593, i32 35)
  %zext489 = zext i1 %icmpEq488 to i32
  call void @assert_ft(i32 %zext489, i32 35)
  %icmpEq486 = icmp eq i32 %cfg_DestPhi208, %344
  %375 = icmp eq i32 %341, %345
  %376 = icmp eq i32 %341, %345
  %icmpEq594 = icmp eq i1 %375, %376
  %zext595 = zext i1 %icmpEq594 to i32
  call void @assert_ft(i32 %zext595, i32 35)
  %icmpEq520 = icmp eq i1 %icmpEq486, %375
  %zext521 = zext i1 %icmpEq520 to i32
  call void @assert_ft(i32 %zext521, i32 35)
  %377 = icmp eq i32 %cfg_DestPhi208, %344
  %378 = icmp eq i32 %341, %345
  %icmpEq596 = icmp eq i1 %377, %378
  %zext597 = zext i1 %icmpEq596 to i32
  call void @assert_ft(i32 %zext597, i32 35)
  %icmpEq490 = icmp eq i1 %icmpEq486, %377
  %zext491 = zext i1 %icmpEq490 to i32
  call void @assert_ft(i32 %zext491, i32 35)
  %zext487 = zext i1 %icmpEq486 to i32
  %379 = zext i1 %375 to i32
  %icmpEq598 = icmp eq i32 %zext487, %379
  %zext599 = zext i1 %icmpEq598 to i32
  call void @assert_ft(i32 %zext599, i32 35)
  %380 = zext i1 %icmpEq486 to i32
  %icmpEq522 = icmp eq i32 %zext487, %380
  %zext523 = zext i1 %icmpEq522 to i32
  call void @assert_ft(i32 %zext523, i32 35)
  call void @assert_ft(i32 %zext487, i32 35)
  %icmpEq484 = icmp eq i32 %.1125, %337
  %381 = icmp eq i32 %334, %338
  %icmpEq600 = icmp eq i1 %icmpEq484, %381
  %zext601 = zext i1 %icmpEq600 to i32
  call void @assert_ft(i32 %zext601, i32 35)
  %zext485 = zext i1 %icmpEq484 to i32
  %382 = zext i1 %381 to i32
  %383 = zext i1 %381 to i32
  %icmpEq524 = icmp eq i32 %382, %383
  %384 = icmp eq i32 %383, %383
  %icmpEq602 = icmp eq i1 %icmpEq524, %384
  %zext603 = zext i1 %icmpEq602 to i32
  call void @assert_ft(i32 %zext603, i32 35)
  %zext525 = zext i1 %icmpEq524 to i32
  call void @assert_ft(i32 %zext525, i32 35)
  %icmpEq492 = icmp eq i32 %zext485, %382
  %zext493 = zext i1 %icmpEq492 to i32
  %385 = zext i1 %icmpEq492 to i32
  %icmpEq604 = icmp eq i32 %zext493, %385
  %zext605 = zext i1 %icmpEq604 to i32
  call void @assert_ft(i32 %zext605, i32 35)
  call void @assert_ft(i32 %zext493, i32 35)
  call void @assert_ft(i32 %zext485, i32 35)
  %386 = xor i32 %cfg_DestPhi208, %cfg_DiffPhi209
  %387 = xor i32 %341, %348
  %388 = xor i32 %341, %348
  %icmpEq606 = icmp eq i32 %387, %388
  %zext607 = zext i1 %icmpEq606 to i32
  call void @assert_ft(i32 %zext607, i32 35)
  %icmpEq526 = icmp eq i32 %386, %387
  %zext527 = zext i1 %icmpEq526 to i32
  call void @assert_ft(i32 %zext527, i32 35)
  %cfg_icmpEq210 = icmp eq i32 %386, 591399178
  %389 = icmp eq i32 %387, 591399178
  %icmpEq608 = icmp eq i1 %cfg_icmpEq210, %389
  %zext609 = zext i1 %icmpEq608 to i32
  call void @assert_ft(i32 %zext609, i32 35)
  %cfg_zext211 = zext i1 %cfg_icmpEq210 to i32
  %390 = zext i1 %389 to i32
  %icmpEq494 = icmp eq i32 %cfg_zext211, %390
  %391 = icmp eq i32 %390, %390
  %392 = icmp eq i32 %390, %390
  %icmpEq610 = icmp eq i1 %391, %392
  %zext611 = zext i1 %icmpEq610 to i32
  call void @assert_ft(i32 %zext611, i32 35)
  %icmpEq528 = icmp eq i1 %icmpEq494, %391
  %zext529 = zext i1 %icmpEq528 to i32
  call void @assert_ft(i32 %zext529, i32 35)
  %zext495 = zext i1 %icmpEq494 to i32
  %393 = zext i1 %391 to i32
  %icmpEq612 = icmp eq i32 %zext495, %393
  %zext613 = zext i1 %icmpEq612 to i32
  call void @assert_ft(i32 %zext613, i32 35)
  call void @assert_ft(i32 %zext495, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext211, i32 %386, i32 35)
  %394 = tail call i32 @stepsystem(ptr noundef nonnull %6, i32 noundef %.1125)
  %395 = fadd double %.0126, 1.250000e-02
  %396 = fadd double %328, 1.250000e-02
  %397 = fadd double %.0126, 1.250000e-02
  %398 = fadd double %328, 1.250000e-02
  %399 = add nuw nsw i32 %.1125, 1
  %400 = add nuw nsw i32 %334, 1
  %icmpEq614 = icmp eq i32 %399, %400
  %zext615 = zext i1 %icmpEq614 to i32
  call void @assert_ft(i32 %zext615, i32 35)
  %401 = add nuw nsw i32 %.1125, 1
  %icmpEq530 = icmp eq i32 %399, %401
  %zext531 = zext i1 %icmpEq530 to i32
  call void @assert_ft(i32 %zext531, i32 35)
  %402 = add nuw nsw i32 %.1125, 1
  %403 = add nuw nsw i32 %334, 1
  %icmpEq616 = icmp eq i32 %402, %403
  %zext617 = zext i1 %icmpEq616 to i32
  call void @assert_ft(i32 %zext617, i32 35)
  %icmpEq496 = icmp eq i32 %399, %402
  %zext497 = zext i1 %icmpEq496 to i32
  call void @assert_ft(i32 %zext497, i32 35)
  %404 = fcmp olt double %395, 2.001250e+00
  %405 = fcmp olt double %396, 2.001250e+00
  %icmpEq618 = icmp eq i1 %404, %405
  %zext619 = zext i1 %icmpEq618 to i32
  call void @assert_ft(i32 %zext619, i32 35)
  %406 = fcmp olt double %395, 2.001250e+00
  %icmpEq532 = icmp eq i1 %404, %406
  %zext533 = zext i1 %icmpEq532 to i32
  call void @assert_ft(i32 %zext533, i32 35)
  %407 = icmp ult i32 %.1125, 9
  %408 = icmp ult i32 %334, 9
  %icmpEq620 = icmp eq i1 %407, %408
  %zext621 = zext i1 %icmpEq620 to i32
  call void @assert_ft(i32 %zext621, i32 35)
  %409 = and i1 %404, %407
  %410 = select i1 %409, i32 591399178, i32 642777374
  %411 = select i1 %409, i32 591399178, i32 642777374
  %412 = select i1 %409, i32 591399178, i32 642777374
  %413 = select i1 %409, i32 591399178, i32 642777374
  %icmpEq622 = icmp eq i32 %412, %413
  %zext623 = zext i1 %icmpEq622 to i32
  call void @assert_ft(i32 %zext623, i32 35)
  %icmpEq534 = icmp eq i32 %411, %412
  %zext535 = zext i1 %icmpEq534 to i32
  call void @assert_ft(i32 %zext535, i32 35)
  %icmpEq498 = icmp eq i32 %410, %411
  %414 = icmp eq i32 %411, %412
  %icmpEq624 = icmp eq i1 %icmpEq498, %414
  %zext625 = zext i1 %icmpEq624 to i32
  call void @assert_ft(i32 %zext625, i32 35)
  %zext499 = zext i1 %icmpEq498 to i32
  call void @assert_ft(i32 %zext499, i32 35)
  %415 = xor i32 591399178, %410
  %416 = xor i32 591399178, %411
  %417 = xor i32 591399178, %411
  %icmpEq626 = icmp eq i32 %416, %417
  %zext627 = zext i1 %icmpEq626 to i32
  call void @assert_ft(i32 %zext627, i32 35)
  %icmpEq536 = icmp eq i32 %415, %416
  %zext537 = zext i1 %icmpEq536 to i32
  call void @assert_ft(i32 %zext537, i32 35)
  br i1 %409, label %.preheader, label %418

418:                                              ; preds = %.preheader
  %cfg_DestPhi212 = phi i32 [ 591399178, %.preheader ]
  %419 = phi i32 [ 591399178, %.preheader ]
  %cfg_DiffPhi213 = phi i32 [ %415, %.preheader ]
  %420 = phi i32 [ %416, %.preheader ]
  %icmpEq630 = icmp eq i32 %cfg_DiffPhi213, %420
  %zext631 = zext i1 %icmpEq630 to i32
  call void @assert_ft(i32 %zext631, i32 35)
  %icmpEq628 = icmp eq i32 %cfg_DestPhi212, %419
  %421 = icmp eq i32 %419, %419
  %icmpEq632 = icmp eq i1 %icmpEq628, %421
  %zext633 = zext i1 %icmpEq632 to i32
  call void @assert_ft(i32 %zext633, i32 35)
  %zext629 = zext i1 %icmpEq628 to i32
  call void @assert_ft(i32 %zext629, i32 35)
  %422 = xor i32 %cfg_DestPhi212, %cfg_DiffPhi213
  %cfg_icmpEq214 = icmp eq i32 %422, 642777374
  %423 = icmp eq i32 %422, 642777374
  %icmpEq634 = icmp eq i1 %cfg_icmpEq214, %423
  %zext635 = zext i1 %icmpEq634 to i32
  call void @assert_ft(i32 %zext635, i32 35)
  %cfg_zext215 = zext i1 %cfg_icmpEq214 to i32
  call void @assert_cfg_ft(i32 %cfg_zext215, i32 %422, i32 35)
  ret ptr %6
}

; Function Attrs: nounwind
declare i32 @srand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @uniform_testdata(ptr noalias nocapture writeonly sret(%struct.datapoints) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
.preheader100.preheader:
  %scevgep = getelementptr inbounds i8, ptr %0, i64 24
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %5 = tail call ptr @ubody_alloc(i32 noundef %1)
  %6 = icmp sgt i32 %2, 0
  %7 = icmp sgt i32 %2, 0
  %icmpEq = icmp eq i1 %6, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = select i1 %6, i32 180357378, i32 591399431
  %9 = xor i32 128976145, %8
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader100.preheader
  %cfg_DestPhi = phi i32 [ 128976145, %.preheader100.preheader ]
  %10 = phi i32 [ 128976145, %.preheader100.preheader ]
  %cfg_DiffPhi = phi i32 [ %9, %.preheader100.preheader ]
  %11 = phi i32 [ %9, %.preheader100.preheader ]
  %icmpEq192 = icmp eq i32 %cfg_DiffPhi, %11
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq190 = icmp eq i32 %cfg_DestPhi, %10
  %12 = icmp eq i32 %10, %10
  %icmpEq194 = icmp eq i1 %icmpEq190, %12
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %13 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %13, 180357378
  %14 = icmp eq i32 %13, 180357378
  %icmpEq196 = icmp eq i1 %cfg_icmpEq, %14
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %13, i32 35)
  %15 = sitofp i32 %3 to double
  %16 = fmul double %15, 1.230000e+02
  %17 = fmul double %15, 1.230000e+02
  %18 = sitofp i32 %2 to double
  %19 = sitofp i32 %2 to double
  %20 = fdiv double 1.000000e+00, %18
  %21 = fdiv double 1.000000e+00, %19
  %22 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %23 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %24 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %25 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %26 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 1
  %27 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 1
  %28 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 2
  %29 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 2
  br label %30

30:                                               ; preds = %.preheader97.preheader, %.lr.ph
  %31 = phi double [ 0.000000e+00, %.lr.ph ], [ %219, %.preheader97.preheader ]
  %32 = phi double [ 0.000000e+00, %.lr.ph ], [ %219, %.preheader97.preheader ]
  %33 = phi double [ 0.000000e+00, %.lr.ph ], [ %219, %.preheader97.preheader ]
  %34 = phi double [ 0.000000e+00, %.lr.ph ], [ %219, %.preheader97.preheader ]
  %35 = phi double [ 0.000000e+00, %.lr.ph ], [ %217, %.preheader97.preheader ]
  %36 = phi double [ 0.000000e+00, %.lr.ph ], [ %217, %.preheader97.preheader ]
  %37 = phi double [ 0.000000e+00, %.lr.ph ], [ %217, %.preheader97.preheader ]
  %38 = phi double [ 0.000000e+00, %.lr.ph ], [ %217, %.preheader97.preheader ]
  %39 = phi double [ 0.000000e+00, %.lr.ph ], [ %215, %.preheader97.preheader ]
  %40 = phi double [ 0.000000e+00, %.lr.ph ], [ %215, %.preheader97.preheader ]
  %41 = phi double [ 0.000000e+00, %.lr.ph ], [ %215, %.preheader97.preheader ]
  %42 = phi double [ 0.000000e+00, %.lr.ph ], [ %215, %.preheader97.preheader ]
  %43 = phi double [ 0.000000e+00, %.lr.ph ], [ %133, %.preheader97.preheader ]
  %44 = phi double [ 0.000000e+00, %.lr.ph ], [ %133, %.preheader97.preheader ]
  %45 = phi double [ 0.000000e+00, %.lr.ph ], [ %133, %.preheader97.preheader ]
  %46 = phi double [ 0.000000e+00, %.lr.ph ], [ %133, %.preheader97.preheader ]
  %47 = phi double [ 0.000000e+00, %.lr.ph ], [ %131, %.preheader97.preheader ]
  %48 = phi double [ 0.000000e+00, %.lr.ph ], [ %131, %.preheader97.preheader ]
  %49 = phi double [ 0.000000e+00, %.lr.ph ], [ %131, %.preheader97.preheader ]
  %50 = phi double [ 0.000000e+00, %.lr.ph ], [ %131, %.preheader97.preheader ]
  %51 = phi double [ 0.000000e+00, %.lr.ph ], [ %129, %.preheader97.preheader ]
  %52 = phi double [ 0.000000e+00, %.lr.ph ], [ %129, %.preheader97.preheader ]
  %53 = phi double [ 0.000000e+00, %.lr.ph ], [ %129, %.preheader97.preheader ]
  %54 = phi double [ 0.000000e+00, %.lr.ph ], [ %129, %.preheader97.preheader ]
  %.090116 = phi ptr [ %5, %.lr.ph ], [ %83, %.preheader97.preheader ]
  %55 = phi ptr [ %5, %.lr.ph ], [ %83, %.preheader97.preheader ]
  %56 = phi ptr [ %5, %.lr.ph ], [ %83, %.preheader97.preheader ]
  %57 = phi ptr [ %5, %.lr.ph ], [ %83, %.preheader97.preheader ]
  %.091115 = phi i32 [ 0, %.lr.ph ], [ %221, %.preheader97.preheader ]
  %58 = phi i32 [ 0, %.lr.ph ], [ %221, %.preheader97.preheader ]
  %59 = phi i32 [ 0, %.lr.ph ], [ %221, %.preheader97.preheader ]
  %60 = phi i32 [ 0, %.lr.ph ], [ %221, %.preheader97.preheader ]
  %.094114 = phi double [ %16, %.lr.ph ], [ %184, %.preheader97.preheader ]
  %61 = phi double [ %17, %.lr.ph ], [ %184, %.preheader97.preheader ]
  %62 = phi double [ %16, %.lr.ph ], [ %184, %.preheader97.preheader ]
  %63 = phi double [ %17, %.lr.ph ], [ %184, %.preheader97.preheader ]
  %cfg_DestPhi158 = phi i32 [ 180357378, %.lr.ph ], [ 540022808, %.preheader97.preheader ]
  %64 = phi i32 [ 180357378, %.lr.ph ], [ 540022808, %.preheader97.preheader ]
  %65 = phi i32 [ 180357378, %.lr.ph ], [ 540022808, %.preheader97.preheader ]
  %66 = phi i32 [ 180357378, %.lr.ph ], [ 540022808, %.preheader97.preheader ]
  %cfg_DiffPhi159 = phi i32 [ 118490374, %.lr.ph ], [ %224, %.preheader97.preheader ]
  %67 = phi i32 [ 118490374, %.lr.ph ], [ %224, %.preheader97.preheader ]
  %68 = phi i32 [ 118490374, %.lr.ph ], [ %224, %.preheader97.preheader ]
  %69 = phi i32 [ 118490374, %.lr.ph ], [ %224, %.preheader97.preheader ]
  %icmpEq222 = icmp eq i32 %68, %69
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %icmpEq220 = icmp eq i32 %cfg_DiffPhi159, %67
  %70 = icmp eq i32 %67, %67
  %icmpEq224 = icmp eq i1 %icmpEq220, %70
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq218 = icmp eq i32 %65, %66
  %zext219 = zext i1 %icmpEq218 to i32
  %71 = zext i1 %icmpEq218 to i32
  %icmpEq226 = icmp eq i32 %zext219, %71
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  call void @assert_ft(i32 %zext219, i32 35)
  %icmpEq216 = icmp eq i32 %cfg_DestPhi158, %64
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %icmpEq214 = icmp eq i32 %59, %60
  %72 = icmp eq i32 %60, %60
  %icmpEq228 = icmp eq i1 %icmpEq214, %72
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %icmpEq212 = icmp eq i32 %.091115, %58
  %zext213 = zext i1 %icmpEq212 to i32
  %73 = zext i1 %icmpEq212 to i32
  %icmpEq230 = icmp eq i32 %zext213, %73
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  call void @assert_ft(i32 %zext213, i32 35)
  %icmpEq202 = icmp eq i32 %cfg_DiffPhi159, %68
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %icmpEq200 = icmp eq i32 %cfg_DestPhi158, %65
  %74 = icmp eq i32 %64, %66
  %icmpEq232 = icmp eq i1 %icmpEq200, %74
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %75 = icmp eq i32 %cfg_DestPhi158, %65
  %icmpEq204 = icmp eq i1 %icmpEq200, %75
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  %zext201 = zext i1 %icmpEq200 to i32
  %76 = zext i1 %74 to i32
  %icmpEq234 = icmp eq i32 %zext201, %76
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  call void @assert_ft(i32 %zext201, i32 35)
  %icmpEq198 = icmp eq i32 %.091115, %59
  %zext199 = zext i1 %icmpEq198 to i32
  %77 = zext i1 %icmpEq198 to i32
  %78 = zext i1 %icmpEq198 to i32
  %icmpEq236 = icmp eq i32 %77, %78
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %icmpEq206 = icmp eq i32 %zext199, %77
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  call void @assert_ft(i32 %zext199, i32 35)
  %79 = xor i32 %cfg_DestPhi158, %cfg_DiffPhi159
  %80 = xor i32 %64, %67
  %icmpEq238 = icmp eq i32 %79, %80
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %cfg_icmpEq160 = icmp eq i32 %79, 231738372
  %cfg_zext161 = zext i1 %cfg_icmpEq160 to i32
  %81 = zext i1 %cfg_icmpEq160 to i32
  %icmpEq208 = icmp eq i32 %cfg_zext161, %81
  %82 = icmp eq i32 %81, %81
  %icmpEq240 = icmp eq i1 %icmpEq208, %82
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext161, i32 %79, i32 35)
  %83 = tail call ptr @ubody_alloc(i32 noundef %1)
  %84 = icmp eq ptr %83, null
  %85 = icmp eq ptr %83, null
  %icmpEq242 = icmp eq i1 %84, %85
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %86 = select i1 %84, i32 283116037, i32 334503962
  %87 = select i1 %85, i32 283116037, i32 334503962
  %icmpEq210 = icmp eq i32 %86, %87
  %zext211 = zext i1 %icmpEq210 to i32
  %88 = zext i1 %icmpEq210 to i32
  %icmpEq244 = icmp eq i32 %zext211, %88
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  call void @assert_ft(i32 %zext211, i32 35)
  %89 = xor i32 231738372, %86
  br i1 %84, label %90, label %.preheader99

90:                                               ; preds = %30
  %cfg_DestPhi162 = phi i32 [ 231738372, %30 ]
  %91 = phi i32 [ 231738372, %30 ]
  %cfg_DiffPhi163 = phi i32 [ %89, %30 ]
  %92 = phi i32 [ %89, %30 ]
  %icmpEq248 = icmp eq i32 %cfg_DiffPhi163, %92
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %icmpEq246 = icmp eq i32 %cfg_DestPhi162, %91
  %93 = icmp eq i32 %91, %91
  %icmpEq250 = icmp eq i1 %icmpEq246, %93
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %94 = xor i32 %cfg_DestPhi162, %cfg_DiffPhi163
  %cfg_icmpEq164 = icmp eq i32 %94, 283116037
  %95 = icmp eq i32 %94, 283116037
  %icmpEq252 = icmp eq i1 %cfg_icmpEq164, %95
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %cfg_zext165 = zext i1 %cfg_icmpEq164 to i32
  call void @assert_cfg_ft(i32 %cfg_zext165, i32 %94, i32 35)
  %96 = tail call i32 @error(ptr noundef nonnull @.str.3, ptr null, ptr null, ptr null, ptr null)
  unreachable

.preheader99:                                     ; preds = %30
  %cfg_DestPhi166 = phi i32 [ 231738372, %30 ]
  %97 = phi i32 [ 231738372, %30 ]
  %cfg_DiffPhi167 = phi i32 [ %89, %30 ]
  %98 = phi i32 [ %89, %30 ]
  %icmpEq256 = icmp eq i32 %cfg_DiffPhi167, %98
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq254 = icmp eq i32 %cfg_DestPhi166, %97
  %99 = icmp eq i32 %97, %97
  %icmpEq258 = icmp eq i1 %icmpEq254, %99
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %100 = xor i32 %cfg_DestPhi166, %cfg_DiffPhi167
  %cfg_icmpEq168 = icmp eq i32 %100, 334503962
  %101 = icmp eq i32 %100, 334503962
  %icmpEq260 = icmp eq i1 %cfg_icmpEq168, %101
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %cfg_zext169 = zext i1 %cfg_icmpEq168 to i32
  call void @assert_cfg_ft(i32 %cfg_zext169, i32 %100, i32 35)
  %102 = getelementptr inbounds %struct.bnode, ptr %.090116, i64 0, i32 9
  store ptr %83, ptr %102, align 8
  store i16 1, ptr %83, align 8
  %103 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 1
  %104 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 1
  store double %20, ptr %103, align 8
  %105 = tail call double @my_rand(double noundef %.094114)
  %106 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %105)
  %107 = tail call double @pow(double noundef %106, double noundef 0xBFE5555555555555) #28
  %108 = fadd double %107, -1.000000e+00
  %109 = fadd double %107, -1.000000e+00
  %110 = tail call double @sqrt(double noundef %108) #28
  %111 = tail call double @my_rand(double noundef %105)
  %112 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %111)
  %113 = fmul double %112, 4.000000e+00
  %114 = fmul double %112, 4.000000e+00
  %115 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 2, i64 0
  %116 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 2, i64 0
  store double %113, ptr %115, align 8
  %117 = tail call double @my_rand(double noundef %111)
  %118 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %117)
  %119 = fmul double %118, 4.000000e+00
  %120 = fmul double %118, 4.000000e+00
  %121 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 2, i64 1
  %122 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 2, i64 1
  store double %119, ptr %121, align 8
  %123 = tail call double @my_rand(double noundef %117)
  %124 = tail call double @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %123)
  %125 = fmul double %124, 4.000000e+00
  %126 = fmul double %124, 4.000000e+00
  %127 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 2, i64 2
  %128 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 2, i64 2
  store double %125, ptr %127, align 8
  %129 = fadd double %51, %113
  %130 = fadd double %52, %114
  store double %129, ptr %0, align 8
  %131 = fadd double %47, %119
  %132 = fadd double %48, %120
  store double %131, ptr %22, align 8
  %133 = fadd double %43, %125
  %134 = fadd double %44, %126
  store double %133, ptr %24, align 8
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98, %.preheader99
  %.2 = phi double [ %143, %.preheader98 ], [ %123, %.preheader99 ]
  %135 = phi double [ %143, %.preheader98 ], [ %123, %.preheader99 ]
  %cfg_DestPhi170 = phi i32 [ 334503962, %.preheader99 ], [ 385879048, %.preheader98 ]
  %136 = phi i32 [ 334503962, %.preheader99 ], [ 385879048, %.preheader98 ]
  %cfg_DiffPhi171 = phi i32 [ 82848786, %.preheader99 ], [ %156, %.preheader98 ]
  %137 = phi i32 [ 82848786, %.preheader99 ], [ %156, %.preheader98 ]
  %icmpEq264 = icmp eq i32 %cfg_DiffPhi171, %137
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq262 = icmp eq i32 %cfg_DestPhi170, %136
  %138 = icmp eq i32 %136, %136
  %icmpEq266 = icmp eq i1 %icmpEq262, %138
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %139 = xor i32 %cfg_DestPhi170, %cfg_DiffPhi171
  %cfg_icmpEq172 = icmp eq i32 %139, 385879048
  %140 = icmp eq i32 %139, 385879048
  %icmpEq268 = icmp eq i1 %cfg_icmpEq172, %140
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %cfg_zext173 = zext i1 %cfg_icmpEq172 to i32
  call void @assert_cfg_ft(i32 %cfg_zext173, i32 %139, i32 35)
  %141 = tail call double @my_rand(double noundef %.2)
  %142 = tail call double @xrand(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %141)
  %143 = tail call double @my_rand(double noundef %141)
  %144 = tail call double @xrand(double noundef 0.000000e+00, double noundef 1.000000e-01, double noundef %143)
  %145 = fmul double %142, %142
  %146 = fmul double %142, %142
  %147 = fneg double %142
  %148 = fneg double %142
  %149 = tail call double @llvm.fmuladd.f64(double %147, double %142, double 1.000000e+00)
  %150 = tail call double @pow(double noundef %149, double noundef 3.500000e+00) #28
  %151 = fmul double %145, %150
  %152 = fmul double %146, %150
  %153 = fcmp ogt double %144, %151
  %154 = fcmp ogt double %144, %152
  %icmpEq270 = icmp eq i1 %153, %154
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %155 = select i1 %153, i32 385879048, i32 437258275
  %156 = xor i32 385879048, %155
  br i1 %153, label %.preheader98, label %157

157:                                              ; preds = %.preheader98
  %cfg_DestPhi174 = phi i32 [ 385879048, %.preheader98 ]
  %158 = phi i32 [ 385879048, %.preheader98 ]
  %cfg_DiffPhi175 = phi i32 [ %156, %.preheader98 ]
  %159 = phi i32 [ %156, %.preheader98 ]
  %icmpEq274 = icmp eq i32 %cfg_DiffPhi175, %159
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %icmpEq272 = icmp eq i32 %cfg_DestPhi174, %158
  %160 = icmp eq i32 %158, %158
  %icmpEq276 = icmp eq i1 %icmpEq272, %160
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %161 = xor i32 %cfg_DestPhi174, %cfg_DiffPhi175
  %cfg_icmpEq176 = icmp eq i32 %161, 437258275
  %162 = icmp eq i32 %161, 437258275
  %icmpEq278 = icmp eq i1 %cfg_icmpEq176, %162
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %cfg_zext177 = zext i1 %cfg_icmpEq176 to i32
  call void @assert_cfg_ft(i32 %cfg_zext177, i32 %161, i32 35)
  %163 = fmul double %142, 0x3FF6A09E667F3BCD
  %164 = tail call double @llvm.fmuladd.f64(double %124, double %124, double 1.000000e+00)
  %165 = tail call double @pow(double noundef %164, double noundef 2.500000e-01) #28
  %166 = fdiv double %163, %165
  %167 = fdiv double %163, %165
  %168 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 5, i64 0
  %169 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 5, i64 0
  %170 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 5, i64 1
  %171 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 5, i64 1
  %172 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 5, i64 2
  %173 = getelementptr inbounds %struct.bnode, ptr %83, i64 0, i32 5, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %157
  %.3 = phi double [ %143, %157 ], [ %184, %.preheader ]
  %174 = phi double [ %143, %157 ], [ %184, %.preheader ]
  %cfg_DestPhi178 = phi i32 [ 488639511, %.preheader ], [ 437258275, %157 ]
  %175 = phi i32 [ 488639511, %.preheader ], [ 437258275, %157 ]
  %cfg_DiffPhi179 = phi i32 [ %192, %.preheader ], [ 120587316, %157 ]
  %176 = phi i32 [ %192, %.preheader ], [ 120587316, %157 ]
  %icmpEq282 = icmp eq i32 %cfg_DiffPhi179, %176
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %icmpEq280 = icmp eq i32 %cfg_DestPhi178, %175
  %177 = icmp eq i32 %175, %175
  %icmpEq284 = icmp eq i1 %icmpEq280, %177
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %178 = xor i32 %cfg_DestPhi178, %cfg_DiffPhi179
  %cfg_icmpEq180 = icmp eq i32 %178, 488639511
  %179 = icmp eq i32 %178, 488639511
  %icmpEq286 = icmp eq i1 %cfg_icmpEq180, %179
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %cfg_zext181 = zext i1 %cfg_icmpEq180 to i32
  call void @assert_cfg_ft(i32 %cfg_zext181, i32 %178, i32 35)
  %180 = tail call double @my_rand(double noundef %.3)
  %181 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %180)
  %182 = tail call double @my_rand(double noundef %180)
  %183 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %182)
  %184 = tail call double @my_rand(double noundef %182)
  %185 = tail call double @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %184)
  %186 = tail call double @llvm.fmuladd.f64(double %181, double %181, double 0.000000e+00)
  %187 = tail call double @llvm.fmuladd.f64(double %183, double %183, double %186)
  %188 = tail call double @llvm.fmuladd.f64(double %185, double %185, double %187)
  %189 = fcmp ogt double %188, 1.000000e+00
  %190 = fcmp ogt double %188, 1.000000e+00
  %icmpEq288 = icmp eq i1 %189, %190
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %191 = select i1 %189, i32 488639511, i32 540022808
  %192 = xor i32 488639511, %191
  br i1 %189, label %.preheader, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %.preheader
  %cfg_DestPhi182 = phi i32 [ 488639511, %.preheader ]
  %193 = phi i32 [ 488639511, %.preheader ]
  %cfg_DiffPhi183 = phi i32 [ %192, %.preheader ]
  %194 = phi i32 [ %192, %.preheader ]
  %icmpEq292 = icmp eq i32 %cfg_DiffPhi183, %194
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq290 = icmp eq i32 %cfg_DestPhi182, %193
  %195 = icmp eq i32 %193, %193
  %icmpEq294 = icmp eq i1 %icmpEq290, %195
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %196 = xor i32 %cfg_DestPhi182, %cfg_DiffPhi183
  %cfg_icmpEq184 = icmp eq i32 %196, 540022808
  %197 = icmp eq i32 %196, 540022808
  %icmpEq296 = icmp eq i1 %cfg_icmpEq184, %197
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %cfg_zext185 = zext i1 %cfg_icmpEq184 to i32
  call void @assert_cfg_ft(i32 %cfg_zext185, i32 %196, i32 35)
  store double %181, ptr %168, align 8
  store double %183, ptr %170, align 8
  store double %185, ptr %172, align 8
  %198 = fmul double %166, 0x3FF4D8D7A58FA312
  %199 = fmul double %167, 0x3FF4D8D7A58FA312
  %200 = tail call double @sqrt(double noundef %188) #28
  %201 = fdiv double %198, %200
  %202 = fdiv double %199, %200
  %203 = load double, ptr %168, align 8
  %204 = load double, ptr %169, align 8
  %205 = fmul double %201, %203
  %206 = fmul double %202, %204
  store double %205, ptr %168, align 8
  %207 = load double, ptr %170, align 8
  %208 = load double, ptr %171, align 8
  %209 = fmul double %201, %207
  %210 = fmul double %202, %208
  store double %209, ptr %170, align 8
  %211 = load double, ptr %172, align 8
  %212 = load double, ptr %173, align 8
  %213 = fmul double %201, %211
  %214 = fmul double %202, %212
  store double %213, ptr %172, align 8
  %215 = fadd double %39, %205
  %216 = fadd double %40, %206
  store double %215, ptr %scevgep, align 8
  %217 = fadd double %35, %209
  %218 = fadd double %36, %210
  store double %217, ptr %26, align 8
  %219 = fadd double %31, %213
  %220 = fadd double %32, %214
  store double %219, ptr %28, align 8
  %221 = add nuw nsw i32 %.091115, 1
  %222 = add nuw nsw i32 %58, 1
  %icmpEq298 = icmp eq i32 %221, %222
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %exitcond.not = icmp eq i32 %221, %2
  %223 = select i1 %exitcond.not, i32 591399431, i32 231738372
  %224 = xor i32 540022808, %223
  br i1 %exitcond.not, label %._crit_edge, label %30

._crit_edge:                                      ; preds = %.preheader97.preheader, %.preheader100.preheader
  %.090.lcssa = phi ptr [ %5, %.preheader100.preheader ], [ %83, %.preheader97.preheader ]
  %225 = phi ptr [ %5, %.preheader100.preheader ], [ %83, %.preheader97.preheader ]
  %cfg_DestPhi186 = phi i32 [ 540022808, %.preheader97.preheader ], [ 128976145, %.preheader100.preheader ]
  %226 = phi i32 [ 540022808, %.preheader97.preheader ], [ 128976145, %.preheader100.preheader ]
  %cfg_DiffPhi187 = phi i32 [ %224, %.preheader97.preheader ], [ %9, %.preheader100.preheader ]
  %227 = phi i32 [ %224, %.preheader97.preheader ], [ %9, %.preheader100.preheader ]
  %icmpEq302 = icmp eq i32 %cfg_DiffPhi187, %227
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %icmpEq300 = icmp eq i32 %cfg_DestPhi186, %226
  %228 = icmp eq i32 %226, %226
  %icmpEq304 = icmp eq i1 %icmpEq300, %228
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %229 = xor i32 %cfg_DestPhi186, %cfg_DiffPhi187
  %cfg_icmpEq188 = icmp eq i32 %229, 591399431
  %230 = icmp eq i32 %229, 591399431
  %icmpEq306 = icmp eq i1 %cfg_icmpEq188, %230
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %cfg_zext189 = zext i1 %cfg_icmpEq188 to i32
  call void @assert_cfg_ft(i32 %cfg_zext189, i32 %229, i32 35)
  %231 = getelementptr inbounds %struct.bnode, ptr %.090.lcssa, i64 0, i32 9
  store ptr null, ptr %231, align 8
  %232 = getelementptr inbounds %struct.bnode, ptr %5, i64 0, i32 9
  %233 = getelementptr inbounds %struct.bnode, ptr %5, i64 0, i32 9
  %234 = load ptr, ptr %232, align 8
  %235 = load ptr, ptr %233, align 8
  %236 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 2
  %237 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 2
  store ptr %234, ptr %236, align 8
  %238 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 3
  %239 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 3
  store ptr %.090.lcssa, ptr %238, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %6 = load double, ptr %3, align 8
  %7 = load double, ptr %4, align 8
  %8 = load double, ptr %3, align 8
  %9 = load double, ptr %4, align 8
  %10 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %14 = load double, ptr %10, align 8
  %15 = load double, ptr %11, align 8
  %16 = load double, ptr %10, align 8
  %17 = load double, ptr %11, align 8
  %18 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %19 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %20 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %21 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %22 = load double, ptr %18, align 8
  %23 = load double, ptr %19, align 8
  %24 = load double, ptr %18, align 8
  %25 = load double, ptr %19, align 8
  %26 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %27 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %28 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %29 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %30 = load double, ptr %26, align 8
  %31 = load double, ptr %27, align 8
  %32 = load double, ptr %26, align 8
  %33 = load double, ptr %27, align 8
  %34 = load double, ptr %1, align 8
  %35 = load double, ptr %1, align 8
  %36 = load double, ptr %1, align 8
  %37 = load double, ptr %1, align 8
  %38 = fsub double %14, %34
  %39 = fsub double %15, %35
  %40 = fsub double %14, %34
  %41 = fsub double %15, %35
  %42 = fdiv double %38, %6
  %43 = fdiv double %39, %7
  %44 = fdiv double %38, %6
  %45 = fdiv double %39, %7
  %46 = fcmp oge double %42, 0.000000e+00
  %47 = fcmp oge double %43, 0.000000e+00
  %icmpEq36 = icmp eq i1 %46, %47
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %48 = fcmp oge double %42, 0.000000e+00
  %icmpEq = icmp eq i1 %46, %48
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %49 = fcmp olt double %42, 1.000000e+00
  %50 = fcmp olt double %43, 1.000000e+00
  %icmpEq38 = icmp eq i1 %49, %50
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %or.cond = and i1 %46, %49
  %51 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %52 = load double, ptr %51, align 8
  %53 = load double, ptr %51, align 8
  %54 = load double, ptr %51, align 8
  %55 = fsub double %22, %52
  %56 = fsub double %23, %53
  %57 = fsub double %22, %52
  %58 = fsub double %23, %53
  %59 = fdiv double %55, %6
  %60 = fdiv double %56, %7
  %61 = fdiv double %55, %6
  %62 = fdiv double %56, %7
  %63 = fcmp oge double %59, 0.000000e+00
  %64 = fcmp oge double %60, 0.000000e+00
  %icmpEq40 = icmp eq i1 %63, %64
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %65 = fcmp oge double %59, 0.000000e+00
  %icmpEq32 = icmp eq i1 %63, %65
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %66 = fcmp olt double %59, 1.000000e+00
  %67 = fcmp olt double %60, 1.000000e+00
  %icmpEq42 = icmp eq i1 %66, %67
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %or.cond3 = and i1 %63, %66
  %68 = select i1 %or.cond3, i32 180356882, i32 231741448
  %69 = xor i32 128980503, %68
  %70 = xor i32 128980503, %68
  %71 = xor i32 128980503, %68
  %icmpEq44 = icmp eq i32 %70, %71
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq34 = icmp eq i32 %69, %70
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  br i1 %or.cond3, label %72, label %85

72:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128980503, %2 ]
  %73 = phi i32 [ 128980503, %2 ]
  %cfg_DiffPhi = phi i32 [ %69, %2 ]
  %74 = phi i32 [ %70, %2 ]
  %icmpEq48 = icmp eq i32 %cfg_DiffPhi, %74
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %icmpEq46 = icmp eq i32 %cfg_DestPhi, %73
  %75 = icmp eq i32 %73, %73
  %icmpEq50 = icmp eq i1 %icmpEq46, %75
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %76 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %76, 180356882
  %77 = icmp eq i32 %76, 180356882
  %icmpEq52 = icmp eq i1 %cfg_icmpEq, %77
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %76, i32 35)
  %.sroa.5.0 = select i1 %or.cond, i64 4294967296, i64 0
  %78 = fmul double %59, 0x41D0000000000000
  %79 = fmul double %60, 0x41D0000000000000
  %80 = tail call double @llvm.floor.f64(double %78)
  %81 = fptosi double %80 to i32
  %82 = fptosi double %80 to i32
  %icmpEq54 = icmp eq i32 %81, %82
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %83 = zext i32 %81 to i64
  %84 = shl nuw i64 %83, 32
  br label %85

85:                                               ; preds = %72, %2
  %.sroa.225.0 = phi i64 [ %84, %72 ], [ 0, %2 ]
  %86 = phi i64 [ %84, %72 ], [ 0, %2 ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %72 ], [ 0, %2 ]
  %87 = phi i64 [ %.sroa.5.0, %72 ], [ 0, %2 ]
  %cfg_DestPhi28 = phi i32 [ 128980503, %2 ], [ 180356882, %72 ]
  %88 = phi i32 [ 128980503, %2 ], [ 180356882, %72 ]
  %cfg_DiffPhi29 = phi i32 [ %69, %2 ], [ 118497050, %72 ]
  %89 = phi i32 [ %70, %2 ], [ 118497050, %72 ]
  %icmpEq62 = icmp eq i32 %cfg_DiffPhi29, %89
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq60 = icmp eq i32 %cfg_DestPhi28, %88
  %90 = icmp eq i32 %88, %88
  %icmpEq64 = icmp eq i1 %icmpEq60, %90
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i64 %.sroa.5.1, %87
  %zext59 = zext i1 %icmpEq58 to i32
  %91 = zext i1 %icmpEq58 to i32
  %icmpEq66 = icmp eq i32 %zext59, %91
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq56 = icmp eq i64 %.sroa.225.0, %86
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %92 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %93 = xor i32 %88, %89
  %icmpEq68 = icmp eq i32 %92, %93
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %cfg_icmpEq30 = icmp eq i32 %92, 231741448
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %92, i32 35)
  %94 = fmul double %42, 0x41D0000000000000
  %95 = fmul double %43, 0x41D0000000000000
  %96 = tail call double @llvm.floor.f64(double %94)
  %97 = fptosi double %96 to i32
  %98 = fptosi double %96 to i32
  %icmpEq70 = icmp eq i32 %97, %98
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %99 = zext i32 %97 to i64
  %.sroa.024.0 = select i1 %or.cond, i64 %99, i64 0
  %100 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %101 = load double, ptr %100, align 8
  %102 = load double, ptr %100, align 8
  %103 = fsub double %30, %101
  %104 = fsub double %31, %102
  %105 = fdiv double %103, %6
  %106 = fdiv double %104, %7
  %107 = fcmp oge double %105, 0.000000e+00
  %108 = fcmp oge double %106, 0.000000e+00
  %icmpEq72 = icmp eq i1 %107, %108
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %109 = fcmp olt double %105, 1.000000e+00
  %or.cond5 = and i1 %107, %109
  %110 = fmul double %105, 0x41D0000000000000
  %111 = tail call double @llvm.floor.f64(double %110)
  %112 = fptosi double %111 to i32
  %113 = fptosi double %111 to i32
  %icmpEq74 = icmp eq i32 %112, %113
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %114 = zext i32 %112 to i64
  %.sroa.024.0.insert.insert = or i64 %.sroa.225.0, %.sroa.024.0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.024.0.insert.insert, 0
  %115 = or i64 %.sroa.5.1, %114
  %116 = or i64 %87, %114
  %icmpEq76 = icmp eq i64 %115, %116
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %.sroa.3.8.insert.insert = select i1 %or.cond5, i64 %115, i64 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @old_subindex(i64 %0, i64 %1, i32 noundef %2) local_unnamed_addr #6 {
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %4 = trunc i64 %0 to i32
  %icmpEq = icmp eq i32 %.sroa.0.0.extract.trunc, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i32
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32
  %5 = and i32 %.sroa.0.0.extract.trunc, %2
  %6 = and i32 %4, %2
  %icmpEq10 = icmp eq i32 %5, %6
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  %.not = icmp eq i32 %5, 0
  %7 = select i1 %.not, i32 0, i32 4
  %8 = and i32 %.sroa.2.0.extract.trunc, %2
  %.not.1 = icmp eq i32 %8, 0
  %9 = icmp eq i32 %8, 0
  %icmpEq12 = icmp eq i1 %.not.1, %9
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %10 = select i1 %.not.1, i32 0, i32 2
  %.1.1 = or i32 %10, %7
  %11 = and i32 %.sroa.3.8.extract.trunc, %2
  %.not.2 = icmp ne i32 %11, 0
  %12 = icmp ne i32 %11, 0
  %icmpEq14 = icmp eq i1 %.not.2, %12
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %13 = zext i1 %.not.2 to i32
  %.1.2 = or i32 %.1.1, %13
  ret i32 %.1.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stepsystem(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  %7 = icmp eq ptr %6, null
  %icmpEq = icmp eq i1 %.not, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = select i1 %.not, i32 231737359, i32 180355853
  %9 = xor i32 128975893, %8
  br i1 %.not, label %17, label %10

10:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975893, %2 ]
  %11 = phi i32 [ 128975893, %2 ]
  %cfg_DiffPhi = phi i32 [ %9, %2 ]
  %12 = phi i32 [ %9, %2 ]
  %icmpEq18 = icmp eq i32 %cfg_DiffPhi, %12
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %cfg_DestPhi, %11
  %13 = icmp eq i32 %11, %11
  %icmpEq20 = icmp eq i1 %icmpEq16, %13
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %14 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %14, 180355853
  %15 = icmp eq i32 %14, 180355853
  %icmpEq22 = icmp eq i1 %cfg_icmpEq, %15
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %14, i32 35)
  %16 = tail call i32 @freetree1(ptr noundef nonnull %5)
  store ptr null, ptr %3, align 8
  br label %17

17:                                               ; preds = %10, %2
  %cfg_DestPhi12 = phi i32 [ 180355853, %10 ], [ 128975893, %2 ]
  %18 = phi i32 [ 180355853, %10 ], [ 128975893, %2 ]
  %cfg_DiffPhi13 = phi i32 [ 118491906, %10 ], [ %9, %2 ]
  %19 = phi i32 [ 118491906, %10 ], [ %9, %2 ]
  %icmpEq26 = icmp eq i32 %cfg_DiffPhi13, %19
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %icmpEq24 = icmp eq i32 %cfg_DestPhi12, %18
  %20 = icmp eq i32 %18, %18
  %icmpEq28 = icmp eq i1 %icmpEq24, %20
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %21 = xor i32 %cfg_DestPhi12, %cfg_DiffPhi13
  %cfg_icmpEq14 = icmp eq i32 %21, 231737359
  %22 = icmp eq i32 %21, 231737359
  %icmpEq30 = icmp eq i1 %cfg_icmpEq14, %22
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %cfg_zext15 = zext i1 %cfg_icmpEq14 to i32
  call void @assert_cfg_ft(i32 %cfg_zext15, i32 %21, i32 35)
  %23 = load i32, ptr @nbody, align 4
  %24 = tail call ptr @maketree(ptr poison, i32 noundef %23, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0)
  store ptr %24, ptr %3, align 8
  %25 = tail call i32 @computegrav(ptr noundef nonnull %0, i32 noundef %1)
  %26 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %26, align 8
  %29 = load ptr, ptr %27, align 8
  %30 = tail call i32 @vp(ptr noundef %28, i32 noundef %1)
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @freetree1(ptr noundef %0) local_unnamed_addr #7 {
  %2 = tail call i32 @freetree(ptr noundef %0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @maketree(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 2
  store ptr null, ptr %6, align 8
  store i32 %1, ptr @nbody, align 4
  %8 = load i32, ptr @__NumNodes, align 4
  %9 = load i32, ptr @__NumNodes, align 4
  %icmpEq = icmp eq i32 %8, %9
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %10 = icmp sgt i32 %8, 0
  %11 = select i1 %10, i32 180355605, i32 488637460
  %12 = xor i32 128976397, %11
  br i1 %10, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %5
  %cfg_DestPhi = phi i32 [ 128976397, %5 ]
  %13 = phi i32 [ 128976397, %5 ]
  %cfg_DiffPhi = phi i32 [ %12, %5 ]
  %14 = phi i32 [ %12, %5 ]
  %icmpEq63 = icmp eq i32 %cfg_DiffPhi, %14
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq61 = icmp eq i32 %cfg_DestPhi, %13
  %15 = icmp eq i32 %13, %13
  %icmpEq65 = icmp eq i1 %icmpEq61, %15
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180355605
  %17 = icmp eq i32 %16, 180355605
  %icmpEq67 = icmp eq i1 %cfg_icmpEq, %17
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %18 = zext i32 %8 to i64
  br label %.lr.ph32

.loopexit:                                        ; preds = %74, %.lr.ph32
  %19 = phi ptr [ %30, %.lr.ph32 ], [ %75, %74 ]
  %20 = phi ptr [ %30, %.lr.ph32 ], [ %75, %74 ]
  %cfg_DestPhi37 = phi i32 [ 437257480, %74 ], [ 283117828, %.lr.ph32 ]
  %21 = phi i32 [ 437257480, %74 ], [ 283117828, %.lr.ph32 ]
  %cfg_DiffPhi38 = phi i32 [ %86, %74 ], [ %45, %.lr.ph32 ]
  %22 = phi i32 [ %86, %74 ], [ %45, %.lr.ph32 ]
  %icmpEq71 = icmp eq i32 %cfg_DiffPhi38, %22
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %icmpEq69 = icmp eq i32 %cfg_DestPhi37, %21
  %23 = icmp eq i32 %21, %21
  %icmpEq73 = icmp eq i1 %icmpEq69, %23
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %24 = xor i32 %cfg_DestPhi37, %cfg_DiffPhi38
  %cfg_icmpEq39 = icmp eq i32 %24, 231736346
  %25 = icmp eq i32 %24, 231736346
  %icmpEq75 = icmp eq i1 %cfg_icmpEq39, %25
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %cfg_zext40 = zext i1 %cfg_icmpEq39 to i32
  call void @assert_cfg_ft(i32 %cfg_zext40, i32 %24, i32 35)
  %26 = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %27 = add nsw i64 %indvars.iv, -1
  %icmpEq77 = icmp eq i64 %indvars.iv.next, %27
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %28 = select i1 %26, i32 283117828, i32 488637460
  %29 = xor i32 231736346, %28
  br i1 %26, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.loopexit, %.lr.ph32.preheader
  %30 = phi ptr [ null, %.lr.ph32.preheader ], [ %19, %.loopexit ]
  %31 = phi ptr [ null, %.lr.ph32.preheader ], [ %20, %.loopexit ]
  %indvars.iv = phi i64 [ %18, %.lr.ph32.preheader ], [ %indvars.iv.next, %.loopexit ]
  %32 = phi i64 [ %18, %.lr.ph32.preheader ], [ %27, %.loopexit ]
  %.02631.in = phi i32 [ %8, %.lr.ph32.preheader ], [ %.02631, %.loopexit ]
  %33 = phi i32 [ %9, %.lr.ph32.preheader ], [ %40, %.loopexit ]
  %cfg_DestPhi41 = phi i32 [ 180355605, %.lr.ph32.preheader ], [ 231736346, %.loopexit ]
  %34 = phi i32 [ 180355605, %.lr.ph32.preheader ], [ 231736346, %.loopexit ]
  %cfg_DiffPhi42 = phi i32 [ 438307601, %.lr.ph32.preheader ], [ %29, %.loopexit ]
  %35 = phi i32 [ 438307601, %.lr.ph32.preheader ], [ %29, %.loopexit ]
  %icmpEq85 = icmp eq i32 %cfg_DiffPhi42, %35
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq83 = icmp eq i32 %cfg_DestPhi41, %34
  %36 = icmp eq i32 %34, %34
  %icmpEq87 = icmp eq i1 %icmpEq83, %36
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %icmpEq81 = icmp eq i32 %.02631.in, %33
  %zext82 = zext i1 %icmpEq81 to i32
  %37 = zext i1 %icmpEq81 to i32
  %icmpEq89 = icmp eq i32 %zext82, %37
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq79 = icmp eq i64 %indvars.iv, %32
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %38 = xor i32 %cfg_DestPhi41, %cfg_DiffPhi42
  %39 = xor i32 %34, %35
  %icmpEq91 = icmp eq i32 %38, %39
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %cfg_icmpEq43 = icmp eq i32 %38, 283117828
  %cfg_zext44 = zext i1 %cfg_icmpEq43 to i32
  call void @assert_cfg_ft(i32 %cfg_zext44, i32 %38, i32 35)
  %.02631 = add nsw i32 %.02631.in, -1
  %40 = add nsw i32 %33, -1
  %icmpEq93 = icmp eq i32 %.02631, %40
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %41 = zext i32 %.02631 to i64
  %42 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 4, i64 %41
  %.027 = load ptr, ptr %42, align 8
  %.not28 = icmp eq ptr %.027, null
  %43 = icmp eq ptr %.027, null
  %icmpEq95 = icmp eq i1 %.not28, %43
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %44 = select i1 %.not28, i32 231736346, i32 334497308
  %45 = xor i32 283117828, %44
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %74, %.lr.ph32
  %46 = phi ptr [ %75, %74 ], [ %30, %.lr.ph32 ]
  %47 = phi ptr [ %75, %74 ], [ %31, %.lr.ph32 ]
  %.029 = phi ptr [ %.0, %74 ], [ %.027, %.lr.ph32 ]
  %48 = phi ptr [ %.0, %74 ], [ %.027, %.lr.ph32 ]
  %cfg_DestPhi45 = phi i32 [ 283117828, %.lr.ph32 ], [ 437257480, %74 ]
  %49 = phi i32 [ 283117828, %.lr.ph32 ], [ 437257480, %74 ]
  %cfg_DiffPhi46 = phi i32 [ %45, %.lr.ph32 ], [ %86, %74 ]
  %50 = phi i32 [ %45, %.lr.ph32 ], [ %86, %74 ]
  %icmpEq99 = icmp eq i32 %cfg_DiffPhi46, %50
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq97 = icmp eq i32 %cfg_DestPhi45, %49
  %51 = icmp eq i32 %49, %49
  %icmpEq101 = icmp eq i1 %icmpEq97, %51
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %52 = xor i32 %cfg_DestPhi45, %cfg_DiffPhi46
  %cfg_icmpEq47 = icmp eq i32 %52, 334497308
  %53 = icmp eq i32 %52, 334497308
  %icmpEq103 = icmp eq i1 %cfg_icmpEq47, %53
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %cfg_zext48 = zext i1 %cfg_icmpEq47 to i32
  call void @assert_cfg_ft(i32 %cfg_zext48, i32 %52, i32 35)
  %54 = getelementptr inbounds %struct.bnode, ptr %.029, i64 0, i32 1
  %55 = load double, ptr %54, align 8
  %56 = load double, ptr %54, align 8
  %57 = fcmp une double %55, 0.000000e+00
  %58 = fcmp une double %56, 0.000000e+00
  %icmpEq105 = icmp eq i1 %57, %58
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %59 = select i1 %57, i32 385878046, i32 437257480
  %60 = xor i32 334497308, %59
  br i1 %57, label %61, label %74

61:                                               ; preds = %.lr.ph
  %cfg_DestPhi49 = phi i32 [ 334497308, %.lr.ph ]
  %62 = phi i32 [ 334497308, %.lr.ph ]
  %cfg_DiffPhi50 = phi i32 [ %60, %.lr.ph ]
  %63 = phi i32 [ %60, %.lr.ph ]
  %icmpEq109 = icmp eq i32 %cfg_DiffPhi50, %63
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i32 %cfg_DestPhi49, %62
  %64 = icmp eq i32 %62, %62
  %icmpEq111 = icmp eq i1 %icmpEq107, %64
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %65 = xor i32 %cfg_DestPhi49, %cfg_DiffPhi50
  %cfg_icmpEq51 = icmp eq i32 %65, 385878046
  %66 = icmp eq i32 %65, 385878046
  %icmpEq113 = icmp eq i1 %cfg_icmpEq51, %66
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %cfg_zext52 = zext i1 %cfg_icmpEq51 to i32
  call void @assert_cfg_ft(i32 %cfg_zext52, i32 %65, i32 35)
  %67 = tail call i32 @expandbox(ptr noundef nonnull %.029, ptr noundef %2, i32 poison, i32 poison)
  %68 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %.029, ptr noundef %2)
  %69 = extractvalue { i64, i64 } %68, 0
  %70 = extractvalue { i64, i64 } %68, 0
  %icmpEq115 = icmp eq i64 %69, %70
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %71 = extractvalue { i64, i64 } %68, 1
  %72 = load ptr, ptr %6, align 8
  %73 = tail call ptr @loadtree(ptr noundef nonnull %.029, i64 %69, i64 %71, ptr noundef %72, i32 noundef 536870912, ptr noundef %2)
  store ptr %73, ptr %6, align 8
  br label %74

74:                                               ; preds = %61, %.lr.ph
  %75 = phi ptr [ %46, %.lr.ph ], [ %73, %61 ]
  %76 = phi ptr [ %47, %.lr.ph ], [ %73, %61 ]
  %cfg_DestPhi53 = phi i32 [ 334497308, %.lr.ph ], [ 385878046, %61 ]
  %77 = phi i32 [ 334497308, %.lr.ph ], [ 385878046, %61 ]
  %cfg_DiffPhi54 = phi i32 [ %60, %.lr.ph ], [ 219155734, %61 ]
  %78 = phi i32 [ %60, %.lr.ph ], [ 219155734, %61 ]
  %icmpEq119 = icmp eq i32 %cfg_DiffPhi54, %78
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %icmpEq117 = icmp eq i32 %cfg_DestPhi53, %77
  %79 = icmp eq i32 %77, %77
  %icmpEq121 = icmp eq i1 %icmpEq117, %79
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %80 = xor i32 %cfg_DestPhi53, %cfg_DiffPhi54
  %cfg_icmpEq55 = icmp eq i32 %80, 437257480
  %81 = icmp eq i32 %80, 437257480
  %icmpEq123 = icmp eq i1 %cfg_icmpEq55, %81
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %cfg_zext56 = zext i1 %cfg_icmpEq55 to i32
  call void @assert_cfg_ft(i32 %cfg_zext56, i32 %80, i32 35)
  %82 = getelementptr inbounds %struct.bnode, ptr %.029, i64 0, i32 10
  %.0 = load ptr, ptr %82, align 8
  %83 = load ptr, ptr %82, align 8
  %.not = icmp eq ptr %.0, null
  %84 = icmp eq ptr %83, null
  %icmpEq125 = icmp eq i1 %.not, %84
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %85 = select i1 %.not, i32 231736346, i32 334497308
  %86 = xor i32 437257480, %85
  br i1 %.not, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %5
  %87 = phi ptr [ null, %5 ], [ %19, %.loopexit ]
  %88 = phi ptr [ null, %5 ], [ %20, %.loopexit ]
  %cfg_DestPhi57 = phi i32 [ 231736346, %.loopexit ], [ 128976397, %5 ]
  %89 = phi i32 [ 231736346, %.loopexit ], [ 128976397, %5 ]
  %cfg_DiffPhi58 = phi i32 [ %29, %.loopexit ], [ %12, %5 ]
  %90 = phi i32 [ %29, %.loopexit ], [ %12, %5 ]
  %icmpEq129 = icmp eq i32 %cfg_DiffPhi58, %90
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %icmpEq127 = icmp eq i32 %cfg_DestPhi57, %89
  %91 = icmp eq i32 %89, %89
  %icmpEq131 = icmp eq i1 %icmpEq127, %91
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %92 = xor i32 %cfg_DestPhi57, %cfg_DiffPhi58
  %cfg_icmpEq59 = icmp eq i32 %92, 488637460
  %93 = icmp eq i32 %92, 488637460
  %icmpEq133 = icmp eq i1 %cfg_icmpEq59, %93
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %cfg_zext60 = zext i1 %cfg_icmpEq59 to i32
  call void @assert_cfg_ft(i32 %cfg_zext60, i32 %92, i32 35)
  %94 = tail call double @hackcofm(ptr noundef %87)
  %95 = load ptr, ptr %6, align 8
  %96 = load ptr, ptr %7, align 8
  ret ptr %95
}

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @computegrav(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %4, align 8
  %7 = load i32, ptr @__NumNodes, align 4
  %8 = load i32, ptr @__NumNodes, align 4
  %icmpEq = icmp eq i32 %7, %8
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %9 = icmp sgt i32 %7, 0
  %10 = select i1 %9, i32 180355853, i32 283115797
  %11 = xor i32 128976145, %10
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2
  %cfg_DestPhi = phi i32 [ 128976145, %2 ]
  %12 = phi i32 [ 128976145, %2 ]
  %13 = phi i32 [ 128976145, %2 ]
  %cfg_DiffPhi = phi i32 [ %11, %2 ]
  %14 = phi i32 [ %11, %2 ]
  %15 = phi i32 [ %11, %2 ]
  %16 = phi i32 [ %11, %2 ]
  %icmpEq33 = icmp eq i32 %15, %16
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %icmpEq31 = icmp eq i32 %cfg_DiffPhi, %14
  %17 = icmp eq i32 %14, %14
  %icmpEq35 = icmp eq i1 %icmpEq31, %17
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %icmpEq29 = icmp eq i32 %12, %13
  %zext30 = zext i1 %icmpEq29 to i32
  %18 = zext i1 %icmpEq29 to i32
  %icmpEq37 = icmp eq i32 %zext30, %18
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq21 = icmp eq i32 %cfg_DiffPhi, %15
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %icmpEq19 = icmp eq i32 %cfg_DestPhi, %12
  %19 = icmp eq i32 %12, %13
  %icmpEq39 = icmp eq i1 %icmpEq19, %19
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %20 = icmp eq i32 %cfg_DestPhi, %12
  %icmpEq23 = icmp eq i1 %icmpEq19, %20
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %zext20 = zext i1 %icmpEq19 to i32
  %21 = zext i1 %19 to i32
  %icmpEq41 = icmp eq i32 %zext20, %21
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  call void @assert_ft(i32 %zext20, i32 35)
  %22 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %22, 180355853
  %23 = icmp eq i32 %22, 180355853
  %24 = icmp eq i32 %22, 180355853
  %icmpEq43 = icmp eq i1 %23, %24
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq25 = icmp eq i1 %cfg_icmpEq, %23
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %25 = zext i1 %23 to i32
  %icmpEq45 = icmp eq i32 %cfg_zext, %25
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %22, i32 35)
  %26 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %27 = zext i32 %7 to i64
  %28 = zext i32 %8 to i64
  %29 = zext i32 %8 to i64
  %icmpEq47 = icmp eq i64 %28, %29
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq27 = icmp eq i64 %27, %28
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  br label %30

30:                                               ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ %27, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %31 = phi i64 [ %28, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %.0.in10 = phi i32 [ %7, %.lr.ph ], [ %.0, %30 ]
  %32 = phi i32 [ %8, %.lr.ph ], [ %39, %30 ]
  %cfg_DestPhi11 = phi i32 [ 180355853, %.lr.ph ], [ 231738128, %30 ]
  %33 = phi i32 [ 180355853, %.lr.ph ], [ 231738128, %30 ]
  %cfg_DiffPhi12 = phi i32 [ 118491165, %.lr.ph ], [ %49, %30 ]
  %34 = phi i32 [ 118491165, %.lr.ph ], [ %49, %30 ]
  %icmpEq55 = icmp eq i32 %cfg_DiffPhi12, %34
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i32 %cfg_DestPhi11, %33
  %35 = icmp eq i32 %33, %33
  %icmpEq57 = icmp eq i1 %icmpEq53, %35
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %icmpEq51 = icmp eq i32 %.0.in10, %32
  %zext52 = zext i1 %icmpEq51 to i32
  %36 = zext i1 %icmpEq51 to i32
  %icmpEq59 = icmp eq i32 %zext52, %36
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i64 %indvars.iv, %31
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %37 = xor i32 %cfg_DestPhi11, %cfg_DiffPhi12
  %38 = xor i32 %33, %34
  %icmpEq61 = icmp eq i32 %37, %38
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %cfg_icmpEq13 = icmp eq i32 %37, 231738128
  %cfg_zext14 = zext i1 %cfg_icmpEq13 to i32
  call void @assert_cfg_ft(i32 %cfg_zext14, i32 %37, i32 35)
  %.0 = add nsw i32 %.0.in10, -1
  %39 = add nsw i32 %32, -1
  %icmpEq63 = icmp eq i32 %.0, %39
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %40 = load ptr, ptr %26, align 8
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4, i64 %41
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %42, align 8
  %45 = tail call i32 @grav(double noundef %5, ptr noundef %40, ptr noundef %43, i32 noundef %1, double noundef 6.250000e-03)
  %46 = icmp ugt i64 %indvars.iv, 1
  %47 = icmp ugt i64 %31, 1
  %icmpEq65 = icmp eq i1 %46, %47
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %48 = select i1 %46, i32 231738128, i32 283115797
  %49 = xor i32 231738128, %48
  br i1 %46, label %30, label %._crit_edge

._crit_edge:                                      ; preds = %30, %2
  %cfg_DestPhi15 = phi i32 [ 231738128, %30 ], [ 128976145, %2 ]
  %50 = phi i32 [ 231738128, %30 ], [ 128976145, %2 ]
  %cfg_DiffPhi16 = phi i32 [ %49, %30 ], [ %11, %2 ]
  %51 = phi i32 [ %49, %30 ], [ %11, %2 ]
  %icmpEq69 = icmp eq i32 %cfg_DiffPhi16, %51
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DestPhi15, %50
  %52 = icmp eq i32 %50, %50
  %icmpEq71 = icmp eq i1 %icmpEq67, %52
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %53 = xor i32 %cfg_DestPhi15, %cfg_DiffPhi16
  %cfg_icmpEq17 = icmp eq i32 %53, 283115797
  %54 = icmp eq i32 %53, 283115797
  %icmpEq73 = icmp eq i1 %cfg_icmpEq17, %54
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %cfg_zext18 = zext i1 %cfg_icmpEq17 to i32
  call void @assert_cfg_ft(i32 %cfg_zext18, i32 %53, i32 35)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %.not117153 = icmp eq ptr %0, null
  %3 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not117153, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %.not117153, i32 -1442840318, i32 180355605
  %5 = xor i32 128975389, %4
  br i1 %.not117153, label %._crit_edge, label %.preheader140.lr.ph

.preheader140.lr.ph:                              ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %6 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %5, %2 ]
  %7 = phi i32 [ %5, %2 ]
  %icmpEq388 = icmp eq i32 %cfg_DiffPhi, %7
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %icmpEq386 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq390 = icmp eq i1 %icmpEq386, %8
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180355605
  %10 = icmp eq i32 %9, 180355605
  %icmpEq392 = icmp eq i1 %cfg_icmpEq, %10
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %11 = icmp sgt i32 %1, 0
  br label %.preheader140

.preheader140:                                    ; preds = %667, %.preheader140.lr.ph
  %.0154 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %12 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %13 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %14 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %15 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %16 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %17 = phi ptr [ %0, %.preheader140.lr.ph ], [ %674, %667 ]
  %cfg_DestPhi178 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %18 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %19 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %20 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %21 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %22 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %23 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %24 = phi i32 [ 180355605, %.preheader140.lr.ph ], [ -1494219751, %667 ]
  %cfg_DiffPhi179 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %25 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %26 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %27 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %28 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %29 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %30 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %31 = phi i32 [ 118491674, %.preheader140.lr.ph ], [ %678, %667 ]
  %icmpEq444 = icmp eq i32 %30, %31
  %zext445 = zext i1 %icmpEq444 to i32
  call void @assert_ft(i32 %zext445, i32 35)
  %icmpEq442 = icmp eq i32 %28, %29
  %32 = icmp eq i32 %29, %29
  %icmpEq446 = icmp eq i1 %icmpEq442, %32
  %zext447 = zext i1 %icmpEq446 to i32
  call void @assert_ft(i32 %zext447, i32 35)
  %zext443 = zext i1 %icmpEq442 to i32
  call void @assert_ft(i32 %zext443, i32 35)
  %icmpEq440 = icmp eq i32 %26, %27
  %zext441 = zext i1 %icmpEq440 to i32
  %33 = zext i1 %icmpEq440 to i32
  %icmpEq448 = icmp eq i32 %zext441, %33
  %zext449 = zext i1 %icmpEq448 to i32
  call void @assert_ft(i32 %zext449, i32 35)
  call void @assert_ft(i32 %zext441, i32 35)
  %icmpEq438 = icmp eq i32 %cfg_DiffPhi179, %25
  %zext439 = zext i1 %icmpEq438 to i32
  call void @assert_ft(i32 %zext439, i32 35)
  %icmpEq436 = icmp eq i32 %23, %24
  %34 = icmp eq i32 %24, %24
  %icmpEq450 = icmp eq i1 %icmpEq436, %34
  %zext451 = zext i1 %icmpEq450 to i32
  call void @assert_ft(i32 %zext451, i32 35)
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %icmpEq434 = icmp eq i32 %21, %22
  %zext435 = zext i1 %icmpEq434 to i32
  %35 = zext i1 %icmpEq434 to i32
  %icmpEq452 = icmp eq i32 %zext435, %35
  %zext453 = zext i1 %icmpEq452 to i32
  call void @assert_ft(i32 %zext453, i32 35)
  call void @assert_ft(i32 %zext435, i32 35)
  %icmpEq432 = icmp eq i32 %19, %20
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  %icmpEq430 = icmp eq i32 %cfg_DestPhi178, %18
  %36 = icmp eq i32 %18, %18
  %icmpEq454 = icmp eq i1 %icmpEq430, %36
  %zext455 = zext i1 %icmpEq454 to i32
  call void @assert_ft(i32 %zext455, i32 35)
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  %icmpEq410 = icmp eq i32 %28, %30
  %zext411 = zext i1 %icmpEq410 to i32
  %37 = zext i1 %icmpEq410 to i32
  %icmpEq456 = icmp eq i32 %zext411, %37
  %zext457 = zext i1 %icmpEq456 to i32
  call void @assert_ft(i32 %zext457, i32 35)
  call void @assert_ft(i32 %zext411, i32 35)
  %icmpEq408 = icmp eq i32 %cfg_DiffPhi179, %26
  %38 = icmp eq i32 %25, %27
  %icmpEq412 = icmp eq i1 %icmpEq408, %38
  %39 = icmp eq i1 %38, %38
  %icmpEq458 = icmp eq i1 %icmpEq412, %39
  %zext459 = zext i1 %icmpEq458 to i32
  call void @assert_ft(i32 %zext459, i32 35)
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %icmpEq406 = icmp eq i32 %21, %23
  %40 = icmp eq i32 %22, %24
  %icmpEq460 = icmp eq i1 %icmpEq406, %40
  %zext461 = zext i1 %icmpEq460 to i32
  call void @assert_ft(i32 %zext461, i32 35)
  %zext407 = zext i1 %icmpEq406 to i32
  %41 = zext i1 %40 to i32
  %icmpEq414 = icmp eq i32 %zext407, %41
  %zext415 = zext i1 %icmpEq414 to i32
  %42 = zext i1 %icmpEq414 to i32
  %icmpEq462 = icmp eq i32 %zext415, %42
  %zext463 = zext i1 %icmpEq462 to i32
  call void @assert_ft(i32 %zext463, i32 35)
  call void @assert_ft(i32 %zext415, i32 35)
  call void @assert_ft(i32 %zext407, i32 35)
  %icmpEq404 = icmp eq i32 %cfg_DestPhi178, %19
  %zext405 = zext i1 %icmpEq404 to i32
  %43 = zext i1 %icmpEq404 to i32
  %icmpEq464 = icmp eq i32 %zext405, %43
  %zext465 = zext i1 %icmpEq464 to i32
  call void @assert_ft(i32 %zext465, i32 35)
  call void @assert_ft(i32 %zext405, i32 35)
  %icmpEq396 = icmp eq i32 %cfg_DiffPhi179, %28
  %44 = icmp eq i32 %25, %29
  %icmpEq416 = icmp eq i1 %icmpEq396, %44
  %45 = icmp eq i1 %44, %44
  %icmpEq466 = icmp eq i1 %icmpEq416, %45
  %zext467 = zext i1 %icmpEq466 to i32
  call void @assert_ft(i32 %zext467, i32 35)
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %icmpEq394 = icmp eq i32 %cfg_DestPhi178, %21
  %46 = icmp eq i32 %18, %22
  %icmpEq468 = icmp eq i1 %icmpEq394, %46
  %zext469 = zext i1 %icmpEq468 to i32
  call void @assert_ft(i32 %zext469, i32 35)
  %47 = icmp eq i32 %cfg_DestPhi178, %21
  %48 = icmp eq i32 %18, %22
  %icmpEq418 = icmp eq i1 %47, %48
  %zext419 = zext i1 %icmpEq418 to i32
  %49 = zext i1 %icmpEq418 to i32
  %icmpEq470 = icmp eq i32 %zext419, %49
  %zext471 = zext i1 %icmpEq470 to i32
  call void @assert_ft(i32 %zext471, i32 35)
  call void @assert_ft(i32 %zext419, i32 35)
  %icmpEq398 = icmp eq i1 %icmpEq394, %47
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %zext395 = zext i1 %icmpEq394 to i32
  %50 = zext i1 %46 to i32
  %icmpEq472 = icmp eq i32 %zext395, %50
  %zext473 = zext i1 %icmpEq472 to i32
  call void @assert_ft(i32 %zext473, i32 35)
  %51 = zext i1 %icmpEq394 to i32
  %icmpEq420 = icmp eq i32 %zext395, %51
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  call void @assert_ft(i32 %zext395, i32 35)
  %52 = xor i32 %cfg_DestPhi178, %cfg_DiffPhi179
  %53 = xor i32 %18, %25
  %icmpEq474 = icmp eq i32 %52, %53
  %zext475 = zext i1 %icmpEq474 to i32
  call void @assert_ft(i32 %zext475, i32 35)
  %cfg_icmpEq180 = icmp eq i32 %52, 231737359
  %54 = icmp eq i32 %53, 231737359
  %55 = icmp eq i32 %53, 231737359
  %icmpEq422 = icmp eq i1 %54, %55
  %56 = icmp eq i1 %55, %55
  %icmpEq476 = icmp eq i1 %icmpEq422, %56
  %zext477 = zext i1 %icmpEq476 to i32
  call void @assert_ft(i32 %zext477, i32 35)
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %icmpEq400 = icmp eq i1 %cfg_icmpEq180, %54
  %zext401 = zext i1 %icmpEq400 to i32
  %57 = zext i1 %icmpEq400 to i32
  %icmpEq478 = icmp eq i32 %zext401, %57
  %zext479 = zext i1 %icmpEq478 to i32
  call void @assert_ft(i32 %zext479, i32 35)
  call void @assert_ft(i32 %zext401, i32 35)
  %cfg_zext181 = zext i1 %cfg_icmpEq180 to i32
  %58 = zext i1 %54 to i32
  %icmpEq424 = icmp eq i32 %cfg_zext181, %58
  %59 = icmp eq i32 %58, %58
  %icmpEq480 = icmp eq i1 %icmpEq424, %59
  %zext481 = zext i1 %icmpEq480 to i32
  call void @assert_ft(i32 %zext481, i32 35)
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext181, i32 %52, i32 35)
  %scevgep = getelementptr i8, ptr %.0154, i64 96
  %60 = getelementptr i8, ptr %12, i64 96
  %.sroa.0172.0.copyload = load double, ptr %scevgep, align 8
  %61 = load double, ptr %60, align 8
  %62 = load double, ptr %scevgep, align 8
  %63 = load double, ptr %60, align 8
  %64 = load double, ptr %scevgep, align 8
  %65 = load double, ptr %60, align 8
  %.sroa.3174.0.scevgep.sroa_idx = getelementptr i8, ptr %.0154, i64 104
  %66 = getelementptr i8, ptr %12, i64 104
  %67 = getelementptr i8, ptr %.0154, i64 104
  %68 = getelementptr i8, ptr %12, i64 104
  %69 = getelementptr i8, ptr %.0154, i64 104
  %70 = getelementptr i8, ptr %12, i64 104
  %71 = getelementptr i8, ptr %.0154, i64 104
  %72 = getelementptr i8, ptr %12, i64 104
  %.sroa.3174.0.copyload = load double, ptr %.sroa.3174.0.scevgep.sroa_idx, align 8
  %73 = load double, ptr %66, align 8
  %74 = load double, ptr %.sroa.3174.0.scevgep.sroa_idx, align 8
  %75 = load double, ptr %66, align 8
  %76 = load double, ptr %.sroa.3174.0.scevgep.sroa_idx, align 8
  %77 = load double, ptr %66, align 8
  %78 = load double, ptr %.sroa.3174.0.scevgep.sroa_idx, align 8
  %79 = load double, ptr %66, align 8
  %.sroa.4176.0.scevgep.sroa_idx = getelementptr i8, ptr %.0154, i64 112
  %80 = getelementptr i8, ptr %12, i64 112
  %81 = getelementptr i8, ptr %.0154, i64 112
  %82 = getelementptr i8, ptr %12, i64 112
  %83 = getelementptr i8, ptr %.0154, i64 112
  %84 = getelementptr i8, ptr %12, i64 112
  %85 = getelementptr i8, ptr %.0154, i64 112
  %86 = getelementptr i8, ptr %12, i64 112
  %.sroa.4176.0.copyload = load double, ptr %.sroa.4176.0.scevgep.sroa_idx, align 8
  %87 = load double, ptr %80, align 8
  %88 = load double, ptr %.sroa.4176.0.scevgep.sroa_idx, align 8
  %89 = load double, ptr %80, align 8
  %90 = load double, ptr %.sroa.4176.0.scevgep.sroa_idx, align 8
  %91 = load double, ptr %80, align 8
  %92 = load double, ptr %.sroa.4176.0.scevgep.sroa_idx, align 8
  %93 = load double, ptr %80, align 8
  %94 = select i1 %11, i32 283122444, i32 334498053
  %95 = select i1 %11, i32 283122444, i32 334498053
  %icmpEq482 = icmp eq i32 %94, %95
  %zext483 = zext i1 %icmpEq482 to i32
  call void @assert_ft(i32 %zext483, i32 35)
  %96 = select i1 %11, i32 283122444, i32 334498053
  %icmpEq426 = icmp eq i32 %94, %96
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  %97 = select i1 %11, i32 283122444, i32 334498053
  %98 = select i1 %11, i32 283122444, i32 334498053
  %icmpEq484 = icmp eq i32 %97, %98
  %zext485 = zext i1 %icmpEq484 to i32
  call void @assert_ft(i32 %zext485, i32 35)
  %icmpEq402 = icmp eq i32 %94, %97
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  %99 = xor i32 231737359, %94
  %100 = xor i32 231737359, %95
  %icmpEq486 = icmp eq i32 %99, %100
  %zext487 = zext i1 %icmpEq486 to i32
  call void @assert_ft(i32 %zext487, i32 35)
  %101 = xor i32 231737359, %94
  %icmpEq428 = icmp eq i32 %99, %101
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  br i1 %11, label %.preheader139.preheader, label %.loopexit

.preheader139.preheader:                          ; preds = %.preheader140
  %cfg_DestPhi182 = phi i32 [ 231737359, %.preheader140 ]
  %102 = phi i32 [ 231737359, %.preheader140 ]
  %cfg_DiffPhi183 = phi i32 [ %99, %.preheader140 ]
  %103 = phi i32 [ %100, %.preheader140 ]
  %icmpEq490 = icmp eq i32 %cfg_DiffPhi183, %103
  %zext491 = zext i1 %icmpEq490 to i32
  call void @assert_ft(i32 %zext491, i32 35)
  %icmpEq488 = icmp eq i32 %cfg_DestPhi182, %102
  %104 = icmp eq i32 %102, %102
  %icmpEq492 = icmp eq i1 %icmpEq488, %104
  %zext493 = zext i1 %icmpEq492 to i32
  call void @assert_ft(i32 %zext493, i32 35)
  %zext489 = zext i1 %icmpEq488 to i32
  call void @assert_ft(i32 %zext489, i32 35)
  %105 = xor i32 %cfg_DestPhi182, %cfg_DiffPhi183
  %cfg_icmpEq184 = icmp eq i32 %105, 283122444
  %106 = icmp eq i32 %105, 283122444
  %icmpEq494 = icmp eq i1 %cfg_icmpEq184, %106
  %zext495 = zext i1 %icmpEq494 to i32
  call void @assert_ft(i32 %zext495, i32 35)
  %cfg_zext185 = zext i1 %cfg_icmpEq184 to i32
  call void @assert_cfg_ft(i32 %cfg_zext185, i32 %105, i32 35)
  %107 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 0
  %108 = load double, ptr %107, align 8
  %109 = load double, ptr %107, align 8
  %110 = fsub double %.sroa.0172.0.copyload, %108
  %111 = fsub double %61, %109
  %112 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 1
  %113 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 1
  %114 = load double, ptr %112, align 8
  %115 = load double, ptr %113, align 8
  %116 = fsub double %.sroa.3174.0.copyload, %114
  %117 = fsub double %73, %115
  %118 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 2
  %119 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 2
  %120 = load double, ptr %118, align 8
  %121 = load double, ptr %119, align 8
  %122 = fsub double %.sroa.4176.0.copyload, %120
  %123 = fsub double %87, %121
  %124 = fmul double %110, 6.250000e-03
  %125 = fmul double %111, 6.250000e-03
  %126 = fmul double %116, 6.250000e-03
  %127 = fmul double %117, 6.250000e-03
  %128 = fmul double %122, 6.250000e-03
  %129 = fmul double %123, 6.250000e-03
  %130 = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 0
  %131 = getelementptr %struct.bnode, ptr %12, i64 0, i32 5, i64 0
  %132 = load double, ptr %130, align 8
  %133 = load double, ptr %131, align 8
  %134 = fadd double %132, %124
  %135 = fadd double %133, %125
  %136 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %137 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 1
  %138 = load double, ptr %136, align 8
  %139 = load double, ptr %137, align 8
  %140 = fadd double %138, %126
  %141 = fadd double %139, %127
  %142 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %143 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 2
  %144 = load double, ptr %142, align 8
  %145 = load double, ptr %143, align 8
  %146 = fadd double %144, %128
  %147 = fadd double %145, %129
  store double %134, ptr %130, align 8
  %.sroa.7165.0.scevgep155.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %148 = getelementptr %struct.bnode, ptr %12, i64 0, i32 5, i64 1
  store double %140, ptr %.sroa.7165.0.scevgep155.sroa_idx, align 8
  %.sroa.13.0.scevgep155.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %149 = getelementptr %struct.bnode, ptr %12, i64 0, i32 5, i64 2
  store double %146, ptr %.sroa.13.0.scevgep155.sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader139.preheader, %.preheader140
  %cfg_DestPhi186 = phi i32 [ 283122444, %.preheader139.preheader ], [ 231737359, %.preheader140 ]
  %150 = phi i32 [ 283122444, %.preheader139.preheader ], [ 231737359, %.preheader140 ]
  %cfg_DiffPhi187 = phi i32 [ 51384841, %.preheader139.preheader ], [ %99, %.preheader140 ]
  %151 = phi i32 [ 51384841, %.preheader139.preheader ], [ %100, %.preheader140 ]
  %icmpEq498 = icmp eq i32 %cfg_DiffPhi187, %151
  %zext499 = zext i1 %icmpEq498 to i32
  call void @assert_ft(i32 %zext499, i32 35)
  %icmpEq496 = icmp eq i32 %cfg_DestPhi186, %150
  %152 = icmp eq i32 %150, %150
  %icmpEq500 = icmp eq i1 %icmpEq496, %152
  %zext501 = zext i1 %icmpEq500 to i32
  call void @assert_ft(i32 %zext501, i32 35)
  %zext497 = zext i1 %icmpEq496 to i32
  call void @assert_ft(i32 %zext497, i32 35)
  %153 = xor i32 %cfg_DestPhi186, %cfg_DiffPhi187
  %cfg_icmpEq188 = icmp eq i32 %153, 334498053
  %154 = icmp eq i32 %153, 334498053
  %icmpEq502 = icmp eq i1 %cfg_icmpEq188, %154
  %zext503 = zext i1 %icmpEq502 to i32
  call void @assert_ft(i32 %zext503, i32 35)
  %cfg_zext189 = zext i1 %cfg_icmpEq188 to i32
  call void @assert_cfg_ft(i32 %cfg_zext189, i32 %153, i32 35)
  %155 = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2
  %156 = load double, ptr %155, align 8
  %157 = load double, ptr %155, align 8
  %158 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 2, i64 1
  %159 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 2, i64 1
  %160 = load double, ptr %158, align 8
  %161 = load double, ptr %159, align 8
  %162 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 2, i64 2
  %163 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 2, i64 2
  %164 = load double, ptr %162, align 8
  %165 = load double, ptr %163, align 8
  %166 = tail call i32 (double, ...) @isnan(double noundef %156) #28
  %.not118 = icmp eq i32 %166, 0
  %167 = icmp eq i32 %166, 0
  %icmpEq504 = icmp eq i1 %.not118, %167
  %zext505 = zext i1 %icmpEq504 to i32
  call void @assert_ft(i32 %zext505, i32 35)
  %168 = select i1 %.not118, i32 437256987, i32 385876738
  %169 = xor i32 334498053, %168
  br i1 %.not118, label %178, label %170

170:                                              ; preds = %.loopexit
  %cfg_DestPhi190 = phi i32 [ 334498053, %.loopexit ]
  %171 = phi i32 [ 334498053, %.loopexit ]
  %cfg_DiffPhi191 = phi i32 [ %169, %.loopexit ]
  %172 = phi i32 [ %169, %.loopexit ]
  %icmpEq508 = icmp eq i32 %cfg_DiffPhi191, %172
  %zext509 = zext i1 %icmpEq508 to i32
  call void @assert_ft(i32 %zext509, i32 35)
  %icmpEq506 = icmp eq i32 %cfg_DestPhi190, %171
  %173 = icmp eq i32 %171, %171
  %icmpEq510 = icmp eq i1 %icmpEq506, %173
  %zext511 = zext i1 %icmpEq510 to i32
  call void @assert_ft(i32 %zext511, i32 35)
  %zext507 = zext i1 %icmpEq506 to i32
  call void @assert_ft(i32 %zext507, i32 35)
  %174 = xor i32 %cfg_DestPhi190, %cfg_DiffPhi191
  %cfg_icmpEq192 = icmp eq i32 %174, 385876738
  %175 = icmp eq i32 %174, 385876738
  %icmpEq512 = icmp eq i1 %cfg_icmpEq192, %175
  %zext513 = zext i1 %icmpEq512 to i32
  call void @assert_ft(i32 %zext513, i32 35)
  %cfg_zext193 = zext i1 %cfg_icmpEq192 to i32
  call void @assert_cfg_ft(i32 %cfg_zext193, i32 %174, i32 35)
  %176 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 99)
  %177 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

178:                                              ; preds = %.loopexit
  %cfg_DestPhi194 = phi i32 [ 334498053, %.loopexit ]
  %179 = phi i32 [ 334498053, %.loopexit ]
  %cfg_DiffPhi195 = phi i32 [ %169, %.loopexit ]
  %180 = phi i32 [ %169, %.loopexit ]
  %icmpEq516 = icmp eq i32 %cfg_DiffPhi195, %180
  %zext517 = zext i1 %icmpEq516 to i32
  call void @assert_ft(i32 %zext517, i32 35)
  %icmpEq514 = icmp eq i32 %cfg_DestPhi194, %179
  %181 = icmp eq i32 %179, %179
  %icmpEq518 = icmp eq i1 %icmpEq514, %181
  %zext519 = zext i1 %icmpEq518 to i32
  call void @assert_ft(i32 %zext519, i32 35)
  %zext515 = zext i1 %icmpEq514 to i32
  call void @assert_ft(i32 %zext515, i32 35)
  %182 = xor i32 %cfg_DestPhi194, %cfg_DiffPhi195
  %cfg_icmpEq196 = icmp eq i32 %182, 437256987
  %183 = icmp eq i32 %182, 437256987
  %icmpEq520 = icmp eq i1 %cfg_icmpEq196, %183
  %zext521 = zext i1 %icmpEq520 to i32
  call void @assert_ft(i32 %zext521, i32 35)
  %cfg_zext197 = zext i1 %cfg_icmpEq196 to i32
  call void @assert_cfg_ft(i32 %cfg_zext197, i32 %182, i32 35)
  %184 = tail call i32 (double, ...) @isnan(double noundef %160) #28
  %.not119 = icmp eq i32 %184, 0
  %185 = icmp eq i32 %184, 0
  %icmpEq522 = icmp eq i1 %.not119, %185
  %zext523 = zext i1 %icmpEq522 to i32
  call void @assert_ft(i32 %zext523, i32 35)
  %186 = select i1 %.not119, i32 540017411, i32 488637199
  %187 = xor i32 437256987, %186
  br i1 %.not119, label %196, label %188

188:                                              ; preds = %178
  %cfg_DestPhi198 = phi i32 [ 437256987, %178 ]
  %189 = phi i32 [ 437256987, %178 ]
  %cfg_DiffPhi199 = phi i32 [ %187, %178 ]
  %190 = phi i32 [ %187, %178 ]
  %icmpEq526 = icmp eq i32 %cfg_DiffPhi199, %190
  %zext527 = zext i1 %icmpEq526 to i32
  call void @assert_ft(i32 %zext527, i32 35)
  %icmpEq524 = icmp eq i32 %cfg_DestPhi198, %189
  %191 = icmp eq i32 %189, %189
  %icmpEq528 = icmp eq i1 %icmpEq524, %191
  %zext529 = zext i1 %icmpEq528 to i32
  call void @assert_ft(i32 %zext529, i32 35)
  %zext525 = zext i1 %icmpEq524 to i32
  call void @assert_ft(i32 %zext525, i32 35)
  %192 = xor i32 %cfg_DestPhi198, %cfg_DiffPhi199
  %cfg_icmpEq200 = icmp eq i32 %192, 488637199
  %193 = icmp eq i32 %192, 488637199
  %icmpEq530 = icmp eq i1 %cfg_icmpEq200, %193
  %zext531 = zext i1 %icmpEq530 to i32
  call void @assert_ft(i32 %zext531, i32 35)
  %cfg_zext201 = zext i1 %cfg_icmpEq200 to i32
  call void @assert_cfg_ft(i32 %cfg_zext201, i32 %192, i32 35)
  %194 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 98)
  %195 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

196:                                              ; preds = %178
  %cfg_DestPhi202 = phi i32 [ 437256987, %178 ]
  %197 = phi i32 [ 437256987, %178 ]
  %cfg_DiffPhi203 = phi i32 [ %187, %178 ]
  %198 = phi i32 [ %187, %178 ]
  %icmpEq534 = icmp eq i32 %cfg_DiffPhi203, %198
  %zext535 = zext i1 %icmpEq534 to i32
  call void @assert_ft(i32 %zext535, i32 35)
  %icmpEq532 = icmp eq i32 %cfg_DestPhi202, %197
  %199 = icmp eq i32 %197, %197
  %icmpEq536 = icmp eq i1 %icmpEq532, %199
  %zext537 = zext i1 %icmpEq536 to i32
  call void @assert_ft(i32 %zext537, i32 35)
  %zext533 = zext i1 %icmpEq532 to i32
  call void @assert_ft(i32 %zext533, i32 35)
  %200 = xor i32 %cfg_DestPhi202, %cfg_DiffPhi203
  %cfg_icmpEq204 = icmp eq i32 %200, 540017411
  %201 = icmp eq i32 %200, 540017411
  %icmpEq538 = icmp eq i1 %cfg_icmpEq204, %201
  %zext539 = zext i1 %icmpEq538 to i32
  call void @assert_ft(i32 %zext539, i32 35)
  %cfg_zext205 = zext i1 %cfg_icmpEq204 to i32
  call void @assert_cfg_ft(i32 %cfg_zext205, i32 %200, i32 35)
  %202 = tail call i32 (double, ...) @isnan(double noundef %164) #28
  %.not120 = icmp eq i32 %202, 0
  %203 = icmp eq i32 %202, 0
  %icmpEq540 = icmp eq i1 %.not120, %203
  %zext541 = zext i1 %icmpEq540 to i32
  call void @assert_ft(i32 %zext541, i32 35)
  %204 = select i1 %.not120, i32 642777872, i32 591397660
  %205 = xor i32 540017411, %204
  br i1 %.not120, label %214, label %206

206:                                              ; preds = %196
  %cfg_DestPhi206 = phi i32 [ 540017411, %196 ]
  %207 = phi i32 [ 540017411, %196 ]
  %cfg_DiffPhi207 = phi i32 [ %205, %196 ]
  %208 = phi i32 [ %205, %196 ]
  %icmpEq544 = icmp eq i32 %cfg_DiffPhi207, %208
  %zext545 = zext i1 %icmpEq544 to i32
  call void @assert_ft(i32 %zext545, i32 35)
  %icmpEq542 = icmp eq i32 %cfg_DestPhi206, %207
  %209 = icmp eq i32 %207, %207
  %icmpEq546 = icmp eq i1 %icmpEq542, %209
  %zext547 = zext i1 %icmpEq546 to i32
  call void @assert_ft(i32 %zext547, i32 35)
  %zext543 = zext i1 %icmpEq542 to i32
  call void @assert_ft(i32 %zext543, i32 35)
  %210 = xor i32 %cfg_DestPhi206, %cfg_DiffPhi207
  %cfg_icmpEq208 = icmp eq i32 %210, 591397660
  %211 = icmp eq i32 %210, 591397660
  %icmpEq548 = icmp eq i1 %cfg_icmpEq208, %211
  %zext549 = zext i1 %icmpEq548 to i32
  call void @assert_ft(i32 %zext549, i32 35)
  %cfg_zext209 = zext i1 %cfg_icmpEq208 to i32
  call void @assert_cfg_ft(i32 %cfg_zext209, i32 %210, i32 35)
  %212 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 97)
  %213 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

214:                                              ; preds = %196
  %cfg_DestPhi210 = phi i32 [ 540017411, %196 ]
  %215 = phi i32 [ 540017411, %196 ]
  %cfg_DiffPhi211 = phi i32 [ %205, %196 ]
  %216 = phi i32 [ %205, %196 ]
  %icmpEq552 = icmp eq i32 %cfg_DiffPhi211, %216
  %zext553 = zext i1 %icmpEq552 to i32
  call void @assert_ft(i32 %zext553, i32 35)
  %icmpEq550 = icmp eq i32 %cfg_DestPhi210, %215
  %217 = icmp eq i32 %215, %215
  %icmpEq554 = icmp eq i1 %icmpEq550, %217
  %zext555 = zext i1 %icmpEq554 to i32
  call void @assert_ft(i32 %zext555, i32 35)
  %zext551 = zext i1 %icmpEq550 to i32
  call void @assert_ft(i32 %zext551, i32 35)
  %218 = xor i32 %cfg_DestPhi210, %cfg_DiffPhi211
  %cfg_icmpEq212 = icmp eq i32 %218, 642777872
  %219 = icmp eq i32 %218, 642777872
  %icmpEq556 = icmp eq i1 %cfg_icmpEq212, %219
  %zext557 = zext i1 %icmpEq556 to i32
  call void @assert_ft(i32 %zext557, i32 35)
  %cfg_zext213 = zext i1 %cfg_icmpEq212 to i32
  call void @assert_cfg_ft(i32 %cfg_zext213, i32 %218, i32 35)
  %220 = tail call double @llvm.fabs.f64(double %156)
  %221 = fcmp olt double %220, 1.000000e+01
  %222 = fcmp olt double %220, 1.000000e+01
  %icmpEq558 = icmp eq i1 %221, %222
  %zext559 = zext i1 %icmpEq558 to i32
  call void @assert_ft(i32 %zext559, i32 35)
  %223 = select i1 %221, i32 745538333, i32 694158084
  %224 = xor i32 642777872, %223
  br i1 %221, label %233, label %225

225:                                              ; preds = %214
  %cfg_DestPhi214 = phi i32 [ 642777872, %214 ]
  %226 = phi i32 [ 642777872, %214 ]
  %cfg_DiffPhi215 = phi i32 [ %224, %214 ]
  %227 = phi i32 [ %224, %214 ]
  %icmpEq562 = icmp eq i32 %cfg_DiffPhi215, %227
  %zext563 = zext i1 %icmpEq562 to i32
  call void @assert_ft(i32 %zext563, i32 35)
  %icmpEq560 = icmp eq i32 %cfg_DestPhi214, %226
  %228 = icmp eq i32 %226, %226
  %icmpEq564 = icmp eq i1 %icmpEq560, %228
  %zext565 = zext i1 %icmpEq564 to i32
  call void @assert_ft(i32 %zext565, i32 35)
  %zext561 = zext i1 %icmpEq560 to i32
  call void @assert_ft(i32 %zext561, i32 35)
  %229 = xor i32 %cfg_DestPhi214, %cfg_DiffPhi215
  %cfg_icmpEq216 = icmp eq i32 %229, 694158084
  %230 = icmp eq i32 %229, 694158084
  %icmpEq566 = icmp eq i1 %cfg_icmpEq216, %230
  %zext567 = zext i1 %icmpEq566 to i32
  call void @assert_ft(i32 %zext567, i32 35)
  %cfg_zext217 = zext i1 %cfg_icmpEq216 to i32
  call void @assert_cfg_ft(i32 %cfg_zext217, i32 %229, i32 35)
  %231 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 96)
  %232 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

233:                                              ; preds = %214
  %cfg_DestPhi218 = phi i32 [ 642777872, %214 ]
  %234 = phi i32 [ 642777872, %214 ]
  %cfg_DiffPhi219 = phi i32 [ %224, %214 ]
  %235 = phi i32 [ %224, %214 ]
  %icmpEq570 = icmp eq i32 %cfg_DiffPhi219, %235
  %zext571 = zext i1 %icmpEq570 to i32
  call void @assert_ft(i32 %zext571, i32 35)
  %icmpEq568 = icmp eq i32 %cfg_DestPhi218, %234
  %236 = icmp eq i32 %234, %234
  %icmpEq572 = icmp eq i1 %icmpEq568, %236
  %zext573 = zext i1 %icmpEq572 to i32
  call void @assert_ft(i32 %zext573, i32 35)
  %zext569 = zext i1 %icmpEq568 to i32
  call void @assert_ft(i32 %zext569, i32 35)
  %237 = xor i32 %cfg_DestPhi218, %cfg_DiffPhi219
  %cfg_icmpEq220 = icmp eq i32 %237, 745538333
  %238 = icmp eq i32 %237, 745538333
  %icmpEq574 = icmp eq i1 %cfg_icmpEq220, %238
  %zext575 = zext i1 %icmpEq574 to i32
  call void @assert_ft(i32 %zext575, i32 35)
  %cfg_zext221 = zext i1 %cfg_icmpEq220 to i32
  call void @assert_cfg_ft(i32 %cfg_zext221, i32 %237, i32 35)
  %239 = tail call double @llvm.fabs.f64(double %160)
  %240 = fcmp olt double %239, 1.000000e+01
  %241 = fcmp olt double %239, 1.000000e+01
  %icmpEq576 = icmp eq i1 %240, %241
  %zext577 = zext i1 %icmpEq576 to i32
  call void @assert_ft(i32 %zext577, i32 35)
  %242 = select i1 %240, i32 848298757, i32 796918545
  %243 = xor i32 745538333, %242
  br i1 %240, label %252, label %244

244:                                              ; preds = %233
  %cfg_DestPhi222 = phi i32 [ 745538333, %233 ]
  %245 = phi i32 [ 745538333, %233 ]
  %cfg_DiffPhi223 = phi i32 [ %243, %233 ]
  %246 = phi i32 [ %243, %233 ]
  %icmpEq580 = icmp eq i32 %cfg_DiffPhi223, %246
  %zext581 = zext i1 %icmpEq580 to i32
  call void @assert_ft(i32 %zext581, i32 35)
  %icmpEq578 = icmp eq i32 %cfg_DestPhi222, %245
  %247 = icmp eq i32 %245, %245
  %icmpEq582 = icmp eq i1 %icmpEq578, %247
  %zext583 = zext i1 %icmpEq582 to i32
  call void @assert_ft(i32 %zext583, i32 35)
  %zext579 = zext i1 %icmpEq578 to i32
  call void @assert_ft(i32 %zext579, i32 35)
  %248 = xor i32 %cfg_DestPhi222, %cfg_DiffPhi223
  %cfg_icmpEq224 = icmp eq i32 %248, 796918545
  %249 = icmp eq i32 %248, 796918545
  %icmpEq584 = icmp eq i1 %cfg_icmpEq224, %249
  %zext585 = zext i1 %icmpEq584 to i32
  call void @assert_ft(i32 %zext585, i32 35)
  %cfg_zext225 = zext i1 %cfg_icmpEq224 to i32
  call void @assert_cfg_ft(i32 %cfg_zext225, i32 %248, i32 35)
  %250 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 95)
  %251 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

252:                                              ; preds = %233
  %cfg_DestPhi226 = phi i32 [ 745538333, %233 ]
  %253 = phi i32 [ 745538333, %233 ]
  %cfg_DiffPhi227 = phi i32 [ %243, %233 ]
  %254 = phi i32 [ %243, %233 ]
  %icmpEq588 = icmp eq i32 %cfg_DiffPhi227, %254
  %zext589 = zext i1 %icmpEq588 to i32
  call void @assert_ft(i32 %zext589, i32 35)
  %icmpEq586 = icmp eq i32 %cfg_DestPhi226, %253
  %255 = icmp eq i32 %253, %253
  %icmpEq590 = icmp eq i1 %icmpEq586, %255
  %zext591 = zext i1 %icmpEq590 to i32
  call void @assert_ft(i32 %zext591, i32 35)
  %zext587 = zext i1 %icmpEq586 to i32
  call void @assert_ft(i32 %zext587, i32 35)
  %256 = xor i32 %cfg_DestPhi226, %cfg_DiffPhi227
  %cfg_icmpEq228 = icmp eq i32 %256, 848298757
  %257 = icmp eq i32 %256, 848298757
  %icmpEq592 = icmp eq i1 %cfg_icmpEq228, %257
  %zext593 = zext i1 %icmpEq592 to i32
  call void @assert_ft(i32 %zext593, i32 35)
  %cfg_zext229 = zext i1 %cfg_icmpEq228 to i32
  call void @assert_cfg_ft(i32 %cfg_zext229, i32 %256, i32 35)
  %258 = tail call double @llvm.fabs.f64(double %164)
  %259 = fcmp olt double %258, 1.000000e+01
  %260 = fcmp olt double %258, 1.000000e+01
  %icmpEq594 = icmp eq i1 %259, %260
  %zext595 = zext i1 %icmpEq594 to i32
  call void @assert_ft(i32 %zext595, i32 35)
  %261 = select i1 %259, i32 899681060, i32 951059218
  %262 = xor i32 848298757, %261
  br i1 %259, label %.preheader135.preheader, label %278

.preheader135.preheader:                          ; preds = %252
  %cfg_DestPhi230 = phi i32 [ 848298757, %252 ]
  %263 = phi i32 [ 848298757, %252 ]
  %cfg_DiffPhi231 = phi i32 [ %262, %252 ]
  %264 = phi i32 [ %262, %252 ]
  %icmpEq598 = icmp eq i32 %cfg_DiffPhi231, %264
  %zext599 = zext i1 %icmpEq598 to i32
  call void @assert_ft(i32 %zext599, i32 35)
  %icmpEq596 = icmp eq i32 %cfg_DestPhi230, %263
  %265 = icmp eq i32 %263, %263
  %icmpEq600 = icmp eq i1 %icmpEq596, %265
  %zext601 = zext i1 %icmpEq600 to i32
  call void @assert_ft(i32 %zext601, i32 35)
  %zext597 = zext i1 %icmpEq596 to i32
  call void @assert_ft(i32 %zext597, i32 35)
  %266 = xor i32 %cfg_DestPhi230, %cfg_DiffPhi231
  %cfg_icmpEq232 = icmp eq i32 %266, 899681060
  %267 = icmp eq i32 %266, 899681060
  %icmpEq602 = icmp eq i1 %cfg_icmpEq232, %267
  %zext603 = zext i1 %icmpEq602 to i32
  call void @assert_ft(i32 %zext603, i32 35)
  %cfg_zext233 = zext i1 %cfg_icmpEq232 to i32
  call void @assert_cfg_ft(i32 %cfg_zext233, i32 %266, i32 35)
  %scevgep156 = getelementptr i8, ptr %.0154, i64 72
  store double %.sroa.0172.0.copyload, ptr %scevgep156, align 8
  %.sroa.3174.0.scevgep156.sroa_idx = getelementptr i8, ptr %.0154, i64 80
  %268 = getelementptr i8, ptr %12, i64 80
  store double %.sroa.3174.0.copyload, ptr %.sroa.3174.0.scevgep156.sroa_idx, align 8
  %.sroa.4176.0.scevgep156.sroa_idx = getelementptr i8, ptr %.0154, i64 88
  %269 = getelementptr i8, ptr %12, i64 88
  store double %.sroa.4176.0.copyload, ptr %.sroa.4176.0.scevgep156.sroa_idx, align 8
  %270 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 1
  %271 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 1
  %272 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 6, i64 2
  %273 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 2
  %274 = tail call i32 (double, ...) @isnan(double noundef %.sroa.0172.0.copyload) #28
  %.not121 = icmp eq i32 %274, 0
  %275 = icmp eq i32 %274, 0
  %icmpEq604 = icmp eq i1 %.not121, %275
  %zext605 = zext i1 %icmpEq604 to i32
  call void @assert_ft(i32 %zext605, i32 35)
  %276 = select i1 %.not121, i32 1053819679, i32 1002439430
  %277 = xor i32 899681060, %276
  br i1 %.not121, label %294, label %286

278:                                              ; preds = %252
  %cfg_DestPhi234 = phi i32 [ 848298757, %252 ]
  %279 = phi i32 [ 848298757, %252 ]
  %cfg_DiffPhi235 = phi i32 [ %262, %252 ]
  %280 = phi i32 [ %262, %252 ]
  %icmpEq608 = icmp eq i32 %cfg_DiffPhi235, %280
  %zext609 = zext i1 %icmpEq608 to i32
  call void @assert_ft(i32 %zext609, i32 35)
  %icmpEq606 = icmp eq i32 %cfg_DestPhi234, %279
  %281 = icmp eq i32 %279, %279
  %icmpEq610 = icmp eq i1 %icmpEq606, %281
  %zext611 = zext i1 %icmpEq610 to i32
  call void @assert_ft(i32 %zext611, i32 35)
  %zext607 = zext i1 %icmpEq606 to i32
  call void @assert_ft(i32 %zext607, i32 35)
  %282 = xor i32 %cfg_DestPhi234, %cfg_DiffPhi235
  %cfg_icmpEq236 = icmp eq i32 %282, 951059218
  %283 = icmp eq i32 %282, 951059218
  %icmpEq612 = icmp eq i1 %cfg_icmpEq236, %283
  %zext613 = zext i1 %icmpEq612 to i32
  call void @assert_ft(i32 %zext613, i32 35)
  %cfg_zext237 = zext i1 %cfg_icmpEq236 to i32
  call void @assert_cfg_ft(i32 %cfg_zext237, i32 %282, i32 35)
  %284 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 94)
  %285 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

286:                                              ; preds = %.preheader135.preheader
  %cfg_DestPhi238 = phi i32 [ 899681060, %.preheader135.preheader ]
  %287 = phi i32 [ 899681060, %.preheader135.preheader ]
  %cfg_DiffPhi239 = phi i32 [ %277, %.preheader135.preheader ]
  %288 = phi i32 [ %277, %.preheader135.preheader ]
  %icmpEq616 = icmp eq i32 %cfg_DiffPhi239, %288
  %zext617 = zext i1 %icmpEq616 to i32
  call void @assert_ft(i32 %zext617, i32 35)
  %icmpEq614 = icmp eq i32 %cfg_DestPhi238, %287
  %289 = icmp eq i32 %287, %287
  %icmpEq618 = icmp eq i1 %icmpEq614, %289
  %zext619 = zext i1 %icmpEq618 to i32
  call void @assert_ft(i32 %zext619, i32 35)
  %zext615 = zext i1 %icmpEq614 to i32
  call void @assert_ft(i32 %zext615, i32 35)
  %290 = xor i32 %cfg_DestPhi238, %cfg_DiffPhi239
  %cfg_icmpEq240 = icmp eq i32 %290, 1002439430
  %291 = icmp eq i32 %290, 1002439430
  %icmpEq620 = icmp eq i1 %cfg_icmpEq240, %291
  %zext621 = zext i1 %icmpEq620 to i32
  call void @assert_ft(i32 %zext621, i32 35)
  %cfg_zext241 = zext i1 %cfg_icmpEq240 to i32
  call void @assert_cfg_ft(i32 %cfg_zext241, i32 %290, i32 35)
  %292 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 89)
  %293 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

294:                                              ; preds = %.preheader135.preheader
  %cfg_DestPhi242 = phi i32 [ 899681060, %.preheader135.preheader ]
  %295 = phi i32 [ 899681060, %.preheader135.preheader ]
  %cfg_DiffPhi243 = phi i32 [ %277, %.preheader135.preheader ]
  %296 = phi i32 [ %277, %.preheader135.preheader ]
  %icmpEq624 = icmp eq i32 %cfg_DiffPhi243, %296
  %zext625 = zext i1 %icmpEq624 to i32
  call void @assert_ft(i32 %zext625, i32 35)
  %icmpEq622 = icmp eq i32 %cfg_DestPhi242, %295
  %297 = icmp eq i32 %295, %295
  %icmpEq626 = icmp eq i1 %icmpEq622, %297
  %zext627 = zext i1 %icmpEq626 to i32
  call void @assert_ft(i32 %zext627, i32 35)
  %zext623 = zext i1 %icmpEq622 to i32
  call void @assert_ft(i32 %zext623, i32 35)
  %298 = xor i32 %cfg_DestPhi242, %cfg_DiffPhi243
  %cfg_icmpEq244 = icmp eq i32 %298, 1053819679
  %299 = icmp eq i32 %298, 1053819679
  %icmpEq628 = icmp eq i1 %cfg_icmpEq244, %299
  %zext629 = zext i1 %icmpEq628 to i32
  call void @assert_ft(i32 %zext629, i32 35)
  %cfg_zext245 = zext i1 %cfg_icmpEq244 to i32
  call void @assert_cfg_ft(i32 %cfg_zext245, i32 %298, i32 35)
  %300 = tail call i32 (double, ...) @isnan(double noundef %.sroa.3174.0.copyload) #28
  %.not122 = icmp eq i32 %300, 0
  %301 = icmp eq i32 %300, 0
  %icmpEq630 = icmp eq i1 %.not122, %301
  %zext631 = zext i1 %icmpEq630 to i32
  call void @assert_ft(i32 %zext631, i32 35)
  %302 = select i1 %.not122, i32 1156580103, i32 1105199891
  %303 = xor i32 1053819679, %302
  br i1 %.not122, label %312, label %304

304:                                              ; preds = %294
  %cfg_DestPhi246 = phi i32 [ 1053819679, %294 ]
  %305 = phi i32 [ 1053819679, %294 ]
  %cfg_DiffPhi247 = phi i32 [ %303, %294 ]
  %306 = phi i32 [ %303, %294 ]
  %icmpEq634 = icmp eq i32 %cfg_DiffPhi247, %306
  %zext635 = zext i1 %icmpEq634 to i32
  call void @assert_ft(i32 %zext635, i32 35)
  %icmpEq632 = icmp eq i32 %cfg_DestPhi246, %305
  %307 = icmp eq i32 %305, %305
  %icmpEq636 = icmp eq i1 %icmpEq632, %307
  %zext637 = zext i1 %icmpEq636 to i32
  call void @assert_ft(i32 %zext637, i32 35)
  %zext633 = zext i1 %icmpEq632 to i32
  call void @assert_ft(i32 %zext633, i32 35)
  %308 = xor i32 %cfg_DestPhi246, %cfg_DiffPhi247
  %cfg_icmpEq248 = icmp eq i32 %308, 1105199891
  %309 = icmp eq i32 %308, 1105199891
  %icmpEq638 = icmp eq i1 %cfg_icmpEq248, %309
  %zext639 = zext i1 %icmpEq638 to i32
  call void @assert_ft(i32 %zext639, i32 35)
  %cfg_zext249 = zext i1 %cfg_icmpEq248 to i32
  call void @assert_cfg_ft(i32 %cfg_zext249, i32 %308, i32 35)
  %310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 88)
  %311 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

312:                                              ; preds = %294
  %cfg_DestPhi250 = phi i32 [ 1053819679, %294 ]
  %313 = phi i32 [ 1053819679, %294 ]
  %cfg_DiffPhi251 = phi i32 [ %303, %294 ]
  %314 = phi i32 [ %303, %294 ]
  %icmpEq642 = icmp eq i32 %cfg_DiffPhi251, %314
  %zext643 = zext i1 %icmpEq642 to i32
  call void @assert_ft(i32 %zext643, i32 35)
  %icmpEq640 = icmp eq i32 %cfg_DestPhi250, %313
  %315 = icmp eq i32 %313, %313
  %icmpEq644 = icmp eq i1 %icmpEq640, %315
  %zext645 = zext i1 %icmpEq644 to i32
  call void @assert_ft(i32 %zext645, i32 35)
  %zext641 = zext i1 %icmpEq640 to i32
  call void @assert_ft(i32 %zext641, i32 35)
  %316 = xor i32 %cfg_DestPhi250, %cfg_DiffPhi251
  %cfg_icmpEq252 = icmp eq i32 %316, 1156580103
  %317 = icmp eq i32 %316, 1156580103
  %icmpEq646 = icmp eq i1 %cfg_icmpEq252, %317
  %zext647 = zext i1 %icmpEq646 to i32
  call void @assert_ft(i32 %zext647, i32 35)
  %cfg_zext253 = zext i1 %cfg_icmpEq252 to i32
  call void @assert_cfg_ft(i32 %cfg_zext253, i32 %316, i32 35)
  %318 = tail call i32 (double, ...) @isnan(double noundef %.sroa.4176.0.copyload) #28
  %.not123 = icmp eq i32 %318, 0
  %319 = icmp eq i32 %318, 0
  %icmpEq648 = icmp eq i1 %.not123, %319
  %zext649 = zext i1 %icmpEq648 to i32
  call void @assert_ft(i32 %zext649, i32 35)
  %320 = select i1 %.not123, i32 1259340564, i32 1207960352
  %321 = xor i32 1156580103, %320
  br i1 %.not123, label %330, label %322

322:                                              ; preds = %312
  %cfg_DestPhi254 = phi i32 [ 1156580103, %312 ]
  %323 = phi i32 [ 1156580103, %312 ]
  %cfg_DiffPhi255 = phi i32 [ %321, %312 ]
  %324 = phi i32 [ %321, %312 ]
  %icmpEq652 = icmp eq i32 %cfg_DiffPhi255, %324
  %zext653 = zext i1 %icmpEq652 to i32
  call void @assert_ft(i32 %zext653, i32 35)
  %icmpEq650 = icmp eq i32 %cfg_DestPhi254, %323
  %325 = icmp eq i32 %323, %323
  %icmpEq654 = icmp eq i1 %icmpEq650, %325
  %zext655 = zext i1 %icmpEq654 to i32
  call void @assert_ft(i32 %zext655, i32 35)
  %zext651 = zext i1 %icmpEq650 to i32
  call void @assert_ft(i32 %zext651, i32 35)
  %326 = xor i32 %cfg_DestPhi254, %cfg_DiffPhi255
  %cfg_icmpEq256 = icmp eq i32 %326, 1207960352
  %327 = icmp eq i32 %326, 1207960352
  %icmpEq656 = icmp eq i1 %cfg_icmpEq256, %327
  %zext657 = zext i1 %icmpEq656 to i32
  call void @assert_ft(i32 %zext657, i32 35)
  %cfg_zext257 = zext i1 %cfg_icmpEq256 to i32
  call void @assert_cfg_ft(i32 %cfg_zext257, i32 %326, i32 35)
  %328 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 87)
  %329 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

330:                                              ; preds = %312
  %cfg_DestPhi258 = phi i32 [ 1156580103, %312 ]
  %331 = phi i32 [ 1156580103, %312 ]
  %cfg_DiffPhi259 = phi i32 [ %321, %312 ]
  %332 = phi i32 [ %321, %312 ]
  %icmpEq660 = icmp eq i32 %cfg_DiffPhi259, %332
  %zext661 = zext i1 %icmpEq660 to i32
  call void @assert_ft(i32 %zext661, i32 35)
  %icmpEq658 = icmp eq i32 %cfg_DestPhi258, %331
  %333 = icmp eq i32 %331, %331
  %icmpEq662 = icmp eq i1 %icmpEq658, %333
  %zext663 = zext i1 %icmpEq662 to i32
  call void @assert_ft(i32 %zext663, i32 35)
  %zext659 = zext i1 %icmpEq658 to i32
  call void @assert_ft(i32 %zext659, i32 35)
  %334 = xor i32 %cfg_DestPhi258, %cfg_DiffPhi259
  %cfg_icmpEq260 = icmp eq i32 %334, 1259340564
  %335 = icmp eq i32 %334, 1259340564
  %icmpEq664 = icmp eq i1 %cfg_icmpEq260, %335
  %zext665 = zext i1 %icmpEq664 to i32
  call void @assert_ft(i32 %zext665, i32 35)
  %cfg_zext261 = zext i1 %cfg_icmpEq260 to i32
  call void @assert_cfg_ft(i32 %cfg_zext261, i32 %334, i32 35)
  %336 = tail call double @llvm.fabs.f64(double %.sroa.0172.0.copyload)
  %337 = fcmp olt double %336, 1.000000e+04
  %338 = fcmp olt double %336, 1.000000e+04
  %icmpEq666 = icmp eq i1 %337, %338
  %zext667 = zext i1 %icmpEq666 to i32
  call void @assert_ft(i32 %zext667, i32 35)
  %339 = select i1 %337, i32 1362101025, i32 1310720776
  %340 = xor i32 1259340564, %339
  br i1 %337, label %349, label %341

341:                                              ; preds = %330
  %cfg_DestPhi262 = phi i32 [ 1259340564, %330 ]
  %342 = phi i32 [ 1259340564, %330 ]
  %cfg_DiffPhi263 = phi i32 [ %340, %330 ]
  %343 = phi i32 [ %340, %330 ]
  %icmpEq670 = icmp eq i32 %cfg_DiffPhi263, %343
  %zext671 = zext i1 %icmpEq670 to i32
  call void @assert_ft(i32 %zext671, i32 35)
  %icmpEq668 = icmp eq i32 %cfg_DestPhi262, %342
  %344 = icmp eq i32 %342, %342
  %icmpEq672 = icmp eq i1 %icmpEq668, %344
  %zext673 = zext i1 %icmpEq672 to i32
  call void @assert_ft(i32 %zext673, i32 35)
  %zext669 = zext i1 %icmpEq668 to i32
  call void @assert_ft(i32 %zext669, i32 35)
  %345 = xor i32 %cfg_DestPhi262, %cfg_DiffPhi263
  %cfg_icmpEq264 = icmp eq i32 %345, 1310720776
  %346 = icmp eq i32 %345, 1310720776
  %icmpEq674 = icmp eq i1 %cfg_icmpEq264, %346
  %zext675 = zext i1 %icmpEq674 to i32
  call void @assert_ft(i32 %zext675, i32 35)
  %cfg_zext265 = zext i1 %cfg_icmpEq264 to i32
  call void @assert_cfg_ft(i32 %cfg_zext265, i32 %345, i32 35)
  %347 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 86)
  %348 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

349:                                              ; preds = %330
  %cfg_DestPhi266 = phi i32 [ 1259340564, %330 ]
  %350 = phi i32 [ 1259340564, %330 ]
  %cfg_DiffPhi267 = phi i32 [ %340, %330 ]
  %351 = phi i32 [ %340, %330 ]
  %icmpEq678 = icmp eq i32 %cfg_DiffPhi267, %351
  %zext679 = zext i1 %icmpEq678 to i32
  call void @assert_ft(i32 %zext679, i32 35)
  %icmpEq676 = icmp eq i32 %cfg_DestPhi266, %350
  %352 = icmp eq i32 %350, %350
  %icmpEq680 = icmp eq i1 %icmpEq676, %352
  %zext681 = zext i1 %icmpEq680 to i32
  call void @assert_ft(i32 %zext681, i32 35)
  %zext677 = zext i1 %icmpEq676 to i32
  call void @assert_ft(i32 %zext677, i32 35)
  %353 = xor i32 %cfg_DestPhi266, %cfg_DiffPhi267
  %cfg_icmpEq268 = icmp eq i32 %353, 1362101025
  %354 = icmp eq i32 %353, 1362101025
  %icmpEq682 = icmp eq i1 %cfg_icmpEq268, %354
  %zext683 = zext i1 %icmpEq682 to i32
  call void @assert_ft(i32 %zext683, i32 35)
  %cfg_zext269 = zext i1 %cfg_icmpEq268 to i32
  call void @assert_cfg_ft(i32 %cfg_zext269, i32 %353, i32 35)
  %355 = tail call double @llvm.fabs.f64(double %.sroa.3174.0.copyload)
  %356 = fcmp olt double %355, 1.000000e+04
  %357 = fcmp olt double %355, 1.000000e+04
  %icmpEq684 = icmp eq i1 %356, %357
  %zext685 = zext i1 %icmpEq684 to i32
  call void @assert_ft(i32 %zext685, i32 35)
  %358 = select i1 %356, i32 1464861449, i32 1413481237
  %359 = xor i32 1362101025, %358
  br i1 %356, label %368, label %360

360:                                              ; preds = %349
  %cfg_DestPhi270 = phi i32 [ 1362101025, %349 ]
  %361 = phi i32 [ 1362101025, %349 ]
  %cfg_DiffPhi271 = phi i32 [ %359, %349 ]
  %362 = phi i32 [ %359, %349 ]
  %icmpEq688 = icmp eq i32 %cfg_DiffPhi271, %362
  %zext689 = zext i1 %icmpEq688 to i32
  call void @assert_ft(i32 %zext689, i32 35)
  %icmpEq686 = icmp eq i32 %cfg_DestPhi270, %361
  %363 = icmp eq i32 %361, %361
  %icmpEq690 = icmp eq i1 %icmpEq686, %363
  %zext691 = zext i1 %icmpEq690 to i32
  call void @assert_ft(i32 %zext691, i32 35)
  %zext687 = zext i1 %icmpEq686 to i32
  call void @assert_ft(i32 %zext687, i32 35)
  %364 = xor i32 %cfg_DestPhi270, %cfg_DiffPhi271
  %cfg_icmpEq272 = icmp eq i32 %364, 1413481237
  %365 = icmp eq i32 %364, 1413481237
  %icmpEq692 = icmp eq i1 %cfg_icmpEq272, %365
  %zext693 = zext i1 %icmpEq692 to i32
  call void @assert_ft(i32 %zext693, i32 35)
  %cfg_zext273 = zext i1 %cfg_icmpEq272 to i32
  call void @assert_cfg_ft(i32 %cfg_zext273, i32 %364, i32 35)
  %366 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 85)
  %367 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

368:                                              ; preds = %349
  %cfg_DestPhi274 = phi i32 [ 1362101025, %349 ]
  %369 = phi i32 [ 1362101025, %349 ]
  %cfg_DiffPhi275 = phi i32 [ %359, %349 ]
  %370 = phi i32 [ %359, %349 ]
  %icmpEq696 = icmp eq i32 %cfg_DiffPhi275, %370
  %zext697 = zext i1 %icmpEq696 to i32
  call void @assert_ft(i32 %zext697, i32 35)
  %icmpEq694 = icmp eq i32 %cfg_DestPhi274, %369
  %371 = icmp eq i32 %369, %369
  %icmpEq698 = icmp eq i1 %icmpEq694, %371
  %zext699 = zext i1 %icmpEq698 to i32
  call void @assert_ft(i32 %zext699, i32 35)
  %zext695 = zext i1 %icmpEq694 to i32
  call void @assert_ft(i32 %zext695, i32 35)
  %372 = xor i32 %cfg_DestPhi274, %cfg_DiffPhi275
  %cfg_icmpEq276 = icmp eq i32 %372, 1464861449
  %373 = icmp eq i32 %372, 1464861449
  %icmpEq700 = icmp eq i1 %cfg_icmpEq276, %373
  %zext701 = zext i1 %icmpEq700 to i32
  call void @assert_ft(i32 %zext701, i32 35)
  %cfg_zext277 = zext i1 %cfg_icmpEq276 to i32
  call void @assert_cfg_ft(i32 %cfg_zext277, i32 %372, i32 35)
  %374 = tail call double @llvm.fabs.f64(double %.sroa.4176.0.copyload)
  %375 = fcmp olt double %374, 1.000000e+04
  %376 = fcmp olt double %374, 1.000000e+04
  %icmpEq702 = icmp eq i1 %375, %376
  %zext703 = zext i1 %icmpEq702 to i32
  call void @assert_ft(i32 %zext703, i32 35)
  %377 = select i1 %375, i32 1516244758, i32 1567621910
  %378 = xor i32 1464861449, %377
  br i1 %375, label %.preheader134.preheader, label %411

.preheader134.preheader:                          ; preds = %368
  %cfg_DestPhi278 = phi i32 [ 1464861449, %368 ]
  %379 = phi i32 [ 1464861449, %368 ]
  %cfg_DiffPhi279 = phi i32 [ %378, %368 ]
  %380 = phi i32 [ %378, %368 ]
  %icmpEq706 = icmp eq i32 %cfg_DiffPhi279, %380
  %zext707 = zext i1 %icmpEq706 to i32
  call void @assert_ft(i32 %zext707, i32 35)
  %icmpEq704 = icmp eq i32 %cfg_DestPhi278, %379
  %381 = icmp eq i32 %379, %379
  %icmpEq708 = icmp eq i1 %icmpEq704, %381
  %zext709 = zext i1 %icmpEq708 to i32
  call void @assert_ft(i32 %zext709, i32 35)
  %zext705 = zext i1 %icmpEq704 to i32
  call void @assert_ft(i32 %zext705, i32 35)
  %382 = xor i32 %cfg_DestPhi278, %cfg_DiffPhi279
  %cfg_icmpEq280 = icmp eq i32 %382, 1516244758
  %383 = icmp eq i32 %382, 1516244758
  %icmpEq710 = icmp eq i1 %cfg_icmpEq280, %383
  %zext711 = zext i1 %icmpEq710 to i32
  call void @assert_ft(i32 %zext711, i32 35)
  %cfg_zext281 = zext i1 %cfg_icmpEq280 to i32
  call void @assert_cfg_ft(i32 %cfg_zext281, i32 %382, i32 35)
  %384 = load double, ptr %scevgep156, align 8
  %385 = fmul double %384, 6.250000e-03
  %386 = fmul double %384, 6.250000e-03
  %387 = load double, ptr %270, align 8
  %388 = load double, ptr %271, align 8
  %389 = fmul double %387, 6.250000e-03
  %390 = fmul double %388, 6.250000e-03
  %391 = load double, ptr %272, align 8
  %392 = load double, ptr %273, align 8
  %393 = fmul double %391, 6.250000e-03
  %394 = fmul double %392, 6.250000e-03
  %395 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5
  %396 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5
  %397 = load double, ptr %395, align 8
  %398 = load double, ptr %396, align 8
  %399 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 1
  %400 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 1
  %401 = load double, ptr %399, align 8
  %402 = load double, ptr %400, align 8
  %403 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 5, i64 2
  %404 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 2
  %405 = load double, ptr %403, align 8
  %406 = load double, ptr %404, align 8
  %407 = tail call i32 (double, ...) @isnan(double noundef %397) #28
  %.not124 = icmp eq i32 %407, 0
  %408 = icmp eq i32 %407, 0
  %icmpEq712 = icmp eq i1 %.not124, %408
  %zext713 = zext i1 %icmpEq712 to i32
  call void @assert_ft(i32 %zext713, i32 35)
  %409 = select i1 %.not124, i32 1670382371, i32 1619002122
  %410 = xor i32 1516244758, %409
  br i1 %.not124, label %427, label %419

411:                                              ; preds = %368
  %cfg_DestPhi282 = phi i32 [ 1464861449, %368 ]
  %412 = phi i32 [ 1464861449, %368 ]
  %cfg_DiffPhi283 = phi i32 [ %378, %368 ]
  %413 = phi i32 [ %378, %368 ]
  %icmpEq716 = icmp eq i32 %cfg_DiffPhi283, %413
  %zext717 = zext i1 %icmpEq716 to i32
  call void @assert_ft(i32 %zext717, i32 35)
  %icmpEq714 = icmp eq i32 %cfg_DestPhi282, %412
  %414 = icmp eq i32 %412, %412
  %icmpEq718 = icmp eq i1 %icmpEq714, %414
  %zext719 = zext i1 %icmpEq718 to i32
  call void @assert_ft(i32 %zext719, i32 35)
  %zext715 = zext i1 %icmpEq714 to i32
  call void @assert_ft(i32 %zext715, i32 35)
  %415 = xor i32 %cfg_DestPhi282, %cfg_DiffPhi283
  %cfg_icmpEq284 = icmp eq i32 %415, 1567621910
  %416 = icmp eq i32 %415, 1567621910
  %icmpEq720 = icmp eq i1 %cfg_icmpEq284, %416
  %zext721 = zext i1 %icmpEq720 to i32
  call void @assert_ft(i32 %zext721, i32 35)
  %cfg_zext285 = zext i1 %cfg_icmpEq284 to i32
  call void @assert_cfg_ft(i32 %cfg_zext285, i32 %415, i32 35)
  %417 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 84)
  %418 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

419:                                              ; preds = %.preheader134.preheader
  %cfg_DestPhi286 = phi i32 [ 1516244758, %.preheader134.preheader ]
  %420 = phi i32 [ 1516244758, %.preheader134.preheader ]
  %cfg_DiffPhi287 = phi i32 [ %410, %.preheader134.preheader ]
  %421 = phi i32 [ %410, %.preheader134.preheader ]
  %icmpEq724 = icmp eq i32 %cfg_DiffPhi287, %421
  %zext725 = zext i1 %icmpEq724 to i32
  call void @assert_ft(i32 %zext725, i32 35)
  %icmpEq722 = icmp eq i32 %cfg_DestPhi286, %420
  %422 = icmp eq i32 %420, %420
  %icmpEq726 = icmp eq i1 %icmpEq722, %422
  %zext727 = zext i1 %icmpEq726 to i32
  call void @assert_ft(i32 %zext727, i32 35)
  %zext723 = zext i1 %icmpEq722 to i32
  call void @assert_ft(i32 %zext723, i32 35)
  %423 = xor i32 %cfg_DestPhi286, %cfg_DiffPhi287
  %cfg_icmpEq288 = icmp eq i32 %423, 1619002122
  %424 = icmp eq i32 %423, 1619002122
  %icmpEq728 = icmp eq i1 %cfg_icmpEq288, %424
  %zext729 = zext i1 %icmpEq728 to i32
  call void @assert_ft(i32 %zext729, i32 35)
  %cfg_zext289 = zext i1 %cfg_icmpEq288 to i32
  call void @assert_cfg_ft(i32 %cfg_zext289, i32 %423, i32 35)
  %425 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 79)
  %426 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

427:                                              ; preds = %.preheader134.preheader
  %cfg_DestPhi290 = phi i32 [ 1516244758, %.preheader134.preheader ]
  %428 = phi i32 [ 1516244758, %.preheader134.preheader ]
  %cfg_DiffPhi291 = phi i32 [ %410, %.preheader134.preheader ]
  %429 = phi i32 [ %410, %.preheader134.preheader ]
  %icmpEq732 = icmp eq i32 %cfg_DiffPhi291, %429
  %zext733 = zext i1 %icmpEq732 to i32
  call void @assert_ft(i32 %zext733, i32 35)
  %icmpEq730 = icmp eq i32 %cfg_DestPhi290, %428
  %430 = icmp eq i32 %428, %428
  %icmpEq734 = icmp eq i1 %icmpEq730, %430
  %zext735 = zext i1 %icmpEq734 to i32
  call void @assert_ft(i32 %zext735, i32 35)
  %zext731 = zext i1 %icmpEq730 to i32
  call void @assert_ft(i32 %zext731, i32 35)
  %431 = xor i32 %cfg_DestPhi290, %cfg_DiffPhi291
  %cfg_icmpEq292 = icmp eq i32 %431, 1670382371
  %432 = icmp eq i32 %431, 1670382371
  %icmpEq736 = icmp eq i1 %cfg_icmpEq292, %432
  %zext737 = zext i1 %icmpEq736 to i32
  call void @assert_ft(i32 %zext737, i32 35)
  %cfg_zext293 = zext i1 %cfg_icmpEq292 to i32
  call void @assert_cfg_ft(i32 %cfg_zext293, i32 %431, i32 35)
  %433 = tail call i32 (double, ...) @isnan(double noundef %401) #28
  %.not125 = icmp eq i32 %433, 0
  %434 = icmp eq i32 %433, 0
  %icmpEq738 = icmp eq i1 %.not125, %434
  %zext739 = zext i1 %icmpEq738 to i32
  call void @assert_ft(i32 %zext739, i32 35)
  %435 = select i1 %.not125, i32 1773142795, i32 1721762583
  %436 = xor i32 1670382371, %435
  br i1 %.not125, label %445, label %437

437:                                              ; preds = %427
  %cfg_DestPhi294 = phi i32 [ 1670382371, %427 ]
  %438 = phi i32 [ 1670382371, %427 ]
  %cfg_DiffPhi295 = phi i32 [ %436, %427 ]
  %439 = phi i32 [ %436, %427 ]
  %icmpEq742 = icmp eq i32 %cfg_DiffPhi295, %439
  %zext743 = zext i1 %icmpEq742 to i32
  call void @assert_ft(i32 %zext743, i32 35)
  %icmpEq740 = icmp eq i32 %cfg_DestPhi294, %438
  %440 = icmp eq i32 %438, %438
  %icmpEq744 = icmp eq i1 %icmpEq740, %440
  %zext745 = zext i1 %icmpEq744 to i32
  call void @assert_ft(i32 %zext745, i32 35)
  %zext741 = zext i1 %icmpEq740 to i32
  call void @assert_ft(i32 %zext741, i32 35)
  %441 = xor i32 %cfg_DestPhi294, %cfg_DiffPhi295
  %cfg_icmpEq296 = icmp eq i32 %441, 1721762583
  %442 = icmp eq i32 %441, 1721762583
  %icmpEq746 = icmp eq i1 %cfg_icmpEq296, %442
  %zext747 = zext i1 %icmpEq746 to i32
  call void @assert_ft(i32 %zext747, i32 35)
  %cfg_zext297 = zext i1 %cfg_icmpEq296 to i32
  call void @assert_cfg_ft(i32 %cfg_zext297, i32 %441, i32 35)
  %443 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 78)
  %444 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

445:                                              ; preds = %427
  %cfg_DestPhi298 = phi i32 [ 1670382371, %427 ]
  %446 = phi i32 [ 1670382371, %427 ]
  %cfg_DiffPhi299 = phi i32 [ %436, %427 ]
  %447 = phi i32 [ %436, %427 ]
  %icmpEq750 = icmp eq i32 %cfg_DiffPhi299, %447
  %zext751 = zext i1 %icmpEq750 to i32
  call void @assert_ft(i32 %zext751, i32 35)
  %icmpEq748 = icmp eq i32 %cfg_DestPhi298, %446
  %448 = icmp eq i32 %446, %446
  %icmpEq752 = icmp eq i1 %icmpEq748, %448
  %zext753 = zext i1 %icmpEq752 to i32
  call void @assert_ft(i32 %zext753, i32 35)
  %zext749 = zext i1 %icmpEq748 to i32
  call void @assert_ft(i32 %zext749, i32 35)
  %449 = xor i32 %cfg_DestPhi298, %cfg_DiffPhi299
  %cfg_icmpEq300 = icmp eq i32 %449, 1773142795
  %450 = icmp eq i32 %449, 1773142795
  %icmpEq754 = icmp eq i1 %cfg_icmpEq300, %450
  %zext755 = zext i1 %icmpEq754 to i32
  call void @assert_ft(i32 %zext755, i32 35)
  %cfg_zext301 = zext i1 %cfg_icmpEq300 to i32
  call void @assert_cfg_ft(i32 %cfg_zext301, i32 %449, i32 35)
  %451 = tail call i32 (double, ...) @isnan(double noundef %405) #28
  %.not126 = icmp eq i32 %451, 0
  %452 = icmp eq i32 %451, 0
  %icmpEq756 = icmp eq i1 %.not126, %452
  %zext757 = zext i1 %icmpEq756 to i32
  call void @assert_ft(i32 %zext757, i32 35)
  %453 = select i1 %.not126, i32 1875903256, i32 1824523044
  %454 = xor i32 1773142795, %453
  br i1 %.not126, label %463, label %455

455:                                              ; preds = %445
  %cfg_DestPhi302 = phi i32 [ 1773142795, %445 ]
  %456 = phi i32 [ 1773142795, %445 ]
  %cfg_DiffPhi303 = phi i32 [ %454, %445 ]
  %457 = phi i32 [ %454, %445 ]
  %icmpEq760 = icmp eq i32 %cfg_DiffPhi303, %457
  %zext761 = zext i1 %icmpEq760 to i32
  call void @assert_ft(i32 %zext761, i32 35)
  %icmpEq758 = icmp eq i32 %cfg_DestPhi302, %456
  %458 = icmp eq i32 %456, %456
  %icmpEq762 = icmp eq i1 %icmpEq758, %458
  %zext763 = zext i1 %icmpEq762 to i32
  call void @assert_ft(i32 %zext763, i32 35)
  %zext759 = zext i1 %icmpEq758 to i32
  call void @assert_ft(i32 %zext759, i32 35)
  %459 = xor i32 %cfg_DestPhi302, %cfg_DiffPhi303
  %cfg_icmpEq304 = icmp eq i32 %459, 1824523044
  %460 = icmp eq i32 %459, 1824523044
  %icmpEq764 = icmp eq i1 %cfg_icmpEq304, %460
  %zext765 = zext i1 %icmpEq764 to i32
  call void @assert_ft(i32 %zext765, i32 35)
  %cfg_zext305 = zext i1 %cfg_icmpEq304 to i32
  call void @assert_cfg_ft(i32 %cfg_zext305, i32 %459, i32 35)
  %461 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 77)
  %462 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

463:                                              ; preds = %445
  %cfg_DestPhi306 = phi i32 [ 1773142795, %445 ]
  %464 = phi i32 [ 1773142795, %445 ]
  %cfg_DiffPhi307 = phi i32 [ %454, %445 ]
  %465 = phi i32 [ %454, %445 ]
  %icmpEq768 = icmp eq i32 %cfg_DiffPhi307, %465
  %zext769 = zext i1 %icmpEq768 to i32
  call void @assert_ft(i32 %zext769, i32 35)
  %icmpEq766 = icmp eq i32 %cfg_DestPhi306, %464
  %466 = icmp eq i32 %464, %464
  %icmpEq770 = icmp eq i1 %icmpEq766, %466
  %zext771 = zext i1 %icmpEq770 to i32
  call void @assert_ft(i32 %zext771, i32 35)
  %zext767 = zext i1 %icmpEq766 to i32
  call void @assert_ft(i32 %zext767, i32 35)
  %467 = xor i32 %cfg_DestPhi306, %cfg_DiffPhi307
  %cfg_icmpEq308 = icmp eq i32 %467, 1875903256
  %468 = icmp eq i32 %467, 1875903256
  %icmpEq772 = icmp eq i1 %cfg_icmpEq308, %468
  %zext773 = zext i1 %icmpEq772 to i32
  call void @assert_ft(i32 %zext773, i32 35)
  %cfg_zext309 = zext i1 %cfg_icmpEq308 to i32
  call void @assert_cfg_ft(i32 %cfg_zext309, i32 %467, i32 35)
  %469 = tail call double @llvm.fabs.f64(double %397)
  %470 = fcmp olt double %469, 1.000000e+04
  %471 = fcmp olt double %469, 1.000000e+04
  %icmpEq774 = icmp eq i1 %470, %471
  %zext775 = zext i1 %icmpEq774 to i32
  call void @assert_ft(i32 %zext775, i32 35)
  %472 = select i1 %470, i32 1978663680, i32 1927283468
  %473 = xor i32 1875903256, %472
  br i1 %470, label %482, label %474

474:                                              ; preds = %463
  %cfg_DestPhi310 = phi i32 [ 1875903256, %463 ]
  %475 = phi i32 [ 1875903256, %463 ]
  %cfg_DiffPhi311 = phi i32 [ %473, %463 ]
  %476 = phi i32 [ %473, %463 ]
  %icmpEq778 = icmp eq i32 %cfg_DiffPhi311, %476
  %zext779 = zext i1 %icmpEq778 to i32
  call void @assert_ft(i32 %zext779, i32 35)
  %icmpEq776 = icmp eq i32 %cfg_DestPhi310, %475
  %477 = icmp eq i32 %475, %475
  %icmpEq780 = icmp eq i1 %icmpEq776, %477
  %zext781 = zext i1 %icmpEq780 to i32
  call void @assert_ft(i32 %zext781, i32 35)
  %zext777 = zext i1 %icmpEq776 to i32
  call void @assert_ft(i32 %zext777, i32 35)
  %478 = xor i32 %cfg_DestPhi310, %cfg_DiffPhi311
  %cfg_icmpEq312 = icmp eq i32 %478, 1927283468
  %479 = icmp eq i32 %478, 1927283468
  %icmpEq782 = icmp eq i1 %cfg_icmpEq312, %479
  %zext783 = zext i1 %icmpEq782 to i32
  call void @assert_ft(i32 %zext783, i32 35)
  %cfg_zext313 = zext i1 %cfg_icmpEq312 to i32
  call void @assert_cfg_ft(i32 %cfg_zext313, i32 %478, i32 35)
  %480 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 76)
  %481 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

482:                                              ; preds = %463
  %cfg_DestPhi314 = phi i32 [ 1875903256, %463 ]
  %483 = phi i32 [ 1875903256, %463 ]
  %cfg_DiffPhi315 = phi i32 [ %473, %463 ]
  %484 = phi i32 [ %473, %463 ]
  %icmpEq786 = icmp eq i32 %cfg_DiffPhi315, %484
  %zext787 = zext i1 %icmpEq786 to i32
  call void @assert_ft(i32 %zext787, i32 35)
  %icmpEq784 = icmp eq i32 %cfg_DestPhi314, %483
  %485 = icmp eq i32 %483, %483
  %icmpEq788 = icmp eq i1 %icmpEq784, %485
  %zext789 = zext i1 %icmpEq788 to i32
  call void @assert_ft(i32 %zext789, i32 35)
  %zext785 = zext i1 %icmpEq784 to i32
  call void @assert_ft(i32 %zext785, i32 35)
  %486 = xor i32 %cfg_DestPhi314, %cfg_DiffPhi315
  %cfg_icmpEq316 = icmp eq i32 %486, 1978663680
  %487 = icmp eq i32 %486, 1978663680
  %icmpEq790 = icmp eq i1 %cfg_icmpEq316, %487
  %zext791 = zext i1 %icmpEq790 to i32
  call void @assert_ft(i32 %zext791, i32 35)
  %cfg_zext317 = zext i1 %cfg_icmpEq316 to i32
  call void @assert_cfg_ft(i32 %cfg_zext317, i32 %486, i32 35)
  %488 = tail call double @llvm.fabs.f64(double %401)
  %489 = fcmp olt double %488, 1.000000e+04
  %490 = fcmp olt double %488, 1.000000e+04
  %icmpEq792 = icmp eq i1 %489, %490
  %zext793 = zext i1 %icmpEq792 to i32
  call void @assert_ft(i32 %zext793, i32 35)
  %491 = select i1 %489, i32 2081424141, i32 2030043929
  %492 = xor i32 1978663680, %491
  br i1 %489, label %501, label %493

493:                                              ; preds = %482
  %cfg_DestPhi318 = phi i32 [ 1978663680, %482 ]
  %494 = phi i32 [ 1978663680, %482 ]
  %cfg_DiffPhi319 = phi i32 [ %492, %482 ]
  %495 = phi i32 [ %492, %482 ]
  %icmpEq796 = icmp eq i32 %cfg_DiffPhi319, %495
  %zext797 = zext i1 %icmpEq796 to i32
  call void @assert_ft(i32 %zext797, i32 35)
  %icmpEq794 = icmp eq i32 %cfg_DestPhi318, %494
  %496 = icmp eq i32 %494, %494
  %icmpEq798 = icmp eq i1 %icmpEq794, %496
  %zext799 = zext i1 %icmpEq798 to i32
  call void @assert_ft(i32 %zext799, i32 35)
  %zext795 = zext i1 %icmpEq794 to i32
  call void @assert_ft(i32 %zext795, i32 35)
  %497 = xor i32 %cfg_DestPhi318, %cfg_DiffPhi319
  %cfg_icmpEq320 = icmp eq i32 %497, 2030043929
  %498 = icmp eq i32 %497, 2030043929
  %icmpEq800 = icmp eq i1 %cfg_icmpEq320, %498
  %zext801 = zext i1 %icmpEq800 to i32
  call void @assert_ft(i32 %zext801, i32 35)
  %cfg_zext321 = zext i1 %cfg_icmpEq320 to i32
  call void @assert_cfg_ft(i32 %cfg_zext321, i32 %497, i32 35)
  %499 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 75)
  %500 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

501:                                              ; preds = %482
  %cfg_DestPhi322 = phi i32 [ 1978663680, %482 ]
  %502 = phi i32 [ 1978663680, %482 ]
  %cfg_DiffPhi323 = phi i32 [ %492, %482 ]
  %503 = phi i32 [ %492, %482 ]
  %icmpEq804 = icmp eq i32 %cfg_DiffPhi323, %503
  %zext805 = zext i1 %icmpEq804 to i32
  call void @assert_ft(i32 %zext805, i32 35)
  %icmpEq802 = icmp eq i32 %cfg_DestPhi322, %502
  %504 = icmp eq i32 %502, %502
  %icmpEq806 = icmp eq i1 %icmpEq802, %504
  %zext807 = zext i1 %icmpEq806 to i32
  call void @assert_ft(i32 %zext807, i32 35)
  %zext803 = zext i1 %icmpEq802 to i32
  call void @assert_ft(i32 %zext803, i32 35)
  %505 = xor i32 %cfg_DestPhi322, %cfg_DiffPhi323
  %cfg_icmpEq324 = icmp eq i32 %505, 2081424141
  %506 = icmp eq i32 %505, 2081424141
  %icmpEq808 = icmp eq i1 %cfg_icmpEq324, %506
  %zext809 = zext i1 %icmpEq808 to i32
  call void @assert_ft(i32 %zext809, i32 35)
  %cfg_zext325 = zext i1 %cfg_icmpEq324 to i32
  call void @assert_cfg_ft(i32 %cfg_zext325, i32 %505, i32 35)
  %507 = tail call double @llvm.fabs.f64(double %405)
  %508 = fcmp olt double %507, 1.000000e+04
  %509 = fcmp olt double %507, 1.000000e+04
  %icmpEq810 = icmp eq i1 %508, %509
  %zext811 = zext i1 %icmpEq810 to i32
  call void @assert_ft(i32 %zext811, i32 35)
  %510 = select i1 %508, i32 2132811030, i32 -2110782693
  %511 = xor i32 2081424141, %510
  br i1 %508, label %.preheader133.preheader, label %558

.preheader133.preheader:                          ; preds = %501
  %cfg_DestPhi326 = phi i32 [ 2081424141, %501 ]
  %512 = phi i32 [ 2081424141, %501 ]
  %cfg_DiffPhi327 = phi i32 [ %511, %501 ]
  %513 = phi i32 [ %511, %501 ]
  %icmpEq814 = icmp eq i32 %cfg_DiffPhi327, %513
  %zext815 = zext i1 %icmpEq814 to i32
  call void @assert_ft(i32 %zext815, i32 35)
  %icmpEq812 = icmp eq i32 %cfg_DestPhi326, %512
  %514 = icmp eq i32 %512, %512
  %icmpEq816 = icmp eq i1 %icmpEq812, %514
  %zext817 = zext i1 %icmpEq816 to i32
  call void @assert_ft(i32 %zext817, i32 35)
  %zext813 = zext i1 %icmpEq812 to i32
  call void @assert_ft(i32 %zext813, i32 35)
  %515 = xor i32 %cfg_DestPhi326, %cfg_DiffPhi327
  %cfg_icmpEq328 = icmp eq i32 %515, 2132811030
  %516 = icmp eq i32 %515, 2132811030
  %icmpEq818 = icmp eq i1 %cfg_icmpEq328, %516
  %zext819 = zext i1 %icmpEq818 to i32
  call void @assert_ft(i32 %zext819, i32 35)
  %cfg_zext329 = zext i1 %cfg_icmpEq328 to i32
  call void @assert_cfg_ft(i32 %cfg_zext329, i32 %515, i32 35)
  %517 = load double, ptr %395, align 8
  %518 = fadd double %517, %385
  %519 = fadd double %517, %386
  %520 = load double, ptr %399, align 8
  %521 = load double, ptr %400, align 8
  %522 = fadd double %520, %389
  %523 = fadd double %521, %390
  %524 = load double, ptr %403, align 8
  %525 = load double, ptr %404, align 8
  %526 = fadd double %524, %393
  %527 = fadd double %525, %394
  %528 = fmul double %518, 1.250000e-02
  %529 = fmul double %519, 1.250000e-02
  %530 = fmul double %522, 1.250000e-02
  %531 = fmul double %523, 1.250000e-02
  %532 = fmul double %526, 1.250000e-02
  %533 = fmul double %527, 1.250000e-02
  %534 = load double, ptr %155, align 8
  %535 = load double, ptr %155, align 8
  %536 = fadd double %534, %528
  %537 = fadd double %535, %529
  %538 = load double, ptr %158, align 8
  %539 = load double, ptr %159, align 8
  %540 = fadd double %538, %530
  %541 = fadd double %539, %531
  %542 = load double, ptr %162, align 8
  %543 = load double, ptr %163, align 8
  %544 = fadd double %542, %532
  %545 = fadd double %543, %533
  store double %536, ptr %155, align 8
  %.sroa.4.0.scevgep157.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2, i64 1
  %546 = getelementptr %struct.bnode, ptr %12, i64 0, i32 2, i64 1
  store double %540, ptr %.sroa.4.0.scevgep157.sroa_idx, align 8
  %.sroa.7.0.scevgep157.sroa_idx = getelementptr %struct.bnode, ptr %.0154, i64 0, i32 2, i64 2
  %547 = getelementptr %struct.bnode, ptr %12, i64 0, i32 2, i64 2
  store double %544, ptr %.sroa.7.0.scevgep157.sroa_idx, align 8
  %548 = fadd double %518, %385
  %549 = fadd double %519, %386
  store double %548, ptr %395, align 8
  %550 = fadd double %522, %389
  %551 = fadd double %523, %390
  store double %550, ptr %399, align 8
  %552 = fadd double %526, %393
  %553 = fadd double %527, %394
  store double %552, ptr %403, align 8
  %554 = tail call i32 (double, ...) @isnan(double noundef %536) #28
  %.not127 = icmp eq i32 %554, 0
  %555 = icmp eq i32 %554, 0
  %icmpEq820 = icmp eq i1 %.not127, %555
  %zext821 = zext i1 %icmpEq820 to i32
  call void @assert_ft(i32 %zext821, i32 35)
  %556 = select i1 %.not127, i32 -2008022269, i32 -2059402481
  %557 = xor i32 2132811030, %556
  br i1 %.not127, label %574, label %566

558:                                              ; preds = %501
  %cfg_DestPhi330 = phi i32 [ 2081424141, %501 ]
  %559 = phi i32 [ 2081424141, %501 ]
  %cfg_DiffPhi331 = phi i32 [ %511, %501 ]
  %560 = phi i32 [ %511, %501 ]
  %icmpEq824 = icmp eq i32 %cfg_DiffPhi331, %560
  %zext825 = zext i1 %icmpEq824 to i32
  call void @assert_ft(i32 %zext825, i32 35)
  %icmpEq822 = icmp eq i32 %cfg_DestPhi330, %559
  %561 = icmp eq i32 %559, %559
  %icmpEq826 = icmp eq i1 %icmpEq822, %561
  %zext827 = zext i1 %icmpEq826 to i32
  call void @assert_ft(i32 %zext827, i32 35)
  %zext823 = zext i1 %icmpEq822 to i32
  call void @assert_ft(i32 %zext823, i32 35)
  %562 = xor i32 %cfg_DestPhi330, %cfg_DiffPhi331
  %cfg_icmpEq332 = icmp eq i32 %562, -2110782693
  %563 = icmp eq i32 %562, -2110782693
  %icmpEq828 = icmp eq i1 %cfg_icmpEq332, %563
  %zext829 = zext i1 %icmpEq828 to i32
  call void @assert_ft(i32 %zext829, i32 35)
  %cfg_zext333 = zext i1 %cfg_icmpEq332 to i32
  call void @assert_cfg_ft(i32 %cfg_zext333, i32 %562, i32 35)
  %564 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 74)
  %565 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

566:                                              ; preds = %.preheader133.preheader
  %cfg_DestPhi334 = phi i32 [ 2132811030, %.preheader133.preheader ]
  %567 = phi i32 [ 2132811030, %.preheader133.preheader ]
  %cfg_DiffPhi335 = phi i32 [ %557, %.preheader133.preheader ]
  %568 = phi i32 [ %557, %.preheader133.preheader ]
  %icmpEq832 = icmp eq i32 %cfg_DiffPhi335, %568
  %zext833 = zext i1 %icmpEq832 to i32
  call void @assert_ft(i32 %zext833, i32 35)
  %icmpEq830 = icmp eq i32 %cfg_DestPhi334, %567
  %569 = icmp eq i32 %567, %567
  %icmpEq834 = icmp eq i1 %icmpEq830, %569
  %zext835 = zext i1 %icmpEq834 to i32
  call void @assert_ft(i32 %zext835, i32 35)
  %zext831 = zext i1 %icmpEq830 to i32
  call void @assert_ft(i32 %zext831, i32 35)
  %570 = xor i32 %cfg_DestPhi334, %cfg_DiffPhi335
  %cfg_icmpEq336 = icmp eq i32 %570, -2059402481
  %571 = icmp eq i32 %570, -2059402481
  %icmpEq836 = icmp eq i1 %cfg_icmpEq336, %571
  %zext837 = zext i1 %icmpEq836 to i32
  call void @assert_ft(i32 %zext837, i32 35)
  %cfg_zext337 = zext i1 %cfg_icmpEq336 to i32
  call void @assert_cfg_ft(i32 %cfg_zext337, i32 %570, i32 35)
  %572 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 69)
  %573 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

574:                                              ; preds = %.preheader133.preheader
  %cfg_DestPhi338 = phi i32 [ 2132811030, %.preheader133.preheader ]
  %575 = phi i32 [ 2132811030, %.preheader133.preheader ]
  %cfg_DiffPhi339 = phi i32 [ %557, %.preheader133.preheader ]
  %576 = phi i32 [ %557, %.preheader133.preheader ]
  %icmpEq840 = icmp eq i32 %cfg_DiffPhi339, %576
  %zext841 = zext i1 %icmpEq840 to i32
  call void @assert_ft(i32 %zext841, i32 35)
  %icmpEq838 = icmp eq i32 %cfg_DestPhi338, %575
  %577 = icmp eq i32 %575, %575
  %icmpEq842 = icmp eq i1 %icmpEq838, %577
  %zext843 = zext i1 %icmpEq842 to i32
  call void @assert_ft(i32 %zext843, i32 35)
  %zext839 = zext i1 %icmpEq838 to i32
  call void @assert_ft(i32 %zext839, i32 35)
  %578 = xor i32 %cfg_DestPhi338, %cfg_DiffPhi339
  %cfg_icmpEq340 = icmp eq i32 %578, -2008022269
  %579 = icmp eq i32 %578, -2008022269
  %icmpEq844 = icmp eq i1 %cfg_icmpEq340, %579
  %zext845 = zext i1 %icmpEq844 to i32
  call void @assert_ft(i32 %zext845, i32 35)
  %cfg_zext341 = zext i1 %cfg_icmpEq340 to i32
  call void @assert_cfg_ft(i32 %cfg_zext341, i32 %578, i32 35)
  %580 = tail call i32 (double, ...) @isnan(double noundef %540) #28
  %.not128 = icmp eq i32 %580, 0
  %581 = icmp eq i32 %580, 0
  %icmpEq846 = icmp eq i1 %.not128, %581
  %zext847 = zext i1 %icmpEq846 to i32
  call void @assert_ft(i32 %zext847, i32 35)
  %582 = select i1 %.not128, i32 -1905261808, i32 -1956642020
  %583 = xor i32 -2008022269, %582
  br i1 %.not128, label %592, label %584

584:                                              ; preds = %574
  %cfg_DestPhi342 = phi i32 [ -2008022269, %574 ]
  %585 = phi i32 [ -2008022269, %574 ]
  %cfg_DiffPhi343 = phi i32 [ %583, %574 ]
  %586 = phi i32 [ %583, %574 ]
  %icmpEq850 = icmp eq i32 %cfg_DiffPhi343, %586
  %zext851 = zext i1 %icmpEq850 to i32
  call void @assert_ft(i32 %zext851, i32 35)
  %icmpEq848 = icmp eq i32 %cfg_DestPhi342, %585
  %587 = icmp eq i32 %585, %585
  %icmpEq852 = icmp eq i1 %icmpEq848, %587
  %zext853 = zext i1 %icmpEq852 to i32
  call void @assert_ft(i32 %zext853, i32 35)
  %zext849 = zext i1 %icmpEq848 to i32
  call void @assert_ft(i32 %zext849, i32 35)
  %588 = xor i32 %cfg_DestPhi342, %cfg_DiffPhi343
  %cfg_icmpEq344 = icmp eq i32 %588, -1956642020
  %589 = icmp eq i32 %588, -1956642020
  %icmpEq854 = icmp eq i1 %cfg_icmpEq344, %589
  %zext855 = zext i1 %icmpEq854 to i32
  call void @assert_ft(i32 %zext855, i32 35)
  %cfg_zext345 = zext i1 %cfg_icmpEq344 to i32
  call void @assert_cfg_ft(i32 %cfg_zext345, i32 %588, i32 35)
  %590 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 68)
  %591 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

592:                                              ; preds = %574
  %cfg_DestPhi346 = phi i32 [ -2008022269, %574 ]
  %593 = phi i32 [ -2008022269, %574 ]
  %cfg_DiffPhi347 = phi i32 [ %583, %574 ]
  %594 = phi i32 [ %583, %574 ]
  %icmpEq858 = icmp eq i32 %cfg_DiffPhi347, %594
  %zext859 = zext i1 %icmpEq858 to i32
  call void @assert_ft(i32 %zext859, i32 35)
  %icmpEq856 = icmp eq i32 %cfg_DestPhi346, %593
  %595 = icmp eq i32 %593, %593
  %icmpEq860 = icmp eq i1 %icmpEq856, %595
  %zext861 = zext i1 %icmpEq860 to i32
  call void @assert_ft(i32 %zext861, i32 35)
  %zext857 = zext i1 %icmpEq856 to i32
  call void @assert_ft(i32 %zext857, i32 35)
  %596 = xor i32 %cfg_DestPhi346, %cfg_DiffPhi347
  %cfg_icmpEq348 = icmp eq i32 %596, -1905261808
  %597 = icmp eq i32 %596, -1905261808
  %icmpEq862 = icmp eq i1 %cfg_icmpEq348, %597
  %zext863 = zext i1 %icmpEq862 to i32
  call void @assert_ft(i32 %zext863, i32 35)
  %cfg_zext349 = zext i1 %cfg_icmpEq348 to i32
  call void @assert_cfg_ft(i32 %cfg_zext349, i32 %596, i32 35)
  %598 = tail call i32 (double, ...) @isnan(double noundef %544) #28
  %.not129 = icmp eq i32 %598, 0
  %599 = icmp eq i32 %598, 0
  %icmpEq864 = icmp eq i1 %.not129, %599
  %zext865 = zext i1 %icmpEq864 to i32
  call void @assert_ft(i32 %zext865, i32 35)
  %600 = select i1 %.not129, i32 -1802501347, i32 -1853881596
  %601 = xor i32 -1905261808, %600
  br i1 %.not129, label %610, label %602

602:                                              ; preds = %592
  %cfg_DestPhi350 = phi i32 [ -1905261808, %592 ]
  %603 = phi i32 [ -1905261808, %592 ]
  %cfg_DiffPhi351 = phi i32 [ %601, %592 ]
  %604 = phi i32 [ %601, %592 ]
  %icmpEq868 = icmp eq i32 %cfg_DiffPhi351, %604
  %zext869 = zext i1 %icmpEq868 to i32
  call void @assert_ft(i32 %zext869, i32 35)
  %icmpEq866 = icmp eq i32 %cfg_DestPhi350, %603
  %605 = icmp eq i32 %603, %603
  %icmpEq870 = icmp eq i1 %icmpEq866, %605
  %zext871 = zext i1 %icmpEq870 to i32
  call void @assert_ft(i32 %zext871, i32 35)
  %zext867 = zext i1 %icmpEq866 to i32
  call void @assert_ft(i32 %zext867, i32 35)
  %606 = xor i32 %cfg_DestPhi350, %cfg_DiffPhi351
  %cfg_icmpEq352 = icmp eq i32 %606, -1853881596
  %607 = icmp eq i32 %606, -1853881596
  %icmpEq872 = icmp eq i1 %cfg_icmpEq352, %607
  %zext873 = zext i1 %icmpEq872 to i32
  call void @assert_ft(i32 %zext873, i32 35)
  %cfg_zext353 = zext i1 %cfg_icmpEq352 to i32
  call void @assert_cfg_ft(i32 %cfg_zext353, i32 %606, i32 35)
  %608 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 67)
  %609 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

610:                                              ; preds = %592
  %cfg_DestPhi354 = phi i32 [ -1905261808, %592 ]
  %611 = phi i32 [ -1905261808, %592 ]
  %cfg_DiffPhi355 = phi i32 [ %601, %592 ]
  %612 = phi i32 [ %601, %592 ]
  %icmpEq876 = icmp eq i32 %cfg_DiffPhi355, %612
  %zext877 = zext i1 %icmpEq876 to i32
  call void @assert_ft(i32 %zext877, i32 35)
  %icmpEq874 = icmp eq i32 %cfg_DestPhi354, %611
  %613 = icmp eq i32 %611, %611
  %icmpEq878 = icmp eq i1 %icmpEq874, %613
  %zext879 = zext i1 %icmpEq878 to i32
  call void @assert_ft(i32 %zext879, i32 35)
  %zext875 = zext i1 %icmpEq874 to i32
  call void @assert_ft(i32 %zext875, i32 35)
  %614 = xor i32 %cfg_DestPhi354, %cfg_DiffPhi355
  %cfg_icmpEq356 = icmp eq i32 %614, -1802501347
  %615 = icmp eq i32 %614, -1802501347
  %icmpEq880 = icmp eq i1 %cfg_icmpEq356, %615
  %zext881 = zext i1 %icmpEq880 to i32
  call void @assert_ft(i32 %zext881, i32 35)
  %cfg_zext357 = zext i1 %cfg_icmpEq356 to i32
  call void @assert_cfg_ft(i32 %cfg_zext357, i32 %614, i32 35)
  %616 = tail call double @llvm.fabs.f64(double %536)
  %617 = fcmp olt double %616, 1.000000e+04
  %618 = fcmp olt double %616, 1.000000e+04
  %icmpEq882 = icmp eq i1 %617, %618
  %zext883 = zext i1 %icmpEq882 to i32
  call void @assert_ft(i32 %zext883, i32 35)
  %619 = select i1 %617, i32 -1699740923, i32 -1751121135
  %620 = xor i32 -1802501347, %619
  br i1 %617, label %629, label %621

621:                                              ; preds = %610
  %cfg_DestPhi358 = phi i32 [ -1802501347, %610 ]
  %622 = phi i32 [ -1802501347, %610 ]
  %cfg_DiffPhi359 = phi i32 [ %620, %610 ]
  %623 = phi i32 [ %620, %610 ]
  %icmpEq886 = icmp eq i32 %cfg_DiffPhi359, %623
  %zext887 = zext i1 %icmpEq886 to i32
  call void @assert_ft(i32 %zext887, i32 35)
  %icmpEq884 = icmp eq i32 %cfg_DestPhi358, %622
  %624 = icmp eq i32 %622, %622
  %icmpEq888 = icmp eq i1 %icmpEq884, %624
  %zext889 = zext i1 %icmpEq888 to i32
  call void @assert_ft(i32 %zext889, i32 35)
  %zext885 = zext i1 %icmpEq884 to i32
  call void @assert_ft(i32 %zext885, i32 35)
  %625 = xor i32 %cfg_DestPhi358, %cfg_DiffPhi359
  %cfg_icmpEq360 = icmp eq i32 %625, -1751121135
  %626 = icmp eq i32 %625, -1751121135
  %icmpEq890 = icmp eq i1 %cfg_icmpEq360, %626
  %zext891 = zext i1 %icmpEq890 to i32
  call void @assert_ft(i32 %zext891, i32 35)
  %cfg_zext361 = zext i1 %cfg_icmpEq360 to i32
  call void @assert_cfg_ft(i32 %cfg_zext361, i32 %625, i32 35)
  %627 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 66)
  %628 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

629:                                              ; preds = %610
  %cfg_DestPhi362 = phi i32 [ -1802501347, %610 ]
  %630 = phi i32 [ -1802501347, %610 ]
  %cfg_DiffPhi363 = phi i32 [ %620, %610 ]
  %631 = phi i32 [ %620, %610 ]
  %icmpEq894 = icmp eq i32 %cfg_DiffPhi363, %631
  %zext895 = zext i1 %icmpEq894 to i32
  call void @assert_ft(i32 %zext895, i32 35)
  %icmpEq892 = icmp eq i32 %cfg_DestPhi362, %630
  %632 = icmp eq i32 %630, %630
  %icmpEq896 = icmp eq i1 %icmpEq892, %632
  %zext897 = zext i1 %icmpEq896 to i32
  call void @assert_ft(i32 %zext897, i32 35)
  %zext893 = zext i1 %icmpEq892 to i32
  call void @assert_ft(i32 %zext893, i32 35)
  %633 = xor i32 %cfg_DestPhi362, %cfg_DiffPhi363
  %cfg_icmpEq364 = icmp eq i32 %633, -1699740923
  %634 = icmp eq i32 %633, -1699740923
  %icmpEq898 = icmp eq i1 %cfg_icmpEq364, %634
  %zext899 = zext i1 %icmpEq898 to i32
  call void @assert_ft(i32 %zext899, i32 35)
  %cfg_zext365 = zext i1 %cfg_icmpEq364 to i32
  call void @assert_cfg_ft(i32 %cfg_zext365, i32 %633, i32 35)
  %635 = tail call double @llvm.fabs.f64(double %540)
  %636 = fcmp olt double %635, 1.000000e+04
  %637 = fcmp olt double %635, 1.000000e+04
  %icmpEq900 = icmp eq i1 %636, %637
  %zext901 = zext i1 %icmpEq900 to i32
  call void @assert_ft(i32 %zext901, i32 35)
  %638 = select i1 %636, i32 -1596980462, i32 -1648360674
  %639 = xor i32 -1699740923, %638
  br i1 %636, label %648, label %640

640:                                              ; preds = %629
  %cfg_DestPhi366 = phi i32 [ -1699740923, %629 ]
  %641 = phi i32 [ -1699740923, %629 ]
  %cfg_DiffPhi367 = phi i32 [ %639, %629 ]
  %642 = phi i32 [ %639, %629 ]
  %icmpEq904 = icmp eq i32 %cfg_DiffPhi367, %642
  %zext905 = zext i1 %icmpEq904 to i32
  call void @assert_ft(i32 %zext905, i32 35)
  %icmpEq902 = icmp eq i32 %cfg_DestPhi366, %641
  %643 = icmp eq i32 %641, %641
  %icmpEq906 = icmp eq i1 %icmpEq902, %643
  %zext907 = zext i1 %icmpEq906 to i32
  call void @assert_ft(i32 %zext907, i32 35)
  %zext903 = zext i1 %icmpEq902 to i32
  call void @assert_ft(i32 %zext903, i32 35)
  %644 = xor i32 %cfg_DestPhi366, %cfg_DiffPhi367
  %cfg_icmpEq368 = icmp eq i32 %644, -1648360674
  %645 = icmp eq i32 %644, -1648360674
  %icmpEq908 = icmp eq i1 %cfg_icmpEq368, %645
  %zext909 = zext i1 %icmpEq908 to i32
  call void @assert_ft(i32 %zext909, i32 35)
  %cfg_zext369 = zext i1 %cfg_icmpEq368 to i32
  call void @assert_cfg_ft(i32 %cfg_zext369, i32 %644, i32 35)
  %646 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 65)
  %647 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

648:                                              ; preds = %629
  %cfg_DestPhi370 = phi i32 [ -1699740923, %629 ]
  %649 = phi i32 [ -1699740923, %629 ]
  %cfg_DiffPhi371 = phi i32 [ %639, %629 ]
  %650 = phi i32 [ %639, %629 ]
  %icmpEq912 = icmp eq i32 %cfg_DiffPhi371, %650
  %zext913 = zext i1 %icmpEq912 to i32
  call void @assert_ft(i32 %zext913, i32 35)
  %icmpEq910 = icmp eq i32 %cfg_DestPhi370, %649
  %651 = icmp eq i32 %649, %649
  %icmpEq914 = icmp eq i1 %icmpEq910, %651
  %zext915 = zext i1 %icmpEq914 to i32
  call void @assert_ft(i32 %zext915, i32 35)
  %zext911 = zext i1 %icmpEq910 to i32
  call void @assert_ft(i32 %zext911, i32 35)
  %652 = xor i32 %cfg_DestPhi370, %cfg_DiffPhi371
  %cfg_icmpEq372 = icmp eq i32 %652, -1596980462
  %653 = icmp eq i32 %652, -1596980462
  %icmpEq916 = icmp eq i1 %cfg_icmpEq372, %653
  %zext917 = zext i1 %icmpEq916 to i32
  call void @assert_ft(i32 %zext917, i32 35)
  %cfg_zext373 = zext i1 %cfg_icmpEq372 to i32
  call void @assert_cfg_ft(i32 %cfg_zext373, i32 %652, i32 35)
  %654 = tail call double @llvm.fabs.f64(double %544)
  %655 = fcmp olt double %654, 1.000000e+04
  %656 = fcmp olt double %654, 1.000000e+04
  %icmpEq918 = icmp eq i1 %655, %656
  %zext919 = zext i1 %icmpEq918 to i32
  call void @assert_ft(i32 %zext919, i32 35)
  %657 = select i1 %655, i32 -1494219751, i32 -1545600250
  %658 = xor i32 -1596980462, %657
  br i1 %655, label %667, label %659

659:                                              ; preds = %648
  %cfg_DestPhi374 = phi i32 [ -1596980462, %648 ]
  %660 = phi i32 [ -1596980462, %648 ]
  %cfg_DiffPhi375 = phi i32 [ %658, %648 ]
  %661 = phi i32 [ %658, %648 ]
  %icmpEq922 = icmp eq i32 %cfg_DiffPhi375, %661
  %zext923 = zext i1 %icmpEq922 to i32
  call void @assert_ft(i32 %zext923, i32 35)
  %icmpEq920 = icmp eq i32 %cfg_DestPhi374, %660
  %662 = icmp eq i32 %660, %660
  %icmpEq924 = icmp eq i1 %icmpEq920, %662
  %zext925 = zext i1 %icmpEq924 to i32
  call void @assert_ft(i32 %zext925, i32 35)
  %zext921 = zext i1 %icmpEq920 to i32
  call void @assert_ft(i32 %zext921, i32 35)
  %663 = xor i32 %cfg_DestPhi374, %cfg_DiffPhi375
  %cfg_icmpEq376 = icmp eq i32 %663, -1545600250
  %664 = icmp eq i32 %663, -1545600250
  %icmpEq926 = icmp eq i1 %cfg_icmpEq376, %664
  %zext927 = zext i1 %icmpEq926 to i32
  call void @assert_ft(i32 %zext927, i32 35)
  %cfg_zext377 = zext i1 %cfg_icmpEq376 to i32
  call void @assert_cfg_ft(i32 %cfg_zext377, i32 %663, i32 35)
  %665 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 64)
  %666 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

667:                                              ; preds = %648
  %cfg_DestPhi378 = phi i32 [ -1596980462, %648 ]
  %668 = phi i32 [ -1596980462, %648 ]
  %cfg_DiffPhi379 = phi i32 [ %658, %648 ]
  %669 = phi i32 [ %658, %648 ]
  %icmpEq930 = icmp eq i32 %cfg_DiffPhi379, %669
  %zext931 = zext i1 %icmpEq930 to i32
  call void @assert_ft(i32 %zext931, i32 35)
  %icmpEq928 = icmp eq i32 %cfg_DestPhi378, %668
  %670 = icmp eq i32 %668, %668
  %icmpEq932 = icmp eq i1 %icmpEq928, %670
  %zext933 = zext i1 %icmpEq932 to i32
  call void @assert_ft(i32 %zext933, i32 35)
  %zext929 = zext i1 %icmpEq928 to i32
  call void @assert_ft(i32 %zext929, i32 35)
  %671 = xor i32 %cfg_DestPhi378, %cfg_DiffPhi379
  %cfg_icmpEq380 = icmp eq i32 %671, -1494219751
  %672 = icmp eq i32 %671, -1494219751
  %icmpEq934 = icmp eq i1 %cfg_icmpEq380, %672
  %zext935 = zext i1 %icmpEq934 to i32
  call void @assert_ft(i32 %zext935, i32 35)
  %cfg_zext381 = zext i1 %cfg_icmpEq380 to i32
  call void @assert_cfg_ft(i32 %cfg_zext381, i32 %671, i32 35)
  %673 = getelementptr inbounds %struct.bnode, ptr %.0154, i64 0, i32 10
  %674 = load ptr, ptr %673, align 8
  %675 = load ptr, ptr %673, align 8
  %.not117 = icmp eq ptr %674, null
  %676 = icmp eq ptr %675, null
  %icmpEq936 = icmp eq i1 %.not117, %676
  %zext937 = zext i1 %icmpEq936 to i32
  call void @assert_ft(i32 %zext937, i32 35)
  %677 = select i1 %.not117, i32 -1442840318, i32 231737359
  %678 = xor i32 -1494219751, %677
  br i1 %.not117, label %._crit_edge, label %.preheader140

._crit_edge:                                      ; preds = %667, %2
  %cfg_DestPhi382 = phi i32 [ -1494219751, %667 ], [ 128975389, %2 ]
  %679 = phi i32 [ -1494219751, %667 ], [ 128975389, %2 ]
  %cfg_DiffPhi383 = phi i32 [ %678, %667 ], [ %5, %2 ]
  %680 = phi i32 [ %678, %667 ], [ %5, %2 ]
  %icmpEq940 = icmp eq i32 %cfg_DiffPhi383, %680
  %zext941 = zext i1 %icmpEq940 to i32
  call void @assert_ft(i32 %zext941, i32 35)
  %icmpEq938 = icmp eq i32 %cfg_DestPhi382, %679
  %681 = icmp eq i32 %679, %679
  %icmpEq942 = icmp eq i1 %icmpEq938, %681
  %zext943 = zext i1 %icmpEq942 to i32
  call void @assert_ft(i32 %zext943, i32 35)
  %zext939 = zext i1 %icmpEq938 to i32
  call void @assert_ft(i32 %zext939, i32 35)
  %682 = xor i32 %cfg_DestPhi382, %cfg_DiffPhi383
  %cfg_icmpEq384 = icmp eq i32 %682, -1442840318
  %683 = icmp eq i32 %682, -1442840318
  %icmpEq944 = icmp eq i1 %cfg_icmpEq384, %683
  %zext945 = zext i1 %icmpEq944 to i32
  call void @assert_ft(i32 %zext945, i32 35)
  %cfg_zext385 = zext i1 %cfg_icmpEq384 to i32
  call void @assert_cfg_ft(i32 %cfg_zext385, i32 %682, i32 35)
  ret i32 0
}

declare i32 @isnan(...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare i32 @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #8 {
  %.not1112 = icmp eq ptr %2, null
  %6 = icmp eq ptr %2, null
  %icmpEq = icmp eq i1 %.not1112, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = select i1 %.not1112, i32 231735577, i32 180356634
  %8 = xor i32 128975389, %7
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %5
  %.013 = phi ptr [ %18, %.lr.ph ], [ %2, %5 ]
  %9 = phi ptr [ %19, %.lr.ph ], [ %2, %5 ]
  %cfg_DestPhi = phi i32 [ 128975389, %5 ], [ 180356634, %.lr.ph ]
  %10 = phi i32 [ 128975389, %5 ], [ 180356634, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %8, %5 ], [ %22, %.lr.ph ]
  %11 = phi i32 [ %8, %5 ], [ %22, %.lr.ph ]
  %icmpEq20 = icmp eq i32 %cfg_DiffPhi, %11
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %icmpEq18 = icmp eq i32 %cfg_DestPhi, %10
  %12 = icmp eq i32 %10, %10
  %icmpEq22 = icmp eq i1 %icmpEq18, %12
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %13 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %13, 180356634
  %14 = icmp eq i32 %13, 180356634
  %icmpEq24 = icmp eq i1 %cfg_icmpEq, %14
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %13, i32 35)
  %15 = tail call i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef nonnull %.013, i32 poison, double poison)
  %16 = getelementptr inbounds %struct.bnode, ptr %.013, i64 0, i32 10
  %17 = getelementptr inbounds %struct.bnode, ptr %9, i64 0, i32 10
  %18 = load ptr, ptr %16, align 8
  %19 = load ptr, ptr %17, align 8
  %.not11 = icmp eq ptr %18, null
  %20 = icmp eq ptr %19, null
  %icmpEq26 = icmp eq i1 %.not11, %20
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %21 = select i1 %.not11, i32 231735577, i32 180356634
  %22 = xor i32 180356634, %21
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %5
  %cfg_DestPhi14 = phi i32 [ 180356634, %.lr.ph ], [ 128975389, %5 ]
  %23 = phi i32 [ 180356634, %.lr.ph ], [ 128975389, %5 ]
  %cfg_DiffPhi15 = phi i32 [ %22, %.lr.ph ], [ %8, %5 ]
  %24 = phi i32 [ %22, %.lr.ph ], [ %8, %5 ]
  %icmpEq30 = icmp eq i32 %cfg_DiffPhi15, %24
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %icmpEq28 = icmp eq i32 %cfg_DestPhi14, %23
  %25 = icmp eq i32 %23, %23
  %icmpEq32 = icmp eq i1 %icmpEq28, %25
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %26 = xor i32 %cfg_DestPhi14, %cfg_DiffPhi15
  %cfg_icmpEq16 = icmp eq i32 %26, 231735577
  %27 = icmp eq i32 %26, 231735577
  %icmpEq34 = icmp eq i1 %cfg_icmpEq16, %27
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %cfg_zext17 = zext i1 %cfg_icmpEq16 to i32
  call void @assert_cfg_ft(i32 %cfg_zext17, i32 %26, i32 35)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @gravstep(double noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, double %4) local_unnamed_addr #12 {
  %6 = tail call i32 @hackgrav(ptr noundef %2, double noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @hackgrav(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #12 {
  %4 = alloca %struct.hgstruct, align 8
  %5 = alloca %struct.hgstruct, align 8
  store ptr %0, ptr %4, align 8
  %scevgep = getelementptr inbounds i8, ptr %4, i64 8
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %scevgep23 = getelementptr i8, ptr %0, i64 16
  %7 = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep, ptr noundef nonnull align 8 dereferenceable(24) %scevgep23, i64 24, i1 false)
  %8 = getelementptr inbounds %struct.hgstruct, ptr %4, i64 0, i32 2
  %9 = getelementptr inbounds %struct.hgstruct, ptr %4, i64 0, i32 2
  %scevgep24 = getelementptr inbounds i8, ptr %4, i64 40
  %10 = getelementptr inbounds i8, ptr %4, i64 40
  %11 = fmul double %1, %1
  %12 = fmul double %1, %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %5, ptr noundef %2, double noundef %11, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false)
  %13 = load double, ptr %8, align 8
  %14 = load double, ptr %9, align 8
  %15 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 8
  %16 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 8
  store double %13, ptr %15, align 8
  %scevgep25 = getelementptr i8, ptr %0, i64 96
  %17 = getelementptr i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep25, ptr noundef nonnull align 8 dereferenceable(24) %scevgep24, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @walksub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr noundef readonly %1, double noundef %2, double noundef %3, ptr nocapture noundef byval(%struct.hgstruct) align 8 %4, i32 noundef %5) local_unnamed_addr #12 {
  %7 = alloca %struct.hgstruct, align 8
  %8 = alloca %struct.hgstruct, align 8
  %9 = tail call signext i16 @subdivp(ptr noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4), !range !6
  %.not = icmp eq i16 %9, 0
  %10 = icmp eq i16 %9, 0
  %icmpEq = icmp eq i1 %.not, %10
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %11 = select i1 %.not, i32 1002439430, i32 180356634
  %12 = xor i32 128976145, %11
  br i1 %.not, label %174, label %.preheader

.preheader:                                       ; preds = %6
  %cfg_DestPhi = phi i32 [ 128976145, %6 ]
  %13 = phi i32 [ 128976145, %6 ]
  %14 = phi i32 [ 128976145, %6 ]
  %15 = phi i32 [ 128976145, %6 ]
  %cfg_DiffPhi = phi i32 [ %12, %6 ]
  %16 = phi i32 [ %12, %6 ]
  %17 = phi i32 [ %12, %6 ]
  %18 = phi i32 [ %12, %6 ]
  %icmpEq112 = icmp eq i32 %17, %18
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq110 = icmp eq i32 %cfg_DiffPhi, %16
  %19 = icmp eq i32 %16, %16
  %icmpEq114 = icmp eq i1 %icmpEq110, %19
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %icmpEq108 = icmp eq i32 %14, %15
  %zext109 = zext i1 %icmpEq108 to i32
  %20 = zext i1 %icmpEq108 to i32
  %icmpEq116 = icmp eq i32 %zext109, %20
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  call void @assert_ft(i32 %zext109, i32 35)
  %icmpEq106 = icmp eq i32 %cfg_DestPhi, %13
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq96 = icmp eq i32 %cfg_DiffPhi, %17
  %21 = icmp eq i32 %16, %18
  %icmpEq118 = icmp eq i1 %icmpEq96, %21
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %cfg_DestPhi, %14
  %22 = icmp eq i32 %13, %15
  %23 = icmp eq i32 %13, %15
  %icmpEq120 = icmp eq i1 %22, %23
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %icmpEq98 = icmp eq i1 %icmpEq94, %22
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  %24 = zext i1 %22 to i32
  %icmpEq122 = icmp eq i32 %zext95, %24
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  call void @assert_ft(i32 %zext95, i32 35)
  %25 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %25, 180356634
  %26 = icmp eq i32 %25, 180356634
  %27 = icmp eq i32 %25, 180356634
  %icmpEq124 = icmp eq i1 %26, %27
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq100 = icmp eq i1 %cfg_icmpEq, %26
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %28 = zext i1 %26 to i32
  %icmpEq126 = icmp eq i32 %cfg_zext, %28
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %25, i32 35)
  %29 = fmul double %2, 2.500000e-01
  %30 = add nsw i32 %5, 1
  %31 = add nsw i32 %5, 1
  %32 = add nsw i32 %5, 1
  %icmpEq128 = icmp eq i32 %31, %32
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq102 = icmp eq i32 %30, %31
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %33 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 0
  %34 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 0
  %35 = load ptr, ptr %33, align 8
  %36 = load ptr, ptr %34, align 8
  %.not16 = icmp eq ptr %35, null
  %37 = icmp eq ptr %36, null
  %icmpEq130 = icmp eq i1 %.not16, %37
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %38 = select i1 %.not16, i32 283116554, i32 231736065
  %39 = select i1 %37, i32 283116554, i32 231736065
  %icmpEq104 = icmp eq i32 %38, %39
  %zext105 = zext i1 %icmpEq104 to i32
  %40 = zext i1 %icmpEq104 to i32
  %icmpEq132 = icmp eq i32 %zext105, %40
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  call void @assert_ft(i32 %zext105, i32 35)
  %41 = xor i32 180356634, %38
  br i1 %.not16, label %48, label %42

42:                                               ; preds = %.preheader
  %cfg_DestPhi18 = phi i32 [ 180356634, %.preheader ]
  %43 = phi i32 [ 180356634, %.preheader ]
  %cfg_DiffPhi19 = phi i32 [ %41, %.preheader ]
  %44 = phi i32 [ %41, %.preheader ]
  %icmpEq136 = icmp eq i32 %cfg_DiffPhi19, %44
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %icmpEq134 = icmp eq i32 %cfg_DestPhi18, %43
  %45 = icmp eq i32 %43, %43
  %icmpEq138 = icmp eq i1 %icmpEq134, %45
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %46 = xor i32 %cfg_DestPhi18, %cfg_DiffPhi19
  %cfg_icmpEq20 = icmp eq i32 %46, 231736065
  %47 = icmp eq i32 %46, 231736065
  %icmpEq140 = icmp eq i1 %cfg_icmpEq20, %47
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %cfg_zext21 = zext i1 %cfg_icmpEq20 to i32
  call void @assert_cfg_ft(i32 %cfg_zext21, i32 %46, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %35, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %48

48:                                               ; preds = %42, %.preheader
  %cfg_DestPhi22 = phi i32 [ 180356634, %.preheader ], [ 231736065, %42 ]
  %49 = phi i32 [ 180356634, %.preheader ], [ 231736065, %42 ]
  %cfg_DiffPhi23 = phi i32 [ %41, %.preheader ], [ 489686795, %42 ]
  %50 = phi i32 [ %41, %.preheader ], [ 489686795, %42 ]
  %icmpEq144 = icmp eq i32 %cfg_DiffPhi23, %50
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %icmpEq142 = icmp eq i32 %cfg_DestPhi22, %49
  %51 = icmp eq i32 %49, %49
  %icmpEq146 = icmp eq i1 %icmpEq142, %51
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %52 = xor i32 %cfg_DestPhi22, %cfg_DiffPhi23
  %cfg_icmpEq24 = icmp eq i32 %52, 283116554
  %53 = icmp eq i32 %52, 283116554
  %icmpEq148 = icmp eq i1 %cfg_icmpEq24, %53
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %cfg_zext25 = zext i1 %cfg_icmpEq24 to i32
  call void @assert_cfg_ft(i32 %cfg_zext25, i32 %52, i32 35)
  %54 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 1
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %54, align 8
  %.not16.1 = icmp eq ptr %55, null
  %57 = icmp eq ptr %56, null
  %icmpEq150 = icmp eq i1 %.not16.1, %57
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %58 = select i1 %.not16.1, i32 385877007, i32 334496526
  %59 = xor i32 283116554, %58
  br i1 %.not16.1, label %66, label %60

60:                                               ; preds = %48
  %cfg_DestPhi26 = phi i32 [ 283116554, %48 ]
  %61 = phi i32 [ 283116554, %48 ]
  %cfg_DiffPhi27 = phi i32 [ %59, %48 ]
  %62 = phi i32 [ %59, %48 ]
  %icmpEq154 = icmp eq i32 %cfg_DiffPhi27, %62
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %icmpEq152 = icmp eq i32 %cfg_DestPhi26, %61
  %63 = icmp eq i32 %61, %61
  %icmpEq156 = icmp eq i1 %icmpEq152, %63
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %64 = xor i32 %cfg_DestPhi26, %cfg_DiffPhi27
  %cfg_icmpEq28 = icmp eq i32 %64, 334496526
  %65 = icmp eq i32 %64, 334496526
  %icmpEq158 = icmp eq i1 %cfg_icmpEq28, %65
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %cfg_zext29 = zext i1 %cfg_icmpEq28 to i32
  call void @assert_cfg_ft(i32 %cfg_zext29, i32 %64, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %55, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %66

66:                                               ; preds = %60, %48
  %cfg_DestPhi30 = phi i32 [ 334496526, %60 ], [ 283116554, %48 ]
  %67 = phi i32 [ 334496526, %60 ], [ 283116554, %48 ]
  %cfg_DiffPhi31 = phi i32 [ 82839297, %60 ], [ %59, %48 ]
  %68 = phi i32 [ 82839297, %60 ], [ %59, %48 ]
  %icmpEq162 = icmp eq i32 %cfg_DiffPhi31, %68
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %icmpEq160 = icmp eq i32 %cfg_DestPhi30, %67
  %69 = icmp eq i32 %67, %67
  %icmpEq164 = icmp eq i1 %icmpEq160, %69
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %70 = xor i32 %cfg_DestPhi30, %cfg_DiffPhi31
  %cfg_icmpEq32 = icmp eq i32 %70, 385877007
  %71 = icmp eq i32 %70, 385877007
  %icmpEq166 = icmp eq i1 %cfg_icmpEq32, %71
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %cfg_zext33 = zext i1 %cfg_icmpEq32 to i32
  call void @assert_cfg_ft(i32 %cfg_zext33, i32 %70, i32 35)
  %72 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = load ptr, ptr %72, align 8
  %.not16.2 = icmp eq ptr %73, null
  %75 = icmp eq ptr %74, null
  %icmpEq168 = icmp eq i1 %.not16.2, %75
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %76 = select i1 %.not16.2, i32 488637460, i32 437256987
  %77 = xor i32 385877007, %76
  br i1 %.not16.2, label %84, label %78

78:                                               ; preds = %66
  %cfg_DestPhi34 = phi i32 [ 385877007, %66 ]
  %79 = phi i32 [ 385877007, %66 ]
  %cfg_DiffPhi35 = phi i32 [ %77, %66 ]
  %80 = phi i32 [ %77, %66 ]
  %icmpEq172 = icmp eq i32 %cfg_DiffPhi35, %80
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq170 = icmp eq i32 %cfg_DestPhi34, %79
  %81 = icmp eq i32 %79, %79
  %icmpEq174 = icmp eq i1 %icmpEq170, %81
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %82 = xor i32 %cfg_DestPhi34, %cfg_DiffPhi35
  %cfg_icmpEq36 = icmp eq i32 %82, 437256987
  %83 = icmp eq i32 %82, 437256987
  %icmpEq176 = icmp eq i1 %cfg_icmpEq36, %83
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %cfg_zext37 = zext i1 %cfg_icmpEq36 to i32
  call void @assert_cfg_ft(i32 %cfg_zext37, i32 %82, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %73, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %84

84:                                               ; preds = %78, %66
  %cfg_DestPhi38 = phi i32 [ 437256987, %78 ], [ 385877007, %66 ]
  %85 = phi i32 [ 437256987, %78 ], [ 385877007, %66 ]
  %cfg_DiffPhi39 = phi i32 [ 120588047, %78 ], [ %77, %66 ]
  %86 = phi i32 [ 120588047, %78 ], [ %77, %66 ]
  %icmpEq180 = icmp eq i32 %cfg_DiffPhi39, %86
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %icmpEq178 = icmp eq i32 %cfg_DestPhi38, %85
  %87 = icmp eq i32 %85, %85
  %icmpEq182 = icmp eq i1 %icmpEq178, %87
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %88 = xor i32 %cfg_DestPhi38, %cfg_DiffPhi39
  %cfg_icmpEq40 = icmp eq i32 %88, 488637460
  %89 = icmp eq i32 %88, 488637460
  %icmpEq184 = icmp eq i1 %cfg_icmpEq40, %89
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %cfg_zext41 = zext i1 %cfg_icmpEq40 to i32
  call void @assert_cfg_ft(i32 %cfg_zext41, i32 %88, i32 35)
  %90 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = load ptr, ptr %90, align 8
  %.not16.3 = icmp eq ptr %91, null
  %93 = icmp eq ptr %92, null
  %icmpEq186 = icmp eq i1 %.not16.3, %93
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %94 = select i1 %.not16.3, i32 591397913, i32 540017411
  %95 = xor i32 488637460, %94
  br i1 %.not16.3, label %102, label %96

96:                                               ; preds = %84
  %cfg_DestPhi42 = phi i32 [ 488637460, %84 ]
  %97 = phi i32 [ 488637460, %84 ]
  %cfg_DiffPhi43 = phi i32 [ %95, %84 ]
  %98 = phi i32 [ %95, %84 ]
  %icmpEq190 = icmp eq i32 %cfg_DiffPhi43, %98
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %icmpEq188 = icmp eq i32 %cfg_DestPhi42, %97
  %99 = icmp eq i32 %97, %97
  %icmpEq192 = icmp eq i1 %icmpEq188, %99
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %100 = xor i32 %cfg_DestPhi42, %cfg_DiffPhi43
  %cfg_icmpEq44 = icmp eq i32 %100, 540017411
  %101 = icmp eq i32 %100, 540017411
  %icmpEq194 = icmp eq i1 %cfg_icmpEq44, %101
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %cfg_zext45 = zext i1 %cfg_icmpEq44 to i32
  call void @assert_cfg_ft(i32 %cfg_zext45, i32 %100, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %91, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %102

102:                                              ; preds = %96, %84
  %cfg_DestPhi46 = phi i32 [ 540017411, %96 ], [ 488637460, %84 ]
  %103 = phi i32 [ 540017411, %96 ], [ 488637460, %84 ]
  %cfg_DiffPhi47 = phi i32 [ 57673498, %96 ], [ %95, %84 ]
  %104 = phi i32 [ 57673498, %96 ], [ %95, %84 ]
  %icmpEq198 = icmp eq i32 %cfg_DiffPhi47, %104
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %cfg_DestPhi46, %103
  %105 = icmp eq i32 %103, %103
  %icmpEq200 = icmp eq i1 %icmpEq196, %105
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %106 = xor i32 %cfg_DestPhi46, %cfg_DiffPhi47
  %cfg_icmpEq48 = icmp eq i32 %106, 591397913
  %107 = icmp eq i32 %106, 591397913
  %icmpEq202 = icmp eq i1 %cfg_icmpEq48, %107
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %cfg_zext49 = zext i1 %cfg_icmpEq48 to i32
  call void @assert_cfg_ft(i32 %cfg_zext49, i32 %106, i32 35)
  %108 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 4
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %108, align 8
  %.not16.4 = icmp eq ptr %109, null
  %111 = icmp eq ptr %110, null
  %icmpEq204 = icmp eq i1 %.not16.4, %111
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  %112 = select i1 %.not16.4, i32 694158366, i32 642777872
  %113 = xor i32 591397913, %112
  br i1 %.not16.4, label %120, label %114

114:                                              ; preds = %102
  %cfg_DestPhi50 = phi i32 [ 591397913, %102 ]
  %115 = phi i32 [ 591397913, %102 ]
  %cfg_DiffPhi51 = phi i32 [ %113, %102 ]
  %116 = phi i32 [ %113, %102 ]
  %icmpEq208 = icmp eq i32 %cfg_DiffPhi51, %116
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %cfg_DestPhi50, %115
  %117 = icmp eq i32 %115, %115
  %icmpEq210 = icmp eq i1 %icmpEq206, %117
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %118 = xor i32 %cfg_DestPhi50, %cfg_DiffPhi51
  %cfg_icmpEq52 = icmp eq i32 %118, 642777872
  %119 = icmp eq i32 %118, 642777872
  %icmpEq212 = icmp eq i1 %cfg_icmpEq52, %119
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %cfg_zext53 = zext i1 %cfg_icmpEq52 to i32
  call void @assert_cfg_ft(i32 %cfg_zext53, i32 %118, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %109, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %120

120:                                              ; preds = %114, %102
  %cfg_DestPhi54 = phi i32 [ 642777872, %114 ], [ 591397913, %102 ]
  %121 = phi i32 [ 642777872, %114 ], [ 591397913, %102 ]
  %cfg_DiffPhi55 = phi i32 [ 254805774, %114 ], [ %113, %102 ]
  %122 = phi i32 [ 254805774, %114 ], [ %113, %102 ]
  %icmpEq216 = icmp eq i32 %cfg_DiffPhi55, %122
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %icmpEq214 = icmp eq i32 %cfg_DestPhi54, %121
  %123 = icmp eq i32 %121, %121
  %icmpEq218 = icmp eq i1 %icmpEq214, %123
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %124 = xor i32 %cfg_DestPhi54, %cfg_DiffPhi55
  %cfg_icmpEq56 = icmp eq i32 %124, 694158366
  %125 = icmp eq i32 %124, 694158366
  %icmpEq220 = icmp eq i1 %cfg_icmpEq56, %125
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %cfg_zext57 = zext i1 %cfg_icmpEq56 to i32
  call void @assert_cfg_ft(i32 %cfg_zext57, i32 %124, i32 35)
  %126 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 5
  %127 = load ptr, ptr %126, align 8
  %128 = load ptr, ptr %126, align 8
  %.not16.5 = icmp eq ptr %127, null
  %129 = icmp eq ptr %128, null
  %icmpEq222 = icmp eq i1 %.not16.5, %129
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %130 = select i1 %.not16.5, i32 796918819, i32 745538333
  %131 = xor i32 694158366, %130
  br i1 %.not16.5, label %138, label %132

132:                                              ; preds = %120
  %cfg_DestPhi58 = phi i32 [ 694158366, %120 ]
  %133 = phi i32 [ 694158366, %120 ]
  %cfg_DiffPhi59 = phi i32 [ %131, %120 ]
  %134 = phi i32 [ %131, %120 ]
  %icmpEq226 = icmp eq i32 %cfg_DiffPhi59, %134
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %icmpEq224 = icmp eq i32 %cfg_DestPhi58, %133
  %135 = icmp eq i32 %133, %133
  %icmpEq228 = icmp eq i1 %icmpEq224, %135
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %136 = xor i32 %cfg_DestPhi58, %cfg_DiffPhi59
  %cfg_icmpEq60 = icmp eq i32 %136, 745538333
  %137 = icmp eq i32 %136, 745538333
  %icmpEq230 = icmp eq i1 %cfg_icmpEq60, %137
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %cfg_zext61 = zext i1 %cfg_icmpEq60 to i32
  call void @assert_cfg_ft(i32 %cfg_zext61, i32 %136, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %127, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %138

138:                                              ; preds = %132, %120
  %cfg_DestPhi62 = phi i32 [ 745538333, %132 ], [ 694158366, %120 ]
  %139 = phi i32 [ 745538333, %132 ], [ 694158366, %120 ]
  %cfg_DiffPhi63 = phi i32 [ 66062142, %132 ], [ %131, %120 ]
  %140 = phi i32 [ 66062142, %132 ], [ %131, %120 ]
  %icmpEq234 = icmp eq i32 %cfg_DiffPhi63, %140
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq232 = icmp eq i32 %cfg_DestPhi62, %139
  %141 = icmp eq i32 %139, %139
  %icmpEq236 = icmp eq i1 %icmpEq232, %141
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %142 = xor i32 %cfg_DestPhi62, %cfg_DiffPhi63
  %cfg_icmpEq64 = icmp eq i32 %142, 796918819
  %143 = icmp eq i32 %142, 796918819
  %icmpEq238 = icmp eq i1 %cfg_icmpEq64, %143
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %cfg_zext65 = zext i1 %cfg_icmpEq64 to i32
  call void @assert_cfg_ft(i32 %cfg_zext65, i32 %142, i32 35)
  %144 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 6
  %145 = load ptr, ptr %144, align 8
  %146 = load ptr, ptr %144, align 8
  %.not16.6 = icmp eq ptr %145, null
  %147 = icmp eq ptr %146, null
  %icmpEq240 = icmp eq i1 %.not16.6, %147
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %148 = select i1 %.not16.6, i32 899679235, i32 848298757
  %149 = xor i32 796918819, %148
  br i1 %.not16.6, label %156, label %150

150:                                              ; preds = %138
  %cfg_DestPhi66 = phi i32 [ 796918819, %138 ]
  %151 = phi i32 [ 796918819, %138 ]
  %cfg_DiffPhi67 = phi i32 [ %149, %138 ]
  %152 = phi i32 [ %149, %138 ]
  %icmpEq244 = icmp eq i32 %cfg_DiffPhi67, %152
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %icmpEq242 = icmp eq i32 %cfg_DestPhi66, %151
  %153 = icmp eq i32 %151, %151
  %icmpEq246 = icmp eq i1 %icmpEq242, %153
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %154 = xor i32 %cfg_DestPhi66, %cfg_DiffPhi67
  %cfg_icmpEq68 = icmp eq i32 %154, 848298757
  %155 = icmp eq i32 %154, 848298757
  %icmpEq248 = icmp eq i1 %cfg_icmpEq68, %155
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %cfg_zext69 = zext i1 %cfg_icmpEq68 to i32
  call void @assert_cfg_ft(i32 %cfg_zext69, i32 %154, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %145, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false)
  br label %156

156:                                              ; preds = %150, %138
  %cfg_DestPhi70 = phi i32 [ 848298757, %150 ], [ 796918819, %138 ]
  %157 = phi i32 [ 848298757, %150 ], [ 796918819, %138 ]
  %cfg_DiffPhi71 = phi i32 [ 120588038, %150 ], [ %149, %138 ]
  %158 = phi i32 [ 120588038, %150 ], [ %149, %138 ]
  %icmpEq252 = icmp eq i32 %cfg_DiffPhi71, %158
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq250 = icmp eq i32 %cfg_DestPhi70, %157
  %159 = icmp eq i32 %157, %157
  %icmpEq254 = icmp eq i1 %icmpEq250, %159
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %160 = xor i32 %cfg_DestPhi70, %cfg_DiffPhi71
  %cfg_icmpEq72 = icmp eq i32 %160, 899679235
  %161 = icmp eq i32 %160, 899679235
  %icmpEq256 = icmp eq i1 %cfg_icmpEq72, %161
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %cfg_zext73 = zext i1 %cfg_icmpEq72 to i32
  call void @assert_cfg_ft(i32 %cfg_zext73, i32 %160, i32 35)
  %162 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 7
  %163 = load ptr, ptr %162, align 8
  %164 = load ptr, ptr %162, align 8
  %.not16.7 = icmp eq ptr %163, null
  %165 = icmp eq ptr %164, null
  %icmpEq258 = icmp eq i1 %.not16.7, %165
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %166 = select i1 %.not16.7, i32 1156579857, i32 951058956
  %167 = xor i32 899679235, %166
  br i1 %.not16.7, label %.loopexit, label %168

168:                                              ; preds = %156
  %cfg_DestPhi74 = phi i32 [ 899679235, %156 ]
  %169 = phi i32 [ 899679235, %156 ]
  %cfg_DiffPhi75 = phi i32 [ %167, %156 ]
  %170 = phi i32 [ %167, %156 ]
  %icmpEq262 = icmp eq i32 %cfg_DiffPhi75, %170
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %icmpEq260 = icmp eq i32 %cfg_DestPhi74, %169
  %171 = icmp eq i32 %169, %169
  %icmpEq264 = icmp eq i1 %icmpEq260, %171
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %172 = xor i32 %cfg_DestPhi74, %cfg_DiffPhi75
  %cfg_icmpEq76 = icmp eq i32 %172, 951058956
  %173 = icmp eq i32 %172, 951058956
  %icmpEq266 = icmp eq i1 %cfg_icmpEq76, %173
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %cfg_zext77 = zext i1 %cfg_icmpEq76 to i32
  call void @assert_cfg_ft(i32 %cfg_zext77, i32 %172, i32 35)
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %163, double noundef %29, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %30)
  br label %.loopexit.sink.split

174:                                              ; preds = %6
  %cfg_DestPhi78 = phi i32 [ 128976145, %6 ]
  %175 = phi i32 [ 128976145, %6 ]
  %cfg_DiffPhi79 = phi i32 [ %12, %6 ]
  %176 = phi i32 [ %12, %6 ]
  %icmpEq270 = icmp eq i32 %cfg_DiffPhi79, %176
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %icmpEq268 = icmp eq i32 %cfg_DestPhi78, %175
  %177 = icmp eq i32 %175, %175
  %icmpEq272 = icmp eq i1 %icmpEq268, %177
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %178 = xor i32 %cfg_DestPhi78, %cfg_DiffPhi79
  %cfg_icmpEq80 = icmp eq i32 %178, 1002439430
  %179 = icmp eq i32 %178, 1002439430
  %icmpEq274 = icmp eq i1 %cfg_icmpEq80, %179
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %cfg_zext81 = zext i1 %cfg_icmpEq80 to i32
  call void @assert_cfg_ft(i32 %cfg_zext81, i32 %178, i32 35)
  %180 = load ptr, ptr %4, align 8
  %.not15 = icmp eq ptr %180, %1
  %181 = icmp eq ptr %180, %1
  %icmpEq276 = icmp eq i1 %.not15, %181
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %182 = select i1 %.not15, i32 1156579857, i32 1053819425
  %183 = xor i32 1002439430, %182
  br i1 %.not15, label %.loopexit, label %184

184:                                              ; preds = %174
  %cfg_DestPhi82 = phi i32 [ 1002439430, %174 ]
  %185 = phi i32 [ 1002439430, %174 ]
  %cfg_DiffPhi83 = phi i32 [ %183, %174 ]
  %186 = phi i32 [ %183, %174 ]
  %icmpEq280 = icmp eq i32 %cfg_DiffPhi83, %186
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq278 = icmp eq i32 %cfg_DestPhi82, %185
  %187 = icmp eq i32 %185, %185
  %icmpEq282 = icmp eq i1 %icmpEq278, %187
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %188 = xor i32 %cfg_DestPhi82, %cfg_DiffPhi83
  %cfg_icmpEq84 = icmp eq i32 %188, 1053819425
  %189 = icmp eq i32 %188, 1053819425
  %icmpEq284 = icmp eq i1 %cfg_icmpEq84, %189
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %cfg_zext85 = zext i1 %cfg_icmpEq84 to i32
  call void @assert_cfg_ft(i32 %cfg_zext85, i32 %188, i32 35)
  call void @gravsub(ptr nonnull sret(%struct.hgstruct) align 8 %8, ptr noundef %1, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %184, %168
  %.sink = phi ptr [ %7, %168 ], [ %8, %184 ]
  %190 = phi ptr [ %7, %168 ], [ %8, %184 ]
  %cfg_DestPhi86 = phi i32 [ 1053819425, %184 ], [ 951058956, %168 ]
  %191 = phi i32 [ 1053819425, %184 ], [ 951058956, %168 ]
  %cfg_DiffPhi87 = phi i32 [ 2133852466, %184 ], [ 2035286303, %168 ]
  %192 = phi i32 [ 2133852466, %184 ], [ 2035286303, %168 ]
  %icmpEq288 = icmp eq i32 %cfg_DiffPhi87, %192
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %cfg_DestPhi86, %191
  %193 = icmp eq i32 %191, %191
  %icmpEq290 = icmp eq i1 %icmpEq286, %193
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %194 = xor i32 %cfg_DestPhi86, %cfg_DiffPhi87
  %cfg_icmpEq88 = icmp eq i32 %194, 1105199891
  %195 = icmp eq i32 %194, 1105199891
  %icmpEq292 = icmp eq i1 %cfg_icmpEq88, %195
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %cfg_zext89 = zext i1 %cfg_icmpEq88 to i32
  call void @assert_cfg_ft(i32 %cfg_zext89, i32 %194, i32 35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %.sink, i64 64, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %174, %156
  %cfg_DestPhi90 = phi i32 [ 1105199891, %.loopexit.sink.split ], [ 899679235, %156 ], [ 1002439430, %174 ]
  %196 = phi i32 [ 1105199891, %.loopexit.sink.split ], [ 899679235, %156 ], [ 1002439430, %174 ]
  %cfg_DiffPhi91 = phi i32 [ 84934914, %.loopexit.sink.split ], [ %167, %156 ], [ %183, %174 ]
  %197 = phi i32 [ 84934914, %.loopexit.sink.split ], [ %167, %156 ], [ %183, %174 ]
  %icmpEq296 = icmp eq i32 %cfg_DiffPhi91, %197
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %icmpEq294 = icmp eq i32 %cfg_DestPhi90, %196
  %198 = icmp eq i32 %196, %196
  %icmpEq298 = icmp eq i1 %icmpEq294, %198
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %199 = xor i32 %cfg_DestPhi90, %cfg_DiffPhi91
  %cfg_icmpEq92 = icmp eq i32 %199, 1156579857
  %200 = icmp eq i32 %199, 1156579857
  %icmpEq300 = icmp eq i1 %cfg_icmpEq92, %200
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %cfg_zext93 = zext i1 %cfg_icmpEq92 to i32
  call void @assert_cfg_ft(i32 %cfg_zext93, i32 %199, i32 35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @subdivp(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.hgstruct) align 8 %3) local_unnamed_addr #5 {
  %5 = load i16, ptr %0, align 8
  %6 = load i16, ptr %0, align 8
  %icmpEq = icmp eq i16 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = icmp eq i16 %5, 1
  %8 = select i1 %7, i32 231735821, i32 180360713
  %9 = xor i32 128975641, %8
  br i1 %7, label %182, label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %4
  %cfg_DestPhi = phi i32 [ 128975641, %4 ]
  %10 = phi i32 [ 128975641, %4 ]
  %11 = phi i32 [ 128975641, %4 ]
  %12 = phi i32 [ 128975641, %4 ]
  %13 = phi i32 [ 128975641, %4 ]
  %14 = phi i32 [ 128975641, %4 ]
  %15 = phi i32 [ 128975641, %4 ]
  %cfg_DiffPhi = phi i32 [ %9, %4 ]
  %16 = phi i32 [ %9, %4 ]
  %17 = phi i32 [ %9, %4 ]
  %18 = phi i32 [ %9, %4 ]
  %19 = phi i32 [ %9, %4 ]
  %20 = phi i32 [ %9, %4 ]
  %21 = phi i32 [ %9, %4 ]
  %22 = phi i32 [ %9, %4 ]
  %icmpEq75 = icmp eq i32 %21, %22
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %icmpEq73 = icmp eq i32 %19, %20
  %23 = icmp eq i32 %20, %20
  %icmpEq77 = icmp eq i1 %icmpEq73, %23
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %icmpEq71 = icmp eq i32 %17, %18
  %zext72 = zext i1 %icmpEq71 to i32
  %24 = zext i1 %icmpEq71 to i32
  %icmpEq79 = icmp eq i32 %zext72, %24
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  call void @assert_ft(i32 %zext72, i32 35)
  %icmpEq69 = icmp eq i32 %cfg_DiffPhi, %16
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %14, %15
  %25 = icmp eq i32 %15, %15
  %icmpEq81 = icmp eq i1 %icmpEq67, %25
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %12, %13
  %zext66 = zext i1 %icmpEq65 to i32
  %26 = zext i1 %icmpEq65 to i32
  %icmpEq83 = icmp eq i32 %zext66, %26
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq63 = icmp eq i32 %10, %11
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq43 = icmp eq i32 %19, %21
  %27 = icmp eq i32 %20, %22
  %icmpEq85 = icmp eq i1 %icmpEq43, %27
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq41 = icmp eq i32 %cfg_DiffPhi, %17
  %28 = icmp eq i32 %16, %18
  %29 = icmp eq i32 %16, %18
  %icmpEq87 = icmp eq i1 %28, %29
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq45 = icmp eq i1 %icmpEq41, %28
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %zext42 = zext i1 %icmpEq41 to i32
  %30 = zext i1 %28 to i32
  %icmpEq89 = icmp eq i32 %zext42, %30
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  call void @assert_ft(i32 %zext42, i32 35)
  %icmpEq39 = icmp eq i32 %12, %14
  %zext40 = zext i1 %icmpEq39 to i32
  %31 = zext i1 %icmpEq39 to i32
  %32 = zext i1 %icmpEq39 to i32
  %icmpEq91 = icmp eq i32 %31, %32
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %icmpEq47 = icmp eq i32 %zext40, %31
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq37 = icmp eq i32 %cfg_DestPhi, %10
  %33 = icmp eq i32 %10, %11
  %icmpEq93 = icmp eq i1 %icmpEq37, %33
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %icmpEq29 = icmp eq i32 %cfg_DiffPhi, %19
  %34 = icmp eq i32 %16, %20
  %35 = icmp eq i32 %16, %20
  %icmpEq95 = icmp eq i1 %34, %35
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %icmpEq49 = icmp eq i1 %icmpEq29, %34
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %zext30 = zext i1 %icmpEq29 to i32
  %36 = zext i1 %34 to i32
  %icmpEq97 = icmp eq i32 %zext30, %36
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq27 = icmp eq i32 %cfg_DestPhi, %12
  %37 = icmp eq i32 %10, %13
  %38 = icmp eq i32 %10, %13
  %39 = icmp eq i32 %10, %13
  %icmpEq99 = icmp eq i1 %38, %39
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq51 = icmp eq i1 %37, %38
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq31 = icmp eq i1 %icmpEq27, %37
  %40 = icmp eq i1 %37, %38
  %icmpEq101 = icmp eq i1 %icmpEq31, %40
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %zext28 = zext i1 %icmpEq27 to i32
  %41 = zext i1 %37 to i32
  %42 = zext i1 %37 to i32
  %icmpEq103 = icmp eq i32 %41, %42
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %icmpEq53 = icmp eq i32 %zext28, %41
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  call void @assert_ft(i32 %zext28, i32 35)
  %43 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %44 = xor i32 %10, %16
  %icmpEq105 = icmp eq i32 %43, %44
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %cfg_icmpEq = icmp eq i32 %43, 180360713
  %45 = icmp eq i32 %44, 180360713
  %46 = icmp eq i32 %44, 180360713
  %icmpEq55 = icmp eq i1 %45, %46
  %47 = icmp eq i1 %46, %46
  %icmpEq107 = icmp eq i1 %icmpEq55, %47
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq33 = icmp eq i1 %cfg_icmpEq, %45
  %zext34 = zext i1 %icmpEq33 to i32
  %48 = zext i1 %icmpEq33 to i32
  %icmpEq109 = icmp eq i32 %zext34, %48
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  call void @assert_ft(i32 %zext34, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %49 = zext i1 %45 to i32
  %icmpEq57 = icmp eq i32 %cfg_zext, %49
  %50 = icmp eq i32 %49, %49
  %icmpEq111 = icmp eq i1 %icmpEq57, %50
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %43, i32 35)
  %51 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 0
  %52 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 0
  %53 = load double, ptr %51, align 8
  %54 = load double, ptr %52, align 8
  %55 = load double, ptr %51, align 8
  %56 = load double, ptr %52, align 8
  %57 = load double, ptr %51, align 8
  %58 = load double, ptr %52, align 8
  %59 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %60 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %61 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %62 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %63 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %64 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %65 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %66 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 0
  %67 = load double, ptr %59, align 8
  %68 = load double, ptr %60, align 8
  %69 = load double, ptr %59, align 8
  %70 = load double, ptr %60, align 8
  %71 = load double, ptr %59, align 8
  %72 = load double, ptr %60, align 8
  %73 = load double, ptr %59, align 8
  %74 = load double, ptr %60, align 8
  %75 = fsub double %53, %67
  %76 = fsub double %54, %68
  %77 = fsub double %53, %67
  %78 = fsub double %54, %68
  %79 = fsub double %53, %67
  %80 = fsub double %54, %68
  %81 = fsub double %53, %67
  %82 = fsub double %54, %68
  %83 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %84 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %85 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %86 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %87 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %88 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %89 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %90 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %91 = load double, ptr %83, align 8
  %92 = load double, ptr %84, align 8
  %93 = load double, ptr %83, align 8
  %94 = load double, ptr %84, align 8
  %95 = load double, ptr %83, align 8
  %96 = load double, ptr %84, align 8
  %97 = load double, ptr %83, align 8
  %98 = load double, ptr %84, align 8
  %99 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %100 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %101 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %102 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %103 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %104 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %105 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %106 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 1
  %107 = load double, ptr %99, align 8
  %108 = load double, ptr %100, align 8
  %109 = load double, ptr %99, align 8
  %110 = load double, ptr %100, align 8
  %111 = load double, ptr %99, align 8
  %112 = load double, ptr %100, align 8
  %113 = load double, ptr %99, align 8
  %114 = load double, ptr %100, align 8
  %115 = fsub double %91, %107
  %116 = fsub double %92, %108
  %117 = fsub double %91, %107
  %118 = fsub double %92, %108
  %119 = fsub double %91, %107
  %120 = fsub double %92, %108
  %121 = fsub double %91, %107
  %122 = fsub double %92, %108
  %123 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %124 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %125 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %126 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %127 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %128 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %129 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %130 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %131 = load double, ptr %123, align 8
  %132 = load double, ptr %124, align 8
  %133 = load double, ptr %123, align 8
  %134 = load double, ptr %124, align 8
  %135 = load double, ptr %123, align 8
  %136 = load double, ptr %124, align 8
  %137 = load double, ptr %123, align 8
  %138 = load double, ptr %124, align 8
  %139 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %140 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %141 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %142 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %143 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %144 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %145 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %146 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 2
  %147 = load double, ptr %139, align 8
  %148 = load double, ptr %140, align 8
  %149 = load double, ptr %139, align 8
  %150 = load double, ptr %140, align 8
  %151 = load double, ptr %139, align 8
  %152 = load double, ptr %140, align 8
  %153 = load double, ptr %139, align 8
  %154 = load double, ptr %140, align 8
  %155 = fsub double %131, %147
  %156 = fsub double %132, %148
  %157 = fsub double %131, %147
  %158 = fsub double %132, %148
  %159 = fsub double %131, %147
  %160 = fsub double %132, %148
  %161 = fsub double %131, %147
  %162 = fsub double %132, %148
  %163 = tail call double @llvm.fmuladd.f64(double %75, double %75, double 0.000000e+00)
  %164 = tail call double @llvm.fmuladd.f64(double %115, double %115, double %163)
  %165 = tail call double @llvm.fmuladd.f64(double %155, double %155, double %164)
  %166 = fmul double %165, %2
  %167 = fmul double %165, %2
  %168 = fmul double %165, %2
  %169 = fmul double %165, %2
  %170 = fmul double %165, %2
  %171 = fmul double %165, %2
  %172 = fmul double %165, %2
  %173 = fmul double %165, %2
  %174 = fcmp olt double %166, %1
  %175 = fcmp olt double %167, %1
  %icmpEq113 = icmp eq i1 %174, %175
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %176 = fcmp olt double %166, %1
  %icmpEq59 = icmp eq i1 %174, %176
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %177 = fcmp olt double %166, %1
  %178 = fcmp olt double %167, %1
  %icmpEq115 = icmp eq i1 %177, %178
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq35 = icmp eq i1 %174, %177
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %179 = zext i1 %174 to i16
  %180 = zext i1 %175 to i16
  %icmpEq117 = icmp eq i16 %179, %180
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %181 = zext i1 %174 to i16
  %icmpEq61 = icmp eq i16 %179, %181
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  br label %182

182:                                              ; preds = %.preheader19.preheader, %4
  %.018 = phi i16 [ %179, %.preheader19.preheader ], [ 0, %4 ]
  %183 = phi i16 [ %180, %.preheader19.preheader ], [ 0, %4 ]
  %184 = phi i16 [ %179, %.preheader19.preheader ], [ 0, %4 ]
  %185 = phi i16 [ %180, %.preheader19.preheader ], [ 0, %4 ]
  %cfg_DestPhi23 = phi i32 [ 128975641, %4 ], [ 180360713, %.preheader19.preheader ]
  %186 = phi i32 [ 128975641, %4 ], [ 180360713, %.preheader19.preheader ]
  %187 = phi i32 [ 128975641, %4 ], [ 180360713, %.preheader19.preheader ]
  %188 = phi i32 [ 128975641, %4 ], [ 180360713, %.preheader19.preheader ]
  %cfg_DiffPhi24 = phi i32 [ %9, %4 ], [ 118494212, %.preheader19.preheader ]
  %189 = phi i32 [ %9, %4 ], [ 118494212, %.preheader19.preheader ]
  %190 = phi i32 [ %9, %4 ], [ 118494212, %.preheader19.preheader ]
  %191 = phi i32 [ %9, %4 ], [ 118494212, %.preheader19.preheader ]
  %icmpEq141 = icmp eq i32 %190, %191
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %icmpEq139 = icmp eq i32 %cfg_DiffPhi24, %189
  %192 = icmp eq i32 %189, %189
  %icmpEq143 = icmp eq i1 %icmpEq139, %192
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %icmpEq137 = icmp eq i32 %187, %188
  %zext138 = zext i1 %icmpEq137 to i32
  %193 = zext i1 %icmpEq137 to i32
  %icmpEq145 = icmp eq i32 %zext138, %193
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  call void @assert_ft(i32 %zext138, i32 35)
  %icmpEq135 = icmp eq i32 %cfg_DestPhi23, %186
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %icmpEq133 = icmp eq i16 %184, %185
  %194 = icmp eq i16 %185, %185
  %icmpEq147 = icmp eq i1 %icmpEq133, %194
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq131 = icmp eq i16 %.018, %183
  %zext132 = zext i1 %icmpEq131 to i32
  %195 = zext i1 %icmpEq131 to i32
  %icmpEq149 = icmp eq i32 %zext132, %195
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  call void @assert_ft(i32 %zext132, i32 35)
  %icmpEq123 = icmp eq i32 %cfg_DiffPhi24, %190
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %icmpEq121 = icmp eq i32 %cfg_DestPhi23, %187
  %196 = icmp eq i32 %186, %188
  %icmpEq151 = icmp eq i1 %icmpEq121, %196
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %197 = icmp eq i32 %cfg_DestPhi23, %187
  %icmpEq125 = icmp eq i1 %icmpEq121, %197
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %zext122 = zext i1 %icmpEq121 to i32
  %198 = zext i1 %196 to i32
  %icmpEq153 = icmp eq i32 %zext122, %198
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i16 %.018, %184
  %zext120 = zext i1 %icmpEq119 to i32
  %199 = zext i1 %icmpEq119 to i32
  %200 = zext i1 %icmpEq119 to i32
  %icmpEq155 = icmp eq i32 %199, %200
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %icmpEq127 = icmp eq i32 %zext120, %199
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  call void @assert_ft(i32 %zext120, i32 35)
  %201 = xor i32 %cfg_DestPhi23, %cfg_DiffPhi24
  %202 = xor i32 %186, %189
  %icmpEq157 = icmp eq i32 %201, %202
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %cfg_icmpEq25 = icmp eq i32 %201, 231735821
  %cfg_zext26 = zext i1 %cfg_icmpEq25 to i32
  %203 = zext i1 %cfg_icmpEq25 to i32
  %icmpEq129 = icmp eq i32 %cfg_zext26, %203
  %204 = icmp eq i32 %203, %203
  %icmpEq159 = icmp eq i1 %icmpEq129, %204
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext26, i32 %201, i32 35)
  ret i16 %.018
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @gravsub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.hgstruct) align 8 %2) local_unnamed_addr #13 {
.preheader32.preheader:
  %3 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 0
  %4 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 0
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %4, align 8
  %7 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 0
  %8 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 0
  %9 = load double, ptr %7, align 8
  %10 = load double, ptr %8, align 8
  %11 = fsub double %5, %9
  %12 = fsub double %6, %10
  %13 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 1
  %14 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 1
  %15 = load double, ptr %13, align 8
  %16 = load double, ptr %14, align 8
  %17 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 1
  %18 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 1
  %19 = load double, ptr %17, align 8
  %20 = load double, ptr %18, align 8
  %21 = fsub double %15, %19
  %22 = fsub double %16, %20
  %23 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 2
  %24 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 2
  %25 = load double, ptr %23, align 8
  %26 = load double, ptr %24, align 8
  %27 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 2
  %28 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 2
  %29 = load double, ptr %27, align 8
  %30 = load double, ptr %28, align 8
  %31 = fsub double %25, %29
  %32 = fsub double %26, %30
  %33 = tail call double @llvm.fmuladd.f64(double %11, double %11, double 0.000000e+00)
  %34 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %34)
  %36 = fadd double %35, 0x3F647AE147AE147C
  %37 = fadd double %35, 0x3F647AE147AE147C
  %38 = tail call double @sqrt(double noundef %36) #28
  %39 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %40 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %41 = load double, ptr %39, align 8
  %42 = load double, ptr %40, align 8
  %43 = fdiv double %41, %38
  %44 = fdiv double %42, %38
  %45 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 2
  %46 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 2
  %47 = load double, ptr %45, align 8
  %48 = load double, ptr %46, align 8
  %49 = fsub double %47, %43
  %50 = fsub double %48, %44
  store double %49, ptr %45, align 8
  %51 = fdiv double %43, %36
  %52 = fdiv double %44, %37
  %53 = fmul double %51, %11
  %54 = fmul double %52, %12
  %55 = fmul double %51, %21
  %56 = fmul double %52, %22
  %57 = fmul double %51, %31
  %58 = fmul double %52, %32
  %59 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 0
  %60 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 0
  %61 = load double, ptr %59, align 8
  %62 = load double, ptr %60, align 8
  %63 = fadd double %61, %53
  %64 = fadd double %62, %54
  store double %63, ptr %59, align 8
  %65 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 1
  %66 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 1
  %67 = load double, ptr %65, align 8
  %68 = load double, ptr %66, align 8
  %69 = fadd double %67, %55
  %70 = fadd double %68, %56
  store double %69, ptr %65, align 8
  %71 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 2
  %72 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 2
  %73 = load double, ptr %71, align 8
  %74 = load double, ptr %72, align 8
  %75 = fadd double %73, %57
  %76 = fadd double %74, %58
  store double %75, ptr %71, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expandbox(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @ic_test(ptr noundef %0, ptr noundef %1), !range !7
  %.not43 = icmp eq i32 %5, 0
  %6 = icmp eq i32 %5, 0
  %icmpEq = icmp eq i1 %.not43, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = select i1 %.not43, i32 180357130, i32 899678474
  %8 = xor i32 128975641, %7
  br i1 %.not43, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  %cfg_DestPhi = phi i32 [ 128975641, %4 ]
  %9 = phi i32 [ 128975641, %4 ]
  %cfg_DiffPhi = phi i32 [ %8, %4 ]
  %10 = phi i32 [ %8, %4 ]
  %icmpEq106 = icmp eq i32 %cfg_DiffPhi, %10
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq104 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq108 = icmp eq i1 %icmpEq104, %11
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %12 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %12, 180357130
  %13 = icmp eq i32 %12, 180357130
  %icmpEq110 = icmp eq i1 %cfg_icmpEq, %13
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %12, i32 35)
  %14 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %18 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %19 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %20 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %21 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 0
  %22 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 0
  %23 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %24 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %25 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %26 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  br label %27

27:                                               ; preds = %166, %.lr.ph
  %cfg_DestPhi48 = phi i32 [ 180357130, %.lr.ph ], [ 848298757, %166 ]
  %28 = phi i32 [ 180357130, %.lr.ph ], [ 848298757, %166 ]
  %cfg_DiffPhi49 = phi i32 [ 118491915, %.lr.ph ], [ %228, %166 ]
  %29 = phi i32 [ 118491915, %.lr.ph ], [ %228, %166 ]
  %icmpEq114 = icmp eq i32 %cfg_DiffPhi49, %29
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq112 = icmp eq i32 %cfg_DestPhi48, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq116 = icmp eq i1 %icmpEq112, %30
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %31 = xor i32 %cfg_DestPhi48, %cfg_DiffPhi49
  %cfg_icmpEq50 = icmp eq i32 %31, 231736065
  %32 = icmp eq i32 %31, 231736065
  %icmpEq118 = icmp eq i1 %cfg_icmpEq50, %32
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %cfg_zext51 = zext i1 %cfg_icmpEq50 to i32
  call void @assert_cfg_ft(i32 %cfg_zext51, i32 %31, i32 35)
  %33 = load double, ptr %14, align 8
  %34 = fcmp olt double %33, 1.000000e+03
  %35 = fcmp olt double %33, 1.000000e+03
  %icmpEq120 = icmp eq i1 %34, %35
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %36 = select i1 %34, i32 283117828, i32 334496526
  %37 = xor i32 231736065, %36
  br i1 %34, label %.preheader40.preheader, label %57

.preheader40.preheader:                           ; preds = %27
  %cfg_DestPhi52 = phi i32 [ 231736065, %27 ]
  %38 = phi i32 [ 231736065, %27 ]
  %cfg_DiffPhi53 = phi i32 [ %37, %27 ]
  %39 = phi i32 [ %37, %27 ]
  %icmpEq124 = icmp eq i32 %cfg_DiffPhi53, %39
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq122 = icmp eq i32 %cfg_DestPhi52, %38
  %40 = icmp eq i32 %38, %38
  %icmpEq126 = icmp eq i1 %icmpEq122, %40
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %41 = xor i32 %cfg_DestPhi52, %cfg_DiffPhi53
  %cfg_icmpEq54 = icmp eq i32 %41, 283117828
  %42 = icmp eq i32 %41, 283117828
  %icmpEq128 = icmp eq i1 %cfg_icmpEq54, %42
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %cfg_zext55 = zext i1 %cfg_icmpEq54 to i32
  call void @assert_cfg_ft(i32 %cfg_zext55, i32 %41, i32 35)
  %43 = load double, ptr %1, align 8
  %44 = tail call double @llvm.fmuladd.f64(double %33, double 5.000000e-01, double %43)
  %45 = load double, ptr %17, align 8
  %46 = load double, ptr %18, align 8
  %47 = tail call double @llvm.fmuladd.f64(double %33, double 5.000000e-01, double %45)
  %48 = load double, ptr %19, align 8
  %49 = load double, ptr %20, align 8
  %50 = tail call double @llvm.fmuladd.f64(double %33, double 5.000000e-01, double %48)
  %51 = load double, ptr %21, align 8
  %52 = load double, ptr %22, align 8
  %53 = fcmp olt double %51, %44
  %54 = fcmp olt double %52, %44
  %icmpEq130 = icmp eq i1 %53, %54
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %55 = select i1 %53, i32 385876738, i32 437256987
  %56 = xor i32 283117828, %55
  br i1 %53, label %65, label %.preheader.1

57:                                               ; preds = %27
  %cfg_DestPhi56 = phi i32 [ 231736065, %27 ]
  %58 = phi i32 [ 231736065, %27 ]
  %cfg_DiffPhi57 = phi i32 [ %37, %27 ]
  %59 = phi i32 [ %37, %27 ]
  %icmpEq134 = icmp eq i32 %cfg_DiffPhi57, %59
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %icmpEq132 = icmp eq i32 %cfg_DestPhi56, %58
  %60 = icmp eq i32 %58, %58
  %icmpEq136 = icmp eq i1 %icmpEq132, %60
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %61 = xor i32 %cfg_DestPhi56, %cfg_DiffPhi57
  %cfg_icmpEq58 = icmp eq i32 %61, 334496526
  %62 = icmp eq i32 %61, 334496526
  %icmpEq138 = icmp eq i1 %cfg_icmpEq58, %62
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %cfg_zext59 = zext i1 %cfg_icmpEq58 to i32
  call void @assert_cfg_ft(i32 %cfg_zext59, i32 %61, i32 35)
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 999)
  %64 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

65:                                               ; preds = %.preheader40.preheader
  %cfg_DestPhi60 = phi i32 [ 283117828, %.preheader40.preheader ]
  %66 = phi i32 [ 283117828, %.preheader40.preheader ]
  %cfg_DiffPhi61 = phi i32 [ %56, %.preheader40.preheader ]
  %67 = phi i32 [ %56, %.preheader40.preheader ]
  %icmpEq142 = icmp eq i32 %cfg_DiffPhi61, %67
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %icmpEq140 = icmp eq i32 %cfg_DestPhi60, %66
  %68 = icmp eq i32 %66, %66
  %icmpEq144 = icmp eq i1 %icmpEq140, %68
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %69 = xor i32 %cfg_DestPhi60, %cfg_DiffPhi61
  %cfg_icmpEq62 = icmp eq i32 %69, 385876738
  %70 = icmp eq i32 %69, 385876738
  %icmpEq146 = icmp eq i1 %cfg_icmpEq62, %70
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %cfg_zext63 = zext i1 %cfg_icmpEq62 to i32
  call void @assert_cfg_ft(i32 %cfg_zext63, i32 %69, i32 35)
  %71 = fsub double %43, %33
  store double %71, ptr %1, align 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %65, %.preheader40.preheader
  %cfg_DestPhi64 = phi i32 [ 283117828, %.preheader40.preheader ], [ 385876738, %65 ]
  %72 = phi i32 [ 283117828, %.preheader40.preheader ], [ 385876738, %65 ]
  %cfg_DiffPhi65 = phi i32 [ %56, %.preheader40.preheader ], [ 219152409, %65 ]
  %73 = phi i32 [ %56, %.preheader40.preheader ], [ 219152409, %65 ]
  %icmpEq150 = icmp eq i32 %cfg_DiffPhi65, %73
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq148 = icmp eq i32 %cfg_DestPhi64, %72
  %74 = icmp eq i32 %72, %72
  %icmpEq152 = icmp eq i1 %icmpEq148, %74
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %75 = xor i32 %cfg_DestPhi64, %cfg_DiffPhi65
  %cfg_icmpEq66 = icmp eq i32 %75, 437256987
  %76 = icmp eq i32 %75, 437256987
  %icmpEq154 = icmp eq i1 %cfg_icmpEq66, %76
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %cfg_zext67 = zext i1 %cfg_icmpEq66 to i32
  call void @assert_cfg_ft(i32 %cfg_zext67, i32 %75, i32 35)
  %77 = load double, ptr %23, align 8
  %78 = fcmp olt double %77, %47
  %79 = fcmp olt double %77, %47
  %icmpEq156 = icmp eq i1 %78, %79
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %80 = select i1 %78, i32 488637199, i32 540017411
  %81 = xor i32 437256987, %80
  br i1 %78, label %82, label %.preheader.2

82:                                               ; preds = %.preheader.1
  %cfg_DestPhi68 = phi i32 [ 437256987, %.preheader.1 ]
  %83 = phi i32 [ 437256987, %.preheader.1 ]
  %cfg_DiffPhi69 = phi i32 [ %81, %.preheader.1 ]
  %84 = phi i32 [ %81, %.preheader.1 ]
  %icmpEq160 = icmp eq i32 %cfg_DiffPhi69, %84
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %icmpEq158 = icmp eq i32 %cfg_DestPhi68, %83
  %85 = icmp eq i32 %83, %83
  %icmpEq162 = icmp eq i1 %icmpEq158, %85
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %86 = xor i32 %cfg_DestPhi68, %cfg_DiffPhi69
  %cfg_icmpEq70 = icmp eq i32 %86, 488637199
  %87 = icmp eq i32 %86, 488637199
  %icmpEq164 = icmp eq i1 %cfg_icmpEq70, %87
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %cfg_zext71 = zext i1 %cfg_icmpEq70 to i32
  call void @assert_cfg_ft(i32 %cfg_zext71, i32 %86, i32 35)
  %88 = fsub double %45, %33
  store double %88, ptr %17, align 8
  br label %.preheader.2

.preheader.2:                                     ; preds = %82, %.preheader.1
  %cfg_DestPhi72 = phi i32 [ 488637199, %82 ], [ 437256987, %.preheader.1 ]
  %89 = phi i32 [ 488637199, %82 ], [ 437256987, %.preheader.1 ]
  %cfg_DiffPhi73 = phi i32 [ 1024458764, %82 ], [ %81, %.preheader.1 ]
  %90 = phi i32 [ 1024458764, %82 ], [ %81, %.preheader.1 ]
  %icmpEq168 = icmp eq i32 %cfg_DiffPhi73, %90
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq166 = icmp eq i32 %cfg_DestPhi72, %89
  %91 = icmp eq i32 %89, %89
  %icmpEq170 = icmp eq i1 %icmpEq166, %91
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %92 = xor i32 %cfg_DestPhi72, %cfg_DiffPhi73
  %cfg_icmpEq74 = icmp eq i32 %92, 540017411
  %93 = icmp eq i32 %92, 540017411
  %icmpEq172 = icmp eq i1 %cfg_icmpEq74, %93
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %cfg_zext75 = zext i1 %cfg_icmpEq74 to i32
  call void @assert_cfg_ft(i32 %cfg_zext75, i32 %92, i32 35)
  %94 = load double, ptr %25, align 8
  %95 = fcmp olt double %94, %50
  %96 = fcmp olt double %94, %50
  %icmpEq174 = icmp eq i1 %95, %96
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %97 = select i1 %95, i32 591397660, i32 642778370
  %98 = xor i32 540017411, %97
  br i1 %95, label %99, label %106

99:                                               ; preds = %.preheader.2
  %cfg_DestPhi76 = phi i32 [ 540017411, %.preheader.2 ]
  %100 = phi i32 [ 540017411, %.preheader.2 ]
  %cfg_DiffPhi77 = phi i32 [ %98, %.preheader.2 ]
  %101 = phi i32 [ %98, %.preheader.2 ]
  %icmpEq178 = icmp eq i32 %cfg_DiffPhi77, %101
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %icmpEq176 = icmp eq i32 %cfg_DestPhi76, %100
  %102 = icmp eq i32 %100, %100
  %icmpEq180 = icmp eq i1 %icmpEq176, %102
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %103 = xor i32 %cfg_DestPhi76, %cfg_DiffPhi77
  %cfg_icmpEq78 = icmp eq i32 %103, 591397660
  %104 = icmp eq i32 %103, 591397660
  %icmpEq182 = icmp eq i1 %cfg_icmpEq78, %104
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %cfg_zext79 = zext i1 %cfg_icmpEq78 to i32
  call void @assert_cfg_ft(i32 %cfg_zext79, i32 %103, i32 35)
  %105 = fsub double %48, %33
  store double %105, ptr %19, align 8
  br label %106

106:                                              ; preds = %99, %.preheader.2
  %cfg_DestPhi80 = phi i32 [ 591397660, %99 ], [ 540017411, %.preheader.2 ]
  %107 = phi i32 [ 591397660, %99 ], [ 540017411, %.preheader.2 ]
  %cfg_DiffPhi81 = phi i32 [ 84936222, %99 ], [ %98, %.preheader.2 ]
  %108 = phi i32 [ 84936222, %99 ], [ %98, %.preheader.2 ]
  %icmpEq186 = icmp eq i32 %cfg_DiffPhi81, %108
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %icmpEq184 = icmp eq i32 %cfg_DestPhi80, %107
  %109 = icmp eq i32 %107, %107
  %icmpEq188 = icmp eq i1 %icmpEq184, %109
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %110 = xor i32 %cfg_DestPhi80, %cfg_DiffPhi81
  %cfg_icmpEq82 = icmp eq i32 %110, 642778370
  %111 = icmp eq i32 %110, 642778370
  %icmpEq190 = icmp eq i1 %cfg_icmpEq82, %111
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %cfg_zext83 = zext i1 %cfg_icmpEq82 to i32
  call void @assert_cfg_ft(i32 %cfg_zext83, i32 %110, i32 35)
  %112 = fmul double %33, 2.000000e+00
  store double %112, ptr %14, align 8
  %113 = load ptr, ptr %15, align 8
  %114 = load ptr, ptr %16, align 8
  %.not38 = icmp eq ptr %113, null
  %115 = icmp eq ptr %114, null
  %icmpEq192 = icmp eq i1 %.not38, %115
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %116 = select i1 %.not38, i32 848298757, i32 694158856
  %117 = xor i32 642778370, %116
  br i1 %.not38, label %166, label %118

118:                                              ; preds = %106
  %cfg_DestPhi84 = phi i32 [ 642778370, %106 ]
  %119 = phi i32 [ 642778370, %106 ]
  %120 = phi i32 [ 642778370, %106 ]
  %cfg_DiffPhi85 = phi i32 [ %117, %106 ]
  %121 = phi i32 [ %117, %106 ]
  %122 = phi i32 [ %117, %106 ]
  %123 = phi i32 [ %117, %106 ]
  %icmpEq210 = icmp eq i32 %122, %123
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %icmpEq208 = icmp eq i32 %cfg_DiffPhi85, %121
  %124 = icmp eq i32 %121, %121
  %icmpEq212 = icmp eq i1 %icmpEq208, %124
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %119, %120
  %zext207 = zext i1 %icmpEq206 to i32
  %125 = zext i1 %icmpEq206 to i32
  %icmpEq214 = icmp eq i32 %zext207, %125
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq196 = icmp eq i32 %cfg_DiffPhi85, %122
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %icmpEq194 = icmp eq i32 %cfg_DestPhi84, %119
  %126 = icmp eq i32 %119, %120
  %icmpEq216 = icmp eq i1 %icmpEq194, %126
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %127 = icmp eq i32 %cfg_DestPhi84, %119
  %icmpEq198 = icmp eq i1 %icmpEq194, %127
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %zext195 = zext i1 %icmpEq194 to i32
  %128 = zext i1 %126 to i32
  %icmpEq218 = icmp eq i32 %zext195, %128
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  call void @assert_ft(i32 %zext195, i32 35)
  %129 = xor i32 %cfg_DestPhi84, %cfg_DiffPhi85
  %cfg_icmpEq86 = icmp eq i32 %129, 694158856
  %130 = icmp eq i32 %129, 694158856
  %131 = icmp eq i32 %129, 694158856
  %icmpEq220 = icmp eq i1 %130, %131
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq200 = icmp eq i1 %cfg_icmpEq86, %130
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %cfg_zext87 = zext i1 %cfg_icmpEq86 to i32
  %132 = zext i1 %130 to i32
  %icmpEq222 = icmp eq i32 %cfg_zext87, %132
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext87, i32 %129, i32 35)
  %133 = tail call ptr @cell_alloc(i32 noundef 0)
  %134 = tail call { i64, i64 } @intcoord1(double noundef %44, double noundef %47, double noundef %50, ptr noundef nonnull %1)
  %135 = extractvalue { i64, i64 } %134, 1
  %136 = extractvalue { i64, i64 } %134, 1
  %icmpEq224 = icmp eq i64 %135, %136
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %137 = extractvalue { i64, i64 } %134, 1
  %icmpEq202 = icmp eq i64 %135, %137
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %138 = and i64 %135, 281470681743360
  %139 = and i64 %136, 281470681743360
  %icmpEq226 = icmp eq i64 %138, %139
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %.not39 = icmp eq i64 %138, 0
  %140 = select i1 %.not39, i32 745538333, i32 796920589
  %141 = xor i32 694158856, %140
  %142 = xor i32 694158856, %140
  %143 = xor i32 694158856, %140
  %icmpEq228 = icmp eq i32 %142, %143
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq204 = icmp eq i32 %141, %142
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  br i1 %.not39, label %144, label %152

144:                                              ; preds = %118
  %cfg_DestPhi88 = phi i32 [ 694158856, %118 ]
  %145 = phi i32 [ 694158856, %118 ]
  %cfg_DiffPhi89 = phi i32 [ %141, %118 ]
  %146 = phi i32 [ %142, %118 ]
  %icmpEq232 = icmp eq i32 %cfg_DiffPhi89, %146
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq230 = icmp eq i32 %cfg_DestPhi88, %145
  %147 = icmp eq i32 %145, %145
  %icmpEq234 = icmp eq i1 %icmpEq230, %147
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %148 = xor i32 %cfg_DestPhi88, %cfg_DiffPhi89
  %cfg_icmpEq90 = icmp eq i32 %148, 745538333
  %149 = icmp eq i32 %148, 745538333
  %icmpEq236 = icmp eq i1 %cfg_icmpEq90, %149
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %cfg_zext91 = zext i1 %cfg_icmpEq90 to i32
  call void @assert_cfg_ft(i32 %cfg_zext91, i32 %148, i32 35)
  %150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 1)
  %151 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

152:                                              ; preds = %118
  %cfg_DestPhi92 = phi i32 [ 694158856, %118 ]
  %153 = phi i32 [ 694158856, %118 ]
  %cfg_DiffPhi93 = phi i32 [ %141, %118 ]
  %154 = phi i32 [ %142, %118 ]
  %icmpEq240 = icmp eq i32 %cfg_DiffPhi93, %154
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %icmpEq238 = icmp eq i32 %cfg_DestPhi92, %153
  %155 = icmp eq i32 %153, %153
  %icmpEq242 = icmp eq i1 %icmpEq238, %155
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %156 = xor i32 %cfg_DestPhi92, %cfg_DiffPhi93
  %cfg_icmpEq94 = icmp eq i32 %156, 796920589
  %157 = icmp eq i32 %156, 796920589
  %icmpEq244 = icmp eq i1 %cfg_icmpEq94, %157
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %cfg_zext95 = zext i1 %cfg_icmpEq94 to i32
  call void @assert_cfg_ft(i32 %cfg_zext95, i32 %156, i32 35)
  %158 = extractvalue { i64, i64 } %134, 0
  %.sroa.219.8.insert.ext = and i64 %135, 4294967295
  %159 = and i64 %136, 4294967295
  %icmpEq246 = icmp eq i64 %.sroa.219.8.insert.ext, %159
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %.sroa.219.8.insert.insert = or i64 %.sroa.219.8.insert.ext, 4294967296
  %160 = tail call i32 @old_subindex(i64 %158, i64 %.sroa.219.8.insert.insert, i32 noundef 536870912)
  %161 = load ptr, ptr %15, align 8
  %162 = sext i32 %160 to i64
  %163 = sext i32 %160 to i64
  %icmpEq248 = icmp eq i64 %162, %163
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %164 = getelementptr inbounds %struct.cnode, ptr %133, i64 0, i32 5, i64 %162
  store ptr %161, ptr %164, align 8
  store ptr %133, ptr %15, align 8
  %165 = tail call i32 @ic_test(ptr noundef nonnull %0, ptr noundef nonnull %1), !range !7
  br label %166

166:                                              ; preds = %152, %106
  %.1 = phi i32 [ %165, %152 ], [ 0, %106 ]
  %167 = phi i32 [ %165, %152 ], [ 0, %106 ]
  %168 = phi i32 [ %165, %152 ], [ 0, %106 ]
  %169 = phi i32 [ %165, %152 ], [ 0, %106 ]
  %170 = phi i32 [ %165, %152 ], [ 0, %106 ]
  %171 = phi i32 [ %165, %152 ], [ 0, %106 ]
  %cfg_DestPhi96 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %172 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %173 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %174 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %175 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %176 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %177 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %178 = phi i32 [ 796920589, %152 ], [ 642778370, %106 ]
  %cfg_DiffPhi97 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %179 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %180 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %181 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %182 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %183 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %184 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %185 = phi i32 [ 487589896, %152 ], [ %117, %106 ]
  %icmpEq316 = icmp eq i32 %184, %185
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq314 = icmp eq i32 %182, %183
  %186 = icmp eq i32 %183, %183
  %icmpEq318 = icmp eq i1 %icmpEq314, %186
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %icmpEq312 = icmp eq i32 %180, %181
  %zext313 = zext i1 %icmpEq312 to i32
  %187 = zext i1 %icmpEq312 to i32
  %icmpEq320 = icmp eq i32 %zext313, %187
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  call void @assert_ft(i32 %zext313, i32 35)
  %icmpEq310 = icmp eq i32 %cfg_DiffPhi97, %179
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %icmpEq308 = icmp eq i32 %177, %178
  %188 = icmp eq i32 %178, %178
  %icmpEq322 = icmp eq i1 %icmpEq308, %188
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %icmpEq306 = icmp eq i32 %175, %176
  %zext307 = zext i1 %icmpEq306 to i32
  %189 = zext i1 %icmpEq306 to i32
  %icmpEq324 = icmp eq i32 %zext307, %189
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  call void @assert_ft(i32 %zext307, i32 35)
  %icmpEq304 = icmp eq i32 %173, %174
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %icmpEq302 = icmp eq i32 %cfg_DestPhi96, %172
  %190 = icmp eq i32 %172, %172
  %icmpEq326 = icmp eq i1 %icmpEq302, %190
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %icmpEq300 = icmp eq i32 %170, %171
  %zext301 = zext i1 %icmpEq300 to i32
  %191 = zext i1 %icmpEq300 to i32
  %icmpEq328 = icmp eq i32 %zext301, %191
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  call void @assert_ft(i32 %zext301, i32 35)
  %icmpEq298 = icmp eq i32 %168, %169
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %icmpEq296 = icmp eq i32 %.1, %167
  %192 = icmp eq i32 %167, %167
  %icmpEq330 = icmp eq i1 %icmpEq296, %192
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %icmpEq272 = icmp eq i32 %182, %184
  %zext273 = zext i1 %icmpEq272 to i32
  %193 = zext i1 %icmpEq272 to i32
  %icmpEq332 = icmp eq i32 %zext273, %193
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  call void @assert_ft(i32 %zext273, i32 35)
  %icmpEq270 = icmp eq i32 %cfg_DiffPhi97, %180
  %194 = icmp eq i32 %179, %181
  %icmpEq274 = icmp eq i1 %icmpEq270, %194
  %195 = icmp eq i1 %194, %194
  %icmpEq334 = icmp eq i1 %icmpEq274, %195
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %icmpEq268 = icmp eq i32 %175, %177
  %196 = icmp eq i32 %176, %178
  %icmpEq336 = icmp eq i1 %icmpEq268, %196
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %zext269 = zext i1 %icmpEq268 to i32
  %197 = zext i1 %196 to i32
  %icmpEq276 = icmp eq i32 %zext269, %197
  %zext277 = zext i1 %icmpEq276 to i32
  %198 = zext i1 %icmpEq276 to i32
  %icmpEq338 = icmp eq i32 %zext277, %198
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  call void @assert_ft(i32 %zext277, i32 35)
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq266 = icmp eq i32 %cfg_DestPhi96, %173
  %zext267 = zext i1 %icmpEq266 to i32
  %199 = zext i1 %icmpEq266 to i32
  %icmpEq340 = icmp eq i32 %zext267, %199
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  call void @assert_ft(i32 %zext267, i32 35)
  %icmpEq264 = icmp eq i32 %168, %170
  %200 = icmp eq i32 %169, %171
  %icmpEq278 = icmp eq i1 %icmpEq264, %200
  %201 = icmp eq i1 %200, %200
  %icmpEq342 = icmp eq i1 %icmpEq278, %201
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq254 = icmp eq i32 %cfg_DiffPhi97, %182
  %202 = icmp eq i32 %179, %183
  %icmpEq344 = icmp eq i1 %icmpEq254, %202
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  %zext255 = zext i1 %icmpEq254 to i32
  %203 = zext i1 %202 to i32
  %icmpEq280 = icmp eq i32 %zext255, %203
  %zext281 = zext i1 %icmpEq280 to i32
  %204 = zext i1 %icmpEq280 to i32
  %icmpEq346 = icmp eq i32 %zext281, %204
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  call void @assert_ft(i32 %zext281, i32 35)
  call void @assert_ft(i32 %zext255, i32 35)
  %icmpEq252 = icmp eq i32 %cfg_DestPhi96, %175
  %205 = icmp eq i32 %172, %176
  %206 = icmp eq i32 %172, %176
  %icmpEq348 = icmp eq i1 %205, %206
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  %icmpEq256 = icmp eq i1 %icmpEq252, %205
  %207 = icmp eq i1 %205, %206
  %icmpEq282 = icmp eq i1 %icmpEq256, %207
  %zext283 = zext i1 %icmpEq282 to i32
  %208 = zext i1 %icmpEq282 to i32
  %icmpEq350 = icmp eq i32 %zext283, %208
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  call void @assert_ft(i32 %zext283, i32 35)
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %zext253 = zext i1 %icmpEq252 to i32
  %209 = zext i1 %205 to i32
  %icmpEq352 = icmp eq i32 %zext253, %209
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  call void @assert_ft(i32 %zext253, i32 35)
  %icmpEq250 = icmp eq i32 %.1, %168
  %210 = icmp eq i32 %167, %169
  %icmpEq284 = icmp eq i1 %icmpEq250, %210
  %211 = icmp eq i1 %210, %210
  %icmpEq354 = icmp eq i1 %icmpEq284, %211
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %zext251 = zext i1 %icmpEq250 to i32
  %212 = zext i1 %210 to i32
  %213 = zext i1 %210 to i32
  %icmpEq356 = icmp eq i32 %212, %213
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  %icmpEq258 = icmp eq i32 %zext251, %212
  %zext259 = zext i1 %icmpEq258 to i32
  %214 = zext i1 %icmpEq258 to i32
  %icmpEq286 = icmp eq i32 %zext259, %214
  %215 = icmp eq i32 %214, %214
  %icmpEq358 = icmp eq i1 %icmpEq286, %215
  %zext359 = zext i1 %icmpEq358 to i32
  call void @assert_ft(i32 %zext359, i32 35)
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  call void @assert_ft(i32 %zext259, i32 35)
  call void @assert_ft(i32 %zext251, i32 35)
  %216 = xor i32 %cfg_DestPhi96, %cfg_DiffPhi97
  %217 = xor i32 %172, %179
  %icmpEq360 = icmp eq i32 %216, %217
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %cfg_icmpEq98 = icmp eq i32 %216, 848298757
  %218 = icmp eq i32 %217, 848298757
  %icmpEq288 = icmp eq i1 %cfg_icmpEq98, %218
  %zext289 = zext i1 %icmpEq288 to i32
  %219 = zext i1 %icmpEq288 to i32
  %icmpEq362 = icmp eq i32 %zext289, %219
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  call void @assert_ft(i32 %zext289, i32 35)
  %cfg_zext99 = zext i1 %cfg_icmpEq98 to i32
  %220 = zext i1 %218 to i32
  %icmpEq260 = icmp eq i32 %cfg_zext99, %220
  %221 = icmp eq i32 %220, %220
  %icmpEq364 = icmp eq i1 %icmpEq260, %221
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %zext261 = zext i1 %icmpEq260 to i32
  %222 = zext i1 %221 to i32
  %icmpEq290 = icmp eq i32 %zext261, %222
  %zext291 = zext i1 %icmpEq290 to i32
  %223 = zext i1 %icmpEq290 to i32
  %icmpEq366 = icmp eq i32 %zext291, %223
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  call void @assert_ft(i32 %zext291, i32 35)
  call void @assert_ft(i32 %zext261, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext99, i32 %216, i32 35)
  %.not = icmp eq i32 %.1, 0
  %224 = icmp eq i32 %167, 0
  %icmpEq368 = icmp eq i1 %.not, %224
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %225 = select i1 %.not, i32 231736065, i32 899678474
  %226 = select i1 %224, i32 231736065, i32 899678474
  %icmpEq292 = icmp eq i32 %225, %226
  %zext293 = zext i1 %icmpEq292 to i32
  %227 = zext i1 %icmpEq292 to i32
  %icmpEq370 = icmp eq i32 %zext293, %227
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  call void @assert_ft(i32 %zext293, i32 35)
  %228 = xor i32 848298757, %225
  %229 = xor i32 848298757, %226
  %icmpEq262 = icmp eq i32 %228, %229
  %230 = icmp eq i32 %229, %229
  %icmpEq372 = icmp eq i1 %icmpEq262, %230
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  %zext263 = zext i1 %icmpEq262 to i32
  %231 = zext i1 %230 to i32
  %icmpEq294 = icmp eq i32 %zext263, %231
  %zext295 = zext i1 %icmpEq294 to i32
  %232 = zext i1 %icmpEq294 to i32
  %icmpEq374 = icmp eq i32 %zext295, %232
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  call void @assert_ft(i32 %zext295, i32 35)
  call void @assert_ft(i32 %zext263, i32 35)
  br i1 %.not, label %27, label %._crit_edge

._crit_edge:                                      ; preds = %166, %4
  %cfg_DestPhi100 = phi i32 [ 848298757, %166 ], [ 128975641, %4 ]
  %233 = phi i32 [ 848298757, %166 ], [ 128975641, %4 ]
  %cfg_DiffPhi101 = phi i32 [ %228, %166 ], [ %8, %4 ]
  %234 = phi i32 [ %229, %166 ], [ %8, %4 ]
  %icmpEq378 = icmp eq i32 %cfg_DiffPhi101, %234
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %icmpEq376 = icmp eq i32 %cfg_DestPhi100, %233
  %235 = icmp eq i32 %233, %233
  %icmpEq380 = icmp eq i1 %icmpEq376, %235
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %236 = xor i32 %cfg_DestPhi100, %cfg_DiffPhi101
  %cfg_icmpEq102 = icmp eq i32 %236, 899678474
  %237 = icmp eq i32 %236, 899678474
  %icmpEq382 = icmp eq i1 %cfg_icmpEq102, %237
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  %cfg_zext103 = zext i1 %cfg_icmpEq102 to i32
  call void @assert_cfg_ft(i32 %cfg_zext103, i32 %236, i32 35)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %3, null
  %8 = icmp eq ptr %3, null
  %icmpEq = icmp eq i1 %7, %8
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %9 = select i1 %7, i32 385876506, i32 180355605
  %10 = xor i32 128975389, %9
  br i1 %7, label %common.ret28, label %11

11:                                               ; preds = %6
  %cfg_DestPhi = phi i32 [ 128975389, %6 ]
  %12 = phi i32 [ 128975389, %6 ]
  %13 = phi i32 [ 128975389, %6 ]
  %14 = phi i32 [ 128975389, %6 ]
  %15 = phi i32 [ 128975389, %6 ]
  %16 = phi i32 [ 128975389, %6 ]
  %17 = phi i32 [ 128975389, %6 ]
  %cfg_DiffPhi = phi i32 [ %10, %6 ]
  %18 = phi i32 [ %10, %6 ]
  %19 = phi i32 [ %10, %6 ]
  %20 = phi i32 [ %10, %6 ]
  %21 = phi i32 [ %10, %6 ]
  %22 = phi i32 [ %10, %6 ]
  %23 = phi i32 [ %10, %6 ]
  %24 = phi i32 [ %10, %6 ]
  %icmpEq97 = icmp eq i32 %23, %24
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq95 = icmp eq i32 %21, %22
  %25 = icmp eq i32 %22, %22
  %icmpEq99 = icmp eq i1 %icmpEq95, %25
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %icmpEq93 = icmp eq i32 %19, %20
  %zext94 = zext i1 %icmpEq93 to i32
  %26 = zext i1 %icmpEq93 to i32
  %icmpEq101 = icmp eq i32 %zext94, %26
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  call void @assert_ft(i32 %zext94, i32 35)
  %icmpEq91 = icmp eq i32 %cfg_DiffPhi, %18
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %icmpEq89 = icmp eq i32 %16, %17
  %27 = icmp eq i32 %17, %17
  %icmpEq103 = icmp eq i1 %icmpEq89, %27
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %icmpEq87 = icmp eq i32 %14, %15
  %zext88 = zext i1 %icmpEq87 to i32
  %28 = zext i1 %icmpEq87 to i32
  %icmpEq105 = icmp eq i32 %zext88, %28
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %12, %13
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq65 = icmp eq i32 %21, %23
  %29 = icmp eq i32 %22, %24
  %icmpEq107 = icmp eq i1 %icmpEq65, %29
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq63 = icmp eq i32 %cfg_DiffPhi, %19
  %30 = icmp eq i32 %18, %20
  %31 = icmp eq i32 %18, %20
  %icmpEq109 = icmp eq i1 %30, %31
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq67 = icmp eq i1 %icmpEq63, %30
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %zext64 = zext i1 %icmpEq63 to i32
  %32 = zext i1 %30 to i32
  %icmpEq111 = icmp eq i32 %zext64, %32
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq61 = icmp eq i32 %14, %16
  %zext62 = zext i1 %icmpEq61 to i32
  %33 = zext i1 %icmpEq61 to i32
  %34 = zext i1 %icmpEq61 to i32
  %icmpEq113 = icmp eq i32 %33, %34
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq69 = icmp eq i32 %zext62, %33
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq59 = icmp eq i32 %cfg_DestPhi, %12
  %35 = icmp eq i32 %12, %13
  %icmpEq115 = icmp eq i1 %icmpEq59, %35
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq51 = icmp eq i32 %cfg_DiffPhi, %21
  %36 = icmp eq i32 %18, %22
  %37 = icmp eq i32 %18, %22
  %icmpEq117 = icmp eq i1 %36, %37
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %icmpEq71 = icmp eq i1 %icmpEq51, %36
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %zext52 = zext i1 %icmpEq51 to i32
  %38 = zext i1 %36 to i32
  %icmpEq119 = icmp eq i32 %zext52, %38
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i32 %cfg_DestPhi, %14
  %39 = icmp eq i32 %12, %15
  %40 = icmp eq i32 %12, %15
  %41 = icmp eq i32 %12, %15
  %icmpEq121 = icmp eq i1 %40, %41
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq73 = icmp eq i1 %39, %40
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %icmpEq53 = icmp eq i1 %icmpEq49, %39
  %42 = icmp eq i1 %39, %40
  %icmpEq123 = icmp eq i1 %icmpEq53, %42
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %zext50 = zext i1 %icmpEq49 to i32
  %43 = zext i1 %39 to i32
  %44 = zext i1 %39 to i32
  %icmpEq125 = icmp eq i32 %43, %44
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq75 = icmp eq i32 %zext50, %43
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  call void @assert_ft(i32 %zext50, i32 35)
  %45 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %46 = xor i32 %12, %18
  %icmpEq127 = icmp eq i32 %45, %46
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %cfg_icmpEq = icmp eq i32 %45, 180355605
  %47 = icmp eq i32 %46, 180355605
  %48 = icmp eq i32 %46, 180355605
  %icmpEq77 = icmp eq i1 %47, %48
  %49 = icmp eq i1 %48, %48
  %icmpEq129 = icmp eq i1 %icmpEq77, %49
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq55 = icmp eq i1 %cfg_icmpEq, %47
  %zext56 = zext i1 %icmpEq55 to i32
  %50 = zext i1 %icmpEq55 to i32
  %icmpEq131 = icmp eq i32 %zext56, %50
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  call void @assert_ft(i32 %zext56, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %51 = zext i1 %47 to i32
  %icmpEq79 = icmp eq i32 %cfg_zext, %51
  %52 = icmp eq i32 %51, %51
  %icmpEq133 = icmp eq i1 %icmpEq79, %52
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %45, i32 35)
  %.not = icmp eq i32 %4, 0
  %53 = icmp eq i32 %4, 0
  %icmpEq135 = icmp eq i1 %.not, %53
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %54 = select i1 %.not, i32 231736065, i32 283116314
  %55 = select i1 %53, i32 231736065, i32 283116314
  %56 = select i1 %53, i32 231736065, i32 283116314
  %icmpEq81 = icmp eq i32 %55, %56
  %57 = icmp eq i32 %56, %56
  %icmpEq137 = icmp eq i1 %icmpEq81, %57
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq57 = icmp eq i32 %54, %55
  %zext58 = zext i1 %icmpEq57 to i32
  %58 = zext i1 %icmpEq57 to i32
  %icmpEq139 = icmp eq i32 %zext58, %58
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  call void @assert_ft(i32 %zext58, i32 35)
  %59 = xor i32 180355605, %54
  %60 = xor i32 180355605, %55
  %icmpEq83 = icmp eq i32 %59, %60
  %61 = icmp eq i32 %60, %60
  %icmpEq141 = icmp eq i1 %icmpEq83, %61
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  br i1 %.not, label %62, label %70

62:                                               ; preds = %11
  %cfg_DestPhi29 = phi i32 [ 180355605, %11 ]
  %63 = phi i32 [ 180355605, %11 ]
  %cfg_DiffPhi30 = phi i32 [ %59, %11 ]
  %64 = phi i32 [ %60, %11 ]
  %icmpEq145 = icmp eq i32 %cfg_DiffPhi30, %64
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %cfg_DestPhi29, %63
  %65 = icmp eq i32 %63, %63
  %icmpEq147 = icmp eq i1 %icmpEq143, %65
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %66 = xor i32 %cfg_DestPhi29, %cfg_DiffPhi30
  %cfg_icmpEq31 = icmp eq i32 %66, 231736065
  %67 = icmp eq i32 %66, 231736065
  %icmpEq149 = icmp eq i1 %cfg_icmpEq31, %67
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %cfg_zext32 = zext i1 %cfg_icmpEq31 to i32
  call void @assert_cfg_ft(i32 %cfg_zext32, i32 %66, i32 35)
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 2)
  %69 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

70:                                               ; preds = %11
  %cfg_DestPhi33 = phi i32 [ 180355605, %11 ]
  %71 = phi i32 [ 180355605, %11 ]
  %cfg_DiffPhi34 = phi i32 [ %59, %11 ]
  %72 = phi i32 [ %60, %11 ]
  %icmpEq153 = icmp eq i32 %cfg_DiffPhi34, %72
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %icmpEq151 = icmp eq i32 %cfg_DestPhi33, %71
  %73 = icmp eq i32 %71, %71
  %icmpEq155 = icmp eq i1 %icmpEq151, %73
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %74 = xor i32 %cfg_DestPhi33, %cfg_DiffPhi34
  %cfg_icmpEq35 = icmp eq i32 %74, 283116314
  %75 = icmp eq i32 %74, 283116314
  %icmpEq157 = icmp eq i1 %cfg_icmpEq35, %75
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %cfg_zext36 = zext i1 %cfg_icmpEq35 to i32
  call void @assert_cfg_ft(i32 %cfg_zext36, i32 %74, i32 35)
  %76 = load i16, ptr %3, align 8
  %77 = icmp eq i16 %76, 1
  %78 = icmp eq i16 %76, 1
  %icmpEq159 = icmp eq i1 %77, %78
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %79 = select i1 %77, i32 334498053, i32 437258503
  %80 = xor i32 283116314, %79
  br i1 %77, label %81, label %102

81:                                               ; preds = %70
  %cfg_DestPhi37 = phi i32 [ 283116314, %70 ]
  %82 = phi i32 [ 283116314, %70 ]
  %cfg_DiffPhi38 = phi i32 [ %80, %70 ]
  %83 = phi i32 [ %80, %70 ]
  %icmpEq163 = icmp eq i32 %cfg_DiffPhi38, %83
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq161 = icmp eq i32 %cfg_DestPhi37, %82
  %84 = icmp eq i32 %82, %82
  %icmpEq165 = icmp eq i1 %icmpEq161, %84
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %85 = xor i32 %cfg_DestPhi37, %cfg_DiffPhi38
  %cfg_icmpEq39 = icmp eq i32 %85, 334498053
  %86 = icmp eq i32 %85, 334498053
  %icmpEq167 = icmp eq i1 %cfg_icmpEq39, %86
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %cfg_zext40 = zext i1 %cfg_icmpEq39 to i32
  call void @assert_cfg_ft(i32 %cfg_zext40, i32 %85, i32 35)
  %87 = ptrtoint ptr %3 to i64
  %88 = trunc i64 %87 to i32
  %89 = trunc i64 %87 to i32
  %icmpEq169 = icmp eq i32 %88, %89
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %90 = and i32 %88, 127
  %91 = tail call ptr @cell_alloc(i32 noundef %90)
  %92 = tail call i32 @subindex(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %4)
  %93 = sext i32 %92 to i64
  %94 = sext i32 %92 to i64
  %icmpEq171 = icmp eq i64 %93, %94
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %95 = getelementptr inbounds %struct.cnode, ptr %91, i64 0, i32 5, i64 %93
  store ptr %3, ptr %95, align 8
  br label %102

common.ret28:                                     ; preds = %102, %6
  %common.ret28.op = phi ptr [ %.025, %102 ], [ %0, %6 ]
  %96 = phi ptr [ %.025, %102 ], [ %0, %6 ]
  %cfg_DestPhi41 = phi i32 [ 128975389, %6 ], [ 437258503, %102 ]
  %97 = phi i32 [ 128975389, %6 ], [ 437258503, %102 ]
  %cfg_DiffPhi42 = phi i32 [ %10, %6 ], [ 219155229, %102 ]
  %98 = phi i32 [ %10, %6 ], [ 219155229, %102 ]
  %icmpEq175 = icmp eq i32 %cfg_DiffPhi42, %98
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %icmpEq173 = icmp eq i32 %cfg_DestPhi41, %97
  %99 = icmp eq i32 %97, %97
  %icmpEq177 = icmp eq i1 %icmpEq173, %99
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %100 = xor i32 %cfg_DestPhi41, %cfg_DiffPhi42
  %cfg_icmpEq43 = icmp eq i32 %100, 385876506
  %101 = icmp eq i32 %100, 385876506
  %icmpEq179 = icmp eq i1 %cfg_icmpEq43, %101
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %cfg_zext44 = zext i1 %cfg_icmpEq43 to i32
  call void @assert_cfg_ft(i32 %cfg_zext44, i32 %100, i32 35)
  ret ptr %common.ret28.op

102:                                              ; preds = %81, %70
  %.025 = phi ptr [ %91, %81 ], [ %3, %70 ]
  %103 = phi ptr [ %91, %81 ], [ %3, %70 ]
  %cfg_DestPhi45 = phi i32 [ 334498053, %81 ], [ 283116314, %70 ]
  %104 = phi i32 [ 334498053, %81 ], [ 283116314, %70 ]
  %cfg_DiffPhi46 = phi i32 [ 165675010, %81 ], [ %80, %70 ]
  %105 = phi i32 [ 165675010, %81 ], [ %80, %70 ]
  %icmpEq183 = icmp eq i32 %cfg_DiffPhi46, %105
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %icmpEq181 = icmp eq i32 %cfg_DestPhi45, %104
  %106 = icmp eq i32 %104, %104
  %icmpEq185 = icmp eq i1 %icmpEq181, %106
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %107 = xor i32 %cfg_DestPhi45, %cfg_DiffPhi46
  %cfg_icmpEq47 = icmp eq i32 %107, 437258503
  %108 = icmp eq i32 %107, 437258503
  %icmpEq187 = icmp eq i1 %cfg_icmpEq47, %108
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %cfg_zext48 = zext i1 %cfg_icmpEq47 to i32
  call void @assert_cfg_ft(i32 %cfg_zext48, i32 %107, i32 35)
  %109 = tail call i32 @old_subindex(i64 %1, i64 %2, i32 noundef %4)
  %110 = sext i32 %109 to i64
  %111 = sext i32 %109 to i64
  %icmpEq189 = icmp eq i64 %110, %111
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %112 = getelementptr inbounds %struct.cnode, ptr %.025, i64 0, i32 5, i64 %110
  %113 = load ptr, ptr %112, align 8
  %114 = ashr i32 %4, 1
  %115 = tail call ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %113, i32 noundef %114, ptr noundef %5)
  store ptr %115, ptr %112, align 8
  br label %common.ret28
}

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local double @hackcofm(ptr nocapture noundef %0) local_unnamed_addr #15 {
  %2 = load i16, ptr %0, align 8
  %3 = load i16, ptr %0, align 8
  %icmpEq = icmp eq i16 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = icmp eq i16 %2, 2
  %5 = select i1 %4, i32 180357378, i32 385876738
  %6 = xor i32 128975641, %5
  br i1 %4, label %.preheader46, label %85

.preheader46:                                     ; preds = %.loopexit45, %1
  %.sroa.0.0 = phi double [ %.sroa.0.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %7 = phi double [ %.sroa.0.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.4.0 = phi double [ %.sroa.4.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %8 = phi double [ %.sroa.4.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %.sroa.7.0 = phi double [ %.sroa.7.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %9 = phi double [ %.sroa.7.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit45 ], [ 0, %1 ]
  %10 = phi i64 [ %indvars.iv.next, %.loopexit45 ], [ 0, %1 ]
  %.04252 = phi double [ %.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %11 = phi double [ %.1, %.loopexit45 ], [ 0.000000e+00, %1 ]
  %cfg_DestPhi = phi i32 [ 128975641, %1 ], [ 283117348, %.loopexit45 ]
  %12 = phi i32 [ 128975641, %1 ], [ 283117348, %.loopexit45 ]
  %cfg_DiffPhi = phi i32 [ %6, %1 ], [ %66, %.loopexit45 ]
  %13 = phi i32 [ %6, %1 ], [ %66, %.loopexit45 ]
  %icmpEq86 = icmp eq i32 %cfg_DiffPhi, %13
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq84 = icmp eq i32 %cfg_DestPhi, %12
  %14 = icmp eq i32 %12, %12
  %icmpEq88 = icmp eq i1 %icmpEq84, %14
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i64 %indvars.iv, %10
  %zext83 = zext i1 %icmpEq82 to i32
  %15 = zext i1 %icmpEq82 to i32
  %icmpEq90 = icmp eq i32 %zext83, %15
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  call void @assert_ft(i32 %zext83, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180357378
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %17 = zext i1 %cfg_icmpEq to i32
  %icmpEq92 = icmp eq i32 %cfg_zext, %17
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %18 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 %indvars.iv
  %19 = load ptr, ptr %18, align 8
  %.not = icmp eq ptr %19, null
  %20 = icmp eq ptr %19, null
  %icmpEq94 = icmp eq i1 %.not, %20
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %21 = select i1 %.not, i32 283117348, i32 231739141
  %22 = xor i32 180357378, %21
  br i1 %.not, label %.loopexit45, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader46
  %cfg_DestPhi62 = phi i32 [ 180357378, %.preheader46 ]
  %23 = phi i32 [ 180357378, %.preheader46 ]
  %cfg_DiffPhi63 = phi i32 [ %22, %.preheader46 ]
  %24 = phi i32 [ %22, %.preheader46 ]
  %icmpEq98 = icmp eq i32 %cfg_DiffPhi63, %24
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq96 = icmp eq i32 %cfg_DestPhi62, %23
  %25 = icmp eq i32 %23, %23
  %icmpEq100 = icmp eq i1 %icmpEq96, %25
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %26 = xor i32 %cfg_DestPhi62, %cfg_DiffPhi63
  %cfg_icmpEq64 = icmp eq i32 %26, 231739141
  %27 = icmp eq i32 %26, 231739141
  %icmpEq102 = icmp eq i1 %cfg_icmpEq64, %27
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %cfg_zext65 = zext i1 %cfg_icmpEq64 to i32
  call void @assert_cfg_ft(i32 %cfg_zext65, i32 %26, i32 35)
  %28 = tail call double @hackcofm(ptr noundef nonnull %19)
  %29 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 2, i64 0
  %30 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 2, i64 0
  %31 = load double, ptr %29, align 8
  %32 = load double, ptr %30, align 8
  %33 = fmul double %28, %31
  %34 = fmul double %28, %32
  %35 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 2, i64 1
  %36 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 2, i64 1
  %37 = load double, ptr %35, align 8
  %38 = load double, ptr %36, align 8
  %39 = fmul double %28, %37
  %40 = fmul double %28, %38
  %41 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 2, i64 2
  %42 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 2, i64 2
  %43 = load double, ptr %41, align 8
  %44 = load double, ptr %42, align 8
  %45 = fmul double %28, %43
  %46 = fmul double %28, %44
  %47 = fadd double %.sroa.0.0, %33
  %48 = fadd double %7, %34
  %49 = fadd double %.sroa.4.0, %39
  %50 = fadd double %8, %40
  %51 = fadd double %.sroa.7.0, %45
  %52 = fadd double %9, %46
  %53 = fadd double %.04252, %28
  %54 = fadd double %11, %28
  br label %.loopexit45

.loopexit45:                                      ; preds = %.preheader.preheader, %.preheader46
  %.sroa.0.1 = phi double [ %.sroa.0.0, %.preheader46 ], [ %47, %.preheader.preheader ]
  %55 = phi double [ %7, %.preheader46 ], [ %48, %.preheader.preheader ]
  %.sroa.4.1 = phi double [ %.sroa.4.0, %.preheader46 ], [ %49, %.preheader.preheader ]
  %56 = phi double [ %8, %.preheader46 ], [ %50, %.preheader.preheader ]
  %.sroa.7.1 = phi double [ %.sroa.7.0, %.preheader46 ], [ %51, %.preheader.preheader ]
  %57 = phi double [ %9, %.preheader46 ], [ %52, %.preheader.preheader ]
  %.1 = phi double [ %.04252, %.preheader46 ], [ %53, %.preheader.preheader ]
  %58 = phi double [ %11, %.preheader46 ], [ %54, %.preheader.preheader ]
  %cfg_DestPhi66 = phi i32 [ 231739141, %.preheader.preheader ], [ 180357378, %.preheader46 ]
  %59 = phi i32 [ 231739141, %.preheader.preheader ], [ 180357378, %.preheader46 ]
  %cfg_DiffPhi67 = phi i32 [ 489687073, %.preheader.preheader ], [ %22, %.preheader46 ]
  %60 = phi i32 [ 489687073, %.preheader.preheader ], [ %22, %.preheader46 ]
  %icmpEq106 = icmp eq i32 %cfg_DiffPhi67, %60
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq104 = icmp eq i32 %cfg_DestPhi66, %59
  %61 = icmp eq i32 %59, %59
  %icmpEq108 = icmp eq i1 %icmpEq104, %61
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %62 = xor i32 %cfg_DestPhi66, %cfg_DiffPhi67
  %cfg_icmpEq68 = icmp eq i32 %62, 283117348
  %63 = icmp eq i32 %62, 283117348
  %icmpEq110 = icmp eq i1 %cfg_icmpEq68, %63
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %cfg_zext69 = zext i1 %cfg_icmpEq68 to i32
  call void @assert_cfg_ft(i32 %cfg_zext69, i32 %62, i32 35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  %64 = icmp eq i64 %indvars.iv.next, 8
  %icmpEq112 = icmp eq i1 %exitcond.not, %64
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %65 = select i1 %exitcond.not, i32 334498835, i32 180357378
  %66 = xor i32 283117348, %65
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.preheader46

.loopexit.loopexit:                               ; preds = %.loopexit45
  %cfg_DestPhi70 = phi i32 [ 283117348, %.loopexit45 ]
  %67 = phi i32 [ 283117348, %.loopexit45 ]
  %cfg_DiffPhi71 = phi i32 [ %66, %.loopexit45 ]
  %68 = phi i32 [ %66, %.loopexit45 ]
  %icmpEq116 = icmp eq i32 %cfg_DiffPhi71, %68
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %cfg_DestPhi70, %67
  %69 = icmp eq i32 %67, %67
  %icmpEq118 = icmp eq i1 %icmpEq114, %69
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %70 = xor i32 %cfg_DestPhi70, %cfg_DiffPhi71
  %cfg_icmpEq72 = icmp eq i32 %70, 334498835
  %71 = icmp eq i32 %70, 334498835
  %icmpEq120 = icmp eq i1 %cfg_icmpEq72, %71
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %cfg_zext73 = zext i1 %cfg_icmpEq72 to i32
  call void @assert_cfg_ft(i32 %cfg_zext73, i32 %70, i32 35)
  %72 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  store double %.1, ptr %72, align 8
  %73 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %74 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %75 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %76 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 1
  %77 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %78 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  %79 = fdiv double %.sroa.0.1, %.1
  %80 = fdiv double %55, %58
  store double %79, ptr %73, align 8
  %81 = fdiv double %.sroa.4.1, %.1
  %82 = fdiv double %56, %58
  store double %81, ptr %75, align 8
  %83 = fdiv double %.sroa.7.1, %.1
  %84 = fdiv double %57, %58
  store double %83, ptr %77, align 8
  br label %.loopexit

85:                                               ; preds = %1
  %cfg_DestPhi74 = phi i32 [ 128975641, %1 ]
  %86 = phi i32 [ 128975641, %1 ]
  %cfg_DiffPhi75 = phi i32 [ %6, %1 ]
  %87 = phi i32 [ %6, %1 ]
  %icmpEq124 = icmp eq i32 %cfg_DiffPhi75, %87
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq122 = icmp eq i32 %cfg_DestPhi74, %86
  %88 = icmp eq i32 %86, %86
  %icmpEq126 = icmp eq i1 %icmpEq122, %88
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %89 = xor i32 %cfg_DestPhi74, %cfg_DiffPhi75
  %cfg_icmpEq76 = icmp eq i32 %89, 385876738
  %90 = icmp eq i32 %89, 385876738
  %icmpEq128 = icmp eq i1 %cfg_icmpEq76, %90
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %cfg_zext77 = zext i1 %cfg_icmpEq76 to i32
  call void @assert_cfg_ft(i32 %cfg_zext77, i32 %89, i32 35)
  %91 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %92 = load double, ptr %91, align 8
  %93 = load double, ptr %91, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %85, %.loopexit.loopexit
  %.041 = phi double [ %92, %85 ], [ %.1, %.loopexit.loopexit ]
  %94 = phi double [ %93, %85 ], [ %58, %.loopexit.loopexit ]
  %cfg_DestPhi78 = phi i32 [ 334498835, %.loopexit.loopexit ], [ 385876738, %85 ]
  %95 = phi i32 [ 334498835, %.loopexit.loopexit ], [ 385876738, %85 ]
  %cfg_DiffPhi79 = phi i32 [ 165678593, %.loopexit.loopexit ], [ 219152656, %85 ]
  %96 = phi i32 [ 165678593, %.loopexit.loopexit ], [ 219152656, %85 ]
  %icmpEq132 = icmp eq i32 %cfg_DiffPhi79, %96
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %icmpEq130 = icmp eq i32 %cfg_DestPhi78, %95
  %97 = icmp eq i32 %95, %95
  %icmpEq134 = icmp eq i1 %icmpEq130, %97
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %98 = xor i32 %cfg_DestPhi78, %cfg_DiffPhi79
  %cfg_icmpEq80 = icmp eq i32 %98, 437256722
  %99 = icmp eq i32 %98, 437256722
  %icmpEq136 = icmp eq i1 %cfg_icmpEq80, %99
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %cfg_zext81 = zext i1 %cfg_icmpEq80 to i32
  call void @assert_cfg_ft(i32 %cfg_zext81, i32 %98, i32 35)
  ret double %.041
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local ptr @cell_alloc(i32 noundef %0) local_unnamed_addr #16 {
  %2 = load ptr, ptr @cp_free_list, align 8
  %3 = load ptr, ptr @cp_free_list, align 8
  %.not = icmp eq ptr %2, null
  %4 = icmp eq ptr %3, null
  %icmpEq = icmp eq i1 %.not, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %.not, i32 231735821, i32 180356101
  %6 = xor i32 128975641, %5
  br i1 %.not, label %16, label %7

7:                                                ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975641, %1 ]
  %8 = phi i32 [ 128975641, %1 ]
  %cfg_DiffPhi = phi i32 [ %6, %1 ]
  %9 = phi i32 [ %6, %1 ]
  %icmpEq20 = icmp eq i32 %cfg_DiffPhi, %9
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %icmpEq18 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq22 = icmp eq i1 %icmpEq18, %10
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356101
  %12 = icmp eq i32 %11, 180356101
  %icmpEq24 = icmp eq i1 %cfg_icmpEq, %12
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = getelementptr inbounds %struct.cnode, ptr %2, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %13, align 8
  store ptr %14, ptr @cp_free_list, align 8
  br label %23

16:                                               ; preds = %1
  %cfg_DestPhi10 = phi i32 [ 128975641, %1 ]
  %17 = phi i32 [ 128975641, %1 ]
  %cfg_DiffPhi11 = phi i32 [ %6, %1 ]
  %18 = phi i32 [ %6, %1 ]
  %icmpEq28 = icmp eq i32 %cfg_DiffPhi11, %18
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %icmpEq26 = icmp eq i32 %cfg_DestPhi10, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq30 = icmp eq i1 %icmpEq26, %19
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %20 = xor i32 %cfg_DestPhi10, %cfg_DiffPhi11
  %cfg_icmpEq12 = icmp eq i32 %20, 231735821
  %21 = icmp eq i32 %20, 231735821
  %icmpEq32 = icmp eq i1 %cfg_icmpEq12, %21
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %cfg_zext13 = zext i1 %cfg_icmpEq12 to i32
  call void @assert_cfg_ft(i32 %cfg_zext13, i32 %20, i32 35)
  %22 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #28
  br label %23

23:                                               ; preds = %16, %7
  %.07 = phi ptr [ %2, %7 ], [ %22, %16 ]
  %24 = phi ptr [ %3, %7 ], [ %22, %16 ]
  %cfg_DestPhi14 = phi i32 [ 231735821, %16 ], [ 180356101, %7 ]
  %25 = phi i32 [ 231735821, %16 ], [ 180356101, %7 ]
  %cfg_DiffPhi15 = phi i32 [ 489686313, %16 ], [ 438305569, %7 ]
  %26 = phi i32 [ 489686313, %16 ], [ 438305569, %7 ]
  %icmpEq36 = icmp eq i32 %cfg_DiffPhi15, %26
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %icmpEq34 = icmp eq i32 %cfg_DestPhi14, %25
  %27 = icmp eq i32 %25, %25
  %icmpEq38 = icmp eq i1 %icmpEq34, %27
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %28 = xor i32 %cfg_DestPhi14, %cfg_DiffPhi15
  %cfg_icmpEq16 = icmp eq i32 %28, 283117348
  %29 = icmp eq i32 %28, 283117348
  %icmpEq40 = icmp eq i1 %cfg_icmpEq16, %29
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %cfg_zext17 = zext i1 %cfg_icmpEq16 to i32
  call void @assert_cfg_ft(i32 %cfg_zext17, i32 %28, i32 35)
  store i16 2, ptr %.07, align 8
  %30 = getelementptr inbounds %struct.cnode, ptr %.07, i64 0, i32 3
  %31 = getelementptr inbounds %struct.cnode, ptr %24, i64 0, i32 3
  store i32 %0, ptr %30, align 8
  %scevgep = getelementptr i8, ptr %.07, i64 48
  %32 = getelementptr i8, ptr %24, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %scevgep, i8 0, i64 64, i1 false)
  ret ptr %.07
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @subindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %7 = load double, ptr %4, align 8
  %8 = load double, ptr %5, align 8
  %9 = load double, ptr %4, align 8
  %10 = load double, ptr %5, align 8
  %11 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %12 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %13 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %14 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %15 = load double, ptr %11, align 8
  %16 = load double, ptr %12, align 8
  %17 = load double, ptr %11, align 8
  %18 = load double, ptr %12, align 8
  %19 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %23 = load double, ptr %19, align 8
  %24 = load double, ptr %20, align 8
  %25 = load double, ptr %19, align 8
  %26 = load double, ptr %20, align 8
  %27 = load double, ptr %1, align 8
  %28 = load double, ptr %1, align 8
  %29 = load double, ptr %1, align 8
  %30 = load double, ptr %1, align 8
  %31 = fsub double %7, %27
  %32 = fsub double %8, %28
  %33 = fsub double %7, %27
  %34 = fsub double %8, %28
  %35 = fdiv double %31, %23
  %36 = fdiv double %32, %24
  %37 = fdiv double %31, %23
  %38 = fdiv double %32, %24
  %39 = fcmp oge double %35, 0.000000e+00
  %40 = fcmp oge double %36, 0.000000e+00
  %icmpEq58 = icmp eq i1 %39, %40
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %41 = fcmp oge double %35, 0.000000e+00
  %icmpEq = icmp eq i1 %39, %41
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %42 = fcmp olt double %35, 1.000000e+00
  %43 = fcmp olt double %36, 1.000000e+00
  %icmpEq60 = icmp eq i1 %42, %43
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %or.cond = and i1 %39, %42
  %44 = select i1 %or.cond, i32 231737884, i32 180355853
  %45 = xor i32 128978198, %44
  %46 = xor i32 128978198, %44
  %47 = xor i32 128978198, %44
  %icmpEq62 = icmp eq i32 %46, %47
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq56 = icmp eq i32 %45, %46
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  br i1 %or.cond, label %56, label %48

48:                                               ; preds = %3
  %cfg_DestPhi = phi i32 [ 128978198, %3 ]
  %49 = phi i32 [ 128978198, %3 ]
  %cfg_DiffPhi = phi i32 [ %45, %3 ]
  %50 = phi i32 [ %46, %3 ]
  %icmpEq66 = icmp eq i32 %cfg_DiffPhi, %50
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DestPhi, %49
  %51 = icmp eq i32 %49, %49
  %icmpEq68 = icmp eq i1 %icmpEq64, %51
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %52 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %52, 180355853
  %53 = icmp eq i32 %52, 180355853
  %icmpEq70 = icmp eq i1 %cfg_icmpEq, %53
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %52, i32 35)
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 5)
  %55 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

56:                                               ; preds = %3
  %cfg_DestPhi36 = phi i32 [ 128978198, %3 ]
  %57 = phi i32 [ 128978198, %3 ]
  %58 = phi i32 [ 128978198, %3 ]
  %cfg_DiffPhi37 = phi i32 [ %45, %3 ]
  %59 = phi i32 [ %46, %3 ]
  %60 = phi i32 [ %45, %3 ]
  %61 = phi i32 [ %46, %3 ]
  %icmpEq88 = icmp eq i32 %60, %61
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq86 = icmp eq i32 %cfg_DiffPhi37, %59
  %62 = icmp eq i32 %59, %59
  %icmpEq90 = icmp eq i1 %icmpEq86, %62
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq84 = icmp eq i32 %57, %58
  %zext85 = zext i1 %icmpEq84 to i32
  %63 = zext i1 %icmpEq84 to i32
  %icmpEq92 = icmp eq i32 %zext85, %63
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq74 = icmp eq i32 %cfg_DiffPhi37, %60
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq72 = icmp eq i32 %cfg_DestPhi36, %57
  %64 = icmp eq i32 %57, %58
  %icmpEq94 = icmp eq i1 %icmpEq72, %64
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %65 = icmp eq i32 %cfg_DestPhi36, %57
  %icmpEq76 = icmp eq i1 %icmpEq72, %65
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %zext73 = zext i1 %icmpEq72 to i32
  %66 = zext i1 %64 to i32
  %icmpEq96 = icmp eq i32 %zext73, %66
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  call void @assert_ft(i32 %zext73, i32 35)
  %67 = xor i32 %cfg_DestPhi36, %cfg_DiffPhi37
  %cfg_icmpEq38 = icmp eq i32 %67, 231737884
  %68 = icmp eq i32 %67, 231737884
  %69 = icmp eq i32 %67, 231737884
  %icmpEq98 = icmp eq i1 %68, %69
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %icmpEq78 = icmp eq i1 %cfg_icmpEq38, %68
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %cfg_zext39 = zext i1 %cfg_icmpEq38 to i32
  %70 = zext i1 %68 to i32
  %icmpEq100 = icmp eq i32 %cfg_zext39, %70
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext39, i32 %67, i32 35)
  %71 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %72 = load double, ptr %71, align 8
  %73 = load double, ptr %71, align 8
  %74 = load double, ptr %71, align 8
  %75 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %76 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %77 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %78 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %79 = load double, ptr %75, align 8
  %80 = load double, ptr %76, align 8
  %81 = load double, ptr %75, align 8
  %82 = load double, ptr %76, align 8
  %83 = fsub double %72, %79
  %84 = fsub double %73, %80
  %85 = fsub double %72, %79
  %86 = fsub double %73, %80
  %87 = fdiv double %83, %23
  %88 = fdiv double %84, %24
  %89 = fdiv double %83, %23
  %90 = fdiv double %84, %24
  %91 = fcmp oge double %87, 0.000000e+00
  %92 = fcmp oge double %88, 0.000000e+00
  %icmpEq102 = icmp eq i1 %91, %92
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %93 = fcmp oge double %87, 0.000000e+00
  %icmpEq80 = icmp eq i1 %91, %93
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %94 = fcmp olt double %87, 1.000000e+00
  %95 = fcmp olt double %88, 1.000000e+00
  %icmpEq104 = icmp eq i1 %94, %95
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %or.cond3 = and i1 %91, %94
  %96 = select i1 %or.cond3, i32 334497817, i32 283116314
  %97 = xor i32 231737884, %96
  %98 = xor i32 231737884, %96
  %99 = xor i32 231737884, %96
  %icmpEq106 = icmp eq i32 %98, %99
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %icmpEq82 = icmp eq i32 %97, %98
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  br i1 %or.cond3, label %108, label %100

100:                                              ; preds = %56
  %cfg_DestPhi40 = phi i32 [ 231737884, %56 ]
  %101 = phi i32 [ 231737884, %56 ]
  %cfg_DiffPhi41 = phi i32 [ %97, %56 ]
  %102 = phi i32 [ %98, %56 ]
  %icmpEq110 = icmp eq i32 %cfg_DiffPhi41, %102
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %icmpEq108 = icmp eq i32 %cfg_DestPhi40, %101
  %103 = icmp eq i32 %101, %101
  %icmpEq112 = icmp eq i1 %icmpEq108, %103
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %104 = xor i32 %cfg_DestPhi40, %cfg_DiffPhi41
  %cfg_icmpEq42 = icmp eq i32 %104, 283116314
  %105 = icmp eq i32 %104, 283116314
  %icmpEq114 = icmp eq i1 %cfg_icmpEq42, %105
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %cfg_zext43 = zext i1 %cfg_icmpEq42 to i32
  call void @assert_cfg_ft(i32 %cfg_zext43, i32 %104, i32 35)
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 6)
  %107 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

108:                                              ; preds = %56
  %cfg_DestPhi44 = phi i32 [ 231737884, %56 ]
  %109 = phi i32 [ 231737884, %56 ]
  %110 = phi i32 [ 231737884, %56 ]
  %cfg_DiffPhi45 = phi i32 [ %97, %56 ]
  %111 = phi i32 [ %98, %56 ]
  %112 = phi i32 [ %97, %56 ]
  %113 = phi i32 [ %98, %56 ]
  %icmpEq132 = icmp eq i32 %112, %113
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %icmpEq130 = icmp eq i32 %cfg_DiffPhi45, %111
  %114 = icmp eq i32 %111, %111
  %icmpEq134 = icmp eq i1 %icmpEq130, %114
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %icmpEq128 = icmp eq i32 %109, %110
  %zext129 = zext i1 %icmpEq128 to i32
  %115 = zext i1 %icmpEq128 to i32
  %icmpEq136 = icmp eq i32 %zext129, %115
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq118 = icmp eq i32 %cfg_DiffPhi45, %112
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %icmpEq116 = icmp eq i32 %cfg_DestPhi44, %109
  %116 = icmp eq i32 %109, %110
  %icmpEq138 = icmp eq i1 %icmpEq116, %116
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %117 = icmp eq i32 %cfg_DestPhi44, %109
  %icmpEq120 = icmp eq i1 %icmpEq116, %117
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %zext117 = zext i1 %icmpEq116 to i32
  %118 = zext i1 %116 to i32
  %icmpEq140 = icmp eq i32 %zext117, %118
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_ft(i32 %zext117, i32 35)
  %119 = xor i32 %cfg_DestPhi44, %cfg_DiffPhi45
  %cfg_icmpEq46 = icmp eq i32 %119, 334497817
  %120 = icmp eq i32 %119, 334497817
  %121 = icmp eq i32 %119, 334497817
  %icmpEq142 = icmp eq i1 %120, %121
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %icmpEq122 = icmp eq i1 %cfg_icmpEq46, %120
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %cfg_zext47 = zext i1 %cfg_icmpEq46 to i32
  %122 = zext i1 %120 to i32
  %icmpEq144 = icmp eq i32 %cfg_zext47, %122
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext47, i32 %119, i32 35)
  %123 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %124 = load double, ptr %123, align 8
  %125 = load double, ptr %123, align 8
  %126 = load double, ptr %123, align 8
  %127 = fsub double %15, %124
  %128 = fsub double %16, %125
  %129 = fsub double %15, %124
  %130 = fsub double %16, %125
  %131 = fdiv double %127, %23
  %132 = fdiv double %128, %24
  %133 = fdiv double %127, %23
  %134 = fdiv double %128, %24
  %135 = fcmp oge double %131, 0.000000e+00
  %136 = fcmp oge double %132, 0.000000e+00
  %icmpEq146 = icmp eq i1 %135, %136
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %137 = fcmp oge double %131, 0.000000e+00
  %icmpEq124 = icmp eq i1 %135, %137
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %138 = fcmp olt double %131, 1.000000e+00
  %139 = fcmp olt double %132, 1.000000e+00
  %icmpEq148 = icmp eq i1 %138, %139
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %or.cond5 = and i1 %135, %138
  %140 = select i1 %or.cond5, i32 437261572, i32 385876738
  %141 = xor i32 334497817, %140
  %142 = xor i32 334497817, %140
  %143 = xor i32 334497817, %140
  %icmpEq150 = icmp eq i32 %142, %143
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %icmpEq126 = icmp eq i32 %141, %142
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  br i1 %or.cond5, label %152, label %144

144:                                              ; preds = %108
  %cfg_DestPhi48 = phi i32 [ 334497817, %108 ]
  %145 = phi i32 [ 334497817, %108 ]
  %cfg_DiffPhi49 = phi i32 [ %141, %108 ]
  %146 = phi i32 [ %142, %108 ]
  %icmpEq154 = icmp eq i32 %cfg_DiffPhi49, %146
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %icmpEq152 = icmp eq i32 %cfg_DestPhi48, %145
  %147 = icmp eq i32 %145, %145
  %icmpEq156 = icmp eq i1 %icmpEq152, %147
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %148 = xor i32 %cfg_DestPhi48, %cfg_DiffPhi49
  %cfg_icmpEq50 = icmp eq i32 %148, 385876738
  %149 = icmp eq i32 %148, 385876738
  %icmpEq158 = icmp eq i1 %cfg_icmpEq50, %149
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %cfg_zext51 = zext i1 %cfg_icmpEq50 to i32
  call void @assert_cfg_ft(i32 %cfg_zext51, i32 %148, i32 35)
  %150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 7)
  %151 = tail call i32 @exit(i32 noundef 0) #29
  unreachable

152:                                              ; preds = %108
  %cfg_DestPhi52 = phi i32 [ 334497817, %108 ]
  %153 = phi i32 [ 334497817, %108 ]
  %cfg_DiffPhi53 = phi i32 [ %141, %108 ]
  %154 = phi i32 [ %142, %108 ]
  %icmpEq162 = icmp eq i32 %cfg_DiffPhi53, %154
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %icmpEq160 = icmp eq i32 %cfg_DestPhi52, %153
  %155 = icmp eq i32 %153, %153
  %icmpEq164 = icmp eq i1 %icmpEq160, %155
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %156 = xor i32 %cfg_DestPhi52, %cfg_DiffPhi53
  %cfg_icmpEq54 = icmp eq i32 %156, 437261572
  %157 = icmp eq i32 %156, 437261572
  %icmpEq166 = icmp eq i1 %cfg_icmpEq54, %157
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %cfg_zext55 = zext i1 %cfg_icmpEq54 to i32
  call void @assert_cfg_ft(i32 %cfg_zext55, i32 %156, i32 35)
  %158 = fmul double %87, 0x41D0000000000000
  %159 = tail call double @llvm.floor.f64(double %158)
  %160 = fptosi double %159 to i32
  %161 = fptosi double %159 to i32
  %icmpEq168 = icmp eq i32 %160, %161
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %162 = fmul double %35, 0x41D0000000000000
  %163 = tail call double @llvm.floor.f64(double %162)
  %164 = fptosi double %163 to i32
  %165 = fmul double %131, 0x41D0000000000000
  %166 = fmul double %132, 0x41D0000000000000
  %167 = tail call double @llvm.floor.f64(double %165)
  %168 = fptosi double %167 to i32
  %169 = fptosi double %167 to i32
  %icmpEq170 = icmp eq i32 %168, %169
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %170 = and i32 %164, %2
  %.not = icmp eq i32 %170, 0
  %171 = select i1 %.not, i32 0, i32 4
  %172 = and i32 %160, %2
  %173 = and i32 %161, %2
  %icmpEq172 = icmp eq i32 %172, %173
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %.not.1 = icmp eq i32 %172, 0
  %174 = select i1 %.not.1, i32 0, i32 2
  %.1.1 = or i32 %174, %171
  %175 = and i32 %168, %2
  %176 = and i32 %169, %2
  %icmpEq174 = icmp eq i32 %175, %176
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %.not.2 = icmp ne i32 %175, 0
  %177 = zext i1 %.not.2 to i32
  %.1.2 = or i32 %.1.1, %177
  ret i32 %.1.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ic_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %10 = load double, ptr %3, align 8
  %11 = load double, ptr %4, align 8
  %12 = load double, ptr %3, align 8
  %13 = load double, ptr %4, align 8
  %14 = load double, ptr %3, align 8
  %15 = load double, ptr %4, align 8
  %16 = load double, ptr %3, align 8
  %17 = load double, ptr %4, align 8
  %18 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %19 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %20 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %21 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %22 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %23 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %24 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %25 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %26 = load double, ptr %18, align 8
  %27 = load double, ptr %19, align 8
  %28 = load double, ptr %18, align 8
  %29 = load double, ptr %19, align 8
  %30 = load double, ptr %18, align 8
  %31 = load double, ptr %19, align 8
  %32 = load double, ptr %18, align 8
  %33 = load double, ptr %19, align 8
  %34 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %35 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %36 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %37 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %38 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %39 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %40 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %41 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %42 = load double, ptr %34, align 8
  %43 = load double, ptr %35, align 8
  %44 = load double, ptr %34, align 8
  %45 = load double, ptr %35, align 8
  %46 = load double, ptr %34, align 8
  %47 = load double, ptr %35, align 8
  %48 = load double, ptr %34, align 8
  %49 = load double, ptr %35, align 8
  %50 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %51 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %52 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %53 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %54 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %55 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %56 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %57 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %58 = load double, ptr %50, align 8
  %59 = load double, ptr %51, align 8
  %60 = load double, ptr %50, align 8
  %61 = load double, ptr %51, align 8
  %62 = load double, ptr %50, align 8
  %63 = load double, ptr %51, align 8
  %64 = load double, ptr %50, align 8
  %65 = load double, ptr %51, align 8
  %66 = load double, ptr %1, align 8
  %67 = load double, ptr %1, align 8
  %68 = load double, ptr %1, align 8
  %69 = load double, ptr %1, align 8
  %70 = load double, ptr %1, align 8
  %71 = load double, ptr %1, align 8
  %72 = load double, ptr %1, align 8
  %73 = load double, ptr %1, align 8
  %74 = fsub double %10, %66
  %75 = fsub double %11, %67
  %76 = fsub double %10, %66
  %77 = fsub double %11, %67
  %78 = fsub double %10, %66
  %79 = fsub double %11, %67
  %80 = fsub double %10, %66
  %81 = fsub double %11, %67
  %82 = fdiv double %74, %58
  %83 = fdiv double %75, %59
  %84 = fdiv double %74, %58
  %85 = fdiv double %75, %59
  %86 = fdiv double %74, %58
  %87 = fdiv double %75, %59
  %88 = fdiv double %74, %58
  %89 = fdiv double %75, %59
  %90 = fcmp oge double %82, 0.000000e+00
  %91 = fcmp oge double %83, 0.000000e+00
  %icmpEq44 = icmp eq i1 %90, %91
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %92 = fcmp oge double %82, 0.000000e+00
  %icmpEq28 = icmp eq i1 %90, %92
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %93 = fcmp oge double %82, 0.000000e+00
  %94 = fcmp oge double %83, 0.000000e+00
  %icmpEq46 = icmp eq i1 %93, %94
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq = icmp eq i1 %90, %93
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %95 = fcmp olt double %82, 1.000000e+00
  %96 = fcmp olt double %83, 1.000000e+00
  %icmpEq48 = icmp eq i1 %95, %96
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %97 = fcmp olt double %82, 1.000000e+00
  %icmpEq30 = icmp eq i1 %95, %97
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %or.cond = and i1 %90, %95
  %98 = and i1 %91, %96
  %icmpEq50 = icmp eq i1 %or.cond, %98
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %99 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %100 = load double, ptr %99, align 8
  %101 = load double, ptr %99, align 8
  %102 = load double, ptr %99, align 8
  %103 = load double, ptr %99, align 8
  %104 = fsub double %26, %100
  %105 = fsub double %27, %101
  %106 = fsub double %26, %100
  %107 = fsub double %27, %101
  %108 = fsub double %26, %100
  %109 = fsub double %27, %101
  %110 = fsub double %26, %100
  %111 = fsub double %27, %101
  %112 = fdiv double %104, %58
  %113 = fdiv double %105, %59
  %114 = fdiv double %104, %58
  %115 = fdiv double %105, %59
  %116 = fdiv double %104, %58
  %117 = fdiv double %105, %59
  %118 = fdiv double %104, %58
  %119 = fdiv double %105, %59
  %120 = fcmp oge double %112, 0.000000e+00
  %121 = fcmp oge double %113, 0.000000e+00
  %icmpEq52 = icmp eq i1 %120, %121
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %122 = fcmp oge double %112, 0.000000e+00
  %icmpEq32 = icmp eq i1 %120, %122
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %123 = fcmp oge double %112, 0.000000e+00
  %124 = fcmp oge double %113, 0.000000e+00
  %icmpEq54 = icmp eq i1 %123, %124
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq22 = icmp eq i1 %120, %123
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %125 = fcmp olt double %112, 1.000000e+00
  %126 = fcmp olt double %113, 1.000000e+00
  %icmpEq56 = icmp eq i1 %125, %126
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %127 = fcmp olt double %112, 1.000000e+00
  %icmpEq34 = icmp eq i1 %125, %127
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %or.cond3 = and i1 %120, %125
  %128 = and i1 %121, %126
  %icmpEq58 = icmp eq i1 %or.cond3, %128
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %129 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %130 = load double, ptr %129, align 8
  %131 = load double, ptr %129, align 8
  %132 = load double, ptr %129, align 8
  %133 = load double, ptr %129, align 8
  %134 = fsub double %42, %130
  %135 = fsub double %43, %131
  %136 = fsub double %42, %130
  %137 = fsub double %43, %131
  %138 = fsub double %42, %130
  %139 = fsub double %43, %131
  %140 = fsub double %42, %130
  %141 = fsub double %43, %131
  %142 = fdiv double %134, %58
  %143 = fdiv double %135, %59
  %144 = fdiv double %134, %58
  %145 = fdiv double %135, %59
  %146 = fdiv double %134, %58
  %147 = fdiv double %135, %59
  %148 = fdiv double %134, %58
  %149 = fdiv double %135, %59
  %150 = fcmp oge double %142, 0.000000e+00
  %151 = fcmp oge double %143, 0.000000e+00
  %icmpEq60 = icmp eq i1 %150, %151
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %152 = fcmp oge double %142, 0.000000e+00
  %icmpEq36 = icmp eq i1 %150, %152
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %153 = fcmp oge double %142, 0.000000e+00
  %154 = fcmp oge double %143, 0.000000e+00
  %icmpEq62 = icmp eq i1 %153, %154
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq24 = icmp eq i1 %150, %153
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %155 = fcmp olt double %142, 1.000000e+00
  %156 = fcmp olt double %143, 1.000000e+00
  %icmpEq64 = icmp eq i1 %155, %156
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %157 = fcmp olt double %142, 1.000000e+00
  %icmpEq38 = icmp eq i1 %155, %157
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %or.cond5 = and i1 %150, %155
  %158 = and i1 %151, %156
  %icmpEq66 = icmp eq i1 %or.cond5, %158
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %159 = select i1 %or.cond5, i1 %or.cond3, i1 false
  %narrow21 = select i1 %159, i1 %or.cond, i1 false
  %160 = select i1 %159, i1 %98, i1 false
  %161 = select i1 %159, i1 %98, i1 false
  %162 = select i1 %159, i1 %98, i1 false
  %icmpEq68 = icmp eq i1 %161, %162
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %icmpEq40 = icmp eq i1 %160, %161
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq26 = icmp eq i1 %narrow21, %160
  %163 = icmp eq i1 %160, %161
  %icmpEq70 = icmp eq i1 %icmpEq26, %163
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %.2 = zext i1 %narrow21 to i32
  %164 = zext i1 %160 to i32
  %165 = zext i1 %160 to i32
  %icmpEq72 = icmp eq i32 %164, %165
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq42 = icmp eq i32 %.2, %164
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  ret i32 %.2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @intcoord1(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = load double, ptr %3, align 8
  %6 = load double, ptr %3, align 8
  %7 = load double, ptr %3, align 8
  %8 = fsub double %0, %5
  %9 = fsub double %0, %6
  %10 = fsub double %0, %5
  %11 = fsub double %0, %6
  %12 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %16 = load double, ptr %12, align 8
  %17 = load double, ptr %13, align 8
  %18 = load double, ptr %12, align 8
  %19 = load double, ptr %13, align 8
  %20 = fdiv double %8, %16
  %21 = fdiv double %9, %17
  %22 = fdiv double %8, %16
  %23 = fdiv double %9, %17
  %24 = fcmp oge double %20, 0.000000e+00
  %25 = fcmp oge double %21, 0.000000e+00
  %icmpEq33 = icmp eq i1 %24, %25
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %26 = fcmp oge double %20, 0.000000e+00
  %icmpEq = icmp eq i1 %24, %26
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %27 = fcmp olt double %20, 1.000000e+00
  %28 = fcmp olt double %21, 1.000000e+00
  %icmpEq35 = icmp eq i1 %27, %28
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %or.cond = and i1 %24, %27
  %29 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %30 = load double, ptr %29, align 8
  %31 = load double, ptr %29, align 8
  %32 = load double, ptr %29, align 8
  %33 = fsub double %1, %30
  %34 = fsub double %1, %31
  %35 = fsub double %1, %30
  %36 = fsub double %1, %31
  %37 = fdiv double %33, %16
  %38 = fdiv double %34, %17
  %39 = fdiv double %33, %16
  %40 = fdiv double %34, %17
  %41 = fcmp oge double %37, 0.000000e+00
  %42 = fcmp oge double %38, 0.000000e+00
  %icmpEq37 = icmp eq i1 %41, %42
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %43 = fcmp oge double %37, 0.000000e+00
  %icmpEq29 = icmp eq i1 %41, %43
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %44 = fcmp olt double %37, 1.000000e+00
  %45 = fcmp olt double %38, 1.000000e+00
  %icmpEq39 = icmp eq i1 %44, %45
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %or.cond3 = and i1 %41, %44
  %46 = select i1 %or.cond3, i32 180356882, i32 231741448
  %47 = xor i32 128978954, %46
  %48 = xor i32 128978954, %46
  %49 = xor i32 128978954, %46
  %icmpEq41 = icmp eq i32 %48, %49
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %icmpEq31 = icmp eq i32 %47, %48
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  br i1 %or.cond3, label %50, label %63

50:                                               ; preds = %4
  %cfg_DestPhi = phi i32 [ 128978954, %4 ]
  %51 = phi i32 [ 128978954, %4 ]
  %cfg_DiffPhi = phi i32 [ %47, %4 ]
  %52 = phi i32 [ %48, %4 ]
  %icmpEq45 = icmp eq i32 %cfg_DiffPhi, %52
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %icmpEq43 = icmp eq i32 %cfg_DestPhi, %51
  %53 = icmp eq i32 %51, %51
  %icmpEq47 = icmp eq i1 %icmpEq43, %53
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %54 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %54, 180356882
  %55 = icmp eq i32 %54, 180356882
  %icmpEq49 = icmp eq i1 %cfg_icmpEq, %55
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %54, i32 35)
  %.sroa.5.0 = select i1 %or.cond, i64 4294967296, i64 0
  %56 = fmul double %37, 0x41D0000000000000
  %57 = fmul double %38, 0x41D0000000000000
  %58 = tail call double @llvm.floor.f64(double %56)
  %59 = fptosi double %58 to i32
  %60 = fptosi double %58 to i32
  %icmpEq51 = icmp eq i32 %59, %60
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %61 = zext i32 %59 to i64
  %62 = shl nuw i64 %61, 32
  br label %63

63:                                               ; preds = %50, %4
  %.sroa.2.0 = phi i64 [ %62, %50 ], [ 0, %4 ]
  %64 = phi i64 [ %62, %50 ], [ 0, %4 ]
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %50 ], [ 0, %4 ]
  %65 = phi i64 [ %.sroa.5.0, %50 ], [ 0, %4 ]
  %cfg_DestPhi25 = phi i32 [ 128978954, %4 ], [ 180356882, %50 ]
  %66 = phi i32 [ 128978954, %4 ], [ 180356882, %50 ]
  %cfg_DiffPhi26 = phi i32 [ %47, %4 ], [ 118497050, %50 ]
  %67 = phi i32 [ %48, %4 ], [ 118497050, %50 ]
  %icmpEq59 = icmp eq i32 %cfg_DiffPhi26, %67
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq57 = icmp eq i32 %cfg_DestPhi25, %66
  %68 = icmp eq i32 %66, %66
  %icmpEq61 = icmp eq i1 %icmpEq57, %68
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %icmpEq55 = icmp eq i64 %.sroa.5.1, %65
  %zext56 = zext i1 %icmpEq55 to i32
  %69 = zext i1 %icmpEq55 to i32
  %icmpEq63 = icmp eq i32 %zext56, %69
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i64 %.sroa.2.0, %64
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %70 = xor i32 %cfg_DestPhi25, %cfg_DiffPhi26
  %71 = xor i32 %66, %67
  %icmpEq65 = icmp eq i32 %70, %71
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %cfg_icmpEq27 = icmp eq i32 %70, 231741448
  %cfg_zext28 = zext i1 %cfg_icmpEq27 to i32
  call void @assert_cfg_ft(i32 %cfg_zext28, i32 %70, i32 35)
  %72 = fmul double %20, 0x41D0000000000000
  %73 = fmul double %21, 0x41D0000000000000
  %74 = tail call double @llvm.floor.f64(double %72)
  %75 = fptosi double %74 to i32
  %76 = fptosi double %74 to i32
  %icmpEq67 = icmp eq i32 %75, %76
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %77 = zext i32 %75 to i64
  %.sroa.0.0 = select i1 %or.cond, i64 %77, i64 0
  %78 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %79 = load double, ptr %78, align 8
  %80 = load double, ptr %78, align 8
  %81 = fsub double %2, %79
  %82 = fsub double %2, %80
  %83 = fdiv double %81, %16
  %84 = fdiv double %82, %17
  %85 = fcmp oge double %83, 0.000000e+00
  %86 = fcmp oge double %84, 0.000000e+00
  %icmpEq69 = icmp eq i1 %85, %86
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %87 = fcmp olt double %83, 1.000000e+00
  %or.cond5 = and i1 %85, %87
  %88 = fmul double %83, 0x41D0000000000000
  %89 = tail call double @llvm.floor.f64(double %88)
  %90 = fptosi double %89 to i32
  %91 = fptosi double %89 to i32
  %icmpEq71 = icmp eq i32 %90, %91
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %92 = zext i32 %90 to i64
  %.sroa.0.0.insert.insert = or i64 %.sroa.2.0, %.sroa.0.0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %93 = or i64 %.sroa.5.1, %92
  %94 = or i64 %65, %92
  %icmpEq73 = icmp eq i64 %93, %94
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %.sroa.3.8.insert.insert = select i1 %or.cond5, i64 %93, i64 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @freetree(ptr noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %3 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %2, i32 1105199391, i32 180355853
  %5 = xor i32 128975389, %4
  br i1 %2, label %168, label %6

6:                                                ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975389, %1 ]
  %7 = phi i32 [ 128975389, %1 ]
  %cfg_DiffPhi = phi i32 [ %5, %1 ]
  %8 = phi i32 [ %5, %1 ]
  %icmpEq87 = icmp eq i32 %cfg_DiffPhi, %8
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %cfg_DestPhi, %7
  %9 = icmp eq i32 %7, %7
  %icmpEq89 = icmp eq i1 %icmpEq85, %9
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %10 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %10, 180355853
  %11 = icmp eq i32 %10, 180355853
  %icmpEq91 = icmp eq i1 %cfg_icmpEq, %11
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %10, i32 35)
  %12 = load i16, ptr %0, align 8
  %13 = icmp eq i16 %12, 1
  %14 = icmp eq i16 %12, 1
  %icmpEq93 = icmp eq i1 %13, %14
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %15 = select i1 %13, i32 1105199391, i32 231736346
  %16 = xor i32 180355853, %15
  br i1 %13, label %168, label %.preheader.preheader

.preheader.preheader:                             ; preds = %6
  %cfg_DestPhi13 = phi i32 [ 180355853, %6 ]
  %17 = phi i32 [ 180355853, %6 ]
  %cfg_DiffPhi14 = phi i32 [ %16, %6 ]
  %18 = phi i32 [ %16, %6 ]
  %icmpEq97 = icmp eq i32 %cfg_DiffPhi14, %18
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq95 = icmp eq i32 %cfg_DestPhi13, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq99 = icmp eq i1 %icmpEq95, %19
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %20 = xor i32 %cfg_DestPhi13, %cfg_DiffPhi14
  %cfg_icmpEq15 = icmp eq i32 %20, 231736346
  %21 = icmp eq i32 %20, 231736346
  %icmpEq101 = icmp eq i1 %cfg_icmpEq15, %21
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %cfg_zext16 = zext i1 %cfg_icmpEq15 to i32
  call void @assert_cfg_ft(i32 %cfg_zext16, i32 %20, i32 35)
  %22 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 7
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %22, align 8
  %.not = icmp eq ptr %23, null
  %25 = icmp eq ptr %24, null
  %icmpEq103 = icmp eq i1 %.not, %25
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %26 = select i1 %.not, i32 334496799, i32 283116037
  %27 = xor i32 231736346, %26
  br i1 %.not, label %.preheader.1, label %28

28:                                               ; preds = %.preheader.preheader
  %cfg_DestPhi17 = phi i32 [ 231736346, %.preheader.preheader ]
  %29 = phi i32 [ 231736346, %.preheader.preheader ]
  %cfg_DiffPhi18 = phi i32 [ %27, %.preheader.preheader ]
  %30 = phi i32 [ %27, %.preheader.preheader ]
  %icmpEq107 = icmp eq i32 %cfg_DiffPhi18, %30
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %icmpEq105 = icmp eq i32 %cfg_DestPhi17, %29
  %31 = icmp eq i32 %29, %29
  %icmpEq109 = icmp eq i1 %icmpEq105, %31
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %32 = xor i32 %cfg_DestPhi17, %cfg_DiffPhi18
  %cfg_icmpEq19 = icmp eq i32 %32, 283116037
  %33 = icmp eq i32 %32, 283116037
  %icmpEq111 = icmp eq i1 %cfg_icmpEq19, %33
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %cfg_zext20 = zext i1 %cfg_icmpEq19 to i32
  call void @assert_cfg_ft(i32 %cfg_zext20, i32 %32, i32 35)
  %34 = tail call i32 @freetree(ptr noundef nonnull %23)
  br label %.preheader.1

.preheader.1:                                     ; preds = %28, %.preheader.preheader
  %cfg_DestPhi21 = phi i32 [ 231736346, %.preheader.preheader ], [ 283116037, %28 ]
  %35 = phi i32 [ 231736346, %.preheader.preheader ], [ 283116037, %28 ]
  %cfg_DiffPhi22 = phi i32 [ %27, %.preheader.preheader ], [ 51381786, %28 ]
  %36 = phi i32 [ %27, %.preheader.preheader ], [ 51381786, %28 ]
  %icmpEq115 = icmp eq i32 %cfg_DiffPhi22, %36
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i32 %cfg_DestPhi21, %35
  %37 = icmp eq i32 %35, %35
  %icmpEq117 = icmp eq i1 %icmpEq113, %37
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %38 = xor i32 %cfg_DestPhi21, %cfg_DiffPhi22
  %cfg_icmpEq23 = icmp eq i32 %38, 334496799
  %39 = icmp eq i32 %38, 334496799
  %icmpEq119 = icmp eq i1 %cfg_icmpEq23, %39
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %cfg_zext24 = zext i1 %cfg_icmpEq23 to i32
  call void @assert_cfg_ft(i32 %cfg_zext24, i32 %38, i32 35)
  %40 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %40, align 8
  %.not.1 = icmp eq ptr %41, null
  %43 = icmp eq ptr %42, null
  %icmpEq121 = icmp eq i1 %.not.1, %43
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %44 = select i1 %.not.1, i32 437257252, i32 385876506
  %45 = xor i32 334496799, %44
  br i1 %.not.1, label %.preheader.2, label %46

46:                                               ; preds = %.preheader.1
  %cfg_DestPhi25 = phi i32 [ 334496799, %.preheader.1 ]
  %47 = phi i32 [ 334496799, %.preheader.1 ]
  %cfg_DiffPhi26 = phi i32 [ %45, %.preheader.1 ]
  %48 = phi i32 [ %45, %.preheader.1 ]
  %icmpEq125 = icmp eq i32 %cfg_DiffPhi26, %48
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq123 = icmp eq i32 %cfg_DestPhi25, %47
  %49 = icmp eq i32 %47, %47
  %icmpEq127 = icmp eq i1 %icmpEq123, %49
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %50 = xor i32 %cfg_DestPhi25, %cfg_DiffPhi26
  %cfg_icmpEq27 = icmp eq i32 %50, 385876506
  %51 = icmp eq i32 %50, 385876506
  %icmpEq129 = icmp eq i1 %cfg_icmpEq27, %51
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %cfg_zext28 = zext i1 %cfg_icmpEq27 to i32
  call void @assert_cfg_ft(i32 %cfg_zext28, i32 %50, i32 35)
  %52 = tail call i32 @freetree(ptr noundef nonnull %41)
  br label %.preheader.2

.preheader.2:                                     ; preds = %46, %.preheader.1
  %cfg_DestPhi29 = phi i32 [ 385876506, %46 ], [ 334496799, %.preheader.1 ]
  %53 = phi i32 [ 385876506, %46 ], [ 334496799, %.preheader.1 ]
  %cfg_DiffPhi30 = phi i32 [ 219153982, %46 ], [ %45, %.preheader.1 ]
  %54 = phi i32 [ 219153982, %46 ], [ %45, %.preheader.1 ]
  %icmpEq133 = icmp eq i32 %cfg_DiffPhi30, %54
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq131 = icmp eq i32 %cfg_DestPhi29, %53
  %55 = icmp eq i32 %53, %53
  %icmpEq135 = icmp eq i1 %icmpEq131, %55
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %56 = xor i32 %cfg_DestPhi29, %cfg_DiffPhi30
  %cfg_icmpEq31 = icmp eq i32 %56, 437257252
  %57 = icmp eq i32 %56, 437257252
  %icmpEq137 = icmp eq i1 %cfg_icmpEq31, %57
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %cfg_zext32 = zext i1 %cfg_icmpEq31 to i32
  call void @assert_cfg_ft(i32 %cfg_zext32, i32 %56, i32 35)
  %58 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = load ptr, ptr %58, align 8
  %.not.2 = icmp eq ptr %59, null
  %61 = icmp eq ptr %60, null
  %icmpEq139 = icmp eq i1 %.not.2, %61
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %62 = select i1 %.not.2, i32 540017668, i32 488636938
  %63 = xor i32 437257252, %62
  br i1 %.not.2, label %.preheader.3, label %64

64:                                               ; preds = %.preheader.2
  %cfg_DestPhi33 = phi i32 [ 437257252, %.preheader.2 ]
  %65 = phi i32 [ 437257252, %.preheader.2 ]
  %cfg_DiffPhi34 = phi i32 [ %63, %.preheader.2 ]
  %66 = phi i32 [ %63, %.preheader.2 ]
  %icmpEq143 = icmp eq i32 %cfg_DiffPhi34, %66
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %cfg_DestPhi33, %65
  %67 = icmp eq i32 %65, %65
  %icmpEq145 = icmp eq i1 %icmpEq141, %67
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %68 = xor i32 %cfg_DestPhi33, %cfg_DiffPhi34
  %cfg_icmpEq35 = icmp eq i32 %68, 488636938
  %69 = icmp eq i32 %68, 488636938
  %icmpEq147 = icmp eq i1 %cfg_icmpEq35, %69
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %cfg_zext36 = zext i1 %cfg_icmpEq35 to i32
  call void @assert_cfg_ft(i32 %cfg_zext36, i32 %68, i32 35)
  %70 = tail call i32 @freetree(ptr noundef nonnull %59)
  br label %.preheader.3

.preheader.3:                                     ; preds = %64, %.preheader.2
  %cfg_DestPhi37 = phi i32 [ 488636938, %64 ], [ 437257252, %.preheader.2 ]
  %71 = phi i32 [ 488636938, %64 ], [ 437257252, %.preheader.2 ]
  %cfg_DiffPhi38 = phi i32 [ 1024460302, %64 ], [ %63, %.preheader.2 ]
  %72 = phi i32 [ 1024460302, %64 ], [ %63, %.preheader.2 ]
  %icmpEq151 = icmp eq i32 %cfg_DiffPhi38, %72
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq149 = icmp eq i32 %cfg_DestPhi37, %71
  %73 = icmp eq i32 %71, %71
  %icmpEq153 = icmp eq i1 %icmpEq149, %73
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %74 = xor i32 %cfg_DestPhi37, %cfg_DiffPhi38
  %cfg_icmpEq39 = icmp eq i32 %74, 540017668
  %75 = icmp eq i32 %74, 540017668
  %icmpEq155 = icmp eq i1 %cfg_icmpEq39, %75
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %cfg_zext40 = zext i1 %cfg_icmpEq39 to i32
  call void @assert_cfg_ft(i32 %cfg_zext40, i32 %74, i32 35)
  %76 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 4
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %76, align 8
  %.not.3 = icmp eq ptr %77, null
  %79 = icmp eq ptr %78, null
  %icmpEq157 = icmp eq i1 %.not.3, %79
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %80 = select i1 %.not.3, i32 642778121, i32 591397407
  %81 = xor i32 540017668, %80
  br i1 %.not.3, label %.preheader.4, label %82

82:                                               ; preds = %.preheader.3
  %cfg_DestPhi41 = phi i32 [ 540017668, %.preheader.3 ]
  %83 = phi i32 [ 540017668, %.preheader.3 ]
  %cfg_DiffPhi42 = phi i32 [ %81, %.preheader.3 ]
  %84 = phi i32 [ %81, %.preheader.3 ]
  %icmpEq161 = icmp eq i32 %cfg_DiffPhi42, %84
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %icmpEq159 = icmp eq i32 %cfg_DestPhi41, %83
  %85 = icmp eq i32 %83, %83
  %icmpEq163 = icmp eq i1 %icmpEq159, %85
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %86 = xor i32 %cfg_DestPhi41, %cfg_DiffPhi42
  %cfg_icmpEq43 = icmp eq i32 %86, 591397407
  %87 = icmp eq i32 %86, 591397407
  %icmpEq165 = icmp eq i1 %cfg_icmpEq43, %87
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %cfg_zext44 = zext i1 %cfg_icmpEq43 to i32
  call void @assert_cfg_ft(i32 %cfg_zext44, i32 %86, i32 35)
  %88 = tail call i32 @freetree(ptr noundef nonnull %77)
  br label %.preheader.4

.preheader.4:                                     ; preds = %82, %.preheader.3
  %cfg_DestPhi45 = phi i32 [ 591397407, %82 ], [ 540017668, %.preheader.3 ]
  %89 = phi i32 [ 591397407, %82 ], [ 540017668, %.preheader.3 ]
  %cfg_DiffPhi46 = phi i32 [ 84936214, %82 ], [ %81, %.preheader.3 ]
  %90 = phi i32 [ 84936214, %82 ], [ %81, %.preheader.3 ]
  %icmpEq169 = icmp eq i32 %cfg_DiffPhi46, %90
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %icmpEq167 = icmp eq i32 %cfg_DestPhi45, %89
  %91 = icmp eq i32 %89, %89
  %icmpEq171 = icmp eq i1 %icmpEq167, %91
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %92 = xor i32 %cfg_DestPhi45, %cfg_DiffPhi46
  %cfg_icmpEq47 = icmp eq i32 %92, 642778121
  %93 = icmp eq i32 %92, 642778121
  %icmpEq173 = icmp eq i1 %cfg_icmpEq47, %93
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %cfg_zext48 = zext i1 %cfg_icmpEq47 to i32
  call void @assert_cfg_ft(i32 %cfg_zext48, i32 %92, i32 35)
  %94 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 3
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %94, align 8
  %.not.4 = icmp eq ptr %95, null
  %97 = icmp eq ptr %96, null
  %icmpEq175 = icmp eq i1 %.not.4, %97
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %98 = select i1 %.not.4, i32 745538574, i32 694157839
  %99 = xor i32 642778121, %98
  br i1 %.not.4, label %.preheader.5, label %100

100:                                              ; preds = %.preheader.4
  %cfg_DestPhi49 = phi i32 [ 642778121, %.preheader.4 ]
  %101 = phi i32 [ 642778121, %.preheader.4 ]
  %cfg_DiffPhi50 = phi i32 [ %99, %.preheader.4 ]
  %102 = phi i32 [ %99, %.preheader.4 ]
  %icmpEq179 = icmp eq i32 %cfg_DiffPhi50, %102
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %icmpEq177 = icmp eq i32 %cfg_DestPhi49, %101
  %103 = icmp eq i32 %101, %101
  %icmpEq181 = icmp eq i1 %icmpEq177, %103
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %104 = xor i32 %cfg_DestPhi49, %cfg_DiffPhi50
  %cfg_icmpEq51 = icmp eq i32 %104, 694157839
  %105 = icmp eq i32 %104, 694157839
  %icmpEq183 = icmp eq i1 %cfg_icmpEq51, %105
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %cfg_zext52 = zext i1 %cfg_icmpEq51 to i32
  call void @assert_cfg_ft(i32 %cfg_zext52, i32 %104, i32 35)
  %106 = tail call i32 @freetree(ptr noundef nonnull %95)
  br label %.preheader.5

.preheader.5:                                     ; preds = %100, %.preheader.4
  %cfg_DestPhi53 = phi i32 [ 694157839, %100 ], [ 642778121, %.preheader.4 ]
  %107 = phi i32 [ 694157839, %100 ], [ 642778121, %.preheader.4 ]
  %cfg_DiffPhi54 = phi i32 [ 84936193, %100 ], [ %99, %.preheader.4 ]
  %108 = phi i32 [ 84936193, %100 ], [ %99, %.preheader.4 ]
  %icmpEq187 = icmp eq i32 %cfg_DiffPhi54, %108
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %icmpEq185 = icmp eq i32 %cfg_DestPhi53, %107
  %109 = icmp eq i32 %107, %107
  %icmpEq189 = icmp eq i1 %icmpEq185, %109
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %110 = xor i32 %cfg_DestPhi53, %cfg_DiffPhi54
  %cfg_icmpEq55 = icmp eq i32 %110, 745538574
  %111 = icmp eq i32 %110, 745538574
  %icmpEq191 = icmp eq i1 %cfg_icmpEq55, %111
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %cfg_zext56 = zext i1 %cfg_icmpEq55 to i32
  call void @assert_cfg_ft(i32 %cfg_zext56, i32 %110, i32 35)
  %112 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 2
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %112, align 8
  %.not.5 = icmp eq ptr %113, null
  %115 = icmp eq ptr %114, null
  %icmpEq193 = icmp eq i1 %.not.5, %115
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  %116 = select i1 %.not.5, i32 848299027, i32 796918308
  %117 = xor i32 745538574, %116
  br i1 %.not.5, label %.preheader.6, label %118

118:                                              ; preds = %.preheader.5
  %cfg_DestPhi57 = phi i32 [ 745538574, %.preheader.5 ]
  %119 = phi i32 [ 745538574, %.preheader.5 ]
  %cfg_DiffPhi58 = phi i32 [ %117, %.preheader.5 ]
  %120 = phi i32 [ %117, %.preheader.5 ]
  %icmpEq197 = icmp eq i32 %cfg_DiffPhi58, %120
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %icmpEq195 = icmp eq i32 %cfg_DestPhi57, %119
  %121 = icmp eq i32 %119, %119
  %icmpEq199 = icmp eq i1 %icmpEq195, %121
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %122 = xor i32 %cfg_DestPhi57, %cfg_DiffPhi58
  %cfg_icmpEq59 = icmp eq i32 %122, 796918308
  %123 = icmp eq i32 %122, 796918308
  %icmpEq201 = icmp eq i1 %cfg_icmpEq59, %123
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %cfg_zext60 = zext i1 %cfg_icmpEq59 to i32
  call void @assert_cfg_ft(i32 %cfg_zext60, i32 %122, i32 35)
  %124 = tail call i32 @freetree(ptr noundef nonnull %113)
  br label %.preheader.6

.preheader.6:                                     ; preds = %118, %.preheader.5
  %cfg_DestPhi61 = phi i32 [ 796918308, %118 ], [ 745538574, %.preheader.5 ]
  %125 = phi i32 [ 796918308, %118 ], [ 745538574, %.preheader.5 ]
  %cfg_DiffPhi62 = phi i32 [ 487589431, %118 ], [ %117, %.preheader.5 ]
  %126 = phi i32 [ 487589431, %118 ], [ %117, %.preheader.5 ]
  %icmpEq205 = icmp eq i32 %cfg_DiffPhi62, %126
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  %icmpEq203 = icmp eq i32 %cfg_DestPhi61, %125
  %127 = icmp eq i32 %125, %125
  %icmpEq207 = icmp eq i1 %icmpEq203, %127
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %128 = xor i32 %cfg_DestPhi61, %cfg_DiffPhi62
  %cfg_icmpEq63 = icmp eq i32 %128, 848299027
  %129 = icmp eq i32 %128, 848299027
  %icmpEq209 = icmp eq i1 %cfg_icmpEq63, %129
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  %cfg_zext64 = zext i1 %cfg_icmpEq63 to i32
  call void @assert_cfg_ft(i32 %cfg_zext64, i32 %128, i32 35)
  %130 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 1
  %131 = load ptr, ptr %130, align 8
  %132 = load ptr, ptr %130, align 8
  %.not.6 = icmp eq ptr %131, null
  %133 = icmp eq ptr %132, null
  %icmpEq211 = icmp eq i1 %.not.6, %133
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %134 = select i1 %.not.6, i32 951059480, i32 899678740
  %135 = xor i32 848299027, %134
  br i1 %.not.6, label %.preheader.7, label %136

136:                                              ; preds = %.preheader.6
  %cfg_DestPhi65 = phi i32 [ 848299027, %.preheader.6 ]
  %137 = phi i32 [ 848299027, %.preheader.6 ]
  %cfg_DiffPhi66 = phi i32 [ %135, %.preheader.6 ]
  %138 = phi i32 [ %135, %.preheader.6 ]
  %icmpEq215 = icmp eq i32 %cfg_DiffPhi66, %138
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  %icmpEq213 = icmp eq i32 %cfg_DestPhi65, %137
  %139 = icmp eq i32 %137, %137
  %icmpEq217 = icmp eq i1 %icmpEq213, %139
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  %140 = xor i32 %cfg_DestPhi65, %cfg_DiffPhi66
  %cfg_icmpEq67 = icmp eq i32 %140, 899678740
  %141 = icmp eq i32 %140, 899678740
  %icmpEq219 = icmp eq i1 %cfg_icmpEq67, %141
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %cfg_zext68 = zext i1 %cfg_icmpEq67 to i32
  call void @assert_cfg_ft(i32 %cfg_zext68, i32 %140, i32 35)
  %142 = tail call i32 @freetree(ptr noundef nonnull %131)
  br label %.preheader.7

.preheader.7:                                     ; preds = %136, %.preheader.6
  %cfg_DestPhi69 = phi i32 [ 899678740, %136 ], [ 848299027, %.preheader.6 ]
  %143 = phi i32 [ 899678740, %136 ], [ 848299027, %.preheader.6 ]
  %cfg_DiffPhi70 = phi i32 [ 219153932, %136 ], [ %135, %.preheader.6 ]
  %144 = phi i32 [ 219153932, %136 ], [ %135, %.preheader.6 ]
  %icmpEq223 = icmp eq i32 %cfg_DiffPhi70, %144
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  %icmpEq221 = icmp eq i32 %cfg_DestPhi69, %143
  %145 = icmp eq i32 %143, %143
  %icmpEq225 = icmp eq i1 %icmpEq221, %145
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  %146 = xor i32 %cfg_DestPhi69, %cfg_DiffPhi70
  %cfg_icmpEq71 = icmp eq i32 %146, 951059480
  %147 = icmp eq i32 %146, 951059480
  %icmpEq227 = icmp eq i1 %cfg_icmpEq71, %147
  %zext228 = zext i1 %icmpEq227 to i32
  call void @assert_ft(i32 %zext228, i32 35)
  %cfg_zext72 = zext i1 %cfg_icmpEq71 to i32
  call void @assert_cfg_ft(i32 %cfg_zext72, i32 %146, i32 35)
  %148 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 0
  %149 = load ptr, ptr %148, align 8
  %150 = load ptr, ptr %148, align 8
  %.not.7 = icmp eq ptr %149, null
  %151 = icmp eq ptr %150, null
  %icmpEq229 = icmp eq i1 %.not.7, %151
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %152 = select i1 %.not.7, i32 1053819425, i32 1002439172
  %153 = xor i32 951059480, %152
  br i1 %.not.7, label %161, label %154

154:                                              ; preds = %.preheader.7
  %cfg_DestPhi73 = phi i32 [ 951059480, %.preheader.7 ]
  %155 = phi i32 [ 951059480, %.preheader.7 ]
  %cfg_DiffPhi74 = phi i32 [ %153, %.preheader.7 ]
  %156 = phi i32 [ %153, %.preheader.7 ]
  %icmpEq233 = icmp eq i32 %cfg_DiffPhi74, %156
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %icmpEq231 = icmp eq i32 %cfg_DestPhi73, %155
  %157 = icmp eq i32 %155, %155
  %icmpEq235 = icmp eq i1 %icmpEq231, %157
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %158 = xor i32 %cfg_DestPhi73, %cfg_DiffPhi74
  %cfg_icmpEq75 = icmp eq i32 %158, 1002439172
  %159 = icmp eq i32 %158, 1002439172
  %icmpEq237 = icmp eq i1 %cfg_icmpEq75, %159
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %cfg_zext76 = zext i1 %cfg_icmpEq75 to i32
  call void @assert_cfg_ft(i32 %cfg_zext76, i32 %158, i32 35)
  %160 = tail call i32 @freetree(ptr noundef nonnull %149)
  br label %161

161:                                              ; preds = %154, %.preheader.7
  %cfg_DestPhi77 = phi i32 [ 1002439172, %154 ], [ 951059480, %.preheader.7 ]
  %162 = phi i32 [ 1002439172, %154 ], [ 951059480, %.preheader.7 ]
  %cfg_DiffPhi78 = phi i32 [ 84934693, %154 ], [ %153, %.preheader.7 ]
  %163 = phi i32 [ 84934693, %154 ], [ %153, %.preheader.7 ]
  %icmpEq241 = icmp eq i32 %cfg_DiffPhi78, %163
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %icmpEq239 = icmp eq i32 %cfg_DestPhi77, %162
  %164 = icmp eq i32 %162, %162
  %icmpEq243 = icmp eq i1 %icmpEq239, %164
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  %165 = xor i32 %cfg_DestPhi77, %cfg_DiffPhi78
  %cfg_icmpEq79 = icmp eq i32 %165, 1053819425
  %166 = icmp eq i32 %165, 1053819425
  %icmpEq245 = icmp eq i1 %cfg_icmpEq79, %166
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  %cfg_zext80 = zext i1 %cfg_icmpEq79 to i32
  call void @assert_cfg_ft(i32 %cfg_zext80, i32 %165, i32 35)
  %167 = tail call i32 @my_free(ptr noundef nonnull %0)
  br label %168

168:                                              ; preds = %161, %6, %1
  %cfg_DestPhi81 = phi i32 [ 128975389, %1 ], [ 180355853, %6 ], [ 1053819425, %161 ]
  %169 = phi i32 [ 128975389, %1 ], [ 180355853, %6 ], [ 1053819425, %161 ]
  %cfg_DiffPhi82 = phi i32 [ %5, %1 ], [ %16, %6 ], [ 2133852990, %161 ]
  %170 = phi i32 [ %5, %1 ], [ %16, %6 ], [ 2133852990, %161 ]
  %icmpEq249 = icmp eq i32 %cfg_DiffPhi82, %170
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %icmpEq247 = icmp eq i32 %cfg_DestPhi81, %169
  %171 = icmp eq i32 %169, %169
  %icmpEq251 = icmp eq i1 %icmpEq247, %171
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %172 = xor i32 %cfg_DestPhi81, %cfg_DiffPhi82
  %cfg_icmpEq83 = icmp eq i32 %172, 1105199391
  %173 = icmp eq i32 %172, 1105199391
  %icmpEq253 = icmp eq i1 %cfg_icmpEq83, %173
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %cfg_zext84 = zext i1 %cfg_icmpEq83 to i32
  call void @assert_cfg_ft(i32 %cfg_zext84, i32 %172, i32 35)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @my_free(ptr noundef %0) local_unnamed_addr #18 {
  %2 = load i16, ptr %0, align 8
  %3 = load i16, ptr %0, align 8
  %icmpEq = icmp eq i16 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = icmp eq i16 %2, 1
  %5 = select i1 %4, i32 180356101, i32 231736346
  %6 = xor i32 128975641, %5
  br i1 %4, label %7, label %16

7:                                                ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975641, %1 ]
  %8 = phi i32 [ 128975641, %1 ]
  %cfg_DiffPhi = phi i32 [ %6, %1 ]
  %9 = phi i32 [ %6, %1 ]
  %icmpEq15 = icmp eq i32 %cfg_DiffPhi, %9
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %icmpEq13 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq17 = icmp eq i1 %icmpEq13, %10
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356101
  %12 = icmp eq i32 %11, 180356101
  %icmpEq19 = icmp eq i1 %cfg_icmpEq, %12
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = load ptr, ptr @bp_free_list, align 8
  %14 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 9
  store ptr %13, ptr %14, align 8
  br label %25

16:                                               ; preds = %1
  %cfg_DestPhi5 = phi i32 [ 128975641, %1 ]
  %17 = phi i32 [ 128975641, %1 ]
  %cfg_DiffPhi6 = phi i32 [ %6, %1 ]
  %18 = phi i32 [ %6, %1 ]
  %icmpEq23 = icmp eq i32 %cfg_DiffPhi6, %18
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %icmpEq21 = icmp eq i32 %cfg_DestPhi5, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq25 = icmp eq i1 %icmpEq21, %19
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %20 = xor i32 %cfg_DestPhi5, %cfg_DiffPhi6
  %cfg_icmpEq7 = icmp eq i32 %20, 231736346
  %21 = icmp eq i32 %20, 231736346
  %icmpEq27 = icmp eq i1 %cfg_icmpEq7, %21
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %cfg_zext8 = zext i1 %cfg_icmpEq7 to i32
  call void @assert_cfg_ft(i32 %cfg_zext8, i32 %20, i32 35)
  %22 = load ptr, ptr @cp_free_list, align 8
  %23 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 6
  %24 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 6
  store ptr %22, ptr %23, align 8
  br label %25

25:                                               ; preds = %16, %7
  %cp_free_list.sink = phi ptr [ @cp_free_list, %16 ], [ @bp_free_list, %7 ]
  %26 = phi ptr [ @cp_free_list, %16 ], [ @bp_free_list, %7 ]
  %cfg_DestPhi9 = phi i32 [ 231736346, %16 ], [ 180356101, %7 ]
  %27 = phi i32 [ 231736346, %16 ], [ 180356101, %7 ]
  %cfg_DiffPhi10 = phi i32 [ 489686784, %16 ], [ 438306591, %7 ]
  %28 = phi i32 [ 489686784, %16 ], [ 438306591, %7 ]
  %icmpEq31 = icmp eq i32 %cfg_DiffPhi10, %28
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %icmpEq29 = icmp eq i32 %cfg_DestPhi9, %27
  %29 = icmp eq i32 %27, %27
  %icmpEq33 = icmp eq i1 %icmpEq29, %29
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %30 = xor i32 %cfg_DestPhi9, %cfg_DiffPhi10
  %cfg_icmpEq11 = icmp eq i32 %30, 283116314
  %31 = icmp eq i32 %30, 283116314
  %icmpEq35 = icmp eq i1 %cfg_icmpEq11, %31
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %cfg_zext12 = zext i1 %cfg_icmpEq11 to i32
  call void @assert_cfg_ft(i32 %cfg_zext12, i32 %30, i32 35)
  store ptr %0, ptr %cp_free_list.sink, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @ubody_alloc(i32 noundef %0) local_unnamed_addr #19 {
  %2 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #28
  store i16 1, ptr %2, align 8
  %3 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 3
  store i32 %0, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 10
  store ptr null, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 4
  %8 = getelementptr inbounds %struct.bnode, ptr %2, i64 0, i32 4
  store i32 %0, ptr %7, align 4
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull ptr @testdata() local_unnamed_addr #20 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 99)
  %2 = tail call i32 @exit(i32 noundef 0) #29
  unreachable
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local ptr @body_alloc(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, ptr nocapture noundef readnone %11) local_unnamed_addr #16 {
  %13 = load ptr, ptr @bp_free_list, align 8
  %14 = load ptr, ptr @bp_free_list, align 8
  %.not = icmp eq ptr %13, null
  %15 = icmp eq ptr %14, null
  %icmpEq = icmp eq i1 %.not, %15
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %16 = select i1 %.not, i32 231735821, i32 180356101
  %17 = xor i32 128975641, %16
  br i1 %.not, label %27, label %18

18:                                               ; preds = %12
  %cfg_DestPhi = phi i32 [ 128975641, %12 ]
  %19 = phi i32 [ 128975641, %12 ]
  %cfg_DiffPhi = phi i32 [ %17, %12 ]
  %20 = phi i32 [ %17, %12 ]
  %icmpEq34 = icmp eq i32 %cfg_DiffPhi, %20
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %icmpEq32 = icmp eq i32 %cfg_DestPhi, %19
  %21 = icmp eq i32 %19, %19
  %icmpEq36 = icmp eq i1 %icmpEq32, %21
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %22 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %22, 180356101
  %23 = icmp eq i32 %22, 180356101
  %icmpEq38 = icmp eq i1 %cfg_icmpEq, %23
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %22, i32 35)
  %24 = getelementptr inbounds %struct.bnode, ptr %13, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %24, align 8
  store ptr %25, ptr @bp_free_list, align 8
  br label %34

27:                                               ; preds = %12
  %cfg_DestPhi24 = phi i32 [ 128975641, %12 ]
  %28 = phi i32 [ 128975641, %12 ]
  %cfg_DiffPhi25 = phi i32 [ %17, %12 ]
  %29 = phi i32 [ %17, %12 ]
  %icmpEq42 = icmp eq i32 %cfg_DiffPhi25, %29
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %cfg_DestPhi24, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq44 = icmp eq i1 %icmpEq40, %30
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %31 = xor i32 %cfg_DestPhi24, %cfg_DiffPhi25
  %cfg_icmpEq26 = icmp eq i32 %31, 231735821
  %32 = icmp eq i32 %31, 231735821
  %icmpEq46 = icmp eq i1 %cfg_icmpEq26, %32
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %cfg_zext27 = zext i1 %cfg_icmpEq26 to i32
  call void @assert_cfg_ft(i32 %cfg_zext27, i32 %31, i32 35)
  %33 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #28
  br label %34

34:                                               ; preds = %27, %18
  %.0 = phi ptr [ %13, %18 ], [ %33, %27 ]
  %35 = phi ptr [ %14, %18 ], [ %33, %27 ]
  %cfg_DestPhi28 = phi i32 [ 231735821, %27 ], [ 180356101, %18 ]
  %36 = phi i32 [ 231735821, %27 ], [ 180356101, %18 ]
  %cfg_DiffPhi29 = phi i32 [ 489691914, %27 ], [ 438312194, %18 ]
  %37 = phi i32 [ 489691914, %27 ], [ 438312194, %18 ]
  %icmpEq50 = icmp eq i32 %cfg_DiffPhi29, %37
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i32 %cfg_DestPhi28, %36
  %38 = icmp eq i32 %36, %36
  %icmpEq52 = icmp eq i1 %icmpEq48, %38
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %39 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %cfg_icmpEq30 = icmp eq i32 %39, 283121927
  %40 = icmp eq i32 %39, 283121927
  %icmpEq54 = icmp eq i1 %cfg_icmpEq30, %40
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %39, i32 35)
  store i16 1, ptr %.0, align 8
  %41 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 3
  %42 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 3
  store i32 %0, ptr %41, align 8
  %43 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2
  %44 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 2
  store double %1, ptr %43, align 8
  %45 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2, i64 1
  %46 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 2, i64 1
  store double %2, ptr %45, align 8
  %47 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 2, i64 2
  %48 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 2, i64 2
  store double %3, ptr %47, align 8
  %49 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5
  %50 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 5
  store double %4, ptr %49, align 8
  %51 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5, i64 1
  %52 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 5, i64 1
  store double %5, ptr %51, align 8
  %53 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 5, i64 2
  %54 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 5, i64 2
  store double %6, ptr %53, align 8
  %55 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6
  %56 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 6
  store double %7, ptr %55, align 8
  %57 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6, i64 1
  %58 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 6, i64 1
  store double %8, ptr %57, align 8
  %59 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 6, i64 2
  %60 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 6, i64 2
  store double %9, ptr %59, align 8
  %61 = getelementptr inbounds %struct.bnode, ptr %.0, i64 0, i32 1
  %62 = getelementptr inbounds %struct.bnode, ptr %35, i64 0, i32 1
  store double %10, ptr %61, align 8
  ret ptr %.0
}

; Function Attrs: nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @dis_number(ptr noundef %0) local_unnamed_addr #15 {
  %2 = load i32, ptr @nbody, align 4
  %3 = load i32, ptr @nbody, align 4
  %icmpEq3 = icmp eq i32 %2, %3
  %zext4 = zext i1 %icmpEq3 to i32
  call void @assert_ft(i32 %zext4, i32 35)
  %4 = load i32, ptr @nbody, align 4
  %icmpEq = icmp eq i32 %2, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = sitofp i32 %2 to double
  %6 = sitofp i32 %3 to double
  %7 = load i32, ptr @__NumNodes, align 4
  %8 = load i32, ptr @__NumNodes, align 4
  %icmpEq5 = icmp eq i32 %7, %8
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %9 = sitofp i32 %7 to double
  %10 = fdiv double %5, %9
  %11 = fdiv double %6, %9
  %12 = tail call double @llvm.ceil.f64(double %10)
  %13 = fptosi double %12 to i32
  %14 = fptosi double %12 to i32
  %icmpEq7 = icmp eq i32 %13, %14
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %15 = fptosi double %12 to i32
  %icmpEq1 = icmp eq i32 %13, %15
  %zext2 = zext i1 %icmpEq1 to i32
  call void @assert_ft(i32 %zext2, i32 35)
  %16 = tail call i32 @dis2_number(ptr noundef %0, i32 noundef -1, i32 noundef %13)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @dis2_number(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #21 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %.preheader.preheader, %3
  %.tr = phi ptr [ %0, %3 ], [ %86, %.preheader.preheader ]
  %4 = phi ptr [ %0, %3 ], [ %86, %.preheader.preheader ]
  %5 = phi ptr [ %0, %3 ], [ %86, %.preheader.preheader ]
  %.tr20 = phi i32 [ %1, %3 ], [ %83, %.preheader.preheader ]
  %6 = phi i32 [ %1, %3 ], [ %83, %.preheader.preheader ]
  %7 = phi i32 [ %1, %3 ], [ %83, %.preheader.preheader ]
  %8 = phi i32 [ %1, %3 ], [ %83, %.preheader.preheader ]
  %cfg_DestPhi = phi i32 [ 283121687, %.preheader.preheader ], [ 128975137, %3 ]
  %9 = phi i32 [ 283121687, %.preheader.preheader ], [ 128975137, %3 ]
  %10 = phi i32 [ 283121687, %.preheader.preheader ], [ 128975137, %3 ]
  %11 = phi i32 [ 283121687, %.preheader.preheader ], [ 128975137, %3 ]
  %cfg_DiffPhi = phi i32 [ 438311954, %.preheader.preheader ], [ 225445156, %3 ]
  %12 = phi i32 [ 438311954, %.preheader.preheader ], [ 225445156, %3 ]
  %13 = phi i32 [ 438311954, %.preheader.preheader ], [ 225445156, %3 ]
  %14 = phi i32 [ 438311954, %.preheader.preheader ], [ 225445156, %3 ]
  %icmpEq60 = icmp eq i32 %13, %14
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i32 %cfg_DiffPhi, %12
  %15 = icmp eq i32 %12, %12
  %icmpEq62 = icmp eq i1 %icmpEq58, %15
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq56 = icmp eq i32 %10, %11
  %zext57 = zext i1 %icmpEq56 to i32
  %16 = zext i1 %icmpEq56 to i32
  %icmpEq64 = icmp eq i32 %zext57, %16
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  call void @assert_ft(i32 %zext57, i32 35)
  %icmpEq54 = icmp eq i32 %cfg_DestPhi, %9
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq52 = icmp eq i32 %7, %8
  %17 = icmp eq i32 %8, %8
  %icmpEq66 = icmp eq i1 %icmpEq52, %17
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %.tr20, %6
  %zext51 = zext i1 %icmpEq50 to i32
  %18 = zext i1 %icmpEq50 to i32
  %icmpEq68 = icmp eq i32 %zext51, %18
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq40 = icmp eq i32 %cfg_DiffPhi, %13
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %cfg_DestPhi, %10
  %19 = icmp eq i32 %9, %11
  %icmpEq70 = icmp eq i1 %icmpEq38, %19
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %20 = icmp eq i32 %cfg_DestPhi, %10
  %icmpEq42 = icmp eq i1 %icmpEq38, %20
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %zext39 = zext i1 %icmpEq38 to i32
  %21 = zext i1 %19 to i32
  %icmpEq72 = icmp eq i32 %zext39, %21
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  call void @assert_ft(i32 %zext39, i32 35)
  %icmpEq = icmp eq i32 %.tr20, %7
  %zext = zext i1 %icmpEq to i32
  %22 = zext i1 %icmpEq to i32
  %23 = zext i1 %icmpEq to i32
  %icmpEq74 = icmp eq i32 %22, %23
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq44 = icmp eq i32 %zext, %22
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  call void @assert_ft(i32 %zext, i32 35)
  %24 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %25 = xor i32 %9, %12
  %icmpEq76 = icmp eq i32 %24, %25
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %cfg_icmpEq = icmp eq i32 %24, 180356101
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %26 = zext i1 %cfg_icmpEq to i32
  %icmpEq46 = icmp eq i32 %cfg_zext, %26
  %27 = icmp eq i32 %26, %26
  %icmpEq78 = icmp eq i1 %icmpEq46, %27
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %24, i32 35)
  %28 = icmp eq ptr %.tr, null
  %29 = icmp eq ptr %4, null
  %icmpEq80 = icmp eq i1 %28, %29
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %30 = select i1 %28, i32 385876506, i32 231736065
  %31 = xor i32 180356101, %30
  %32 = xor i32 180356101, %30
  %icmpEq48 = icmp eq i32 %31, %32
  %33 = icmp eq i32 %32, %32
  %icmpEq82 = icmp eq i1 %icmpEq48, %33
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  br i1 %28, label %.loopexit, label %34

34:                                               ; preds = %tailrecurse
  %cfg_DestPhi22 = phi i32 [ 180356101, %tailrecurse ]
  %35 = phi i32 [ 180356101, %tailrecurse ]
  %cfg_DiffPhi23 = phi i32 [ %31, %tailrecurse ]
  %36 = phi i32 [ %32, %tailrecurse ]
  %icmpEq86 = icmp eq i32 %cfg_DiffPhi23, %36
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq84 = icmp eq i32 %cfg_DestPhi22, %35
  %37 = icmp eq i32 %35, %35
  %icmpEq88 = icmp eq i1 %icmpEq84, %37
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %38 = xor i32 %cfg_DestPhi22, %cfg_DiffPhi23
  %cfg_icmpEq24 = icmp eq i32 %38, 231736065
  %39 = icmp eq i32 %38, 231736065
  %icmpEq90 = icmp eq i1 %cfg_icmpEq24, %39
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %cfg_zext25 = zext i1 %cfg_icmpEq24 to i32
  call void @assert_cfg_ft(i32 %cfg_zext25, i32 %38, i32 35)
  %40 = load i16, ptr %.tr, align 8
  %41 = icmp eq i16 %40, 1
  %42 = icmp eq i16 %40, 1
  %icmpEq92 = icmp eq i1 %41, %42
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %43 = select i1 %41, i32 334497035, i32 283121687
  %44 = xor i32 231736065, %43
  br i1 %41, label %88, label %.preheader.preheader

.preheader.preheader:                             ; preds = %34
  %cfg_DestPhi26 = phi i32 [ 231736065, %34 ]
  %45 = phi i32 [ 231736065, %34 ]
  %cfg_DiffPhi27 = phi i32 [ %44, %34 ]
  %46 = phi i32 [ %44, %34 ]
  %icmpEq96 = icmp eq i32 %cfg_DiffPhi27, %46
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %icmpEq94 = icmp eq i32 %cfg_DestPhi26, %45
  %47 = icmp eq i32 %45, %45
  %icmpEq98 = icmp eq i1 %icmpEq94, %47
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %48 = xor i32 %cfg_DestPhi26, %cfg_DiffPhi27
  %cfg_icmpEq28 = icmp eq i32 %48, 283121687
  %49 = icmp eq i32 %48, 283121687
  %icmpEq100 = icmp eq i1 %cfg_icmpEq28, %49
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %cfg_zext29 = zext i1 %cfg_icmpEq28 to i32
  call void @assert_cfg_ft(i32 %cfg_zext29, i32 %48, i32 35)
  %50 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 0
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %50, align 8
  %53 = tail call i32 @dis2_number(ptr noundef %51, i32 noundef %.tr20, i32 noundef %2)
  %54 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 1
  %55 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 1
  %56 = load ptr, ptr %54, align 8
  %57 = load ptr, ptr %55, align 8
  %58 = tail call i32 @dis2_number(ptr noundef %56, i32 noundef %53, i32 noundef %2)
  %59 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 2
  %60 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 2
  %61 = load ptr, ptr %59, align 8
  %62 = load ptr, ptr %60, align 8
  %63 = tail call i32 @dis2_number(ptr noundef %61, i32 noundef %58, i32 noundef %2)
  %64 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 3
  %65 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 3
  %66 = load ptr, ptr %64, align 8
  %67 = load ptr, ptr %65, align 8
  %68 = tail call i32 @dis2_number(ptr noundef %66, i32 noundef %63, i32 noundef %2)
  %69 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 4
  %70 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 4
  %71 = load ptr, ptr %69, align 8
  %72 = load ptr, ptr %70, align 8
  %73 = tail call i32 @dis2_number(ptr noundef %71, i32 noundef %68, i32 noundef %2)
  %74 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 5
  %75 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 5
  %76 = load ptr, ptr %74, align 8
  %77 = load ptr, ptr %75, align 8
  %78 = tail call i32 @dis2_number(ptr noundef %76, i32 noundef %73, i32 noundef %2)
  %79 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 6
  %80 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 6
  %81 = load ptr, ptr %79, align 8
  %82 = load ptr, ptr %80, align 8
  %83 = tail call i32 @dis2_number(ptr noundef %81, i32 noundef %78, i32 noundef %2)
  %84 = getelementptr inbounds %struct.cnode, ptr %.tr, i64 0, i32 5, i64 7
  %85 = getelementptr inbounds %struct.cnode, ptr %4, i64 0, i32 5, i64 7
  %86 = load ptr, ptr %84, align 8
  %87 = load ptr, ptr %85, align 8
  br label %tailrecurse

88:                                               ; preds = %34
  %cfg_DestPhi30 = phi i32 [ 231736065, %34 ]
  %89 = phi i32 [ 231736065, %34 ]
  %cfg_DiffPhi31 = phi i32 [ %44, %34 ]
  %90 = phi i32 [ %44, %34 ]
  %icmpEq104 = icmp eq i32 %cfg_DiffPhi31, %90
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %icmpEq102 = icmp eq i32 %cfg_DestPhi30, %89
  %91 = icmp eq i32 %89, %89
  %icmpEq106 = icmp eq i1 %icmpEq102, %91
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %92 = xor i32 %cfg_DestPhi30, %cfg_DiffPhi31
  %cfg_icmpEq32 = icmp eq i32 %92, 334497035
  %93 = icmp eq i32 %92, 334497035
  %icmpEq108 = icmp eq i1 %cfg_icmpEq32, %93
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %cfg_zext33 = zext i1 %cfg_icmpEq32 to i32
  call void @assert_cfg_ft(i32 %cfg_zext33, i32 %92, i32 35)
  %94 = add nsw i32 %.tr20, 1
  %95 = sdiv i32 %94, %2
  %96 = sdiv i32 %94, %2
  %icmpEq110 = icmp eq i32 %95, %96
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %97 = getelementptr inbounds %struct.node, ptr %.tr, i64 0, i32 4
  store i32 %95, ptr %97, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %88, %tailrecurse
  %.0 = phi i32 [ %94, %88 ], [ %.tr20, %tailrecurse ]
  %98 = phi i32 [ %94, %88 ], [ %6, %tailrecurse ]
  %99 = phi i32 [ %94, %88 ], [ %.tr20, %tailrecurse ]
  %100 = phi i32 [ %94, %88 ], [ %6, %tailrecurse ]
  %cfg_DestPhi34 = phi i32 [ 180356101, %tailrecurse ], [ 334497035, %88 ]
  %101 = phi i32 [ 180356101, %tailrecurse ], [ 334497035, %88 ]
  %102 = phi i32 [ 180356101, %tailrecurse ], [ 334497035, %88 ]
  %103 = phi i32 [ 180356101, %tailrecurse ], [ 334497035, %88 ]
  %cfg_DiffPhi35 = phi i32 [ %31, %tailrecurse ], [ 82839313, %88 ]
  %104 = phi i32 [ %32, %tailrecurse ], [ 82839313, %88 ]
  %105 = phi i32 [ %31, %tailrecurse ], [ 82839313, %88 ]
  %106 = phi i32 [ %32, %tailrecurse ], [ 82839313, %88 ]
  %icmpEq134 = icmp eq i32 %105, %106
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %icmpEq132 = icmp eq i32 %cfg_DiffPhi35, %104
  %107 = icmp eq i32 %104, %104
  %icmpEq136 = icmp eq i1 %icmpEq132, %107
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %icmpEq130 = icmp eq i32 %102, %103
  %zext131 = zext i1 %icmpEq130 to i32
  %108 = zext i1 %icmpEq130 to i32
  %icmpEq138 = icmp eq i32 %zext131, %108
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  call void @assert_ft(i32 %zext131, i32 35)
  %icmpEq128 = icmp eq i32 %cfg_DestPhi34, %101
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq126 = icmp eq i32 %99, %100
  %109 = icmp eq i32 %100, %100
  %icmpEq140 = icmp eq i1 %icmpEq126, %109
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i32 %.0, %98
  %zext125 = zext i1 %icmpEq124 to i32
  %110 = zext i1 %icmpEq124 to i32
  %icmpEq142 = icmp eq i32 %zext125, %110
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq116 = icmp eq i32 %cfg_DiffPhi35, %105
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %icmpEq114 = icmp eq i32 %cfg_DestPhi34, %102
  %111 = icmp eq i32 %101, %103
  %icmpEq144 = icmp eq i1 %icmpEq114, %111
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %112 = icmp eq i32 %cfg_DestPhi34, %102
  %icmpEq118 = icmp eq i1 %icmpEq114, %112
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext115 = zext i1 %icmpEq114 to i32
  %113 = zext i1 %111 to i32
  %icmpEq146 = icmp eq i32 %zext115, %113
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq112 = icmp eq i32 %.0, %99
  %zext113 = zext i1 %icmpEq112 to i32
  %114 = zext i1 %icmpEq112 to i32
  %115 = zext i1 %icmpEq112 to i32
  %icmpEq148 = icmp eq i32 %114, %115
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %icmpEq120 = icmp eq i32 %zext113, %114
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  call void @assert_ft(i32 %zext113, i32 35)
  %116 = xor i32 %cfg_DestPhi34, %cfg_DiffPhi35
  %117 = xor i32 %101, %104
  %icmpEq150 = icmp eq i32 %116, %117
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %cfg_icmpEq36 = icmp eq i32 %116, 385876506
  %cfg_zext37 = zext i1 %cfg_icmpEq36 to i32
  %118 = zext i1 %cfg_icmpEq36 to i32
  %icmpEq122 = icmp eq i32 %cfg_zext37, %118
  %119 = icmp eq i32 %118, %118
  %icmpEq152 = icmp eq i1 %icmpEq122, %119
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext37, i32 %116, i32 35)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable
define dso_local double @my_rand(double noundef %0) local_unnamed_addr #22 {
  %2 = tail call double @llvm.fmuladd.f64(double %0, double 1.680700e+04, double 1.000000e+00)
  %3 = fdiv double %2, 0x41DFFFFFFFC00000
  %4 = fdiv double %2, 0x41DFFFFFFFC00000
  %5 = tail call double @llvm.floor.f64(double %3)
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xC1DFFFFFFFC00000, double %2)
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @xrand(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #6 {
  %4 = fsub double %1, %0
  %5 = fsub double %1, %0
  %6 = fmul double %4, %2
  %7 = fmul double %5, %2
  %8 = fdiv double %6, 0x41DFFFFFFFC00000
  %9 = fdiv double %7, 0x41DFFFFFFFC00000
  %10 = fadd double %8, %0
  %11 = fadd double %9, %0
  ret double %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cputime() local_unnamed_addr #0 {
  %1 = alloca %struct.tms, align 8
  %2 = call i64 @times(ptr noundef nonnull %1) #28
  %3 = icmp eq i64 %2, -1
  %4 = icmp eq i64 %2, -1
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180355605, i32 231736346
  %6 = xor i32 128975893, %5
  br i1 %3, label %7, label %14

7:                                                ; preds = %0
  %cfg_DestPhi = phi i32 [ 128975893, %0 ]
  %8 = phi i32 [ 128975893, %0 ]
  %cfg_DiffPhi = phi i32 [ %6, %0 ]
  %9 = phi i32 [ %6, %0 ]
  %icmpEq7 = icmp eq i32 %cfg_DiffPhi, %9
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %icmpEq5 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq9 = icmp eq i1 %icmpEq5, %10
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180355605
  %12 = icmp eq i32 %11, 180355605
  %icmpEq11 = icmp eq i1 %cfg_icmpEq, %12
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = tail call i32 @error(ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  unreachable

14:                                               ; preds = %0
  %cfg_DestPhi1 = phi i32 [ 128975893, %0 ]
  %15 = phi i32 [ 128975893, %0 ]
  %cfg_DiffPhi2 = phi i32 [ %6, %0 ]
  %16 = phi i32 [ %6, %0 ]
  %icmpEq15 = icmp eq i32 %cfg_DiffPhi2, %16
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %icmpEq13 = icmp eq i32 %cfg_DestPhi1, %15
  %17 = icmp eq i32 %15, %15
  %icmpEq17 = icmp eq i1 %icmpEq13, %17
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %18 = xor i32 %cfg_DestPhi1, %cfg_DiffPhi2
  %cfg_icmpEq3 = icmp eq i32 %18, 231736346
  %19 = icmp eq i32 %18, 231736346
  %icmpEq19 = icmp eq i1 %cfg_icmpEq3, %19
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %cfg_zext4 = zext i1 %cfg_icmpEq3 to i32
  call void @assert_cfg_ft(i32 %cfg_zext4, i32 %18, i32 35)
  %20 = load i64, ptr %1, align 8
  %21 = sitofp i64 %20 to double
  %22 = sitofp i64 %20 to double
  %23 = fdiv double %21, 3.600000e+03
  %24 = fdiv double %22, 3.600000e+03
  ret double %23
}

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @error(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #20 {
  %6 = load ptr, ptr @stderr, align 8
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  %9 = tail call ptr @__errno_location() #31
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %9, align 4
  %icmpEq = icmp eq i32 %10, %11
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %.not = icmp eq i32 %10, 0
  %12 = select i1 %.not, i32 231735821, i32 180355605
  %13 = xor i32 128976397, %12
  br i1 %.not, label %20, label %14

14:                                               ; preds = %5
  %cfg_DestPhi = phi i32 [ 128976397, %5 ]
  %15 = phi i32 [ 128976397, %5 ]
  %cfg_DiffPhi = phi i32 [ %13, %5 ]
  %16 = phi i32 [ %13, %5 ]
  %icmpEq11 = icmp eq i32 %cfg_DiffPhi, %16
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %icmpEq9 = icmp eq i32 %cfg_DestPhi, %15
  %17 = icmp eq i32 %15, %15
  %icmpEq13 = icmp eq i1 %icmpEq9, %17
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %18 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %18, 180355605
  %19 = icmp eq i32 %18, 180355605
  %icmpEq15 = icmp eq i1 %cfg_icmpEq, %19
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %18, i32 35)
  tail call void @perror(ptr noundef nonnull @.str.1.8) #30
  br label %20

20:                                               ; preds = %14, %5
  %cfg_DestPhi5 = phi i32 [ 180355605, %14 ], [ 128976397, %5 ]
  %21 = phi i32 [ 180355605, %14 ], [ 128976397, %5 ]
  %cfg_DiffPhi6 = phi i32 [ 118489112, %14 ], [ %13, %5 ]
  %22 = phi i32 [ 118489112, %14 ], [ %13, %5 ]
  %icmpEq19 = icmp eq i32 %cfg_DiffPhi6, %22
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %icmpEq17 = icmp eq i32 %cfg_DestPhi5, %21
  %23 = icmp eq i32 %21, %21
  %icmpEq21 = icmp eq i1 %icmpEq17, %23
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %24 = xor i32 %cfg_DestPhi5, %cfg_DiffPhi6
  %cfg_icmpEq7 = icmp eq i32 %24, 231735821
  %25 = icmp eq i32 %24, 231735821
  %icmpEq23 = icmp eq i1 %cfg_icmpEq7, %25
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %cfg_zext8 = zext i1 %cfg_icmpEq7 to i32
  call void @assert_cfg_ft(i32 %cfg_zext8, i32 %24, i32 35)
  tail call void @exit(i32 noundef 0) #29
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #23

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local i32 @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #25 {
  %3 = icmp sgt i32 %0, 1
  %4 = icmp sgt i32 %0, 1
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180356101, i32 231736065
  %6 = xor i32 128975389, %5
  br i1 %3, label %7, label %17

7:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %8 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %6, %2 ]
  %9 = phi i32 [ %6, %2 ]
  %icmpEq8 = icmp eq i32 %cfg_DiffPhi, %9
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  %icmpEq6 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq10 = icmp eq i1 %icmpEq6, %10
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  %zext7 = zext i1 %icmpEq6 to i32
  call void @assert_ft(i32 %zext7, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356101
  %12 = icmp eq i32 %11, 180356101
  %icmpEq12 = icmp eq i1 %cfg_icmpEq, %12
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %13, align 8
  %16 = tail call i32 @atoi(ptr nocapture noundef %14) #32
  br label %17

17:                                               ; preds = %7, %2
  %storemerge = phi i32 [ %16, %7 ], [ 2048, %2 ]
  %18 = phi i32 [ %16, %7 ], [ 2048, %2 ]
  %cfg_DestPhi2 = phi i32 [ 128975389, %2 ], [ 180356101, %7 ]
  %19 = phi i32 [ 128975389, %2 ], [ 180356101, %7 ]
  %cfg_DiffPhi3 = phi i32 [ %6, %2 ], [ 118490884, %7 ]
  %20 = phi i32 [ %6, %2 ], [ 118490884, %7 ]
  %icmpEq18 = icmp eq i32 %cfg_DiffPhi3, %20
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %cfg_DestPhi2, %19
  %21 = icmp eq i32 %19, %19
  %icmpEq20 = icmp eq i1 %icmpEq16, %21
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %icmpEq14 = icmp eq i32 %storemerge, %18
  %zext15 = zext i1 %icmpEq14 to i32
  %22 = zext i1 %icmpEq14 to i32
  %icmpEq22 = icmp eq i32 %zext15, %22
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  call void @assert_ft(i32 %zext15, i32 35)
  %23 = xor i32 %cfg_DestPhi2, %cfg_DiffPhi3
  %cfg_icmpEq4 = icmp eq i32 %23, 231736065
  %cfg_zext5 = zext i1 %cfg_icmpEq4 to i32
  %24 = zext i1 %cfg_icmpEq4 to i32
  %icmpEq24 = icmp eq i32 %cfg_zext5, %24
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext5, i32 %23, i32 35)
  store i32 %storemerge, ptr @nbody, align 4
  ret i32 undef
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

declare void @exit.1(i32, ...)

declare i32 @printf.2(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  %3 = call i32 @exit(i32 1099)
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
  %4 = call i32 @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind memory(readwrite, inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree noinline nounwind memory(write, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i16 0, i16 2}
!7 = !{i32 0, i32 2}
