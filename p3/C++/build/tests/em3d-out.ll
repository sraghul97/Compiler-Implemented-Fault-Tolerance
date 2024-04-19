; ModuleID = 'em3d-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node_t = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.graph_t = type { [64 x ptr], [64 x ptr] }

@.str = private unnamed_addr constant [47 x i8] c"Hello world--Doing em3d with args %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"nonlocals = %d\0A\00", align 1
@nonlocals = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.1.8 = private unnamed_addr constant [56 x i8] c"/ece566/wtest/../wolfbench/Benchmarks/em3d/make_graph.c\00", align 1
@__MyNodeId = dso_local local_unnamed_addr global i32 0, align 4
@IDMASK = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error! on dest %d @ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"pre other_node = 0x%x,number = %d,dest = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error! no to_nodes filed on 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"post other_node = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"node 0x%x list 0x%x count %d\0A\00", align 1
@percentcheck = internal unnamed_addr global i32 0, align 4
@numlocal = internal unnamed_addr global i32 0, align 4
@.str.24 = private unnamed_addr constant [29 x i8] c"percentcheck=%d,numlocal=%d\0A\00", align 1
@DebugFlag = dso_local local_unnamed_addr global i32 0, align 4
@__NumNodes = dso_local local_unnamed_addr global i32 0, align 4
@n_nodes = dso_local local_unnamed_addr global i32 0, align 4
@d_nodes = dso_local local_unnamed_addr global i32 0, align 4
@local_p = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [22 x i8] c"Uncaught malloc error\00", align 1
@str.1 = private unnamed_addr constant [20 x i8] c"Help! no from count\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"Help!!\00", align 1
@str.3 = private unnamed_addr constant [15 x i8] c"making tables \00", align 1
@str.4 = private unnamed_addr constant [17 x i8] c"making neighbors\00", align 1
@str.5 = private unnamed_addr constant [25 x i8] c"updating from and coeffs\00", align 1
@str.6 = private unnamed_addr constant [20 x i8] c"filling from fields\00", align 1
@str.7 = private unnamed_addr constant [30 x i8] c"localizing coeffs, from_nodes\00", align 1
@str.8 = private unnamed_addr constant [23 x i8] c"cleanup for return now\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_nodes(ptr noundef readonly %0) local_unnamed_addr #0 {
  %.not55 = icmp eq ptr %0, null
  %2 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not55, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = select i1 %.not55, i32 899678474, i32 180355605
  %4 = xor i32 128975389, %3
  br i1 %.not55, label %._crit_edge60, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975389, %1 ]
  %5 = phi i32 [ 128975389, %1 ]
  %cfg_DiffPhi = phi i32 [ %4, %1 ]
  %6 = phi i32 [ %4, %1 ]
  %icmpEq121 = icmp eq i32 %cfg_DiffPhi, %6
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq119 = icmp eq i32 %cfg_DestPhi, %5
  %7 = icmp eq i32 %5, %5
  %icmpEq123 = icmp eq i1 %icmpEq119, %7
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %8 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %8, 180355605
  %9 = icmp eq i32 %8, 180355605
  %icmpEq125 = icmp eq i1 %cfg_icmpEq, %9
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %8, i32 35)
  %nonlocals.promoted47 = load i32, ptr @nonlocals, align 4
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %225, %.lr.ph59.preheader
  %.057 = phi ptr [ %235, %225 ], [ %0, %.lr.ph59.preheader ]
  %10 = phi ptr [ %235, %225 ], [ %0, %.lr.ph59.preheader ]
  %11 = phi ptr [ %235, %225 ], [ %0, %.lr.ph59.preheader ]
  %nonlocals.promoted5456 = phi i32 [ %nonlocals.promoted48, %225 ], [ %nonlocals.promoted47, %.lr.ph59.preheader ]
  %12 = phi i32 [ %nonlocals.promoted48, %225 ], [ %nonlocals.promoted47, %.lr.ph59.preheader ]
  %13 = phi i32 [ %nonlocals.promoted48, %225 ], [ %nonlocals.promoted47, %.lr.ph59.preheader ]
  %14 = phi i32 [ %nonlocals.promoted48, %225 ], [ %nonlocals.promoted47, %.lr.ph59.preheader ]
  %cfg_DestPhi63 = phi i32 [ 180355605, %.lr.ph59.preheader ], [ 848299800, %225 ]
  %15 = phi i32 [ 180355605, %.lr.ph59.preheader ], [ 848299800, %225 ]
  %16 = phi i32 [ 180355605, %.lr.ph59.preheader ], [ 848299800, %225 ]
  %17 = phi i32 [ 180355605, %.lr.ph59.preheader ], [ 848299800, %225 ]
  %cfg_DiffPhi64 = phi i32 [ 118491926, %.lr.ph59.preheader ], [ %239, %225 ]
  %18 = phi i32 [ 118491926, %.lr.ph59.preheader ], [ %239, %225 ]
  %19 = phi i32 [ 118491926, %.lr.ph59.preheader ], [ %239, %225 ]
  %20 = phi i32 [ 118491926, %.lr.ph59.preheader ], [ %239, %225 ]
  %icmpEq153 = icmp eq i32 %19, %20
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %icmpEq151 = icmp eq i32 %cfg_DiffPhi64, %18
  %21 = icmp eq i32 %18, %18
  %icmpEq155 = icmp eq i1 %icmpEq151, %21
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq149 = icmp eq i32 %16, %17
  %zext150 = zext i1 %icmpEq149 to i32
  %22 = zext i1 %icmpEq149 to i32
  %icmpEq157 = icmp eq i32 %zext150, %22
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  call void @assert_ft(i32 %zext150, i32 35)
  %icmpEq147 = icmp eq i32 %cfg_DestPhi63, %15
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %icmpEq145 = icmp eq i32 %13, %14
  %23 = icmp eq i32 %14, %14
  %icmpEq159 = icmp eq i1 %icmpEq145, %23
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %icmpEq143 = icmp eq i32 %nonlocals.promoted5456, %12
  %zext144 = zext i1 %icmpEq143 to i32
  %24 = zext i1 %icmpEq143 to i32
  %icmpEq161 = icmp eq i32 %zext144, %24
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq131 = icmp eq i32 %cfg_DiffPhi64, %19
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %icmpEq129 = icmp eq i32 %cfg_DestPhi63, %16
  %25 = icmp eq i32 %15, %17
  %icmpEq163 = icmp eq i1 %icmpEq129, %25
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %26 = icmp eq i32 %cfg_DestPhi63, %16
  %icmpEq133 = icmp eq i1 %icmpEq129, %26
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %zext130 = zext i1 %icmpEq129 to i32
  %27 = zext i1 %25 to i32
  %icmpEq165 = icmp eq i32 %zext130, %27
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  call void @assert_ft(i32 %zext130, i32 35)
  %icmpEq127 = icmp eq i32 %nonlocals.promoted5456, %13
  %zext128 = zext i1 %icmpEq127 to i32
  %28 = zext i1 %icmpEq127 to i32
  %29 = zext i1 %icmpEq127 to i32
  %icmpEq167 = icmp eq i32 %28, %29
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %icmpEq135 = icmp eq i32 %zext128, %28
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  call void @assert_ft(i32 %zext128, i32 35)
  %30 = xor i32 %cfg_DestPhi63, %cfg_DiffPhi64
  %31 = xor i32 %15, %18
  %icmpEq169 = icmp eq i32 %30, %31
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %cfg_icmpEq65 = icmp eq i32 %30, 231737603
  %cfg_zext66 = zext i1 %cfg_icmpEq65 to i32
  %32 = zext i1 %cfg_icmpEq65 to i32
  %icmpEq137 = icmp eq i32 %cfg_zext66, %32
  %33 = icmp eq i32 %32, %32
  %icmpEq171 = icmp eq i1 %icmpEq137, %33
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext66, i32 %30, i32 35)
  %34 = load ptr, ptr %.057, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = load double, ptr %34, align 8
  %37 = load double, ptr %35, align 8
  %38 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 5
  %39 = getelementptr inbounds %struct.node_t, ptr %10, i64 0, i32 5
  %40 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 5
  %41 = getelementptr inbounds %struct.node_t, ptr %10, i64 0, i32 5
  %42 = load i32, ptr %38, align 8
  %43 = load i32, ptr %39, align 8
  %icmpEq173 = icmp eq i32 %42, %43
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %44 = load i32, ptr %38, align 8
  %icmpEq139 = icmp eq i32 %42, %44
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  %45 = add nsw i32 %42, -1
  %46 = add nsw i32 %43, -1
  %icmpEq175 = icmp eq i32 %45, %46
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %47 = icmp sgt i32 %42, 1
  %48 = select i1 %47, i32 283117071, i32 642778370
  %49 = xor i32 231737603, %48
  %50 = xor i32 231737603, %48
  %51 = xor i32 231737603, %48
  %icmpEq177 = icmp eq i32 %50, %51
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %icmpEq141 = icmp eq i32 %49, %50
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  br i1 %47, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph59
  %cfg_DestPhi67 = phi i32 [ 231737603, %.lr.ph59 ]
  %52 = phi i32 [ 231737603, %.lr.ph59 ]
  %cfg_DiffPhi68 = phi i32 [ %49, %.lr.ph59 ]
  %53 = phi i32 [ %50, %.lr.ph59 ]
  %icmpEq181 = icmp eq i32 %cfg_DiffPhi68, %53
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %icmpEq179 = icmp eq i32 %cfg_DestPhi67, %52
  %54 = icmp eq i32 %52, %52
  %icmpEq183 = icmp eq i1 %icmpEq179, %54
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %55 = xor i32 %cfg_DestPhi67, %cfg_DiffPhi68
  %cfg_icmpEq69 = icmp eq i32 %55, 283117071
  %56 = icmp eq i32 %55, 283117071
  %icmpEq185 = icmp eq i1 %cfg_icmpEq69, %56
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %cfg_zext70 = zext i1 %cfg_icmpEq69 to i32
  call void @assert_cfg_ft(i32 %cfg_zext70, i32 %55, i32 35)
  %57 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 3
  %58 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 4
  %59 = getelementptr inbounds %struct.node_t, ptr %10, i64 0, i32 4
  %60 = zext i32 %45 to i64
  %61 = zext i32 %46 to i64
  %icmpEq187 = icmp eq i64 %60, %61
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %.pre = load ptr, ptr %57, align 8
  %.pre62 = load ptr, ptr %58, align 8
  br label %62

62:                                               ; preds = %148, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %148 ]
  %63 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %148 ]
  %nonlocals.promoted53 = phi i32 [ %nonlocals.promoted5456, %.lr.ph ], [ %nonlocals.promoted51, %148 ]
  %64 = phi i32 [ %12, %.lr.ph ], [ %nonlocals.promoted51, %148 ]
  %.03845 = phi double [ %36, %.lr.ph ], [ %160, %148 ]
  %65 = phi double [ %37, %.lr.ph ], [ %160, %148 ]
  %66 = phi i32 [ %nonlocals.promoted5456, %.lr.ph ], [ %150, %148 ]
  %67 = phi i32 [ %12, %.lr.ph ], [ %150, %148 ]
  %cfg_DestPhi71 = phi i32 [ 283117071, %.lr.ph ], [ 540018439, %148 ]
  %68 = phi i32 [ 283117071, %.lr.ph ], [ 540018439, %148 ]
  %cfg_DiffPhi72 = phi i32 [ 51383321, %.lr.ph ], [ %164, %148 ]
  %69 = phi i32 [ 51383321, %.lr.ph ], [ %164, %148 ]
  %icmpEq197 = icmp eq i32 %cfg_DiffPhi72, %69
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %icmpEq195 = icmp eq i32 %cfg_DestPhi71, %68
  %70 = icmp eq i32 %68, %68
  %icmpEq199 = icmp eq i1 %icmpEq195, %70
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %icmpEq193 = icmp eq i32 %66, %67
  %zext194 = zext i1 %icmpEq193 to i32
  %71 = zext i1 %icmpEq193 to i32
  %icmpEq201 = icmp eq i32 %zext194, %71
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  call void @assert_ft(i32 %zext194, i32 35)
  %icmpEq191 = icmp eq i32 %nonlocals.promoted53, %64
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %icmpEq189 = icmp eq i64 %indvars.iv, %63
  %72 = icmp eq i64 %63, %63
  %icmpEq203 = icmp eq i1 %icmpEq189, %72
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %73 = xor i32 %cfg_DestPhi71, %cfg_DiffPhi72
  %cfg_icmpEq73 = icmp eq i32 %73, 334498326
  %74 = icmp eq i32 %73, 334498326
  %icmpEq205 = icmp eq i1 %cfg_icmpEq73, %74
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  %cfg_zext74 = zext i1 %cfg_icmpEq73 to i32
  call void @assert_cfg_ft(i32 %cfg_zext74, i32 %73, i32 35)
  %75 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv
  %76 = load ptr, ptr %75, align 8
  %77 = load ptr, ptr %75, align 8
  %78 = getelementptr inbounds double, ptr %.pre62, i64 %indvars.iv
  %79 = getelementptr inbounds double, ptr %.pre62, i64 %63
  %80 = load double, ptr %78, align 8
  %81 = load double, ptr %79, align 8
  %.not42 = icmp eq ptr %76, null
  %82 = icmp eq ptr %77, null
  %icmpEq207 = icmp eq i1 %.not42, %82
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %83 = select i1 %.not42, i32 385876738, i32 437258768
  %84 = xor i32 334498326, %83
  br i1 %.not42, label %85, label %92

85:                                               ; preds = %62
  %cfg_DestPhi75 = phi i32 [ 334498326, %62 ]
  %86 = phi i32 [ 334498326, %62 ]
  %cfg_DiffPhi76 = phi i32 [ %84, %62 ]
  %87 = phi i32 [ %84, %62 ]
  %icmpEq211 = icmp eq i32 %cfg_DiffPhi76, %87
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %icmpEq209 = icmp eq i32 %cfg_DestPhi75, %86
  %88 = icmp eq i32 %86, %86
  %icmpEq213 = icmp eq i1 %icmpEq209, %88
  %zext214 = zext i1 %icmpEq213 to i32
  call void @assert_ft(i32 %zext214, i32 35)
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  %89 = xor i32 %cfg_DestPhi75, %cfg_DiffPhi76
  %cfg_icmpEq77 = icmp eq i32 %89, 385876738
  %90 = icmp eq i32 %89, 385876738
  %icmpEq215 = icmp eq i1 %cfg_icmpEq77, %90
  %zext216 = zext i1 %icmpEq215 to i32
  call void @assert_ft(i32 %zext216, i32 35)
  %cfg_zext78 = zext i1 %cfg_icmpEq77 to i32
  call void @assert_cfg_ft(i32 %cfg_zext78, i32 %89, i32 35)
  %91 = add nsw i32 %66, 1
  store i32 %91, ptr @nonlocals, align 4
  br label %92

92:                                               ; preds = %85, %62
  %nonlocals.promoted52 = phi i32 [ %91, %85 ], [ %nonlocals.promoted53, %62 ]
  %93 = phi i32 [ %91, %85 ], [ %64, %62 ]
  %94 = phi i32 [ %91, %85 ], [ %nonlocals.promoted53, %62 ]
  %95 = phi i32 [ %91, %85 ], [ %64, %62 ]
  %96 = phi i32 [ %91, %85 ], [ %66, %62 ]
  %97 = phi i32 [ %91, %85 ], [ %67, %62 ]
  %98 = phi i32 [ %91, %85 ], [ %66, %62 ]
  %99 = phi i32 [ %91, %85 ], [ %67, %62 ]
  %cfg_DestPhi79 = phi i32 [ 385876738, %85 ], [ 334498326, %62 ]
  %100 = phi i32 [ 385876738, %85 ], [ 334498326, %62 ]
  %101 = phi i32 [ 385876738, %85 ], [ 334498326, %62 ]
  %102 = phi i32 [ 385876738, %85 ], [ 334498326, %62 ]
  %cfg_DiffPhi80 = phi i32 [ 219154706, %85 ], [ %84, %62 ]
  %103 = phi i32 [ 219154706, %85 ], [ %84, %62 ]
  %104 = phi i32 [ 219154706, %85 ], [ %84, %62 ]
  %105 = phi i32 [ 219154706, %85 ], [ %84, %62 ]
  %icmpEq249 = icmp eq i32 %104, %105
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %icmpEq247 = icmp eq i32 %cfg_DiffPhi80, %103
  %106 = icmp eq i32 %103, %103
  %icmpEq251 = icmp eq i1 %icmpEq247, %106
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %icmpEq245 = icmp eq i32 %101, %102
  %zext246 = zext i1 %icmpEq245 to i32
  %107 = zext i1 %icmpEq245 to i32
  %icmpEq253 = icmp eq i32 %zext246, %107
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  call void @assert_ft(i32 %zext246, i32 35)
  %icmpEq243 = icmp eq i32 %cfg_DestPhi79, %100
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %icmpEq241 = icmp eq i32 %98, %99
  %108 = icmp eq i32 %99, %99
  %icmpEq255 = icmp eq i1 %icmpEq241, %108
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %icmpEq239 = icmp eq i32 %96, %97
  %zext240 = zext i1 %icmpEq239 to i32
  %109 = zext i1 %icmpEq239 to i32
  %icmpEq257 = icmp eq i32 %zext240, %109
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  call void @assert_ft(i32 %zext240, i32 35)
  %icmpEq237 = icmp eq i32 %94, %95
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %icmpEq235 = icmp eq i32 %nonlocals.promoted52, %93
  %110 = icmp eq i32 %93, %93
  %icmpEq259 = icmp eq i1 %icmpEq235, %110
  %zext260 = zext i1 %icmpEq259 to i32
  call void @assert_ft(i32 %zext260, i32 35)
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %icmpEq223 = icmp eq i32 %cfg_DiffPhi80, %104
  %zext224 = zext i1 %icmpEq223 to i32
  %111 = zext i1 %icmpEq223 to i32
  %icmpEq261 = icmp eq i32 %zext224, %111
  %zext262 = zext i1 %icmpEq261 to i32
  call void @assert_ft(i32 %zext262, i32 35)
  call void @assert_ft(i32 %zext224, i32 35)
  %icmpEq221 = icmp eq i32 %cfg_DestPhi79, %101
  %112 = icmp eq i32 %100, %102
  %icmpEq225 = icmp eq i1 %icmpEq221, %112
  %113 = icmp eq i1 %112, %112
  %icmpEq263 = icmp eq i1 %icmpEq225, %113
  %zext264 = zext i1 %icmpEq263 to i32
  call void @assert_ft(i32 %zext264, i32 35)
  %zext226 = zext i1 %icmpEq225 to i32
  call void @assert_ft(i32 %zext226, i32 35)
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  %icmpEq219 = icmp eq i32 %96, %98
  %114 = icmp eq i32 %97, %99
  %icmpEq265 = icmp eq i1 %icmpEq219, %114
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %zext220 = zext i1 %icmpEq219 to i32
  %115 = zext i1 %114 to i32
  %icmpEq227 = icmp eq i32 %zext220, %115
  %zext228 = zext i1 %icmpEq227 to i32
  %116 = zext i1 %icmpEq227 to i32
  %icmpEq267 = icmp eq i32 %zext228, %116
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  call void @assert_ft(i32 %zext228, i32 35)
  call void @assert_ft(i32 %zext220, i32 35)
  %icmpEq217 = icmp eq i32 %nonlocals.promoted52, %94
  %zext218 = zext i1 %icmpEq217 to i32
  %117 = zext i1 %icmpEq217 to i32
  %icmpEq269 = icmp eq i32 %zext218, %117
  %zext270 = zext i1 %icmpEq269 to i32
  call void @assert_ft(i32 %zext270, i32 35)
  call void @assert_ft(i32 %zext218, i32 35)
  %118 = xor i32 %cfg_DestPhi79, %cfg_DiffPhi80
  %119 = xor i32 %100, %103
  %icmpEq229 = icmp eq i32 %118, %119
  %120 = icmp eq i32 %119, %119
  %icmpEq271 = icmp eq i1 %icmpEq229, %120
  %zext272 = zext i1 %icmpEq271 to i32
  call void @assert_ft(i32 %zext272, i32 35)
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %cfg_icmpEq81 = icmp eq i32 %118, 437258768
  %cfg_zext82 = zext i1 %cfg_icmpEq81 to i32
  %121 = zext i1 %cfg_icmpEq81 to i32
  %icmpEq273 = icmp eq i32 %cfg_zext82, %121
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext82, i32 %118, i32 35)
  %122 = load double, ptr %76, align 8
  %123 = load double, ptr %77, align 8
  %124 = fneg double %80
  %125 = fneg double %81
  %126 = fneg double %80
  %127 = fneg double %81
  %128 = tail call double @llvm.fmuladd.f64(double %124, double %122, double %.03845)
  %129 = or i64 %indvars.iv, 1
  %130 = or i64 %63, 1
  %icmpEq275 = icmp eq i64 %129, %130
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  %131 = or i64 %indvars.iv, 1
  %icmpEq231 = icmp eq i64 %129, %131
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %132 = getelementptr inbounds ptr, ptr %.pre, i64 %129
  %133 = getelementptr inbounds ptr, ptr %.pre, i64 %130
  %134 = load ptr, ptr %132, align 8
  %135 = load ptr, ptr %133, align 8
  %.not43 = icmp eq ptr %134, null
  %136 = icmp eq ptr %135, null
  %icmpEq277 = icmp eq i1 %.not43, %136
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  %137 = select i1 %.not43, i32 488637199, i32 540018439
  %138 = select i1 %136, i32 488637199, i32 540018439
  %icmpEq233 = icmp eq i32 %137, %138
  %zext234 = zext i1 %icmpEq233 to i32
  %139 = zext i1 %icmpEq233 to i32
  %icmpEq279 = icmp eq i32 %zext234, %139
  %zext280 = zext i1 %icmpEq279 to i32
  call void @assert_ft(i32 %zext280, i32 35)
  call void @assert_ft(i32 %zext234, i32 35)
  %140 = xor i32 437258768, %137
  br i1 %.not43, label %141, label %148

141:                                              ; preds = %92
  %cfg_DestPhi83 = phi i32 [ 437258768, %92 ]
  %142 = phi i32 [ 437258768, %92 ]
  %cfg_DiffPhi84 = phi i32 [ %140, %92 ]
  %143 = phi i32 [ %140, %92 ]
  %icmpEq283 = icmp eq i32 %cfg_DiffPhi84, %143
  %zext284 = zext i1 %icmpEq283 to i32
  call void @assert_ft(i32 %zext284, i32 35)
  %icmpEq281 = icmp eq i32 %cfg_DestPhi83, %142
  %144 = icmp eq i32 %142, %142
  %icmpEq285 = icmp eq i1 %icmpEq281, %144
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  %145 = xor i32 %cfg_DestPhi83, %cfg_DiffPhi84
  %cfg_icmpEq85 = icmp eq i32 %145, 488637199
  %146 = icmp eq i32 %145, 488637199
  %icmpEq287 = icmp eq i1 %cfg_icmpEq85, %146
  %zext288 = zext i1 %icmpEq287 to i32
  call void @assert_ft(i32 %zext288, i32 35)
  %cfg_zext86 = zext i1 %cfg_icmpEq85 to i32
  call void @assert_cfg_ft(i32 %cfg_zext86, i32 %145, i32 35)
  %147 = add nsw i32 %96, 1
  store i32 %147, ptr @nonlocals, align 4
  br label %148

