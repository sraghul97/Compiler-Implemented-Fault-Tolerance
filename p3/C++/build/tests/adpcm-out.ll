; ModuleID = 'adpcm-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@abuf = dso_local global [500 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@sbuf = dso_local global [1000 x i16] zeroinitializer, align 16
@state = dso_local global %struct.adpcm_state zeroinitializer, align 2
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_coder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2
  %6 = load i16, ptr %3, align 2
  %icmpEq137 = icmp eq i16 %5, %6
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %7 = load i16, ptr %3, align 2
  %icmpEq = icmp eq i16 %5, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %10 = load i8, ptr %8, align 2
  %11 = load i8, ptr %9, align 2
  %icmpEq139 = icmp eq i8 %10, %11
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %12 = icmp sgt i32 %2, 0
  %13 = select i1 %12, i32 180356634, i32 540017925
  %14 = select i1 %12, i32 180356634, i32 540017925
  %icmpEq135 = icmp eq i32 %13, %14
  %15 = icmp eq i32 %14, %14
  %icmpEq141 = icmp eq i1 %icmpEq135, %15
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %16 = xor i32 128976145, %13
  br i1 %12, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %4
  %cfg_DestPhi = phi i32 [ 128976145, %4 ]
  %17 = phi i32 [ 128976145, %4 ]
  %cfg_DiffPhi = phi i32 [ %16, %4 ]
  %18 = phi i32 [ %16, %4 ]
  %icmpEq145 = icmp eq i32 %cfg_DiffPhi, %18
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %cfg_DestPhi, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq147 = icmp eq i1 %icmpEq143, %19
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %20 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %20, 180356634
  %21 = icmp eq i32 %20, 180356634
  %icmpEq149 = icmp eq i1 %cfg_icmpEq, %21
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %20, i32 35)
  %22 = sext i8 %10 to i32
  %23 = sext i16 %5 to i32
  %24 = sext i16 %6 to i32
  %icmpEq151 = icmp eq i32 %23, %24
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %25 = sext i8 %10 to i64
  %26 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %176, %.lr.ph.preheader
  %.095 = phi i32 [ %185, %176 ], [ 1, %.lr.ph.preheader ]
  %28 = phi i32 [ %185, %176 ], [ 1, %.lr.ph.preheader ]
  %29 = phi i32 [ %185, %176 ], [ 1, %.lr.ph.preheader ]
  %30 = phi i32 [ %185, %176 ], [ 1, %.lr.ph.preheader ]
  %.06294 = phi i32 [ %.1, %176 ], [ undef, %.lr.ph.preheader ]
  %31 = phi i32 [ %.1, %176 ], [ undef, %.lr.ph.preheader ]
  %32 = phi i32 [ %.1, %176 ], [ undef, %.lr.ph.preheader ]
  %33 = phi i32 [ %.1, %176 ], [ undef, %.lr.ph.preheader ]
  %.06393 = phi i32 [ %spec.store.select2, %176 ], [ %22, %.lr.ph.preheader ]
  %34 = phi i32 [ %spec.store.select2, %176 ], [ %22, %.lr.ph.preheader ]
  %35 = phi i32 [ %spec.store.select2, %176 ], [ %22, %.lr.ph.preheader ]
  %36 = phi i32 [ %spec.store.select2, %176 ], [ %22, %.lr.ph.preheader ]
  %.06692 = phi i32 [ %.268, %176 ], [ %23, %.lr.ph.preheader ]
  %37 = phi i32 [ %.268, %176 ], [ %24, %.lr.ph.preheader ]
  %38 = phi i32 [ %.268, %176 ], [ %23, %.lr.ph.preheader ]
  %39 = phi i32 [ %.268, %176 ], [ %24, %.lr.ph.preheader ]
  %.06991 = phi i32 [ %141, %176 ], [ %27, %.lr.ph.preheader ]
  %40 = phi i32 [ %142, %176 ], [ %27, %.lr.ph.preheader ]
  %41 = phi i32 [ %141, %176 ], [ %27, %.lr.ph.preheader ]
  %42 = phi i32 [ %142, %176 ], [ %27, %.lr.ph.preheader ]
  %.07690 = phi i32 [ %186, %176 ], [ %2, %.lr.ph.preheader ]
  %43 = phi i32 [ %186, %176 ], [ %2, %.lr.ph.preheader ]
  %44 = phi i32 [ %186, %176 ], [ %2, %.lr.ph.preheader ]
  %45 = phi i32 [ %186, %176 ], [ %2, %.lr.ph.preheader ]
  %.07789 = phi ptr [ %88, %176 ], [ %0, %.lr.ph.preheader ]
  %46 = phi ptr [ %88, %176 ], [ %0, %.lr.ph.preheader ]
  %47 = phi ptr [ %88, %176 ], [ %0, %.lr.ph.preheader ]
  %48 = phi ptr [ %88, %176 ], [ %0, %.lr.ph.preheader ]
  %.07888 = phi ptr [ %.179, %176 ], [ %1, %.lr.ph.preheader ]
  %49 = phi ptr [ %.179, %176 ], [ %1, %.lr.ph.preheader ]
  %50 = phi ptr [ %.179, %176 ], [ %1, %.lr.ph.preheader ]
  %51 = phi ptr [ %.179, %176 ], [ %1, %.lr.ph.preheader ]
  %cfg_DestPhi107 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 385877508, %176 ]
  %52 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 385877508, %176 ]
  %53 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 385877508, %176 ]
  %54 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 385877508, %176 ]
  %cfg_DiffPhi108 = phi i32 [ 118501919, %.lr.ph.preheader ], [ %190, %176 ]
  %55 = phi i32 [ 118501919, %.lr.ph.preheader ], [ %190, %176 ]
  %56 = phi i32 [ 118501919, %.lr.ph.preheader ], [ %190, %176 ]
  %57 = phi i32 [ 118501919, %.lr.ph.preheader ], [ %190, %176 ]
  %icmpEq233 = icmp eq i32 %56, %57
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %icmpEq231 = icmp eq i32 %cfg_DiffPhi108, %55
  %58 = icmp eq i32 %55, %55
  %icmpEq235 = icmp eq i1 %icmpEq231, %58
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq229 = icmp eq i32 %53, %54
  %zext230 = zext i1 %icmpEq229 to i32
  %59 = zext i1 %icmpEq229 to i32
  %icmpEq237 = icmp eq i32 %zext230, %59
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  call void @assert_ft(i32 %zext230, i32 35)
  %icmpEq227 = icmp eq i32 %cfg_DestPhi107, %52
  %zext228 = zext i1 %icmpEq227 to i32
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq225 = icmp eq i32 %44, %45
  %60 = icmp eq i32 %45, %45
  %icmpEq239 = icmp eq i1 %icmpEq225, %60
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %icmpEq223 = icmp eq i32 %.07690, %43
  %zext224 = zext i1 %icmpEq223 to i32
  %61 = zext i1 %icmpEq223 to i32
  %icmpEq241 = icmp eq i32 %zext224, %61
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  call void @assert_ft(i32 %zext224, i32 35)
  %icmpEq221 = icmp eq i32 %41, %42
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  %icmpEq219 = icmp eq i32 %.06991, %40
  %62 = icmp eq i32 %40, %40
  %icmpEq243 = icmp eq i1 %icmpEq219, %62
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %icmpEq217 = icmp eq i32 %38, %39
  %zext218 = zext i1 %icmpEq217 to i32
  %63 = zext i1 %icmpEq217 to i32
  %icmpEq245 = icmp eq i32 %zext218, %63
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  call void @assert_ft(i32 %zext218, i32 35)
  %icmpEq215 = icmp eq i32 %.06692, %37
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  %icmpEq213 = icmp eq i32 %35, %36
  %64 = icmp eq i32 %36, %36
  %icmpEq247 = icmp eq i1 %icmpEq213, %64
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  %icmpEq211 = icmp eq i32 %.06393, %34
  %zext212 = zext i1 %icmpEq211 to i32
  %65 = zext i1 %icmpEq211 to i32
  %icmpEq249 = icmp eq i32 %zext212, %65
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  call void @assert_ft(i32 %zext212, i32 35)
  %icmpEq209 = icmp eq i32 %32, %33
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  %icmpEq207 = icmp eq i32 %.06294, %31
  %66 = icmp eq i32 %31, %31
  %icmpEq251 = icmp eq i1 %icmpEq207, %66
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %icmpEq205 = icmp eq i32 %29, %30
  %zext206 = zext i1 %icmpEq205 to i32
  %67 = zext i1 %icmpEq205 to i32
  %icmpEq253 = icmp eq i32 %zext206, %67
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  call void @assert_ft(i32 %zext206, i32 35)
  %icmpEq203 = icmp eq i32 %.095, %28
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %icmpEq167 = icmp eq i32 %cfg_DiffPhi108, %56
  %68 = icmp eq i32 %55, %57
  %icmpEq255 = icmp eq i1 %icmpEq167, %68
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %icmpEq165 = icmp eq i32 %cfg_DestPhi107, %53
  %69 = icmp eq i32 %52, %54
  %70 = icmp eq i32 %52, %54
  %icmpEq257 = icmp eq i1 %69, %70
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  %icmpEq169 = icmp eq i1 %icmpEq165, %69
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %zext166 = zext i1 %icmpEq165 to i32
  %71 = zext i1 %69 to i32
  %icmpEq259 = icmp eq i32 %zext166, %71
  %zext260 = zext i1 %icmpEq259 to i32
  call void @assert_ft(i32 %zext260, i32 35)
  call void @assert_ft(i32 %zext166, i32 35)
  %icmpEq163 = icmp eq i32 %.07690, %44
  %zext164 = zext i1 %icmpEq163 to i32
  %72 = zext i1 %icmpEq163 to i32
  %73 = zext i1 %icmpEq163 to i32
  %icmpEq261 = icmp eq i32 %72, %73
  %zext262 = zext i1 %icmpEq261 to i32
  call void @assert_ft(i32 %zext262, i32 35)
  %icmpEq171 = icmp eq i32 %zext164, %72
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq161 = icmp eq i32 %.06991, %41
  %74 = icmp eq i32 %40, %42
  %icmpEq263 = icmp eq i1 %icmpEq161, %74
  %zext264 = zext i1 %icmpEq263 to i32
  call void @assert_ft(i32 %zext264, i32 35)
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %icmpEq159 = icmp eq i32 %.06692, %38
  %75 = icmp eq i32 %37, %39
  %76 = icmp eq i32 %37, %39
  %icmpEq265 = icmp eq i1 %75, %76
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %icmpEq173 = icmp eq i1 %icmpEq159, %75
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %zext160 = zext i1 %icmpEq159 to i32
  %77 = zext i1 %75 to i32
  %icmpEq267 = icmp eq i32 %zext160, %77
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  call void @assert_ft(i32 %zext160, i32 35)
  %icmpEq157 = icmp eq i32 %.06393, %35
  %zext158 = zext i1 %icmpEq157 to i32
  %78 = zext i1 %icmpEq157 to i32
  %79 = zext i1 %icmpEq157 to i32
  %icmpEq269 = icmp eq i32 %78, %79
  %zext270 = zext i1 %icmpEq269 to i32
  call void @assert_ft(i32 %zext270, i32 35)
  %icmpEq175 = icmp eq i32 %zext158, %78
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  call void @assert_ft(i32 %zext158, i32 35)
  %icmpEq155 = icmp eq i32 %.06294, %32
  %80 = icmp eq i32 %31, %33
  %icmpEq271 = icmp eq i1 %icmpEq155, %80
  %zext272 = zext i1 %icmpEq271 to i32
  call void @assert_ft(i32 %zext272, i32 35)
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %icmpEq153 = icmp eq i32 %.095, %29
  %81 = icmp eq i32 %28, %30
  %82 = icmp eq i32 %28, %30
  %icmpEq273 = icmp eq i1 %81, %82
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  %icmpEq177 = icmp eq i1 %icmpEq153, %81
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %zext154 = zext i1 %icmpEq153 to i32
  %83 = zext i1 %81 to i32
  %icmpEq275 = icmp eq i32 %zext154, %83
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  call void @assert_ft(i32 %zext154, i32 35)
  %84 = xor i32 %cfg_DestPhi107, %cfg_DiffPhi108
  %cfg_icmpEq109 = icmp eq i32 %84, 231748613
  %85 = icmp eq i32 %84, 231748613
  %86 = icmp eq i32 %84, 231748613
  %icmpEq277 = icmp eq i1 %85, %86
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  %icmpEq179 = icmp eq i1 %cfg_icmpEq109, %85
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %cfg_zext110 = zext i1 %cfg_icmpEq109 to i32
  %87 = zext i1 %85 to i32
  %icmpEq279 = icmp eq i32 %cfg_zext110, %87
  %zext280 = zext i1 %icmpEq279 to i32
  call void @assert_ft(i32 %zext280, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext110, i32 %84, i32 35)
  %88 = getelementptr inbounds i16, ptr %.07789, i64 1
  %89 = load i16, ptr %.07789, align 2
  %90 = load i16, ptr %46, align 2
  %91 = load i16, ptr %46, align 2
  %icmpEq281 = icmp eq i16 %90, %91
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  %icmpEq181 = icmp eq i16 %89, %90
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %92 = sext i16 %89 to i32
  %93 = sext i16 %90 to i32
  %icmpEq283 = icmp eq i32 %92, %93
  %zext284 = zext i1 %icmpEq283 to i32
  call void @assert_ft(i32 %zext284, i32 35)
  %94 = sub nsw i32 %92, %.06692
  %95 = icmp slt i32 %94, 0
  %96 = lshr i32 %94, 28
  %97 = lshr i32 %94, 28
  %98 = lshr i32 %94, 28
  %icmpEq285 = icmp eq i32 %97, %98
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %icmpEq183 = icmp eq i32 %96, %97
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %99 = and i32 %96, 8
  %100 = and i32 %97, 8
  %icmpEq287 = icmp eq i32 %99, %100
  %zext288 = zext i1 %icmpEq287 to i32
  call void @assert_ft(i32 %zext288, i32 35)
  %spec.select = tail call i32 @llvm.abs.i32(i32 %94, i1 true)
  %101 = ashr i32 %.06991, 3
  %.not84 = icmp slt i32 %spec.select, %.06991
  %102 = icmp slt i32 %spec.select, %40
  %103 = icmp slt i32 %spec.select, %40
  %icmpEq289 = icmp eq i1 %102, %103
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %icmpEq185 = icmp eq i1 %.not84, %102
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %.073 = select i1 %.not84, i32 0, i32 4
  %104 = select i1 %102, i32 0, i32 4
  %icmpEq291 = icmp eq i32 %.073, %104
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  %105 = select i1 %.not84, i32 0, i32 %.06991
  %.171 = sub nsw i32 %spec.select, %105
  %.064 = add nsw i32 %105, %101
  %106 = add nsw i32 %105, %101
  %107 = add nsw i32 %105, %101
  %icmpEq293 = icmp eq i32 %106, %107
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  %icmpEq187 = icmp eq i32 %.064, %106
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %108 = ashr i32 %.06991, 1
  %109 = ashr i32 %40, 1
  %icmpEq295 = icmp eq i32 %108, %109
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  %.not85 = icmp slt i32 %.171, %108
  %110 = or i32 %.073, 2
  %.174 = select i1 %.not85, i32 %.073, i32 %110
  %111 = select i1 %.not85, i32 %104, i32 %110
  %112 = select i1 %.not85, i32 %104, i32 %110
  %icmpEq297 = icmp eq i32 %111, %112
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  %icmpEq189 = icmp eq i32 %.174, %111
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %113 = select i1 %.not85, i32 0, i32 %108
  %114 = select i1 %.not85, i32 0, i32 %109
  %icmpEq299 = icmp eq i32 %113, %114
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  %.272 = sub nsw i32 %.171, %113
  %.165 = add nsw i32 %.064, %113
  %115 = ashr i32 %.06991, 2
  %116 = ashr i32 %40, 2
  %117 = ashr i32 %40, 2
  %icmpEq301 = icmp eq i32 %116, %117
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %icmpEq191 = icmp eq i32 %115, %116
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %.not86 = icmp sge i32 %.272, %115
  %118 = icmp sge i32 %.272, %116
  %icmpEq303 = icmp eq i1 %.not86, %118
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  %119 = zext i1 %.not86 to i32
  %120 = select i1 %.not86, i32 %115, i32 0
  %.2 = add nsw i32 %.165, %120
  %121 = add nsw i32 %.165, %120
  %122 = add nsw i32 %.165, %120
  %icmpEq305 = icmp eq i32 %121, %122
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %icmpEq193 = icmp eq i32 %.2, %121
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  %123 = sub i32 0, %.2
  %124 = sub i32 0, %121
  %icmpEq307 = icmp eq i32 %123, %124
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %.167.p = select i1 %95, i32 %123, i32 %.2
  %.167 = add i32 %.167.p, %.06692
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.167, i32 -32768)
  %.268 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32767)
  %.275 = or i32 %.174, %99
  %125 = or i32 %111, %100
  %icmpEq309 = icmp eq i32 %.275, %125
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %126 = or i32 %.174, %99
  %icmpEq195 = icmp eq i32 %.275, %126
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %127 = or i32 %.275, %119
  %128 = or i32 %125, %119
  %icmpEq311 = icmp eq i32 %127, %128
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4
  %132 = load i32, ptr %130, align 4
  %133 = load i32, ptr %130, align 4
  %icmpEq313 = icmp eq i32 %132, %133
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %icmpEq197 = icmp eq i32 %131, %132
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %134 = add nsw i32 %131, %.06393
  %135 = add nsw i32 %132, %34
  %icmpEq315 = icmp eq i32 %134, %135
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %134, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select1, i32 88)
  %136 = zext i32 %spec.store.select2 to i64
  %137 = zext i32 %spec.store.select2 to i64
  %138 = zext i32 %spec.store.select2 to i64
  %icmpEq317 = icmp eq i64 %137, %138
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %icmpEq199 = icmp eq i64 %136, %137
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %139 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %136
  %140 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %137
  %141 = load i32, ptr %139, align 4
  %142 = load i32, ptr %140, align 4
  %icmpEq319 = icmp eq i32 %141, %142
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %.not87 = icmp eq i32 %.095, 0
  %143 = select i1 %.not87, i32 334497035, i32 283116314
  %144 = select i1 %.not87, i32 334497035, i32 283116314
  %icmpEq201 = icmp eq i32 %143, %144
  %145 = icmp eq i32 %144, %144
  %icmpEq321 = icmp eq i1 %icmpEq201, %145
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %146 = xor i32 231748613, %143
  br i1 %.not87, label %166, label %147

