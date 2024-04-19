; ModuleID = 'patricia-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pat_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %1, null
  %icmpEq255 = icmp eq i1 %4, %5
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %0, null
  %icmpEq257 = icmp eq i1 %6, %7
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  %or.cond = and i1 %6, %3
  %8 = select i1 %or.cond, i32 180356101, i32 1464861190
  %9 = xor i32 128975893, %8
  %10 = xor i32 128975893, %8
  %11 = xor i32 128975893, %8
  %icmpEq259 = icmp eq i32 %10, %11
  %zext260 = zext i1 %icmpEq259 to i32
  call void @assert_ft(i32 %zext260, i32 35)
  %icmpEq253 = icmp eq i32 %9, %10
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  br i1 %or.cond, label %12, label %442

12:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975893, %2 ]
  %13 = phi i32 [ 128975893, %2 ]
  %cfg_DiffPhi = phi i32 [ %9, %2 ]
  %14 = phi i32 [ %10, %2 ]
  %icmpEq263 = icmp eq i32 %cfg_DiffPhi, %14
  %zext264 = zext i1 %icmpEq263 to i32
  call void @assert_ft(i32 %zext264, i32 35)
  %icmpEq261 = icmp eq i32 %cfg_DestPhi, %13
  %15 = icmp eq i32 %13, %13
  %icmpEq265 = icmp eq i1 %icmpEq261, %15
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %zext262 = zext i1 %icmpEq261 to i32
  call void @assert_ft(i32 %zext262, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180356101
  %17 = icmp eq i32 %16, 180356101
  %icmpEq267 = icmp eq i1 %cfg_icmpEq, %17
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %18 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %18, align 8
  %.not = icmp eq ptr %19, null
  %21 = icmp eq ptr %20, null
  %icmpEq269 = icmp eq i1 %.not, %21
  %zext270 = zext i1 %icmpEq269 to i32
  call void @assert_ft(i32 %zext270, i32 35)
  %22 = select i1 %.not, i32 1464861190, i32 231737115
  %23 = xor i32 180356101, %22
  br i1 %.not, label %442, label %24

24:                                               ; preds = %12
  %cfg_DestPhi153 = phi i32 [ 180356101, %12 ]
  %25 = phi i32 [ 180356101, %12 ]
  %26 = phi i32 [ 180356101, %12 ]
  %cfg_DiffPhi154 = phi i32 [ %23, %12 ]
  %27 = phi i32 [ %23, %12 ]
  %28 = phi i32 [ %23, %12 ]
  %29 = phi i32 [ %23, %12 ]
  %icmpEq287 = icmp eq i32 %28, %29
  %zext288 = zext i1 %icmpEq287 to i32
  call void @assert_ft(i32 %zext288, i32 35)
  %icmpEq285 = icmp eq i32 %cfg_DiffPhi154, %27
  %30 = icmp eq i32 %27, %27
  %icmpEq289 = icmp eq i1 %icmpEq285, %30
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %icmpEq283 = icmp eq i32 %25, %26
  %zext284 = zext i1 %icmpEq283 to i32
  %31 = zext i1 %icmpEq283 to i32
  %icmpEq291 = icmp eq i32 %zext284, %31
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  call void @assert_ft(i32 %zext284, i32 35)
  %icmpEq273 = icmp eq i32 %cfg_DiffPhi154, %28
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  %icmpEq271 = icmp eq i32 %cfg_DestPhi153, %25
  %32 = icmp eq i32 %25, %26
  %icmpEq293 = icmp eq i1 %icmpEq271, %32
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  %33 = icmp eq i32 %cfg_DestPhi153, %25
  %icmpEq275 = icmp eq i1 %icmpEq271, %33
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  %zext272 = zext i1 %icmpEq271 to i32
  %34 = zext i1 %32 to i32
  %icmpEq295 = icmp eq i32 %zext272, %34
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  call void @assert_ft(i32 %zext272, i32 35)
  %35 = xor i32 %cfg_DestPhi153, %cfg_DiffPhi154
  %cfg_icmpEq155 = icmp eq i32 %35, 231737115
  %36 = icmp eq i32 %35, 231737115
  %37 = icmp eq i32 %35, 231737115
  %icmpEq297 = icmp eq i1 %36, %37
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  %icmpEq277 = icmp eq i1 %cfg_icmpEq155, %36
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  %cfg_zext156 = zext i1 %cfg_icmpEq155 to i32
  %38 = zext i1 %36 to i32
  %icmpEq299 = icmp eq i32 %cfg_zext156, %38
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext156, i32 %35, i32 35)
  %39 = load i64, ptr %19, align 8
  %40 = load i64, ptr %0, align 8
  %41 = load i64, ptr %0, align 8
  %42 = load i64, ptr %0, align 8
  %icmpEq301 = icmp eq i64 %41, %42
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %icmpEq279 = icmp eq i64 %40, %41
  %zext280 = zext i1 %icmpEq279 to i32
  call void @assert_ft(i32 %zext280, i32 35)
  %43 = and i64 %40, %39
  %44 = and i64 %41, %39
  %icmpEq303 = icmp eq i64 %43, %44
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  store i64 %43, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %45 = load i8, ptr %.phi.trans.insert, align 1
  %46 = load i8, ptr %.phi.trans.insert, align 1
  %icmpEq305 = icmp eq i8 %45, %46
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %icmpEq281 = icmp eq i8 %.pre, %45
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  br label %47

47:                                               ; preds = %47, %24
  %48 = phi i8 [ %.pre, %24 ], [ %66, %47 ]
  %49 = phi i8 [ %45, %24 ], [ %67, %47 ]
  %.076 = phi ptr [ %1, %24 ], [ %62, %47 ]
  %50 = phi ptr [ %1, %24 ], [ %63, %47 ]
  %cfg_DestPhi157 = phi i32 [ 283118862, %47 ], [ 231737115, %24 ]
  %51 = phi i32 [ 283118862, %47 ], [ 231737115, %24 ]
  %cfg_DiffPhi158 = phi i32 [ %70, %47 ], [ 489687573, %24 ]
  %52 = phi i32 [ %70, %47 ], [ 489687573, %24 ]
  %icmpEq311 = icmp eq i32 %cfg_DiffPhi158, %52
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %icmpEq309 = icmp eq i32 %cfg_DestPhi157, %51
  %53 = icmp eq i32 %51, %51
  %icmpEq313 = icmp eq i1 %icmpEq309, %53
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %icmpEq307 = icmp eq i8 %48, %49
  %zext308 = zext i1 %icmpEq307 to i32
  %54 = zext i1 %icmpEq307 to i32
  %icmpEq315 = icmp eq i32 %zext308, %54
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  call void @assert_ft(i32 %zext308, i32 35)
  %55 = xor i32 %cfg_DestPhi157, %cfg_DiffPhi158
  %cfg_icmpEq159 = icmp eq i32 %55, 283118862
  %cfg_zext160 = zext i1 %cfg_icmpEq159 to i32
  %56 = zext i1 %cfg_icmpEq159 to i32
  %icmpEq317 = icmp eq i32 %cfg_zext160, %56
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext160, i32 %55, i32 35)
  %57 = sext i8 %48 to i32
  %58 = tail call fastcc i64 @bit(i32 noundef %57, i64 noundef %43)
  %.not81 = icmp eq i64 %58, 0
  %59 = icmp eq i64 %58, 0
  %icmpEq319 = icmp eq i1 %.not81, %59
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %60 = getelementptr inbounds %struct.ptree, ptr %.076, i64 0, i32 5
  %61 = getelementptr inbounds %struct.ptree, ptr %.076, i64 0, i32 4
  %.in = select i1 %.not81, ptr %61, ptr %60
  %62 = load ptr, ptr %.in, align 8
  %63 = load ptr, ptr %.in, align 8
  %64 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 3
  %65 = getelementptr inbounds %struct.ptree, ptr %63, i64 0, i32 3
  %66 = load i8, ptr %64, align 1
  %67 = load i8, ptr %65, align 1
  %icmpEq321 = icmp eq i8 %66, %67
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  %68 = icmp slt i8 %48, %66
  %69 = select i1 %68, i32 283118862, i32 334496526
  %70 = xor i32 283118862, %69
  br i1 %68, label %47, label %71

71:                                               ; preds = %47
  %cfg_DestPhi161 = phi i32 [ 283118862, %47 ]
  %72 = phi i32 [ 283118862, %47 ]
  %cfg_DiffPhi162 = phi i32 [ %70, %47 ]
  %73 = phi i32 [ %70, %47 ]
  %icmpEq325 = icmp eq i32 %cfg_DiffPhi162, %73
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  %icmpEq323 = icmp eq i32 %cfg_DestPhi161, %72
  %74 = icmp eq i32 %72, %72
  %icmpEq327 = icmp eq i1 %icmpEq323, %74
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  %75 = xor i32 %cfg_DestPhi161, %cfg_DiffPhi162
  %cfg_icmpEq163 = icmp eq i32 %75, 334496526
  %76 = icmp eq i32 %75, 334496526
  %icmpEq329 = icmp eq i1 %cfg_icmpEq163, %76
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  %cfg_zext164 = zext i1 %cfg_icmpEq163 to i32
  call void @assert_cfg_ft(i32 %cfg_zext164, i32 %75, i32 35)
  %77 = load i64, ptr %62, align 8
  %78 = icmp eq i64 %43, %77
  %79 = icmp eq i64 %44, %77
  %icmpEq331 = icmp eq i1 %78, %79
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %80 = select i1 %78, i32 385877276, i32 1207960836
  %81 = xor i32 334496526, %80
  br i1 %78, label %.preheader, label %.preheader84

.preheader:                                       ; preds = %71
  %cfg_DestPhi165 = phi i32 [ 334496526, %71 ]
  %82 = phi i32 [ 334496526, %71 ]
  %83 = phi i32 [ 334496526, %71 ]
  %cfg_DiffPhi166 = phi i32 [ %81, %71 ]
  %84 = phi i32 [ %81, %71 ]
  %85 = phi i32 [ %81, %71 ]
  %86 = phi i32 [ %81, %71 ]
  %icmpEq349 = icmp eq i32 %85, %86
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  %icmpEq347 = icmp eq i32 %cfg_DiffPhi166, %84
  %87 = icmp eq i32 %84, %84
  %icmpEq351 = icmp eq i1 %icmpEq347, %87
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %icmpEq345 = icmp eq i32 %82, %83
  %zext346 = zext i1 %icmpEq345 to i32
  %88 = zext i1 %icmpEq345 to i32
  %icmpEq353 = icmp eq i32 %zext346, %88
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  call void @assert_ft(i32 %zext346, i32 35)
  %icmpEq335 = icmp eq i32 %cfg_DiffPhi166, %85
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq333 = icmp eq i32 %cfg_DestPhi165, %82
  %89 = icmp eq i32 %82, %83
  %icmpEq355 = icmp eq i1 %icmpEq333, %89
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %90 = icmp eq i32 %cfg_DestPhi165, %82
  %icmpEq337 = icmp eq i1 %icmpEq333, %90
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %zext334 = zext i1 %icmpEq333 to i32
  %91 = zext i1 %89 to i32
  %icmpEq357 = icmp eq i32 %zext334, %91
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  call void @assert_ft(i32 %zext334, i32 35)
  %92 = xor i32 %cfg_DestPhi165, %cfg_DiffPhi166
  %cfg_icmpEq167 = icmp eq i32 %92, 385877276
  %93 = icmp eq i32 %92, 385877276
  %94 = icmp eq i32 %92, 385877276
  %icmpEq359 = icmp eq i1 %93, %94
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %icmpEq339 = icmp eq i1 %cfg_icmpEq167, %93
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %cfg_zext168 = zext i1 %cfg_icmpEq167 to i32
  %95 = zext i1 %93 to i32
  %icmpEq361 = icmp eq i32 %cfg_zext168, %95
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext168, i32 %92, i32 35)
  %96 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 2
  %97 = load i8, ptr %96, align 8
  %98 = load i8, ptr %96, align 8
  %99 = load i8, ptr %96, align 8
  %icmpEq363 = icmp eq i8 %98, %99
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %icmpEq341 = icmp eq i8 %97, %98
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  %100 = zext i8 %97 to i64
  %101 = zext i8 %98 to i64
  %icmpEq365 = icmp eq i64 %100, %101
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %.not102 = icmp eq i8 %97, 0
  %102 = select i1 %.not102, i32 437257252, i32 488637721
  %103 = xor i32 385877276, %102
  %104 = xor i32 385877276, %102
  %105 = xor i32 385877276, %102
  %icmpEq367 = icmp eq i32 %104, %105
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %icmpEq343 = icmp eq i32 %103, %104
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  br i1 %.not102, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  %cfg_DestPhi169 = phi i32 [ 385877276, %.preheader ]
  %106 = phi i32 [ 385877276, %.preheader ]
  %107 = phi i32 [ 385877276, %.preheader ]
  %108 = phi i32 [ 385877276, %.preheader ]
  %cfg_DiffPhi170 = phi i32 [ %103, %.preheader ]
  %109 = phi i32 [ %104, %.preheader ]
  %110 = phi i32 [ %103, %.preheader ]
  %111 = phi i32 [ %104, %.preheader ]
  %icmpEq385 = icmp eq i32 %110, %111
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %icmpEq383 = icmp eq i32 %cfg_DiffPhi170, %109
  %112 = icmp eq i32 %109, %109
  %icmpEq387 = icmp eq i1 %icmpEq383, %112
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  %icmpEq381 = icmp eq i32 %107, %108
  %zext382 = zext i1 %icmpEq381 to i32
  %113 = zext i1 %icmpEq381 to i32
  %icmpEq389 = icmp eq i32 %zext382, %113
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  call void @assert_ft(i32 %zext382, i32 35)
  %icmpEq379 = icmp eq i32 %cfg_DestPhi169, %106
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %icmpEq371 = icmp eq i32 %cfg_DiffPhi170, %110
  %114 = icmp eq i32 %109, %111
  %icmpEq391 = icmp eq i1 %icmpEq371, %114
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  %icmpEq369 = icmp eq i32 %cfg_DestPhi169, %107
  %115 = icmp eq i32 %106, %108
  %116 = icmp eq i32 %106, %108
  %icmpEq393 = icmp eq i1 %115, %116
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  %icmpEq373 = icmp eq i1 %icmpEq369, %115
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %zext370 = zext i1 %icmpEq369 to i32
  %117 = zext i1 %115 to i32
  %icmpEq395 = icmp eq i32 %zext370, %117
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  call void @assert_ft(i32 %zext370, i32 35)
  %118 = xor i32 %cfg_DestPhi169, %cfg_DiffPhi170
  %cfg_icmpEq171 = icmp eq i32 %118, 437257252
  %119 = icmp eq i32 %118, 437257252
  %120 = icmp eq i32 %118, 437257252
  %icmpEq397 = icmp eq i1 %119, %120
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  %icmpEq375 = icmp eq i1 %cfg_icmpEq171, %119
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %cfg_zext172 = zext i1 %cfg_icmpEq171 to i32
  %121 = zext i1 %119 to i32
  %icmpEq399 = icmp eq i32 %cfg_zext172, %121
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext172, i32 %118, i32 35)
  %122 = shl nuw nsw i64 %100, 4
  %123 = add nuw nsw i64 %122, 16
  %124 = add nuw nsw i64 %122, 16
  %125 = add nuw nsw i64 %122, 16
  %icmpEq401 = icmp eq i64 %124, %125
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %icmpEq377 = icmp eq i64 %123, %124
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %126 = tail call noalias ptr @malloc(i64 noundef %123) #14
  br label %._crit_edge99.thread