148:                                              ; preds = %141, %92
  %nonlocals.promoted51 = phi i32 [ %147, %141 ], [ %nonlocals.promoted52, %92 ]
  %149 = phi i32 [ %147, %141 ], [ %93, %92 ]
  %150 = phi i32 [ %147, %141 ], [ %96, %92 ]
  %151 = phi i32 [ %147, %141 ], [ %97, %92 ]
  %cfg_DestPhi87 = phi i32 [ 488637199, %141 ], [ 437258768, %92 ]
  %152 = phi i32 [ 488637199, %141 ], [ 437258768, %92 ]
  %cfg_DiffPhi88 = phi i32 [ 1024459784, %141 ], [ %140, %92 ]
  %153 = phi i32 [ 1024459784, %141 ], [ %140, %92 ]
  %icmpEq295 = icmp eq i32 %cfg_DiffPhi88, %153
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  %icmpEq293 = icmp eq i32 %cfg_DestPhi87, %152
  %154 = icmp eq i32 %152, %152
  %icmpEq297 = icmp eq i1 %icmpEq293, %154
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  %icmpEq291 = icmp eq i32 %150, %151
  %zext292 = zext i1 %icmpEq291 to i32
  %155 = zext i1 %icmpEq291 to i32
  %icmpEq299 = icmp eq i32 %zext292, %155
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  call void @assert_ft(i32 %zext292, i32 35)
  %icmpEq289 = icmp eq i32 %nonlocals.promoted51, %149
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %156 = xor i32 %cfg_DestPhi87, %cfg_DiffPhi88
  %157 = xor i32 %152, %153
  %icmpEq301 = icmp eq i32 %156, %157
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %cfg_icmpEq89 = icmp eq i32 %156, 540018439
  %cfg_zext90 = zext i1 %cfg_icmpEq89 to i32
  call void @assert_cfg_ft(i32 %cfg_zext90, i32 %156, i32 35)
  %158 = load double, ptr %134, align 8
  %159 = load double, ptr %135, align 8
  %160 = tail call double @llvm.fmuladd.f64(double %124, double %158, double %128)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %161 = add nuw nsw i64 %63, 2
  %icmpEq303 = icmp eq i64 %indvars.iv.next, %161
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  %162 = icmp ult i64 %indvars.iv.next, %60
  %163 = select i1 %162, i32 334498326, i32 591397407
  %164 = xor i32 540018439, %163
  br i1 %162, label %62, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %148
  %cfg_DestPhi91 = phi i32 [ 540018439, %148 ]
  %165 = phi i32 [ 540018439, %148 ]
  %cfg_DiffPhi92 = phi i32 [ %164, %148 ]
  %166 = phi i32 [ %164, %148 ]
  %icmpEq307 = icmp eq i32 %cfg_DiffPhi92, %166
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %icmpEq305 = icmp eq i32 %cfg_DestPhi91, %165
  %167 = icmp eq i32 %165, %165
  %icmpEq309 = icmp eq i1 %icmpEq305, %167
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %168 = xor i32 %cfg_DestPhi91, %cfg_DiffPhi92
  %cfg_icmpEq93 = icmp eq i32 %168, 591397407
  %169 = icmp eq i32 %168, 591397407
  %icmpEq311 = icmp eq i1 %cfg_icmpEq93, %169
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %cfg_zext94 = zext i1 %cfg_icmpEq93 to i32
  call void @assert_cfg_ft(i32 %cfg_zext94, i32 %168, i32 35)
  %170 = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph59
  %nonlocals.promoted50 = phi i32 [ %nonlocals.promoted5456, %.lr.ph59 ], [ %nonlocals.promoted51, %._crit_edge.loopexit ]
  %171 = phi i32 [ %12, %.lr.ph59 ], [ %149, %._crit_edge.loopexit ]
  %.039.lcssa = phi i32 [ 0, %.lr.ph59 ], [ %170, %._crit_edge.loopexit ]
  %172 = phi i32 [ 0, %.lr.ph59 ], [ %170, %._crit_edge.loopexit ]
  %.038.lcssa = phi double [ %36, %.lr.ph59 ], [ %160, %._crit_edge.loopexit ]
  %173 = phi double [ %37, %.lr.ph59 ], [ %160, %._crit_edge.loopexit ]
  %cfg_DestPhi95 = phi i32 [ 591397407, %._crit_edge.loopexit ], [ 231737603, %.lr.ph59 ]
  %174 = phi i32 [ 591397407, %._crit_edge.loopexit ], [ 231737603, %.lr.ph59 ]
  %cfg_DiffPhi96 = phi i32 [ 84936477, %._crit_edge.loopexit ], [ %49, %.lr.ph59 ]
  %175 = phi i32 [ 84936477, %._crit_edge.loopexit ], [ %50, %.lr.ph59 ]
  %icmpEq319 = icmp eq i32 %cfg_DiffPhi96, %175
  %zext320 = zext i1 %icmpEq319 to i32
  call void @assert_ft(i32 %zext320, i32 35)
  %icmpEq317 = icmp eq i32 %cfg_DestPhi95, %174
  %176 = icmp eq i32 %174, %174
  %icmpEq321 = icmp eq i1 %icmpEq317, %176
  %zext322 = zext i1 %icmpEq321 to i32
  call void @assert_ft(i32 %zext322, i32 35)
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %icmpEq315 = icmp eq i32 %.039.lcssa, %172
  %zext316 = zext i1 %icmpEq315 to i32
  %177 = zext i1 %icmpEq315 to i32
  %icmpEq323 = icmp eq i32 %zext316, %177
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  call void @assert_ft(i32 %zext316, i32 35)
  %icmpEq313 = icmp eq i32 %nonlocals.promoted50, %171
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %178 = xor i32 %cfg_DestPhi95, %cfg_DiffPhi96
  %179 = xor i32 %174, %175
  %icmpEq325 = icmp eq i32 %178, %179
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  %cfg_icmpEq97 = icmp eq i32 %178, 642778370
  %cfg_zext98 = zext i1 %cfg_icmpEq97 to i32
  call void @assert_cfg_ft(i32 %cfg_zext98, i32 %178, i32 35)
  %180 = icmp eq i32 %.039.lcssa, %45
  %181 = icmp eq i32 %172, %46
  %icmpEq327 = icmp eq i1 %180, %181
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  %182 = select i1 %180, i32 694160155, i32 848299800
  %183 = xor i32 642778370, %182
  br i1 %180, label %184, label %225

184:                                              ; preds = %._crit_edge
  %cfg_DestPhi99 = phi i32 [ 642778370, %._crit_edge ]
  %185 = phi i32 [ 642778370, %._crit_edge ]
  %cfg_DiffPhi100 = phi i32 [ %183, %._crit_edge ]
  %186 = phi i32 [ %183, %._crit_edge ]
  %icmpEq331 = icmp eq i32 %cfg_DiffPhi100, %186
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %icmpEq329 = icmp eq i32 %cfg_DestPhi99, %185
  %187 = icmp eq i32 %185, %185
  %icmpEq333 = icmp eq i1 %icmpEq329, %187
  %zext334 = zext i1 %icmpEq333 to i32
  call void @assert_ft(i32 %zext334, i32 35)
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  %188 = xor i32 %cfg_DestPhi99, %cfg_DiffPhi100
  %cfg_icmpEq101 = icmp eq i32 %188, 694160155
  %189 = icmp eq i32 %188, 694160155
  %icmpEq335 = icmp eq i1 %cfg_icmpEq101, %189
  %zext336 = zext i1 %icmpEq335 to i32
  call void @assert_ft(i32 %zext336, i32 35)
  %cfg_zext102 = zext i1 %cfg_icmpEq101 to i32
  call void @assert_cfg_ft(i32 %cfg_zext102, i32 %188, i32 35)
  %190 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8
  %192 = load ptr, ptr %190, align 8
  %193 = zext i32 %45 to i64
  %194 = zext i32 %46 to i64
  %icmpEq337 = icmp eq i64 %193, %194
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %195 = getelementptr inbounds ptr, ptr %191, i64 %193
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 4
  %198 = load ptr, ptr %197, align 8
  %199 = load ptr, ptr %197, align 8
  %200 = getelementptr inbounds double, ptr %198, i64 %193
  %201 = getelementptr inbounds double, ptr %199, i64 %194
  %202 = load double, ptr %200, align 8
  %203 = load double, ptr %201, align 8
  %.not41 = icmp eq ptr %196, null
  %204 = icmp eq ptr %196, null
  %icmpEq339 = icmp eq i1 %.not41, %204
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %205 = select i1 %.not41, i32 745538333, i32 796919056
  %206 = xor i32 694160155, %205
  br i1 %.not41, label %207, label %214

207:                                              ; preds = %184
  %cfg_DestPhi103 = phi i32 [ 694160155, %184 ]
  %208 = phi i32 [ 694160155, %184 ]
  %cfg_DiffPhi104 = phi i32 [ %206, %184 ]
  %209 = phi i32 [ %206, %184 ]
  %icmpEq343 = icmp eq i32 %cfg_DiffPhi104, %209
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %icmpEq341 = icmp eq i32 %cfg_DestPhi103, %208
  %210 = icmp eq i32 %208, %208
  %icmpEq345 = icmp eq i1 %icmpEq341, %210
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %zext342 = zext i1 %icmpEq341 to i32
  call void @assert_ft(i32 %zext342, i32 35)
  %211 = xor i32 %cfg_DestPhi103, %cfg_DiffPhi104
  %cfg_icmpEq105 = icmp eq i32 %211, 745538333
  %212 = icmp eq i32 %211, 745538333
  %icmpEq347 = icmp eq i1 %cfg_icmpEq105, %212
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %cfg_zext106 = zext i1 %cfg_icmpEq105 to i32
  call void @assert_cfg_ft(i32 %cfg_zext106, i32 %211, i32 35)
  %213 = add nsw i32 %nonlocals.promoted50, 1
  store i32 %213, ptr @nonlocals, align 4
  br label %214

214:                                              ; preds = %207, %184
  %nonlocals.promoted49 = phi i32 [ %213, %207 ], [ %nonlocals.promoted50, %184 ]
  %215 = phi i32 [ %213, %207 ], [ %171, %184 ]
  %cfg_DestPhi107 = phi i32 [ 745538333, %207 ], [ 694160155, %184 ]
  %216 = phi i32 [ 745538333, %207 ], [ 694160155, %184 ]
  %cfg_DiffPhi108 = phi i32 [ 66061837, %207 ], [ %206, %184 ]
  %217 = phi i32 [ 66061837, %207 ], [ %206, %184 ]
  %icmpEq353 = icmp eq i32 %cfg_DiffPhi108, %217
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  %icmpEq351 = icmp eq i32 %cfg_DestPhi107, %216
  %218 = icmp eq i32 %216, %216
  %icmpEq355 = icmp eq i1 %icmpEq351, %218
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %icmpEq349 = icmp eq i32 %nonlocals.promoted49, %215
  %zext350 = zext i1 %icmpEq349 to i32
  %219 = zext i1 %icmpEq349 to i32
  %icmpEq357 = icmp eq i32 %zext350, %219
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  call void @assert_ft(i32 %zext350, i32 35)
  %220 = xor i32 %cfg_DestPhi107, %cfg_DiffPhi108
  %cfg_icmpEq109 = icmp eq i32 %220, 796919056
  %cfg_zext110 = zext i1 %cfg_icmpEq109 to i32
  %221 = zext i1 %cfg_icmpEq109 to i32
  %icmpEq359 = icmp eq i32 %cfg_zext110, %221
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext110, i32 %220, i32 35)
  %222 = load double, ptr %196, align 8
  %223 = fneg double %202
  %224 = tail call double @llvm.fmuladd.f64(double %223, double %222, double %.038.lcssa)
  br label %225

225:                                              ; preds = %214, %._crit_edge
  %nonlocals.promoted48 = phi i32 [ %nonlocals.promoted49, %214 ], [ %nonlocals.promoted50, %._crit_edge ]
  %226 = phi i32 [ %215, %214 ], [ %171, %._crit_edge ]
  %.1 = phi double [ %224, %214 ], [ %.038.lcssa, %._crit_edge ]
  %227 = phi double [ %224, %214 ], [ %173, %._crit_edge ]
  %cfg_DestPhi111 = phi i32 [ 796919056, %214 ], [ 642778370, %._crit_edge ]
  %228 = phi i32 [ 796919056, %214 ], [ 642778370, %._crit_edge ]
  %cfg_DiffPhi112 = phi i32 [ 487588360, %214 ], [ %183, %._crit_edge ]
  %229 = phi i32 [ 487588360, %214 ], [ %183, %._crit_edge ]
  %icmpEq365 = icmp eq i32 %cfg_DiffPhi112, %229
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %icmpEq363 = icmp eq i32 %cfg_DestPhi111, %228
  %230 = icmp eq i32 %228, %228
  %icmpEq367 = icmp eq i1 %icmpEq363, %230
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %icmpEq361 = icmp eq i32 %nonlocals.promoted48, %226
  %zext362 = zext i1 %icmpEq361 to i32
  %231 = zext i1 %icmpEq361 to i32
  %icmpEq369 = icmp eq i32 %zext362, %231
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  call void @assert_ft(i32 %zext362, i32 35)
  %232 = xor i32 %cfg_DestPhi111, %cfg_DiffPhi112
  %cfg_icmpEq113 = icmp eq i32 %232, 848299800
  %cfg_zext114 = zext i1 %cfg_icmpEq113 to i32
  %233 = zext i1 %cfg_icmpEq113 to i32
  %icmpEq371 = icmp eq i32 %cfg_zext114, %233
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext114, i32 %232, i32 35)
  store double %.1, ptr %34, align 8
  %234 = getelementptr inbounds %struct.node_t, ptr %.057, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8
  %236 = load ptr, ptr %234, align 8
  %.not = icmp eq ptr %235, null
  %237 = icmp eq ptr %236, null
  %icmpEq373 = icmp eq i1 %.not, %237
  %zext374 = zext i1 %icmpEq373 to i32
  call void @assert_ft(i32 %zext374, i32 35)
  %238 = select i1 %.not, i32 899678474, i32 231737603
  %239 = xor i32 848299800, %238
  br i1 %.not, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %225, %1
  %cfg_DestPhi115 = phi i32 [ 848299800, %225 ], [ 128975389, %1 ]
  %240 = phi i32 [ 848299800, %225 ], [ 128975389, %1 ]
  %cfg_DiffPhi116 = phi i32 [ %239, %225 ], [ %4, %1 ]
  %241 = phi i32 [ %239, %225 ], [ %4, %1 ]
  %icmpEq377 = icmp eq i32 %cfg_DiffPhi116, %241
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %icmpEq375 = icmp eq i32 %cfg_DestPhi115, %240
  %242 = icmp eq i32 %240, %240
  %icmpEq379 = icmp eq i1 %icmpEq375, %242
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %243 = xor i32 %cfg_DestPhi115, %cfg_DiffPhi116
  %cfg_icmpEq117 = icmp eq i32 %243, 899678474
  %244 = icmp eq i32 %243, 899678474
  %icmpEq381 = icmp eq i1 %cfg_icmpEq117, %244
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  %cfg_zext118 = zext i1 %cfg_icmpEq117 to i32
  call void @assert_cfg_ft(i32 %cfg_zext118, i32 %243, i32 35)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
.loopexit:
  tail call void @dealwithargs(i32 noundef %0, ptr noundef %1)
  %2 = load i32, ptr @n_nodes, align 4
  %3 = load i32, ptr @n_nodes, align 4
  %icmpEq = icmp eq i32 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = load i32, ptr @d_nodes, align 4
  %5 = load i32, ptr @local_p, align 4
  %6 = load i32, ptr @__NumNodes, align 4
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %8 = tail call ptr @initialize_graph()
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  tail call void @compute_nodes(ptr noundef %9)
  %11 = getelementptr inbounds %struct.graph_t, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.graph_t, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %11, align 8
  %14 = load ptr, ptr %12, align 8
  tail call void @compute_nodes(ptr noundef %13)
  %15 = load i32, ptr @nonlocals, align 4
  %16 = load i32, ptr @nonlocals, align 4
  %icmpEq5 = icmp eq i32 %15, %16
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %15)
  tail call void @printstats()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ATOMICINC(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %0, align 4
  %icmpEq = icmp eq i32 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = add nsw i32 %2, 1
  store i32 %4, ptr %0, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @make_table(i32 noundef %0, i32 %1) local_unnamed_addr #2 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %0 to i64
  %5 = sext i32 %0 to i64
  %icmpEq16 = icmp eq i64 %4, %5
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %icmpEq8 = icmp eq i64 %3, %4
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  %6 = sext i32 %0 to i64
  %7 = sext i32 %0 to i64
  %icmpEq18 = icmp eq i64 %6, %7
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq = icmp eq i64 %3, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = shl nsw i64 %3, 3
  %9 = shl nsw i64 %4, 3
  %icmpEq20 = icmp eq i64 %8, %9
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %10 = shl nsw i64 %3, 3
  %icmpEq10 = icmp eq i64 %8, %10
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  %11 = tail call noalias ptr @malloc(i64 noundef %8) #13
  %.not = icmp eq ptr %11, null
  %12 = icmp eq ptr %11, null
  %icmpEq22 = icmp eq i1 %.not, %12
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %13 = select i1 %.not, i32 180355605, i32 231735577
  %14 = select i1 %12, i32 180355605, i32 231735577
  %15 = select i1 %12, i32 180355605, i32 231735577
  %icmpEq12 = icmp eq i32 %14, %15
  %16 = icmp eq i32 %15, %15
  %icmpEq24 = icmp eq i1 %icmpEq12, %16
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %icmpEq6 = icmp eq i32 %13, %14
  %zext7 = zext i1 %icmpEq6 to i32
  %17 = zext i1 %icmpEq6 to i32
  %icmpEq26 = icmp eq i32 %zext7, %17
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  call void @assert_ft(i32 %zext7, i32 35)
  %18 = xor i32 128976145, %13
  %19 = xor i32 128976145, %14
  %icmpEq14 = icmp eq i32 %18, %19
  %20 = icmp eq i32 %19, %19
  %icmpEq28 = icmp eq i1 %icmpEq14, %20
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  br i1 %.not, label %21, label %27

21:                                               ; preds = %2
  %cfg_DestPhi = phi i32 [ 128976145, %2 ]
  %22 = phi i32 [ 128976145, %2 ]
  %cfg_DiffPhi = phi i32 [ %18, %2 ]
  %23 = phi i32 [ %19, %2 ]
  %icmpEq32 = icmp eq i32 %cfg_DiffPhi, %23
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %icmpEq30 = icmp eq i32 %cfg_DestPhi, %22
  %24 = icmp eq i32 %22, %22
  %icmpEq34 = icmp eq i1 %icmpEq30, %24
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %25 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %25, 180355605
  %26 = icmp eq i32 %25, 180355605
  %icmpEq36 = icmp eq i1 %cfg_icmpEq, %26
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %25, i32 35)
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1.8, i32 noundef 51, ptr noundef null) #14
  unreachable

27:                                               ; preds = %2
  %cfg_DestPhi2 = phi i32 [ 128976145, %2 ]
  %28 = phi i32 [ 128976145, %2 ]
  %cfg_DiffPhi3 = phi i32 [ %18, %2 ]
  %29 = phi i32 [ %19, %2 ]
  %icmpEq40 = icmp eq i32 %cfg_DiffPhi3, %29
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %cfg_DestPhi2, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq42 = icmp eq i1 %icmpEq38, %30
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %31 = xor i32 %cfg_DestPhi2, %cfg_DiffPhi3
  %cfg_icmpEq4 = icmp eq i32 %31, 231735577
  %32 = icmp eq i32 %31, 231735577
  %icmpEq44 = icmp eq i1 %cfg_icmpEq4, %32
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %cfg_zext5 = zext i1 %cfg_icmpEq4 to i32
  call void @assert_cfg_ft(i32 %cfg_zext5, i32 %31, i32 35)
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_table(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #2 {
  %5 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  store ptr %5, ptr %0, align 8
  %6 = tail call double @gen_uniform_double()
  store double %6, ptr %1, align 8
  store ptr %1, ptr %5, align 8
  %7 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 5
  %8 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 5
  store i32 0, ptr %7, align 8
  %9 = icmp sgt i32 %2, 1
  %10 = icmp sgt i32 %2, 1
  %icmpEq = icmp eq i1 %9, %10
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %11 = select i1 %9, i32 180355605, i32 283116554
  %12 = xor i32 128977153, %11
  br i1 %9, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %4
  %cfg_DestPhi = phi i32 [ 128977153, %4 ]
  %13 = phi i32 [ 128977153, %4 ]
  %cfg_DiffPhi = phi i32 [ %12, %4 ]
  %14 = phi i32 [ %12, %4 ]
  %icmpEq34 = icmp eq i32 %cfg_DiffPhi, %14
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %icmpEq32 = icmp eq i32 %cfg_DestPhi, %13
  %15 = icmp eq i32 %13, %13
  %icmpEq36 = icmp eq i1 %icmpEq32, %15
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180355605
  %17 = icmp eq i32 %16, 180355605
  %icmpEq38 = icmp eq i1 %cfg_icmpEq, %17
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %18 = phi i64 [ 1, %.lr.ph.preheader ], [ %35, %.lr.ph ]
  %.01922 = phi ptr [ %5, %.lr.ph.preheader ], [ %27, %.lr.ph ]
  %19 = phi ptr [ %5, %.lr.ph.preheader ], [ %27, %.lr.ph ]
  %.pn21 = phi ptr [ %1, %.lr.ph.preheader ], [ %.020, %.lr.ph ]
  %20 = phi ptr [ %1, %.lr.ph.preheader ], [ %.020, %.lr.ph ]
  %cfg_DestPhi24 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231739666, %.lr.ph ]
  %21 = phi i32 [ 180355605, %.lr.ph.preheader ], [ 231739666, %.lr.ph ]
  %cfg_DiffPhi25 = phi i32 [ 118493959, %.lr.ph.preheader ], [ %37, %.lr.ph ]
  %22 = phi i32 [ 118493959, %.lr.ph.preheader ], [ %37, %.lr.ph ]
  %icmpEq44 = icmp eq i32 %cfg_DiffPhi25, %22
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq42 = icmp eq i32 %cfg_DestPhi24, %21
  %23 = icmp eq i32 %21, %21
  %icmpEq46 = icmp eq i1 %icmpEq42, %23
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i64 %indvars.iv, %18
  %zext41 = zext i1 %icmpEq40 to i32
  %24 = zext i1 %icmpEq40 to i32
  %icmpEq48 = icmp eq i32 %zext41, %24
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %25 = xor i32 %cfg_DestPhi24, %cfg_DiffPhi25
  %cfg_icmpEq26 = icmp eq i32 %25, 231739666
  %cfg_zext27 = zext i1 %cfg_icmpEq26 to i32
  %26 = zext i1 %cfg_icmpEq26 to i32
  %icmpEq50 = icmp eq i32 %cfg_zext27, %26
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext27, i32 %25, i32 35)
  %.020 = getelementptr inbounds double, ptr %.pn21, i64 1
  %27 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13
  %28 = tail call double @gen_uniform_double()
  store double %28, ptr %.020, align 8
  store ptr %.020, ptr %27, align 8
  %29 = getelementptr inbounds %struct.node_t, ptr %27, i64 0, i32 5
  %30 = getelementptr inbounds %struct.node_t, ptr %27, i64 0, i32 5
  store i32 0, ptr %29, align 8
  %31 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %32 = getelementptr inbounds ptr, ptr %0, i64 %18
  store ptr %27, ptr %31, align 8
  %33 = getelementptr inbounds %struct.node_t, ptr %.01922, i64 0, i32 1
  %34 = getelementptr inbounds %struct.node_t, ptr %19, i64 0, i32 1
  store ptr %27, ptr %33, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %35 = add nuw nsw i64 %18, 1
  %icmpEq52 = icmp eq i64 %indvars.iv.next, %35
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %36 = select i1 %exitcond.not, i32 283116554, i32 231739666
  %37 = xor i32 231739666, %36
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %4
  %.019.lcssa = phi ptr [ %5, %4 ], [ %27, %.lr.ph ]
  %38 = phi ptr [ %5, %4 ], [ %27, %.lr.ph ]
  %cfg_DestPhi28 = phi i32 [ 231739666, %.lr.ph ], [ 128977153, %4 ]
  %39 = phi i32 [ 231739666, %.lr.ph ], [ 128977153, %4 ]
  %cfg_DiffPhi29 = phi i32 [ %37, %.lr.ph ], [ %12, %4 ]
  %40 = phi i32 [ %37, %.lr.ph ], [ %12, %4 ]
  %icmpEq56 = icmp eq i32 %cfg_DiffPhi29, %40
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %icmpEq54 = icmp eq i32 %cfg_DestPhi28, %39
  %41 = icmp eq i32 %39, %39
  %icmpEq58 = icmp eq i1 %icmpEq54, %41
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %42 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %cfg_icmpEq30 = icmp eq i32 %42, 283116554
  %43 = icmp eq i32 %42, 283116554
  %icmpEq60 = icmp eq i1 %cfg_icmpEq30, %43
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %42, i32 35)
  %44 = getelementptr inbounds %struct.node_t, ptr %.019.lcssa, i64 0, i32 1
  store ptr null, ptr %44, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_neighbors(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
  %.not66 = icmp eq ptr %0, null
  %7 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not66, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = select i1 %.not66, i32 1362100491, i32 180356634
  %9 = xor i32 128975389, %8
  br i1 %.not66, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %6
  %cfg_DestPhi = phi i32 [ 128975389, %6 ]
  %10 = phi i32 [ 128975389, %6 ]
  %cfg_DiffPhi = phi i32 [ %9, %6 ]
  %11 = phi i32 [ %9, %6 ]
  %icmpEq231 = icmp eq i32 %cfg_DiffPhi, %11
  %zext232 = zext i1 %icmpEq231 to i32
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq229 = icmp eq i32 %cfg_DestPhi, %10
  %12 = icmp eq i32 %10, %10
  %icmpEq233 = icmp eq i1 %icmpEq229, %12
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %13 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %13, 180356634
  %14 = icmp eq i32 %13, 180356634
  %icmpEq235 = icmp eq i1 %cfg_icmpEq, %14
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %13, i32 35)
  %15 = sext i32 %3 to i64
  %16 = shl nsw i64 %15, 3
  %17 = shl nsw i64 %15, 3
  %icmpEq237 = icmp eq i64 %16, %17
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %18 = icmp sgt i32 %3, 0
  %19 = add nsw i32 %5, 64
  %wide.trip.count84 = zext i32 %3 to i64
  br label %20

20:                                               ; preds = %._crit_edge65, %.lr.ph69
  %.067 = phi ptr [ %0, %.lr.ph69 ], [ %345, %._crit_edge65 ]
  %21 = phi ptr [ %0, %.lr.ph69 ], [ %345, %._crit_edge65 ]
  %cfg_DestPhi137 = phi i32 [ 180356634, %.lr.ph69 ], [ 1310721047, %._crit_edge65 ]
  %22 = phi i32 [ 180356634, %.lr.ph69 ], [ 1310721047, %._crit_edge65 ]
  %cfg_DiffPhi138 = phi i32 [ 118489112, %.lr.ph69 ], [ %349, %._crit_edge65 ]
  %23 = phi i32 [ 118489112, %.lr.ph69 ], [ %349, %._crit_edge65 ]
  %icmpEq241 = icmp eq i32 %cfg_DiffPhi138, %23
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %icmpEq239 = icmp eq i32 %cfg_DestPhi137, %22
  %24 = icmp eq i32 %22, %22
  %icmpEq243 = icmp eq i1 %icmpEq239, %24
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  %25 = xor i32 %cfg_DestPhi137, %cfg_DiffPhi138
  %cfg_icmpEq139 = icmp eq i32 %25, 231736834
  %26 = icmp eq i32 %25, 231736834
  %icmpEq245 = icmp eq i1 %cfg_icmpEq139, %26
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  %cfg_zext140 = zext i1 %cfg_icmpEq139 to i32
  call void @assert_cfg_ft(i32 %cfg_zext140, i32 %25, i32 35)
  %27 = tail call noalias ptr @malloc(i64 noundef %16) #13
  %28 = getelementptr inbounds %struct.node_t, ptr %.067, i64 0, i32 2
  %29 = getelementptr inbounds %struct.node_t, ptr %21, i64 0, i32 2
  store ptr %27, ptr %28, align 8
  %.not44 = icmp eq ptr %27, null
  %30 = icmp eq ptr %27, null
  %icmpEq247 = icmp eq i1 %.not44, %30
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  %31 = select i1 %.not44, i32 334496526, i32 283115797
  %32 = xor i32 231736834, %31
  br i1 %.not44, label %51, label %.preheader49