147:                                              ; preds = %.lr.ph
  %cfg_DestPhi111 = phi i32 [ 231748613, %.lr.ph ]
  %148 = phi i32 [ 231748613, %.lr.ph ]
  %149 = phi i32 [ 231748613, %.lr.ph ]
  %cfg_DiffPhi112 = phi i32 [ %146, %.lr.ph ]
  %150 = phi i32 [ %146, %.lr.ph ]
  %151 = phi i32 [ %146, %.lr.ph ]
  %152 = phi i32 [ %146, %.lr.ph ]
  %icmpEq337 = icmp eq i32 %151, %152
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %icmpEq335 = icmp eq i32 %cfg_DiffPhi112, %150
  %153 = icmp eq i32 %150, %150
  %icmpEq339 = icmp eq i1 %icmpEq335, %153
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq333 = icmp eq i32 %148, %149
  %zext334 = zext i1 %icmpEq333 to i32
  %154 = zext i1 %icmpEq333 to i32
  %icmpEq341 = icmp eq i32 %zext334, %154
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  call void @assert_ft(i32 %zext334, i32 35)
  %icmpEq325 = icmp eq i32 %cfg_DiffPhi112, %151
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  %icmpEq323 = icmp eq i32 %cfg_DestPhi111, %148
  %155 = icmp eq i32 %148, %149
  %icmpEq343 = icmp eq i1 %icmpEq323, %155
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %156 = icmp eq i32 %cfg_DestPhi111, %148
  %icmpEq327 = icmp eq i1 %icmpEq323, %156
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %zext324 = zext i1 %icmpEq323 to i32
  %157 = zext i1 %155 to i32
  %icmpEq345 = icmp eq i32 %zext324, %157
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  call void @assert_ft(i32 %zext324, i32 35)
  %158 = xor i32 %cfg_DestPhi111, %cfg_DiffPhi112
  %cfg_icmpEq113 = icmp eq i32 %158, 283116314
  %159 = icmp eq i32 %158, 283116314
  %160 = icmp eq i32 %158, 283116314
  %icmpEq347 = icmp eq i1 %159, %160
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %icmpEq329 = icmp eq i1 %cfg_icmpEq113, %159
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  %cfg_zext114 = zext i1 %cfg_icmpEq113 to i32
  %161 = zext i1 %159 to i32
  %icmpEq349 = icmp eq i32 %cfg_zext114, %161
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext114, i32 %158, i32 35)
  %162 = shl nuw nsw i32 %127, 4
  %163 = and i32 %162, 240
  %164 = and i32 %162, 240
  %165 = and i32 %162, 240
  %icmpEq351 = icmp eq i32 %164, %165
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %icmpEq331 = icmp eq i32 %163, %164
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  br label %176