.lr.ph:                                           ; preds = %.preheader
  %cfg_DestPhi173 = phi i32 [ 385877276, %.preheader ]
  %127 = phi i32 [ 385877276, %.preheader ]
  %128 = phi i32 [ 385877276, %.preheader ]
  %cfg_DiffPhi174 = phi i32 [ %103, %.preheader ]
  %129 = phi i32 [ %104, %.preheader ]
  %130 = phi i32 [ %103, %.preheader ]
  %131 = phi i32 [ %104, %.preheader ]
  %icmpEq417 = icmp eq i32 %130, %131
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  %icmpEq415 = icmp eq i32 %cfg_DiffPhi174, %129
  %132 = icmp eq i32 %129, %129
  %icmpEq419 = icmp eq i1 %icmpEq415, %132
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %zext416 = zext i1 %icmpEq415 to i32
  call void @assert_ft(i32 %zext416, i32 35)
  %icmpEq413 = icmp eq i32 %127, %128
  %zext414 = zext i1 %icmpEq413 to i32
  %133 = zext i1 %icmpEq413 to i32
  %icmpEq421 = icmp eq i32 %zext414, %133
  %zext422 = zext i1 %icmpEq421 to i32
  call void @assert_ft(i32 %zext422, i32 35)
  call void @assert_ft(i32 %zext414, i32 35)
  %icmpEq405 = icmp eq i32 %cfg_DiffPhi174, %130
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %icmpEq403 = icmp eq i32 %cfg_DestPhi173, %127
  %134 = icmp eq i32 %127, %128
  %icmpEq423 = icmp eq i1 %icmpEq403, %134
  %zext424 = zext i1 %icmpEq423 to i32
  call void @assert_ft(i32 %zext424, i32 35)
  %135 = icmp eq i32 %cfg_DestPhi173, %127
  %icmpEq407 = icmp eq i1 %icmpEq403, %135
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %zext404 = zext i1 %icmpEq403 to i32
  %136 = zext i1 %134 to i32
  %icmpEq425 = icmp eq i32 %zext404, %136
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  call void @assert_ft(i32 %zext404, i32 35)
  %137 = xor i32 %cfg_DestPhi173, %cfg_DiffPhi174
  %cfg_icmpEq175 = icmp eq i32 %137, 488637721
  %138 = icmp eq i32 %137, 488637721
  %139 = icmp eq i32 %137, 488637721
  %icmpEq427 = icmp eq i1 %138, %139
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  %icmpEq409 = icmp eq i1 %cfg_icmpEq175, %138
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  %cfg_zext176 = zext i1 %cfg_icmpEq175 to i32
  %140 = zext i1 %138 to i32
  %icmpEq429 = icmp eq i32 %cfg_zext176, %140
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext176, i32 %137, i32 35)
  %141 = load i64, ptr %19, align 8
  %142 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 1
  %143 = getelementptr inbounds %struct.ptree, ptr %63, i64 0, i32 1
  %144 = getelementptr inbounds %struct.ptree, ptr %63, i64 0, i32 1
  %145 = load ptr, ptr %142, align 8
  %146 = load ptr, ptr %143, align 8
  %147 = load ptr, ptr %142, align 8
  %148 = load ptr, ptr %143, align 8
  %wide.trip.count = zext i8 %97 to i64
  %149 = zext i8 %98 to i64
  %icmpEq431 = icmp eq i64 %wide.trip.count, %149
  %zext432 = zext i1 %icmpEq431 to i32
  call void @assert_ft(i32 %zext432, i32 35)
  %150 = zext i8 %97 to i64
  %icmpEq411 = icmp eq i64 %wide.trip.count, %150
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  br label %160

151:                                              ; preds = %160
  %cfg_DestPhi177 = phi i32 [ 591398166, %160 ]
  %152 = phi i32 [ 591398166, %160 ]
  %cfg_DiffPhi178 = phi i32 [ %173, %160 ]
  %153 = phi i32 [ %173, %160 ]
  %icmpEq435 = icmp eq i32 %cfg_DiffPhi178, %153
  %zext436 = zext i1 %icmpEq435 to i32
  call void @assert_ft(i32 %zext436, i32 35)
  %icmpEq433 = icmp eq i32 %cfg_DestPhi177, %152
  %154 = icmp eq i32 %152, %152
  %icmpEq437 = icmp eq i1 %icmpEq433, %154
  %zext438 = zext i1 %icmpEq437 to i32
  call void @assert_ft(i32 %zext438, i32 35)
  %zext434 = zext i1 %icmpEq433 to i32
  call void @assert_ft(i32 %zext434, i32 35)
  %155 = xor i32 %cfg_DestPhi177, %cfg_DiffPhi178
  %cfg_icmpEq179 = icmp eq i32 %155, 540017411
  %156 = icmp eq i32 %155, 540017411
  %icmpEq439 = icmp eq i1 %cfg_icmpEq179, %156
  %zext440 = zext i1 %icmpEq439 to i32
  call void @assert_ft(i32 %zext440, i32 35)
  %cfg_zext180 = zext i1 %cfg_icmpEq179 to i32
  call void @assert_cfg_ft(i32 %cfg_zext180, i32 %155, i32 35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %157 = icmp eq i64 %indvars.iv.next, %149
  %icmpEq441 = icmp eq i1 %exitcond107.not, %157
  %zext442 = zext i1 %icmpEq441 to i32
  call void @assert_ft(i32 %zext442, i32 35)
  %158 = select i1 %exitcond107.not, i32 694158366, i32 591398166
  %159 = xor i32 540017411, %158
  br i1 %exitcond107.not, label %._crit_edge, label %160

160:                                              ; preds = %151, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %151 ]
  %161 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %151 ]
  %cfg_DestPhi181 = phi i32 [ 488637721, %.lr.ph ], [ 540017411, %151 ]
  %162 = phi i32 [ 488637721, %.lr.ph ], [ 540017411, %151 ]
  %cfg_DiffPhi182 = phi i32 [ 1046478863, %.lr.ph ], [ %159, %151 ]
  %163 = phi i32 [ 1046478863, %.lr.ph ], [ %159, %151 ]
  %icmpEq447 = icmp eq i32 %cfg_DiffPhi182, %163
  %zext448 = zext i1 %icmpEq447 to i32
  call void @assert_ft(i32 %zext448, i32 35)
  %icmpEq445 = icmp eq i32 %cfg_DestPhi181, %162
  %164 = icmp eq i32 %162, %162
  %icmpEq449 = icmp eq i1 %icmpEq445, %164
  %zext450 = zext i1 %icmpEq449 to i32
  call void @assert_ft(i32 %zext450, i32 35)
  %zext446 = zext i1 %icmpEq445 to i32
  call void @assert_ft(i32 %zext446, i32 35)
  %icmpEq443 = icmp eq i64 %indvars.iv, %161
  %zext444 = zext i1 %icmpEq443 to i32
  %165 = zext i1 %icmpEq443 to i32
  %icmpEq451 = icmp eq i32 %zext444, %165
  %zext452 = zext i1 %icmpEq451 to i32
  call void @assert_ft(i32 %zext452, i32 35)
  call void @assert_ft(i32 %zext444, i32 35)
  %166 = xor i32 %cfg_DestPhi181, %cfg_DiffPhi182
  %cfg_icmpEq183 = icmp eq i32 %166, 591398166
  %cfg_zext184 = zext i1 %cfg_icmpEq183 to i32
  %167 = zext i1 %cfg_icmpEq183 to i32
  %icmpEq453 = icmp eq i32 %cfg_zext184, %167
  %zext454 = zext i1 %icmpEq453 to i32
  call void @assert_ft(i32 %zext454, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext184, i32 %166, i32 35)
  %168 = getelementptr inbounds %struct.ptree_mask, ptr %145, i64 %indvars.iv
  %169 = load i64, ptr %168, align 8
  %170 = icmp eq i64 %141, %169
  %171 = icmp eq i64 %141, %169
  %icmpEq455 = icmp eq i1 %170, %171
  %zext456 = zext i1 %icmpEq455 to i32
  call void @assert_ft(i32 %zext456, i32 35)
  %172 = select i1 %170, i32 642779154, i32 540017411
  %173 = xor i32 591398166, %172
  br i1 %170, label %174, label %151

174:                                              ; preds = %160
  %cfg_DestPhi185 = phi i32 [ 591398166, %160 ]
  %175 = phi i32 [ 591398166, %160 ]
  %cfg_DiffPhi186 = phi i32 [ %173, %160 ]
  %176 = phi i32 [ %173, %160 ]
  %icmpEq459 = icmp eq i32 %cfg_DiffPhi186, %176
  %zext460 = zext i1 %icmpEq459 to i32
  call void @assert_ft(i32 %zext460, i32 35)
  %icmpEq457 = icmp eq i32 %cfg_DestPhi185, %175
  %177 = icmp eq i32 %175, %175
  %icmpEq461 = icmp eq i1 %icmpEq457, %177
  %zext462 = zext i1 %icmpEq461 to i32
  call void @assert_ft(i32 %zext462, i32 35)
  %zext458 = zext i1 %icmpEq457 to i32
  call void @assert_ft(i32 %zext458, i32 35)
  %178 = xor i32 %cfg_DestPhi185, %cfg_DiffPhi186
  %cfg_icmpEq187 = icmp eq i32 %178, 642779154
  %179 = icmp eq i32 %178, 642779154
  %icmpEq463 = icmp eq i1 %cfg_icmpEq187, %179
  %zext464 = zext i1 %icmpEq463 to i32
  call void @assert_ft(i32 %zext464, i32 35)
  %cfg_zext188 = zext i1 %cfg_icmpEq187 to i32
  call void @assert_cfg_ft(i32 %cfg_zext188, i32 %178, i32 35)
  %180 = getelementptr inbounds %struct.ptree_mask, ptr %19, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8
  %182 = load ptr, ptr %180, align 8
  %183 = getelementptr inbounds %struct.ptree_mask, ptr %145, i64 %indvars.iv, i32 1
  %184 = getelementptr inbounds %struct.ptree_mask, ptr %146, i64 %161, i32 1
  store ptr %181, ptr %183, align 8
  %185 = load ptr, ptr %18, align 8
  %186 = load ptr, ptr %18, align 8
  tail call void @free(ptr noundef %185) #15
  tail call void @free(ptr noundef %0) #15
  br label %442

._crit_edge:                                      ; preds = %151
  %cfg_DestPhi189 = phi i32 [ 540017411, %151 ]
  %187 = phi i32 [ 540017411, %151 ]
  %cfg_DiffPhi190 = phi i32 [ %159, %151 ]
  %188 = phi i32 [ %159, %151 ]
  %icmpEq467 = icmp eq i32 %cfg_DiffPhi190, %188
  %zext468 = zext i1 %icmpEq467 to i32
  call void @assert_ft(i32 %zext468, i32 35)
  %icmpEq465 = icmp eq i32 %cfg_DestPhi189, %187
  %189 = icmp eq i32 %187, %187
  %icmpEq469 = icmp eq i1 %icmpEq465, %189
  %zext470 = zext i1 %icmpEq469 to i32
  call void @assert_ft(i32 %zext470, i32 35)
  %zext466 = zext i1 %icmpEq465 to i32
  call void @assert_ft(i32 %zext466, i32 35)
  %190 = xor i32 %cfg_DestPhi189, %cfg_DiffPhi190
  %cfg_icmpEq191 = icmp eq i32 %190, 694158366
  %191 = icmp eq i32 %190, 694158366
  %icmpEq471 = icmp eq i1 %cfg_icmpEq191, %191
  %zext472 = zext i1 %icmpEq471 to i32
  call void @assert_ft(i32 %zext472, i32 35)
  %cfg_zext192 = zext i1 %cfg_icmpEq191 to i32
  call void @assert_cfg_ft(i32 %cfg_zext192, i32 %190, i32 35)
  %192 = shl nuw nsw i64 %100, 4
  %193 = add nuw nsw i64 %192, 16
  %194 = add nuw nsw i64 %192, 16
  %icmpEq473 = icmp eq i64 %193, %194
  %zext474 = zext i1 %icmpEq473 to i32
  call void @assert_ft(i32 %zext474, i32 35)
  %195 = tail call noalias ptr @malloc(i64 noundef %193) #14
  %196 = select i1 %.not102, i32 1053820187, i32 745538055
  %197 = xor i32 694158366, %196
  br i1 %.not102, label %._crit_edge99.thread, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge
  %cfg_DestPhi193 = phi i32 [ 694158366, %._crit_edge ]
  %198 = phi i32 [ 694158366, %._crit_edge ]
  %cfg_DiffPhi194 = phi i32 [ %197, %._crit_edge ]
  %199 = phi i32 [ %197, %._crit_edge ]
  %icmpEq477 = icmp eq i32 %cfg_DiffPhi194, %199
  %zext478 = zext i1 %icmpEq477 to i32
  call void @assert_ft(i32 %zext478, i32 35)
  %icmpEq475 = icmp eq i32 %cfg_DestPhi193, %198
  %200 = icmp eq i32 %198, %198
  %icmpEq479 = icmp eq i1 %icmpEq475, %200
  %zext480 = zext i1 %icmpEq479 to i32
  call void @assert_ft(i32 %zext480, i32 35)
  %zext476 = zext i1 %icmpEq475 to i32
  call void @assert_ft(i32 %zext476, i32 35)
  %201 = xor i32 %cfg_DestPhi193, %cfg_DiffPhi194
  %cfg_icmpEq195 = icmp eq i32 %201, 745538055
  %202 = icmp eq i32 %201, 745538055
  %icmpEq481 = icmp eq i1 %cfg_icmpEq195, %202
  %zext482 = zext i1 %icmpEq481 to i32
  call void @assert_ft(i32 %zext482, i32 35)
  %cfg_zext196 = zext i1 %cfg_icmpEq195 to i32
  call void @assert_cfg_ft(i32 %cfg_zext196, i32 %201, i32 35)
  %203 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 1
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph98
  %.not83 = phi i1 [ false, %.thread ], [ true, %.lr.ph98 ]
  %204 = phi i1 [ false, %.thread ], [ true, %.lr.ph98 ]
  %.17395.ph = phi i32 [ %.17395, %.thread ], [ 0, %.lr.ph98 ]
  %205 = phi i32 [ %.17395, %.thread ], [ 0, %.lr.ph98 ]
  %.07494.ph = phi ptr [ %291, %.thread ], [ %195, %.lr.ph98 ]
  %206 = phi ptr [ %291, %.thread ], [ %195, %.lr.ph98 ]
  %cfg_DestPhi197 = phi i32 [ 951060491, %.thread ], [ 745538055, %.lr.ph98 ]
  %207 = phi i32 [ 951060491, %.thread ], [ 745538055, %.lr.ph98 ]
  %cfg_DiffPhi198 = phi i32 [ %302, %.thread ], [ 66061860, %.lr.ph98 ]
  %208 = phi i32 [ %302, %.thread ], [ 66061860, %.lr.ph98 ]
  %icmpEq489 = icmp eq i32 %cfg_DiffPhi198, %208
  %zext490 = zext i1 %icmpEq489 to i32
  call void @assert_ft(i32 %zext490, i32 35)
  %icmpEq487 = icmp eq i32 %cfg_DestPhi197, %207
  %209 = icmp eq i32 %207, %207
  %icmpEq491 = icmp eq i1 %icmpEq487, %209
  %zext492 = zext i1 %icmpEq491 to i32
  call void @assert_ft(i32 %zext492, i32 35)
  %zext488 = zext i1 %icmpEq487 to i32
  call void @assert_ft(i32 %zext488, i32 35)
  %icmpEq485 = icmp eq i32 %.17395.ph, %205
  %zext486 = zext i1 %icmpEq485 to i32
  %210 = zext i1 %icmpEq485 to i32
  %icmpEq493 = icmp eq i32 %zext486, %210
  %zext494 = zext i1 %icmpEq493 to i32
  call void @assert_ft(i32 %zext494, i32 35)
  call void @assert_ft(i32 %zext486, i32 35)
  %icmpEq483 = icmp eq i1 %.not83, %204
  %zext484 = zext i1 %icmpEq483 to i32
  call void @assert_ft(i32 %zext484, i32 35)
  %211 = xor i32 %cfg_DestPhi197, %cfg_DiffPhi198
  %212 = xor i32 %207, %208
  %icmpEq495 = icmp eq i32 %211, %212
  %zext496 = zext i1 %icmpEq495 to i32
  call void @assert_ft(i32 %zext496, i32 35)
  %cfg_icmpEq199 = icmp eq i32 %211, 796918819
  %cfg_zext200 = zext i1 %cfg_icmpEq199 to i32
  call void @assert_cfg_ft(i32 %cfg_zext200, i32 %211, i32 35)
  br label %213