.preheader49:                                     ; preds = %20
  %cfg_DestPhi141 = phi i32 [ 231736834, %20 ]
  %33 = phi i32 [ 231736834, %20 ]
  %34 = phi i32 [ 231736834, %20 ]
  %cfg_DiffPhi142 = phi i32 [ %32, %20 ]
  %35 = phi i32 [ %32, %20 ]
  %36 = phi i32 [ %32, %20 ]
  %37 = phi i32 [ %32, %20 ]
  %icmpEq263 = icmp eq i32 %36, %37
  %zext264 = zext i1 %icmpEq263 to i32
  call void @assert_ft(i32 %zext264, i32 35)
  %icmpEq261 = icmp eq i32 %cfg_DiffPhi142, %35
  %38 = icmp eq i32 %35, %35
  %icmpEq265 = icmp eq i1 %icmpEq261, %38
  %zext266 = zext i1 %icmpEq265 to i32
  call void @assert_ft(i32 %zext266, i32 35)
  %zext262 = zext i1 %icmpEq261 to i32
  call void @assert_ft(i32 %zext262, i32 35)
  %icmpEq259 = icmp eq i32 %33, %34
  %zext260 = zext i1 %icmpEq259 to i32
  %39 = zext i1 %icmpEq259 to i32
  %icmpEq267 = icmp eq i32 %zext260, %39
  %zext268 = zext i1 %icmpEq267 to i32
  call void @assert_ft(i32 %zext268, i32 35)
  call void @assert_ft(i32 %zext260, i32 35)
  %icmpEq251 = icmp eq i32 %cfg_DiffPhi142, %36
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %icmpEq249 = icmp eq i32 %cfg_DestPhi141, %33
  %40 = icmp eq i32 %33, %34
  %icmpEq269 = icmp eq i1 %icmpEq249, %40
  %zext270 = zext i1 %icmpEq269 to i32
  call void @assert_ft(i32 %zext270, i32 35)
  %41 = icmp eq i32 %cfg_DestPhi141, %33
  %icmpEq253 = icmp eq i1 %icmpEq249, %41
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %zext250 = zext i1 %icmpEq249 to i32
  %42 = zext i1 %40 to i32
  %icmpEq271 = icmp eq i32 %zext250, %42
  %zext272 = zext i1 %icmpEq271 to i32
  call void @assert_ft(i32 %zext272, i32 35)
  call void @assert_ft(i32 %zext250, i32 35)
  %43 = xor i32 %cfg_DestPhi141, %cfg_DiffPhi142
  %cfg_icmpEq143 = icmp eq i32 %43, 283115797
  %44 = icmp eq i32 %43, 283115797
  %45 = icmp eq i32 %43, 283115797
  %icmpEq273 = icmp eq i1 %44, %45
  %zext274 = zext i1 %icmpEq273 to i32
  call void @assert_ft(i32 %zext274, i32 35)
  %icmpEq255 = icmp eq i1 %cfg_icmpEq143, %44
  %zext256 = zext i1 %icmpEq255 to i32
  call void @assert_ft(i32 %zext256, i32 35)
  %cfg_zext144 = zext i1 %cfg_icmpEq143 to i32
  %46 = zext i1 %44 to i32
  %icmpEq275 = icmp eq i32 %cfg_zext144, %46
  %zext276 = zext i1 %icmpEq275 to i32
  call void @assert_ft(i32 %zext276, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext144, i32 %43, i32 35)
  %47 = select i1 %18, i32 385876738, i32 1310721047
  %48 = xor i32 283115797, %47
  %49 = xor i32 283115797, %47
  %50 = xor i32 283115797, %47
  %icmpEq277 = icmp eq i32 %49, %50
  %zext278 = zext i1 %icmpEq277 to i32
  call void @assert_ft(i32 %zext278, i32 35)
  %icmpEq257 = icmp eq i32 %48, %49
  %zext258 = zext i1 %icmpEq257 to i32
  call void @assert_ft(i32 %zext258, i32 35)
  br i1 %18, label %.preheader48, label %._crit_edge65

51:                                               ; preds = %20
  %cfg_DestPhi145 = phi i32 [ 231736834, %20 ]
  %52 = phi i32 [ 231736834, %20 ]
  %cfg_DiffPhi146 = phi i32 [ %32, %20 ]
  %53 = phi i32 [ %32, %20 ]
  %icmpEq281 = icmp eq i32 %cfg_DiffPhi146, %53
  %zext282 = zext i1 %icmpEq281 to i32
  call void @assert_ft(i32 %zext282, i32 35)
  %icmpEq279 = icmp eq i32 %cfg_DestPhi145, %52
  %54 = icmp eq i32 %52, %52
  %icmpEq283 = icmp eq i1 %icmpEq279, %54
  %zext284 = zext i1 %icmpEq283 to i32
  call void @assert_ft(i32 %zext284, i32 35)
  %zext280 = zext i1 %icmpEq279 to i32
  call void @assert_ft(i32 %zext280, i32 35)
  %55 = xor i32 %cfg_DestPhi145, %cfg_DiffPhi146
  %cfg_icmpEq147 = icmp eq i32 %55, 334496526
  %56 = icmp eq i32 %55, 334496526
  %icmpEq285 = icmp eq i1 %cfg_icmpEq147, %56
  %zext286 = zext i1 %icmpEq285 to i32
  call void @assert_ft(i32 %zext286, i32 35)
  %cfg_zext148 = zext i1 %cfg_icmpEq147 to i32
  call void @assert_cfg_ft(i32 %cfg_zext148, i32 %55, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #14
  unreachable

.preheader48:                                     ; preds = %328, %.preheader49
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %328 ], [ 0, %.preheader49 ]
  %57 = phi i64 [ %indvars.iv.next83, %328 ], [ 0, %.preheader49 ]
  %cfg_DestPhi149 = phi i32 [ 283115797, %.preheader49 ], [ 1259341077, %328 ]
  %58 = phi i32 [ 283115797, %.preheader49 ], [ 1259341077, %328 ]
  %cfg_DiffPhi150 = phi i32 [ %48, %.preheader49 ], [ %338, %328 ]
  %59 = phi i32 [ %49, %.preheader49 ], [ %338, %328 ]
  %icmpEq291 = icmp eq i32 %cfg_DiffPhi150, %59
  %zext292 = zext i1 %icmpEq291 to i32
  call void @assert_ft(i32 %zext292, i32 35)
  %icmpEq289 = icmp eq i32 %cfg_DestPhi149, %58
  %60 = icmp eq i32 %58, %58
  %icmpEq293 = icmp eq i1 %icmpEq289, %60
  %zext294 = zext i1 %icmpEq293 to i32
  call void @assert_ft(i32 %zext294, i32 35)
  %zext290 = zext i1 %icmpEq289 to i32
  call void @assert_ft(i32 %zext290, i32 35)
  %icmpEq287 = icmp eq i64 %indvars.iv82, %57
  %zext288 = zext i1 %icmpEq287 to i32
  %61 = zext i1 %icmpEq287 to i32
  %icmpEq295 = icmp eq i32 %zext288, %61
  %zext296 = zext i1 %icmpEq295 to i32
  call void @assert_ft(i32 %zext296, i32 35)
  call void @assert_ft(i32 %zext288, i32 35)
  %62 = xor i32 %cfg_DestPhi149, %cfg_DiffPhi150
  %cfg_icmpEq151 = icmp eq i32 %62, 385876738
  %cfg_zext152 = zext i1 %cfg_icmpEq151 to i32
  %63 = zext i1 %cfg_icmpEq151 to i32
  %icmpEq297 = icmp eq i32 %cfg_zext152, %63
  %zext298 = zext i1 %icmpEq297 to i32
  call void @assert_ft(i32 %zext298, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext152, i32 %62, i32 35)
  %.not86 = icmp eq i64 %indvars.iv82, 0
  br label %64

64:                                               ; preds = %230, %.preheader48
  %cfg_DestPhi153 = phi i32 [ 385876738, %.preheader48 ], [ 1002438914, %230 ]
  %65 = phi i32 [ 385876738, %.preheader48 ], [ 1002438914, %230 ]
  %cfg_DiffPhi154 = phi i32 [ 219154214, %.preheader48 ], [ %246, %230 ]
  %66 = phi i32 [ 219154214, %.preheader48 ], [ %246, %230 ]
  %icmpEq301 = icmp eq i32 %cfg_DiffPhi154, %66
  %zext302 = zext i1 %icmpEq301 to i32
  call void @assert_ft(i32 %zext302, i32 35)
  %icmpEq299 = icmp eq i32 %cfg_DestPhi153, %65
  %67 = icmp eq i32 %65, %65
  %icmpEq303 = icmp eq i1 %icmpEq299, %67
  %zext304 = zext i1 %icmpEq303 to i32
  call void @assert_ft(i32 %zext304, i32 35)
  %zext300 = zext i1 %icmpEq299 to i32
  call void @assert_ft(i32 %zext300, i32 35)
  %68 = xor i32 %cfg_DestPhi153, %cfg_DiffPhi154
  %cfg_icmpEq155 = icmp eq i32 %68, 437257252
  %69 = icmp eq i32 %68, 437257252
  %icmpEq305 = icmp eq i1 %cfg_icmpEq155, %69
  %zext306 = zext i1 %icmpEq305 to i32
  call void @assert_ft(i32 %zext306, i32 35)
  %cfg_zext156 = zext i1 %cfg_icmpEq155 to i32
  call void @assert_cfg_ft(i32 %cfg_zext156, i32 %68, i32 35)
  %70 = tail call i32 @gen_number(i32 noundef %2), !range !6
  %71 = tail call i32 @check_percent(i32 noundef %4), !range !7
  %.not45 = icmp eq i32 %71, 0
  %72 = icmp eq i32 %71, 0
  %icmpEq307 = icmp eq i1 %.not45, %72
  %zext308 = zext i1 %icmpEq307 to i32
  call void @assert_ft(i32 %zext308, i32 35)
  %73 = select i1 %.not45, i32 488637721, i32 540018953
  %74 = xor i32 437257252, %73
  br i1 %.not45, label %75, label %86

75:                                               ; preds = %64
  %cfg_DestPhi157 = phi i32 [ 437257252, %64 ]
  %76 = phi i32 [ 437257252, %64 ]
  %cfg_DiffPhi158 = phi i32 [ %74, %64 ]
  %77 = phi i32 [ %74, %64 ]
  %icmpEq311 = icmp eq i32 %cfg_DiffPhi158, %77
  %zext312 = zext i1 %icmpEq311 to i32
  call void @assert_ft(i32 %zext312, i32 35)
  %icmpEq309 = icmp eq i32 %cfg_DestPhi157, %76
  %78 = icmp eq i32 %76, %76
  %icmpEq313 = icmp eq i1 %icmpEq309, %78
  %zext314 = zext i1 %icmpEq313 to i32
  call void @assert_ft(i32 %zext314, i32 35)
  %zext310 = zext i1 %icmpEq309 to i32
  call void @assert_ft(i32 %zext310, i32 35)
  %79 = xor i32 %cfg_DestPhi157, %cfg_DiffPhi158
  %cfg_icmpEq159 = icmp eq i32 %79, 488637721
  %80 = icmp eq i32 %79, 488637721
  %icmpEq315 = icmp eq i1 %cfg_icmpEq159, %80
  %zext316 = zext i1 %icmpEq315 to i32
  call void @assert_ft(i32 %zext316, i32 35)
  %cfg_zext160 = zext i1 %cfg_icmpEq159 to i32
  call void @assert_cfg_ft(i32 %cfg_zext160, i32 %79, i32 35)
  %81 = tail call i32 @gen_signed_number(i32 noundef 1), !range !8
  %82 = shl nsw i32 %81, 2
  %83 = shl nsw i32 %81, 2
  %icmpEq317 = icmp eq i32 %82, %83
  %zext318 = zext i1 %icmpEq317 to i32
  call void @assert_ft(i32 %zext318, i32 35)
  %84 = add nsw i32 %19, %82
  %85 = srem i32 %84, 64
  br label %86

86:                                               ; preds = %75, %64
  %87 = phi i32 [ %85, %75 ], [ %5, %64 ]
  %88 = phi i32 [ %85, %75 ], [ %5, %64 ]
  %89 = phi i32 [ %85, %75 ], [ %5, %64 ]
  %90 = phi i32 [ %85, %75 ], [ %5, %64 ]
  %cfg_DestPhi161 = phi i32 [ 437257252, %64 ], [ 488637721, %75 ]
  %91 = phi i32 [ 437257252, %64 ], [ 488637721, %75 ]
  %92 = phi i32 [ 437257252, %64 ], [ 488637721, %75 ]
  %93 = phi i32 [ 437257252, %64 ], [ 488637721, %75 ]
  %cfg_DiffPhi162 = phi i32 [ %74, %64 ], [ 1024461840, %75 ]
  %94 = phi i32 [ %74, %64 ], [ 1024461840, %75 ]
  %95 = phi i32 [ %74, %64 ], [ 1024461840, %75 ]
  %96 = phi i32 [ %74, %64 ], [ 1024461840, %75 ]
  %icmpEq345 = icmp eq i32 %95, %96
  %zext346 = zext i1 %icmpEq345 to i32
  call void @assert_ft(i32 %zext346, i32 35)
  %icmpEq343 = icmp eq i32 %cfg_DiffPhi162, %94
  %97 = icmp eq i32 %94, %94
  %icmpEq347 = icmp eq i1 %icmpEq343, %97
  %zext348 = zext i1 %icmpEq347 to i32
  call void @assert_ft(i32 %zext348, i32 35)
  %zext344 = zext i1 %icmpEq343 to i32
  call void @assert_ft(i32 %zext344, i32 35)
  %icmpEq341 = icmp eq i32 %92, %93
  %zext342 = zext i1 %icmpEq341 to i32
  %98 = zext i1 %icmpEq341 to i32
  %icmpEq349 = icmp eq i32 %zext342, %98
  %zext350 = zext i1 %icmpEq349 to i32
  call void @assert_ft(i32 %zext350, i32 35)
  call void @assert_ft(i32 %zext342, i32 35)
  %icmpEq339 = icmp eq i32 %cfg_DestPhi161, %91
  %zext340 = zext i1 %icmpEq339 to i32
  call void @assert_ft(i32 %zext340, i32 35)
  %icmpEq337 = icmp eq i32 %89, %90
  %99 = icmp eq i32 %90, %90
  %icmpEq351 = icmp eq i1 %icmpEq337, %99
  %zext352 = zext i1 %icmpEq351 to i32
  call void @assert_ft(i32 %zext352, i32 35)
  %zext338 = zext i1 %icmpEq337 to i32
  call void @assert_ft(i32 %zext338, i32 35)
  %icmpEq335 = icmp eq i32 %87, %88
  %zext336 = zext i1 %icmpEq335 to i32
  %100 = zext i1 %icmpEq335 to i32
  %icmpEq353 = icmp eq i32 %zext336, %100
  %zext354 = zext i1 %icmpEq353 to i32
  call void @assert_ft(i32 %zext354, i32 35)
  call void @assert_ft(i32 %zext336, i32 35)
  %icmpEq323 = icmp eq i32 %cfg_DiffPhi162, %95
  %zext324 = zext i1 %icmpEq323 to i32
  call void @assert_ft(i32 %zext324, i32 35)
  %icmpEq321 = icmp eq i32 %cfg_DestPhi161, %92
  %101 = icmp eq i32 %91, %93
  %icmpEq355 = icmp eq i1 %icmpEq321, %101
  %zext356 = zext i1 %icmpEq355 to i32
  call void @assert_ft(i32 %zext356, i32 35)
  %102 = icmp eq i32 %cfg_DestPhi161, %92
  %icmpEq325 = icmp eq i1 %icmpEq321, %102
  %zext326 = zext i1 %icmpEq325 to i32
  call void @assert_ft(i32 %zext326, i32 35)
  %zext322 = zext i1 %icmpEq321 to i32
  %103 = zext i1 %101 to i32
  %icmpEq357 = icmp eq i32 %zext322, %103
  %zext358 = zext i1 %icmpEq357 to i32
  call void @assert_ft(i32 %zext358, i32 35)
  call void @assert_ft(i32 %zext322, i32 35)
  %icmpEq319 = icmp eq i32 %87, %89
  %zext320 = zext i1 %icmpEq319 to i32
  %104 = zext i1 %icmpEq319 to i32
  %105 = zext i1 %icmpEq319 to i32
  %icmpEq359 = icmp eq i32 %104, %105
  %zext360 = zext i1 %icmpEq359 to i32
  call void @assert_ft(i32 %zext360, i32 35)
  %icmpEq327 = icmp eq i32 %zext320, %104
  %zext328 = zext i1 %icmpEq327 to i32
  call void @assert_ft(i32 %zext328, i32 35)
  call void @assert_ft(i32 %zext320, i32 35)
  %106 = xor i32 %cfg_DestPhi161, %cfg_DiffPhi162
  %107 = xor i32 %91, %94
  %icmpEq361 = icmp eq i32 %106, %107
  %zext362 = zext i1 %icmpEq361 to i32
  call void @assert_ft(i32 %zext362, i32 35)
  %cfg_icmpEq163 = icmp eq i32 %106, 540018953
  %cfg_zext164 = zext i1 %cfg_icmpEq163 to i32
  %108 = zext i1 %cfg_icmpEq163 to i32
  %icmpEq329 = icmp eq i32 %cfg_zext164, %108
  %109 = icmp eq i32 %108, %108
  %icmpEq363 = icmp eq i1 %icmpEq329, %109
  %zext364 = zext i1 %icmpEq363 to i32
  call void @assert_ft(i32 %zext364, i32 35)
  %zext330 = zext i1 %icmpEq329 to i32
  call void @assert_ft(i32 %zext330, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext164, i32 %106, i32 35)
  %110 = sext i32 %87 to i64
  %111 = sext i32 %88 to i64
  %icmpEq365 = icmp eq i64 %110, %111
  %zext366 = zext i1 %icmpEq365 to i32
  call void @assert_ft(i32 %zext366, i32 35)
  %112 = getelementptr inbounds ptr, ptr %1, i64 %110
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %112, align 8
  %115 = sext i32 %70 to i64
  %116 = sext i32 %70 to i64
  %icmpEq367 = icmp eq i64 %115, %116
  %zext368 = zext i1 %icmpEq367 to i32
  call void @assert_ft(i32 %zext368, i32 35)
  %117 = sext i32 %70 to i64
  %icmpEq331 = icmp eq i64 %115, %117
  %zext332 = zext i1 %icmpEq331 to i32
  call void @assert_ft(i32 %zext332, i32 35)
  %118 = getelementptr inbounds ptr, ptr %113, i64 %115
  %119 = getelementptr inbounds ptr, ptr %114, i64 %116
  %120 = load ptr, ptr %118, align 8
  %121 = load ptr, ptr %119, align 8
  %.not46 = icmp eq ptr %120, null
  %122 = icmp eq ptr %121, null
  %icmpEq369 = icmp eq i1 %.not46, %122
  %zext370 = zext i1 %icmpEq369 to i32
  call void @assert_ft(i32 %zext370, i32 35)
  %123 = select i1 %.not46, i32 694158084, i32 591397154
  %124 = select i1 %122, i32 694158084, i32 591397154
  %icmpEq333 = icmp eq i32 %123, %124
  %zext334 = zext i1 %icmpEq333 to i32
  %125 = zext i1 %icmpEq333 to i32
  %icmpEq371 = icmp eq i32 %zext334, %125
  %zext372 = zext i1 %icmpEq371 to i32
  call void @assert_ft(i32 %zext372, i32 35)
  call void @assert_ft(i32 %zext334, i32 35)
  %126 = xor i32 540018953, %123
  br i1 %.not46, label %157, label %.preheader

.preheader:                                       ; preds = %86
  %cfg_DestPhi165 = phi i32 [ 540018953, %86 ]
  %127 = phi i32 [ 540018953, %86 ]
  %128 = phi i32 [ 540018953, %86 ]
  %cfg_DiffPhi166 = phi i32 [ %126, %86 ]
  %129 = phi i32 [ %126, %86 ]
  %130 = phi i32 [ %126, %86 ]
  %131 = phi i32 [ %126, %86 ]
  %icmpEq387 = icmp eq i32 %130, %131
  %zext388 = zext i1 %icmpEq387 to i32
  call void @assert_ft(i32 %zext388, i32 35)
  %icmpEq385 = icmp eq i32 %cfg_DiffPhi166, %129
  %132 = icmp eq i32 %129, %129
  %icmpEq389 = icmp eq i1 %icmpEq385, %132
  %zext390 = zext i1 %icmpEq389 to i32
  call void @assert_ft(i32 %zext390, i32 35)
  %zext386 = zext i1 %icmpEq385 to i32
  call void @assert_ft(i32 %zext386, i32 35)
  %icmpEq383 = icmp eq i32 %127, %128
  %zext384 = zext i1 %icmpEq383 to i32
  %133 = zext i1 %icmpEq383 to i32
  %icmpEq391 = icmp eq i32 %zext384, %133
  %zext392 = zext i1 %icmpEq391 to i32
  call void @assert_ft(i32 %zext392, i32 35)
  call void @assert_ft(i32 %zext384, i32 35)
  %icmpEq375 = icmp eq i32 %cfg_DiffPhi166, %130
  %zext376 = zext i1 %icmpEq375 to i32
  call void @assert_ft(i32 %zext376, i32 35)
  %icmpEq373 = icmp eq i32 %cfg_DestPhi165, %127
  %134 = icmp eq i32 %127, %128
  %icmpEq393 = icmp eq i1 %icmpEq373, %134
  %zext394 = zext i1 %icmpEq393 to i32
  call void @assert_ft(i32 %zext394, i32 35)
  %135 = icmp eq i32 %cfg_DestPhi165, %127
  %icmpEq377 = icmp eq i1 %icmpEq373, %135
  %zext378 = zext i1 %icmpEq377 to i32
  call void @assert_ft(i32 %zext378, i32 35)
  %zext374 = zext i1 %icmpEq373 to i32
  %136 = zext i1 %134 to i32
  %icmpEq395 = icmp eq i32 %zext374, %136
  %zext396 = zext i1 %icmpEq395 to i32
  call void @assert_ft(i32 %zext396, i32 35)
  call void @assert_ft(i32 %zext374, i32 35)
  %137 = xor i32 %cfg_DestPhi165, %cfg_DiffPhi166
  %cfg_icmpEq167 = icmp eq i32 %137, 591397154
  %138 = icmp eq i32 %137, 591397154
  %139 = icmp eq i32 %137, 591397154
  %icmpEq397 = icmp eq i1 %138, %139
  %zext398 = zext i1 %icmpEq397 to i32
  call void @assert_ft(i32 %zext398, i32 35)
  %icmpEq379 = icmp eq i1 %cfg_icmpEq167, %138
  %zext380 = zext i1 %icmpEq379 to i32
  call void @assert_ft(i32 %zext380, i32 35)
  %cfg_zext168 = zext i1 %cfg_icmpEq167 to i32
  %140 = zext i1 %138 to i32
  %icmpEq399 = icmp eq i32 %cfg_zext168, %140
  %zext400 = zext i1 %icmpEq399 to i32
  call void @assert_ft(i32 %zext400, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext168, i32 %137, i32 35)
  %141 = select i1 %.not86, i32 899679501, i32 642778121
  %142 = xor i32 591397154, %141
  %143 = xor i32 591397154, %141
  %144 = xor i32 591397154, %141
  %icmpEq401 = icmp eq i32 %143, %144
  %zext402 = zext i1 %icmpEq401 to i32
  call void @assert_ft(i32 %zext402, i32 35)
  %icmpEq381 = icmp eq i32 %142, %143
  %zext382 = zext i1 %icmpEq381 to i32
  call void @assert_ft(i32 %zext382, i32 35)
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %cfg_DestPhi169 = phi i32 [ 591397154, %.preheader ]
  %145 = phi i32 [ 591397154, %.preheader ]
  %cfg_DiffPhi170 = phi i32 [ %142, %.preheader ]
  %146 = phi i32 [ %143, %.preheader ]
  %icmpEq405 = icmp eq i32 %cfg_DiffPhi170, %146
  %zext406 = zext i1 %icmpEq405 to i32
  call void @assert_ft(i32 %zext406, i32 35)
  %icmpEq403 = icmp eq i32 %cfg_DestPhi169, %145
  %147 = icmp eq i32 %145, %145
  %icmpEq407 = icmp eq i1 %icmpEq403, %147
  %zext408 = zext i1 %icmpEq407 to i32
  call void @assert_ft(i32 %zext408, i32 35)
  %zext404 = zext i1 %icmpEq403 to i32
  call void @assert_ft(i32 %zext404, i32 35)
  %148 = xor i32 %cfg_DestPhi169, %cfg_DiffPhi170
  %cfg_icmpEq171 = icmp eq i32 %148, 642778121
  %149 = icmp eq i32 %148, 642778121
  %icmpEq409 = icmp eq i1 %cfg_icmpEq171, %149
  %zext410 = zext i1 %icmpEq409 to i32
  call void @assert_ft(i32 %zext410, i32 35)
  %cfg_zext172 = zext i1 %cfg_icmpEq171 to i32
  call void @assert_cfg_ft(i32 %cfg_zext172, i32 %148, i32 35)
  %150 = load ptr, ptr %28, align 8
  %151 = load ptr, ptr %150, align 8
  %152 = load ptr, ptr %150, align 8
  %153 = icmp eq ptr %120, %151
  %154 = icmp eq ptr %121, %152
  %icmpEq411 = icmp eq i1 %153, %154
  %zext412 = zext i1 %icmpEq411 to i32
  call void @assert_ft(i32 %zext412, i32 35)
  %155 = select i1 %153, i32 899679501, i32 745538574
  %156 = xor i32 642778121, %155
  br i1 %153, label %._crit_edge, label %.lr.ph110