166:                                              ; preds = %.lr.ph
  %cfg_DestPhi115 = phi i32 [ 231748613, %.lr.ph ]
  %167 = phi i32 [ 231748613, %.lr.ph ]
  %cfg_DiffPhi116 = phi i32 [ %146, %.lr.ph ]
  %168 = phi i32 [ %146, %.lr.ph ]
  %icmpEq355 = icmp eq i32 %cfg_DiffPhi116, %168
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %icmpEq353 = icmp eq i32 %cfg_DestPhi115, %167
  %169 = icmp eq i32 %167, %167
  %icmpEq357 = icmp eq i1 %icmpEq353, %169
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  %170 = xor i32 %cfg_DestPhi115, %cfg_DiffPhi116
  %cfg_icmpEq117 = icmp eq i32 %170, 334497035
  %171 = icmp eq i32 %170, 334497035
  %icmpEq359 = icmp eq i1 %cfg_icmpEq117, %171
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %cfg_zext118 = zext i1 %cfg_icmpEq117 to i32
  call void @assert_cfg_ft(i32 %cfg_zext118, i32 %170, i32 35)
  %172 = or i32 %127, %.06294
  %173 = trunc i32 %172 to i8
  %174 = trunc i32 %172 to i8
  %icmpEq361 = icmp eq i8 %173, %174
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  %175 = getelementptr inbounds i8, ptr %.07888, i64 1
  store i8 %173, ptr %.07888, align 1
  br label %176

176:                                              ; preds = %166, %147
  %.179 = phi ptr [ %.07888, %147 ], [ %175, %166 ]
  %177 = phi ptr [ %49, %147 ], [ %175, %166 ]
  %.1 = phi i32 [ %163, %147 ], [ %.06294, %166 ]
  %178 = phi i32 [ %164, %147 ], [ %31, %166 ]
  %cfg_DestPhi119 = phi i32 [ 334497035, %166 ], [ 283116314, %147 ]
  %179 = phi i32 [ 334497035, %166 ], [ 283116314, %147 ]
  %cfg_DiffPhi120 = phi i32 [ 82838287, %166 ], [ 132121886, %147 ]
  %180 = phi i32 [ 82838287, %166 ], [ 132121886, %147 ]
  %icmpEq367 = icmp eq i32 %cfg_DiffPhi120, %180
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %icmpEq365 = icmp eq i32 %cfg_DestPhi119, %179
  %181 = icmp eq i32 %179, %179
  %icmpEq369 = icmp eq i1 %icmpEq365, %181
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %icmpEq363 = icmp eq i32 %.1, %178
  %zext364 = zext i1 %icmpEq363 to i32
  %182 = zext i1 %icmpEq363 to i32
  %icmpEq371 = icmp eq i32 %zext364, %182
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  call void @assert_ft(i32 %zext364, i32 35)
  %183 = xor i32 %cfg_DestPhi119, %cfg_DiffPhi120
  %cfg_icmpEq121 = icmp eq i32 %183, 385877508
  %cfg_zext122 = zext i1 %cfg_icmpEq121 to i32
  %184 = zext i1 %cfg_icmpEq121 to i32
  %icmpEq373 = icmp eq i32 %cfg_zext122, %184
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext122, i32 %183, i32 35)
  %185 = xor i32 %.095, 1
  %186 = add nsw i32 %.07690, -1
  %187 = icmp sgt i32 %.07690, 1
  %188 = icmp sgt i32 %43, 1
  %icmpEq375 = icmp eq i1 %187, %188
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %189 = select i1 %187, i32 231748613, i32 437257252
  %190 = xor i32 385877508, %189
  br i1 %187, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %176
  %cfg_DestPhi123 = phi i32 [ 385877508, %176 ]
  %191 = phi i32 [ 385877508, %176 ]
  %cfg_DiffPhi124 = phi i32 [ %190, %176 ]
  %192 = phi i32 [ %190, %176 ]
  %icmpEq379 = icmp eq i32 %cfg_DiffPhi124, %192
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %icmpEq377 = icmp eq i32 %cfg_DestPhi123, %191
  %193 = icmp eq i32 %191, %191
  %icmpEq381 = icmp eq i1 %icmpEq377, %193
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %194 = xor i32 %cfg_DestPhi123, %cfg_DiffPhi124
  %cfg_icmpEq125 = icmp eq i32 %194, 437257252
  %195 = icmp eq i32 %194, 437257252
  %icmpEq383 = icmp eq i1 %cfg_icmpEq125, %195
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  %cfg_zext126 = zext i1 %cfg_icmpEq125 to i32
  call void @assert_cfg_ft(i32 %cfg_zext126, i32 %194, i32 35)
  %196 = icmp eq i32 %185, 0
  %197 = trunc i32 %.268 to i16
  %198 = trunc i32 %.268 to i16
  %icmpEq385 = icmp eq i16 %197, %198
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %199 = trunc i32 %spec.store.select2 to i8
  %200 = select i1 %196, i32 488637199, i32 540017925
  %201 = xor i32 437257252, %200
  br i1 %196, label %202, label %._crit_edge.thread