213:                                              ; preds = %257, %.outer
  %.17395 = phi i32 [ %264, %257 ], [ %.17395.ph, %.outer ]
  %214 = phi i32 [ %264, %257 ], [ %205, %.outer ]
  %215 = phi i32 [ %264, %257 ], [ %.17395.ph, %.outer ]
  %216 = phi i32 [ %264, %257 ], [ %205, %.outer ]
  %.07494 = phi ptr [ %266, %257 ], [ %.07494.ph, %.outer ]
  %217 = phi ptr [ %266, %257 ], [ %206, %.outer ]
  %218 = phi ptr [ %266, %257 ], [ %.07494.ph, %.outer ]
  %219 = phi ptr [ %266, %257 ], [ %206, %.outer ]
  %cfg_DestPhi201 = phi i32 [ 796918819, %.outer ], [ 899680033, %257 ]
  %220 = phi i32 [ 796918819, %.outer ], [ 899680033, %257 ]
  %221 = phi i32 [ 796918819, %.outer ], [ 899680033, %257 ]
  %222 = phi i32 [ 796918819, %.outer ], [ 899680033, %257 ]
  %cfg_DiffPhi202 = phi i32 [ 487591486, %.outer ], [ %272, %257 ]
  %223 = phi i32 [ 487591486, %.outer ], [ %272, %257 ]
  %224 = phi i32 [ 487591486, %.outer ], [ %272, %257 ]
  %225 = phi i32 [ 487591486, %.outer ], [ %272, %257 ]
  %icmpEq523 = icmp eq i32 %224, %225
  %zext524 = zext i1 %icmpEq523 to i32
  call void @assert_ft(i32 %zext524, i32 35)
  %icmpEq521 = icmp eq i32 %cfg_DiffPhi202, %223
  %226 = icmp eq i32 %223, %223
  %icmpEq525 = icmp eq i1 %icmpEq521, %226
  %zext526 = zext i1 %icmpEq525 to i32
  call void @assert_ft(i32 %zext526, i32 35)
  %zext522 = zext i1 %icmpEq521 to i32
  call void @assert_ft(i32 %zext522, i32 35)
  %icmpEq519 = icmp eq i32 %221, %222
  %zext520 = zext i1 %icmpEq519 to i32
  %227 = zext i1 %icmpEq519 to i32
  %icmpEq527 = icmp eq i32 %zext520, %227
  %zext528 = zext i1 %icmpEq527 to i32
  call void @assert_ft(i32 %zext528, i32 35)
  call void @assert_ft(i32 %zext520, i32 35)
  %icmpEq517 = icmp eq i32 %cfg_DestPhi201, %220
  %zext518 = zext i1 %icmpEq517 to i32
  call void @assert_ft(i32 %zext518, i32 35)
  %icmpEq515 = icmp eq i32 %215, %216
  %228 = icmp eq i32 %216, %216
  %icmpEq529 = icmp eq i1 %icmpEq515, %228
  %zext530 = zext i1 %icmpEq529 to i32
  call void @assert_ft(i32 %zext530, i32 35)
  %zext516 = zext i1 %icmpEq515 to i32
  call void @assert_ft(i32 %zext516, i32 35)
  %icmpEq513 = icmp eq i32 %.17395, %214
  %zext514 = zext i1 %icmpEq513 to i32
  %229 = zext i1 %icmpEq513 to i32
  %icmpEq531 = icmp eq i32 %zext514, %229
  %zext532 = zext i1 %icmpEq531 to i32
  call void @assert_ft(i32 %zext532, i32 35)
  call void @assert_ft(i32 %zext514, i32 35)
  %icmpEq501 = icmp eq i32 %cfg_DiffPhi202, %224
  %zext502 = zext i1 %icmpEq501 to i32
  call void @assert_ft(i32 %zext502, i32 35)
  %icmpEq499 = icmp eq i32 %cfg_DestPhi201, %221
  %230 = icmp eq i32 %220, %222
  %icmpEq533 = icmp eq i1 %icmpEq499, %230
  %zext534 = zext i1 %icmpEq533 to i32
  call void @assert_ft(i32 %zext534, i32 35)
  %231 = icmp eq i32 %cfg_DestPhi201, %221
  %icmpEq503 = icmp eq i1 %icmpEq499, %231
  %zext504 = zext i1 %icmpEq503 to i32
  call void @assert_ft(i32 %zext504, i32 35)
  %zext500 = zext i1 %icmpEq499 to i32
  %232 = zext i1 %230 to i32
  %icmpEq535 = icmp eq i32 %zext500, %232
  %zext536 = zext i1 %icmpEq535 to i32
  call void @assert_ft(i32 %zext536, i32 35)
  call void @assert_ft(i32 %zext500, i32 35)
  %icmpEq497 = icmp eq i32 %.17395, %215
  %zext498 = zext i1 %icmpEq497 to i32
  %233 = zext i1 %icmpEq497 to i32
  %234 = zext i1 %icmpEq497 to i32
  %icmpEq537 = icmp eq i32 %233, %234
  %zext538 = zext i1 %icmpEq537 to i32
  call void @assert_ft(i32 %zext538, i32 35)
  %icmpEq505 = icmp eq i32 %zext498, %233
  %zext506 = zext i1 %icmpEq505 to i32
  call void @assert_ft(i32 %zext506, i32 35)
  call void @assert_ft(i32 %zext498, i32 35)
  %235 = xor i32 %cfg_DestPhi201, %cfg_DiffPhi202
  %236 = xor i32 %220, %223
  %icmpEq539 = icmp eq i32 %235, %236
  %zext540 = zext i1 %icmpEq539 to i32
  call void @assert_ft(i32 %zext540, i32 35)
  %cfg_icmpEq203 = icmp eq i32 %235, 848300573
  %cfg_zext204 = zext i1 %cfg_icmpEq203 to i32
  %237 = zext i1 %cfg_icmpEq203 to i32
  %icmpEq507 = icmp eq i32 %cfg_zext204, %237
  %238 = icmp eq i32 %237, %237
  %icmpEq541 = icmp eq i1 %icmpEq507, %238
  %zext542 = zext i1 %icmpEq541 to i32
  call void @assert_ft(i32 %zext542, i32 35)
  %zext508 = zext i1 %icmpEq507 to i32
  call void @assert_ft(i32 %zext508, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext204, i32 %235, i32 35)
  %239 = load ptr, ptr %18, align 8
  %240 = load ptr, ptr %18, align 8
  %241 = load i64, ptr %239, align 8
  %242 = load i64, ptr %240, align 8
  %icmpEq543 = icmp eq i64 %241, %242
  %zext544 = zext i1 %icmpEq543 to i32
  call void @assert_ft(i32 %zext544, i32 35)
  %243 = load ptr, ptr %203, align 8
  %244 = load ptr, ptr %203, align 8
  %245 = sext i32 %.17395 to i64
  %246 = sext i32 %214 to i64
  %247 = sext i32 %214 to i64
  %icmpEq545 = icmp eq i64 %246, %247
  %zext546 = zext i1 %icmpEq545 to i32
  call void @assert_ft(i32 %zext546, i32 35)
  %icmpEq509 = icmp eq i64 %245, %246
  %zext510 = zext i1 %icmpEq509 to i32
  call void @assert_ft(i32 %zext510, i32 35)
  %248 = getelementptr inbounds %struct.ptree_mask, ptr %243, i64 %245
  %249 = getelementptr inbounds %struct.ptree_mask, ptr %244, i64 %246
  %250 = load i64, ptr %248, align 8
  %251 = load i64, ptr %249, align 8
  %icmpEq547 = icmp eq i64 %250, %251
  %zext548 = zext i1 %icmpEq547 to i32
  call void @assert_ft(i32 %zext548, i32 35)
  %252 = icmp ugt i64 %241, %250
  %253 = select i1 %252, i32 899680033, i32 951060491
  %254 = select i1 %252, i32 899680033, i32 951060491
  %icmpEq511 = icmp eq i32 %253, %254
  %255 = icmp eq i32 %254, %254
  %icmpEq549 = icmp eq i1 %icmpEq511, %255
  %zext550 = zext i1 %icmpEq549 to i32
  call void @assert_ft(i32 %zext550, i32 35)
  %zext512 = zext i1 %icmpEq511 to i32
  call void @assert_ft(i32 %zext512, i32 35)
  %256 = xor i32 848300573, %253
  br i1 %252, label %257, label %.thread

257:                                              ; preds = %213
  %cfg_DestPhi205 = phi i32 [ 848300573, %213 ]
  %258 = phi i32 [ 848300573, %213 ]
  %cfg_DiffPhi206 = phi i32 [ %256, %213 ]
  %259 = phi i32 [ %256, %213 ]
  %icmpEq553 = icmp eq i32 %cfg_DiffPhi206, %259
  %zext554 = zext i1 %icmpEq553 to i32
  call void @assert_ft(i32 %zext554, i32 35)
  %icmpEq551 = icmp eq i32 %cfg_DestPhi205, %258
  %260 = icmp eq i32 %258, %258
  %icmpEq555 = icmp eq i1 %icmpEq551, %260
  %zext556 = zext i1 %icmpEq555 to i32
  call void @assert_ft(i32 %zext556, i32 35)
  %zext552 = zext i1 %icmpEq551 to i32
  call void @assert_ft(i32 %zext552, i32 35)
  %261 = xor i32 %cfg_DestPhi205, %cfg_DiffPhi206
  %cfg_icmpEq207 = icmp eq i32 %261, 899680033
  %262 = icmp eq i32 %261, 899680033
  %icmpEq557 = icmp eq i1 %cfg_icmpEq207, %262
  %zext558 = zext i1 %icmpEq557 to i32
  call void @assert_ft(i32 %zext558, i32 35)
  %cfg_zext208 = zext i1 %cfg_icmpEq207 to i32
  call void @assert_cfg_ft(i32 %cfg_zext208, i32 %261, i32 35)
  %263 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef nonnull %248, ptr noundef %.07494, i64 noundef 16) #15
  %264 = add nsw i32 %.17395, 1
  %265 = add nsw i32 %214, 1
  %icmpEq559 = icmp eq i32 %264, %265
  %zext560 = zext i1 %icmpEq559 to i32
  call void @assert_ft(i32 %zext560, i32 35)
  %266 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %267 = load i8, ptr %96, align 8
  %268 = zext i8 %267 to i32
  %269 = icmp slt i32 %264, %268
  %270 = icmp slt i32 %265, %268
  %icmpEq561 = icmp eq i1 %269, %270
  %zext562 = zext i1 %icmpEq561 to i32
  call void @assert_ft(i32 %zext562, i32 35)
  %271 = select i1 %269, i32 848300573, i32 1002439172
  %272 = xor i32 899680033, %271
  br i1 %269, label %213, label %._crit_edge99

.thread:                                          ; preds = %213
  %cfg_DestPhi209 = phi i32 [ 848300573, %213 ]
  %273 = phi i32 [ 848300573, %213 ]
  %274 = phi i32 [ 848300573, %213 ]
  %cfg_DiffPhi210 = phi i32 [ %256, %213 ]
  %275 = phi i32 [ %256, %213 ]
  %276 = phi i32 [ %256, %213 ]
  %277 = phi i32 [ %256, %213 ]
  %icmpEq579 = icmp eq i32 %276, %277
  %zext580 = zext i1 %icmpEq579 to i32
  call void @assert_ft(i32 %zext580, i32 35)
  %icmpEq577 = icmp eq i32 %cfg_DiffPhi210, %275
  %278 = icmp eq i32 %275, %275
  %icmpEq581 = icmp eq i1 %icmpEq577, %278
  %zext582 = zext i1 %icmpEq581 to i32
  call void @assert_ft(i32 %zext582, i32 35)
  %zext578 = zext i1 %icmpEq577 to i32
  call void @assert_ft(i32 %zext578, i32 35)
  %icmpEq575 = icmp eq i32 %273, %274
  %zext576 = zext i1 %icmpEq575 to i32
  %279 = zext i1 %icmpEq575 to i32
  %icmpEq583 = icmp eq i32 %zext576, %279
  %zext584 = zext i1 %icmpEq583 to i32
  call void @assert_ft(i32 %zext584, i32 35)
  call void @assert_ft(i32 %zext576, i32 35)
  %icmpEq565 = icmp eq i32 %cfg_DiffPhi210, %276
  %zext566 = zext i1 %icmpEq565 to i32
  call void @assert_ft(i32 %zext566, i32 35)
  %icmpEq563 = icmp eq i32 %cfg_DestPhi209, %273
  %280 = icmp eq i32 %273, %274
  %icmpEq585 = icmp eq i1 %icmpEq563, %280
  %zext586 = zext i1 %icmpEq585 to i32
  call void @assert_ft(i32 %zext586, i32 35)
  %281 = icmp eq i32 %cfg_DestPhi209, %273
  %icmpEq567 = icmp eq i1 %icmpEq563, %281
  %zext568 = zext i1 %icmpEq567 to i32
  call void @assert_ft(i32 %zext568, i32 35)
  %zext564 = zext i1 %icmpEq563 to i32
  %282 = zext i1 %280 to i32
  %icmpEq587 = icmp eq i32 %zext564, %282
  %zext588 = zext i1 %icmpEq587 to i32
  call void @assert_ft(i32 %zext588, i32 35)
  call void @assert_ft(i32 %zext564, i32 35)
  %283 = xor i32 %cfg_DestPhi209, %cfg_DiffPhi210
  %cfg_icmpEq211 = icmp eq i32 %283, 951060491
  %284 = icmp eq i32 %283, 951060491
  %285 = icmp eq i32 %283, 951060491
  %icmpEq589 = icmp eq i1 %284, %285
  %zext590 = zext i1 %icmpEq589 to i32
  call void @assert_ft(i32 %zext590, i32 35)
  %icmpEq569 = icmp eq i1 %cfg_icmpEq211, %284
  %zext570 = zext i1 %icmpEq569 to i32
  call void @assert_ft(i32 %zext570, i32 35)
  %cfg_zext212 = zext i1 %cfg_icmpEq211 to i32
  %286 = zext i1 %284 to i32
  %icmpEq591 = icmp eq i32 %cfg_zext212, %286
  %zext592 = zext i1 %icmpEq591 to i32
  call void @assert_ft(i32 %zext592, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext212, i32 %283, i32 35)
  %287 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef nonnull %239, ptr noundef %.07494, i64 noundef 16) #15
  %288 = load ptr, ptr %18, align 8
  %289 = load ptr, ptr %18, align 8
  %290 = load ptr, ptr %18, align 8
  store i64 4294967295, ptr %288, align 8
  %291 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %292 = getelementptr inbounds %struct.ptree_mask, ptr %217, i64 1
  %293 = getelementptr inbounds %struct.ptree_mask, ptr %.07494, i64 1
  %294 = getelementptr inbounds %struct.ptree_mask, ptr %217, i64 1
  %295 = load i8, ptr %96, align 8
  %296 = load i8, ptr %96, align 8
  %icmpEq593 = icmp eq i8 %295, %296
  %zext594 = zext i1 %icmpEq593 to i32
  call void @assert_ft(i32 %zext594, i32 35)
  %297 = load i8, ptr %96, align 8
  %icmpEq571 = icmp eq i8 %295, %297
  %zext572 = zext i1 %icmpEq571 to i32
  call void @assert_ft(i32 %zext572, i32 35)
  %298 = zext i8 %295 to i32
  %299 = zext i8 %296 to i32
  %icmpEq595 = icmp eq i32 %298, %299
  %zext596 = zext i1 %icmpEq595 to i32
  call void @assert_ft(i32 %zext596, i32 35)
  %300 = icmp slt i32 %.17395, %298
  %301 = select i1 %300, i32 796918819, i32 1105199891
  %302 = xor i32 951060491, %301
  %303 = xor i32 951060491, %301
  %304 = xor i32 951060491, %301
  %icmpEq597 = icmp eq i32 %303, %304
  %zext598 = zext i1 %icmpEq597 to i32
  call void @assert_ft(i32 %zext598, i32 35)
  %icmpEq573 = icmp eq i32 %302, %303
  %zext574 = zext i1 %icmpEq573 to i32
  call void @assert_ft(i32 %zext574, i32 35)
  br i1 %300, label %.outer, label %.sink.split