157:                                              ; preds = %86
  %cfg_DestPhi173 = phi i32 [ 540018953, %86 ]
  %158 = phi i32 [ 540018953, %86 ]
  %cfg_DiffPhi174 = phi i32 [ %126, %86 ]
  %159 = phi i32 [ %126, %86 ]
  %icmpEq415 = icmp eq i32 %cfg_DiffPhi174, %159
  %zext416 = zext i1 %icmpEq415 to i32
  call void @assert_ft(i32 %zext416, i32 35)
  %icmpEq413 = icmp eq i32 %cfg_DestPhi173, %158
  %160 = icmp eq i32 %158, %158
  %icmpEq417 = icmp eq i1 %icmpEq413, %160
  %zext418 = zext i1 %icmpEq417 to i32
  call void @assert_ft(i32 %zext418, i32 35)
  %zext414 = zext i1 %icmpEq413 to i32
  call void @assert_ft(i32 %zext414, i32 35)
  %161 = xor i32 %cfg_DestPhi173, %cfg_DiffPhi174
  %cfg_icmpEq175 = icmp eq i32 %161, 694158084
  %162 = icmp eq i32 %161, 694158084
  %icmpEq419 = icmp eq i1 %cfg_icmpEq175, %162
  %zext420 = zext i1 %icmpEq419 to i32
  call void @assert_ft(i32 %zext420, i32 35)
  %cfg_zext176 = zext i1 %cfg_icmpEq175 to i32
  call void @assert_cfg_ft(i32 %cfg_zext176, i32 %161, i32 35)
  %163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %70, i32 noundef %87)
  tail call void @exit(i32 noundef 0) #14
  unreachable

.lr.ph110:                                        ; preds = %191, %.lr.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next, %191 ], [ 0, %.lr.ph ]
  %164 = phi i64 [ %186, %191 ], [ 0, %.lr.ph ]
  %165 = phi i64 [ %indvars.iv.next, %191 ], [ 0, %.lr.ph ]
  %166 = phi i64 [ %186, %191 ], [ 0, %.lr.ph ]
  %cfg_DestPhi177 = phi i32 [ 642778121, %.lr.ph ], [ 796918819, %191 ]
  %167 = phi i32 [ 642778121, %.lr.ph ], [ 796918819, %191 ]
  %168 = phi i32 [ 642778121, %.lr.ph ], [ 796918819, %191 ]
  %169 = phi i32 [ 642778121, %.lr.ph ], [ 796918819, %191 ]
  %cfg_DiffPhi178 = phi i32 [ %156, %.lr.ph ], [ %203, %191 ]
  %170 = phi i32 [ %156, %.lr.ph ], [ %203, %191 ]
  %171 = phi i32 [ %156, %.lr.ph ], [ %203, %191 ]
  %172 = phi i32 [ %156, %.lr.ph ], [ %203, %191 ]
  %icmpEq445 = icmp eq i32 %171, %172
  %zext446 = zext i1 %icmpEq445 to i32
  call void @assert_ft(i32 %zext446, i32 35)
  %icmpEq443 = icmp eq i32 %cfg_DiffPhi178, %170
  %173 = icmp eq i32 %170, %170
  %icmpEq447 = icmp eq i1 %icmpEq443, %173
  %zext448 = zext i1 %icmpEq447 to i32
  call void @assert_ft(i32 %zext448, i32 35)
  %zext444 = zext i1 %icmpEq443 to i32
  call void @assert_ft(i32 %zext444, i32 35)
  %icmpEq441 = icmp eq i32 %168, %169
  %zext442 = zext i1 %icmpEq441 to i32
  %174 = zext i1 %icmpEq441 to i32
  %icmpEq449 = icmp eq i32 %zext442, %174
  %zext450 = zext i1 %icmpEq449 to i32
  call void @assert_ft(i32 %zext450, i32 35)
  call void @assert_ft(i32 %zext442, i32 35)
  %icmpEq439 = icmp eq i32 %cfg_DestPhi177, %167
  %zext440 = zext i1 %icmpEq439 to i32
  call void @assert_ft(i32 %zext440, i32 35)
  %icmpEq437 = icmp eq i64 %165, %166
  %175 = icmp eq i64 %166, %166
  %icmpEq451 = icmp eq i1 %icmpEq437, %175
  %zext452 = zext i1 %icmpEq451 to i32
  call void @assert_ft(i32 %zext452, i32 35)
  %zext438 = zext i1 %icmpEq437 to i32
  call void @assert_ft(i32 %zext438, i32 35)
  %icmpEq435 = icmp eq i64 %indvars.iv109, %164
  %zext436 = zext i1 %icmpEq435 to i32
  %176 = zext i1 %icmpEq435 to i32
  %icmpEq453 = icmp eq i32 %zext436, %176
  %zext454 = zext i1 %icmpEq453 to i32
  call void @assert_ft(i32 %zext454, i32 35)
  call void @assert_ft(i32 %zext436, i32 35)
  %icmpEq425 = icmp eq i32 %cfg_DiffPhi178, %171
  %zext426 = zext i1 %icmpEq425 to i32
  call void @assert_ft(i32 %zext426, i32 35)
  %icmpEq423 = icmp eq i32 %cfg_DestPhi177, %168
  %177 = icmp eq i32 %167, %169
  %icmpEq455 = icmp eq i1 %icmpEq423, %177
  %zext456 = zext i1 %icmpEq455 to i32
  call void @assert_ft(i32 %zext456, i32 35)
  %178 = icmp eq i32 %cfg_DestPhi177, %168
  %icmpEq427 = icmp eq i1 %icmpEq423, %178
  %zext428 = zext i1 %icmpEq427 to i32
  call void @assert_ft(i32 %zext428, i32 35)
  %zext424 = zext i1 %icmpEq423 to i32
  %179 = zext i1 %177 to i32
  %icmpEq457 = icmp eq i32 %zext424, %179
  %zext458 = zext i1 %icmpEq457 to i32
  call void @assert_ft(i32 %zext458, i32 35)
  call void @assert_ft(i32 %zext424, i32 35)
  %icmpEq421 = icmp eq i64 %indvars.iv109, %165
  %zext422 = zext i1 %icmpEq421 to i32
  %180 = zext i1 %icmpEq421 to i32
  %181 = zext i1 %icmpEq421 to i32
  %icmpEq459 = icmp eq i32 %180, %181
  %zext460 = zext i1 %icmpEq459 to i32
  call void @assert_ft(i32 %zext460, i32 35)
  %icmpEq429 = icmp eq i32 %zext422, %180
  %zext430 = zext i1 %icmpEq429 to i32
  call void @assert_ft(i32 %zext430, i32 35)
  call void @assert_ft(i32 %zext422, i32 35)
  %182 = xor i32 %cfg_DestPhi177, %cfg_DiffPhi178
  %183 = xor i32 %167, %170
  %icmpEq461 = icmp eq i32 %182, %183
  %zext462 = zext i1 %icmpEq461 to i32
  call void @assert_ft(i32 %zext462, i32 35)
  %cfg_icmpEq179 = icmp eq i32 %182, 745538574
  %cfg_zext180 = zext i1 %cfg_icmpEq179 to i32
  %184 = zext i1 %cfg_icmpEq179 to i32
  %icmpEq431 = icmp eq i32 %cfg_zext180, %184
  %185 = icmp eq i32 %184, %184
  %icmpEq463 = icmp eq i1 %icmpEq431, %185
  %zext464 = zext i1 %icmpEq463 to i32
  call void @assert_ft(i32 %zext464, i32 35)
  %zext432 = zext i1 %icmpEq431 to i32
  call void @assert_ft(i32 %zext432, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext180, i32 %182, i32 35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv109, 1
  %186 = add nuw nsw i64 %164, 1
  %icmpEq465 = icmp eq i64 %indvars.iv.next, %186
  %zext466 = zext i1 %icmpEq465 to i32
  call void @assert_ft(i32 %zext466, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv82
  %187 = select i1 %exitcond.not, i32 848298524, i32 796918819
  %188 = select i1 %exitcond.not, i32 848298524, i32 796918819
  %icmpEq433 = icmp eq i32 %187, %188
  %189 = icmp eq i32 %188, %188
  %icmpEq467 = icmp eq i1 %icmpEq433, %189
  %zext468 = zext i1 %icmpEq467 to i32
  call void @assert_ft(i32 %zext468, i32 35)
  %zext434 = zext i1 %icmpEq433 to i32
  call void @assert_ft(i32 %zext434, i32 35)
  %190 = xor i32 745538574, %187
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %191

191:                                              ; preds = %.lr.ph110
  %cfg_DestPhi181 = phi i32 [ 745538574, %.lr.ph110 ]
  %192 = phi i32 [ 745538574, %.lr.ph110 ]
  %cfg_DiffPhi182 = phi i32 [ %190, %.lr.ph110 ]
  %193 = phi i32 [ %190, %.lr.ph110 ]
  %icmpEq471 = icmp eq i32 %cfg_DiffPhi182, %193
  %zext472 = zext i1 %icmpEq471 to i32
  call void @assert_ft(i32 %zext472, i32 35)
  %icmpEq469 = icmp eq i32 %cfg_DestPhi181, %192
  %194 = icmp eq i32 %192, %192
  %icmpEq473 = icmp eq i1 %icmpEq469, %194
  %zext474 = zext i1 %icmpEq473 to i32
  call void @assert_ft(i32 %zext474, i32 35)
  %zext470 = zext i1 %icmpEq469 to i32
  call void @assert_ft(i32 %zext470, i32 35)
  %195 = xor i32 %cfg_DestPhi181, %cfg_DiffPhi182
  %cfg_icmpEq183 = icmp eq i32 %195, 796918819
  %196 = icmp eq i32 %195, 796918819
  %icmpEq475 = icmp eq i1 %cfg_icmpEq183, %196
  %zext476 = zext i1 %icmpEq475 to i32
  call void @assert_ft(i32 %zext476, i32 35)
  %cfg_zext184 = zext i1 %cfg_icmpEq183 to i32
  call void @assert_cfg_ft(i32 %cfg_zext184, i32 %195, i32 35)
  %197 = getelementptr inbounds ptr, ptr %150, i64 %indvars.iv.next
  %198 = load ptr, ptr %197, align 8
  %199 = load ptr, ptr %197, align 8
  %200 = icmp eq ptr %120, %198
  %201 = icmp eq ptr %121, %199
  %icmpEq477 = icmp eq i1 %200, %201
  %zext478 = zext i1 %icmpEq477 to i32
  call void @assert_ft(i32 %zext478, i32 35)
  %202 = select i1 %200, i32 848298524, i32 745538574
  %203 = xor i32 796918819, %202
  br i1 %200, label %._crit_edge.loopexit, label %.lr.ph110

._crit_edge.loopexit:                             ; preds = %191, %.lr.ph110
  %cfg_DestPhi185 = phi i32 [ 745538574, %.lr.ph110 ], [ 796918819, %191 ]
  %204 = phi i32 [ 745538574, %.lr.ph110 ], [ 796918819, %191 ]
  %cfg_DiffPhi186 = phi i32 [ %190, %.lr.ph110 ], [ %203, %191 ]
  %205 = phi i32 [ %190, %.lr.ph110 ], [ %203, %191 ]
  %icmpEq481 = icmp eq i32 %cfg_DiffPhi186, %205
  %zext482 = zext i1 %icmpEq481 to i32
  call void @assert_ft(i32 %zext482, i32 35)
  %icmpEq479 = icmp eq i32 %cfg_DestPhi185, %204
  %206 = icmp eq i32 %204, %204
  %icmpEq483 = icmp eq i1 %icmpEq479, %206
  %zext484 = zext i1 %icmpEq483 to i32
  call void @assert_ft(i32 %zext484, i32 35)
  %zext480 = zext i1 %icmpEq479 to i32
  call void @assert_ft(i32 %zext480, i32 35)
  %207 = xor i32 %cfg_DestPhi185, %cfg_DiffPhi186
  %cfg_icmpEq187 = icmp eq i32 %207, 848298524
  %208 = icmp eq i32 %207, 848298524
  %icmpEq485 = icmp eq i1 %cfg_icmpEq187, %208
  %zext486 = zext i1 %icmpEq485 to i32
  call void @assert_ft(i32 %zext486, i32 35)
  %cfg_zext188 = zext i1 %cfg_icmpEq187 to i32
  call void @assert_cfg_ft(i32 %cfg_zext188, i32 %207, i32 35)
  %209 = icmp ult i64 %indvars.iv.next, %indvars.iv82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph, %.preheader
  %.lcssa = phi i1 [ false, %.preheader ], [ true, %.lr.ph ], [ %209, %._crit_edge.loopexit ]
  %210 = phi i1 [ false, %.preheader ], [ true, %.lr.ph ], [ %209, %._crit_edge.loopexit ]
  %cfg_DestPhi189 = phi i32 [ 848298524, %._crit_edge.loopexit ], [ 642778121, %.lr.ph ], [ 591397154, %.preheader ]
  %211 = phi i32 [ 848298524, %._crit_edge.loopexit ], [ 642778121, %.lr.ph ], [ 591397154, %.preheader ]
  %cfg_DiffPhi190 = phi i32 [ 120588049, %._crit_edge.loopexit ], [ %156, %.lr.ph ], [ %142, %.preheader ]
  %212 = phi i32 [ 120588049, %._crit_edge.loopexit ], [ %156, %.lr.ph ], [ %143, %.preheader ]
  %icmpEq491 = icmp eq i32 %cfg_DiffPhi190, %212
  %zext492 = zext i1 %icmpEq491 to i32
  call void @assert_ft(i32 %zext492, i32 35)
  %icmpEq489 = icmp eq i32 %cfg_DestPhi189, %211
  %213 = icmp eq i32 %211, %211
  %icmpEq493 = icmp eq i1 %icmpEq489, %213
  %zext494 = zext i1 %icmpEq493 to i32
  call void @assert_ft(i32 %zext494, i32 35)
  %zext490 = zext i1 %icmpEq489 to i32
  call void @assert_ft(i32 %zext490, i32 35)
  %icmpEq487 = icmp eq i1 %.lcssa, %210
  %zext488 = zext i1 %icmpEq487 to i32
  %214 = zext i1 %icmpEq487 to i32
  %icmpEq495 = icmp eq i32 %zext488, %214
  %zext496 = zext i1 %icmpEq495 to i32
  call void @assert_ft(i32 %zext496, i32 35)
  call void @assert_ft(i32 %zext488, i32 35)
  %215 = xor i32 %cfg_DestPhi189, %cfg_DiffPhi190
  %cfg_icmpEq191 = icmp eq i32 %215, 899679501
  %cfg_zext192 = zext i1 %cfg_icmpEq191 to i32
  %216 = zext i1 %cfg_icmpEq191 to i32
  %icmpEq497 = icmp eq i32 %cfg_zext192, %216
  %zext498 = zext i1 %icmpEq497 to i32
  call void @assert_ft(i32 %zext498, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext192, i32 %215, i32 35)
  %217 = ptrtoint ptr %120 to i64
  %218 = trunc i64 %217 to i32
  %219 = icmp ult i32 %218, 262144
  %220 = icmp ult i32 %218, 262144
  %icmpEq499 = icmp eq i1 %219, %220
  %zext500 = zext i1 %icmpEq499 to i32
  call void @assert_ft(i32 %zext500, i32 35)
  %221 = select i1 %219, i32 951058956, i32 1002438914
  %222 = xor i32 899679501, %221
  br i1 %219, label %223, label %230

223:                                              ; preds = %._crit_edge
  %cfg_DestPhi193 = phi i32 [ 899679501, %._crit_edge ]
  %224 = phi i32 [ 899679501, %._crit_edge ]
  %cfg_DiffPhi194 = phi i32 [ %222, %._crit_edge ]
  %225 = phi i32 [ %222, %._crit_edge ]
  %icmpEq503 = icmp eq i32 %cfg_DiffPhi194, %225
  %zext504 = zext i1 %icmpEq503 to i32
  call void @assert_ft(i32 %zext504, i32 35)
  %icmpEq501 = icmp eq i32 %cfg_DestPhi193, %224
  %226 = icmp eq i32 %224, %224
  %icmpEq505 = icmp eq i1 %icmpEq501, %226
  %zext506 = zext i1 %icmpEq505 to i32
  call void @assert_ft(i32 %zext506, i32 35)
  %zext502 = zext i1 %icmpEq501 to i32
  call void @assert_ft(i32 %zext502, i32 35)
  %227 = xor i32 %cfg_DestPhi193, %cfg_DiffPhi194
  %cfg_icmpEq195 = icmp eq i32 %227, 951058956
  %228 = icmp eq i32 %227, 951058956
  %icmpEq507 = icmp eq i1 %cfg_icmpEq195, %228
  %zext508 = zext i1 %icmpEq507 to i32
  call void @assert_ft(i32 %zext508, i32 35)
  %cfg_zext196 = zext i1 %cfg_icmpEq195 to i32
  call void @assert_cfg_ft(i32 %cfg_zext196, i32 %227, i32 35)
  %229 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %218, i32 noundef %70, i32 noundef %87)
  br label %230

230:                                              ; preds = %223, %._crit_edge
  %cfg_DestPhi197 = phi i32 [ 899679501, %._crit_edge ], [ 951058956, %223 ]
  %231 = phi i32 [ 899679501, %._crit_edge ], [ 951058956, %223 ]
  %232 = phi i32 [ 899679501, %._crit_edge ], [ 951058956, %223 ]
  %cfg_DiffPhi198 = phi i32 [ %222, %._crit_edge ], [ 57672462, %223 ]
  %233 = phi i32 [ %222, %._crit_edge ], [ 57672462, %223 ]
  %234 = phi i32 [ %222, %._crit_edge ], [ 57672462, %223 ]
  %235 = phi i32 [ %222, %._crit_edge ], [ 57672462, %223 ]
  %icmpEq523 = icmp eq i32 %234, %235
  %zext524 = zext i1 %icmpEq523 to i32
  call void @assert_ft(i32 %zext524, i32 35)
  %icmpEq521 = icmp eq i32 %cfg_DiffPhi198, %233
  %236 = icmp eq i32 %233, %233
  %icmpEq525 = icmp eq i1 %icmpEq521, %236
  %zext526 = zext i1 %icmpEq525 to i32
  call void @assert_ft(i32 %zext526, i32 35)
  %zext522 = zext i1 %icmpEq521 to i32
  call void @assert_ft(i32 %zext522, i32 35)
  %icmpEq519 = icmp eq i32 %231, %232
  %zext520 = zext i1 %icmpEq519 to i32
  %237 = zext i1 %icmpEq519 to i32
  %icmpEq527 = icmp eq i32 %zext520, %237
  %zext528 = zext i1 %icmpEq527 to i32
  call void @assert_ft(i32 %zext528, i32 35)
  call void @assert_ft(i32 %zext520, i32 35)
  %icmpEq511 = icmp eq i32 %cfg_DiffPhi198, %234
  %zext512 = zext i1 %icmpEq511 to i32
  call void @assert_ft(i32 %zext512, i32 35)
  %icmpEq509 = icmp eq i32 %cfg_DestPhi197, %231
  %238 = icmp eq i32 %231, %232
  %icmpEq529 = icmp eq i1 %icmpEq509, %238
  %zext530 = zext i1 %icmpEq529 to i32
  call void @assert_ft(i32 %zext530, i32 35)
  %239 = icmp eq i32 %cfg_DestPhi197, %231
  %icmpEq513 = icmp eq i1 %icmpEq509, %239
  %zext514 = zext i1 %icmpEq513 to i32
  call void @assert_ft(i32 %zext514, i32 35)
  %zext510 = zext i1 %icmpEq509 to i32
  %240 = zext i1 %238 to i32
  %icmpEq531 = icmp eq i32 %zext510, %240
  %zext532 = zext i1 %icmpEq531 to i32
  call void @assert_ft(i32 %zext532, i32 35)
  call void @assert_ft(i32 %zext510, i32 35)
  %241 = xor i32 %cfg_DestPhi197, %cfg_DiffPhi198
  %cfg_icmpEq199 = icmp eq i32 %241, 1002438914
  %242 = icmp eq i32 %241, 1002438914
  %243 = icmp eq i32 %241, 1002438914
  %icmpEq533 = icmp eq i1 %242, %243
  %zext534 = zext i1 %icmpEq533 to i32
  call void @assert_ft(i32 %zext534, i32 35)
  %icmpEq515 = icmp eq i1 %cfg_icmpEq199, %242
  %zext516 = zext i1 %icmpEq515 to i32
  call void @assert_ft(i32 %zext516, i32 35)
  %cfg_zext200 = zext i1 %cfg_icmpEq199 to i32
  %244 = zext i1 %242 to i32
  %icmpEq535 = icmp eq i32 %cfg_zext200, %244
  %zext536 = zext i1 %icmpEq535 to i32
  call void @assert_ft(i32 %zext536, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext200, i32 %241, i32 35)
  %245 = select i1 %.lcssa, i32 437257252, i32 1053819679
  %246 = xor i32 1002438914, %245
  %247 = xor i32 1002438914, %245
  %248 = xor i32 1002438914, %245
  %icmpEq537 = icmp eq i32 %247, %248
  %zext538 = zext i1 %icmpEq537 to i32
  call void @assert_ft(i32 %zext538, i32 35)
  %icmpEq517 = icmp eq i32 %246, %247
  %zext518 = zext i1 %icmpEq517 to i32
  call void @assert_ft(i32 %zext518, i32 35)
  br i1 %.lcssa, label %64, label %249

249:                                              ; preds = %230
  %cfg_DestPhi201 = phi i32 [ 1002438914, %230 ]
  %250 = phi i32 [ 1002438914, %230 ]
  %cfg_DiffPhi202 = phi i32 [ %246, %230 ]
  %251 = phi i32 [ %247, %230 ]
  %icmpEq541 = icmp eq i32 %cfg_DiffPhi202, %251
  %zext542 = zext i1 %icmpEq541 to i32
  call void @assert_ft(i32 %zext542, i32 35)
  %icmpEq539 = icmp eq i32 %cfg_DestPhi201, %250
  %252 = icmp eq i32 %250, %250
  %icmpEq543 = icmp eq i1 %icmpEq539, %252
  %zext544 = zext i1 %icmpEq543 to i32
  call void @assert_ft(i32 %zext544, i32 35)
  %zext540 = zext i1 %icmpEq539 to i32
  call void @assert_ft(i32 %zext540, i32 35)
  %253 = xor i32 %cfg_DestPhi201, %cfg_DiffPhi202
  %cfg_icmpEq203 = icmp eq i32 %253, 1053819679
  %254 = icmp eq i32 %253, 1053819679
  %icmpEq545 = icmp eq i1 %cfg_icmpEq203, %254
  %zext546 = zext i1 %icmpEq545 to i32
  call void @assert_ft(i32 %zext546, i32 35)
  %cfg_zext204 = zext i1 %cfg_icmpEq203 to i32
  call void @assert_cfg_ft(i32 %cfg_zext204, i32 %253, i32 35)
  %255 = load ptr, ptr %28, align 8
  %.not47 = icmp eq ptr %255, null
  %256 = icmp eq ptr %255, null
  %icmpEq547 = icmp eq i1 %.not47, %256
  %zext548 = zext i1 %icmpEq547 to i32
  call void @assert_ft(i32 %zext548, i32 35)
  %257 = select i1 %.not47, i32 1105200391, i32 1156580103
  %258 = xor i32 1053819679, %257
  br i1 %.not47, label %259, label %269

259:                                              ; preds = %249
  %cfg_DestPhi205 = phi i32 [ 1053819679, %249 ]
  %260 = phi i32 [ 1053819679, %249 ]
  %cfg_DiffPhi206 = phi i32 [ %258, %249 ]
  %261 = phi i32 [ %258, %249 ]
  %icmpEq551 = icmp eq i32 %cfg_DiffPhi206, %261
  %zext552 = zext i1 %icmpEq551 to i32
  call void @assert_ft(i32 %zext552, i32 35)
  %icmpEq549 = icmp eq i32 %cfg_DestPhi205, %260
  %262 = icmp eq i32 %260, %260
  %icmpEq553 = icmp eq i1 %icmpEq549, %262
  %zext554 = zext i1 %icmpEq553 to i32
  call void @assert_ft(i32 %zext554, i32 35)
  %zext550 = zext i1 %icmpEq549 to i32
  call void @assert_ft(i32 %zext550, i32 35)
  %263 = xor i32 %cfg_DestPhi205, %cfg_DiffPhi206
  %cfg_icmpEq207 = icmp eq i32 %263, 1105200391
  %264 = icmp eq i32 %263, 1105200391
  %icmpEq555 = icmp eq i1 %cfg_icmpEq207, %264
  %zext556 = zext i1 %icmpEq555 to i32
  call void @assert_ft(i32 %zext556, i32 35)
  %cfg_zext208 = zext i1 %cfg_icmpEq207 to i32
  call void @assert_cfg_ft(i32 %cfg_zext208, i32 %263, i32 35)
  %265 = ptrtoint ptr %.067 to i64
  %266 = trunc i64 %265 to i32
  %267 = trunc i64 %265 to i32
  %icmpEq557 = icmp eq i32 %266, %267
  %zext558 = zext i1 %icmpEq557 to i32
  call void @assert_ft(i32 %zext558, i32 35)
  %268 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %266)
  tail call void @exit(i32 noundef 0) #14
  unreachable