202:                                              ; preds = %._crit_edge
  %cfg_DestPhi127 = phi i32 [ 437257252, %._crit_edge ]
  %203 = phi i32 [ 437257252, %._crit_edge ]
  %cfg_DiffPhi128 = phi i32 [ %201, %._crit_edge ]
  %204 = phi i32 [ %201, %._crit_edge ]
  %icmpEq389 = icmp eq i32 %cfg_DiffPhi128, %204
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  %icmpEq387 = icmp eq i32 %cfg_DestPhi127, %203
  %205 = icmp eq i32 %203, %203
  %icmpEq391 = icmp eq i1 %icmpEq387, %205
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  %206 = xor i32 %cfg_DestPhi127, %cfg_DiffPhi128
  %cfg_icmpEq129 = icmp eq i32 %206, 488637199
  %207 = icmp eq i32 %206, 488637199
  %icmpEq393 = icmp eq i1 %cfg_icmpEq129, %207
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  %cfg_zext130 = zext i1 %cfg_icmpEq129 to i32
  call void @assert_cfg_ft(i32 %cfg_zext130, i32 %206, i32 35)
  %208 = trunc i32 %.1 to i8
  store i8 %208, ptr %.179, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %202, %._crit_edge, %4
  %.063.lcssa106 = phi i8 [ %199, %202 ], [ %199, %._crit_edge ], [ %10, %4 ]
  %209 = phi i8 [ %199, %202 ], [ %199, %._crit_edge ], [ %11, %4 ]
  %.066.lcssa105 = phi i16 [ %197, %202 ], [ %197, %._crit_edge ], [ %5, %4 ]
  %210 = phi i16 [ %198, %202 ], [ %198, %._crit_edge ], [ %6, %4 ]
  %cfg_DestPhi131 = phi i32 [ 128976145, %4 ], [ 488637199, %202 ], [ 437257252, %._crit_edge ]
  %211 = phi i32 [ 128976145, %4 ], [ 488637199, %202 ], [ 437257252, %._crit_edge ]
  %cfg_DiffPhi132 = phi i32 [ %16, %4 ], [ 1024460298, %202 ], [ %201, %._crit_edge ]
  %212 = phi i32 [ %16, %4 ], [ 1024460298, %202 ], [ %201, %._crit_edge ]
  %icmpEq401 = icmp eq i32 %cfg_DiffPhi132, %212
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %icmpEq399 = icmp eq i32 %cfg_DestPhi131, %211
  %213 = icmp eq i32 %211, %211
  %icmpEq403 = icmp eq i1 %icmpEq399, %213
  %zext404 = zext i1 %icmpEq403 to i32
  call void @assert_ft(i32 %zext404, i32 35)
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  %icmpEq397 = icmp eq i16 %.066.lcssa105, %210
  %zext398 = zext i1 %icmpEq397 to i32
  %214 = zext i1 %icmpEq397 to i32
  %icmpEq405 = icmp eq i32 %zext398, %214
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  call void @assert_ft(i32 %zext398, i32 35)
  %icmpEq395 = icmp eq i8 %.063.lcssa106, %209
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  %215 = xor i32 %cfg_DestPhi131, %cfg_DiffPhi132
  %216 = xor i32 %211, %212
  %icmpEq407 = icmp eq i32 %215, %216
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %cfg_icmpEq133 = icmp eq i32 %215, 540017925
  %cfg_zext134 = zext i1 %cfg_icmpEq133 to i32
  call void @assert_cfg_ft(i32 %cfg_zext134, i32 %215, i32 35)
  store i16 %.066.lcssa105, ptr %3, align 2
  store i8 %.063.lcssa106, ptr %8, align 2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @adpcm_decoder(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %3, align 2
  %6 = load i16, ptr %3, align 2
  %icmpEq91 = icmp eq i16 %5, %6
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %7 = load i16, ptr %3, align 2
  %icmpEq = icmp eq i16 %5, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.adpcm_state, ptr %3, i64 0, i32 1
  %10 = load i8, ptr %8, align 2
  %11 = load i8, ptr %9, align 2
  %icmpEq93 = icmp eq i8 %10, %11
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %12 = icmp sgt i32 %2, 0
  %13 = select i1 %12, i32 180356634, i32 437257480
  %14 = select i1 %12, i32 180356634, i32 437257480
  %icmpEq89 = icmp eq i32 %13, %14
  %15 = icmp eq i32 %14, %14
  %icmpEq95 = icmp eq i1 %icmpEq89, %15
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %16 = xor i32 128976145, %13
  br i1 %12, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %cfg_DestPhi = phi i32 [ 128976145, %4 ]
  %17 = phi i32 [ 128976145, %4 ]
  %cfg_DiffPhi = phi i32 [ %16, %4 ]
  %18 = phi i32 [ %16, %4 ]
  %icmpEq99 = icmp eq i32 %cfg_DiffPhi, %18
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq97 = icmp eq i32 %cfg_DestPhi, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq101 = icmp eq i1 %icmpEq97, %19
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  %20 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %20, 180356634
  %21 = icmp eq i32 %20, 180356634
  %icmpEq103 = icmp eq i1 %cfg_icmpEq, %21
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %20, i32 35)
  %22 = sext i8 %10 to i32
  %23 = sext i16 %5 to i32
  %24 = sext i16 %6 to i32
  %icmpEq105 = icmp eq i32 %23, %24
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %25 = sext i8 %10 to i64
  %26 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %213, %.lr.ph.preheader
  %.067 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %28 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %29 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %30 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %31 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %32 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %33 = phi i32 [ %224, %213 ], [ 0, %.lr.ph.preheader ]
  %.04366 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %34 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %35 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %36 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %37 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %38 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %39 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %40 = phi i32 [ %.1, %213 ], [ undef, %.lr.ph.preheader ]
  %.04465 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %41 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %42 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %43 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %44 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %45 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %46 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %47 = phi i32 [ %spec.store.select2, %213 ], [ %22, %.lr.ph.preheader ]
  %.04764 = phi i32 [ %.249, %213 ], [ %23, %.lr.ph.preheader ]
  %48 = phi i32 [ %.249, %213 ], [ %24, %.lr.ph.preheader ]
  %49 = phi i32 [ %.249, %213 ], [ %23, %.lr.ph.preheader ]
  %50 = phi i32 [ %.249, %213 ], [ %24, %.lr.ph.preheader ]
  %51 = phi i32 [ %.249, %213 ], [ %23, %.lr.ph.preheader ]
  %52 = phi i32 [ %.249, %213 ], [ %24, %.lr.ph.preheader ]
  %53 = phi i32 [ %.249, %213 ], [ %23, %.lr.ph.preheader ]
  %54 = phi i32 [ %.249, %213 ], [ %24, %.lr.ph.preheader ]
  %.05063 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %55 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %56 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %57 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %58 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %59 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %60 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %61 = phi i32 [ %249, %213 ], [ %27, %.lr.ph.preheader ]
  %.05262 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %62 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %63 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %64 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %65 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %66 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %67 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %68 = phi i32 [ %253, %213 ], [ %2, %.lr.ph.preheader ]
  %.05361 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %69 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %70 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %71 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %72 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %73 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %74 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %75 = phi ptr [ %251, %213 ], [ %1, %.lr.ph.preheader ]
  %.05460 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %76 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %77 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %78 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %79 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %80 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %81 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %82 = phi ptr [ %.155, %213 ], [ %0, %.lr.ph.preheader ]
  %cfg_DestPhi69 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %83 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %84 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %85 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %86 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %87 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %88 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %89 = phi i32 [ 180356634, %.lr.ph.preheader ], [ 334506507, %213 ]
  %cfg_DiffPhi70 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %90 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %91 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %92 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %93 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %94 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %95 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %96 = phi i32 [ 118492166, %.lr.ph.preheader ], [ %257, %213 ]
  %icmpEq279 = icmp eq i32 %95, %96
  %zext280 = zext i1 %icmpEq279 to i32
  call void @assert_ft(i32 %zext280, i32 35)
  %icmpEq277 = icmp eq i32 %93, %94
  %97 = icmp eq i32 %94, %94
  %icmpEq281 = icmp eq i1 %icmpEq277, %97
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  %icmpEq275 = icmp eq i32 %91, %92
  %zext276 = zext i1 %icmpEq275 to i32
  %98 = zext i1 %icmpEq275 to i32
  %icmpEq283 = icmp eq i32 %zext276, %98
  %zext284 = zext i1 %icmpEq283 to i32
  call void @assert_ft(i32 %zext284, i32 35)
  call void @assert_ft(i32 %zext276, i32 35)
  %icmpEq273 = icmp eq i32 %cfg_DiffPhi70, %90
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  %icmpEq271 = icmp eq i32 %88, %89
  %99 = icmp eq i32 %89, %89
  %icmpEq285 = icmp eq i1 %icmpEq271, %99
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %zext272 = zext i1 %icmpEq271 to i32
  call void @assert_ft(i32 %zext272, i32 35)
  %icmpEq269 = icmp eq i32 %86, %87
  %zext270 = zext i1 %icmpEq269 to i32
  %100 = zext i1 %icmpEq269 to i32
  %icmpEq287 = icmp eq i32 %zext270, %100
  %zext288 = zext i1 %icmpEq287 to i32
  call void @assert_ft(i32 %zext288, i32 35)
  call void @assert_ft(i32 %zext270, i32 35)
  %icmpEq267 = icmp eq i32 %84, %85
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  %icmpEq265 = icmp eq i32 %cfg_DestPhi69, %83
  %101 = icmp eq i32 %83, %83
  %icmpEq289 = icmp eq i1 %icmpEq265, %101
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %icmpEq263 = icmp eq i32 %67, %68
  %zext264 = zext i1 %icmpEq263 to i32
  %102 = zext i1 %icmpEq263 to i32
  %icmpEq291 = icmp eq i32 %zext264, %102
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  call void @assert_ft(i32 %zext264, i32 35)
  %icmpEq261 = icmp eq i32 %65, %66
  %zext262 = zext i1 %icmpEq261 to i32
  call void @assert_ft(i32 %zext262, i32 35)
  %icmpEq259 = icmp eq i32 %63, %64
  %103 = icmp eq i32 %64, %64
  %icmpEq293 = icmp eq i1 %icmpEq259, %103
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  %zext260 = zext i1 %icmpEq259 to i32
  call void @assert_ft(i32 %zext260, i32 35)
  %icmpEq257 = icmp eq i32 %.05262, %62
  %zext258 = zext i1 %icmpEq257 to i32
  %104 = zext i1 %icmpEq257 to i32
  %icmpEq295 = icmp eq i32 %zext258, %104
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  call void @assert_ft(i32 %zext258, i32 35)
  %icmpEq255 = icmp eq i32 %60, %61
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %icmpEq253 = icmp eq i32 %58, %59
  %105 = icmp eq i32 %59, %59
  %icmpEq297 = icmp eq i1 %icmpEq253, %105
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %icmpEq251 = icmp eq i32 %56, %57
  %zext252 = zext i1 %icmpEq251 to i32
  %106 = zext i1 %icmpEq251 to i32
  %icmpEq299 = icmp eq i32 %zext252, %106
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  call void @assert_ft(i32 %zext252, i32 35)
  %icmpEq249 = icmp eq i32 %.05063, %55
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %icmpEq247 = icmp eq i32 %53, %54
  %107 = icmp eq i32 %54, %54
  %icmpEq301 = icmp eq i1 %icmpEq247, %107
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %icmpEq245 = icmp eq i32 %51, %52
  %zext246 = zext i1 %icmpEq245 to i32
  %108 = zext i1 %icmpEq245 to i32
  %icmpEq303 = icmp eq i32 %zext246, %108
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  call void @assert_ft(i32 %zext246, i32 35)
  %icmpEq243 = icmp eq i32 %49, %50
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %icmpEq241 = icmp eq i32 %.04764, %48
  %109 = icmp eq i32 %48, %48
  %icmpEq305 = icmp eq i1 %icmpEq241, %109
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %icmpEq239 = icmp eq i32 %46, %47
  %zext240 = zext i1 %icmpEq239 to i32
  %110 = zext i1 %icmpEq239 to i32
  %icmpEq307 = icmp eq i32 %zext240, %110
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  call void @assert_ft(i32 %zext240, i32 35)
  %icmpEq237 = icmp eq i32 %44, %45
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %icmpEq235 = icmp eq i32 %42, %43
  %111 = icmp eq i32 %43, %43
  %icmpEq309 = icmp eq i1 %icmpEq235, %111
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %icmpEq233 = icmp eq i32 %.04465, %41
  %zext234 = zext i1 %icmpEq233 to i32
  %112 = zext i1 %icmpEq233 to i32
  %icmpEq311 = icmp eq i32 %zext234, %112
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  call void @assert_ft(i32 %zext234, i32 35)
  %icmpEq231 = icmp eq i32 %39, %40
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq229 = icmp eq i32 %37, %38
  %113 = icmp eq i32 %38, %38
  %icmpEq313 = icmp eq i1 %icmpEq229, %113
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %icmpEq227 = icmp eq i32 %35, %36
  %zext228 = zext i1 %icmpEq227 to i32
  %114 = zext i1 %icmpEq227 to i32
  %icmpEq315 = icmp eq i32 %zext228, %114
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq225 = icmp eq i32 %.04366, %34
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %icmpEq223 = icmp eq i32 %32, %33
  %115 = icmp eq i32 %33, %33
  %icmpEq317 = icmp eq i1 %icmpEq223, %115
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  %icmpEq221 = icmp eq i32 %30, %31
  %zext222 = zext i1 %icmpEq221 to i32
  %116 = zext i1 %icmpEq221 to i32
  %icmpEq319 = icmp eq i32 %zext222, %116
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  call void @assert_ft(i32 %zext222, i32 35)
  %icmpEq219 = icmp eq i32 %28, %29
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %icmpEq167 = icmp eq i32 %93, %95
  %117 = icmp eq i32 %94, %96
  %icmpEq321 = icmp eq i1 %icmpEq167, %117
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %icmpEq165 = icmp eq i32 %cfg_DiffPhi70, %91
  %118 = icmp eq i32 %90, %92
  %119 = icmp eq i32 %90, %92
  %icmpEq323 = icmp eq i1 %118, %119
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  %icmpEq169 = icmp eq i1 %icmpEq165, %118
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %zext166 = zext i1 %icmpEq165 to i32
  %120 = zext i1 %118 to i32
  %icmpEq325 = icmp eq i32 %zext166, %120
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  call void @assert_ft(i32 %zext166, i32 35)
  %icmpEq163 = icmp eq i32 %86, %88
  %zext164 = zext i1 %icmpEq163 to i32
  %121 = zext i1 %icmpEq163 to i32
  %122 = zext i1 %icmpEq163 to i32
  %icmpEq327 = icmp eq i32 %121, %122
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %icmpEq171 = icmp eq i32 %zext164, %121
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq161 = icmp eq i32 %cfg_DestPhi69, %84
  %123 = icmp eq i32 %83, %85
  %icmpEq329 = icmp eq i1 %icmpEq161, %123
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %icmpEq159 = icmp eq i32 %65, %67
  %124 = icmp eq i32 %66, %68
  %125 = icmp eq i32 %66, %68
  %icmpEq331 = icmp eq i1 %124, %125
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %icmpEq173 = icmp eq i1 %icmpEq159, %124
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %zext160 = zext i1 %icmpEq159 to i32
  %126 = zext i1 %124 to i32
  %icmpEq333 = icmp eq i32 %zext160, %126
  %zext334 = zext i1 %icmpEq333 to i32
  call void @assert_ft(i32 %zext334, i32 35)
  call void @assert_ft(i32 %zext160, i32 35)
  %icmpEq157 = icmp eq i32 %.05262, %63
  %zext158 = zext i1 %icmpEq157 to i32
  %127 = zext i1 %icmpEq157 to i32
  %128 = zext i1 %icmpEq157 to i32
  %icmpEq335 = icmp eq i32 %127, %128
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq175 = icmp eq i32 %zext158, %127
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  call void @assert_ft(i32 %zext158, i32 35)
  %icmpEq155 = icmp eq i32 %58, %60
  %129 = icmp eq i32 %59, %61
  %icmpEq337 = icmp eq i1 %icmpEq155, %129
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %icmpEq153 = icmp eq i32 %.05063, %56
  %130 = icmp eq i32 %55, %57
  %131 = icmp eq i32 %55, %57
  %icmpEq339 = icmp eq i1 %130, %131
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %icmpEq177 = icmp eq i1 %icmpEq153, %130
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %zext154 = zext i1 %icmpEq153 to i32
  %132 = zext i1 %130 to i32
  %icmpEq341 = icmp eq i32 %zext154, %132
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  call void @assert_ft(i32 %zext154, i32 35)
  %icmpEq151 = icmp eq i32 %51, %53
  %zext152 = zext i1 %icmpEq151 to i32
  %133 = zext i1 %icmpEq151 to i32
  %134 = zext i1 %icmpEq151 to i32
  %icmpEq343 = icmp eq i32 %133, %134
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %icmpEq179 = icmp eq i32 %zext152, %133
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq149 = icmp eq i32 %.04764, %49
  %135 = icmp eq i32 %48, %50
  %icmpEq345 = icmp eq i1 %icmpEq149, %135
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  %icmpEq147 = icmp eq i32 %44, %46
  %136 = icmp eq i32 %45, %47
  %137 = icmp eq i32 %45, %47
  %icmpEq347 = icmp eq i1 %136, %137
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %icmpEq181 = icmp eq i1 %icmpEq147, %136
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %zext148 = zext i1 %icmpEq147 to i32
  %138 = zext i1 %136 to i32
  %icmpEq349 = icmp eq i32 %zext148, %138
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  call void @assert_ft(i32 %zext148, i32 35)
  %icmpEq145 = icmp eq i32 %.04465, %42
  %zext146 = zext i1 %icmpEq145 to i32
  %139 = zext i1 %icmpEq145 to i32
  %140 = zext i1 %icmpEq145 to i32
  %icmpEq351 = icmp eq i32 %139, %140
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %icmpEq183 = icmp eq i32 %zext146, %139
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %37, %39
  %141 = icmp eq i32 %38, %40
  %icmpEq353 = icmp eq i1 %icmpEq143, %141
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %.04366, %35
  %142 = icmp eq i32 %34, %36
  %143 = icmp eq i32 %34, %36
  %icmpEq355 = icmp eq i1 %142, %143
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %icmpEq185 = icmp eq i1 %icmpEq141, %142
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %zext142 = zext i1 %icmpEq141 to i32
  %144 = zext i1 %142 to i32
  %icmpEq357 = icmp eq i32 %zext142, %144
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  call void @assert_ft(i32 %zext142, i32 35)
  %icmpEq139 = icmp eq i32 %30, %32
  %zext140 = zext i1 %icmpEq139 to i32
  %145 = zext i1 %icmpEq139 to i32
  %146 = zext i1 %icmpEq139 to i32
  %icmpEq359 = icmp eq i32 %145, %146
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %icmpEq187 = icmp eq i32 %zext140, %145
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  call void @assert_ft(i32 %zext140, i32 35)
  %icmpEq137 = icmp eq i32 %.067, %28
  %147 = icmp eq i32 %28, %29
  %icmpEq361 = icmp eq i1 %icmpEq137, %147
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %icmpEq121 = icmp eq i32 %cfg_DiffPhi70, %93
  %148 = icmp eq i32 %90, %94
  %149 = icmp eq i32 %90, %94
  %icmpEq363 = icmp eq i1 %148, %149
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %icmpEq189 = icmp eq i1 %icmpEq121, %148
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %zext122 = zext i1 %icmpEq121 to i32
  %150 = zext i1 %148 to i32
  %icmpEq365 = icmp eq i32 %zext122, %150
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i32 %cfg_DestPhi69, %86
  %151 = icmp eq i32 %83, %87
  %152 = icmp eq i32 %83, %87
  %153 = icmp eq i32 %83, %87
  %icmpEq367 = icmp eq i1 %152, %153
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %icmpEq191 = icmp eq i1 %151, %152
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %icmpEq123 = icmp eq i1 %icmpEq119, %151
  %154 = icmp eq i1 %151, %152
  %icmpEq369 = icmp eq i1 %icmpEq123, %154
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %zext120 = zext i1 %icmpEq119 to i32
  %155 = zext i1 %151 to i32
  %156 = zext i1 %151 to i32
  %icmpEq371 = icmp eq i32 %155, %156
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  %icmpEq193 = icmp eq i32 %zext120, %155
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  call void @assert_ft(i32 %zext120, i32 35)
  %icmpEq117 = icmp eq i32 %.05262, %65
  %157 = icmp eq i32 %62, %66
  %icmpEq373 = icmp eq i1 %icmpEq117, %157
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %zext118 = zext i1 %icmpEq117 to i32
  %158 = zext i1 %157 to i32
  %159 = zext i1 %157 to i32
  %icmpEq195 = icmp eq i32 %158, %159
  %160 = icmp eq i32 %159, %159
  %icmpEq375 = icmp eq i1 %icmpEq195, %160
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %icmpEq125 = icmp eq i32 %zext118, %158
  %zext126 = zext i1 %icmpEq125 to i32
  %161 = zext i1 %icmpEq125 to i32
  %icmpEq377 = icmp eq i32 %zext126, %161
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  call void @assert_ft(i32 %zext126, i32 35)
  call void @assert_ft(i32 %zext118, i32 35)
  %icmpEq115 = icmp eq i32 %.05063, %58
  %162 = icmp eq i32 %55, %59
  %163 = icmp eq i32 %55, %59
  %icmpEq379 = icmp eq i1 %162, %163
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %icmpEq197 = icmp eq i1 %icmpEq115, %162
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %zext116 = zext i1 %icmpEq115 to i32
  %164 = zext i1 %162 to i32
  %icmpEq381 = icmp eq i32 %zext116, %164
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  call void @assert_ft(i32 %zext116, i32 35)
  %icmpEq113 = icmp eq i32 %.04764, %51
  %165 = icmp eq i32 %48, %52
  %166 = icmp eq i32 %48, %52
  %167 = icmp eq i32 %48, %52
  %icmpEq383 = icmp eq i1 %166, %167
  %zext384 = zext i1 %icmpEq383 to i32
  call void @assert_ft(i32 %zext384, i32 35)
  %icmpEq199 = icmp eq i1 %165, %166
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %icmpEq127 = icmp eq i1 %icmpEq113, %165
  %168 = icmp eq i1 %165, %166
  %icmpEq385 = icmp eq i1 %icmpEq127, %168
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %zext114 = zext i1 %icmpEq113 to i32
  %169 = zext i1 %165 to i32
  %170 = zext i1 %165 to i32
  %icmpEq387 = icmp eq i32 %169, %170
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  %icmpEq201 = icmp eq i32 %zext114, %169
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i32 %.04465, %44
  %171 = icmp eq i32 %41, %45
  %icmpEq389 = icmp eq i1 %icmpEq111, %171
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  %zext112 = zext i1 %icmpEq111 to i32
  %172 = zext i1 %171 to i32
  %173 = zext i1 %171 to i32
  %icmpEq203 = icmp eq i32 %172, %173
  %174 = icmp eq i32 %173, %173
  %icmpEq391 = icmp eq i1 %icmpEq203, %174
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %icmpEq129 = icmp eq i32 %zext112, %172
  %zext130 = zext i1 %icmpEq129 to i32
  %175 = zext i1 %icmpEq129 to i32
  %icmpEq393 = icmp eq i32 %zext130, %175
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  call void @assert_ft(i32 %zext130, i32 35)
  call void @assert_ft(i32 %zext112, i32 35)
  %icmpEq109 = icmp eq i32 %.04366, %37
  %176 = icmp eq i32 %34, %38
  %177 = icmp eq i32 %34, %38
  %icmpEq395 = icmp eq i1 %176, %177
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  %icmpEq205 = icmp eq i1 %icmpEq109, %176
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  %zext110 = zext i1 %icmpEq109 to i32
  %178 = zext i1 %176 to i32
  %icmpEq397 = icmp eq i32 %zext110, %178
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i32 %.067, %30
  %179 = icmp eq i32 %28, %31
  %180 = icmp eq i32 %28, %31
  %181 = icmp eq i32 %28, %31
  %icmpEq399 = icmp eq i1 %180, %181
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  %icmpEq207 = icmp eq i1 %179, %180
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %icmpEq131 = icmp eq i1 %icmpEq107, %179
  %182 = icmp eq i1 %179, %180
  %icmpEq401 = icmp eq i1 %icmpEq131, %182
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %zext108 = zext i1 %icmpEq107 to i32
  %183 = zext i1 %179 to i32
  %184 = zext i1 %179 to i32
  %icmpEq403 = icmp eq i32 %183, %184
  %zext404 = zext i1 %icmpEq403 to i32
  call void @assert_ft(i32 %zext404, i32 35)
  %icmpEq209 = icmp eq i32 %zext108, %183
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  call void @assert_ft(i32 %zext108, i32 35)
  %185 = xor i32 %cfg_DestPhi69, %cfg_DiffPhi70
  %186 = xor i32 %83, %90
  %icmpEq405 = icmp eq i32 %185, %186
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %cfg_icmpEq71 = icmp eq i32 %185, 231737884
  %187 = icmp eq i32 %186, 231737884
  %188 = icmp eq i32 %186, 231737884
  %icmpEq211 = icmp eq i1 %187, %188
  %189 = icmp eq i1 %188, %188
  %icmpEq407 = icmp eq i1 %icmpEq211, %189
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %icmpEq133 = icmp eq i1 %cfg_icmpEq71, %187
  %zext134 = zext i1 %icmpEq133 to i32
  %190 = zext i1 %icmpEq133 to i32
  %icmpEq409 = icmp eq i32 %zext134, %190
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  call void @assert_ft(i32 %zext134, i32 35)
  %cfg_zext72 = zext i1 %cfg_icmpEq71 to i32
  %191 = zext i1 %187 to i32
  %icmpEq213 = icmp eq i32 %cfg_zext72, %191
  %192 = icmp eq i32 %191, %191
  %icmpEq411 = icmp eq i1 %icmpEq213, %192
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext72, i32 %185, i32 35)
  %.not = icmp eq i32 %.067, 0
  %193 = icmp eq i32 %28, 0
  %icmpEq413 = icmp eq i1 %.not, %193
  %zext414 = zext i1 %icmpEq413 to i32
  call void @assert_ft(i32 %zext414, i32 35)
  %194 = select i1 %.not, i32 283116831, i32 334506507
  %195 = select i1 %193, i32 283116831, i32 334506507
  %196 = select i1 %193, i32 283116831, i32 334506507
  %icmpEq215 = icmp eq i32 %195, %196
  %197 = icmp eq i32 %196, %196
  %icmpEq415 = icmp eq i1 %icmpEq215, %197
  %zext416 = zext i1 %icmpEq415 to i32
  call void @assert_ft(i32 %zext416, i32 35)
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  %icmpEq135 = icmp eq i32 %194, %195
  %zext136 = zext i1 %icmpEq135 to i32
  %198 = zext i1 %icmpEq135 to i32
  %icmpEq417 = icmp eq i32 %zext136, %198
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  call void @assert_ft(i32 %zext136, i32 35)
  %199 = xor i32 231737884, %194
  %200 = xor i32 231737884, %195
  %icmpEq217 = icmp eq i32 %199, %200
  %201 = icmp eq i32 %200, %200
  %icmpEq419 = icmp eq i1 %icmpEq217, %201
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  br i1 %.not, label %202, label %213