._crit_edge99:                                    ; preds = %257
  %cfg_DestPhi213 = phi i32 [ 899680033, %257 ]
  %305 = phi i32 [ 899680033, %257 ]
  %306 = phi i32 [ 899680033, %257 ]
  %307 = phi i32 [ 899680033, %257 ]
  %308 = phi i32 [ 899680033, %257 ]
  %309 = phi i32 [ 899680033, %257 ]
  %310 = phi i32 [ 899680033, %257 ]
  %cfg_DiffPhi214 = phi i32 [ %272, %257 ]
  %311 = phi i32 [ %272, %257 ]
  %312 = phi i32 [ %272, %257 ]
  %313 = phi i32 [ %272, %257 ]
  %314 = phi i32 [ %272, %257 ]
  %315 = phi i32 [ %272, %257 ]
  %316 = phi i32 [ %272, %257 ]
  %317 = phi i32 [ %272, %257 ]
  %icmpEq647 = icmp eq i32 %316, %317
  %zext648 = zext i1 %icmpEq647 to i32
  call void @assert_ft(i32 %zext648, i32 35)
  %icmpEq645 = icmp eq i32 %314, %315
  %318 = icmp eq i32 %315, %315
  %icmpEq649 = icmp eq i1 %icmpEq645, %318
  %zext650 = zext i1 %icmpEq649 to i32
  call void @assert_ft(i32 %zext650, i32 35)
  %zext646 = zext i1 %icmpEq645 to i32
  call void @assert_ft(i32 %zext646, i32 35)
  %icmpEq643 = icmp eq i32 %312, %313
  %zext644 = zext i1 %icmpEq643 to i32
  %319 = zext i1 %icmpEq643 to i32
  %icmpEq651 = icmp eq i32 %zext644, %319
  %zext652 = zext i1 %icmpEq651 to i32
  call void @assert_ft(i32 %zext652, i32 35)
  call void @assert_ft(i32 %zext644, i32 35)
  %icmpEq641 = icmp eq i32 %cfg_DiffPhi214, %311
  %zext642 = zext i1 %icmpEq641 to i32
  call void @assert_ft(i32 %zext642, i32 35)
  %icmpEq639 = icmp eq i32 %309, %310
  %320 = icmp eq i32 %310, %310
  %icmpEq653 = icmp eq i1 %icmpEq639, %320
  %zext654 = zext i1 %icmpEq653 to i32
  call void @assert_ft(i32 %zext654, i32 35)
  %zext640 = zext i1 %icmpEq639 to i32
  call void @assert_ft(i32 %zext640, i32 35)
  %icmpEq637 = icmp eq i32 %307, %308
  %zext638 = zext i1 %icmpEq637 to i32
  %321 = zext i1 %icmpEq637 to i32
  %icmpEq655 = icmp eq i32 %zext638, %321
  %zext656 = zext i1 %icmpEq655 to i32
  call void @assert_ft(i32 %zext656, i32 35)
  call void @assert_ft(i32 %zext638, i32 35)
  %icmpEq635 = icmp eq i32 %305, %306
  %zext636 = zext i1 %icmpEq635 to i32
  call void @assert_ft(i32 %zext636, i32 35)
  %icmpEq615 = icmp eq i32 %314, %316
  %322 = icmp eq i32 %315, %317
  %icmpEq657 = icmp eq i1 %icmpEq615, %322
  %zext658 = zext i1 %icmpEq657 to i32
  call void @assert_ft(i32 %zext658, i32 35)
  %zext616 = zext i1 %icmpEq615 to i32
  call void @assert_ft(i32 %zext616, i32 35)
  %icmpEq613 = icmp eq i32 %cfg_DiffPhi214, %312
  %323 = icmp eq i32 %311, %313
  %324 = icmp eq i32 %311, %313
  %icmpEq659 = icmp eq i1 %323, %324
  %zext660 = zext i1 %icmpEq659 to i32
  call void @assert_ft(i32 %zext660, i32 35)
  %icmpEq617 = icmp eq i1 %icmpEq613, %323
  %zext618 = zext i1 %icmpEq617 to i32
  call void @assert_ft(i32 %zext618, i32 35)
  %zext614 = zext i1 %icmpEq613 to i32
  %325 = zext i1 %323 to i32
  %icmpEq661 = icmp eq i32 %zext614, %325
  %zext662 = zext i1 %icmpEq661 to i32
  call void @assert_ft(i32 %zext662, i32 35)
  call void @assert_ft(i32 %zext614, i32 35)
  %icmpEq611 = icmp eq i32 %307, %309
  %zext612 = zext i1 %icmpEq611 to i32
  %326 = zext i1 %icmpEq611 to i32
  %327 = zext i1 %icmpEq611 to i32
  %icmpEq663 = icmp eq i32 %326, %327
  %zext664 = zext i1 %icmpEq663 to i32
  call void @assert_ft(i32 %zext664, i32 35)
  %icmpEq619 = icmp eq i32 %zext612, %326
  %zext620 = zext i1 %icmpEq619 to i32
  call void @assert_ft(i32 %zext620, i32 35)
  call void @assert_ft(i32 %zext612, i32 35)
  %icmpEq609 = icmp eq i32 %cfg_DestPhi213, %305
  %328 = icmp eq i32 %305, %306
  %icmpEq665 = icmp eq i1 %icmpEq609, %328
  %zext666 = zext i1 %icmpEq665 to i32
  call void @assert_ft(i32 %zext666, i32 35)
  %zext610 = zext i1 %icmpEq609 to i32
  call void @assert_ft(i32 %zext610, i32 35)
  %icmpEq601 = icmp eq i32 %cfg_DiffPhi214, %314
  %329 = icmp eq i32 %311, %315
  %330 = icmp eq i32 %311, %315
  %icmpEq667 = icmp eq i1 %329, %330
  %zext668 = zext i1 %icmpEq667 to i32
  call void @assert_ft(i32 %zext668, i32 35)
  %icmpEq621 = icmp eq i1 %icmpEq601, %329
  %zext622 = zext i1 %icmpEq621 to i32
  call void @assert_ft(i32 %zext622, i32 35)
  %zext602 = zext i1 %icmpEq601 to i32
  %331 = zext i1 %329 to i32
  %icmpEq669 = icmp eq i32 %zext602, %331
  %zext670 = zext i1 %icmpEq669 to i32
  call void @assert_ft(i32 %zext670, i32 35)
  call void @assert_ft(i32 %zext602, i32 35)
  %icmpEq599 = icmp eq i32 %cfg_DestPhi213, %307
  %332 = icmp eq i32 %305, %308
  %333 = icmp eq i32 %305, %308
  %334 = icmp eq i32 %305, %308
  %icmpEq671 = icmp eq i1 %333, %334
  %zext672 = zext i1 %icmpEq671 to i32
  call void @assert_ft(i32 %zext672, i32 35)
  %icmpEq623 = icmp eq i1 %332, %333
  %zext624 = zext i1 %icmpEq623 to i32
  call void @assert_ft(i32 %zext624, i32 35)
  %icmpEq603 = icmp eq i1 %icmpEq599, %332
  %335 = icmp eq i1 %332, %333
  %icmpEq673 = icmp eq i1 %icmpEq603, %335
  %zext674 = zext i1 %icmpEq673 to i32
  call void @assert_ft(i32 %zext674, i32 35)
  %zext604 = zext i1 %icmpEq603 to i32
  call void @assert_ft(i32 %zext604, i32 35)
  %zext600 = zext i1 %icmpEq599 to i32
  %336 = zext i1 %332 to i32
  %337 = zext i1 %332 to i32
  %icmpEq675 = icmp eq i32 %336, %337
  %zext676 = zext i1 %icmpEq675 to i32
  call void @assert_ft(i32 %zext676, i32 35)
  %icmpEq625 = icmp eq i32 %zext600, %336
  %zext626 = zext i1 %icmpEq625 to i32
  call void @assert_ft(i32 %zext626, i32 35)
  call void @assert_ft(i32 %zext600, i32 35)
  %338 = xor i32 %cfg_DestPhi213, %cfg_DiffPhi214
  %339 = xor i32 %305, %311
  %icmpEq677 = icmp eq i32 %338, %339
  %zext678 = zext i1 %icmpEq677 to i32
  call void @assert_ft(i32 %zext678, i32 35)
  %cfg_icmpEq215 = icmp eq i32 %338, 1002439172
  %340 = icmp eq i32 %339, 1002439172
  %341 = icmp eq i32 %339, 1002439172
  %icmpEq627 = icmp eq i1 %340, %341
  %342 = icmp eq i1 %341, %341
  %icmpEq679 = icmp eq i1 %icmpEq627, %342
  %zext680 = zext i1 %icmpEq679 to i32
  call void @assert_ft(i32 %zext680, i32 35)
  %zext628 = zext i1 %icmpEq627 to i32
  call void @assert_ft(i32 %zext628, i32 35)
  %icmpEq605 = icmp eq i1 %cfg_icmpEq215, %340
  %zext606 = zext i1 %icmpEq605 to i32
  %343 = zext i1 %icmpEq605 to i32
  %icmpEq681 = icmp eq i32 %zext606, %343
  %zext682 = zext i1 %icmpEq681 to i32
  call void @assert_ft(i32 %zext682, i32 35)
  call void @assert_ft(i32 %zext606, i32 35)
  %cfg_zext216 = zext i1 %cfg_icmpEq215 to i32
  %344 = zext i1 %340 to i32
  %icmpEq629 = icmp eq i32 %cfg_zext216, %344
  %345 = icmp eq i32 %344, %344
  %icmpEq683 = icmp eq i1 %icmpEq629, %345
  %zext684 = zext i1 %icmpEq683 to i32
  call void @assert_ft(i32 %zext684, i32 35)
  %zext630 = zext i1 %icmpEq629 to i32
  call void @assert_ft(i32 %zext630, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext216, i32 %338, i32 35)
  %.pre109.pre = load ptr, ptr %18, align 8
  %346 = load ptr, ptr %18, align 8
  %347 = select i1 %.not83, i32 1053820187, i32 1156582428
  %348 = select i1 %204, i32 1053820187, i32 1156582428
  %icmpEq685 = icmp eq i32 %347, %348
  %zext686 = zext i1 %icmpEq685 to i32
  call void @assert_ft(i32 %zext686, i32 35)
  %349 = select i1 %.not83, i32 1053820187, i32 1156582428
  %350 = select i1 %204, i32 1053820187, i32 1156582428
  %icmpEq631 = icmp eq i32 %349, %350
  %zext632 = zext i1 %icmpEq631 to i32
  %351 = zext i1 %icmpEq631 to i32
  %icmpEq687 = icmp eq i32 %zext632, %351
  %zext688 = zext i1 %icmpEq687 to i32
  call void @assert_ft(i32 %zext688, i32 35)
  call void @assert_ft(i32 %zext632, i32 35)
  %icmpEq607 = icmp eq i32 %347, %349
  %zext608 = zext i1 %icmpEq607 to i32
  call void @assert_ft(i32 %zext608, i32 35)
  %352 = xor i32 1002439172, %347
  %353 = xor i32 1002439172, %348
  %icmpEq689 = icmp eq i32 %352, %353
  %zext690 = zext i1 %icmpEq689 to i32
  call void @assert_ft(i32 %zext690, i32 35)
  %354 = xor i32 1002439172, %347
  %icmpEq633 = icmp eq i32 %352, %354
  %zext634 = zext i1 %icmpEq633 to i32
  call void @assert_ft(i32 %zext634, i32 35)
  br i1 %.not83, label %._crit_edge99.thread, label %371

._crit_edge99.thread:                             ; preds = %._crit_edge99, %._crit_edge, %._crit_edge.thread
  %.074.lcssa116 = phi ptr [ %266, %._crit_edge99 ], [ %126, %._crit_edge.thread ], [ %195, %._crit_edge ]
  %355 = phi ptr [ %266, %._crit_edge99 ], [ %126, %._crit_edge.thread ], [ %195, %._crit_edge ]
  %.pre109115 = phi ptr [ %.pre109.pre, %._crit_edge99 ], [ %19, %._crit_edge.thread ], [ %19, %._crit_edge ]
  %356 = phi ptr [ %346, %._crit_edge99 ], [ %20, %._crit_edge.thread ], [ %20, %._crit_edge ]
  %357 = phi ptr [ %195, %._crit_edge99 ], [ %126, %._crit_edge.thread ], [ %195, %._crit_edge ]
  %358 = phi ptr [ %195, %._crit_edge99 ], [ %126, %._crit_edge.thread ], [ %195, %._crit_edge ]
  %cfg_DestPhi217 = phi i32 [ 437257252, %._crit_edge.thread ], [ 694158366, %._crit_edge ], [ 1002439172, %._crit_edge99 ]
  %359 = phi i32 [ 437257252, %._crit_edge.thread ], [ 694158366, %._crit_edge ], [ 1002439172, %._crit_edge99 ]
  %cfg_DiffPhi218 = phi i32 [ 616563007, %._crit_edge.thread ], [ %197, %._crit_edge ], [ %352, %._crit_edge99 ]
  %360 = phi i32 [ 616563007, %._crit_edge.thread ], [ %197, %._crit_edge ], [ %353, %._crit_edge99 ]
  %icmpEq693 = icmp eq i32 %cfg_DiffPhi218, %360
  %zext694 = zext i1 %icmpEq693 to i32
  call void @assert_ft(i32 %zext694, i32 35)
  %icmpEq691 = icmp eq i32 %cfg_DestPhi217, %359
  %361 = icmp eq i32 %359, %359
  %icmpEq695 = icmp eq i1 %icmpEq691, %361
  %zext696 = zext i1 %icmpEq695 to i32
  call void @assert_ft(i32 %zext696, i32 35)
  %zext692 = zext i1 %icmpEq691 to i32
  call void @assert_ft(i32 %zext692, i32 35)
  %362 = xor i32 %cfg_DestPhi217, %cfg_DiffPhi218
  %cfg_icmpEq219 = icmp eq i32 %362, 1053820187
  %363 = icmp eq i32 %362, 1053820187
  %icmpEq697 = icmp eq i1 %cfg_icmpEq219, %363
  %zext698 = zext i1 %icmpEq697 to i32
  call void @assert_ft(i32 %zext698, i32 35)
  %cfg_zext220 = zext i1 %cfg_icmpEq219 to i32
  call void @assert_cfg_ft(i32 %cfg_zext220, i32 %362, i32 35)
  %364 = tail call i32 (ptr, ptr, i64, ...) @bcopy(ptr noundef %.pre109115, ptr noundef %.074.lcssa116, i64 noundef 16) #15
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge99.thread, %.thread
  %.ph = phi ptr [ %357, %._crit_edge99.thread ], [ %195, %.thread ]
  %365 = phi ptr [ %358, %._crit_edge99.thread ], [ %195, %.thread ]
  %cfg_DestPhi221 = phi i32 [ 951060491, %.thread ], [ 1053820187, %._crit_edge99.thread ]
  %366 = phi i32 [ 951060491, %.thread ], [ 1053820187, %._crit_edge99.thread ]
  %cfg_DiffPhi222 = phi i32 [ %302, %.thread ], [ 2133853704, %._crit_edge99.thread ]
  %367 = phi i32 [ %303, %.thread ], [ 2133853704, %._crit_edge99.thread ]
  %icmpEq701 = icmp eq i32 %cfg_DiffPhi222, %367
  %zext702 = zext i1 %icmpEq701 to i32
  call void @assert_ft(i32 %zext702, i32 35)
  %icmpEq699 = icmp eq i32 %cfg_DestPhi221, %366
  %368 = icmp eq i32 %366, %366
  %icmpEq703 = icmp eq i1 %icmpEq699, %368
  %zext704 = zext i1 %icmpEq703 to i32
  call void @assert_ft(i32 %zext704, i32 35)
  %zext700 = zext i1 %icmpEq699 to i32
  call void @assert_ft(i32 %zext700, i32 35)
  %369 = xor i32 %cfg_DestPhi221, %cfg_DiffPhi222
  %cfg_icmpEq223 = icmp eq i32 %369, 1105199891
  %370 = icmp eq i32 %369, 1105199891
  %icmpEq705 = icmp eq i1 %cfg_icmpEq223, %370
  %zext706 = zext i1 %icmpEq705 to i32
  call void @assert_ft(i32 %zext706, i32 35)
  %cfg_zext224 = zext i1 %cfg_icmpEq223 to i32
  call void @assert_cfg_ft(i32 %cfg_zext224, i32 %369, i32 35)
  %.pre109.pre122 = load ptr, ptr %18, align 8
  br label %371

371:                                              ; preds = %.sink.split, %._crit_edge99
  %372 = phi ptr [ %195, %._crit_edge99 ], [ %.ph, %.sink.split ]
  %373 = phi ptr [ %195, %._crit_edge99 ], [ %365, %.sink.split ]
  %374 = phi ptr [ %.pre109.pre, %._crit_edge99 ], [ %.pre109.pre122, %.sink.split ]
  %375 = phi ptr [ %346, %._crit_edge99 ], [ %.pre109.pre122, %.sink.split ]
  %cfg_DestPhi225 = phi i32 [ 1105199891, %.sink.split ], [ 1002439172, %._crit_edge99 ]
  %376 = phi i32 [ 1105199891, %.sink.split ], [ 1002439172, %._crit_edge99 ]
  %cfg_DiffPhi226 = phi i32 [ 84938511, %.sink.split ], [ %352, %._crit_edge99 ]
  %377 = phi i32 [ 84938511, %.sink.split ], [ %353, %._crit_edge99 ]
  %icmpEq709 = icmp eq i32 %cfg_DiffPhi226, %377
  %zext710 = zext i1 %icmpEq709 to i32
  call void @assert_ft(i32 %zext710, i32 35)
  %icmpEq707 = icmp eq i32 %cfg_DestPhi225, %376
  %378 = icmp eq i32 %376, %376
  %icmpEq711 = icmp eq i1 %icmpEq707, %378
  %zext712 = zext i1 %icmpEq711 to i32
  call void @assert_ft(i32 %zext712, i32 35)
  %zext708 = zext i1 %icmpEq707 to i32
  call void @assert_ft(i32 %zext708, i32 35)
  %379 = xor i32 %cfg_DestPhi225, %cfg_DiffPhi226
  %cfg_icmpEq227 = icmp eq i32 %379, 1156582428
  %380 = icmp eq i32 %379, 1156582428
  %icmpEq713 = icmp eq i1 %cfg_icmpEq227, %380
  %zext714 = zext i1 %icmpEq713 to i32
  call void @assert_ft(i32 %zext714, i32 35)
  %cfg_zext228 = zext i1 %cfg_icmpEq227 to i32
  call void @assert_cfg_ft(i32 %cfg_zext228, i32 %379, i32 35)
  tail call void @free(ptr noundef %374) #15
  tail call void @free(ptr noundef nonnull %0) #15
  %381 = load i8, ptr %96, align 8
  %382 = load i8, ptr %96, align 8
  %icmpEq715 = icmp eq i8 %381, %382
  %zext716 = zext i1 %icmpEq715 to i32
  call void @assert_ft(i32 %zext716, i32 35)
  %383 = add i8 %381, 1
  store i8 %383, ptr %96, align 8
  %384 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8
  %386 = load ptr, ptr %384, align 8
  tail call void @free(ptr noundef %385) #15
  store ptr %372, ptr %384, align 8
  br label %442