269:                                              ; preds = %249
  %cfg_DestPhi209 = phi i32 [ 1053819679, %249 ]
  %270 = phi i32 [ 1053819679, %249 ]
  %271 = phi i32 [ 1053819679, %249 ]
  %272 = phi i32 [ 1053819679, %249 ]
  %273 = phi i32 [ 1053819679, %249 ]
  %274 = phi i32 [ 1053819679, %249 ]
  %275 = phi i32 [ 1053819679, %249 ]
  %cfg_DiffPhi210 = phi i32 [ %258, %249 ]
  %276 = phi i32 [ %258, %249 ]
  %277 = phi i32 [ %258, %249 ]
  %278 = phi i32 [ %258, %249 ]
  %279 = phi i32 [ %258, %249 ]
  %280 = phi i32 [ %258, %249 ]
  %281 = phi i32 [ %258, %249 ]
  %282 = phi i32 [ %258, %249 ]
  %icmpEq607 = icmp eq i32 %281, %282
  %zext608 = zext i1 %icmpEq607 to i32
  call void @assert_ft(i32 %zext608, i32 35)
  %icmpEq605 = icmp eq i32 %279, %280
  %283 = icmp eq i32 %280, %280
  %icmpEq609 = icmp eq i1 %icmpEq605, %283
  %zext610 = zext i1 %icmpEq609 to i32
  call void @assert_ft(i32 %zext610, i32 35)
  %zext606 = zext i1 %icmpEq605 to i32
  call void @assert_ft(i32 %zext606, i32 35)
  %icmpEq603 = icmp eq i32 %277, %278
  %zext604 = zext i1 %icmpEq603 to i32
  %284 = zext i1 %icmpEq603 to i32
  %icmpEq611 = icmp eq i32 %zext604, %284
  %zext612 = zext i1 %icmpEq611 to i32
  call void @assert_ft(i32 %zext612, i32 35)
  call void @assert_ft(i32 %zext604, i32 35)
  %icmpEq601 = icmp eq i32 %cfg_DiffPhi210, %276
  %zext602 = zext i1 %icmpEq601 to i32
  call void @assert_ft(i32 %zext602, i32 35)
  %icmpEq599 = icmp eq i32 %274, %275
  %285 = icmp eq i32 %275, %275
  %icmpEq613 = icmp eq i1 %icmpEq599, %285
  %zext614 = zext i1 %icmpEq613 to i32
  call void @assert_ft(i32 %zext614, i32 35)
  %zext600 = zext i1 %icmpEq599 to i32
  call void @assert_ft(i32 %zext600, i32 35)
  %icmpEq597 = icmp eq i32 %272, %273
  %zext598 = zext i1 %icmpEq597 to i32
  %286 = zext i1 %icmpEq597 to i32
  %icmpEq615 = icmp eq i32 %zext598, %286
  %zext616 = zext i1 %icmpEq615 to i32
  call void @assert_ft(i32 %zext616, i32 35)
  call void @assert_ft(i32 %zext598, i32 35)
  %icmpEq595 = icmp eq i32 %270, %271
  %zext596 = zext i1 %icmpEq595 to i32
  call void @assert_ft(i32 %zext596, i32 35)
  %icmpEq575 = icmp eq i32 %279, %281
  %287 = icmp eq i32 %280, %282
  %icmpEq617 = icmp eq i1 %icmpEq575, %287
  %zext618 = zext i1 %icmpEq617 to i32
  call void @assert_ft(i32 %zext618, i32 35)
  %zext576 = zext i1 %icmpEq575 to i32
  call void @assert_ft(i32 %zext576, i32 35)
  %icmpEq573 = icmp eq i32 %cfg_DiffPhi210, %277
  %288 = icmp eq i32 %276, %278
  %289 = icmp eq i32 %276, %278
  %icmpEq619 = icmp eq i1 %288, %289
  %zext620 = zext i1 %icmpEq619 to i32
  call void @assert_ft(i32 %zext620, i32 35)
  %icmpEq577 = icmp eq i1 %icmpEq573, %288
  %zext578 = zext i1 %icmpEq577 to i32
  call void @assert_ft(i32 %zext578, i32 35)
  %zext574 = zext i1 %icmpEq573 to i32
  %290 = zext i1 %288 to i32
  %icmpEq621 = icmp eq i32 %zext574, %290
  %zext622 = zext i1 %icmpEq621 to i32
  call void @assert_ft(i32 %zext622, i32 35)
  call void @assert_ft(i32 %zext574, i32 35)
  %icmpEq571 = icmp eq i32 %272, %274
  %zext572 = zext i1 %icmpEq571 to i32
  %291 = zext i1 %icmpEq571 to i32
  %292 = zext i1 %icmpEq571 to i32
  %icmpEq623 = icmp eq i32 %291, %292
  %zext624 = zext i1 %icmpEq623 to i32
  call void @assert_ft(i32 %zext624, i32 35)
  %icmpEq579 = icmp eq i32 %zext572, %291
  %zext580 = zext i1 %icmpEq579 to i32
  call void @assert_ft(i32 %zext580, i32 35)
  call void @assert_ft(i32 %zext572, i32 35)
  %icmpEq569 = icmp eq i32 %cfg_DestPhi209, %270
  %293 = icmp eq i32 %270, %271
  %icmpEq625 = icmp eq i1 %icmpEq569, %293
  %zext626 = zext i1 %icmpEq625 to i32
  call void @assert_ft(i32 %zext626, i32 35)
  %zext570 = zext i1 %icmpEq569 to i32
  call void @assert_ft(i32 %zext570, i32 35)
  %icmpEq561 = icmp eq i32 %cfg_DiffPhi210, %279
  %294 = icmp eq i32 %276, %280
  %295 = icmp eq i32 %276, %280
  %icmpEq627 = icmp eq i1 %294, %295
  %zext628 = zext i1 %icmpEq627 to i32
  call void @assert_ft(i32 %zext628, i32 35)
  %icmpEq581 = icmp eq i1 %icmpEq561, %294
  %zext582 = zext i1 %icmpEq581 to i32
  call void @assert_ft(i32 %zext582, i32 35)
  %zext562 = zext i1 %icmpEq561 to i32
  %296 = zext i1 %294 to i32
  %icmpEq629 = icmp eq i32 %zext562, %296
  %zext630 = zext i1 %icmpEq629 to i32
  call void @assert_ft(i32 %zext630, i32 35)
  call void @assert_ft(i32 %zext562, i32 35)
  %icmpEq559 = icmp eq i32 %cfg_DestPhi209, %272
  %297 = icmp eq i32 %270, %273
  %298 = icmp eq i32 %270, %273
  %299 = icmp eq i32 %270, %273
  %icmpEq631 = icmp eq i1 %298, %299
  %zext632 = zext i1 %icmpEq631 to i32
  call void @assert_ft(i32 %zext632, i32 35)
  %icmpEq583 = icmp eq i1 %297, %298
  %zext584 = zext i1 %icmpEq583 to i32
  call void @assert_ft(i32 %zext584, i32 35)
  %icmpEq563 = icmp eq i1 %icmpEq559, %297
  %300 = icmp eq i1 %297, %298
  %icmpEq633 = icmp eq i1 %icmpEq563, %300
  %zext634 = zext i1 %icmpEq633 to i32
  call void @assert_ft(i32 %zext634, i32 35)
  %zext564 = zext i1 %icmpEq563 to i32
  call void @assert_ft(i32 %zext564, i32 35)
  %zext560 = zext i1 %icmpEq559 to i32
  %301 = zext i1 %297 to i32
  %302 = zext i1 %297 to i32
  %icmpEq635 = icmp eq i32 %301, %302
  %zext636 = zext i1 %icmpEq635 to i32
  call void @assert_ft(i32 %zext636, i32 35)
  %icmpEq585 = icmp eq i32 %zext560, %301
  %zext586 = zext i1 %icmpEq585 to i32
  call void @assert_ft(i32 %zext586, i32 35)
  call void @assert_ft(i32 %zext560, i32 35)
  %303 = xor i32 %cfg_DestPhi209, %cfg_DiffPhi210
  %304 = xor i32 %270, %276
  %icmpEq637 = icmp eq i32 %303, %304
  %zext638 = zext i1 %icmpEq637 to i32
  call void @assert_ft(i32 %zext638, i32 35)
  %cfg_icmpEq211 = icmp eq i32 %303, 1156580103
  %305 = icmp eq i32 %304, 1156580103
  %306 = icmp eq i32 %304, 1156580103
  %icmpEq587 = icmp eq i1 %305, %306
  %307 = icmp eq i1 %306, %306
  %icmpEq639 = icmp eq i1 %icmpEq587, %307
  %zext640 = zext i1 %icmpEq639 to i32
  call void @assert_ft(i32 %zext640, i32 35)
  %zext588 = zext i1 %icmpEq587 to i32
  call void @assert_ft(i32 %zext588, i32 35)
  %icmpEq565 = icmp eq i1 %cfg_icmpEq211, %305
  %zext566 = zext i1 %icmpEq565 to i32
  %308 = zext i1 %icmpEq565 to i32
  %icmpEq641 = icmp eq i32 %zext566, %308
  %zext642 = zext i1 %icmpEq641 to i32
  call void @assert_ft(i32 %zext642, i32 35)
  call void @assert_ft(i32 %zext566, i32 35)
  %cfg_zext212 = zext i1 %cfg_icmpEq211 to i32
  %309 = zext i1 %305 to i32
  %icmpEq589 = icmp eq i32 %cfg_zext212, %309
  %310 = icmp eq i32 %309, %309
  %icmpEq643 = icmp eq i1 %icmpEq589, %310
  %zext644 = zext i1 %icmpEq643 to i32
  call void @assert_ft(i32 %zext644, i32 35)
  %zext590 = zext i1 %icmpEq589 to i32
  call void @assert_ft(i32 %zext590, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext212, i32 %303, i32 35)
  %311 = getelementptr inbounds ptr, ptr %255, i64 %indvars.iv82
  %312 = getelementptr inbounds ptr, ptr %255, i64 %57
  store ptr %120, ptr %311, align 8
  %313 = select i1 %219, i32 1207960073, i32 1259341077
  %314 = select i1 %220, i32 1207960073, i32 1259341077
  %icmpEq645 = icmp eq i32 %313, %314
  %zext646 = zext i1 %icmpEq645 to i32
  call void @assert_ft(i32 %zext646, i32 35)
  %315 = select i1 %219, i32 1207960073, i32 1259341077
  %icmpEq591 = icmp eq i32 %313, %315
  %zext592 = zext i1 %icmpEq591 to i32
  call void @assert_ft(i32 %zext592, i32 35)
  %316 = select i1 %219, i32 1207960073, i32 1259341077
  %317 = select i1 %220, i32 1207960073, i32 1259341077
  %icmpEq647 = icmp eq i32 %316, %317
  %zext648 = zext i1 %icmpEq647 to i32
  call void @assert_ft(i32 %zext648, i32 35)
  %icmpEq567 = icmp eq i32 %313, %316
  %zext568 = zext i1 %icmpEq567 to i32
  call void @assert_ft(i32 %zext568, i32 35)
  %318 = xor i32 1156580103, %313
  %319 = xor i32 1156580103, %314
  %icmpEq649 = icmp eq i32 %318, %319
  %zext650 = zext i1 %icmpEq649 to i32
  call void @assert_ft(i32 %zext650, i32 35)
  %320 = xor i32 1156580103, %313
  %icmpEq593 = icmp eq i32 %318, %320
  %zext594 = zext i1 %icmpEq593 to i32
  call void @assert_ft(i32 %zext594, i32 35)
  br i1 %219, label %321, label %328

321:                                              ; preds = %269
  %cfg_DestPhi213 = phi i32 [ 1156580103, %269 ]
  %322 = phi i32 [ 1156580103, %269 ]
  %cfg_DiffPhi214 = phi i32 [ %318, %269 ]
  %323 = phi i32 [ %319, %269 ]
  %icmpEq653 = icmp eq i32 %cfg_DiffPhi214, %323
  %zext654 = zext i1 %icmpEq653 to i32
  call void @assert_ft(i32 %zext654, i32 35)
  %icmpEq651 = icmp eq i32 %cfg_DestPhi213, %322
  %324 = icmp eq i32 %322, %322
  %icmpEq655 = icmp eq i1 %icmpEq651, %324
  %zext656 = zext i1 %icmpEq655 to i32
  call void @assert_ft(i32 %zext656, i32 35)
  %zext652 = zext i1 %icmpEq651 to i32
  call void @assert_ft(i32 %zext652, i32 35)
  %325 = xor i32 %cfg_DestPhi213, %cfg_DiffPhi214
  %cfg_icmpEq215 = icmp eq i32 %325, 1207960073
  %326 = icmp eq i32 %325, 1207960073
  %icmpEq657 = icmp eq i1 %cfg_icmpEq215, %326
  %zext658 = zext i1 %icmpEq657 to i32
  call void @assert_ft(i32 %zext658, i32 35)
  %cfg_zext216 = zext i1 %cfg_icmpEq215 to i32
  call void @assert_cfg_ft(i32 %cfg_zext216, i32 %325, i32 35)
  %327 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %218)
  br label %328

328:                                              ; preds = %321, %269
  %cfg_DestPhi217 = phi i32 [ 1207960073, %321 ], [ 1156580103, %269 ]
  %329 = phi i32 [ 1207960073, %321 ], [ 1156580103, %269 ]
  %cfg_DiffPhi218 = phi i32 [ 51382044, %321 ], [ %318, %269 ]
  %330 = phi i32 [ 51382044, %321 ], [ %319, %269 ]
  %icmpEq661 = icmp eq i32 %cfg_DiffPhi218, %330
  %zext662 = zext i1 %icmpEq661 to i32
  call void @assert_ft(i32 %zext662, i32 35)
  %icmpEq659 = icmp eq i32 %cfg_DestPhi217, %329
  %331 = icmp eq i32 %329, %329
  %icmpEq663 = icmp eq i1 %icmpEq659, %331
  %zext664 = zext i1 %icmpEq663 to i32
  call void @assert_ft(i32 %zext664, i32 35)
  %zext660 = zext i1 %icmpEq659 to i32
  call void @assert_ft(i32 %zext660, i32 35)
  %332 = xor i32 %cfg_DestPhi217, %cfg_DiffPhi218
  %cfg_icmpEq219 = icmp eq i32 %332, 1259341077
  %333 = icmp eq i32 %332, 1259341077
  %icmpEq665 = icmp eq i1 %cfg_icmpEq219, %333
  %zext666 = zext i1 %icmpEq665 to i32
  call void @assert_ft(i32 %zext666, i32 35)
  %cfg_zext220 = zext i1 %cfg_icmpEq219 to i32
  call void @assert_cfg_ft(i32 %cfg_zext220, i32 %332, i32 35)
  %334 = getelementptr inbounds %struct.node_t, ptr %120, i64 0, i32 5
  %335 = tail call i32 @ATOMICINC(ptr noundef nonnull %334)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %336 = add nuw nsw i64 %57, 1
  %icmpEq667 = icmp eq i64 %indvars.iv.next83, %336
  %zext668 = zext i1 %icmpEq667 to i32
  call void @assert_ft(i32 %zext668, i32 35)
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count84
  %337 = select i1 %exitcond85.not, i32 1310721047, i32 385876738
  %338 = xor i32 1259341077, %337
  br i1 %exitcond85.not, label %._crit_edge65, label %.preheader48

._crit_edge65:                                    ; preds = %328, %.preheader49
  %cfg_DestPhi221 = phi i32 [ 1259341077, %328 ], [ 283115797, %.preheader49 ]
  %339 = phi i32 [ 1259341077, %328 ], [ 283115797, %.preheader49 ]
  %cfg_DiffPhi222 = phi i32 [ %338, %328 ], [ %48, %.preheader49 ]
  %340 = phi i32 [ %338, %328 ], [ %49, %.preheader49 ]
  %icmpEq671 = icmp eq i32 %cfg_DiffPhi222, %340
  %zext672 = zext i1 %icmpEq671 to i32
  call void @assert_ft(i32 %zext672, i32 35)
  %icmpEq669 = icmp eq i32 %cfg_DestPhi221, %339
  %341 = icmp eq i32 %339, %339
  %icmpEq673 = icmp eq i1 %icmpEq669, %341
  %zext674 = zext i1 %icmpEq673 to i32
  call void @assert_ft(i32 %zext674, i32 35)
  %zext670 = zext i1 %icmpEq669 to i32
  call void @assert_ft(i32 %zext670, i32 35)
  %342 = xor i32 %cfg_DestPhi221, %cfg_DiffPhi222
  %cfg_icmpEq223 = icmp eq i32 %342, 1310721047
  %343 = icmp eq i32 %342, 1310721047
  %icmpEq675 = icmp eq i1 %cfg_icmpEq223, %343
  %zext676 = zext i1 %icmpEq675 to i32
  call void @assert_ft(i32 %zext676, i32 35)
  %cfg_zext224 = zext i1 %cfg_icmpEq223 to i32
  call void @assert_cfg_ft(i32 %cfg_zext224, i32 %342, i32 35)
  %344 = getelementptr inbounds %struct.node_t, ptr %.067, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8
  %346 = load ptr, ptr %344, align 8
  %.not = icmp eq ptr %345, null
  %347 = icmp eq ptr %346, null
  %icmpEq677 = icmp eq i1 %.not, %347
  %zext678 = zext i1 %icmpEq677 to i32
  call void @assert_ft(i32 %zext678, i32 35)
  %348 = select i1 %.not, i32 1362100491, i32 231736834
  %349 = xor i32 1310721047, %348
  br i1 %.not, label %._crit_edge70, label %20

._crit_edge70:                                    ; preds = %._crit_edge65, %6
  %cfg_DestPhi225 = phi i32 [ 1310721047, %._crit_edge65 ], [ 128975389, %6 ]
  %350 = phi i32 [ 1310721047, %._crit_edge65 ], [ 128975389, %6 ]
  %cfg_DiffPhi226 = phi i32 [ %349, %._crit_edge65 ], [ %9, %6 ]
  %351 = phi i32 [ %349, %._crit_edge65 ], [ %9, %6 ]
  %icmpEq681 = icmp eq i32 %cfg_DiffPhi226, %351
  %zext682 = zext i1 %icmpEq681 to i32
  call void @assert_ft(i32 %zext682, i32 35)
  %icmpEq679 = icmp eq i32 %cfg_DestPhi225, %350
  %352 = icmp eq i32 %350, %350
  %icmpEq683 = icmp eq i1 %icmpEq679, %352
  %zext684 = zext i1 %icmpEq683 to i32
  call void @assert_ft(i32 %zext684, i32 35)
  %zext680 = zext i1 %icmpEq679 to i32
  call void @assert_ft(i32 %zext680, i32 35)
  %353 = xor i32 %cfg_DestPhi225, %cfg_DiffPhi226
  %cfg_icmpEq227 = icmp eq i32 %353, 1362100491
  %354 = icmp eq i32 %353, 1362100491
  %icmpEq685 = icmp eq i1 %cfg_icmpEq227, %354
  %zext686 = zext i1 %icmpEq685 to i32
  call void @assert_ft(i32 %zext686, i32 35)
  %cfg_zext228 = zext i1 %cfg_icmpEq227 to i32
  call void @assert_cfg_ft(i32 %cfg_zext228, i32 %353, i32 35)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @update_from_coeffs(ptr noundef %0) local_unnamed_addr #7 {
  %.not9 = icmp eq ptr %0, null
  %2 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not9, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = select i1 %.not9, i32 334496017, i32 180356386
  %4 = xor i32 128975389, %3
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %23, %1
  %.010 = phi ptr [ %41, %23 ], [ %0, %1 ]
  %5 = phi ptr [ %41, %23 ], [ %0, %1 ]
  %cfg_DestPhi = phi i32 [ 128975389, %1 ], [ 283119139, %23 ]
  %6 = phi i32 [ 128975389, %1 ], [ 283119139, %23 ]
  %cfg_DiffPhi = phi i32 [ %4, %1 ], [ %45, %23 ]
  %7 = phi i32 [ %4, %1 ], [ %45, %23 ]
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
  %cfg_icmpEq = icmp eq i32 %9, 180356386
  %10 = icmp eq i32 %9, 180356386
  %icmpEq29 = icmp eq i1 %cfg_icmpEq, %10
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %11 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr %11, align 8
  %icmpEq31 = icmp eq i32 %12, %13
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %14 = icmp slt i32 %12, 1
  %15 = select i1 %14, i32 231735821, i32 283119139
  %16 = xor i32 180356386, %15
  br i1 %14, label %17, label %23