202:                                              ; preds = %.lr.ph
  %cfg_DestPhi73 = phi i32 [ 231737884, %.lr.ph ]
  %203 = phi i32 [ 231737884, %.lr.ph ]
  %cfg_DiffPhi74 = phi i32 [ %199, %.lr.ph ]
  %204 = phi i32 [ %200, %.lr.ph ]
  %icmpEq423 = icmp eq i32 %cfg_DiffPhi74, %204
  %zext424 = zext i1 %icmpEq423 to i32
  call void @assert_ft(i32 %zext424, i32 35)
  %icmpEq421 = icmp eq i32 %cfg_DestPhi73, %203
  %205 = icmp eq i32 %203, %203
  %icmpEq425 = icmp eq i1 %icmpEq421, %205
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  %zext422 = zext i1 %icmpEq421 to i32
  call void @assert_ft(i32 %zext422, i32 35)
  %206 = xor i32 %cfg_DestPhi73, %cfg_DiffPhi74
  %cfg_icmpEq75 = icmp eq i32 %206, 283116831
  %207 = icmp eq i32 %206, 283116831
  %icmpEq427 = icmp eq i1 %cfg_icmpEq75, %207
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  %cfg_zext76 = zext i1 %cfg_icmpEq75 to i32
  call void @assert_cfg_ft(i32 %cfg_zext76, i32 %206, i32 35)
  %208 = getelementptr inbounds i8, ptr %.05460, i64 1
  %209 = load i8, ptr %.05460, align 1
  %210 = load i8, ptr %76, align 1
  %icmpEq429 = icmp eq i8 %209, %210
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  %211 = zext i8 %209 to i32
  %212 = lshr i32 %211, 4
  br label %213