.preheader84:                                     ; preds = %400, %71
  %.391 = phi i32 [ %406, %400 ], [ 1, %71 ]
  %387 = phi i32 [ %406, %400 ], [ 1, %71 ]
  %cfg_DestPhi229 = phi i32 [ 334496526, %71 ], [ 1259340564, %400 ]
  %388 = phi i32 [ 334496526, %71 ], [ 1259340564, %400 ]
  %cfg_DiffPhi230 = phi i32 [ %81, %71 ], [ %409, %400 ]
  %389 = phi i32 [ %81, %71 ], [ %409, %400 ]
  %icmpEq721 = icmp eq i32 %cfg_DiffPhi230, %389
  %zext722 = zext i1 %icmpEq721 to i32
  call void @assert_ft(i32 %zext722, i32 35)
  %icmpEq719 = icmp eq i32 %cfg_DestPhi229, %388
  %390 = icmp eq i32 %388, %388
  %icmpEq723 = icmp eq i1 %icmpEq719, %390
  %zext724 = zext i1 %icmpEq723 to i32
  call void @assert_ft(i32 %zext724, i32 35)
  %zext720 = zext i1 %icmpEq719 to i32
  call void @assert_ft(i32 %zext720, i32 35)
  %icmpEq717 = icmp eq i32 %.391, %387
  %zext718 = zext i1 %icmpEq717 to i32
  %391 = zext i1 %icmpEq717 to i32
  %icmpEq725 = icmp eq i32 %zext718, %391
  %zext726 = zext i1 %icmpEq725 to i32
  call void @assert_ft(i32 %zext726, i32 35)
  call void @assert_ft(i32 %zext718, i32 35)
  %392 = xor i32 %cfg_DestPhi229, %cfg_DiffPhi230
  %cfg_icmpEq231 = icmp eq i32 %392, 1207960836
  %cfg_zext232 = zext i1 %cfg_icmpEq231 to i32
  %393 = zext i1 %cfg_icmpEq231 to i32
  %icmpEq727 = icmp eq i32 %cfg_zext232, %393
  %zext728 = zext i1 %icmpEq727 to i32
  call void @assert_ft(i32 %zext728, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext232, i32 %392, i32 35)
  %394 = tail call fastcc i64 @bit(i32 noundef %.391, i64 noundef %43)
  %395 = tail call fastcc i64 @bit(i32 noundef %.391, i64 noundef %77)
  %396 = icmp eq i64 %394, %395
  %397 = icmp eq i64 %394, %395
  %icmpEq729 = icmp eq i1 %396, %397
  %zext730 = zext i1 %icmpEq729 to i32
  call void @assert_ft(i32 %zext730, i32 35)
  %398 = select i1 %396, i32 1259340564, i32 1310721281
  %399 = xor i32 1207960836, %398
  br i1 %396, label %400, label %.critedge

400:                                              ; preds = %.preheader84
  %cfg_DestPhi233 = phi i32 [ 1207960836, %.preheader84 ]
  %401 = phi i32 [ 1207960836, %.preheader84 ]
  %cfg_DiffPhi234 = phi i32 [ %399, %.preheader84 ]
  %402 = phi i32 [ %399, %.preheader84 ]
  %icmpEq733 = icmp eq i32 %cfg_DiffPhi234, %402
  %zext734 = zext i1 %icmpEq733 to i32
  call void @assert_ft(i32 %zext734, i32 35)
  %icmpEq731 = icmp eq i32 %cfg_DestPhi233, %401
  %403 = icmp eq i32 %401, %401
  %icmpEq735 = icmp eq i1 %icmpEq731, %403
  %zext736 = zext i1 %icmpEq735 to i32
  call void @assert_ft(i32 %zext736, i32 35)
  %zext732 = zext i1 %icmpEq731 to i32
  call void @assert_ft(i32 %zext732, i32 35)
  %404 = xor i32 %cfg_DestPhi233, %cfg_DiffPhi234
  %cfg_icmpEq235 = icmp eq i32 %404, 1259340564
  %405 = icmp eq i32 %404, 1259340564
  %icmpEq737 = icmp eq i1 %cfg_icmpEq235, %405
  %zext738 = zext i1 %icmpEq737 to i32
  call void @assert_ft(i32 %zext738, i32 35)
  %cfg_zext236 = zext i1 %cfg_icmpEq235 to i32
  call void @assert_cfg_ft(i32 %cfg_zext236, i32 %404, i32 35)
  %406 = add nuw nsw i32 %.391, 1
  %exitcond.not = icmp eq i32 %406, 32
  %407 = icmp eq i32 %406, 32
  %icmpEq739 = icmp eq i1 %exitcond.not, %407
  %zext740 = zext i1 %icmpEq739 to i32
  call void @assert_ft(i32 %zext740, i32 35)
  %408 = select i1 %exitcond.not, i32 1310721281, i32 1207960836
  %409 = xor i32 1259340564, %408
  br i1 %exitcond.not, label %.critedge, label %.preheader84

.critedge:                                        ; preds = %400, %.preheader84
  %.3.lcssa = phi i32 [ 32, %400 ], [ %.391, %.preheader84 ]
  %410 = phi i32 [ 32, %400 ], [ %387, %.preheader84 ]
  %cfg_DestPhi237 = phi i32 [ 1259340564, %400 ], [ 1207960836, %.preheader84 ]
  %411 = phi i32 [ 1259340564, %400 ], [ 1207960836, %.preheader84 ]
  %cfg_DiffPhi238 = phi i32 [ %409, %400 ], [ %399, %.preheader84 ]
  %412 = phi i32 [ %409, %400 ], [ %399, %.preheader84 ]
  %icmpEq745 = icmp eq i32 %cfg_DiffPhi238, %412
  %zext746 = zext i1 %icmpEq745 to i32
  call void @assert_ft(i32 %zext746, i32 35)
  %icmpEq743 = icmp eq i32 %cfg_DestPhi237, %411
  %413 = icmp eq i32 %411, %411
  %icmpEq747 = icmp eq i1 %icmpEq743, %413
  %zext748 = zext i1 %icmpEq747 to i32
  call void @assert_ft(i32 %zext748, i32 35)
  %zext744 = zext i1 %icmpEq743 to i32
  call void @assert_ft(i32 %zext744, i32 35)
  %icmpEq741 = icmp eq i32 %.3.lcssa, %410
  %zext742 = zext i1 %icmpEq741 to i32
  %414 = zext i1 %icmpEq741 to i32
  %icmpEq749 = icmp eq i32 %zext742, %414
  %zext750 = zext i1 %icmpEq749 to i32
  call void @assert_ft(i32 %zext750, i32 35)
  call void @assert_ft(i32 %zext742, i32 35)
  %415 = xor i32 %cfg_DestPhi237, %cfg_DiffPhi238
  %cfg_icmpEq239 = icmp eq i32 %415, 1310721281
  %cfg_zext240 = zext i1 %cfg_icmpEq239 to i32
  %416 = zext i1 %cfg_icmpEq239 to i32
  %icmpEq751 = icmp eq i32 %cfg_zext240, %416
  %zext752 = zext i1 %icmpEq751 to i32
  call void @assert_ft(i32 %zext752, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext240, i32 %415, i32 35)
  %417 = sext i8 %.pre to i32
  %418 = tail call fastcc i64 @bit(i32 noundef %417, i64 noundef %43)
  %.not82 = icmp eq i64 %418, 0
  %419 = icmp eq i64 %418, 0
  %icmpEq753 = icmp eq i1 %.not82, %419
  %zext754 = zext i1 %icmpEq753 to i32
  call void @assert_ft(i32 %zext754, i32 35)
  %420 = select i1 %.not82, i32 1413481763, i32 1362101522
  %421 = xor i32 1310721281, %420
  br i1 %.not82, label %432, label %422

422:                                              ; preds = %.critedge
  %cfg_DestPhi241 = phi i32 [ 1310721281, %.critedge ]
  %423 = phi i32 [ 1310721281, %.critedge ]
  %cfg_DiffPhi242 = phi i32 [ %421, %.critedge ]
  %424 = phi i32 [ %421, %.critedge ]
  %icmpEq757 = icmp eq i32 %cfg_DiffPhi242, %424
  %zext758 = zext i1 %icmpEq757 to i32
  call void @assert_ft(i32 %zext758, i32 35)
  %icmpEq755 = icmp eq i32 %cfg_DestPhi241, %423
  %425 = icmp eq i32 %423, %423
  %icmpEq759 = icmp eq i1 %icmpEq755, %425
  %zext760 = zext i1 %icmpEq759 to i32
  call void @assert_ft(i32 %zext760, i32 35)
  %zext756 = zext i1 %icmpEq755 to i32
  call void @assert_ft(i32 %zext756, i32 35)
  %426 = xor i32 %cfg_DestPhi241, %cfg_DiffPhi242
  %cfg_icmpEq243 = icmp eq i32 %426, 1362101522
  %427 = icmp eq i32 %426, 1362101522
  %icmpEq761 = icmp eq i1 %cfg_icmpEq243, %427
  %zext762 = zext i1 %icmpEq761 to i32
  call void @assert_ft(i32 %zext762, i32 35)
  %cfg_zext244 = zext i1 %cfg_icmpEq243 to i32
  call void @assert_cfg_ft(i32 %cfg_zext244, i32 %426, i32 35)
  %428 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %429 = load ptr, ptr %428, align 8
  %430 = load ptr, ptr %428, align 8
  %431 = tail call fastcc ptr @insertR(ptr noundef %429, ptr noundef nonnull %0, i32 noundef %.3.lcssa, ptr noundef nonnull %1)
  store ptr %431, ptr %428, align 8
  br label %442

432:                                              ; preds = %.critedge
  %cfg_DestPhi245 = phi i32 [ 1310721281, %.critedge ]
  %433 = phi i32 [ 1310721281, %.critedge ]
  %cfg_DiffPhi246 = phi i32 [ %421, %.critedge ]
  %434 = phi i32 [ %421, %.critedge ]
  %icmpEq765 = icmp eq i32 %cfg_DiffPhi246, %434
  %zext766 = zext i1 %icmpEq765 to i32
  call void @assert_ft(i32 %zext766, i32 35)
  %icmpEq763 = icmp eq i32 %cfg_DestPhi245, %433
  %435 = icmp eq i32 %433, %433
  %icmpEq767 = icmp eq i1 %icmpEq763, %435
  %zext768 = zext i1 %icmpEq767 to i32
  call void @assert_ft(i32 %zext768, i32 35)
  %zext764 = zext i1 %icmpEq763 to i32
  call void @assert_ft(i32 %zext764, i32 35)
  %436 = xor i32 %cfg_DestPhi245, %cfg_DiffPhi246
  %cfg_icmpEq247 = icmp eq i32 %436, 1413481763
  %437 = icmp eq i32 %436, 1413481763
  %icmpEq769 = icmp eq i1 %cfg_icmpEq247, %437
  %zext770 = zext i1 %icmpEq769 to i32
  call void @assert_ft(i32 %zext770, i32 35)
  %cfg_zext248 = zext i1 %cfg_icmpEq247 to i32
  call void @assert_cfg_ft(i32 %cfg_zext248, i32 %436, i32 35)
  %438 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %439 = load ptr, ptr %438, align 8
  %440 = load ptr, ptr %438, align 8
  %441 = tail call fastcc ptr @insertR(ptr noundef %439, ptr noundef nonnull %0, i32 noundef %.3.lcssa, ptr noundef nonnull %1)
  store ptr %441, ptr %438, align 8
  br label %442

442:                                              ; preds = %432, %422, %371, %174, %12, %2
  %.075 = phi ptr [ %62, %174 ], [ %62, %371 ], [ null, %12 ], [ null, %2 ], [ %0, %432 ], [ %0, %422 ]
  %443 = phi ptr [ %63, %174 ], [ %63, %371 ], [ null, %12 ], [ null, %2 ], [ %0, %432 ], [ %0, %422 ]
  %cfg_DestPhi249 = phi i32 [ 1362101522, %422 ], [ 1413481763, %432 ], [ 128975893, %2 ], [ 180356101, %12 ], [ 1156582428, %371 ], [ 642779154, %174 ]
  %444 = phi i32 [ 1362101522, %422 ], [ 1413481763, %432 ], [ 128975893, %2 ], [ 180356101, %12 ], [ 1156582428, %371 ], [ 642779154, %174 ]
  %cfg_DiffPhi250 = phi i32 [ 106956564, %422 ], [ 51382053, %432 ], [ %9, %2 ], [ %23, %12 ], [ 329256474, %371 ], [ 1895827988, %174 ]
  %445 = phi i32 [ 106956564, %422 ], [ 51382053, %432 ], [ %10, %2 ], [ %23, %12 ], [ 329256474, %371 ], [ 1895827988, %174 ]
  %icmpEq773 = icmp eq i32 %cfg_DiffPhi250, %445
  %zext774 = zext i1 %icmpEq773 to i32
  call void @assert_ft(i32 %zext774, i32 35)
  %icmpEq771 = icmp eq i32 %cfg_DestPhi249, %444
  %446 = icmp eq i32 %444, %444
  %icmpEq775 = icmp eq i1 %icmpEq771, %446
  %zext776 = zext i1 %icmpEq775 to i32
  call void @assert_ft(i32 %zext776, i32 35)
  %zext772 = zext i1 %icmpEq771 to i32
  call void @assert_ft(i32 %zext772, i32 35)
  %447 = xor i32 %cfg_DestPhi249, %cfg_DiffPhi250
  %cfg_icmpEq251 = icmp eq i32 %447, 1464861190
  %448 = icmp eq i32 %447, 1464861190
  %icmpEq777 = icmp eq i1 %cfg_icmpEq251, %448
  %zext778 = zext i1 %icmpEq777 to i32
  call void @assert_ft(i32 %zext778, i32 35)
  %cfg_zext252 = zext i1 %cfg_icmpEq251 to i32
  call void @assert_cfg_ft(i32 %cfg_zext252, i32 %447, i32 35)
  ret ptr %.075
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @bit(i32 noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = lshr i32 -2147483648, %0
  %4 = lshr i32 -2147483648, %0
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = sext i32 %3 to i64
  %6 = and i64 %5, %1
  ret i64 %6
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @bcopy(...) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %5, align 1
  %9 = load i8, ptr %6, align 1
  %icmpEq59 = icmp eq i8 %8, %9
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %10 = load i8, ptr %5, align 1
  %icmpEq = icmp eq i8 %8, %10
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %11 = sext i8 %8 to i32
  %12 = sext i8 %9 to i32
  %icmpEq61 = icmp eq i32 %11, %12
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %.not = icmp slt i32 %11, %2
  %13 = select i1 %.not, i32 180356101, i32 231738653
  %14 = xor i32 128976145, %13
  %15 = xor i32 128976145, %13
  %16 = xor i32 128976145, %13
  %icmpEq63 = icmp eq i32 %15, %16
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq57 = icmp eq i32 %14, %15
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  br i1 %.not, label %17, label %common.ret

17:                                               ; preds = %4
  %cfg_DestPhi = phi i32 [ 128976145, %4 ]
  %18 = phi i32 [ 128976145, %4 ]
  %cfg_DiffPhi = phi i32 [ %14, %4 ]
  %19 = phi i32 [ %15, %4 ]
  %icmpEq67 = icmp eq i32 %cfg_DiffPhi, %19
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %cfg_DestPhi, %18
  %20 = icmp eq i32 %18, %18
  %icmpEq69 = icmp eq i1 %icmpEq65, %20
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %21 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %21, 180356101
  %22 = icmp eq i32 %21, 180356101
  %icmpEq71 = icmp eq i1 %cfg_icmpEq, %22
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %21, i32 35)
  %23 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = load i8, ptr %23, align 1
  %icmpEq73 = icmp eq i8 %24, %25
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %.not32 = icmp sgt i8 %8, %24
  %26 = select i1 %.not32, i32 283116554, i32 231738653
  %27 = xor i32 180356101, %26
  br i1 %.not32, label %46, label %common.ret

common.ret:                                       ; preds = %17, %4
  %cfg_DestPhi37 = phi i32 [ 180356101, %17 ], [ 128976145, %4 ]
  %28 = phi i32 [ 180356101, %17 ], [ 128976145, %4 ]
  %cfg_DiffPhi38 = phi i32 [ %27, %17 ], [ %14, %4 ]
  %29 = phi i32 [ %27, %17 ], [ %15, %4 ]
  %icmpEq77 = icmp eq i32 %cfg_DiffPhi38, %29
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq75 = icmp eq i32 %cfg_DestPhi37, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq79 = icmp eq i1 %icmpEq75, %30
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  %31 = xor i32 %cfg_DestPhi37, %cfg_DiffPhi38
  %cfg_icmpEq39 = icmp eq i32 %31, 231738653
  %32 = icmp eq i32 %31, 231738653
  %icmpEq81 = icmp eq i1 %cfg_icmpEq39, %32
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %cfg_zext40 = zext i1 %cfg_icmpEq39 to i32
  call void @assert_cfg_ft(i32 %cfg_zext40, i32 %31, i32 35)
  %33 = trunc i32 %2 to i8
  %34 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  store i8 %33, ptr %34, align 1
  %36 = load i64, ptr %1, align 8
  %37 = load i64, ptr %1, align 8
  %icmpEq83 = icmp eq i64 %36, %37
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %38 = tail call fastcc i64 @bit(i32 noundef %2, i64 noundef %36)
  %.not34 = icmp eq i64 %38, 0
  %39 = select i1 %.not34, ptr %1, ptr %0
  %40 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %41 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  store ptr %39, ptr %40, align 8
  %42 = select i1 %.not34, ptr %0, ptr %1
  %43 = select i1 %.not34, ptr %0, ptr %1
  %44 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %45 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  store ptr %42, ptr %44, align 8
  br label %common.ret36