17:                                               ; preds = %.lr.ph
  %cfg_DestPhi11 = phi i32 [ 180356386, %.lr.ph ]
  %18 = phi i32 [ 180356386, %.lr.ph ]
  %cfg_DiffPhi12 = phi i32 [ %16, %.lr.ph ]
  %19 = phi i32 [ %16, %.lr.ph ]
  %icmpEq35 = icmp eq i32 %cfg_DiffPhi12, %19
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %icmpEq33 = icmp eq i32 %cfg_DestPhi11, %18
  %20 = icmp eq i32 %18, %18
  %icmpEq37 = icmp eq i1 %icmpEq33, %20
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %21 = xor i32 %cfg_DestPhi11, %cfg_DiffPhi12
  %cfg_icmpEq13 = icmp eq i32 %21, 231735821
  %22 = icmp eq i32 %21, 231735821
  %icmpEq39 = icmp eq i1 %cfg_icmpEq13, %22
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %cfg_zext14 = zext i1 %cfg_icmpEq13 to i32
  call void @assert_cfg_ft(i32 %cfg_zext14, i32 %21, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %23

23:                                               ; preds = %17, %.lr.ph
  %cfg_DestPhi15 = phi i32 [ 231735821, %17 ], [ 180356386, %.lr.ph ]
  %24 = phi i32 [ 231735821, %17 ], [ 180356386, %.lr.ph ]
  %cfg_DiffPhi16 = phi i32 [ 489688110, %17 ], [ %16, %.lr.ph ]
  %25 = phi i32 [ 489688110, %17 ], [ %16, %.lr.ph ]
  %icmpEq43 = icmp eq i32 %cfg_DiffPhi16, %25
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq41 = icmp eq i32 %cfg_DestPhi15, %24
  %26 = icmp eq i32 %24, %24
  %icmpEq45 = icmp eq i1 %icmpEq41, %26
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %27 = xor i32 %cfg_DestPhi15, %cfg_DiffPhi16
  %cfg_icmpEq17 = icmp eq i32 %27, 283119139
  %28 = icmp eq i32 %27, 283119139
  %icmpEq47 = icmp eq i1 %cfg_icmpEq17, %28
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %cfg_zext18 = zext i1 %cfg_icmpEq17 to i32
  call void @assert_cfg_ft(i32 %cfg_zext18, i32 %27, i32 35)
  %29 = sext i32 %12 to i64
  %30 = shl nsw i64 %29, 3
  %31 = shl nsw i64 %29, 3
  %icmpEq49 = icmp eq i64 %30, %31
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %32 = tail call noalias ptr @malloc(i64 noundef %30) #13
  %33 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 3
  store ptr %32, ptr %33, align 8
  %34 = tail call noalias ptr @malloc(i64 noundef %30) #13
  %35 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 4
  %36 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 4
  store ptr %34, ptr %35, align 8
  %37 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 6
  %38 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 6
  store i32 0, ptr %37, align 4
  %39 = getelementptr inbounds %struct.node_t, ptr %.010, i64 0, i32 1
  %40 = getelementptr inbounds %struct.node_t, ptr %5, i64 0, i32 1
  %41 = load ptr, ptr %39, align 8
  %42 = load ptr, ptr %40, align 8
  %.not = icmp eq ptr %41, null
  %43 = icmp eq ptr %42, null
  %icmpEq51 = icmp eq i1 %.not, %43
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %44 = select i1 %.not, i32 334496017, i32 180356386
  %45 = xor i32 283119139, %44
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %23, %1
  %cfg_DestPhi19 = phi i32 [ 283119139, %23 ], [ 128975389, %1 ]
  %46 = phi i32 [ 283119139, %23 ], [ 128975389, %1 ]
  %cfg_DiffPhi20 = phi i32 [ %45, %23 ], [ %4, %1 ]
  %47 = phi i32 [ %45, %23 ], [ %4, %1 ]
  %icmpEq55 = icmp eq i32 %cfg_DiffPhi20, %47
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq53 = icmp eq i32 %cfg_DestPhi19, %46
  %48 = icmp eq i32 %46, %46
  %icmpEq57 = icmp eq i1 %icmpEq53, %48
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %49 = xor i32 %cfg_DestPhi19, %cfg_DiffPhi20
  %cfg_icmpEq21 = icmp eq i32 %49, 334496017
  %50 = icmp eq i32 %49, 334496017
  %icmpEq59 = icmp eq i1 %cfg_icmpEq21, %50
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %cfg_zext22 = zext i1 %cfg_icmpEq21 to i32
  call void @assert_cfg_ft(i32 %cfg_zext22, i32 %49, i32 35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_from_fields(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %.not28 = icmp eq ptr %0, null
  %3 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not28, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %.not28, i32 642777374, i32 180355853
  %5 = xor i32 128975389, %4
  br i1 %.not28, label %._crit_edge30, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %6 = phi i32 [ 128975389, %2 ]
  %7 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %5, %2 ]
  %8 = phi i32 [ %5, %2 ]
  %9 = phi i32 [ %5, %2 ]
  %10 = phi i32 [ %5, %2 ]
  %icmpEq81 = icmp eq i32 %9, %10
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq79 = icmp eq i32 %cfg_DiffPhi, %8
  %11 = icmp eq i32 %8, %8
  %icmpEq83 = icmp eq i1 %icmpEq79, %11
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq77 = icmp eq i32 %6, %7
  %zext78 = zext i1 %icmpEq77 to i32
  %12 = zext i1 %icmpEq77 to i32
  %icmpEq85 = icmp eq i32 %zext78, %12
  %zext86 = zext i1 %icmpEq85 to i32
  call void @assert_ft(i32 %zext86, i32 35)
  call void @assert_ft(i32 %zext78, i32 35)
  %icmpEq69 = icmp eq i32 %cfg_DiffPhi, %9
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %cfg_DestPhi, %6
  %13 = icmp eq i32 %6, %7
  %icmpEq87 = icmp eq i1 %icmpEq67, %13
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %14 = icmp eq i32 %cfg_DestPhi, %6
  %icmpEq71 = icmp eq i1 %icmpEq67, %14
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  %15 = zext i1 %13 to i32
  %icmpEq89 = icmp eq i32 %zext68, %15
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  call void @assert_ft(i32 %zext68, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %16, 180355853
  %17 = icmp eq i32 %16, 180355853
  %18 = icmp eq i32 %16, 180355853
  %icmpEq91 = icmp eq i1 %17, %18
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %icmpEq73 = icmp eq i1 %cfg_icmpEq, %17
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %19 = zext i1 %17 to i32
  %icmpEq93 = icmp eq i32 %cfg_zext, %19
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %20 = icmp sgt i32 %1, 0
  %wide.trip.count = zext i32 %1 to i64
  %21 = zext i32 %1 to i64
  %22 = zext i32 %1 to i64
  %icmpEq95 = icmp eq i64 %21, %22
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %icmpEq75 = icmp eq i64 %wide.trip.count, %21
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %.029 = phi ptr [ %0, %.preheader.lr.ph ], [ %129, %._crit_edge ]
  %23 = phi ptr [ %0, %.preheader.lr.ph ], [ %129, %._crit_edge ]
  %24 = phi ptr [ %0, %.preheader.lr.ph ], [ %129, %._crit_edge ]
  %cfg_DestPhi31 = phi i32 [ 180355853, %.preheader.lr.ph ], [ 591397913, %._crit_edge ]
  %25 = phi i32 [ 180355853, %.preheader.lr.ph ], [ 591397913, %._crit_edge ]
  %26 = phi i32 [ 180355853, %.preheader.lr.ph ], [ 591397913, %._crit_edge ]
  %27 = phi i32 [ 180355853, %.preheader.lr.ph ], [ 591397913, %._crit_edge ]
  %cfg_DiffPhi32 = phi i32 [ 118489344, %.preheader.lr.ph ], [ %133, %._crit_edge ]
  %28 = phi i32 [ 118489344, %.preheader.lr.ph ], [ %133, %._crit_edge ]
  %29 = phi i32 [ 118489344, %.preheader.lr.ph ], [ %133, %._crit_edge ]
  %30 = phi i32 [ 118489344, %.preheader.lr.ph ], [ %133, %._crit_edge ]
  %icmpEq113 = icmp eq i32 %29, %30
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  %icmpEq111 = icmp eq i32 %cfg_DiffPhi32, %28
  %31 = icmp eq i32 %28, %28
  %icmpEq115 = icmp eq i1 %icmpEq111, %31
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %icmpEq109 = icmp eq i32 %26, %27
  %zext110 = zext i1 %icmpEq109 to i32
  %32 = zext i1 %icmpEq109 to i32
  %icmpEq117 = icmp eq i32 %zext110, %32
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  call void @assert_ft(i32 %zext110, i32 35)
  %icmpEq107 = icmp eq i32 %cfg_DestPhi31, %25
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %icmpEq99 = icmp eq i32 %cfg_DiffPhi32, %29
  %33 = icmp eq i32 %28, %30
  %icmpEq119 = icmp eq i1 %icmpEq99, %33
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq97 = icmp eq i32 %cfg_DestPhi31, %26
  %34 = icmp eq i32 %25, %27
  %35 = icmp eq i32 %25, %27
  %icmpEq121 = icmp eq i1 %34, %35
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  %icmpEq101 = icmp eq i1 %icmpEq97, %34
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %zext98 = zext i1 %icmpEq97 to i32
  %36 = zext i1 %34 to i32
  %icmpEq123 = icmp eq i32 %zext98, %36
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  call void @assert_ft(i32 %zext98, i32 35)
  %37 = xor i32 %cfg_DestPhi31, %cfg_DiffPhi32
  %cfg_icmpEq33 = icmp eq i32 %37, 231735821
  %38 = icmp eq i32 %37, 231735821
  %39 = icmp eq i32 %37, 231735821
  %icmpEq125 = icmp eq i1 %38, %39
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  %icmpEq103 = icmp eq i1 %cfg_icmpEq33, %38
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %cfg_zext34 = zext i1 %cfg_icmpEq33 to i32
  %40 = zext i1 %38 to i32
  %icmpEq127 = icmp eq i32 %cfg_zext34, %40
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext34, i32 %37, i32 35)
  %41 = select i1 %20, i32 283116037, i32 591397913
  %42 = xor i32 231735821, %41
  %43 = xor i32 231735821, %41
  %44 = xor i32 231735821, %41
  %icmpEq129 = icmp eq i32 %43, %44
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %icmpEq105 = icmp eq i32 %42, %43
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  br i1 %20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %cfg_DestPhi35 = phi i32 [ 231735821, %.preheader ]
  %45 = phi i32 [ 231735821, %.preheader ]
  %cfg_DiffPhi36 = phi i32 [ %42, %.preheader ]
  %46 = phi i32 [ %43, %.preheader ]
  %icmpEq133 = icmp eq i32 %cfg_DiffPhi36, %46
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %icmpEq131 = icmp eq i32 %cfg_DestPhi35, %45
  %47 = icmp eq i32 %45, %45
  %icmpEq135 = icmp eq i1 %icmpEq131, %47
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  %48 = xor i32 %cfg_DestPhi35, %cfg_DiffPhi36
  %cfg_icmpEq37 = icmp eq i32 %48, 283116037
  %49 = icmp eq i32 %48, 283116037
  %icmpEq137 = icmp eq i1 %cfg_icmpEq37, %49
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %cfg_zext38 = zext i1 %cfg_icmpEq37 to i32
  call void @assert_cfg_ft(i32 %cfg_zext38, i32 %48, i32 35)
  %50 = getelementptr inbounds %struct.node_t, ptr %.029, i64 0, i32 2
  br label %51

51:                                               ; preds = %103, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %103 ]
  %52 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %103 ]
  %cfg_DestPhi39 = phi i32 [ 283116037, %.lr.ph ], [ 540019724, %103 ]
  %53 = phi i32 [ 283116037, %.lr.ph ], [ 540019724, %103 ]
  %cfg_DiffPhi40 = phi i32 [ 51381517, %.lr.ph ], [ %122, %103 ]
  %54 = phi i32 [ 51381517, %.lr.ph ], [ %122, %103 ]
  %icmpEq143 = icmp eq i32 %cfg_DiffPhi40, %54
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %cfg_DestPhi39, %53
  %55 = icmp eq i32 %53, %53
  %icmpEq145 = icmp eq i1 %icmpEq141, %55
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %icmpEq139 = icmp eq i64 %indvars.iv, %52
  %zext140 = zext i1 %icmpEq139 to i32
  %56 = zext i1 %icmpEq139 to i32
  %icmpEq147 = icmp eq i32 %zext140, %56
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  call void @assert_ft(i32 %zext140, i32 35)
  %57 = xor i32 %cfg_DestPhi39, %cfg_DiffPhi40
  %cfg_icmpEq41 = icmp eq i32 %57, 334497544
  %cfg_zext42 = zext i1 %cfg_icmpEq41 to i32
  %58 = zext i1 %cfg_icmpEq41 to i32
  %icmpEq149 = icmp eq i32 %cfg_zext42, %58
  %zext150 = zext i1 %icmpEq149 to i32
  call void @assert_ft(i32 %zext150, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext42, i32 %57, i32 35)
  %59 = load ptr, ptr %50, align 8
  %60 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %60, align 8
  %63 = load ptr, ptr %.029, align 8
  %64 = load ptr, ptr %23, align 8
  %.not25 = icmp eq ptr %61, null
  %65 = icmp eq ptr %62, null
  %icmpEq151 = icmp eq i1 %.not25, %65
  %zext152 = zext i1 %icmpEq151 to i32
  call void @assert_ft(i32 %zext152, i32 35)
  %66 = select i1 %.not25, i32 385876506, i32 437257745
  %67 = xor i32 334497544, %66
  br i1 %.not25, label %68, label %74

68:                                               ; preds = %51
  %cfg_DestPhi43 = phi i32 [ 334497544, %51 ]
  %69 = phi i32 [ 334497544, %51 ]
  %cfg_DiffPhi44 = phi i32 [ %67, %51 ]
  %70 = phi i32 [ %67, %51 ]
  %icmpEq155 = icmp eq i32 %cfg_DiffPhi44, %70
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %icmpEq153 = icmp eq i32 %cfg_DestPhi43, %69
  %71 = icmp eq i32 %69, %69
  %icmpEq157 = icmp eq i1 %icmpEq153, %71
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %72 = xor i32 %cfg_DestPhi43, %cfg_DiffPhi44
  %cfg_icmpEq45 = icmp eq i32 %72, 385876506
  %73 = icmp eq i32 %72, 385876506
  %icmpEq159 = icmp eq i1 %cfg_icmpEq45, %73
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  %cfg_zext46 = zext i1 %cfg_icmpEq45 to i32
  call void @assert_cfg_ft(i32 %cfg_zext46, i32 %72, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %74

74:                                               ; preds = %68, %51
  %cfg_DestPhi47 = phi i32 [ 385876506, %68 ], [ 334497544, %51 ]
  %75 = phi i32 [ 385876506, %68 ], [ 334497544, %51 ]
  %cfg_DiffPhi48 = phi i32 [ 219153419, %68 ], [ %67, %51 ]
  %76 = phi i32 [ 219153419, %68 ], [ %67, %51 ]
  %icmpEq163 = icmp eq i32 %cfg_DiffPhi48, %76
  %zext164 = zext i1 %icmpEq163 to i32
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq161 = icmp eq i32 %cfg_DestPhi47, %75
  %77 = icmp eq i32 %75, %75
  %icmpEq165 = icmp eq i1 %icmpEq161, %77
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %zext162 = zext i1 %icmpEq161 to i32
  call void @assert_ft(i32 %zext162, i32 35)
  %78 = xor i32 %cfg_DestPhi47, %cfg_DiffPhi48
  %cfg_icmpEq49 = icmp eq i32 %78, 437257745
  %79 = icmp eq i32 %78, 437257745
  %icmpEq167 = icmp eq i1 %cfg_icmpEq49, %79
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %cfg_zext50 = zext i1 %cfg_icmpEq49 to i32
  call void @assert_cfg_ft(i32 %cfg_zext50, i32 %78, i32 35)
  %80 = getelementptr inbounds %struct.node_t, ptr %61, i64 0, i32 6
  %81 = tail call i32 @ATOMICINC(ptr noundef nonnull %80)
  %82 = getelementptr inbounds %struct.node_t, ptr %61, i64 0, i32 3
  %83 = getelementptr inbounds %struct.node_t, ptr %62, i64 0, i32 3
  %84 = load ptr, ptr %82, align 8
  %85 = load ptr, ptr %83, align 8
  %.not26 = icmp eq ptr %84, null
  %86 = icmp eq ptr %85, null
  %icmpEq169 = icmp eq i1 %.not26, %86
  %zext170 = zext i1 %icmpEq169 to i32
  call void @assert_ft(i32 %zext170, i32 35)
  %87 = select i1 %.not26, i32 488638243, i32 540019724
  %88 = xor i32 437257745, %87
  br i1 %.not26, label %89, label %103

89:                                               ; preds = %74
  %cfg_DestPhi51 = phi i32 [ 437257745, %74 ]
  %90 = phi i32 [ 437257745, %74 ]
  %cfg_DiffPhi52 = phi i32 [ %88, %74 ]
  %91 = phi i32 [ %88, %74 ]
  %icmpEq173 = icmp eq i32 %cfg_DiffPhi52, %91
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %icmpEq171 = icmp eq i32 %cfg_DestPhi51, %90
  %92 = icmp eq i32 %90, %90
  %icmpEq175 = icmp eq i1 %icmpEq171, %92
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %93 = xor i32 %cfg_DestPhi51, %cfg_DiffPhi52
  %cfg_icmpEq53 = icmp eq i32 %93, 488638243
  %94 = icmp eq i32 %93, 488638243
  %icmpEq177 = icmp eq i1 %cfg_icmpEq53, %94
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  %cfg_zext54 = zext i1 %cfg_icmpEq53 to i32
  call void @assert_cfg_ft(i32 %cfg_zext54, i32 %93, i32 35)
  %95 = getelementptr inbounds %struct.node_t, ptr %61, i64 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = load i32, ptr %95, align 8
  %icmpEq179 = icmp eq i32 %96, %97
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %98 = ptrtoint ptr %61 to i64
  %99 = trunc i64 %98 to i32
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %99, i32 noundef 0, i32 noundef %96)
  %101 = load ptr, ptr %82, align 8
  %102 = load ptr, ptr %83, align 8
  br label %103

103:                                              ; preds = %89, %74
  %.022 = phi ptr [ %84, %74 ], [ %101, %89 ]
  %104 = phi ptr [ %85, %74 ], [ %102, %89 ]
  %cfg_DestPhi55 = phi i32 [ 488638243, %89 ], [ 437257745, %74 ]
  %105 = phi i32 [ 488638243, %89 ], [ 437257745, %74 ]
  %cfg_DiffPhi56 = phi i32 [ 1024461615, %89 ], [ %88, %74 ]
  %106 = phi i32 [ 1024461615, %89 ], [ %88, %74 ]
  %icmpEq183 = icmp eq i32 %cfg_DiffPhi56, %106
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %icmpEq181 = icmp eq i32 %cfg_DestPhi55, %105
  %107 = icmp eq i32 %105, %105
  %icmpEq185 = icmp eq i1 %icmpEq181, %107
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  %108 = xor i32 %cfg_DestPhi55, %cfg_DiffPhi56
  %cfg_icmpEq57 = icmp eq i32 %108, 540019724
  %109 = icmp eq i32 %108, 540019724
  %icmpEq187 = icmp eq i1 %cfg_icmpEq57, %109
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %cfg_zext58 = zext i1 %cfg_icmpEq57 to i32
  call void @assert_cfg_ft(i32 %cfg_zext58, i32 %108, i32 35)
  %110 = sext i32 %81 to i64
  %111 = getelementptr inbounds ptr, ptr %.022, i64 %110
  %112 = getelementptr inbounds ptr, ptr %104, i64 %110
  store ptr %63, ptr %111, align 8
  %113 = tail call double @gen_uniform_double()
  %114 = getelementptr inbounds %struct.node_t, ptr %61, i64 0, i32 4
  %115 = getelementptr inbounds %struct.node_t, ptr %62, i64 0, i32 4
  %116 = load ptr, ptr %114, align 8
  %117 = load ptr, ptr %115, align 8
  %118 = getelementptr inbounds double, ptr %116, i64 %110
  %119 = getelementptr inbounds double, ptr %117, i64 %110
  store double %113, ptr %118, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %120 = add nuw nsw i64 %52, 1
  %icmpEq189 = icmp eq i64 %indvars.iv.next, %120
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %121 = select i1 %exitcond.not, i32 591397913, i32 334497544
  %122 = xor i32 540019724, %121
  br i1 %exitcond.not, label %._crit_edge, label %51

._crit_edge:                                      ; preds = %103, %.preheader
  %cfg_DestPhi59 = phi i32 [ 540019724, %103 ], [ 231735821, %.preheader ]
  %123 = phi i32 [ 540019724, %103 ], [ 231735821, %.preheader ]
  %cfg_DiffPhi60 = phi i32 [ %122, %103 ], [ %42, %.preheader ]
  %124 = phi i32 [ %122, %103 ], [ %43, %.preheader ]
  %icmpEq193 = icmp eq i32 %cfg_DiffPhi60, %124
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  %icmpEq191 = icmp eq i32 %cfg_DestPhi59, %123
  %125 = icmp eq i32 %123, %123
  %icmpEq195 = icmp eq i1 %icmpEq191, %125
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %126 = xor i32 %cfg_DestPhi59, %cfg_DiffPhi60
  %cfg_icmpEq61 = icmp eq i32 %126, 591397913
  %127 = icmp eq i32 %126, 591397913
  %icmpEq197 = icmp eq i1 %cfg_icmpEq61, %127
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %cfg_zext62 = zext i1 %cfg_icmpEq61 to i32
  call void @assert_cfg_ft(i32 %cfg_zext62, i32 %126, i32 35)
  %128 = getelementptr inbounds %struct.node_t, ptr %.029, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = load ptr, ptr %128, align 8
  %.not = icmp eq ptr %129, null
  %131 = icmp eq ptr %130, null
  %icmpEq199 = icmp eq i1 %.not, %131
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %132 = select i1 %.not, i32 642777374, i32 231735821
  %133 = xor i32 591397913, %132
  br i1 %.not, label %._crit_edge30, label %.preheader