213:                                              ; preds = %202, %.lr.ph
  %.155 = phi ptr [ %208, %202 ], [ %.05460, %.lr.ph ]
  %214 = phi ptr [ %208, %202 ], [ %76, %.lr.ph ]
  %.051.in = phi i32 [ %212, %202 ], [ %.04366, %.lr.ph ]
  %215 = phi i32 [ %212, %202 ], [ %34, %.lr.ph ]
  %.1 = phi i32 [ %211, %202 ], [ %.04366, %.lr.ph ]
  %216 = phi i32 [ %211, %202 ], [ %34, %.lr.ph ]
  %cfg_DestPhi77 = phi i32 [ 231737884, %.lr.ph ], [ 283116831, %202 ]
  %217 = phi i32 [ 231737884, %.lr.ph ], [ 283116831, %202 ]
  %cfg_DiffPhi78 = phi i32 [ %199, %.lr.ph ], [ 51392276, %202 ]
  %218 = phi i32 [ %200, %.lr.ph ], [ 51392276, %202 ]
  %icmpEq437 = icmp eq i32 %cfg_DiffPhi78, %218
  %zext438 = zext i1 %icmpEq437 to i32
  call void @assert_ft(i32 %zext438, i32 35)
  %icmpEq435 = icmp eq i32 %cfg_DestPhi77, %217
  %219 = icmp eq i32 %217, %217
  %icmpEq439 = icmp eq i1 %icmpEq435, %219
  %zext440 = zext i1 %icmpEq439 to i32
  call void @assert_ft(i32 %zext440, i32 35)
  %zext436 = zext i1 %icmpEq435 to i32
  call void @assert_ft(i32 %zext436, i32 35)
  %icmpEq433 = icmp eq i32 %.1, %216
  %zext434 = zext i1 %icmpEq433 to i32
  %220 = zext i1 %icmpEq433 to i32
  %icmpEq441 = icmp eq i32 %zext434, %220
  %zext442 = zext i1 %icmpEq441 to i32
  call void @assert_ft(i32 %zext442, i32 35)
  call void @assert_ft(i32 %zext434, i32 35)
  %icmpEq431 = icmp eq i32 %.051.in, %215
  %zext432 = zext i1 %icmpEq431 to i32
  call void @assert_ft(i32 %zext432, i32 35)
  %221 = xor i32 %cfg_DestPhi77, %cfg_DiffPhi78
  %222 = xor i32 %217, %218
  %icmpEq443 = icmp eq i32 %221, %222
  %zext444 = zext i1 %icmpEq443 to i32
  call void @assert_ft(i32 %zext444, i32 35)
  %cfg_icmpEq79 = icmp eq i32 %221, 334506507
  %cfg_zext80 = zext i1 %cfg_icmpEq79 to i32
  call void @assert_cfg_ft(i32 %cfg_zext80, i32 %221, i32 35)
  %.051 = and i32 %.051.in, 15
  %223 = and i32 %215, 15
  %icmpEq445 = icmp eq i32 %.051, %223
  %zext446 = zext i1 %icmpEq445 to i32
  call void @assert_ft(i32 %zext446, i32 35)
  %224 = xor i32 %.067, 1
  %225 = zext i32 %.051 to i64
  %226 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %225
  %227 = load i32, ptr %226, align 4
  %228 = load i32, ptr %226, align 4
  %icmpEq447 = icmp eq i32 %227, %228
  %zext448 = zext i1 %icmpEq447 to i32
  call void @assert_ft(i32 %zext448, i32 35)
  %229 = add nsw i32 %227, %.04465
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %229, i32 0)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 88)
  %230 = and i32 %.051.in, 8
  %231 = and i32 %215, 8
  %icmpEq449 = icmp eq i32 %230, %231
  %zext450 = zext i1 %icmpEq449 to i32
  call void @assert_ft(i32 %zext450, i32 35)
  %232 = ashr i32 %.05063, 3
  %233 = and i32 %.051.in, 4
  %.not56 = icmp eq i32 %233, 0
  %234 = select i1 %.not56, i32 0, i32 %.05063
  %235 = select i1 %.not56, i32 0, i32 %55
  %icmpEq451 = icmp eq i32 %234, %235
  %zext452 = zext i1 %icmpEq451 to i32
  call void @assert_ft(i32 %zext452, i32 35)
  %spec.select = add nsw i32 %234, %232
  %236 = and i32 %.051.in, 2
  %.not57 = icmp eq i32 %236, 0
  %237 = ashr i32 %.05063, 1
  %238 = ashr i32 %55, 1
  %icmpEq453 = icmp eq i32 %237, %238
  %zext454 = zext i1 %icmpEq453 to i32
  call void @assert_ft(i32 %zext454, i32 35)
  %239 = select i1 %.not57, i32 0, i32 %237
  %.146 = add nsw i32 %spec.select, %239
  %240 = and i32 %.051.in, 1
  %.not58 = icmp eq i32 %240, 0
  %241 = icmp eq i32 %240, 0
  %icmpEq455 = icmp eq i1 %.not58, %241
  %zext456 = zext i1 %icmpEq455 to i32
  call void @assert_ft(i32 %zext456, i32 35)
  %242 = ashr i32 %.05063, 2
  %243 = select i1 %.not58, i32 0, i32 %242
  %.2 = add nsw i32 %.146, %243
  %.not59 = icmp eq i32 %230, 0
  %244 = icmp eq i32 %231, 0
  %icmpEq457 = icmp eq i1 %.not59, %244
  %zext458 = zext i1 %icmpEq457 to i32
  call void @assert_ft(i32 %zext458, i32 35)
  %245 = sub i32 0, %.2
  %.148.p = select i1 %.not59, i32 %.2, i32 %245
  %.148 = add i32 %.148.p, %.04764
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %.148, i32 -32768)
  %.249 = tail call i32 @llvm.smin.i32(i32 %spec.store.select1, i32 32767)
  %246 = zext i32 %spec.store.select2 to i64
  %247 = zext i32 %spec.store.select2 to i64
  %icmpEq459 = icmp eq i64 %246, %247
  %zext460 = zext i1 %icmpEq459 to i32
  call void @assert_ft(i32 %zext460, i32 35)
  %248 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %246
  %249 = load i32, ptr %248, align 4
  %250 = trunc i32 %.249 to i16
  %251 = getelementptr inbounds i16, ptr %.05361, i64 1
  %252 = getelementptr inbounds i16, ptr %69, i64 1
  store i16 %250, ptr %.05361, align 2
  %253 = add nsw i32 %.05262, -1
  %254 = add nsw i32 %62, -1
  %icmpEq461 = icmp eq i32 %253, %254
  %zext462 = zext i1 %icmpEq461 to i32
  call void @assert_ft(i32 %zext462, i32 35)
  %255 = icmp sgt i32 %.05262, 1
  %256 = select i1 %255, i32 231737884, i32 385876506
  %257 = xor i32 334506507, %256
  br i1 %255, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %213
  %cfg_DestPhi81 = phi i32 [ 334506507, %213 ]
  %258 = phi i32 [ 334506507, %213 ]
  %cfg_DiffPhi82 = phi i32 [ %257, %213 ]
  %259 = phi i32 [ %257, %213 ]
  %icmpEq465 = icmp eq i32 %cfg_DiffPhi82, %259
  %zext466 = zext i1 %icmpEq465 to i32
  call void @assert_ft(i32 %zext466, i32 35)
  %icmpEq463 = icmp eq i32 %cfg_DestPhi81, %258
  %260 = icmp eq i32 %258, %258
  %icmpEq467 = icmp eq i1 %icmpEq463, %260
  %zext468 = zext i1 %icmpEq467 to i32
  call void @assert_ft(i32 %zext468, i32 35)
  %zext464 = zext i1 %icmpEq463 to i32
  call void @assert_ft(i32 %zext464, i32 35)
  %261 = xor i32 %cfg_DestPhi81, %cfg_DiffPhi82
  %cfg_icmpEq83 = icmp eq i32 %261, 385876506
  %262 = icmp eq i32 %261, 385876506
  %icmpEq469 = icmp eq i1 %cfg_icmpEq83, %262
  %zext470 = zext i1 %icmpEq469 to i32
  call void @assert_ft(i32 %zext470, i32 35)
  %cfg_zext84 = zext i1 %cfg_icmpEq83 to i32
  call void @assert_cfg_ft(i32 %cfg_zext84, i32 %261, i32 35)
  %263 = trunc i32 %spec.store.select2 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %4
  %.pre-phi = phi i16 [ %250, %._crit_edge.loopexit ], [ %5, %4 ]
  %264 = phi i16 [ %250, %._crit_edge.loopexit ], [ %6, %4 ]
  %.044.lcssa = phi i8 [ %263, %._crit_edge.loopexit ], [ %10, %4 ]
  %265 = phi i8 [ %263, %._crit_edge.loopexit ], [ %11, %4 ]
  %cfg_DestPhi85 = phi i32 [ 128976145, %4 ], [ 385876506, %._crit_edge.loopexit ]
  %266 = phi i32 [ 128976145, %4 ], [ 385876506, %._crit_edge.loopexit ]
  %cfg_DiffPhi86 = phi i32 [ %16, %4 ], [ 219154194, %._crit_edge.loopexit ]
  %267 = phi i32 [ %16, %4 ], [ 219154194, %._crit_edge.loopexit ]
  %icmpEq477 = icmp eq i32 %cfg_DiffPhi86, %267
  %zext478 = zext i1 %icmpEq477 to i32
  call void @assert_ft(i32 %zext478, i32 35)
  %icmpEq475 = icmp eq i32 %cfg_DestPhi85, %266
  %268 = icmp eq i32 %266, %266
  %icmpEq479 = icmp eq i1 %icmpEq475, %268
  %zext480 = zext i1 %icmpEq479 to i32
  call void @assert_ft(i32 %zext480, i32 35)
  %zext476 = zext i1 %icmpEq475 to i32
  call void @assert_ft(i32 %zext476, i32 35)
  %icmpEq473 = icmp eq i8 %.044.lcssa, %265
  %zext474 = zext i1 %icmpEq473 to i32
  %269 = zext i1 %icmpEq473 to i32
  %icmpEq481 = icmp eq i32 %zext474, %269
  %zext482 = zext i1 %icmpEq481 to i32
  call void @assert_ft(i32 %zext482, i32 35)
  call void @assert_ft(i32 %zext474, i32 35)
  %icmpEq471 = icmp eq i16 %.pre-phi, %264
  %zext472 = zext i1 %icmpEq471 to i32
  call void @assert_ft(i32 %zext472, i32 35)
  %270 = xor i32 %cfg_DestPhi85, %cfg_DiffPhi86
  %271 = xor i32 %266, %267
  %icmpEq483 = icmp eq i32 %270, %271
  %zext484 = zext i1 %icmpEq483 to i32
  call void @assert_ft(i32 %zext484, i32 35)
  %cfg_icmpEq87 = icmp eq i32 %270, 437257480
  %cfg_zext88 = zext i1 %cfg_icmpEq87 to i32
  call void @assert_cfg_ft(i32 %cfg_zext88, i32 %270, i32 35)
  store i16 %.pre-phi, ptr %3, align 2
  store i8 %.044.lcssa, ptr %8, align 2
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @abuf, i32 noundef 500) #7
  %2 = icmp slt i32 %1, 0
  %3 = icmp slt i32 %1, 0
  %icmpEq = icmp eq i1 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %2, i32 180355853, i32 231736065
  %5 = xor i32 128975641, %4
  br i1 %2, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %79, %0
  %cfg_DestPhi = phi i32 [ 283117348, %79 ], [ 128975641, %0 ]
  %6 = phi i32 [ 283117348, %79 ], [ 128975641, %0 ]
  %cfg_DiffPhi = phi i32 [ %107, %79 ], [ %5, %0 ]
  %7 = phi i32 [ %107, %79 ], [ %5, %0 ]
  %icmpEq18 = icmp eq i32 %cfg_DiffPhi, %7
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq20 = icmp eq i1 %icmpEq16, %8
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180355853
  %10 = icmp eq i32 %9, 180355853
  %icmpEq22 = icmp eq i1 %cfg_icmpEq, %10
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  tail call void @perror(ptr noundef nonnull @.str) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable

.lr.ph:                                           ; preds = %79, %0
  %11 = phi i32 [ %101, %79 ], [ %1, %0 ]
  %12 = phi i32 [ %101, %79 ], [ %1, %0 ]
  %13 = phi i32 [ %101, %79 ], [ %1, %0 ]
  %14 = phi i32 [ %101, %79 ], [ %1, %0 ]
  %15 = phi i32 [ %101, %79 ], [ %1, %0 ]
  %16 = phi i32 [ %101, %79 ], [ %1, %0 ]
  %cfg_DestPhi4 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %17 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %18 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %19 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %20 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %21 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %22 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %23 = phi i32 [ 128975641, %0 ], [ 283117348, %79 ]
  %cfg_DiffPhi5 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %24 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %25 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %26 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %27 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %28 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %29 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %30 = phi i32 [ %5, %0 ], [ %107, %79 ]
  %icmpEq90 = icmp eq i32 %29, %30
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %icmpEq88 = icmp eq i32 %27, %28
  %31 = icmp eq i32 %28, %28
  %icmpEq92 = icmp eq i1 %icmpEq88, %31
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %icmpEq86 = icmp eq i32 %25, %26
  %zext87 = zext i1 %icmpEq86 to i32
  %32 = zext i1 %icmpEq86 to i32
  %icmpEq94 = icmp eq i32 %zext87, %32
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  call void @assert_ft(i32 %zext87, i32 35)
  %icmpEq84 = icmp eq i32 %cfg_DiffPhi5, %24
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i32 %22, %23
  %33 = icmp eq i32 %23, %23
  %icmpEq96 = icmp eq i1 %icmpEq82, %33
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %icmpEq80 = icmp eq i32 %20, %21
  %zext81 = zext i1 %icmpEq80 to i32
  %34 = zext i1 %icmpEq80 to i32
  %icmpEq98 = icmp eq i32 %zext81, %34
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  call void @assert_ft(i32 %zext81, i32 35)
  %icmpEq78 = icmp eq i32 %18, %19
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %icmpEq76 = icmp eq i32 %cfg_DestPhi4, %17
  %35 = icmp eq i32 %17, %17
  %icmpEq100 = icmp eq i1 %icmpEq76, %35
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %icmpEq74 = icmp eq i32 %15, %16
  %zext75 = zext i1 %icmpEq74 to i32
  %36 = zext i1 %icmpEq74 to i32
  %icmpEq102 = icmp eq i32 %zext75, %36
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq72 = icmp eq i32 %13, %14
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %icmpEq70 = icmp eq i32 %11, %12
  %37 = icmp eq i32 %12, %12
  %icmpEq104 = icmp eq i1 %icmpEq70, %37
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %icmpEq46 = icmp eq i32 %27, %29
  %zext47 = zext i1 %icmpEq46 to i32
  %38 = zext i1 %icmpEq46 to i32
  %icmpEq106 = icmp eq i32 %zext47, %38
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  call void @assert_ft(i32 %zext47, i32 35)
  %icmpEq44 = icmp eq i32 %cfg_DiffPhi5, %25
  %39 = icmp eq i32 %24, %26
  %icmpEq48 = icmp eq i1 %icmpEq44, %39
  %40 = icmp eq i1 %39, %39
  %icmpEq108 = icmp eq i1 %icmpEq48, %40
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq42 = icmp eq i32 %20, %22
  %41 = icmp eq i32 %21, %23
  %icmpEq110 = icmp eq i1 %icmpEq42, %41
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  %42 = zext i1 %41 to i32
  %icmpEq50 = icmp eq i32 %zext43, %42
  %zext51 = zext i1 %icmpEq50 to i32
  %43 = zext i1 %icmpEq50 to i32
  %icmpEq112 = icmp eq i32 %zext51, %43
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  call void @assert_ft(i32 %zext51, i32 35)
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %cfg_DestPhi4, %18
  %zext41 = zext i1 %icmpEq40 to i32
  %44 = zext i1 %icmpEq40 to i32
  %icmpEq114 = icmp eq i32 %zext41, %44
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %13, %15
  %45 = icmp eq i32 %14, %16
  %icmpEq52 = icmp eq i1 %icmpEq38, %45
  %46 = icmp eq i1 %45, %45
  %icmpEq116 = icmp eq i1 %icmpEq52, %46
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %icmpEq28 = icmp eq i32 %cfg_DiffPhi5, %27
  %47 = icmp eq i32 %24, %28
  %icmpEq118 = icmp eq i1 %icmpEq28, %47
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  %48 = zext i1 %47 to i32
  %icmpEq54 = icmp eq i32 %zext29, %48
  %zext55 = zext i1 %icmpEq54 to i32
  %49 = zext i1 %icmpEq54 to i32
  %icmpEq120 = icmp eq i32 %zext55, %49
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  call void @assert_ft(i32 %zext55, i32 35)
  call void @assert_ft(i32 %zext29, i32 35)
  %icmpEq26 = icmp eq i32 %cfg_DestPhi4, %20
  %50 = icmp eq i32 %17, %21
  %51 = icmp eq i32 %17, %21
  %icmpEq122 = icmp eq i1 %50, %51
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %icmpEq30 = icmp eq i1 %icmpEq26, %50
  %52 = icmp eq i1 %50, %51
  %icmpEq56 = icmp eq i1 %icmpEq30, %52
  %zext57 = zext i1 %icmpEq56 to i32
  %53 = zext i1 %icmpEq56 to i32
  %icmpEq124 = icmp eq i32 %zext57, %53
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  call void @assert_ft(i32 %zext57, i32 35)
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %zext27 = zext i1 %icmpEq26 to i32
  %54 = zext i1 %50 to i32
  %icmpEq126 = icmp eq i32 %zext27, %54
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  call void @assert_ft(i32 %zext27, i32 35)
  %icmpEq24 = icmp eq i32 %11, %13
  %55 = icmp eq i32 %12, %14
  %icmpEq58 = icmp eq i1 %icmpEq24, %55
  %56 = icmp eq i1 %55, %55
  %icmpEq128 = icmp eq i1 %icmpEq58, %56
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  %57 = zext i1 %55 to i32
  %58 = zext i1 %55 to i32
  %icmpEq130 = icmp eq i32 %57, %58
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %icmpEq32 = icmp eq i32 %zext25, %57
  %zext33 = zext i1 %icmpEq32 to i32
  %59 = zext i1 %icmpEq32 to i32
  %icmpEq60 = icmp eq i32 %zext33, %59
  %60 = icmp eq i32 %59, %59
  %icmpEq132 = icmp eq i1 %icmpEq60, %60
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  call void @assert_ft(i32 %zext33, i32 35)
  call void @assert_ft(i32 %zext25, i32 35)
  %61 = xor i32 %cfg_DestPhi4, %cfg_DiffPhi5
  %62 = xor i32 %17, %24
  %icmpEq134 = icmp eq i32 %61, %62
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %cfg_icmpEq6 = icmp eq i32 %61, 231736065
  %63 = icmp eq i32 %62, 231736065
  %icmpEq62 = icmp eq i1 %cfg_icmpEq6, %63
  %zext63 = zext i1 %icmpEq62 to i32
  %64 = zext i1 %icmpEq62 to i32
  %icmpEq136 = icmp eq i32 %zext63, %64
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  call void @assert_ft(i32 %zext63, i32 35)
  %cfg_zext7 = zext i1 %cfg_icmpEq6 to i32
  %65 = zext i1 %63 to i32
  %icmpEq34 = icmp eq i32 %cfg_zext7, %65
  %66 = icmp eq i32 %65, %65
  %icmpEq138 = icmp eq i1 %icmpEq34, %66
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %zext35 = zext i1 %icmpEq34 to i32
  %67 = zext i1 %66 to i32
  %icmpEq64 = icmp eq i32 %zext35, %67
  %zext65 = zext i1 %icmpEq64 to i32
  %68 = zext i1 %icmpEq64 to i32
  %icmpEq140 = icmp eq i32 %zext65, %68
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  call void @assert_ft(i32 %zext65, i32 35)
  call void @assert_ft(i32 %zext35, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext7, i32 %61, i32 35)
  %69 = icmp eq i32 %11, 0
  %70 = icmp eq i32 %12, 0
  %icmpEq142 = icmp eq i1 %69, %70
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %71 = select i1 %69, i32 334497817, i32 283117348
  %72 = select i1 %70, i32 334497817, i32 283117348
  %icmpEq66 = icmp eq i32 %71, %72
  %zext67 = zext i1 %icmpEq66 to i32
  %73 = zext i1 %icmpEq66 to i32
  %icmpEq144 = icmp eq i32 %zext67, %73
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  call void @assert_ft(i32 %zext67, i32 35)
  %74 = xor i32 231736065, %71
  %75 = xor i32 231736065, %72
  %icmpEq36 = icmp eq i32 %74, %75
  %76 = icmp eq i32 %75, %75
  %icmpEq146 = icmp eq i1 %icmpEq36, %76
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  %zext37 = zext i1 %icmpEq36 to i32
  %77 = zext i1 %76 to i32
  %icmpEq68 = icmp eq i32 %zext37, %77
  %zext69 = zext i1 %icmpEq68 to i32
  %78 = zext i1 %icmpEq68 to i32
  %icmpEq148 = icmp eq i32 %zext69, %78
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  call void @assert_ft(i32 %zext69, i32 35)
  call void @assert_ft(i32 %zext37, i32 35)
  br i1 %69, label %108, label %79