46:                                               ; preds = %17
  %cfg_DestPhi41 = phi i32 [ 180356101, %17 ]
  %47 = phi i32 [ 180356101, %17 ]
  %cfg_DiffPhi42 = phi i32 [ %27, %17 ]
  %48 = phi i32 [ %27, %17 ]
  %icmpEq87 = icmp eq i32 %cfg_DiffPhi42, %48
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %cfg_DestPhi41, %47
  %49 = icmp eq i32 %47, %47
  %icmpEq89 = icmp eq i1 %icmpEq85, %49
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  %50 = xor i32 %cfg_DestPhi41, %cfg_DiffPhi42
  %cfg_icmpEq43 = icmp eq i32 %50, 283116554
  %51 = icmp eq i32 %50, 283116554
  %icmpEq91 = icmp eq i1 %cfg_icmpEq43, %51
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %cfg_zext44 = zext i1 %cfg_icmpEq43 to i32
  call void @assert_cfg_ft(i32 %cfg_zext44, i32 %50, i32 35)
  %52 = load i64, ptr %1, align 8
  %53 = tail call fastcc i64 @bit(i32 noundef %11, i64 noundef %52)
  %.not33 = icmp eq i64 %53, 0
  %54 = icmp eq i64 %53, 0
  %icmpEq93 = icmp eq i1 %.not33, %54
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %55 = select i1 %.not33, i32 437257480, i32 385877276
  %56 = xor i32 283116554, %55
  br i1 %.not33, label %73, label %63

common.ret36:                                     ; preds = %73, %63, %common.ret
  %common.ret36.op = phi ptr [ %1, %common.ret ], [ %0, %63 ], [ %0, %73 ]
  %57 = phi ptr [ %1, %common.ret ], [ %0, %63 ], [ %0, %73 ]
  %cfg_DestPhi45 = phi i32 [ 437257480, %73 ], [ 385877276, %63 ], [ 231738653, %common.ret ]
  %58 = phi i32 [ 437257480, %73 ], [ 385877276, %63 ], [ 231738653, %common.ret ]
  %cfg_DiffPhi46 = phi i32 [ 165676842, %73 ], [ 82839358, %63 ], [ 505417535, %common.ret ]
  %59 = phi i32 [ 165676842, %73 ], [ 82839358, %63 ], [ 505417535, %common.ret ]
  %icmpEq97 = icmp eq i32 %cfg_DiffPhi46, %59
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq95 = icmp eq i32 %cfg_DestPhi45, %58
  %60 = icmp eq i32 %58, %58
  %icmpEq99 = icmp eq i1 %icmpEq95, %60
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %61 = xor i32 %cfg_DestPhi45, %cfg_DiffPhi46
  %cfg_icmpEq47 = icmp eq i32 %61, 334496290
  %62 = icmp eq i32 %61, 334496290
  %icmpEq101 = icmp eq i1 %cfg_icmpEq47, %62
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %cfg_zext48 = zext i1 %cfg_icmpEq47 to i32
  call void @assert_cfg_ft(i32 %cfg_zext48, i32 %61, i32 35)
  ret ptr %common.ret36.op

63:                                               ; preds = %46
  %cfg_DestPhi49 = phi i32 [ 283116554, %46 ]
  %64 = phi i32 [ 283116554, %46 ]
  %cfg_DiffPhi50 = phi i32 [ %56, %46 ]
  %65 = phi i32 [ %56, %46 ]
  %icmpEq105 = icmp eq i32 %cfg_DiffPhi50, %65
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %icmpEq103 = icmp eq i32 %cfg_DestPhi49, %64
  %66 = icmp eq i32 %64, %64
  %icmpEq107 = icmp eq i1 %icmpEq103, %66
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %67 = xor i32 %cfg_DestPhi49, %cfg_DiffPhi50
  %cfg_icmpEq51 = icmp eq i32 %67, 385877276
  %68 = icmp eq i32 %67, 385877276
  %icmpEq109 = icmp eq i1 %cfg_icmpEq51, %68
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  %cfg_zext52 = zext i1 %cfg_icmpEq51 to i32
  call void @assert_cfg_ft(i32 %cfg_zext52, i32 %67, i32 35)
  %69 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %69, align 8
  %72 = tail call fastcc ptr @insertR(ptr noundef %70, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0)
  store ptr %72, ptr %69, align 8
  br label %common.ret36

73:                                               ; preds = %46
  %cfg_DestPhi53 = phi i32 [ 283116554, %46 ]
  %74 = phi i32 [ 283116554, %46 ]
  %cfg_DiffPhi54 = phi i32 [ %56, %46 ]
  %75 = phi i32 [ %56, %46 ]
  %icmpEq113 = icmp eq i32 %cfg_DiffPhi54, %75
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i32 %cfg_DestPhi53, %74
  %76 = icmp eq i32 %74, %74
  %icmpEq115 = icmp eq i1 %icmpEq111, %76
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %77 = xor i32 %cfg_DestPhi53, %cfg_DiffPhi54
  %cfg_icmpEq55 = icmp eq i32 %77, 437257480
  %78 = icmp eq i32 %77, 437257480
  %icmpEq117 = icmp eq i1 %cfg_icmpEq55, %78
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %cfg_zext56 = zext i1 %cfg_icmpEq55 to i32
  call void @assert_cfg_ft(i32 %cfg_zext56, i32 %77, i32 35)
  %79 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %79, align 8
  %82 = tail call fastcc ptr @insertR(ptr noundef %80, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0)
  store ptr %82, ptr %79, align 8
  br label %common.ret36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @pat_remove(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pat_search(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %.not = icmp eq ptr %1, null
  %3 = icmp eq ptr %1, null
  %icmpEq = icmp eq i1 %.not, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %.not, i32 334496290, i32 180355853
  %5 = xor i32 128975389, %4
  br i1 %.not, label %72, label %.preheader.preheader

.preheader.preheader:                             ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %6 = phi i32 [ 128975389, %2 ]
  %7 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %5, %2 ]
  %8 = phi i32 [ %5, %2 ]
  %9 = phi i32 [ %5, %2 ]
  %10 = phi i32 [ %5, %2 ]
  %icmpEq48 = icmp eq i32 %9, %10
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %icmpEq46 = icmp eq i32 %cfg_DiffPhi, %8
  %11 = icmp eq i32 %8, %8
  %icmpEq50 = icmp eq i1 %icmpEq46, %11
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq44 = icmp eq i32 %6, %7
  %zext45 = zext i1 %icmpEq44 to i32
  %12 = zext i1 %icmpEq44 to i32
  %icmpEq52 = icmp eq i32 %zext45, %12
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq36 = icmp eq i32 %cfg_DiffPhi, %9
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %icmpEq34 = icmp eq i32 %cfg_DestPhi, %6
  %13 = icmp eq i32 %6, %7
  %icmpEq54 = icmp eq i1 %icmpEq34, %13
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %14 = icmp eq i32 %cfg_DestPhi, %6
  %icmpEq38 = icmp eq i1 %icmpEq34, %14
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %zext35 = zext i1 %icmpEq34 to i32
  %15 = zext i1 %13 to i32
  %icmpEq56 = icmp eq i32 %zext35, %15
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  call void @assert_ft(i32 %zext35, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180355853
  %17 = icmp eq i32 %16, 180355853
  %18 = icmp eq i32 %16, 180355853
  %icmpEq58 = icmp eq i1 %17, %18
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq40 = icmp eq i1 %cfg_icmpEq, %17
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %19 = zext i1 %17 to i32
  %icmpEq60 = icmp eq i32 %cfg_zext, %19
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %.phi.trans.insert = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %20 = load i8, ptr %.phi.trans.insert, align 1
  %21 = load i8, ptr %.phi.trans.insert, align 1
  %icmpEq62 = icmp eq i8 %20, %21
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq42 = icmp eq i8 %.pre, %20
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %22 = phi i8 [ %51, %.preheader ], [ %.pre, %.preheader.preheader ]
  %23 = phi i8 [ %52, %.preheader ], [ %20, %.preheader.preheader ]
  %.019 = phi ptr [ %spec.select, %.preheader ], [ null, %.preheader.preheader ]
  %24 = phi ptr [ %spec.select, %.preheader ], [ null, %.preheader.preheader ]
  %.018 = phi ptr [ %47, %.preheader ], [ %1, %.preheader.preheader ]
  %25 = phi ptr [ %48, %.preheader ], [ %1, %.preheader.preheader ]
  %cfg_DestPhi22 = phi i32 [ 180355853, %.preheader.preheader ], [ 231740679, %.preheader ]
  %26 = phi i32 [ 180355853, %.preheader.preheader ], [ 231740679, %.preheader ]
  %cfg_DiffPhi23 = phi i32 [ 118494730, %.preheader.preheader ], [ %55, %.preheader ]
  %27 = phi i32 [ 118494730, %.preheader.preheader ], [ %55, %.preheader ]
  %icmpEq68 = icmp eq i32 %cfg_DiffPhi23, %27
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %icmpEq66 = icmp eq i32 %cfg_DestPhi22, %26
  %28 = icmp eq i32 %26, %26
  %icmpEq70 = icmp eq i1 %icmpEq66, %28
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i8 %22, %23
  %zext65 = zext i1 %icmpEq64 to i32
  %29 = zext i1 %icmpEq64 to i32
  %icmpEq72 = icmp eq i32 %zext65, %29
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  call void @assert_ft(i32 %zext65, i32 35)
  %30 = xor i32 %cfg_DestPhi22, %cfg_DiffPhi23
  %cfg_icmpEq24 = icmp eq i32 %30, 231740679
  %cfg_zext25 = zext i1 %cfg_icmpEq24 to i32
  %31 = zext i1 %cfg_icmpEq24 to i32
  %icmpEq74 = icmp eq i32 %cfg_zext25, %31
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext25, i32 %30, i32 35)
  %32 = load i64, ptr %.018, align 8
  %33 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %33, align 8
  %36 = load i64, ptr %34, align 8
  %37 = load i64, ptr %35, align 8
  %icmpEq76 = icmp eq i64 %36, %37
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %38 = and i64 %36, %0
  %39 = icmp eq i64 %32, %38
  %spec.select = select i1 %39, ptr %.018, ptr %.019
  %40 = sext i8 %22 to i32
  %41 = sext i8 %23 to i32
  %icmpEq78 = icmp eq i32 %40, %41
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %42 = tail call fastcc i64 @bit(i32 noundef %40, i64 noundef %0)
  %.not21 = icmp eq i64 %42, 0
  %43 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 5
  %44 = getelementptr inbounds %struct.ptree, ptr %.018, i64 0, i32 4
  %45 = getelementptr inbounds %struct.ptree, ptr %25, i64 0, i32 4
  %.in = select i1 %.not21, ptr %44, ptr %43
  %46 = select i1 %.not21, ptr %45, ptr %43
  %47 = load ptr, ptr %.in, align 8
  %48 = load ptr, ptr %46, align 8
  %49 = getelementptr inbounds %struct.ptree, ptr %47, i64 0, i32 3
  %50 = getelementptr inbounds %struct.ptree, ptr %48, i64 0, i32 3
  %51 = load i8, ptr %49, align 1
  %52 = load i8, ptr %50, align 1
  %icmpEq80 = icmp eq i8 %51, %52
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %53 = icmp slt i8 %22, %51
  %54 = select i1 %53, i32 231740679, i32 283117588
  %55 = xor i32 231740679, %54
  br i1 %53, label %.preheader, label %56

56:                                               ; preds = %.preheader
  %cfg_DestPhi26 = phi i32 [ 231740679, %.preheader ]
  %57 = phi i32 [ 231740679, %.preheader ]
  %cfg_DiffPhi27 = phi i32 [ %55, %.preheader ]
  %58 = phi i32 [ %55, %.preheader ]
  %icmpEq84 = icmp eq i32 %cfg_DiffPhi27, %58
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i32 %cfg_DestPhi26, %57
  %59 = icmp eq i32 %57, %57
  %icmpEq86 = icmp eq i1 %icmpEq82, %59
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %60 = xor i32 %cfg_DestPhi26, %cfg_DiffPhi27
  %cfg_icmpEq28 = icmp eq i32 %60, 283117588
  %61 = icmp eq i32 %60, 283117588
  %icmpEq88 = icmp eq i1 %cfg_icmpEq28, %61
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %cfg_zext29 = zext i1 %cfg_icmpEq28 to i32
  call void @assert_cfg_ft(i32 %cfg_zext29, i32 %60, i32 35)
  %62 = load i64, ptr %47, align 8
  %63 = getelementptr inbounds %struct.ptree, ptr %47, i64 0, i32 1
  %64 = getelementptr inbounds %struct.ptree, ptr %48, i64 0, i32 1
  %65 = load ptr, ptr %63, align 8
  %66 = load ptr, ptr %64, align 8
  %67 = load i64, ptr %65, align 8
  %68 = load i64, ptr %66, align 8
  %icmpEq90 = icmp eq i64 %67, %68
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %69 = and i64 %67, %0
  %70 = icmp eq i64 %62, %69
  %71 = select i1 %70, ptr %47, ptr %spec.select
  br label %72

72:                                               ; preds = %56, %2
  %.0 = phi ptr [ %71, %56 ], [ null, %2 ]
  %73 = phi ptr [ %71, %56 ], [ null, %2 ]
  %cfg_DestPhi30 = phi i32 [ 128975389, %2 ], [ 283117588, %56 ]
  %74 = phi i32 [ 128975389, %2 ], [ 283117588, %56 ]
  %cfg_DiffPhi31 = phi i32 [ %5, %2 ], [ 51382838, %56 ]
  %75 = phi i32 [ %5, %2 ], [ 51382838, %56 ]
  %icmpEq94 = icmp eq i32 %cfg_DiffPhi31, %75
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DestPhi30, %74
  %76 = icmp eq i32 %74, %74
  %icmpEq96 = icmp eq i1 %icmpEq92, %76
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %77 = xor i32 %cfg_DestPhi30, %cfg_DiffPhi31
  %cfg_icmpEq32 = icmp eq i32 %77, 334496290
  %78 = icmp eq i32 %77, 334496290
  %icmpEq98 = icmp eq i1 %cfg_icmpEq32, %78
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %cfg_zext33 = zext i1 %cfg_icmpEq32 to i32
  call void @assert_cfg_ft(i32 %cfg_zext33, i32 %77, i32 35)
  ret ptr %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca float, align 4
  %6 = icmp slt i32 %0, 2
  %7 = icmp slt i32 %0, 2
  %icmpEq = icmp eq i1 %6, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = select i1 %6, i32 180356101, i32 231736590
  %9 = xor i32 128976145, %8
  br i1 %6, label %10, label %18

10:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128976145, %2 ]
  %11 = phi i32 [ 128976145, %2 ]
  %cfg_DiffPhi = phi i32 [ %9, %2 ]
  %12 = phi i32 [ %9, %2 ]
  %icmpEq138 = icmp eq i32 %cfg_DiffPhi, %12
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq136 = icmp eq i32 %cfg_DestPhi, %11
  %13 = icmp eq i32 %11, %11
  %icmpEq140 = icmp eq i1 %icmpEq136, %13
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %14 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %14, 180356101
  %15 = icmp eq i32 %14, 180356101
  %icmpEq142 = icmp eq i1 %cfg_icmpEq, %15
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %14, i32 35)
  %16 = load ptr, ptr %1, align 8
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %16)
  tail call void @exit(i32 noundef -1) #16
  unreachable

18:                                               ; preds = %2
  %cfg_DestPhi48 = phi i32 [ 128976145, %2 ]
  %19 = phi i32 [ 128976145, %2 ]
  %cfg_DiffPhi49 = phi i32 [ %9, %2 ]
  %20 = phi i32 [ %9, %2 ]
  %icmpEq146 = icmp eq i32 %cfg_DiffPhi49, %20
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %icmpEq144 = icmp eq i32 %cfg_DestPhi48, %19
  %21 = icmp eq i32 %19, %19
  %icmpEq148 = icmp eq i1 %icmpEq144, %21
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %22 = xor i32 %cfg_DestPhi48, %cfg_DiffPhi49
  %cfg_icmpEq50 = icmp eq i32 %22, 231736590
  %23 = icmp eq i32 %22, 231736590
  %icmpEq150 = icmp eq i1 %cfg_icmpEq50, %23
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %cfg_zext51 = zext i1 %cfg_icmpEq50 to i32
  call void @assert_cfg_ft(i32 %cfg_zext51, i32 %22, i32 35)
  %24 = getelementptr inbounds ptr, ptr %1, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %24, align 8
  %27 = tail call noalias ptr @fopen(ptr noundef %25, ptr noundef nonnull @.str.1)
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, null
  %icmpEq152 = icmp eq i1 %28, %29
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %30 = select i1 %28, i32 283116554, i32 334496526
  %31 = xor i32 231736590, %30
  br i1 %28, label %32, label %40