._crit_edge30:                                    ; preds = %._crit_edge, %2
  %cfg_DestPhi63 = phi i32 [ 591397913, %._crit_edge ], [ 128975389, %2 ]
  %134 = phi i32 [ 591397913, %._crit_edge ], [ 128975389, %2 ]
  %cfg_DiffPhi64 = phi i32 [ %133, %._crit_edge ], [ %5, %2 ]
  %135 = phi i32 [ %133, %._crit_edge ], [ %5, %2 ]
  %icmpEq203 = icmp eq i32 %cfg_DiffPhi64, %135
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %icmpEq201 = icmp eq i32 %cfg_DestPhi63, %134
  %136 = icmp eq i32 %134, %134
  %icmpEq205 = icmp eq i1 %icmpEq201, %136
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %137 = xor i32 %cfg_DestPhi63, %cfg_DiffPhi64
  %cfg_icmpEq65 = icmp eq i32 %137, 642777374
  %138 = icmp eq i32 %137, 642777374
  %icmpEq207 = icmp eq i1 %cfg_icmpEq65, %138
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %cfg_zext66 = zext i1 %cfg_icmpEq65 to i32
  call void @assert_cfg_ft(i32 %cfg_zext66, i32 %137, i32 35)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local void @localize_local(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %.not12 = icmp eq ptr %0, null
  %2 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %.not12, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = select i1 %.not12, i32 231735577, i32 180356386
  %4 = xor i32 128975389, %3
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %1
  %.013 = phi ptr [ %12, %.lr.ph ], [ %0, %1 ]
  %5 = phi ptr [ %13, %.lr.ph ], [ %0, %1 ]
  %cfg_DestPhi = phi i32 [ 128975389, %1 ], [ 180356386, %.lr.ph ]
  %6 = phi i32 [ 128975389, %1 ], [ 180356386, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %4, %1 ], [ %16, %.lr.ph ]
  %7 = phi i32 [ %4, %1 ], [ %16, %.lr.ph ]
  %icmpEq20 = icmp eq i32 %cfg_DiffPhi, %7
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %icmpEq18 = icmp eq i32 %cfg_DestPhi, %6
  %8 = icmp eq i32 %6, %6
  %icmpEq22 = icmp eq i1 %icmpEq18, %8
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %9 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %9, 180356386
  %10 = icmp eq i32 %9, 180356386
  %icmpEq24 = icmp eq i1 %cfg_icmpEq, %10
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %9, i32 35)
  %11 = getelementptr inbounds %struct.node_t, ptr %.013, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %11, align 8
  %.not = icmp eq ptr %12, null
  %14 = icmp eq ptr %13, null
  %icmpEq26 = icmp eq i1 %.not, %14
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %15 = select i1 %.not, i32 231735577, i32 180356386
  %16 = xor i32 180356386, %15
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %1
  %cfg_DestPhi14 = phi i32 [ 180356386, %.lr.ph ], [ 128975389, %1 ]
  %17 = phi i32 [ 180356386, %.lr.ph ], [ 128975389, %1 ]
  %cfg_DiffPhi15 = phi i32 [ %16, %.lr.ph ], [ %4, %1 ]
  %18 = phi i32 [ %16, %.lr.ph ], [ %4, %1 ]
  %icmpEq30 = icmp eq i32 %cfg_DiffPhi15, %18
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %icmpEq28 = icmp eq i32 %cfg_DestPhi14, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq32 = icmp eq i1 %icmpEq28, %19
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %20 = xor i32 %cfg_DestPhi14, %cfg_DiffPhi15
  %cfg_icmpEq16 = icmp eq i32 %20, 231735577
  %21 = icmp eq i32 %20, 231735577
  %icmpEq34 = icmp eq i1 %cfg_icmpEq16, %21
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %cfg_zext17 = zext i1 %cfg_icmpEq16 to i32
  call void @assert_cfg_ft(i32 %cfg_zext17, i32 %20, i32 35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_tables(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 793
  %4 = mul nsw i32 %1, 793
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  tail call void @init_random(i32 noundef %3)
  %5 = load i32, ptr @n_nodes, align 4
  %6 = sdiv i32 %5, 64
  %7 = sext i32 %6 to i64
  %8 = sext i32 %6 to i64
  %icmpEq14 = icmp eq i64 %7, %8
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %9 = shl nsw i64 %7, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #13
  %11 = tail call ptr @make_table(i32 noundef %6, i32 poison)
  %12 = load i32, ptr @n_nodes, align 4
  %13 = load i32, ptr @n_nodes, align 4
  %icmpEq16 = icmp eq i32 %12, %13
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %14 = sdiv i32 %12, 64
  tail call void @fill_table(ptr noundef %11, ptr noundef %10, i32 noundef %14, i32 poison)
  %15 = load i32, ptr @n_nodes, align 4
  %16 = sdiv i32 %15, 64
  %17 = sdiv i32 %15, 64
  %icmpEq18 = icmp eq i32 %16, %17
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #13
  %21 = tail call ptr @make_table(i32 noundef %16, i32 poison)
  %22 = load i32, ptr @n_nodes, align 4
  %23 = load i32, ptr @n_nodes, align 4
  %icmpEq20 = icmp eq i32 %22, %23
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %24 = sdiv i32 %22, 64
  tail call void @fill_table(ptr noundef %21, ptr noundef %20, i32 noundef %24, i32 poison)
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %25
  %27 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %25
  store ptr %21, ptr %26, align 8
  %28 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %25
  %29 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %25
  store ptr %11, ptr %28, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_all_neighbors(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 39
  %4 = mul nsw i32 %1, 39
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  tail call void @init_random(i32 noundef %3)
  %5 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %6
  %8 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %6
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = load i32, ptr @n_nodes, align 4
  %14 = load i32, ptr @n_nodes, align 4
  %icmpEq14 = icmp eq i32 %13, %14
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %15 = sdiv i32 %13, 64
  %16 = load i32, ptr @d_nodes, align 4
  %17 = load i32, ptr @local_p, align 4
  tail call void @make_neighbors(ptr noundef %11, ptr noundef %0, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %1)
  %18 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %6
  %19 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %6
  %20 = load ptr, ptr %18, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %20, align 8
  %23 = load ptr, ptr %21, align 8
  %24 = load i32, ptr @n_nodes, align 4
  %25 = load i32, ptr @n_nodes, align 4
  %icmpEq16 = icmp eq i32 %24, %25
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %26 = sdiv i32 %24, 64
  %27 = load i32, ptr @d_nodes, align 4
  %28 = load i32, ptr @local_p, align 4
  tail call void @make_neighbors(ptr noundef %22, ptr noundef nonnull %5, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @update_all_from_coeffs(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  %icmpEq = icmp eq i64 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %3
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  tail call void @update_from_coeffs(ptr noundef %7)
  %8 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %3
  %9 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %4
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %11, align 8
  tail call void @update_from_coeffs(ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_all_from_fields(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = mul nsw i32 %1, 17
  %4 = mul nsw i32 %1, 17
  %icmpEq12 = icmp eq i32 %3, %4
  %zext13 = zext i1 %icmpEq12 to i32
  call void @assert_ft(i32 %zext13, i32 35)
  %5 = mul nsw i32 %1, 17
  %icmpEq = icmp eq i32 %3, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  tail call void @init_random(i32 noundef %3)
  %6 = sext i32 %1 to i64
  %7 = sext i32 %1 to i64
  %icmpEq14 = icmp eq i64 %6, %7
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %8 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %6
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = load i32, ptr @d_nodes, align 4
  %16 = load i32, ptr @d_nodes, align 4
  %icmpEq16 = icmp eq i32 %15, %16
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %17 = load i32, ptr @d_nodes, align 4
  %icmpEq8 = icmp eq i32 %15, %17
  %zext9 = zext i1 %icmpEq8 to i32
  call void @assert_ft(i32 %zext9, i32 35)
  tail call void @fill_from_fields(ptr noundef %11, i32 noundef %15)
  %18 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %6
  %19 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %7
  %20 = load ptr, ptr %18, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %20, align 8
  %23 = load ptr, ptr %21, align 8
  %24 = load ptr, ptr %20, align 8
  %25 = load ptr, ptr %21, align 8
  %26 = load i32, ptr @d_nodes, align 4
  %27 = load i32, ptr @d_nodes, align 4
  %icmpEq18 = icmp eq i32 %26, %27
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %28 = load i32, ptr @d_nodes, align 4
  %icmpEq10 = icmp eq i32 %26, %28
  %zext11 = zext i1 %icmpEq10 to i32
  call void @assert_ft(i32 %zext11, i32 35)
  tail call void @fill_from_fields(ptr noundef %22, i32 noundef %26)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local void @localize(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %1 to i64
  %icmpEq = icmp eq i64 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = getelementptr inbounds %struct.graph_t, ptr %0, i64 0, i32 1, i64 %3
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  tail call void @localize_local(ptr noundef %7)
  %8 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %3
  %9 = getelementptr inbounds [64 x ptr], ptr %0, i64 0, i64 %4
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = load ptr, ptr %11, align 8
  tail call void @localize_local(ptr noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %2, 1
  %7 = icmp sgt i32 %2, 1
  %icmpEq = icmp eq i1 %6, %7
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %8 = select i1 %6, i32 180356634, i32 231735821
  %9 = xor i32 128975389, %8
  br i1 %6, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %tailrecurse, %5
  %.tr1720 = phi i32 [ %17, %tailrecurse ], [ %2, %5 ]
  %10 = phi i32 [ %17, %tailrecurse ], [ %2, %5 ]
  %cfg_DestPhi = phi i32 [ 128975389, %5 ], [ 180356634, %tailrecurse ]
  %11 = phi i32 [ 128975389, %5 ], [ 180356634, %tailrecurse ]
  %cfg_DiffPhi = phi i32 [ %9, %5 ], [ %22, %tailrecurse ]
  %12 = phi i32 [ %9, %5 ], [ %22, %tailrecurse ]
  %icmpEq29 = icmp eq i32 %cfg_DiffPhi, %12
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq27 = icmp eq i32 %cfg_DestPhi, %11
  %13 = icmp eq i32 %11, %11
  %icmpEq31 = icmp eq i1 %icmpEq27, %13
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq25 = icmp eq i32 %.tr1720, %10
  %zext26 = zext i1 %icmpEq25 to i32
  %14 = zext i1 %icmpEq25 to i32
  %icmpEq33 = icmp eq i32 %zext26, %14
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  call void @assert_ft(i32 %zext26, i32 35)
  %15 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %15, 180356634
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %16 = zext i1 %cfg_icmpEq to i32
  %icmpEq35 = icmp eq i32 %cfg_zext, %16
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %15, i32 35)
  %17 = lshr i32 %.tr1720, 1
  %18 = add nsw i32 %17, %1
  tail call void @do_all(ptr noundef %0, i32 noundef %18, i32 noundef %17, ptr noundef %3, i32 noundef %4)
  %19 = icmp ugt i32 %.tr1720, 3
  %20 = icmp ugt i32 %10, 3
  %icmpEq37 = icmp eq i1 %19, %20
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %21 = select i1 %19, i32 180356634, i32 231735821
  %22 = xor i32 180356634, %21
  br i1 %19, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %5
  %cfg_DestPhi21 = phi i32 [ 180356634, %tailrecurse ], [ 128975389, %5 ]
  %23 = phi i32 [ 180356634, %tailrecurse ], [ 128975389, %5 ]
  %cfg_DiffPhi22 = phi i32 [ %22, %tailrecurse ], [ %9, %5 ]
  %24 = phi i32 [ %22, %tailrecurse ], [ %9, %5 ]
  %icmpEq41 = icmp eq i32 %cfg_DiffPhi22, %24
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %icmpEq39 = icmp eq i32 %cfg_DestPhi21, %23
  %25 = icmp eq i32 %23, %23
  %icmpEq43 = icmp eq i1 %icmpEq39, %25
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %26 = xor i32 %cfg_DestPhi21, %cfg_DiffPhi22
  %cfg_icmpEq23 = icmp eq i32 %26, 231735821
  %27 = icmp eq i32 %26, 231735821
  %icmpEq45 = icmp eq i1 %cfg_icmpEq23, %27
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %cfg_zext24 = zext i1 %cfg_icmpEq23 to i32
  call void @assert_cfg_ft(i32 %cfg_zext24, i32 %26, i32 35)
  tail call void %3(ptr noundef %0, i32 noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @initialize_graph() local_unnamed_addr #2 {
  %1 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #13
  %2 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #13
  %3 = load i32, ptr @__NumNodes, align 4
  %4 = load i32, ptr @__NumNodes, align 4
  %icmpEq88 = icmp eq i32 %3, %4
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %5 = load i32, ptr @__NumNodes, align 4
  %icmpEq = icmp eq i32 %3, %5
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %6 = sdiv i32 64, %3
  %7 = sdiv i32 64, %4
  %icmpEq90 = icmp eq i32 %6, %7
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @make_tables, i32 noundef %6)
  %puts54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @make_all_neighbors, i32 noundef %6)
  %puts55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @update_all_from_coeffs, i32 noundef %6)
  %puts56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @fill_all_from_fields, i32 noundef %6)
  %puts57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  tail call void @do_all(ptr noundef %1, i32 noundef 0, i32 noundef 64, ptr noundef nonnull @localize, i32 noundef %6)
  %8 = load i32, ptr @__NumNodes, align 4
  %9 = load i32, ptr @__NumNodes, align 4
  %icmpEq92 = icmp eq i32 %8, %9
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %10 = load i32, ptr @__NumNodes, align 4
  %icmpEq84 = icmp eq i32 %8, %10
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %puts58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  %11 = load i32, ptr @__NumNodes, align 4
  %12 = load i32, ptr @__NumNodes, align 4
  %icmpEq94 = icmp eq i32 %11, %12
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %13 = icmp sgt i32 %11, 0
  %14 = select i1 %13, i32 180357663, i32 385876237
  %15 = select i1 %13, i32 180357663, i32 385876237
  %icmpEq86 = icmp eq i32 %14, %15
  %16 = icmp eq i32 %15, %15
  %icmpEq96 = icmp eq i1 %icmpEq86, %16
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %17 = xor i32 128979747, %14
  br i1 %13, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %0
  %cfg_DestPhi = phi i32 [ 128979747, %0 ]
  %18 = phi i32 [ 128979747, %0 ]
  %cfg_DiffPhi = phi i32 [ %17, %0 ]
  %19 = phi i32 [ %17, %0 ]
  %icmpEq100 = icmp eq i32 %cfg_DiffPhi, %19
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %icmpEq98 = icmp eq i32 %cfg_DestPhi, %18
  %20 = icmp eq i32 %18, %18
  %icmpEq102 = icmp eq i1 %icmpEq98, %20
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %21 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %21, 180357663
  %22 = icmp eq i32 %21, 180357663
  %icmpEq104 = icmp eq i1 %cfg_icmpEq, %22
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %21, i32 35)
  %23 = sdiv i32 64, %8
  %24 = icmp sgt i32 %23, 1
  %25 = icmp sgt i32 %23, 1
  %icmpEq106 = icmp eq i1 %24, %25
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %26 = load i32, ptr @n_nodes, align 4
  %27 = sdiv i32 %26, 64
  %28 = add nsw i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = sext i32 %28 to i64
  %icmpEq108 = icmp eq i64 %29, %30
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %31 = sext i32 %23 to i64
  %wide.trip.count66 = zext i32 %11 to i64
  %wide.trip.count = zext i32 %23 to i64
  br label %32

32:                                               ; preds = %._crit_edge, %.lr.ph62
  %indvars.iv64 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %33 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %34 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %35 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %36 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %37 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %38 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next65, %._crit_edge ]
  %cfg_DestPhi68 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %39 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %40 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %41 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %42 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %43 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %44 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %45 = phi i32 [ 180357663, %.lr.ph62 ], [ 334496526, %._crit_edge ]
  %cfg_DiffPhi69 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %46 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %47 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %48 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %49 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %50 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %51 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %52 = phi i32 [ 118490882, %.lr.ph62 ], [ %208, %._crit_edge ]
  %icmpEq180 = icmp eq i32 %51, %52
  %zext181 = zext i1 %icmpEq180 to i32
  call void @assert_ft(i32 %zext181, i32 35)
  %icmpEq178 = icmp eq i32 %49, %50
  %53 = icmp eq i32 %50, %50
  %icmpEq182 = icmp eq i1 %icmpEq178, %53
  %zext183 = zext i1 %icmpEq182 to i32
  call void @assert_ft(i32 %zext183, i32 35)
  %zext179 = zext i1 %icmpEq178 to i32
  call void @assert_ft(i32 %zext179, i32 35)
  %icmpEq176 = icmp eq i32 %47, %48
  %zext177 = zext i1 %icmpEq176 to i32
  %54 = zext i1 %icmpEq176 to i32
  %icmpEq184 = icmp eq i32 %zext177, %54
  %zext185 = zext i1 %icmpEq184 to i32
  call void @assert_ft(i32 %zext185, i32 35)
  call void @assert_ft(i32 %zext177, i32 35)
  %icmpEq174 = icmp eq i32 %cfg_DiffPhi69, %46
  %zext175 = zext i1 %icmpEq174 to i32
  call void @assert_ft(i32 %zext175, i32 35)
  %icmpEq172 = icmp eq i32 %44, %45
  %55 = icmp eq i32 %45, %45
  %icmpEq186 = icmp eq i1 %icmpEq172, %55
  %zext187 = zext i1 %icmpEq186 to i32
  call void @assert_ft(i32 %zext187, i32 35)
  %zext173 = zext i1 %icmpEq172 to i32
  call void @assert_ft(i32 %zext173, i32 35)
  %icmpEq170 = icmp eq i32 %42, %43
  %zext171 = zext i1 %icmpEq170 to i32
  %56 = zext i1 %icmpEq170 to i32
  %icmpEq188 = icmp eq i32 %zext171, %56
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  call void @assert_ft(i32 %zext171, i32 35)
  %icmpEq168 = icmp eq i32 %40, %41
  %zext169 = zext i1 %icmpEq168 to i32
  call void @assert_ft(i32 %zext169, i32 35)
  %icmpEq166 = icmp eq i32 %cfg_DestPhi68, %39
  %57 = icmp eq i32 %39, %39
  %icmpEq190 = icmp eq i1 %icmpEq166, %57
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %zext167 = zext i1 %icmpEq166 to i32
  call void @assert_ft(i32 %zext167, i32 35)
  %icmpEq164 = icmp eq i64 %37, %38
  %zext165 = zext i1 %icmpEq164 to i32
  %58 = zext i1 %icmpEq164 to i32
  %icmpEq192 = icmp eq i32 %zext165, %58
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  call void @assert_ft(i32 %zext165, i32 35)
  %icmpEq162 = icmp eq i64 %35, %36
  %zext163 = zext i1 %icmpEq162 to i32
  call void @assert_ft(i32 %zext163, i32 35)
  %icmpEq160 = icmp eq i64 %33, %34
  %59 = icmp eq i64 %34, %34
  %icmpEq194 = icmp eq i1 %icmpEq160, %59
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %zext161 = zext i1 %icmpEq160 to i32
  call void @assert_ft(i32 %zext161, i32 35)
  %icmpEq134 = icmp eq i32 %49, %51
  %zext135 = zext i1 %icmpEq134 to i32
  %60 = zext i1 %icmpEq134 to i32
  %icmpEq196 = icmp eq i32 %zext135, %60
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  call void @assert_ft(i32 %zext135, i32 35)
  %icmpEq132 = icmp eq i32 %cfg_DiffPhi69, %47
  %61 = icmp eq i32 %46, %48
  %icmpEq136 = icmp eq i1 %icmpEq132, %61
  %62 = icmp eq i1 %61, %61
  %icmpEq198 = icmp eq i1 %icmpEq136, %62
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %zext137 = zext i1 %icmpEq136 to i32
  call void @assert_ft(i32 %zext137, i32 35)
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %icmpEq130 = icmp eq i32 %42, %44
  %63 = icmp eq i32 %43, %45
  %icmpEq200 = icmp eq i1 %icmpEq130, %63
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext131 = zext i1 %icmpEq130 to i32
  %64 = zext i1 %63 to i32
  %icmpEq138 = icmp eq i32 %zext131, %64
  %zext139 = zext i1 %icmpEq138 to i32
  %65 = zext i1 %icmpEq138 to i32
  %icmpEq202 = icmp eq i32 %zext139, %65
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  call void @assert_ft(i32 %zext139, i32 35)
  call void @assert_ft(i32 %zext131, i32 35)
  %icmpEq128 = icmp eq i32 %cfg_DestPhi68, %40
  %zext129 = zext i1 %icmpEq128 to i32
  %66 = zext i1 %icmpEq128 to i32
  %icmpEq204 = icmp eq i32 %zext129, %66
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  call void @assert_ft(i32 %zext129, i32 35)
  %icmpEq126 = icmp eq i64 %35, %37
  %67 = icmp eq i64 %36, %38
  %icmpEq140 = icmp eq i1 %icmpEq126, %67
  %68 = icmp eq i1 %67, %67
  %icmpEq206 = icmp eq i1 %icmpEq140, %68
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %icmpEq124 = icmp eq i64 %indvars.iv64, %33
  %69 = icmp eq i64 %33, %34
  %icmpEq208 = icmp eq i1 %icmpEq124, %69
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %zext125 = zext i1 %icmpEq124 to i32
  %70 = zext i1 %69 to i32
  %icmpEq142 = icmp eq i32 %zext125, %70
  %zext143 = zext i1 %icmpEq142 to i32
  %71 = zext i1 %icmpEq142 to i32
  %icmpEq210 = icmp eq i32 %zext143, %71
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  call void @assert_ft(i32 %zext143, i32 35)
  call void @assert_ft(i32 %zext125, i32 35)
  %icmpEq114 = icmp eq i32 %cfg_DiffPhi69, %49
  %zext115 = zext i1 %icmpEq114 to i32
  %72 = zext i1 %icmpEq114 to i32
  %icmpEq212 = icmp eq i32 %zext115, %72
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  call void @assert_ft(i32 %zext115, i32 35)
  %icmpEq112 = icmp eq i32 %cfg_DestPhi68, %42
  %73 = icmp eq i32 %39, %43
  %icmpEq144 = icmp eq i1 %icmpEq112, %73
  %74 = icmp eq i1 %73, %73
  %icmpEq214 = icmp eq i1 %icmpEq144, %74
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  %75 = icmp eq i32 %cfg_DestPhi68, %42
  %icmpEq116 = icmp eq i1 %icmpEq112, %75
  %76 = icmp eq i1 %73, %75
  %icmpEq216 = icmp eq i1 %icmpEq116, %76
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %zext113 = zext i1 %icmpEq112 to i32
  %77 = zext i1 %73 to i32
  %78 = zext i1 %73 to i32
  %icmpEq218 = icmp eq i32 %77, %78
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %icmpEq146 = icmp eq i32 %zext113, %77
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq110 = icmp eq i64 %indvars.iv64, %35
  %79 = icmp eq i64 %33, %36
  %icmpEq220 = icmp eq i1 %icmpEq110, %79
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %zext111 = zext i1 %icmpEq110 to i32
  %80 = zext i1 %79 to i32
  %81 = zext i1 %79 to i32
  %icmpEq148 = icmp eq i32 %80, %81
  %82 = icmp eq i32 %81, %81
  %icmpEq222 = icmp eq i1 %icmpEq148, %82
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  %zext149 = zext i1 %icmpEq148 to i32
  call void @assert_ft(i32 %zext149, i32 35)
  %icmpEq118 = icmp eq i32 %zext111, %80
  %zext119 = zext i1 %icmpEq118 to i32
  %83 = zext i1 %icmpEq118 to i32
  %icmpEq224 = icmp eq i32 %zext119, %83
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  call void @assert_ft(i32 %zext119, i32 35)
  call void @assert_ft(i32 %zext111, i32 35)
  %84 = xor i32 %cfg_DestPhi68, %cfg_DiffPhi69
  %85 = xor i32 %39, %46
  %86 = xor i32 %39, %46
  %icmpEq226 = icmp eq i32 %85, %86
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %icmpEq150 = icmp eq i32 %84, %85
  %zext151 = zext i1 %icmpEq150 to i32
  call void @assert_ft(i32 %zext151, i32 35)
  %cfg_icmpEq70 = icmp eq i32 %84, 231738653
  %87 = icmp eq i32 %85, 231738653
  %icmpEq228 = icmp eq i1 %cfg_icmpEq70, %87
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %cfg_zext71 = zext i1 %cfg_icmpEq70 to i32
  %88 = zext i1 %87 to i32
  %icmpEq120 = icmp eq i32 %cfg_zext71, %88
  %89 = icmp eq i32 %88, %88
  %90 = icmp eq i32 %88, %88
  %icmpEq230 = icmp eq i1 %89, %90
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %icmpEq152 = icmp eq i1 %icmpEq120, %89
  %zext153 = zext i1 %icmpEq152 to i32
  call void @assert_ft(i32 %zext153, i32 35)
  %zext121 = zext i1 %icmpEq120 to i32
  %91 = zext i1 %89 to i32
  %icmpEq232 = icmp eq i32 %zext121, %91
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  call void @assert_ft(i32 %zext121, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext71, i32 %84, i32 35)
  %92 = mul nsw i64 %indvars.iv64, %31
  %93 = mul nsw i64 %33, %31
  %94 = mul nsw i64 %33, %31
  %icmpEq234 = icmp eq i64 %93, %94
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq154 = icmp eq i64 %92, %93
  %zext155 = zext i1 %icmpEq154 to i32
  call void @assert_ft(i32 %zext155, i32 35)
  %95 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %92
  %96 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %93
  %97 = load ptr, ptr %95, align 8
  %98 = load ptr, ptr %96, align 8
  %99 = load ptr, ptr %95, align 8
  %100 = load ptr, ptr %96, align 8
  %101 = load ptr, ptr %97, align 8
  %102 = load ptr, ptr %98, align 8
  %103 = load ptr, ptr %97, align 8
  %104 = load ptr, ptr %98, align 8
  %105 = load ptr, ptr %97, align 8
  %106 = load ptr, ptr %98, align 8
  %107 = load ptr, ptr %97, align 8
  %108 = load ptr, ptr %98, align 8
  %109 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %indvars.iv64
  %110 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %33
  %111 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %indvars.iv64
  %112 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %33
  %113 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %indvars.iv64
  %114 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %33
  %115 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %indvars.iv64
  %116 = getelementptr inbounds [64 x ptr], ptr %2, i64 0, i64 %33
  store ptr %101, ptr %109, align 8
  %117 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %92
  %118 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %93
  %119 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %92
  %120 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %93
  %121 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %92
  %122 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %93
  %123 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %92
  %124 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %93
  %125 = load ptr, ptr %117, align 8
  %126 = load ptr, ptr %118, align 8
  %127 = load ptr, ptr %117, align 8
  %128 = load ptr, ptr %118, align 8
  %129 = load ptr, ptr %117, align 8
  %130 = load ptr, ptr %118, align 8
  %131 = load ptr, ptr %117, align 8
  %132 = load ptr, ptr %118, align 8
  %133 = load ptr, ptr %125, align 8
  %134 = load ptr, ptr %126, align 8
  %135 = load ptr, ptr %125, align 8
  %136 = load ptr, ptr %126, align 8
  %137 = load ptr, ptr %125, align 8
  %138 = load ptr, ptr %126, align 8
  %139 = load ptr, ptr %125, align 8
  %140 = load ptr, ptr %126, align 8
  %141 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %indvars.iv64
  %142 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %33
  %143 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %indvars.iv64
  %144 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %33
  %145 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %indvars.iv64
  %146 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %33
  %147 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %indvars.iv64
  %148 = getelementptr inbounds %struct.graph_t, ptr %2, i64 0, i32 1, i64 %33
  store ptr %133, ptr %141, align 8
  %149 = select i1 %24, i32 283121687, i32 334496526
  %150 = select i1 %25, i32 283121687, i32 334496526
  %icmpEq236 = icmp eq i32 %149, %150
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %151 = select i1 %24, i32 283121687, i32 334496526
  %icmpEq156 = icmp eq i32 %149, %151
  %zext157 = zext i1 %icmpEq156 to i32
  call void @assert_ft(i32 %zext157, i32 35)
  %152 = select i1 %24, i32 283121687, i32 334496526
  %153 = select i1 %25, i32 283121687, i32 334496526
  %icmpEq238 = icmp eq i32 %152, %153
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %icmpEq122 = icmp eq i32 %149, %152
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %154 = xor i32 231738653, %149
  %155 = xor i32 231738653, %150
  %icmpEq240 = icmp eq i32 %154, %155
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  %156 = xor i32 231738653, %149
  %icmpEq158 = icmp eq i32 %154, %156
  %zext159 = zext i1 %icmpEq158 to i32
  call void @assert_ft(i32 %zext159, i32 35)
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %32
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %32 ]
  %157 = phi i64 [ %198, %.lr.ph ], [ 1, %32 ]
  %cfg_DestPhi72 = phi i32 [ 231738653, %32 ], [ 283121687, %.lr.ph ]
  %158 = phi i32 [ 231738653, %32 ], [ 283121687, %.lr.ph ]
  %cfg_DiffPhi73 = phi i32 [ %154, %32 ], [ %200, %.lr.ph ]
  %159 = phi i32 [ %155, %32 ], [ %200, %.lr.ph ]
  %icmpEq246 = icmp eq i32 %cfg_DiffPhi73, %159
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq244 = icmp eq i32 %cfg_DestPhi72, %158
  %160 = icmp eq i32 %158, %158
  %icmpEq248 = icmp eq i1 %icmpEq244, %160
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %icmpEq242 = icmp eq i64 %indvars.iv, %157
  %zext243 = zext i1 %icmpEq242 to i32
  %161 = zext i1 %icmpEq242 to i32
  %icmpEq250 = icmp eq i32 %zext243, %161
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  call void @assert_ft(i32 %zext243, i32 35)
  %162 = xor i32 %cfg_DestPhi72, %cfg_DiffPhi73
  %cfg_icmpEq74 = icmp eq i32 %162, 283121687
  %cfg_zext75 = zext i1 %cfg_icmpEq74 to i32
  %163 = zext i1 %cfg_icmpEq74 to i32
  %icmpEq252 = icmp eq i32 %cfg_zext75, %163
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext75, i32 %162, i32 35)
  %164 = add nsw i64 %indvars.iv, %92
  %165 = add nsw i64 %164, -1
  %166 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %165
  %167 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %165
  %168 = load ptr, ptr %166, align 8
  %169 = load ptr, ptr %167, align 8
  %170 = getelementptr inbounds ptr, ptr %168, i64 %29
  %171 = getelementptr inbounds ptr, ptr %169, i64 %30
  %172 = load ptr, ptr %170, align 8
  %173 = load ptr, ptr %171, align 8
  %174 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %164
  %175 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %164
  %176 = load ptr, ptr %174, align 8
  %177 = load ptr, ptr %175, align 8
  %178 = load ptr, ptr %176, align 8
  %179 = load ptr, ptr %177, align 8
  %180 = getelementptr inbounds %struct.node_t, ptr %172, i64 0, i32 1
  %181 = getelementptr inbounds %struct.node_t, ptr %173, i64 0, i32 1
  store ptr %178, ptr %180, align 8
  %182 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %165
  %183 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %165
  %184 = load ptr, ptr %182, align 8
  %185 = load ptr, ptr %183, align 8
  %186 = getelementptr inbounds ptr, ptr %184, i64 %29
  %187 = getelementptr inbounds ptr, ptr %185, i64 %30
  %188 = load ptr, ptr %186, align 8
  %189 = load ptr, ptr %187, align 8
  %190 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %164
  %191 = getelementptr inbounds %struct.graph_t, ptr %1, i64 0, i32 1, i64 %164
  %192 = load ptr, ptr %190, align 8
  %193 = load ptr, ptr %191, align 8
  %194 = load ptr, ptr %192, align 8
  %195 = load ptr, ptr %193, align 8
  %196 = getelementptr inbounds %struct.node_t, ptr %188, i64 0, i32 1
  %197 = getelementptr inbounds %struct.node_t, ptr %189, i64 0, i32 1
  store ptr %194, ptr %196, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %198 = add nuw nsw i64 %157, 1
  %icmpEq254 = icmp eq i64 %indvars.iv.next, %198
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %199 = select i1 %exitcond.not, i32 334496526, i32 283121687
  %200 = xor i32 283121687, %199
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %32
  %cfg_DestPhi76 = phi i32 [ 283121687, %.lr.ph ], [ 231738653, %32 ]
  %201 = phi i32 [ 283121687, %.lr.ph ], [ 231738653, %32 ]
  %cfg_DiffPhi77 = phi i32 [ %200, %.lr.ph ], [ %154, %32 ]
  %202 = phi i32 [ %200, %.lr.ph ], [ %155, %32 ]
  %icmpEq258 = icmp eq i32 %cfg_DiffPhi77, %202
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  %icmpEq256 = icmp eq i32 %cfg_DestPhi76, %201
  %203 = icmp eq i32 %201, %201
  %icmpEq260 = icmp eq i1 %icmpEq256, %203
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %204 = xor i32 %cfg_DestPhi76, %cfg_DiffPhi77
  %cfg_icmpEq78 = icmp eq i32 %204, 334496526
  %205 = icmp eq i32 %204, 334496526
  %icmpEq262 = icmp eq i1 %cfg_icmpEq78, %205
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %cfg_zext79 = zext i1 %cfg_icmpEq78 to i32
  call void @assert_cfg_ft(i32 %cfg_zext79, i32 %204, i32 35)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count66
  %206 = icmp eq i64 %indvars.iv.next65, %wide.trip.count66
  %icmpEq264 = icmp eq i1 %exitcond67.not, %206
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %207 = select i1 %exitcond67.not, i32 385876237, i32 231738653
  %208 = xor i32 334496526, %207
  br i1 %exitcond67.not, label %._crit_edge63, label %32

._crit_edge63:                                    ; preds = %._crit_edge, %0
  %cfg_DestPhi80 = phi i32 [ 334496526, %._crit_edge ], [ 128979747, %0 ]
  %209 = phi i32 [ 334496526, %._crit_edge ], [ 128979747, %0 ]
  %cfg_DiffPhi81 = phi i32 [ %208, %._crit_edge ], [ %17, %0 ]
  %210 = phi i32 [ %208, %._crit_edge ], [ %17, %0 ]
  %icmpEq268 = icmp eq i32 %cfg_DiffPhi81, %210
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq266 = icmp eq i32 %cfg_DestPhi80, %209
  %211 = icmp eq i32 %209, %209
  %icmpEq270 = icmp eq i1 %icmpEq266, %211
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %212 = xor i32 %cfg_DestPhi80, %cfg_DiffPhi81
  %cfg_icmpEq82 = icmp eq i32 %212, 385876237
  %213 = icmp eq i32 %212, 385876237
  %icmpEq272 = icmp eq i1 %cfg_icmpEq82, %213
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %cfg_zext83 = zext i1 %cfg_icmpEq82 to i32
  call void @assert_cfg_ft(i32 %cfg_zext83, i32 %212, i32 35)
  ret ptr %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_random(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 (i32, ...) @srand48(i32 noundef %0) #15
  ret void
}

declare i32 @srand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gen_number(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 (...) @lrand48() #15
  %3 = sext i32 %0 to i64
  %4 = sext i32 %0 to i64
  %icmpEq = icmp eq i64 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = srem i64 %2, %3
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

declare i64 @lrand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gen_signed_number(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 (...) @lrand48() #15
  %3 = shl nsw i32 %0, 1
  %4 = shl nsw i32 %0, 1
  %icmpEq = icmp eq i32 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = sext i32 %3 to i64
  %6 = srem i64 %2, %5
  %7 = trunc i64 %6 to i32
  %8 = sub nsw i32 %7, %0
  %9 = sub nsw i32 %7, %0
  %icmpEq7 = icmp eq i32 %8, %9
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %10 = icmp sgt i32 %8, -1
  %11 = zext i1 %10 to i32
  %spec.select = add nuw nsw i32 %8, %11
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @gen_uniform_double() local_unnamed_addr #2 {
  %1 = tail call double (...) @drand48() #15
  ret double %1
}

declare double @drand48(...) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_percent(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call double (...) @drand48() #15
  %3 = sitofp i32 %0 to double
  %4 = sitofp i32 %0 to double
  %5 = sitofp i32 %0 to double
  %6 = sitofp i32 %0 to double
  %7 = sitofp i32 %0 to double
  %8 = sitofp i32 %0 to double
  %9 = sitofp i32 %0 to double
  %10 = sitofp i32 %0 to double
  %11 = fdiv double %3, 1.000000e+02
  %12 = fdiv double %4, 1.000000e+02
  %13 = fdiv double %3, 1.000000e+02
  %14 = fdiv double %4, 1.000000e+02
  %15 = fdiv double %3, 1.000000e+02
  %16 = fdiv double %4, 1.000000e+02
  %17 = fdiv double %3, 1.000000e+02
  %18 = fdiv double %4, 1.000000e+02
  %19 = fcmp olt double %2, %11
  %20 = fcmp olt double %2, %12
  %icmpEq17 = icmp eq i1 %19, %20
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %21 = fcmp olt double %2, %11
  %icmpEq9 = icmp eq i1 %19, %21
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %22 = fcmp olt double %2, %11
  %23 = fcmp olt double %2, %12
  %icmpEq19 = icmp eq i1 %22, %23
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %icmpEq = icmp eq i1 %19, %22
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %24 = load i32, ptr @percentcheck, align 4
  %25 = load i32, ptr @percentcheck, align 4
  %icmpEq21 = icmp eq i32 %24, %25
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %26 = load i32, ptr @percentcheck, align 4
  %icmpEq11 = icmp eq i32 %24, %26
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %27 = add nsw i32 %24, 1
  %28 = add nsw i32 %25, 1
  %icmpEq23 = icmp eq i32 %27, %28
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  store i32 %27, ptr @percentcheck, align 4
  %29 = select i1 %19, i32 180356101, i32 231735821
  %30 = select i1 %20, i32 180356101, i32 231735821
  %31 = select i1 %20, i32 180356101, i32 231735821
  %32 = select i1 %20, i32 180356101, i32 231735821
  %icmpEq25 = icmp eq i32 %31, %32
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq13 = icmp eq i32 %30, %31
  %zext14 = zext i1 %icmpEq13 to i32
  call void @assert_ft(i32 %zext14, i32 35)
  %icmpEq7 = icmp eq i32 %29, %30
  %33 = icmp eq i32 %30, %31
  %icmpEq27 = icmp eq i1 %icmpEq7, %33
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %34 = xor i32 128976901, %29
  %35 = xor i32 128976901, %30
  %36 = xor i32 128976901, %30
  %icmpEq29 = icmp eq i32 %35, %36
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %icmpEq15 = icmp eq i32 %34, %35
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  br i1 %19, label %37, label %58

37:                                               ; preds = %1
  %cfg_DestPhi = phi i32 [ 128976901, %1 ]
  %38 = phi i32 [ 128976901, %1 ]
  %39 = phi i32 [ 128976901, %1 ]
  %40 = phi i32 [ 128976901, %1 ]
  %cfg_DiffPhi = phi i32 [ %34, %1 ]
  %41 = phi i32 [ %35, %1 ]
  %42 = phi i32 [ %34, %1 ]
  %43 = phi i32 [ %35, %1 ]
  %icmpEq47 = icmp eq i32 %42, %43
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq45 = icmp eq i32 %cfg_DiffPhi, %41
  %44 = icmp eq i32 %41, %41
  %icmpEq49 = icmp eq i1 %icmpEq45, %44
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  %icmpEq43 = icmp eq i32 %39, %40
  %zext44 = zext i1 %icmpEq43 to i32
  %45 = zext i1 %icmpEq43 to i32
  %icmpEq51 = icmp eq i32 %zext44, %45
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  call void @assert_ft(i32 %zext44, i32 35)
  %icmpEq41 = icmp eq i32 %cfg_DestPhi, %38
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %icmpEq33 = icmp eq i32 %cfg_DiffPhi, %42
  %46 = icmp eq i32 %41, %43
  %icmpEq53 = icmp eq i1 %icmpEq33, %46
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %icmpEq31 = icmp eq i32 %cfg_DestPhi, %39
  %47 = icmp eq i32 %38, %40
  %48 = icmp eq i32 %38, %40
  %icmpEq55 = icmp eq i1 %47, %48
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %icmpEq35 = icmp eq i1 %icmpEq31, %47
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %zext32 = zext i1 %icmpEq31 to i32
  %49 = zext i1 %47 to i32
  %icmpEq57 = icmp eq i32 %zext32, %49
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  call void @assert_ft(i32 %zext32, i32 35)
  %50 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %50, 180356101
  %51 = icmp eq i32 %50, 180356101
  %52 = icmp eq i32 %50, 180356101
  %icmpEq59 = icmp eq i1 %51, %52
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq37 = icmp eq i1 %cfg_icmpEq, %51
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  %53 = zext i1 %51 to i32
  %icmpEq61 = icmp eq i32 %cfg_zext, %53
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %50, i32 35)
  %54 = load i32, ptr @numlocal, align 4
  %55 = add nsw i32 %54, 1
  %56 = add nsw i32 %54, 1
  %57 = add nsw i32 %54, 1
  %icmpEq63 = icmp eq i32 %56, %57
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %icmpEq39 = icmp eq i32 %55, %56
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  store i32 %55, ptr @numlocal, align 4
  br label %58

58:                                               ; preds = %37, %1
  %cfg_DestPhi3 = phi i32 [ 180356101, %37 ], [ 128976901, %1 ]
  %59 = phi i32 [ 180356101, %37 ], [ 128976901, %1 ]
  %cfg_DiffPhi4 = phi i32 [ 118490632, %37 ], [ %34, %1 ]
  %60 = phi i32 [ 118490632, %37 ], [ %35, %1 ]
  %icmpEq67 = icmp eq i32 %cfg_DiffPhi4, %60
  %zext68 = zext i1 %icmpEq67 to i32
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %cfg_DestPhi3, %59
  %61 = icmp eq i32 %59, %59
  %icmpEq69 = icmp eq i1 %icmpEq65, %61
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %62 = xor i32 %cfg_DestPhi3, %cfg_DiffPhi4
  %cfg_icmpEq5 = icmp eq i32 %62, 231735821
  %63 = icmp eq i32 %62, 231735821
  %icmpEq71 = icmp eq i1 %cfg_icmpEq5, %63
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %cfg_zext6 = zext i1 %cfg_icmpEq5 to i32
  call void @assert_cfg_ft(i32 %cfg_zext6, i32 %62, i32 35)
  %64 = zext i1 %19 to i32
  ret i32 %64
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @printstats() local_unnamed_addr #7 {
  %1 = load i32, ptr @percentcheck, align 4
  %2 = load i32, ptr @percentcheck, align 4
  %icmpEq = icmp eq i32 %1, %2
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %3 = load i32, ptr @numlocal, align 4
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %1, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local void @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = icmp sgt i32 %0, 5
  %4 = icmp sgt i32 %0, 5
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180356386, i32 231736065
  %6 = xor i32 128975389, %5
  br i1 %3, label %.thread, label %16

.thread:                                          ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %7 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %6, %2 ]
  %8 = phi i32 [ %6, %2 ]
  %icmpEq58 = icmp eq i32 %cfg_DiffPhi, %8
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq56 = icmp eq i32 %cfg_DestPhi, %7
  %9 = icmp eq i32 %7, %7
  %icmpEq60 = icmp eq i1 %icmpEq56, %9
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %10 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %10, 180356386
  %11 = icmp eq i32 %10, 180356386
  %icmpEq62 = icmp eq i1 %cfg_icmpEq, %11
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %10, i32 35)
  %12 = getelementptr inbounds ptr, ptr %1, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @atoi(ptr nocapture noundef %13) #16
  store i32 %15, ptr @DebugFlag, align 4
  br label %.thread14