79:                                               ; preds = %.lr.ph
  %cfg_DestPhi8 = phi i32 [ 231736065, %.lr.ph ]
  %80 = phi i32 [ 231736065, %.lr.ph ]
  %81 = phi i32 [ 231736065, %.lr.ph ]
  %82 = phi i32 [ 231736065, %.lr.ph ]
  %cfg_DiffPhi9 = phi i32 [ %74, %.lr.ph ]
  %83 = phi i32 [ %75, %.lr.ph ]
  %84 = phi i32 [ %74, %.lr.ph ]
  %85 = phi i32 [ %75, %.lr.ph ]
  %icmpEq168 = icmp eq i32 %84, %85
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq166 = icmp eq i32 %cfg_DiffPhi9, %83
  %86 = icmp eq i32 %83, %83
  %icmpEq170 = icmp eq i1 %icmpEq166, %86
  %zext171 = zext i1 %icmpEq170 to i32
  call void @assert_ft(i32 %zext171, i32 35)
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %icmpEq164 = icmp eq i32 %81, %82
  %zext165 = zext i1 %icmpEq164 to i32
  %87 = zext i1 %icmpEq164 to i32
  %icmpEq172 = icmp eq i32 %zext165, %87
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq162 = icmp eq i32 %cfg_DestPhi8, %80
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %icmpEq152 = icmp eq i32 %cfg_DiffPhi9, %84
  %88 = icmp eq i32 %83, %85
  %icmpEq174 = icmp eq i1 %icmpEq152, %88
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %icmpEq150 = icmp eq i32 %cfg_DestPhi8, %81
  %89 = icmp eq i32 %80, %82
  %90 = icmp eq i32 %80, %82
  %icmpEq176 = icmp eq i1 %89, %90
  %zext177 = zext i1 %icmpEq176 to i32
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq154 = icmp eq i1 %icmpEq150, %89
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %zext151 = zext i1 %icmpEq150 to i32
  %91 = zext i1 %89 to i32
  %icmpEq178 = icmp eq i32 %zext151, %91
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  call void @assert_ft(i32 %zext151, i32 35)
  %92 = xor i32 %cfg_DestPhi8, %cfg_DiffPhi9
  %cfg_icmpEq10 = icmp eq i32 %92, 283117348
  %93 = icmp eq i32 %92, 283117348
  %94 = icmp eq i32 %92, 283117348
  %icmpEq180 = icmp eq i1 %93, %94
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %icmpEq156 = icmp eq i1 %cfg_icmpEq10, %93
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %cfg_zext11 = zext i1 %cfg_icmpEq10 to i32
  %95 = zext i1 %93 to i32
  %icmpEq182 = icmp eq i32 %cfg_zext11, %95
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext11, i32 %92, i32 35)
  %96 = shl nuw nsw i32 %11, 1
  tail call void @adpcm_decoder(ptr noundef nonnull @abuf, ptr noundef nonnull @sbuf, i32 noundef %96, ptr noundef nonnull @state)
  %97 = shl nsw i32 %11, 2
  %98 = shl nsw i32 %12, 2
  %icmpEq184 = icmp eq i32 %97, %98
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  %99 = shl nsw i32 %11, 2
  %icmpEq158 = icmp eq i32 %97, %99
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  %100 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 1, ptr noundef nonnull @sbuf, i32 noundef %97) #7
  %101 = tail call i32 (i32, ptr, i32, ...) @read(i32 noundef 0, ptr noundef nonnull @abuf, i32 noundef 500) #7
  %102 = icmp slt i32 %101, 0
  %103 = icmp slt i32 %101, 0
  %icmpEq186 = icmp eq i1 %102, %103
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %104 = select i1 %102, i32 180355853, i32 231736065
  %105 = select i1 %103, i32 180355853, i32 231736065
  %icmpEq160 = icmp eq i32 %104, %105
  %zext161 = zext i1 %icmpEq160 to i32
  %106 = zext i1 %icmpEq160 to i32
  %icmpEq188 = icmp eq i32 %zext161, %106
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  call void @assert_ft(i32 %zext161, i32 35)
  %107 = xor i32 283117348, %104
  br i1 %102, label %._crit_edge, label %.lr.ph

108:                                              ; preds = %.lr.ph
  %cfg_DestPhi12 = phi i32 [ 231736065, %.lr.ph ]
  %109 = phi i32 [ 231736065, %.lr.ph ]
  %cfg_DiffPhi13 = phi i32 [ %74, %.lr.ph ]
  %110 = phi i32 [ %75, %.lr.ph ]
  %icmpEq192 = icmp eq i32 %cfg_DiffPhi13, %110
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %icmpEq190 = icmp eq i32 %cfg_DestPhi12, %109
  %111 = icmp eq i32 %109, %109
  %icmpEq194 = icmp eq i1 %icmpEq190, %111
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %112 = xor i32 %cfg_DestPhi12, %cfg_DiffPhi13
  %cfg_icmpEq14 = icmp eq i32 %112, 334497817
  %113 = icmp eq i32 %112, 334497817
  %icmpEq196 = icmp eq i1 %cfg_icmpEq14, %113
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %cfg_zext15 = zext i1 %cfg_icmpEq14 to i32
  call void @assert_cfg_ft(i32 %cfg_zext15, i32 %112, i32 35)
  %114 = load ptr, ptr @stderr, align 8
  %115 = load i16, ptr @state, align 2
  %116 = load i16, ptr @state, align 2
  %icmpEq198 = icmp eq i16 %115, %116
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %117 = sext i16 %115 to i32
  %118 = load i8, ptr getelementptr inbounds (%struct.adpcm_state, ptr @state, i64 0, i32 1), align 2
  %119 = sext i8 %118 to i32
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.1, i32 noundef %117, i32 noundef %119) #8
  tail call void @exit(i32 noundef 0) #9
  unreachable
}

declare i32 @read(...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @write(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

declare void @exit.1(i32, ...)

declare i32 @printf(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @0, i32 %1)
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
  %assertcheck = call i32 (ptr, i32, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