32:                                               ; preds = %18
  %cfg_DestPhi52 = phi i32 [ 231736590, %18 ]
  %33 = phi i32 [ 231736590, %18 ]
  %cfg_DiffPhi53 = phi i32 [ %31, %18 ]
  %34 = phi i32 [ %31, %18 ]
  %icmpEq156 = icmp eq i32 %cfg_DiffPhi53, %34
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %icmpEq154 = icmp eq i32 %cfg_DestPhi52, %33
  %35 = icmp eq i32 %33, %33
  %icmpEq158 = icmp eq i1 %icmpEq154, %35
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %36 = xor i32 %cfg_DestPhi52, %cfg_DiffPhi53
  %cfg_icmpEq54 = icmp eq i32 %36, 283116554
  %37 = icmp eq i32 %36, 283116554
  %icmpEq160 = icmp eq i1 %cfg_icmpEq54, %37
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %cfg_zext55 = zext i1 %cfg_icmpEq54 to i32
  call void @assert_cfg_ft(i32 %cfg_zext55, i32 %36, i32 35)
  %38 = load ptr, ptr %24, align 8
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %38)
  tail call void @exit(i32 noundef 1) #16
  unreachable

40:                                               ; preds = %18
  %cfg_DestPhi56 = phi i32 [ 231736590, %18 ]
  %41 = phi i32 [ 231736590, %18 ]
  %cfg_DiffPhi57 = phi i32 [ %31, %18 ]
  %42 = phi i32 [ %31, %18 ]
  %icmpEq164 = icmp eq i32 %cfg_DiffPhi57, %42
  %zext165 = zext i1 %icmpEq164 to i32
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq162 = icmp eq i32 %cfg_DestPhi56, %41
  %43 = icmp eq i32 %41, %41
  %icmpEq166 = icmp eq i1 %icmpEq162, %43
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %44 = xor i32 %cfg_DestPhi56, %cfg_DiffPhi57
  %cfg_icmpEq58 = icmp eq i32 %44, 334496526
  %45 = icmp eq i32 %44, 334496526
  %icmpEq168 = icmp eq i1 %cfg_icmpEq58, %45
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %cfg_zext59 = zext i1 %cfg_icmpEq58 to i32
  call void @assert_cfg_ft(i32 %cfg_zext59, i32 %44, i32 35)
  %46 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %.not = icmp eq ptr %46, null
  %47 = icmp eq ptr %46, null
  %icmpEq170 = icmp eq i1 %.not, %47
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %48 = select i1 %.not, i32 385876738, i32 437257745
  %49 = xor i32 334496526, %48
  br i1 %.not, label %50, label %56

50:                                               ; preds = %40
  %cfg_DestPhi60 = phi i32 [ 334496526, %40 ]
  %51 = phi i32 [ 334496526, %40 ]
  %cfg_DiffPhi61 = phi i32 [ %49, %40 ]
  %52 = phi i32 [ %49, %40 ]
  %icmpEq174 = icmp eq i32 %cfg_DiffPhi61, %52
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %cfg_DestPhi60, %51
  %53 = icmp eq i32 %51, %51
  %icmpEq176 = icmp eq i1 %icmpEq172, %53
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %54 = xor i32 %cfg_DestPhi60, %cfg_DiffPhi61
  %cfg_icmpEq62 = icmp eq i32 %54, 385876738
  %55 = icmp eq i32 %54, 385876738
  %icmpEq178 = icmp eq i1 %cfg_icmpEq62, %55
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %cfg_zext63 = zext i1 %cfg_icmpEq62 to i32
  call void @assert_cfg_ft(i32 %cfg_zext63, i32 %54, i32 35)
  tail call void @perror(ptr noundef nonnull @.str.3) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

56:                                               ; preds = %40
  %cfg_DestPhi64 = phi i32 [ 334496526, %40 ]
  %57 = phi i32 [ 334496526, %40 ]
  %cfg_DiffPhi65 = phi i32 [ %49, %40 ]
  %58 = phi i32 [ %49, %40 ]
  %icmpEq182 = icmp eq i32 %cfg_DiffPhi65, %58
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %icmpEq180 = icmp eq i32 %cfg_DestPhi64, %57
  %59 = icmp eq i32 %57, %57
  %icmpEq184 = icmp eq i1 %icmpEq180, %59
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %60 = xor i32 %cfg_DestPhi64, %cfg_DiffPhi65
  %cfg_icmpEq66 = icmp eq i32 %60, 437257745
  %61 = icmp eq i32 %60, 437257745
  %icmpEq186 = icmp eq i1 %cfg_icmpEq66, %61
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %cfg_zext67 = zext i1 %cfg_icmpEq66 to i32
  call void @assert_cfg_ft(i32 %cfg_zext67, i32 %60, i32 35)
  tail call void @bzero(ptr noundef nonnull %46, i64 noundef 40) #15
  %62 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %63 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 1
  %64 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 1
  store ptr %62, ptr %63, align 8
  %.not41 = icmp eq ptr %62, null
  %65 = icmp eq ptr %62, null
  %icmpEq188 = icmp eq i1 %.not41, %65
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %66 = select i1 %.not41, i32 488637199, i32 540018182
  %67 = xor i32 437257745, %66
  br i1 %.not41, label %68, label %74

68:                                               ; preds = %56
  %cfg_DestPhi68 = phi i32 [ 437257745, %56 ]
  %69 = phi i32 [ 437257745, %56 ]
  %cfg_DiffPhi69 = phi i32 [ %67, %56 ]
  %70 = phi i32 [ %67, %56 ]
  %icmpEq192 = icmp eq i32 %cfg_DiffPhi69, %70
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq190 = icmp eq i32 %cfg_DestPhi68, %69
  %71 = icmp eq i32 %69, %69
  %icmpEq194 = icmp eq i1 %icmpEq190, %71
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %72 = xor i32 %cfg_DestPhi68, %cfg_DiffPhi69
  %cfg_icmpEq70 = icmp eq i32 %72, 488637199
  %73 = icmp eq i32 %72, 488637199
  %icmpEq196 = icmp eq i1 %cfg_icmpEq70, %73
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %cfg_zext71 = zext i1 %cfg_icmpEq70 to i32
  call void @assert_cfg_ft(i32 %cfg_zext71, i32 %72, i32 35)
  tail call void @perror(ptr noundef nonnull @.str.4) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

74:                                               ; preds = %56
  %cfg_DestPhi72 = phi i32 [ 437257745, %56 ]
  %75 = phi i32 [ 437257745, %56 ]
  %cfg_DiffPhi73 = phi i32 [ %67, %56 ]
  %76 = phi i32 [ %67, %56 ]
  %icmpEq200 = icmp eq i32 %cfg_DiffPhi73, %76
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %icmpEq198 = icmp eq i32 %cfg_DestPhi72, %75
  %77 = icmp eq i32 %75, %75
  %icmpEq202 = icmp eq i1 %icmpEq198, %77
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %78 = xor i32 %cfg_DestPhi72, %cfg_DiffPhi73
  %cfg_icmpEq74 = icmp eq i32 %78, 540018182
  %79 = icmp eq i32 %78, 540018182
  %icmpEq204 = icmp eq i1 %cfg_icmpEq74, %79
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  %cfg_zext75 = zext i1 %cfg_icmpEq74 to i32
  call void @assert_cfg_ft(i32 %cfg_zext75, i32 %78, i32 35)
  tail call void @bzero(ptr noundef nonnull %62, i64 noundef 16) #15
  %80 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %81 = getelementptr inbounds %struct.ptree_mask, ptr %62, i64 0, i32 1
  %82 = getelementptr inbounds %struct.ptree_mask, ptr %62, i64 0, i32 1
  store ptr %80, ptr %81, align 8
  %.not42 = icmp eq ptr %80, null
  %83 = icmp eq ptr %80, null
  %icmpEq206 = icmp eq i1 %.not42, %83
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %84 = select i1 %.not42, i32 591397660, i32 642779154
  %85 = xor i32 540018182, %84
  br i1 %.not42, label %86, label %92

86:                                               ; preds = %74
  %cfg_DestPhi76 = phi i32 [ 540018182, %74 ]
  %87 = phi i32 [ 540018182, %74 ]
  %cfg_DiffPhi77 = phi i32 [ %85, %74 ]
  %88 = phi i32 [ %85, %74 ]
  %icmpEq210 = icmp eq i32 %cfg_DiffPhi77, %88
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %icmpEq208 = icmp eq i32 %cfg_DestPhi76, %87
  %89 = icmp eq i32 %87, %87
  %icmpEq212 = icmp eq i1 %icmpEq208, %89
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %90 = xor i32 %cfg_DestPhi76, %cfg_DiffPhi77
  %cfg_icmpEq78 = icmp eq i32 %90, 591397660
  %91 = icmp eq i32 %90, 591397660
  %icmpEq214 = icmp eq i1 %cfg_icmpEq78, %91
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %cfg_zext79 = zext i1 %cfg_icmpEq78 to i32
  call void @assert_cfg_ft(i32 %cfg_zext79, i32 %90, i32 35)
  tail call void @perror(ptr noundef nonnull @.str.5) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

92:                                               ; preds = %74
  %cfg_DestPhi80 = phi i32 [ 540018182, %74 ]
  %93 = phi i32 [ 540018182, %74 ]
  %cfg_DiffPhi81 = phi i32 [ %85, %74 ]
  %94 = phi i32 [ %85, %74 ]
  %icmpEq218 = icmp eq i32 %cfg_DiffPhi81, %94
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %icmpEq216 = icmp eq i32 %cfg_DestPhi80, %93
  %95 = icmp eq i32 %93, %93
  %icmpEq220 = icmp eq i1 %icmpEq216, %95
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %96 = xor i32 %cfg_DestPhi80, %cfg_DiffPhi81
  %cfg_icmpEq82 = icmp eq i32 %96, 642779154
  %97 = icmp eq i32 %96, 642779154
  %icmpEq222 = icmp eq i1 %cfg_icmpEq82, %97
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %cfg_zext83 = zext i1 %cfg_icmpEq82 to i32
  call void @assert_cfg_ft(i32 %cfg_zext83, i32 %96, i32 35)
  tail call void @bzero(ptr noundef nonnull %80, i64 noundef 1) #15
  %98 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 2
  %99 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 2
  store i8 1, ptr %98, align 8
  %100 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 5
  %101 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 5
  store ptr %46, ptr %100, align 8
  %102 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 4
  %103 = getelementptr inbounds %struct.ptree, ptr %46, i64 0, i32 4
  store ptr %46, ptr %102, align 8
  br label %104

104:                                              ; preds = %202, %92
  %cfg_DestPhi84 = phi i32 [ 1207960352, %202 ], [ 642779154, %92 ]
  %105 = phi i32 [ 1207960352, %202 ], [ 642779154, %92 ]
  %cfg_DiffPhi85 = phi i32 [ %257, %202 ], [ 254806806, %92 ]
  %106 = phi i32 [ %257, %202 ], [ 254806806, %92 ]
  %icmpEq226 = icmp eq i32 %cfg_DiffPhi85, %106
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %icmpEq224 = icmp eq i32 %cfg_DestPhi84, %105
  %107 = icmp eq i32 %105, %105
  %icmpEq228 = icmp eq i1 %icmpEq224, %107
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %108 = xor i32 %cfg_DestPhi84, %cfg_DiffPhi85
  %cfg_icmpEq86 = icmp eq i32 %108, 694158084
  %109 = icmp eq i32 %108, 694158084
  %icmpEq230 = icmp eq i1 %cfg_icmpEq86, %109
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %cfg_zext87 = zext i1 %cfg_icmpEq86 to i32
  call void @assert_cfg_ft(i32 %cfg_zext87, i32 %108, i32 35)
  %110 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull %27)
  %.not43 = icmp eq ptr %110, null
  %111 = icmp eq ptr %110, null
  %icmpEq232 = icmp eq i1 %.not43, %111
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %112 = select i1 %.not43, i32 1310720542, i32 745538574
  %113 = xor i32 694158084, %112
  br i1 %.not43, label %268, label %114

114:                                              ; preds = %104
  %cfg_DestPhi88 = phi i32 [ 694158084, %104 ]
  %115 = phi i32 [ 694158084, %104 ]
  %cfg_DiffPhi89 = phi i32 [ %113, %104 ]
  %116 = phi i32 [ %113, %104 ]
  %icmpEq236 = icmp eq i32 %cfg_DiffPhi89, %116
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %icmpEq234 = icmp eq i32 %cfg_DestPhi88, %115
  %117 = icmp eq i32 %115, %115
  %icmpEq238 = icmp eq i1 %icmpEq234, %117
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %118 = xor i32 %cfg_DestPhi88, %cfg_DiffPhi89
  %cfg_icmpEq90 = icmp eq i32 %118, 745538574
  %119 = icmp eq i32 %118, 745538574
  %icmpEq240 = icmp eq i1 %cfg_icmpEq90, %119
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %cfg_zext91 = zext i1 %cfg_icmpEq90 to i32
  call void @assert_cfg_ft(i32 %cfg_zext91, i32 %118, i32 35)
  %120 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %121 = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #14
  %.not44 = icmp eq ptr %121, null
  %122 = icmp eq ptr %121, null
  %icmpEq242 = icmp eq i1 %.not44, %122
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %123 = select i1 %.not44, i32 796918545, i32 848299530
  %124 = xor i32 745538574, %123
  br i1 %.not44, label %125, label %131

125:                                              ; preds = %114
  %cfg_DestPhi92 = phi i32 [ 745538574, %114 ]
  %126 = phi i32 [ 745538574, %114 ]
  %cfg_DiffPhi93 = phi i32 [ %124, %114 ]
  %127 = phi i32 [ %124, %114 ]
  %icmpEq246 = icmp eq i32 %cfg_DiffPhi93, %127
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq244 = icmp eq i32 %cfg_DestPhi92, %126
  %128 = icmp eq i32 %126, %126
  %icmpEq248 = icmp eq i1 %icmpEq244, %128
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %129 = xor i32 %cfg_DestPhi92, %cfg_DiffPhi93
  %cfg_icmpEq94 = icmp eq i32 %129, 796918545
  %130 = icmp eq i32 %129, 796918545
  %icmpEq250 = icmp eq i1 %cfg_icmpEq94, %130
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %cfg_zext95 = zext i1 %cfg_icmpEq94 to i32
  call void @assert_cfg_ft(i32 %cfg_zext95, i32 %129, i32 35)
  call void @perror(ptr noundef nonnull @.str.3) #17
  call void @exit(i32 noundef 1) #16
  unreachable

131:                                              ; preds = %114
  %cfg_DestPhi96 = phi i32 [ 745538574, %114 ]
  %132 = phi i32 [ 745538574, %114 ]
  %cfg_DiffPhi97 = phi i32 [ %124, %114 ]
  %133 = phi i32 [ %124, %114 ]
  %icmpEq254 = icmp eq i32 %cfg_DiffPhi97, %133
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %icmpEq252 = icmp eq i32 %cfg_DestPhi96, %132
  %134 = icmp eq i32 %132, %132
  %icmpEq256 = icmp eq i1 %icmpEq252, %134
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  %135 = xor i32 %cfg_DestPhi96, %cfg_DiffPhi97
  %cfg_icmpEq98 = icmp eq i32 %135, 848299530
  %136 = icmp eq i32 %135, 848299530
  %icmpEq258 = icmp eq i1 %cfg_icmpEq98, %136
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %cfg_zext99 = zext i1 %cfg_icmpEq98 to i32
  call void @assert_cfg_ft(i32 %cfg_zext99, i32 %135, i32 35)
  call void @bzero(ptr noundef nonnull %121, i64 noundef 40) #15
  %137 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %138 = getelementptr inbounds %struct.ptree, ptr %121, i64 0, i32 1
  %139 = getelementptr inbounds %struct.ptree, ptr %121, i64 0, i32 1
  store ptr %137, ptr %138, align 8
  %.not45 = icmp eq ptr %137, null
  %140 = icmp eq ptr %137, null
  %icmpEq260 = icmp eq i1 %.not45, %140
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %141 = select i1 %.not45, i32 899679006, i32 951060004
  %142 = xor i32 848299530, %141
  br i1 %.not45, label %143, label %149

143:                                              ; preds = %131
  %cfg_DestPhi100 = phi i32 [ 848299530, %131 ]
  %144 = phi i32 [ 848299530, %131 ]
  %cfg_DiffPhi101 = phi i32 [ %142, %131 ]
  %145 = phi i32 [ %142, %131 ]
  %icmpEq264 = icmp eq i32 %cfg_DiffPhi101, %145
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq262 = icmp eq i32 %cfg_DestPhi100, %144
  %146 = icmp eq i32 %144, %144
  %icmpEq266 = icmp eq i1 %icmpEq262, %146
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %147 = xor i32 %cfg_DestPhi100, %cfg_DiffPhi101
  %cfg_icmpEq102 = icmp eq i32 %147, 899679006
  %148 = icmp eq i32 %147, 899679006
  %icmpEq268 = icmp eq i1 %cfg_icmpEq102, %148
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %cfg_zext103 = zext i1 %cfg_icmpEq102 to i32
  call void @assert_cfg_ft(i32 %cfg_zext103, i32 %147, i32 35)
  call void @perror(ptr noundef nonnull @.str.4) #17
  call void @exit(i32 noundef 1) #16
  unreachable