16:                                               ; preds = %2
  %cfg_DestPhi20 = phi i32 [ 128975389, %2 ]
  %17 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi21 = phi i32 [ %6, %2 ]
  %18 = phi i32 [ %6, %2 ]
  %icmpEq66 = icmp eq i32 %cfg_DiffPhi21, %18
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DestPhi20, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq68 = icmp eq i1 %icmpEq64, %19
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %20 = xor i32 %cfg_DestPhi20, %cfg_DiffPhi21
  %cfg_icmpEq22 = icmp eq i32 %20, 231736065
  %21 = icmp eq i32 %20, 231736065
  %icmpEq70 = icmp eq i1 %cfg_icmpEq22, %21
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %cfg_zext23 = zext i1 %cfg_icmpEq22 to i32
  call void @assert_cfg_ft(i32 %cfg_zext23, i32 %20, i32 35)
  store i32 0, ptr @DebugFlag, align 4
  %22 = icmp eq i32 %0, 5
  %23 = icmp eq i32 %0, 5
  %icmpEq72 = icmp eq i1 %22, %23
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %24 = select i1 %22, i32 283116831, i32 334496526
  %25 = xor i32 231736065, %24
  br i1 %22, label %.thread14, label %35

.thread14:                                        ; preds = %16, %.thread
  %cfg_DestPhi24 = phi i32 [ 231736065, %16 ], [ 180356386, %.thread ]
  %26 = phi i32 [ 231736065, %16 ], [ 180356386, %.thread ]
  %cfg_DiffPhi25 = phi i32 [ %25, %16 ], [ 438304829, %.thread ]
  %27 = phi i32 [ %25, %16 ], [ 438304829, %.thread ]
  %icmpEq76 = icmp eq i32 %cfg_DiffPhi25, %27
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %icmpEq74 = icmp eq i32 %cfg_DestPhi24, %26
  %28 = icmp eq i32 %26, %26
  %icmpEq78 = icmp eq i1 %icmpEq74, %28
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %29 = xor i32 %cfg_DestPhi24, %cfg_DiffPhi25
  %cfg_icmpEq26 = icmp eq i32 %29, 283116831
  %30 = icmp eq i32 %29, 283116831
  %icmpEq80 = icmp eq i1 %cfg_icmpEq26, %30
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %cfg_zext27 = zext i1 %cfg_icmpEq26 to i32
  call void @assert_cfg_ft(i32 %cfg_zext27, i32 %29, i32 35)
  %31 = getelementptr inbounds ptr, ptr %1, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %31, align 8
  %34 = tail call i32 @atoi(ptr nocapture noundef %32) #16
  store i32 %34, ptr @__NumNodes, align 4
  br label %50

35:                                               ; preds = %16
  %cfg_DestPhi28 = phi i32 [ 231736065, %16 ]
  %36 = phi i32 [ 231736065, %16 ]
  %cfg_DiffPhi29 = phi i32 [ %25, %16 ]
  %37 = phi i32 [ %25, %16 ]
  %icmpEq84 = icmp eq i32 %cfg_DiffPhi29, %37
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq82 = icmp eq i32 %cfg_DestPhi28, %36
  %38 = icmp eq i32 %36, %36
  %icmpEq86 = icmp eq i1 %icmpEq82, %38
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  %39 = xor i32 %cfg_DestPhi28, %cfg_DiffPhi29
  %cfg_icmpEq30 = icmp eq i32 %39, 334496526
  %40 = icmp eq i32 %39, 334496526
  %icmpEq88 = icmp eq i1 %cfg_icmpEq30, %40
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %cfg_zext31 = zext i1 %cfg_icmpEq30 to i32
  call void @assert_cfg_ft(i32 %cfg_zext31, i32 %39, i32 35)
  store i32 4, ptr @__NumNodes, align 4
  %41 = icmp sgt i32 %0, 1
  %42 = icmp sgt i32 %0, 1
  %icmpEq90 = icmp eq i1 %41, %42
  %zext91 = zext i1 %icmpEq90 to i32
  call void @assert_ft(i32 %zext91, i32 35)
  %43 = select i1 %41, i32 437257745, i32 385876506
  %44 = xor i32 334496526, %43
  br i1 %41, label %50, label %.thread16

.thread16:                                        ; preds = %35
  %cfg_DestPhi32 = phi i32 [ 334496526, %35 ]
  %45 = phi i32 [ 334496526, %35 ]
  %cfg_DiffPhi33 = phi i32 [ %44, %35 ]
  %46 = phi i32 [ %44, %35 ]
  %icmpEq94 = icmp eq i32 %cfg_DiffPhi33, %46
  %zext95 = zext i1 %icmpEq94 to i32
  call void @assert_ft(i32 %zext95, i32 35)
  %icmpEq92 = icmp eq i32 %cfg_DestPhi32, %45
  %47 = icmp eq i32 %45, %45
  %icmpEq96 = icmp eq i1 %icmpEq92, %47
  %zext97 = zext i1 %icmpEq96 to i32
  call void @assert_ft(i32 %zext97, i32 35)
  %zext93 = zext i1 %icmpEq92 to i32
  call void @assert_ft(i32 %zext93, i32 35)
  %48 = xor i32 %cfg_DestPhi32, %cfg_DiffPhi33
  %cfg_icmpEq34 = icmp eq i32 %48, 385876506
  %49 = icmp eq i32 %48, 385876506
  %icmpEq98 = icmp eq i1 %cfg_icmpEq34, %49
  %zext99 = zext i1 %icmpEq98 to i32
  call void @assert_ft(i32 %zext99, i32 35)
  %cfg_zext35 = zext i1 %cfg_icmpEq34 to i32
  call void @assert_cfg_ft(i32 %cfg_zext35, i32 %48, i32 35)
  store i32 64, ptr @n_nodes, align 4
  br label %.thread18

50:                                               ; preds = %35, %.thread14
  %cfg_DestPhi36 = phi i32 [ 334496526, %35 ], [ 283116831, %.thread14 ]
  %51 = phi i32 [ 334496526, %35 ], [ 283116831, %.thread14 ]
  %cfg_DiffPhi37 = phi i32 [ %44, %35 ], [ 183501582, %.thread14 ]
  %52 = phi i32 [ %44, %35 ], [ 183501582, %.thread14 ]
  %icmpEq102 = icmp eq i32 %cfg_DiffPhi37, %52
  %zext103 = zext i1 %icmpEq102 to i32
  call void @assert_ft(i32 %zext103, i32 35)
  %icmpEq100 = icmp eq i32 %cfg_DestPhi36, %51
  %53 = icmp eq i32 %51, %51
  %icmpEq104 = icmp eq i1 %icmpEq100, %53
  %zext105 = zext i1 %icmpEq104 to i32
  call void @assert_ft(i32 %zext105, i32 35)
  %zext101 = zext i1 %icmpEq100 to i32
  call void @assert_ft(i32 %zext101, i32 35)
  %54 = xor i32 %cfg_DestPhi36, %cfg_DiffPhi37
  %cfg_icmpEq38 = icmp eq i32 %54, 437257745
  %55 = icmp eq i32 %54, 437257745
  %icmpEq106 = icmp eq i1 %cfg_icmpEq38, %55
  %zext107 = zext i1 %icmpEq106 to i32
  call void @assert_ft(i32 %zext107, i32 35)
  %cfg_zext39 = zext i1 %cfg_icmpEq38 to i32
  call void @assert_cfg_ft(i32 %cfg_zext39, i32 %54, i32 35)
  %56 = getelementptr inbounds ptr, ptr %1, i64 1
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %56, align 8
  %59 = tail call i32 @atoi(ptr nocapture noundef %57) #16
  store i32 %59, ptr @n_nodes, align 4
  %60 = icmp ugt i32 %0, 2
  %61 = icmp ugt i32 %0, 2
  %icmpEq108 = icmp eq i1 %60, %61
  %zext109 = zext i1 %icmpEq108 to i32
  call void @assert_ft(i32 %zext109, i32 35)
  %62 = select i1 %60, i32 540018182, i32 488636938
  %63 = xor i32 437257745, %62
  br i1 %60, label %69, label %.thread18

.thread18:                                        ; preds = %50, %.thread16
  %cfg_DestPhi40 = phi i32 [ 385876506, %.thread16 ], [ 437257745, %50 ]
  %64 = phi i32 [ 385876506, %.thread16 ], [ 437257745, %50 ]
  %cfg_DiffPhi41 = phi i32 [ 169869328, %.thread16 ], [ %63, %50 ]
  %65 = phi i32 [ 169869328, %.thread16 ], [ %63, %50 ]
  %icmpEq112 = icmp eq i32 %cfg_DiffPhi41, %65
  %zext113 = zext i1 %icmpEq112 to i32
  call void @assert_ft(i32 %zext113, i32 35)
  %icmpEq110 = icmp eq i32 %cfg_DestPhi40, %64
  %66 = icmp eq i32 %64, %64
  %icmpEq114 = icmp eq i1 %icmpEq110, %66
  %zext115 = zext i1 %icmpEq114 to i32
  call void @assert_ft(i32 %zext115, i32 35)
  %zext111 = zext i1 %icmpEq110 to i32
  call void @assert_ft(i32 %zext111, i32 35)
  %67 = xor i32 %cfg_DestPhi40, %cfg_DiffPhi41
  %cfg_icmpEq42 = icmp eq i32 %67, 488636938
  %68 = icmp eq i32 %67, 488636938
  %icmpEq116 = icmp eq i1 %cfg_icmpEq42, %68
  %zext117 = zext i1 %icmpEq116 to i32
  call void @assert_ft(i32 %zext117, i32 35)
  %cfg_zext43 = zext i1 %cfg_icmpEq42 to i32
  call void @assert_cfg_ft(i32 %cfg_zext43, i32 %67, i32 35)
  store i32 3, ptr @d_nodes, align 4
  br label %92

69:                                               ; preds = %50
  %cfg_DestPhi44 = phi i32 [ 437257745, %50 ]
  %70 = phi i32 [ 437257745, %50 ]
  %cfg_DiffPhi45 = phi i32 [ %63, %50 ]
  %71 = phi i32 [ %63, %50 ]
  %icmpEq120 = icmp eq i32 %cfg_DiffPhi45, %71
  %zext121 = zext i1 %icmpEq120 to i32
  call void @assert_ft(i32 %zext121, i32 35)
  %icmpEq118 = icmp eq i32 %cfg_DestPhi44, %70
  %72 = icmp eq i32 %70, %70
  %icmpEq122 = icmp eq i1 %icmpEq118, %72
  %zext123 = zext i1 %icmpEq122 to i32
  call void @assert_ft(i32 %zext123, i32 35)
  %zext119 = zext i1 %icmpEq118 to i32
  call void @assert_ft(i32 %zext119, i32 35)
  %73 = xor i32 %cfg_DestPhi44, %cfg_DiffPhi45
  %cfg_icmpEq46 = icmp eq i32 %73, 540018182
  %74 = icmp eq i32 %73, 540018182
  %icmpEq124 = icmp eq i1 %cfg_icmpEq46, %74
  %zext125 = zext i1 %icmpEq124 to i32
  call void @assert_ft(i32 %zext125, i32 35)
  %cfg_zext47 = zext i1 %cfg_icmpEq46 to i32
  call void @assert_cfg_ft(i32 %cfg_zext47, i32 %73, i32 35)
  %75 = getelementptr inbounds ptr, ptr %1, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = load ptr, ptr %75, align 8
  %78 = tail call i32 @atoi(ptr nocapture noundef %76) #16
  store i32 %78, ptr @d_nodes, align 4
  %.not = icmp eq i32 %0, 3
  %79 = icmp eq i32 %0, 3
  %icmpEq126 = icmp eq i1 %.not, %79
  %zext127 = zext i1 %icmpEq126 to i32
  call void @assert_ft(i32 %zext127, i32 35)
  %80 = select i1 %.not, i32 642777872, i32 591397913
  %81 = xor i32 540018182, %80
  br i1 %.not, label %92, label %82

82:                                               ; preds = %69
  %cfg_DestPhi48 = phi i32 [ 540018182, %69 ]
  %83 = phi i32 [ 540018182, %69 ]
  %cfg_DiffPhi49 = phi i32 [ %81, %69 ]
  %84 = phi i32 [ %81, %69 ]
  %icmpEq130 = icmp eq i32 %cfg_DiffPhi49, %84
  %zext131 = zext i1 %icmpEq130 to i32
  call void @assert_ft(i32 %zext131, i32 35)
  %icmpEq128 = icmp eq i32 %cfg_DestPhi48, %83
  %85 = icmp eq i32 %83, %83
  %icmpEq132 = icmp eq i1 %icmpEq128, %85
  %zext133 = zext i1 %icmpEq132 to i32
  call void @assert_ft(i32 %zext133, i32 35)
  %zext129 = zext i1 %icmpEq128 to i32
  call void @assert_ft(i32 %zext129, i32 35)
  %86 = xor i32 %cfg_DestPhi48, %cfg_DiffPhi49
  %cfg_icmpEq50 = icmp eq i32 %86, 591397913
  %87 = icmp eq i32 %86, 591397913
  %icmpEq134 = icmp eq i1 %cfg_icmpEq50, %87
  %zext135 = zext i1 %icmpEq134 to i32
  call void @assert_ft(i32 %zext135, i32 35)
  %cfg_zext51 = zext i1 %cfg_icmpEq50 to i32
  call void @assert_cfg_ft(i32 %cfg_zext51, i32 %86, i32 35)
  %88 = getelementptr inbounds ptr, ptr %1, i64 3
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr %88, align 8
  %91 = tail call i32 @atoi(ptr nocapture noundef %89) #16
  br label %92

92:                                               ; preds = %82, %69, %.thread18
  %storemerge12 = phi i32 [ %91, %82 ], [ 75, %69 ], [ 75, %.thread18 ]
  %93 = phi i32 [ %91, %82 ], [ 75, %69 ], [ 75, %.thread18 ]
  %cfg_DestPhi52 = phi i32 [ 488636938, %.thread18 ], [ 540018182, %69 ], [ 591397913, %82 ]
  %94 = phi i32 [ 488636938, %.thread18 ], [ 540018182, %69 ], [ 591397913, %82 ]
  %cfg_DiffPhi53 = phi i32 [ 997196058, %.thread18 ], [ %81, %69 ], [ 84936457, %82 ]
  %95 = phi i32 [ 997196058, %.thread18 ], [ %81, %69 ], [ 84936457, %82 ]
  %icmpEq140 = icmp eq i32 %cfg_DiffPhi53, %95
  %zext141 = zext i1 %icmpEq140 to i32
  call void @assert_ft(i32 %zext141, i32 35)
  %icmpEq138 = icmp eq i32 %cfg_DestPhi52, %94
  %96 = icmp eq i32 %94, %94
  %icmpEq142 = icmp eq i1 %icmpEq138, %96
  %zext143 = zext i1 %icmpEq142 to i32
  call void @assert_ft(i32 %zext143, i32 35)
  %zext139 = zext i1 %icmpEq138 to i32
  call void @assert_ft(i32 %zext139, i32 35)
  %icmpEq136 = icmp eq i32 %storemerge12, %93
  %zext137 = zext i1 %icmpEq136 to i32
  %97 = zext i1 %icmpEq136 to i32
  %icmpEq144 = icmp eq i32 %zext137, %97
  %zext145 = zext i1 %icmpEq144 to i32
  call void @assert_ft(i32 %zext145, i32 35)
  call void @assert_ft(i32 %zext137, i32 35)
  %98 = xor i32 %cfg_DestPhi52, %cfg_DiffPhi53
  %cfg_icmpEq54 = icmp eq i32 %98, 642777872
  %cfg_zext55 = zext i1 %cfg_icmpEq54 to i32
  %99 = zext i1 %cfg_icmpEq54 to i32
  %icmpEq146 = icmp eq i32 %cfg_zext55, %99
  %zext147 = zext i1 %icmpEq146 to i32
  call void @assert_ft(i32 %zext147, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext55, i32 %98, i32 35)
  store i32 %storemerge12, ptr @local_p, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

declare void @exit.9(i32, ...)

declare i32 @printf.10(ptr, i32, ...)

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

attributes #0 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 -2147483647, i32 -2147483648}
!7 = !{i32 0, i32 2}
!8 = !{i32 1, i32 0}