149:                                              ; preds = %131
  %cfg_DestPhi104 = phi i32 [ 848299530, %131 ]
  %150 = phi i32 [ 848299530, %131 ]
  %cfg_DiffPhi105 = phi i32 [ %142, %131 ]
  %151 = phi i32 [ %142, %131 ]
  %icmpEq272 = icmp eq i32 %cfg_DiffPhi105, %151
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %icmpEq270 = icmp eq i32 %cfg_DestPhi104, %150
  %152 = icmp eq i32 %150, %150
  %icmpEq274 = icmp eq i1 %icmpEq270, %152
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %153 = xor i32 %cfg_DestPhi104, %cfg_DiffPhi105
  %cfg_icmpEq106 = icmp eq i32 %153, 951060004
  %154 = icmp eq i32 %153, 951060004
  %icmpEq276 = icmp eq i1 %cfg_icmpEq106, %154
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %cfg_zext107 = zext i1 %cfg_icmpEq106 to i32
  call void @assert_cfg_ft(i32 %cfg_zext107, i32 %153, i32 35)
  call void @bzero(ptr noundef nonnull %137, i64 noundef 16) #15
  %155 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %156 = getelementptr inbounds %struct.ptree_mask, ptr %137, i64 0, i32 1
  %157 = getelementptr inbounds %struct.ptree_mask, ptr %137, i64 0, i32 1
  store ptr %155, ptr %156, align 8
  %.not46 = icmp eq ptr %155, null
  %158 = icmp eq ptr %155, null
  %icmpEq278 = icmp eq i1 %.not46, %158
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  %159 = select i1 %.not46, i32 1002439430, i32 1053821711
  %160 = xor i32 951060004, %159
  br i1 %.not46, label %161, label %167

161:                                              ; preds = %149
  %cfg_DestPhi108 = phi i32 [ 951060004, %149 ]
  %162 = phi i32 [ 951060004, %149 ]
  %cfg_DiffPhi109 = phi i32 [ %160, %149 ]
  %163 = phi i32 [ %160, %149 ]
  %icmpEq282 = icmp eq i32 %cfg_DiffPhi109, %163
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %icmpEq280 = icmp eq i32 %cfg_DestPhi108, %162
  %164 = icmp eq i32 %162, %162
  %icmpEq284 = icmp eq i1 %icmpEq280, %164
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %165 = xor i32 %cfg_DestPhi108, %cfg_DiffPhi109
  %cfg_icmpEq110 = icmp eq i32 %165, 1002439430
  %166 = icmp eq i32 %165, 1002439430
  %icmpEq286 = icmp eq i1 %cfg_icmpEq110, %166
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %cfg_zext111 = zext i1 %cfg_icmpEq110 to i32
  call void @assert_cfg_ft(i32 %cfg_zext111, i32 %165, i32 35)
  call void @perror(ptr noundef nonnull @.str.5) #17
  call void @exit(i32 noundef 1) #16
  unreachable

167:                                              ; preds = %149
  %cfg_DestPhi112 = phi i32 [ 951060004, %149 ]
  %168 = phi i32 [ 951060004, %149 ]
  %cfg_DiffPhi113 = phi i32 [ %160, %149 ]
  %169 = phi i32 [ %160, %149 ]
  %icmpEq290 = icmp eq i32 %cfg_DiffPhi113, %169
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %icmpEq288 = icmp eq i32 %cfg_DestPhi112, %168
  %170 = icmp eq i32 %168, %168
  %icmpEq292 = icmp eq i1 %icmpEq288, %170
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %171 = xor i32 %cfg_DestPhi112, %cfg_DiffPhi113
  %cfg_icmpEq114 = icmp eq i32 %171, 1053821711
  %172 = icmp eq i32 %171, 1053821711
  %icmpEq294 = icmp eq i1 %cfg_icmpEq114, %172
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %cfg_zext115 = zext i1 %cfg_icmpEq114 to i32
  call void @assert_cfg_ft(i32 %cfg_zext115, i32 %171, i32 35)
  call void @bzero(ptr noundef nonnull %155, i64 noundef 1) #15
  %173 = load i32, ptr %4, align 4
  %174 = load i32, ptr %4, align 4
  %icmpEq296 = icmp eq i32 %173, %174
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  %175 = zext i32 %173 to i64
  store i64 %175, ptr %121, align 8
  %176 = call i32 @htonl(i32 noundef -1) #18
  %177 = zext i32 %176 to i64
  %178 = zext i32 %176 to i64
  %icmpEq298 = icmp eq i64 %177, %178
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  store i64 %177, ptr %137, align 8
  %179 = call ptr @pat_search(i64 noundef %175, ptr noundef nonnull %46)
  %180 = load i64, ptr %179, align 8
  %181 = icmp eq i64 %180, %175
  %182 = icmp eq i64 %180, %175
  %icmpEq300 = icmp eq i1 %181, %182
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %183 = select i1 %181, i32 1105200391, i32 1156579857
  %184 = xor i32 1053821711, %183
  br i1 %181, label %185, label %195

185:                                              ; preds = %167
  %cfg_DestPhi116 = phi i32 [ 1053821711, %167 ]
  %186 = phi i32 [ 1053821711, %167 ]
  %cfg_DiffPhi117 = phi i32 [ %184, %167 ]
  %187 = phi i32 [ %184, %167 ]
  %icmpEq304 = icmp eq i32 %cfg_DiffPhi117, %187
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %icmpEq302 = icmp eq i32 %cfg_DestPhi116, %186
  %188 = icmp eq i32 %186, %186
  %icmpEq306 = icmp eq i1 %icmpEq302, %188
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %189 = xor i32 %cfg_DestPhi116, %cfg_DiffPhi117
  %cfg_icmpEq118 = icmp eq i32 %189, 1105200391
  %190 = icmp eq i32 %189, 1105200391
  %icmpEq308 = icmp eq i1 %cfg_icmpEq118, %190
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %cfg_zext119 = zext i1 %cfg_icmpEq118 to i32
  call void @assert_cfg_ft(i32 %cfg_zext119, i32 %189, i32 35)
  %191 = load float, ptr %5, align 4
  %192 = fpext float %191 to double
  %193 = fpext float %191 to double
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %192, i32 noundef %173)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %202

195:                                              ; preds = %167
  %cfg_DestPhi120 = phi i32 [ 1053821711, %167 ]
  %196 = phi i32 [ 1053821711, %167 ]
  %cfg_DiffPhi121 = phi i32 [ %184, %167 ]
  %197 = phi i32 [ %184, %167 ]
  %icmpEq312 = icmp eq i32 %cfg_DiffPhi121, %197
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %icmpEq310 = icmp eq i32 %cfg_DestPhi120, %196
  %198 = icmp eq i32 %196, %196
  %icmpEq314 = icmp eq i1 %icmpEq310, %198
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %199 = xor i32 %cfg_DestPhi120, %cfg_DiffPhi121
  %cfg_icmpEq122 = icmp eq i32 %199, 1156579857
  %200 = icmp eq i32 %199, 1156579857
  %icmpEq316 = icmp eq i1 %cfg_icmpEq122, %200
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %cfg_zext123 = zext i1 %cfg_icmpEq122 to i32
  call void @assert_cfg_ft(i32 %cfg_zext123, i32 %199, i32 35)
  %201 = call ptr @pat_insert(ptr noundef nonnull %121, ptr noundef nonnull %46)
  br label %202

202:                                              ; preds = %195, %185
  %.0 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %203 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %204 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %205 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %206 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %207 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %208 = phi ptr [ %121, %185 ], [ %201, %195 ]
  %cfg_DestPhi124 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %209 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %210 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %211 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %212 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %213 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %214 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %215 = phi i32 [ 1156579857, %195 ], [ 1105200391, %185 ]
  %cfg_DiffPhi125 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %216 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %217 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %218 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %219 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %220 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %221 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %222 = phi i32 [ 217055537, %195 ], [ 165676583, %185 ]
  %icmpEq368 = icmp eq i32 %221, %222
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %icmpEq366 = icmp eq i32 %219, %220
  %223 = icmp eq i32 %220, %220
  %icmpEq370 = icmp eq i1 %icmpEq366, %223
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  %icmpEq364 = icmp eq i32 %217, %218
  %zext365 = zext i1 %icmpEq364 to i32
  %224 = zext i1 %icmpEq364 to i32
  %icmpEq372 = icmp eq i32 %zext365, %224
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  call void @assert_ft(i32 %zext365, i32 35)
  %icmpEq362 = icmp eq i32 %cfg_DiffPhi125, %216
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  %icmpEq360 = icmp eq i32 %214, %215
  %225 = icmp eq i32 %215, %215
  %icmpEq374 = icmp eq i1 %icmpEq360, %225
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %icmpEq358 = icmp eq i32 %212, %213
  %zext359 = zext i1 %icmpEq358 to i32
  %226 = zext i1 %icmpEq358 to i32
  %icmpEq376 = icmp eq i32 %zext359, %226
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  call void @assert_ft(i32 %zext359, i32 35)
  %icmpEq356 = icmp eq i32 %210, %211
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  %icmpEq354 = icmp eq i32 %cfg_DestPhi124, %209
  %227 = icmp eq i32 %209, %209
  %icmpEq378 = icmp eq i1 %icmpEq354, %227
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %icmpEq334 = icmp eq i32 %219, %221
  %zext335 = zext i1 %icmpEq334 to i32
  %228 = zext i1 %icmpEq334 to i32
  %icmpEq380 = icmp eq i32 %zext335, %228
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  call void @assert_ft(i32 %zext335, i32 35)
  %icmpEq332 = icmp eq i32 %cfg_DiffPhi125, %217
  %229 = icmp eq i32 %216, %218
  %icmpEq336 = icmp eq i1 %icmpEq332, %229
  %230 = icmp eq i1 %229, %229
  %icmpEq382 = icmp eq i1 %icmpEq336, %230
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %icmpEq330 = icmp eq i32 %212, %214
  %231 = icmp eq i32 %213, %215
  %icmpEq384 = icmp eq i1 %icmpEq330, %231
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %zext331 = zext i1 %icmpEq330 to i32
  %232 = zext i1 %231 to i32
  %icmpEq338 = icmp eq i32 %zext331, %232
  %zext339 = zext i1 %icmpEq338 to i32
  %233 = zext i1 %icmpEq338 to i32
  %icmpEq386 = icmp eq i32 %zext339, %233
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  call void @assert_ft(i32 %zext339, i32 35)
  call void @assert_ft(i32 %zext331, i32 35)
  %icmpEq328 = icmp eq i32 %cfg_DestPhi124, %210
  %zext329 = zext i1 %icmpEq328 to i32
  %234 = zext i1 %icmpEq328 to i32
  %icmpEq388 = icmp eq i32 %zext329, %234
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  call void @assert_ft(i32 %zext329, i32 35)
  %icmpEq320 = icmp eq i32 %cfg_DiffPhi125, %219
  %235 = icmp eq i32 %216, %220
  %icmpEq340 = icmp eq i1 %icmpEq320, %235
  %236 = icmp eq i1 %235, %235
  %icmpEq390 = icmp eq i1 %icmpEq340, %236
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq318 = icmp eq i32 %cfg_DestPhi124, %212
  %237 = icmp eq i32 %209, %213
  %icmpEq392 = icmp eq i1 %icmpEq318, %237
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  %238 = icmp eq i32 %cfg_DestPhi124, %212
  %239 = icmp eq i32 %209, %213
  %icmpEq342 = icmp eq i1 %238, %239
  %zext343 = zext i1 %icmpEq342 to i32
  %240 = zext i1 %icmpEq342 to i32
  %icmpEq394 = icmp eq i32 %zext343, %240
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  call void @assert_ft(i32 %zext343, i32 35)
  %icmpEq322 = icmp eq i1 %icmpEq318, %238
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %zext319 = zext i1 %icmpEq318 to i32
  %241 = zext i1 %237 to i32
  %icmpEq396 = icmp eq i32 %zext319, %241
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %242 = zext i1 %icmpEq318 to i32
  %icmpEq344 = icmp eq i32 %zext319, %242
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  call void @assert_ft(i32 %zext319, i32 35)
  %243 = xor i32 %cfg_DestPhi124, %cfg_DiffPhi125
  %244 = xor i32 %209, %216
  %icmpEq398 = icmp eq i32 %243, %244
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %cfg_icmpEq126 = icmp eq i32 %243, 1207960352
  %245 = icmp eq i32 %244, 1207960352
  %246 = icmp eq i32 %244, 1207960352
  %icmpEq346 = icmp eq i1 %245, %246
  %247 = icmp eq i1 %246, %246
  %icmpEq400 = icmp eq i1 %icmpEq346, %247
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  %icmpEq324 = icmp eq i1 %cfg_icmpEq126, %245
  %zext325 = zext i1 %icmpEq324 to i32
  %248 = zext i1 %icmpEq324 to i32
  %icmpEq402 = icmp eq i32 %zext325, %248
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  call void @assert_ft(i32 %zext325, i32 35)
  %cfg_zext127 = zext i1 %cfg_icmpEq126 to i32
  %249 = zext i1 %245 to i32
  %icmpEq348 = icmp eq i32 %cfg_zext127, %249
  %250 = icmp eq i32 %249, %249
  %icmpEq404 = icmp eq i1 %icmpEq348, %250
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext127, i32 %243, i32 35)
  %.not47 = icmp eq ptr %.0, null
  %251 = icmp eq ptr %203, null
  %icmpEq406 = icmp eq i1 %.not47, %251
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  %252 = select i1 %.not47, i32 1259340802, i32 694158084
  %253 = select i1 %251, i32 1259340802, i32 694158084
  %254 = select i1 %251, i32 1259340802, i32 694158084
  %icmpEq350 = icmp eq i32 %253, %254
  %255 = icmp eq i32 %254, %254
  %icmpEq408 = icmp eq i1 %icmpEq350, %255
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  %icmpEq326 = icmp eq i32 %252, %253
  %zext327 = zext i1 %icmpEq326 to i32
  %256 = zext i1 %icmpEq326 to i32
  %icmpEq410 = icmp eq i32 %zext327, %256
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  call void @assert_ft(i32 %zext327, i32 35)
  %257 = xor i32 1207960352, %252
  %258 = xor i32 1207960352, %253
  %icmpEq352 = icmp eq i32 %257, %258
  %259 = icmp eq i32 %258, %258
  %icmpEq412 = icmp eq i1 %icmpEq352, %259
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  br i1 %.not47, label %260, label %104

260:                                              ; preds = %202
  %cfg_DestPhi128 = phi i32 [ 1207960352, %202 ]
  %261 = phi i32 [ 1207960352, %202 ]
  %cfg_DiffPhi129 = phi i32 [ %257, %202 ]
  %262 = phi i32 [ %258, %202 ]
  %icmpEq416 = icmp eq i32 %cfg_DiffPhi129, %262
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %icmpEq414 = icmp eq i32 %cfg_DestPhi128, %261
  %263 = icmp eq i32 %261, %261
  %icmpEq418 = icmp eq i1 %icmpEq414, %263
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  %264 = xor i32 %cfg_DestPhi128, %cfg_DiffPhi129
  %cfg_icmpEq130 = icmp eq i32 %264, 1259340802
  %265 = icmp eq i32 %264, 1259340802
  %icmpEq420 = icmp eq i1 %cfg_icmpEq130, %265
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  %cfg_zext131 = zext i1 %cfg_icmpEq130 to i32
  call void @assert_cfg_ft(i32 %cfg_zext131, i32 %264, i32 35)
  %266 = load ptr, ptr @stderr, align 8
  %267 = call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr %266) #17
  call void @exit(i32 noundef 1) #16
  unreachable

268:                                              ; preds = %104
  %cfg_DestPhi132 = phi i32 [ 694158084, %104 ]
  %269 = phi i32 [ 694158084, %104 ]
  %cfg_DiffPhi133 = phi i32 [ %113, %104 ]
  %270 = phi i32 [ %113, %104 ]
  %icmpEq424 = icmp eq i32 %cfg_DiffPhi133, %270
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  %icmpEq422 = icmp eq i32 %cfg_DestPhi132, %269
  %271 = icmp eq i32 %269, %269
  %icmpEq426 = icmp eq i1 %icmpEq422, %271
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %272 = xor i32 %cfg_DestPhi132, %cfg_DiffPhi133
  %cfg_icmpEq134 = icmp eq i32 %272, 1310720542
  %273 = icmp eq i32 %272, 1310720542
  %icmpEq428 = icmp eq i1 %cfg_icmpEq134, %273
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %cfg_zext135 = zext i1 %cfg_icmpEq134 to i32
  call void @assert_cfg_ft(i32 %cfg_zext135, i32 %272, i32 35)
  call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare void @bzero(ptr nocapture noundef writeonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

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

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
