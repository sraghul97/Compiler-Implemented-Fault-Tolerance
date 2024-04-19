; ModuleID = 'fft-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2.14 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3.15 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4.16 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@str = private unnamed_addr constant [9 x i8] c"RealOut:\00", align 1
@str.1 = private unnamed_addr constant [9 x i8] c"ImagOut:\00", align 1
@str.2 = private unnamed_addr constant [31 x i8] c"Usage: fft <waves> <length> -i\00", align 1
@str.3 = private unnamed_addr constant [27 x i8] c"-i performs an inverse fft\00", align 1
@str.4 = private unnamed_addr constant [34 x i8] c"<length> is the number of samples\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 3
  %4 = icmp slt i32 %0, 3
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180356634, i32 231735821
  %6 = xor i32 128975389, %5
  br i1 %3, label %7, label %14

7:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %8 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %6, %2 ]
  %9 = phi i32 [ %6, %2 ]
  %icmpEq190 = icmp eq i32 %cfg_DiffPhi, %9
  %zext191 = zext i1 %icmpEq190 to i32
  call void @assert_ft(i32 %zext191, i32 35)
  %icmpEq188 = icmp eq i32 %cfg_DestPhi, %8
  %10 = icmp eq i32 %8, %8
  %icmpEq192 = icmp eq i1 %icmpEq188, %10
  %zext193 = zext i1 %icmpEq192 to i32
  call void @assert_ft(i32 %zext193, i32 35)
  %zext189 = zext i1 %icmpEq188 to i32
  call void @assert_ft(i32 %zext189, i32 35)
  %11 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %11, 180356634
  %12 = icmp eq i32 %11, 180356634
  %icmpEq194 = icmp eq i1 %cfg_icmpEq, %12
  %zext195 = zext i1 %icmpEq194 to i32
  call void @assert_ft(i32 %zext195, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %11, i32 35)
  %puts71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %puts72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3)
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %puts73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  tail call void @exit(i32 noundef -1) #15
  unreachable

14:                                               ; preds = %2
  %cfg_DestPhi112 = phi i32 [ 128975389, %2 ]
  %15 = phi i32 [ 128975389, %2 ]
  %16 = phi i32 [ 128975389, %2 ]
  %17 = phi i32 [ 128975389, %2 ]
  %18 = phi i32 [ 128975389, %2 ]
  %19 = phi i32 [ 128975389, %2 ]
  %20 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi113 = phi i32 [ %6, %2 ]
  %21 = phi i32 [ %6, %2 ]
  %22 = phi i32 [ %6, %2 ]
  %23 = phi i32 [ %6, %2 ]
  %24 = phi i32 [ %6, %2 ]
  %25 = phi i32 [ %6, %2 ]
  %26 = phi i32 [ %6, %2 ]
  %27 = phi i32 [ %6, %2 ]
  %icmpEq244 = icmp eq i32 %26, %27
  %zext245 = zext i1 %icmpEq244 to i32
  call void @assert_ft(i32 %zext245, i32 35)
  %icmpEq242 = icmp eq i32 %24, %25
  %28 = icmp eq i32 %25, %25
  %icmpEq246 = icmp eq i1 %icmpEq242, %28
  %zext247 = zext i1 %icmpEq246 to i32
  call void @assert_ft(i32 %zext247, i32 35)
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %icmpEq240 = icmp eq i32 %22, %23
  %zext241 = zext i1 %icmpEq240 to i32
  %29 = zext i1 %icmpEq240 to i32
  %icmpEq248 = icmp eq i32 %zext241, %29
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  call void @assert_ft(i32 %zext241, i32 35)
  %icmpEq238 = icmp eq i32 %cfg_DiffPhi113, %21
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %icmpEq236 = icmp eq i32 %19, %20
  %30 = icmp eq i32 %20, %20
  %icmpEq250 = icmp eq i1 %icmpEq236, %30
  %zext251 = zext i1 %icmpEq250 to i32
  call void @assert_ft(i32 %zext251, i32 35)
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  %icmpEq234 = icmp eq i32 %17, %18
  %zext235 = zext i1 %icmpEq234 to i32
  %31 = zext i1 %icmpEq234 to i32
  %icmpEq252 = icmp eq i32 %zext235, %31
  %zext253 = zext i1 %icmpEq252 to i32
  call void @assert_ft(i32 %zext253, i32 35)
  call void @assert_ft(i32 %zext235, i32 35)
  %icmpEq232 = icmp eq i32 %15, %16
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  %icmpEq212 = icmp eq i32 %24, %26
  %32 = icmp eq i32 %25, %27
  %icmpEq254 = icmp eq i1 %icmpEq212, %32
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %icmpEq210 = icmp eq i32 %cfg_DiffPhi113, %22
  %33 = icmp eq i32 %21, %23
  %34 = icmp eq i32 %21, %23
  %icmpEq256 = icmp eq i1 %33, %34
  %zext257 = zext i1 %icmpEq256 to i32
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq214 = icmp eq i1 %icmpEq210, %33
  %zext215 = zext i1 %icmpEq214 to i32
  call void @assert_ft(i32 %zext215, i32 35)
  %zext211 = zext i1 %icmpEq210 to i32
  %35 = zext i1 %33 to i32
  %icmpEq258 = icmp eq i32 %zext211, %35
  %zext259 = zext i1 %icmpEq258 to i32
  call void @assert_ft(i32 %zext259, i32 35)
  call void @assert_ft(i32 %zext211, i32 35)
  %icmpEq208 = icmp eq i32 %17, %19
  %zext209 = zext i1 %icmpEq208 to i32
  %36 = zext i1 %icmpEq208 to i32
  %37 = zext i1 %icmpEq208 to i32
  %icmpEq260 = icmp eq i32 %36, %37
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq216 = icmp eq i32 %zext209, %36
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  call void @assert_ft(i32 %zext209, i32 35)
  %icmpEq206 = icmp eq i32 %cfg_DestPhi112, %15
  %38 = icmp eq i32 %15, %16
  %icmpEq262 = icmp eq i1 %icmpEq206, %38
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq198 = icmp eq i32 %cfg_DiffPhi113, %24
  %39 = icmp eq i32 %21, %25
  %40 = icmp eq i32 %21, %25
  %icmpEq264 = icmp eq i1 %39, %40
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  %icmpEq218 = icmp eq i1 %icmpEq198, %39
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %zext199 = zext i1 %icmpEq198 to i32
  %41 = zext i1 %39 to i32
  %icmpEq266 = icmp eq i32 %zext199, %41
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %cfg_DestPhi112, %17
  %42 = icmp eq i32 %15, %18
  %43 = icmp eq i32 %15, %18
  %44 = icmp eq i32 %15, %18
  %icmpEq268 = icmp eq i1 %43, %44
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq220 = icmp eq i1 %42, %43
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %icmpEq200 = icmp eq i1 %icmpEq196, %42
  %45 = icmp eq i1 %42, %43
  %icmpEq270 = icmp eq i1 %icmpEq200, %45
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext197 = zext i1 %icmpEq196 to i32
  %46 = zext i1 %42 to i32
  %47 = zext i1 %42 to i32
  %icmpEq272 = icmp eq i32 %46, %47
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %icmpEq222 = icmp eq i32 %zext197, %46
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  call void @assert_ft(i32 %zext197, i32 35)
  %48 = xor i32 %cfg_DestPhi112, %cfg_DiffPhi113
  %49 = xor i32 %15, %21
  %icmpEq274 = icmp eq i32 %48, %49
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  %cfg_icmpEq114 = icmp eq i32 %48, 231735821
  %50 = icmp eq i32 %49, 231735821
  %51 = icmp eq i32 %49, 231735821
  %icmpEq224 = icmp eq i1 %50, %51
  %52 = icmp eq i1 %51, %51
  %icmpEq276 = icmp eq i1 %icmpEq224, %52
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %zext225 = zext i1 %icmpEq224 to i32
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq202 = icmp eq i1 %cfg_icmpEq114, %50
  %zext203 = zext i1 %icmpEq202 to i32
  %53 = zext i1 %icmpEq202 to i32
  %icmpEq278 = icmp eq i32 %zext203, %53
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  call void @assert_ft(i32 %zext203, i32 35)
  %cfg_zext115 = zext i1 %cfg_icmpEq114 to i32
  %54 = zext i1 %50 to i32
  %icmpEq226 = icmp eq i32 %cfg_zext115, %54
  %55 = icmp eq i32 %54, %54
  %icmpEq280 = icmp eq i1 %icmpEq226, %55
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext115, i32 %48, i32 35)
  %56 = icmp eq i32 %0, 4
  %57 = icmp eq i32 %0, 4
  %icmpEq282 = icmp eq i1 %56, %57
  %zext283 = zext i1 %icmpEq282 to i32
  call void @assert_ft(i32 %zext283, i32 35)
  %58 = select i1 %56, i32 283117071, i32 334500871
  %59 = select i1 %57, i32 283117071, i32 334500871
  %60 = select i1 %57, i32 283117071, i32 334500871
  %icmpEq228 = icmp eq i32 %59, %60
  %61 = icmp eq i32 %60, %60
  %icmpEq284 = icmp eq i1 %icmpEq228, %61
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq204 = icmp eq i32 %58, %59
  %zext205 = zext i1 %icmpEq204 to i32
  %62 = zext i1 %icmpEq204 to i32
  %icmpEq286 = icmp eq i32 %zext205, %62
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  call void @assert_ft(i32 %zext205, i32 35)
  %63 = xor i32 231735821, %58
  %64 = xor i32 231735821, %59
  %icmpEq230 = icmp eq i32 %63, %64
  %65 = icmp eq i32 %64, %64
  %icmpEq288 = icmp eq i1 %icmpEq230, %65
  %zext289 = zext i1 %icmpEq288 to i32
  call void @assert_ft(i32 %zext289, i32 35)
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  br i1 %56, label %66, label %124

66:                                               ; preds = %14
  %cfg_DestPhi116 = phi i32 [ 231735821, %14 ]
  %67 = phi i32 [ 231735821, %14 ]
  %68 = phi i32 [ 231735821, %14 ]
  %69 = phi i32 [ 231735821, %14 ]
  %70 = phi i32 [ 231735821, %14 ]
  %71 = phi i32 [ 231735821, %14 ]
  %72 = phi i32 [ 231735821, %14 ]
  %cfg_DiffPhi117 = phi i32 [ %63, %14 ]
  %73 = phi i32 [ %64, %14 ]
  %74 = phi i32 [ %63, %14 ]
  %75 = phi i32 [ %64, %14 ]
  %76 = phi i32 [ %63, %14 ]
  %77 = phi i32 [ %64, %14 ]
  %78 = phi i32 [ %63, %14 ]
  %79 = phi i32 [ %64, %14 ]
  %icmpEq338 = icmp eq i32 %78, %79
  %zext339 = zext i1 %icmpEq338 to i32
  call void @assert_ft(i32 %zext339, i32 35)
  %icmpEq336 = icmp eq i32 %76, %77
  %80 = icmp eq i32 %77, %77
  %icmpEq340 = icmp eq i1 %icmpEq336, %80
  %zext341 = zext i1 %icmpEq340 to i32
  call void @assert_ft(i32 %zext341, i32 35)
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %icmpEq334 = icmp eq i32 %74, %75
  %zext335 = zext i1 %icmpEq334 to i32
  %81 = zext i1 %icmpEq334 to i32
  %icmpEq342 = icmp eq i32 %zext335, %81
  %zext343 = zext i1 %icmpEq342 to i32
  call void @assert_ft(i32 %zext343, i32 35)
  call void @assert_ft(i32 %zext335, i32 35)
  %icmpEq332 = icmp eq i32 %cfg_DiffPhi117, %73
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %icmpEq330 = icmp eq i32 %71, %72
  %82 = icmp eq i32 %72, %72
  %icmpEq344 = icmp eq i1 %icmpEq330, %82
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  %icmpEq328 = icmp eq i32 %69, %70
  %zext329 = zext i1 %icmpEq328 to i32
  %83 = zext i1 %icmpEq328 to i32
  %icmpEq346 = icmp eq i32 %zext329, %83
  %zext347 = zext i1 %icmpEq346 to i32
  call void @assert_ft(i32 %zext347, i32 35)
  call void @assert_ft(i32 %zext329, i32 35)
  %icmpEq326 = icmp eq i32 %67, %68
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  %icmpEq306 = icmp eq i32 %76, %78
  %84 = icmp eq i32 %77, %79
  %icmpEq348 = icmp eq i1 %icmpEq306, %84
  %zext349 = zext i1 %icmpEq348 to i32
  call void @assert_ft(i32 %zext349, i32 35)
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  %icmpEq304 = icmp eq i32 %cfg_DiffPhi117, %74
  %85 = icmp eq i32 %73, %75
  %86 = icmp eq i32 %73, %75
  %icmpEq350 = icmp eq i1 %85, %86
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  %icmpEq308 = icmp eq i1 %icmpEq304, %85
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %zext305 = zext i1 %icmpEq304 to i32
  %87 = zext i1 %85 to i32
  %icmpEq352 = icmp eq i32 %zext305, %87
  %zext353 = zext i1 %icmpEq352 to i32
  call void @assert_ft(i32 %zext353, i32 35)
  call void @assert_ft(i32 %zext305, i32 35)
  %icmpEq302 = icmp eq i32 %69, %71
  %zext303 = zext i1 %icmpEq302 to i32
  %88 = zext i1 %icmpEq302 to i32
  %89 = zext i1 %icmpEq302 to i32
  %icmpEq354 = icmp eq i32 %88, %89
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %icmpEq310 = icmp eq i32 %zext303, %88
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  call void @assert_ft(i32 %zext303, i32 35)
  %icmpEq300 = icmp eq i32 %cfg_DestPhi116, %67
  %90 = icmp eq i32 %67, %68
  %icmpEq356 = icmp eq i1 %icmpEq300, %90
  %zext357 = zext i1 %icmpEq356 to i32
  call void @assert_ft(i32 %zext357, i32 35)
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  %icmpEq292 = icmp eq i32 %cfg_DiffPhi117, %76
  %91 = icmp eq i32 %73, %77
  %92 = icmp eq i32 %73, %77
  %icmpEq358 = icmp eq i1 %91, %92
  %zext359 = zext i1 %icmpEq358 to i32
  call void @assert_ft(i32 %zext359, i32 35)
  %icmpEq312 = icmp eq i1 %icmpEq292, %91
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %zext293 = zext i1 %icmpEq292 to i32
  %93 = zext i1 %91 to i32
  %icmpEq360 = icmp eq i32 %zext293, %93
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq290 = icmp eq i32 %cfg_DestPhi116, %69
  %94 = icmp eq i32 %67, %70
  %95 = icmp eq i32 %67, %70
  %96 = icmp eq i32 %67, %70
  %icmpEq362 = icmp eq i1 %95, %96
  %zext363 = zext i1 %icmpEq362 to i32
  call void @assert_ft(i32 %zext363, i32 35)
  %icmpEq314 = icmp eq i1 %94, %95
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  %icmpEq294 = icmp eq i1 %icmpEq290, %94
  %97 = icmp eq i1 %94, %95
  %icmpEq364 = icmp eq i1 %icmpEq294, %97
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %zext291 = zext i1 %icmpEq290 to i32
  %98 = zext i1 %94 to i32
  %99 = zext i1 %94 to i32
  %icmpEq366 = icmp eq i32 %98, %99
  %zext367 = zext i1 %icmpEq366 to i32
  call void @assert_ft(i32 %zext367, i32 35)
  %icmpEq316 = icmp eq i32 %zext291, %98
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  call void @assert_ft(i32 %zext291, i32 35)
  %100 = xor i32 %cfg_DestPhi116, %cfg_DiffPhi117
  %101 = xor i32 %67, %73
  %icmpEq368 = icmp eq i32 %100, %101
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %cfg_icmpEq118 = icmp eq i32 %100, 283117071
  %102 = icmp eq i32 %101, 283117071
  %103 = icmp eq i32 %101, 283117071
  %icmpEq318 = icmp eq i1 %102, %103
  %104 = icmp eq i1 %103, %103
  %icmpEq370 = icmp eq i1 %icmpEq318, %104
  %zext371 = zext i1 %icmpEq370 to i32
  call void @assert_ft(i32 %zext371, i32 35)
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %icmpEq296 = icmp eq i1 %cfg_icmpEq118, %102
  %zext297 = zext i1 %icmpEq296 to i32
  %105 = zext i1 %icmpEq296 to i32
  %icmpEq372 = icmp eq i32 %zext297, %105
  %zext373 = zext i1 %icmpEq372 to i32
  call void @assert_ft(i32 %zext373, i32 35)
  call void @assert_ft(i32 %zext297, i32 35)
  %cfg_zext119 = zext i1 %cfg_icmpEq118 to i32
  %106 = zext i1 %102 to i32
  %icmpEq320 = icmp eq i32 %cfg_zext119, %106
  %107 = icmp eq i32 %106, %106
  %icmpEq374 = icmp eq i1 %icmpEq320, %107
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext119, i32 %100, i32 35)
  %108 = getelementptr inbounds ptr, ptr %1, i64 3
  %109 = getelementptr inbounds ptr, ptr %1, i64 3
  %110 = load ptr, ptr %108, align 8
  %111 = load ptr, ptr %109, align 8
  %112 = load ptr, ptr %108, align 8
  %113 = load ptr, ptr %109, align 8
  %114 = load ptr, ptr %108, align 8
  %115 = load ptr, ptr %109, align 8
  %116 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(3) @.str.4, i64 noundef 2) #16
  %.not70 = icmp eq i32 %116, 0
  %117 = icmp eq i32 %116, 0
  %icmpEq376 = icmp eq i1 %.not70, %117
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  %118 = icmp eq i32 %116, 0
  %icmpEq322 = icmp eq i1 %.not70, %118
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %119 = icmp eq i32 %116, 0
  %120 = icmp eq i32 %116, 0
  %icmpEq378 = icmp eq i1 %119, %120
  %zext379 = zext i1 %icmpEq378 to i32
  call void @assert_ft(i32 %zext379, i32 35)
  %icmpEq298 = icmp eq i1 %.not70, %119
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %121 = zext i1 %.not70 to i32
  %122 = zext i1 %117 to i32
  %icmpEq380 = icmp eq i32 %121, %122
  %zext381 = zext i1 %icmpEq380 to i32
  call void @assert_ft(i32 %zext381, i32 35)
  %123 = zext i1 %.not70 to i32
  %icmpEq324 = icmp eq i32 %121, %123
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  br label %124

124:                                              ; preds = %66, %14
  %.0 = phi i32 [ %121, %66 ], [ 0, %14 ]
  %125 = phi i32 [ %122, %66 ], [ 0, %14 ]
  %cfg_DestPhi120 = phi i32 [ 231735821, %14 ], [ 283117071, %66 ]
  %126 = phi i32 [ 231735821, %14 ], [ 283117071, %66 ]
  %cfg_DiffPhi121 = phi i32 [ %63, %14 ], [ 51384840, %66 ]
  %127 = phi i32 [ %64, %14 ], [ 51384840, %66 ]
  %icmpEq386 = icmp eq i32 %cfg_DiffPhi121, %127
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  %icmpEq384 = icmp eq i32 %cfg_DestPhi120, %126
  %128 = icmp eq i32 %126, %126
  %icmpEq388 = icmp eq i1 %icmpEq384, %128
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %icmpEq382 = icmp eq i32 %.0, %125
  %zext383 = zext i1 %icmpEq382 to i32
  %129 = zext i1 %icmpEq382 to i32
  %icmpEq390 = icmp eq i32 %zext383, %129
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  call void @assert_ft(i32 %zext383, i32 35)
  %130 = xor i32 %cfg_DestPhi120, %cfg_DiffPhi121
  %cfg_icmpEq122 = icmp eq i32 %130, 334500871
  %cfg_zext123 = zext i1 %cfg_icmpEq122 to i32
  %131 = zext i1 %cfg_icmpEq122 to i32
  %icmpEq392 = icmp eq i32 %cfg_zext123, %131
  %zext393 = zext i1 %icmpEq392 to i32
  call void @assert_ft(i32 %zext393, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext123, i32 %130, i32 35)
  %132 = getelementptr inbounds ptr, ptr %1, i64 2
  %133 = load ptr, ptr %132, align 8
  %134 = tail call i32 @atoi(ptr nocapture noundef %133) #16
  %135 = getelementptr inbounds ptr, ptr %1, i64 1
  %136 = getelementptr inbounds ptr, ptr %1, i64 1
  %137 = load ptr, ptr %135, align 8
  %138 = load ptr, ptr %136, align 8
  %139 = tail call i32 @atoi(ptr nocapture noundef %137) #16
  tail call void @srand(i32 noundef 1) #17
  %140 = zext i32 %134 to i64
  %141 = zext i32 %134 to i64
  %icmpEq394 = icmp eq i64 %140, %141
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %142 = shl nuw nsw i64 %140, 2
  %143 = tail call noalias ptr @malloc(i64 noundef %142) #18
  %144 = tail call noalias ptr @malloc(i64 noundef %142) #18
  %145 = tail call noalias ptr @malloc(i64 noundef %142) #18
  %146 = tail call noalias ptr @malloc(i64 noundef %142) #18
  %147 = zext i32 %139 to i64
  %148 = zext i32 %139 to i64
  %icmpEq396 = icmp eq i64 %147, %148
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %149 = shl nuw nsw i64 %147, 2
  %150 = tail call noalias ptr @malloc(i64 noundef %149) #18
  %151 = tail call noalias ptr @malloc(i64 noundef %149) #18
  %.not88 = icmp eq i32 %139, 0
  %152 = icmp eq i32 %139, 0
  %icmpEq398 = icmp eq i1 %.not88, %152
  %zext399 = zext i1 %icmpEq398 to i32
  call void @assert_ft(i32 %zext399, i32 35)
  %153 = select i1 %.not88, i32 385876506, i32 437259791
  %154 = xor i32 334500871, %153
  br i1 %.not88, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %124
  %cfg_DestPhi124 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %155 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %156 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %157 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %158 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %159 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %160 = phi i32 [ 437259791, %.lr.ph ], [ 334500871, %124 ]
  %cfg_DiffPhi125 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %161 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %162 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %163 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %164 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %165 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %166 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %167 = phi i32 [ %225, %.lr.ph ], [ %154, %124 ]
  %icmpEq448 = icmp eq i32 %166, %167
  %zext449 = zext i1 %icmpEq448 to i32
  call void @assert_ft(i32 %zext449, i32 35)
  %icmpEq446 = icmp eq i32 %164, %165
  %168 = icmp eq i32 %165, %165
  %icmpEq450 = icmp eq i1 %icmpEq446, %168
  %zext451 = zext i1 %icmpEq450 to i32
  call void @assert_ft(i32 %zext451, i32 35)
  %zext447 = zext i1 %icmpEq446 to i32
  call void @assert_ft(i32 %zext447, i32 35)
  %icmpEq444 = icmp eq i32 %162, %163
  %zext445 = zext i1 %icmpEq444 to i32
  %169 = zext i1 %icmpEq444 to i32
  %icmpEq452 = icmp eq i32 %zext445, %169
  %zext453 = zext i1 %icmpEq452 to i32
  call void @assert_ft(i32 %zext453, i32 35)
  call void @assert_ft(i32 %zext445, i32 35)
  %icmpEq442 = icmp eq i32 %cfg_DiffPhi125, %161
  %zext443 = zext i1 %icmpEq442 to i32
  call void @assert_ft(i32 %zext443, i32 35)
  %icmpEq440 = icmp eq i32 %159, %160
  %170 = icmp eq i32 %160, %160
  %icmpEq454 = icmp eq i1 %icmpEq440, %170
  %zext455 = zext i1 %icmpEq454 to i32
  call void @assert_ft(i32 %zext455, i32 35)
  %zext441 = zext i1 %icmpEq440 to i32
  call void @assert_ft(i32 %zext441, i32 35)
  %icmpEq438 = icmp eq i32 %157, %158
  %zext439 = zext i1 %icmpEq438 to i32
  %171 = zext i1 %icmpEq438 to i32
  %icmpEq456 = icmp eq i32 %zext439, %171
  %zext457 = zext i1 %icmpEq456 to i32
  call void @assert_ft(i32 %zext457, i32 35)
  call void @assert_ft(i32 %zext439, i32 35)
  %icmpEq436 = icmp eq i32 %155, %156
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %icmpEq416 = icmp eq i32 %164, %166
  %172 = icmp eq i32 %165, %167
  %icmpEq458 = icmp eq i1 %icmpEq416, %172
  %zext459 = zext i1 %icmpEq458 to i32
  call void @assert_ft(i32 %zext459, i32 35)
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  %icmpEq414 = icmp eq i32 %cfg_DiffPhi125, %162
  %173 = icmp eq i32 %161, %163
  %174 = icmp eq i32 %161, %163
  %icmpEq460 = icmp eq i1 %173, %174
  %zext461 = zext i1 %icmpEq460 to i32
  call void @assert_ft(i32 %zext461, i32 35)
  %icmpEq418 = icmp eq i1 %icmpEq414, %173
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  %zext415 = zext i1 %icmpEq414 to i32
  %175 = zext i1 %173 to i32
  %icmpEq462 = icmp eq i32 %zext415, %175
  %zext463 = zext i1 %icmpEq462 to i32
  call void @assert_ft(i32 %zext463, i32 35)
  call void @assert_ft(i32 %zext415, i32 35)
  %icmpEq412 = icmp eq i32 %157, %159
  %zext413 = zext i1 %icmpEq412 to i32
  %176 = zext i1 %icmpEq412 to i32
  %177 = zext i1 %icmpEq412 to i32
  %icmpEq464 = icmp eq i32 %176, %177
  %zext465 = zext i1 %icmpEq464 to i32
  call void @assert_ft(i32 %zext465, i32 35)
  %icmpEq420 = icmp eq i32 %zext413, %176
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  call void @assert_ft(i32 %zext413, i32 35)
  %icmpEq410 = icmp eq i32 %cfg_DestPhi124, %155
  %178 = icmp eq i32 %155, %156
  %icmpEq466 = icmp eq i1 %icmpEq410, %178
  %zext467 = zext i1 %icmpEq466 to i32
  call void @assert_ft(i32 %zext467, i32 35)
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  %icmpEq402 = icmp eq i32 %cfg_DiffPhi125, %164
  %179 = icmp eq i32 %161, %165
  %180 = icmp eq i32 %161, %165
  %icmpEq468 = icmp eq i1 %179, %180
  %zext469 = zext i1 %icmpEq468 to i32
  call void @assert_ft(i32 %zext469, i32 35)
  %icmpEq422 = icmp eq i1 %icmpEq402, %179
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %zext403 = zext i1 %icmpEq402 to i32
  %181 = zext i1 %179 to i32
  %icmpEq470 = icmp eq i32 %zext403, %181
  %zext471 = zext i1 %icmpEq470 to i32
  call void @assert_ft(i32 %zext471, i32 35)
  call void @assert_ft(i32 %zext403, i32 35)
  %icmpEq400 = icmp eq i32 %cfg_DestPhi124, %157
  %182 = icmp eq i32 %155, %158
  %183 = icmp eq i32 %155, %158
  %184 = icmp eq i32 %155, %158
  %icmpEq472 = icmp eq i1 %183, %184
  %zext473 = zext i1 %icmpEq472 to i32
  call void @assert_ft(i32 %zext473, i32 35)
  %icmpEq424 = icmp eq i1 %182, %183
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  %icmpEq404 = icmp eq i1 %icmpEq400, %182
  %185 = icmp eq i1 %182, %183
  %icmpEq474 = icmp eq i1 %icmpEq404, %185
  %zext475 = zext i1 %icmpEq474 to i32
  call void @assert_ft(i32 %zext475, i32 35)
  %zext405 = zext i1 %icmpEq404 to i32
  call void @assert_ft(i32 %zext405, i32 35)
  %zext401 = zext i1 %icmpEq400 to i32
  %186 = zext i1 %182 to i32
  %187 = zext i1 %182 to i32
  %icmpEq476 = icmp eq i32 %186, %187
  %zext477 = zext i1 %icmpEq476 to i32
  call void @assert_ft(i32 %zext477, i32 35)
  %icmpEq426 = icmp eq i32 %zext401, %186
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  call void @assert_ft(i32 %zext401, i32 35)
  %188 = xor i32 %cfg_DestPhi124, %cfg_DiffPhi125
  %189 = xor i32 %155, %161
  %icmpEq478 = icmp eq i32 %188, %189
  %zext479 = zext i1 %icmpEq478 to i32
  call void @assert_ft(i32 %zext479, i32 35)
  %cfg_icmpEq126 = icmp eq i32 %188, 385876506
  %190 = icmp eq i32 %189, 385876506
  %191 = icmp eq i32 %189, 385876506
  %icmpEq428 = icmp eq i1 %190, %191
  %192 = icmp eq i1 %191, %191
  %icmpEq480 = icmp eq i1 %icmpEq428, %192
  %zext481 = zext i1 %icmpEq480 to i32
  call void @assert_ft(i32 %zext481, i32 35)
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %icmpEq406 = icmp eq i1 %cfg_icmpEq126, %190
  %zext407 = zext i1 %icmpEq406 to i32
  %193 = zext i1 %icmpEq406 to i32
  %icmpEq482 = icmp eq i32 %zext407, %193
  %zext483 = zext i1 %icmpEq482 to i32
  call void @assert_ft(i32 %zext483, i32 35)
  call void @assert_ft(i32 %zext407, i32 35)
  %cfg_zext127 = zext i1 %cfg_icmpEq126 to i32
  %194 = zext i1 %190 to i32
  %icmpEq430 = icmp eq i32 %cfg_zext127, %194
  %195 = icmp eq i32 %194, %194
  %icmpEq484 = icmp eq i1 %icmpEq430, %195
  %zext485 = zext i1 %icmpEq484 to i32
  call void @assert_ft(i32 %zext485, i32 35)
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext127, i32 %188, i32 35)
  %.not89 = icmp eq i32 %134, 0
  %196 = icmp eq i32 %134, 0
  %icmpEq486 = icmp eq i1 %.not89, %196
  %zext487 = zext i1 %icmpEq486 to i32
  call void @assert_ft(i32 %zext487, i32 35)
  %197 = select i1 %.not89, i32 951059218, i32 488637460
  %198 = select i1 %196, i32 951059218, i32 488637460
  %199 = select i1 %196, i32 951059218, i32 488637460
  %icmpEq432 = icmp eq i32 %198, %199
  %200 = icmp eq i32 %199, %199
  %icmpEq488 = icmp eq i1 %icmpEq432, %200
  %zext489 = zext i1 %icmpEq488 to i32
  call void @assert_ft(i32 %zext489, i32 35)
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  %icmpEq408 = icmp eq i32 %197, %198
  %zext409 = zext i1 %icmpEq408 to i32
  %201 = zext i1 %icmpEq408 to i32
  %icmpEq490 = icmp eq i32 %zext409, %201
  %zext491 = zext i1 %icmpEq490 to i32
  call void @assert_ft(i32 %zext491, i32 35)
  call void @assert_ft(i32 %zext409, i32 35)
  %202 = xor i32 385876506, %197
  %203 = xor i32 385876506, %198
  %icmpEq434 = icmp eq i32 %202, %203
  %204 = icmp eq i32 %203, %203
  %icmpEq492 = icmp eq i1 %icmpEq434, %204
  %zext493 = zext i1 %icmpEq492 to i32
  call void @assert_ft(i32 %zext493, i32 35)
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  br i1 %.not89, label %._crit_edge83.critedge, label %.lr.ph78

.lr.ph:                                           ; preds = %.lr.ph, %124
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %124 ]
  %205 = phi i64 [ %223, %.lr.ph ], [ 0, %124 ]
  %cfg_DestPhi128 = phi i32 [ 334500871, %124 ], [ 437259791, %.lr.ph ]
  %206 = phi i32 [ 334500871, %124 ], [ 437259791, %.lr.ph ]
  %cfg_DiffPhi129 = phi i32 [ %154, %124 ], [ %225, %.lr.ph ]
  %207 = phi i32 [ %154, %124 ], [ %225, %.lr.ph ]
  %icmpEq498 = icmp eq i32 %cfg_DiffPhi129, %207
  %zext499 = zext i1 %icmpEq498 to i32
  call void @assert_ft(i32 %zext499, i32 35)
  %icmpEq496 = icmp eq i32 %cfg_DestPhi128, %206
  %208 = icmp eq i32 %206, %206
  %icmpEq500 = icmp eq i1 %icmpEq496, %208
  %zext501 = zext i1 %icmpEq500 to i32
  call void @assert_ft(i32 %zext501, i32 35)
  %zext497 = zext i1 %icmpEq496 to i32
  call void @assert_ft(i32 %zext497, i32 35)
  %icmpEq494 = icmp eq i64 %indvars.iv, %205
  %zext495 = zext i1 %icmpEq494 to i32
  %209 = zext i1 %icmpEq494 to i32
  %icmpEq502 = icmp eq i32 %zext495, %209
  %zext503 = zext i1 %icmpEq502 to i32
  call void @assert_ft(i32 %zext503, i32 35)
  call void @assert_ft(i32 %zext495, i32 35)
  %210 = xor i32 %cfg_DestPhi128, %cfg_DiffPhi129
  %cfg_icmpEq130 = icmp eq i32 %210, 437259791
  %cfg_zext131 = zext i1 %cfg_icmpEq130 to i32
  %211 = zext i1 %cfg_icmpEq130 to i32
  %icmpEq504 = icmp eq i32 %cfg_zext131, %211
  %zext505 = zext i1 %icmpEq504 to i32
  call void @assert_ft(i32 %zext505, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext131, i32 %210, i32 35)
  %212 = tail call i32 @rand() #17
  %213 = srem i32 %212, 1000
  %214 = sitofp i32 %213 to float
  %215 = sitofp i32 %213 to float
  %216 = getelementptr inbounds float, ptr %150, i64 %indvars.iv
  %217 = getelementptr inbounds float, ptr %150, i64 %205
  store float %214, ptr %216, align 4
  %218 = tail call i32 @rand() #17
  %219 = srem i32 %218, 1000
  %220 = srem i32 %218, 1000
  %icmpEq506 = icmp eq i32 %219, %220
  %zext507 = zext i1 %icmpEq506 to i32
  call void @assert_ft(i32 %zext507, i32 35)
  %221 = sitofp i32 %219 to float
  %222 = getelementptr inbounds float, ptr %151, i64 %indvars.iv
  store float %221, ptr %222, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %223 = add nuw nsw i64 %205, 1
  %icmpEq508 = icmp eq i64 %indvars.iv.next, %223
  %zext509 = zext i1 %icmpEq508 to i32
  call void @assert_ft(i32 %zext509, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %147
  %224 = select i1 %exitcond.not, i32 385876506, i32 437259791
  %225 = xor i32 437259791, %224
  br i1 %exitcond.not, label %.preheader, label %.lr.ph

.lr.ph78:                                         ; preds = %._crit_edge, %.preheader
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %226 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %227 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %228 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %229 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %230 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %231 = phi i64 [ %indvars.iv.next98, %._crit_edge ], [ 0, %.preheader ]
  %cfg_DestPhi132 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %232 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %233 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %234 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %235 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %236 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %237 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %238 = phi i32 [ 385876506, %.preheader ], [ 796918545, %._crit_edge ]
  %cfg_DiffPhi133 = phi i32 [ %202, %.preheader ], [ %458, %._crit_edge ]
  %239 = phi i32 [ %203, %.preheader ], [ %458, %._crit_edge ]
  %240 = phi i32 [ %202, %.preheader ], [ %458, %._crit_edge ]
  %241 = phi i32 [ %203, %.preheader ], [ %458, %._crit_edge ]
  %242 = phi i32 [ %202, %.preheader ], [ %458, %._crit_edge ]
  %243 = phi i32 [ %203, %.preheader ], [ %458, %._crit_edge ]
  %244 = phi i32 [ %202, %.preheader ], [ %458, %._crit_edge ]
  %245 = phi i32 [ %203, %.preheader ], [ %458, %._crit_edge ]
  %icmpEq578 = icmp eq i32 %244, %245
  %zext579 = zext i1 %icmpEq578 to i32
  call void @assert_ft(i32 %zext579, i32 35)
  %icmpEq576 = icmp eq i32 %242, %243
  %246 = icmp eq i32 %243, %243
  %icmpEq580 = icmp eq i1 %icmpEq576, %246
  %zext581 = zext i1 %icmpEq580 to i32
  call void @assert_ft(i32 %zext581, i32 35)
  %zext577 = zext i1 %icmpEq576 to i32
  call void @assert_ft(i32 %zext577, i32 35)
  %icmpEq574 = icmp eq i32 %240, %241
  %zext575 = zext i1 %icmpEq574 to i32
  %247 = zext i1 %icmpEq574 to i32
  %icmpEq582 = icmp eq i32 %zext575, %247
  %zext583 = zext i1 %icmpEq582 to i32
  call void @assert_ft(i32 %zext583, i32 35)
  call void @assert_ft(i32 %zext575, i32 35)
  %icmpEq572 = icmp eq i32 %cfg_DiffPhi133, %239
  %zext573 = zext i1 %icmpEq572 to i32
  call void @assert_ft(i32 %zext573, i32 35)
  %icmpEq570 = icmp eq i32 %237, %238
  %248 = icmp eq i32 %238, %238
  %icmpEq584 = icmp eq i1 %icmpEq570, %248
  %zext585 = zext i1 %icmpEq584 to i32
  call void @assert_ft(i32 %zext585, i32 35)
  %zext571 = zext i1 %icmpEq570 to i32
  call void @assert_ft(i32 %zext571, i32 35)
  %icmpEq568 = icmp eq i32 %235, %236
  %zext569 = zext i1 %icmpEq568 to i32
  %249 = zext i1 %icmpEq568 to i32
  %icmpEq586 = icmp eq i32 %zext569, %249
  %zext587 = zext i1 %icmpEq586 to i32
  call void @assert_ft(i32 %zext587, i32 35)
  call void @assert_ft(i32 %zext569, i32 35)
  %icmpEq566 = icmp eq i32 %233, %234
  %zext567 = zext i1 %icmpEq566 to i32
  call void @assert_ft(i32 %zext567, i32 35)
  %icmpEq564 = icmp eq i32 %cfg_DestPhi132, %232
  %250 = icmp eq i32 %232, %232
  %icmpEq588 = icmp eq i1 %icmpEq564, %250
  %zext589 = zext i1 %icmpEq588 to i32
  call void @assert_ft(i32 %zext589, i32 35)
  %zext565 = zext i1 %icmpEq564 to i32
  call void @assert_ft(i32 %zext565, i32 35)
  %icmpEq562 = icmp eq i64 %230, %231
  %zext563 = zext i1 %icmpEq562 to i32
  %251 = zext i1 %icmpEq562 to i32
  %icmpEq590 = icmp eq i32 %zext563, %251
  %zext591 = zext i1 %icmpEq590 to i32
  call void @assert_ft(i32 %zext591, i32 35)
  call void @assert_ft(i32 %zext563, i32 35)
  %icmpEq560 = icmp eq i64 %228, %229
  %zext561 = zext i1 %icmpEq560 to i32
  call void @assert_ft(i32 %zext561, i32 35)
  %icmpEq558 = icmp eq i64 %226, %227
  %252 = icmp eq i64 %227, %227
  %icmpEq592 = icmp eq i1 %icmpEq558, %252
  %zext593 = zext i1 %icmpEq592 to i32
  call void @assert_ft(i32 %zext593, i32 35)
  %zext559 = zext i1 %icmpEq558 to i32
  call void @assert_ft(i32 %zext559, i32 35)
  %icmpEq534 = icmp eq i32 %242, %244
  %zext535 = zext i1 %icmpEq534 to i32
  %253 = zext i1 %icmpEq534 to i32
  %icmpEq594 = icmp eq i32 %zext535, %253
  %zext595 = zext i1 %icmpEq594 to i32
  call void @assert_ft(i32 %zext595, i32 35)
  call void @assert_ft(i32 %zext535, i32 35)
  %icmpEq532 = icmp eq i32 %cfg_DiffPhi133, %240
  %254 = icmp eq i32 %239, %241
  %icmpEq536 = icmp eq i1 %icmpEq532, %254
  %255 = icmp eq i1 %254, %254
  %icmpEq596 = icmp eq i1 %icmpEq536, %255
  %zext597 = zext i1 %icmpEq596 to i32
  call void @assert_ft(i32 %zext597, i32 35)
  %zext537 = zext i1 %icmpEq536 to i32
  call void @assert_ft(i32 %zext537, i32 35)
  %zext533 = zext i1 %icmpEq532 to i32
  call void @assert_ft(i32 %zext533, i32 35)
  %icmpEq530 = icmp eq i32 %235, %237
  %256 = icmp eq i32 %236, %238
  %icmpEq598 = icmp eq i1 %icmpEq530, %256
  %zext599 = zext i1 %icmpEq598 to i32
  call void @assert_ft(i32 %zext599, i32 35)
  %zext531 = zext i1 %icmpEq530 to i32
  %257 = zext i1 %256 to i32
  %icmpEq538 = icmp eq i32 %zext531, %257
  %zext539 = zext i1 %icmpEq538 to i32
  %258 = zext i1 %icmpEq538 to i32
  %icmpEq600 = icmp eq i32 %zext539, %258
  %zext601 = zext i1 %icmpEq600 to i32
  call void @assert_ft(i32 %zext601, i32 35)
  call void @assert_ft(i32 %zext539, i32 35)
  call void @assert_ft(i32 %zext531, i32 35)
  %icmpEq528 = icmp eq i32 %cfg_DestPhi132, %233
  %zext529 = zext i1 %icmpEq528 to i32
  %259 = zext i1 %icmpEq528 to i32
  %icmpEq602 = icmp eq i32 %zext529, %259
  %zext603 = zext i1 %icmpEq602 to i32
  call void @assert_ft(i32 %zext603, i32 35)
  call void @assert_ft(i32 %zext529, i32 35)
  %icmpEq526 = icmp eq i64 %228, %230
  %260 = icmp eq i64 %229, %231
  %icmpEq540 = icmp eq i1 %icmpEq526, %260
  %261 = icmp eq i1 %260, %260
  %icmpEq604 = icmp eq i1 %icmpEq540, %261
  %zext605 = zext i1 %icmpEq604 to i32
  call void @assert_ft(i32 %zext605, i32 35)
  %zext541 = zext i1 %icmpEq540 to i32
  call void @assert_ft(i32 %zext541, i32 35)
  %zext527 = zext i1 %icmpEq526 to i32
  call void @assert_ft(i32 %zext527, i32 35)
  %icmpEq524 = icmp eq i64 %indvars.iv97, %226
  %262 = icmp eq i64 %226, %227
  %icmpEq606 = icmp eq i1 %icmpEq524, %262
  %zext607 = zext i1 %icmpEq606 to i32
  call void @assert_ft(i32 %zext607, i32 35)
  %zext525 = zext i1 %icmpEq524 to i32
  %263 = zext i1 %262 to i32
  %icmpEq542 = icmp eq i32 %zext525, %263
  %zext543 = zext i1 %icmpEq542 to i32
  %264 = zext i1 %icmpEq542 to i32
  %icmpEq608 = icmp eq i32 %zext543, %264
  %zext609 = zext i1 %icmpEq608 to i32
  call void @assert_ft(i32 %zext609, i32 35)
  call void @assert_ft(i32 %zext543, i32 35)
  call void @assert_ft(i32 %zext525, i32 35)
  %icmpEq514 = icmp eq i32 %cfg_DiffPhi133, %242
  %zext515 = zext i1 %icmpEq514 to i32
  %265 = zext i1 %icmpEq514 to i32
  %icmpEq610 = icmp eq i32 %zext515, %265
  %zext611 = zext i1 %icmpEq610 to i32
  call void @assert_ft(i32 %zext611, i32 35)
  call void @assert_ft(i32 %zext515, i32 35)
  %icmpEq512 = icmp eq i32 %cfg_DestPhi132, %235
  %266 = icmp eq i32 %232, %236
  %icmpEq544 = icmp eq i1 %icmpEq512, %266
  %267 = icmp eq i1 %266, %266
  %icmpEq612 = icmp eq i1 %icmpEq544, %267
  %zext613 = zext i1 %icmpEq612 to i32
  call void @assert_ft(i32 %zext613, i32 35)
  %zext545 = zext i1 %icmpEq544 to i32
  call void @assert_ft(i32 %zext545, i32 35)
  %268 = icmp eq i32 %cfg_DestPhi132, %235
  %icmpEq516 = icmp eq i1 %icmpEq512, %268
  %269 = icmp eq i1 %266, %268
  %icmpEq614 = icmp eq i1 %icmpEq516, %269
  %zext615 = zext i1 %icmpEq614 to i32
  call void @assert_ft(i32 %zext615, i32 35)
  %zext517 = zext i1 %icmpEq516 to i32
  call void @assert_ft(i32 %zext517, i32 35)
  %zext513 = zext i1 %icmpEq512 to i32
  %270 = zext i1 %266 to i32
  %271 = zext i1 %266 to i32
  %icmpEq616 = icmp eq i32 %270, %271
  %zext617 = zext i1 %icmpEq616 to i32
  call void @assert_ft(i32 %zext617, i32 35)
  %icmpEq546 = icmp eq i32 %zext513, %270
  %zext547 = zext i1 %icmpEq546 to i32
  call void @assert_ft(i32 %zext547, i32 35)
  call void @assert_ft(i32 %zext513, i32 35)
  %icmpEq510 = icmp eq i64 %indvars.iv97, %228
  %272 = icmp eq i64 %226, %229
  %icmpEq618 = icmp eq i1 %icmpEq510, %272
  %zext619 = zext i1 %icmpEq618 to i32
  call void @assert_ft(i32 %zext619, i32 35)
  %zext511 = zext i1 %icmpEq510 to i32
  %273 = zext i1 %272 to i32
  %274 = zext i1 %272 to i32
  %icmpEq548 = icmp eq i32 %273, %274
  %275 = icmp eq i32 %274, %274
  %icmpEq620 = icmp eq i1 %icmpEq548, %275
  %zext621 = zext i1 %icmpEq620 to i32
  call void @assert_ft(i32 %zext621, i32 35)
  %zext549 = zext i1 %icmpEq548 to i32
  call void @assert_ft(i32 %zext549, i32 35)
  %icmpEq518 = icmp eq i32 %zext511, %273
  %zext519 = zext i1 %icmpEq518 to i32
  %276 = zext i1 %icmpEq518 to i32
  %icmpEq622 = icmp eq i32 %zext519, %276
  %zext623 = zext i1 %icmpEq622 to i32
  call void @assert_ft(i32 %zext623, i32 35)
  call void @assert_ft(i32 %zext519, i32 35)
  call void @assert_ft(i32 %zext511, i32 35)
  %277 = xor i32 %cfg_DestPhi132, %cfg_DiffPhi133
  %278 = xor i32 %232, %239
  %279 = xor i32 %232, %239
  %icmpEq624 = icmp eq i32 %278, %279
  %zext625 = zext i1 %icmpEq624 to i32
  call void @assert_ft(i32 %zext625, i32 35)
  %icmpEq550 = icmp eq i32 %277, %278
  %zext551 = zext i1 %icmpEq550 to i32
  call void @assert_ft(i32 %zext551, i32 35)
  %cfg_icmpEq134 = icmp eq i32 %277, 488637460
  %280 = icmp eq i32 %278, 488637460
  %icmpEq626 = icmp eq i1 %cfg_icmpEq134, %280
  %zext627 = zext i1 %icmpEq626 to i32
  call void @assert_ft(i32 %zext627, i32 35)
  %cfg_zext135 = zext i1 %cfg_icmpEq134 to i32
  %281 = zext i1 %280 to i32
  %icmpEq520 = icmp eq i32 %cfg_zext135, %281
  %282 = icmp eq i32 %281, %281
  %283 = icmp eq i32 %281, %281
  %icmpEq628 = icmp eq i1 %282, %283
  %zext629 = zext i1 %icmpEq628 to i32
  call void @assert_ft(i32 %zext629, i32 35)
  %icmpEq552 = icmp eq i1 %icmpEq520, %282
  %zext553 = zext i1 %icmpEq552 to i32
  call void @assert_ft(i32 %zext553, i32 35)
  %zext521 = zext i1 %icmpEq520 to i32
  %284 = zext i1 %282 to i32
  %icmpEq630 = icmp eq i32 %zext521, %284
  %zext631 = zext i1 %icmpEq630 to i32
  call void @assert_ft(i32 %zext631, i32 35)
  call void @assert_ft(i32 %zext521, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext135, i32 %277, i32 35)
  %285 = getelementptr inbounds float, ptr %143, i64 %indvars.iv97
  %286 = getelementptr inbounds float, ptr %143, i64 %226
  %287 = getelementptr inbounds float, ptr %143, i64 %226
  store float 0.000000e+00, ptr %285, align 4
  %288 = select i1 %.not88, i32 796918545, i32 540017668
  %289 = select i1 %152, i32 796918545, i32 540017668
  %icmpEq632 = icmp eq i32 %288, %289
  %zext633 = zext i1 %icmpEq632 to i32
  call void @assert_ft(i32 %zext633, i32 35)
  %290 = select i1 %.not88, i32 796918545, i32 540017668
  %icmpEq554 = icmp eq i32 %288, %290
  %zext555 = zext i1 %icmpEq554 to i32
  call void @assert_ft(i32 %zext555, i32 35)
  %291 = select i1 %.not88, i32 796918545, i32 540017668
  %292 = select i1 %152, i32 796918545, i32 540017668
  %icmpEq634 = icmp eq i32 %291, %292
  %zext635 = zext i1 %icmpEq634 to i32
  call void @assert_ft(i32 %zext635, i32 35)
  %icmpEq522 = icmp eq i32 %288, %291
  %zext523 = zext i1 %icmpEq522 to i32
  call void @assert_ft(i32 %zext523, i32 35)
  %293 = xor i32 488637460, %288
  %294 = xor i32 488637460, %289
  %icmpEq636 = icmp eq i32 %293, %294
  %zext637 = zext i1 %icmpEq636 to i32
  call void @assert_ft(i32 %zext637, i32 35)
  %295 = xor i32 488637460, %288
  %icmpEq556 = icmp eq i32 %293, %295
  %zext557 = zext i1 %icmpEq556 to i32
  call void @assert_ft(i32 %zext557, i32 35)
  br i1 %.not88, label %._crit_edge, label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph78
  %cfg_DestPhi136 = phi i32 [ 488637460, %.lr.ph78 ]
  %296 = phi i32 [ 488637460, %.lr.ph78 ]
  %cfg_DiffPhi137 = phi i32 [ %293, %.lr.ph78 ]
  %297 = phi i32 [ %294, %.lr.ph78 ]
  %icmpEq640 = icmp eq i32 %cfg_DiffPhi137, %297
  %zext641 = zext i1 %icmpEq640 to i32
  call void @assert_ft(i32 %zext641, i32 35)
  %icmpEq638 = icmp eq i32 %cfg_DestPhi136, %296
  %298 = icmp eq i32 %296, %296
  %icmpEq642 = icmp eq i1 %icmpEq638, %298
  %zext643 = zext i1 %icmpEq642 to i32
  call void @assert_ft(i32 %zext643, i32 35)
  %zext639 = zext i1 %icmpEq638 to i32
  call void @assert_ft(i32 %zext639, i32 35)
  %299 = xor i32 %cfg_DestPhi136, %cfg_DiffPhi137
  %cfg_icmpEq138 = icmp eq i32 %299, 540017668
  %300 = icmp eq i32 %299, 540017668
  %icmpEq644 = icmp eq i1 %cfg_icmpEq138, %300
  %zext645 = zext i1 %icmpEq644 to i32
  call void @assert_ft(i32 %zext645, i32 35)
  %cfg_zext139 = zext i1 %cfg_icmpEq138 to i32
  call void @assert_cfg_ft(i32 %cfg_zext139, i32 %299, i32 35)
  %301 = trunc i64 %indvars.iv97 to i32
  %302 = uitofp i32 %301 to float
  %303 = uitofp i32 %301 to float
  %304 = getelementptr inbounds float, ptr %144, i64 %indvars.iv97
  %305 = getelementptr inbounds float, ptr %144, i64 %226
  br label %306

306:                                              ; preds = %436, %.lr.ph76
  %indvars.iv93 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %307 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %308 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %309 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %310 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %311 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %312 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next94, %436 ]
  %cfg_DestPhi140 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %313 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %314 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %315 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %316 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %317 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %318 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %319 = phi i32 [ 540017668, %.lr.ph76 ], [ 745540131, %436 ]
  %cfg_DiffPhi141 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %320 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %321 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %322 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %323 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %324 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %325 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %326 = phi i32 [ 57673733, %.lr.ph76 ], [ %450, %436 ]
  %icmpEq720 = icmp eq i32 %325, %326
  %zext721 = zext i1 %icmpEq720 to i32
  call void @assert_ft(i32 %zext721, i32 35)
  %icmpEq718 = icmp eq i32 %323, %324
  %327 = icmp eq i32 %324, %324
  %icmpEq722 = icmp eq i1 %icmpEq718, %327
  %zext723 = zext i1 %icmpEq722 to i32
  call void @assert_ft(i32 %zext723, i32 35)
  %zext719 = zext i1 %icmpEq718 to i32
  call void @assert_ft(i32 %zext719, i32 35)
  %icmpEq716 = icmp eq i32 %321, %322
  %zext717 = zext i1 %icmpEq716 to i32
  %328 = zext i1 %icmpEq716 to i32
  %icmpEq724 = icmp eq i32 %zext717, %328
  %zext725 = zext i1 %icmpEq724 to i32
  call void @assert_ft(i32 %zext725, i32 35)
  call void @assert_ft(i32 %zext717, i32 35)
  %icmpEq714 = icmp eq i32 %cfg_DiffPhi141, %320
  %zext715 = zext i1 %icmpEq714 to i32
  call void @assert_ft(i32 %zext715, i32 35)
  %icmpEq712 = icmp eq i32 %318, %319
  %329 = icmp eq i32 %319, %319
  %icmpEq726 = icmp eq i1 %icmpEq712, %329
  %zext727 = zext i1 %icmpEq726 to i32
  call void @assert_ft(i32 %zext727, i32 35)
  %zext713 = zext i1 %icmpEq712 to i32
  call void @assert_ft(i32 %zext713, i32 35)
  %icmpEq710 = icmp eq i32 %316, %317
  %zext711 = zext i1 %icmpEq710 to i32
  %330 = zext i1 %icmpEq710 to i32
  %icmpEq728 = icmp eq i32 %zext711, %330
  %zext729 = zext i1 %icmpEq728 to i32
  call void @assert_ft(i32 %zext729, i32 35)
  call void @assert_ft(i32 %zext711, i32 35)
  %icmpEq708 = icmp eq i32 %314, %315
  %zext709 = zext i1 %icmpEq708 to i32
  call void @assert_ft(i32 %zext709, i32 35)
  %icmpEq706 = icmp eq i32 %cfg_DestPhi140, %313
  %331 = icmp eq i32 %313, %313
  %icmpEq730 = icmp eq i1 %icmpEq706, %331
  %zext731 = zext i1 %icmpEq730 to i32
  call void @assert_ft(i32 %zext731, i32 35)
  %zext707 = zext i1 %icmpEq706 to i32
  call void @assert_ft(i32 %zext707, i32 35)
  %icmpEq704 = icmp eq i64 %311, %312
  %zext705 = zext i1 %icmpEq704 to i32
  %332 = zext i1 %icmpEq704 to i32
  %icmpEq732 = icmp eq i32 %zext705, %332
  %zext733 = zext i1 %icmpEq732 to i32
  call void @assert_ft(i32 %zext733, i32 35)
  call void @assert_ft(i32 %zext705, i32 35)
  %icmpEq702 = icmp eq i64 %309, %310
  %zext703 = zext i1 %icmpEq702 to i32
  call void @assert_ft(i32 %zext703, i32 35)
  %icmpEq700 = icmp eq i64 %307, %308
  %333 = icmp eq i64 %308, %308
  %icmpEq734 = icmp eq i1 %icmpEq700, %333
  %zext735 = zext i1 %icmpEq734 to i32
  call void @assert_ft(i32 %zext735, i32 35)
  %zext701 = zext i1 %icmpEq700 to i32
  call void @assert_ft(i32 %zext701, i32 35)
  %icmpEq672 = icmp eq i32 %323, %325
  %zext673 = zext i1 %icmpEq672 to i32
  %334 = zext i1 %icmpEq672 to i32
  %icmpEq736 = icmp eq i32 %zext673, %334
  %zext737 = zext i1 %icmpEq736 to i32
  call void @assert_ft(i32 %zext737, i32 35)
  call void @assert_ft(i32 %zext673, i32 35)
  %icmpEq670 = icmp eq i32 %cfg_DiffPhi141, %321
  %335 = icmp eq i32 %320, %322
  %icmpEq674 = icmp eq i1 %icmpEq670, %335
  %336 = icmp eq i1 %335, %335
  %icmpEq738 = icmp eq i1 %icmpEq674, %336
  %zext739 = zext i1 %icmpEq738 to i32
  call void @assert_ft(i32 %zext739, i32 35)
  %zext675 = zext i1 %icmpEq674 to i32
  call void @assert_ft(i32 %zext675, i32 35)
  %zext671 = zext i1 %icmpEq670 to i32
  call void @assert_ft(i32 %zext671, i32 35)
  %icmpEq668 = icmp eq i32 %316, %318
  %337 = icmp eq i32 %317, %319
  %icmpEq740 = icmp eq i1 %icmpEq668, %337
  %zext741 = zext i1 %icmpEq740 to i32
  call void @assert_ft(i32 %zext741, i32 35)
  %zext669 = zext i1 %icmpEq668 to i32
  %338 = zext i1 %337 to i32
  %icmpEq676 = icmp eq i32 %zext669, %338
  %zext677 = zext i1 %icmpEq676 to i32
  %339 = zext i1 %icmpEq676 to i32
  %icmpEq742 = icmp eq i32 %zext677, %339
  %zext743 = zext i1 %icmpEq742 to i32
  call void @assert_ft(i32 %zext743, i32 35)
  call void @assert_ft(i32 %zext677, i32 35)
  call void @assert_ft(i32 %zext669, i32 35)
  %icmpEq666 = icmp eq i32 %cfg_DestPhi140, %314
  %zext667 = zext i1 %icmpEq666 to i32
  %340 = zext i1 %icmpEq666 to i32
  %icmpEq744 = icmp eq i32 %zext667, %340
  %zext745 = zext i1 %icmpEq744 to i32
  call void @assert_ft(i32 %zext745, i32 35)
  call void @assert_ft(i32 %zext667, i32 35)
  %icmpEq664 = icmp eq i64 %309, %311
  %341 = icmp eq i64 %310, %312
  %icmpEq678 = icmp eq i1 %icmpEq664, %341
  %342 = icmp eq i1 %341, %341
  %icmpEq746 = icmp eq i1 %icmpEq678, %342
  %zext747 = zext i1 %icmpEq746 to i32
  call void @assert_ft(i32 %zext747, i32 35)
  %zext679 = zext i1 %icmpEq678 to i32
  call void @assert_ft(i32 %zext679, i32 35)
  %zext665 = zext i1 %icmpEq664 to i32
  call void @assert_ft(i32 %zext665, i32 35)
  %icmpEq662 = icmp eq i64 %indvars.iv93, %307
  %343 = icmp eq i64 %307, %308
  %icmpEq748 = icmp eq i1 %icmpEq662, %343
  %zext749 = zext i1 %icmpEq748 to i32
  call void @assert_ft(i32 %zext749, i32 35)
  %zext663 = zext i1 %icmpEq662 to i32
  %344 = zext i1 %343 to i32
  %icmpEq680 = icmp eq i32 %zext663, %344
  %zext681 = zext i1 %icmpEq680 to i32
  %345 = zext i1 %icmpEq680 to i32
  %icmpEq750 = icmp eq i32 %zext681, %345
  %zext751 = zext i1 %icmpEq750 to i32
  call void @assert_ft(i32 %zext751, i32 35)
  call void @assert_ft(i32 %zext681, i32 35)
  call void @assert_ft(i32 %zext663, i32 35)
  %icmpEq650 = icmp eq i32 %cfg_DiffPhi141, %323
  %zext651 = zext i1 %icmpEq650 to i32
  %346 = zext i1 %icmpEq650 to i32
  %icmpEq752 = icmp eq i32 %zext651, %346
  %zext753 = zext i1 %icmpEq752 to i32
  call void @assert_ft(i32 %zext753, i32 35)
  call void @assert_ft(i32 %zext651, i32 35)
  %icmpEq648 = icmp eq i32 %cfg_DestPhi140, %316
  %347 = icmp eq i32 %313, %317
  %icmpEq682 = icmp eq i1 %icmpEq648, %347
  %348 = icmp eq i1 %347, %347
  %icmpEq754 = icmp eq i1 %icmpEq682, %348
  %zext755 = zext i1 %icmpEq754 to i32
  call void @assert_ft(i32 %zext755, i32 35)
  %zext683 = zext i1 %icmpEq682 to i32
  call void @assert_ft(i32 %zext683, i32 35)
  %349 = icmp eq i32 %cfg_DestPhi140, %316
  %icmpEq652 = icmp eq i1 %icmpEq648, %349
  %350 = icmp eq i1 %347, %349
  %icmpEq756 = icmp eq i1 %icmpEq652, %350
  %zext757 = zext i1 %icmpEq756 to i32
  call void @assert_ft(i32 %zext757, i32 35)
  %zext653 = zext i1 %icmpEq652 to i32
  call void @assert_ft(i32 %zext653, i32 35)
  %zext649 = zext i1 %icmpEq648 to i32
  %351 = zext i1 %347 to i32
  %352 = zext i1 %347 to i32
  %icmpEq758 = icmp eq i32 %351, %352
  %zext759 = zext i1 %icmpEq758 to i32
  call void @assert_ft(i32 %zext759, i32 35)
  %icmpEq684 = icmp eq i32 %zext649, %351
  %zext685 = zext i1 %icmpEq684 to i32
  call void @assert_ft(i32 %zext685, i32 35)
  call void @assert_ft(i32 %zext649, i32 35)
  %icmpEq646 = icmp eq i64 %indvars.iv93, %309
  %353 = icmp eq i64 %307, %310
  %icmpEq760 = icmp eq i1 %icmpEq646, %353
  %zext761 = zext i1 %icmpEq760 to i32
  call void @assert_ft(i32 %zext761, i32 35)
  %zext647 = zext i1 %icmpEq646 to i32
  %354 = zext i1 %353 to i32
  %355 = zext i1 %353 to i32
  %icmpEq686 = icmp eq i32 %354, %355
  %356 = icmp eq i32 %355, %355
  %icmpEq762 = icmp eq i1 %icmpEq686, %356
  %zext763 = zext i1 %icmpEq762 to i32
  call void @assert_ft(i32 %zext763, i32 35)
  %zext687 = zext i1 %icmpEq686 to i32
  call void @assert_ft(i32 %zext687, i32 35)
  %icmpEq654 = icmp eq i32 %zext647, %354
  %zext655 = zext i1 %icmpEq654 to i32
  %357 = zext i1 %icmpEq654 to i32
  %icmpEq764 = icmp eq i32 %zext655, %357
  %zext765 = zext i1 %icmpEq764 to i32
  call void @assert_ft(i32 %zext765, i32 35)
  call void @assert_ft(i32 %zext655, i32 35)
  call void @assert_ft(i32 %zext647, i32 35)
  %358 = xor i32 %cfg_DestPhi140, %cfg_DiffPhi141
  %359 = xor i32 %313, %320
  %360 = xor i32 %313, %320
  %icmpEq766 = icmp eq i32 %359, %360
  %zext767 = zext i1 %icmpEq766 to i32
  call void @assert_ft(i32 %zext767, i32 35)
  %icmpEq688 = icmp eq i32 %358, %359
  %zext689 = zext i1 %icmpEq688 to i32
  call void @assert_ft(i32 %zext689, i32 35)
  %cfg_icmpEq142 = icmp eq i32 %358, 591399937
  %361 = icmp eq i32 %359, 591399937
  %icmpEq768 = icmp eq i1 %cfg_icmpEq142, %361
  %zext769 = zext i1 %icmpEq768 to i32
  call void @assert_ft(i32 %zext769, i32 35)
  %cfg_zext143 = zext i1 %cfg_icmpEq142 to i32
  %362 = zext i1 %361 to i32
  %icmpEq656 = icmp eq i32 %cfg_zext143, %362
  %363 = icmp eq i32 %362, %362
  %364 = icmp eq i32 %362, %362
  %icmpEq770 = icmp eq i1 %363, %364
  %zext771 = zext i1 %icmpEq770 to i32
  call void @assert_ft(i32 %zext771, i32 35)
  %icmpEq690 = icmp eq i1 %icmpEq656, %363
  %zext691 = zext i1 %icmpEq690 to i32
  call void @assert_ft(i32 %zext691, i32 35)
  %zext657 = zext i1 %icmpEq656 to i32
  %365 = zext i1 %363 to i32
  %icmpEq772 = icmp eq i32 %zext657, %365
  %zext773 = zext i1 %icmpEq772 to i32
  call void @assert_ft(i32 %zext773, i32 35)
  call void @assert_ft(i32 %zext657, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext143, i32 %358, i32 35)
  %366 = tail call i32 @rand() #17
  %367 = and i32 %366, 1
  %368 = and i32 %366, 1
  %icmpEq774 = icmp eq i32 %367, %368
  %zext775 = zext i1 %icmpEq774 to i32
  call void @assert_ft(i32 %zext775, i32 35)
  %369 = and i32 %366, 1
  %icmpEq692 = icmp eq i32 %367, %369
  %zext693 = zext i1 %icmpEq692 to i32
  call void @assert_ft(i32 %zext693, i32 35)
  %.not = icmp eq i32 %367, 0
  %370 = icmp eq i32 %368, 0
  %icmpEq776 = icmp eq i1 %.not, %370
  %zext777 = zext i1 %icmpEq776 to i32
  call void @assert_ft(i32 %zext777, i32 35)
  %371 = icmp eq i32 %367, 0
  %icmpEq658 = icmp eq i1 %.not, %371
  %zext659 = zext i1 %icmpEq658 to i32
  %372 = zext i1 %icmpEq658 to i32
  %373 = zext i1 %icmpEq658 to i32
  %icmpEq778 = icmp eq i32 %372, %373
  %zext779 = zext i1 %icmpEq778 to i32
  call void @assert_ft(i32 %zext779, i32 35)
  %icmpEq694 = icmp eq i32 %zext659, %372
  %zext695 = zext i1 %icmpEq694 to i32
  call void @assert_ft(i32 %zext695, i32 35)
  call void @assert_ft(i32 %zext659, i32 35)
  %374 = getelementptr inbounds float, ptr %150, i64 %indvars.iv93
  %375 = getelementptr inbounds float, ptr %150, i64 %307
  %376 = load float, ptr %374, align 4
  %377 = load float, ptr %375, align 4
  %378 = fpext float %376 to double
  %379 = fpext float %377 to double
  %380 = fpext float %376 to double
  %381 = fpext float %377 to double
  %382 = getelementptr inbounds float, ptr %151, i64 %indvars.iv93
  %383 = getelementptr inbounds float, ptr %151, i64 %307
  %384 = getelementptr inbounds float, ptr %151, i64 %indvars.iv93
  %385 = getelementptr inbounds float, ptr %151, i64 %307
  %386 = getelementptr inbounds float, ptr %151, i64 %indvars.iv93
  %387 = getelementptr inbounds float, ptr %151, i64 %307
  %388 = getelementptr inbounds float, ptr %151, i64 %indvars.iv93
  %389 = getelementptr inbounds float, ptr %151, i64 %307
  %390 = load float, ptr %382, align 4
  %391 = load float, ptr %383, align 4
  %392 = load float, ptr %382, align 4
  %393 = load float, ptr %383, align 4
  %394 = load float, ptr %382, align 4
  %395 = load float, ptr %383, align 4
  %396 = load float, ptr %382, align 4
  %397 = load float, ptr %383, align 4
  %398 = fmul float %390, %302
  %399 = fmul float %391, %303
  %400 = fmul float %390, %302
  %401 = fmul float %391, %303
  %402 = fmul float %390, %302
  %403 = fmul float %391, %303
  %404 = fmul float %390, %302
  %405 = fmul float %391, %303
  %406 = fpext float %398 to double
  %407 = fpext float %399 to double
  %408 = fpext float %398 to double
  %409 = fpext float %399 to double
  %410 = fpext float %398 to double
  %411 = fpext float %399 to double
  %412 = fpext float %398 to double
  %413 = fpext float %399 to double
  %414 = select i1 %.not, i32 694157839, i32 642777623
  %415 = select i1 %370, i32 694157839, i32 642777623
  %icmpEq780 = icmp eq i32 %414, %415
  %zext781 = zext i1 %icmpEq780 to i32
  call void @assert_ft(i32 %zext781, i32 35)
  %416 = select i1 %.not, i32 694157839, i32 642777623
  %icmpEq696 = icmp eq i32 %414, %416
  %zext697 = zext i1 %icmpEq696 to i32
  call void @assert_ft(i32 %zext697, i32 35)
  %417 = select i1 %.not, i32 694157839, i32 642777623
  %418 = select i1 %370, i32 694157839, i32 642777623
  %icmpEq782 = icmp eq i32 %417, %418
  %zext783 = zext i1 %icmpEq782 to i32
  call void @assert_ft(i32 %zext783, i32 35)
  %icmpEq660 = icmp eq i32 %414, %417
  %zext661 = zext i1 %icmpEq660 to i32
  call void @assert_ft(i32 %zext661, i32 35)
  %419 = xor i32 591399937, %414
  %420 = xor i32 591399937, %415
  %icmpEq784 = icmp eq i32 %419, %420
  %zext785 = zext i1 %icmpEq784 to i32
  call void @assert_ft(i32 %zext785, i32 35)
  %421 = xor i32 591399937, %414
  %icmpEq698 = icmp eq i32 %419, %421
  %zext699 = zext i1 %icmpEq698 to i32
  call void @assert_ft(i32 %zext699, i32 35)
  br i1 %.not, label %429, label %422

422:                                              ; preds = %306
  %cfg_DestPhi144 = phi i32 [ 591399937, %306 ]
  %423 = phi i32 [ 591399937, %306 ]
  %cfg_DiffPhi145 = phi i32 [ %419, %306 ]
  %424 = phi i32 [ %420, %306 ]
  %icmpEq788 = icmp eq i32 %cfg_DiffPhi145, %424
  %zext789 = zext i1 %icmpEq788 to i32
  call void @assert_ft(i32 %zext789, i32 35)
  %icmpEq786 = icmp eq i32 %cfg_DestPhi144, %423
  %425 = icmp eq i32 %423, %423
  %icmpEq790 = icmp eq i1 %icmpEq786, %425
  %zext791 = zext i1 %icmpEq790 to i32
  call void @assert_ft(i32 %zext791, i32 35)
  %zext787 = zext i1 %icmpEq786 to i32
  call void @assert_ft(i32 %zext787, i32 35)
  %426 = xor i32 %cfg_DestPhi144, %cfg_DiffPhi145
  %cfg_icmpEq146 = icmp eq i32 %426, 642777623
  %427 = icmp eq i32 %426, 642777623
  %icmpEq792 = icmp eq i1 %cfg_icmpEq146, %427
  %zext793 = zext i1 %icmpEq792 to i32
  call void @assert_ft(i32 %zext793, i32 35)
  %cfg_zext147 = zext i1 %cfg_icmpEq146 to i32
  call void @assert_cfg_ft(i32 %cfg_zext147, i32 %426, i32 35)
  %428 = tail call double @cos(double noundef %406) #17
  br label %436

429:                                              ; preds = %306
  %cfg_DestPhi148 = phi i32 [ 591399937, %306 ]
  %430 = phi i32 [ 591399937, %306 ]
  %cfg_DiffPhi149 = phi i32 [ %419, %306 ]
  %431 = phi i32 [ %420, %306 ]
  %icmpEq796 = icmp eq i32 %cfg_DiffPhi149, %431
  %zext797 = zext i1 %icmpEq796 to i32
  call void @assert_ft(i32 %zext797, i32 35)
  %icmpEq794 = icmp eq i32 %cfg_DestPhi148, %430
  %432 = icmp eq i32 %430, %430
  %icmpEq798 = icmp eq i1 %icmpEq794, %432
  %zext799 = zext i1 %icmpEq798 to i32
  call void @assert_ft(i32 %zext799, i32 35)
  %zext795 = zext i1 %icmpEq794 to i32
  call void @assert_ft(i32 %zext795, i32 35)
  %433 = xor i32 %cfg_DestPhi148, %cfg_DiffPhi149
  %cfg_icmpEq150 = icmp eq i32 %433, 694157839
  %434 = icmp eq i32 %433, 694157839
  %icmpEq800 = icmp eq i1 %cfg_icmpEq150, %434
  %zext801 = zext i1 %icmpEq800 to i32
  call void @assert_ft(i32 %zext801, i32 35)
  %cfg_zext151 = zext i1 %cfg_icmpEq150 to i32
  call void @assert_cfg_ft(i32 %cfg_zext151, i32 %433, i32 35)
  %435 = tail call double @sin(double noundef %406) #17
  br label %436

436:                                              ; preds = %429, %422
  %.sink = phi double [ %435, %429 ], [ %428, %422 ]
  %437 = phi double [ %435, %429 ], [ %428, %422 ]
  %cfg_DestPhi152 = phi i32 [ 694157839, %429 ], [ 642777623, %422 ]
  %438 = phi i32 [ 694157839, %429 ], [ 642777623, %422 ]
  %cfg_DiffPhi153 = phi i32 [ 84936748, %429 ], [ 169871412, %422 ]
  %439 = phi i32 [ 84936748, %429 ], [ 169871412, %422 ]
  %icmpEq804 = icmp eq i32 %cfg_DiffPhi153, %439
  %zext805 = zext i1 %icmpEq804 to i32
  call void @assert_ft(i32 %zext805, i32 35)
  %icmpEq802 = icmp eq i32 %cfg_DestPhi152, %438
  %440 = icmp eq i32 %438, %438
  %icmpEq806 = icmp eq i1 %icmpEq802, %440
  %zext807 = zext i1 %icmpEq806 to i32
  call void @assert_ft(i32 %zext807, i32 35)
  %zext803 = zext i1 %icmpEq802 to i32
  call void @assert_ft(i32 %zext803, i32 35)
  %441 = xor i32 %cfg_DestPhi152, %cfg_DiffPhi153
  %cfg_icmpEq154 = icmp eq i32 %441, 745540131
  %442 = icmp eq i32 %441, 745540131
  %icmpEq808 = icmp eq i1 %cfg_icmpEq154, %442
  %zext809 = zext i1 %icmpEq808 to i32
  call void @assert_ft(i32 %zext809, i32 35)
  %cfg_zext155 = zext i1 %cfg_icmpEq154 to i32
  call void @assert_cfg_ft(i32 %cfg_zext155, i32 %441, i32 35)
  %443 = load float, ptr %285, align 4
  %444 = fpext float %443 to double
  %445 = fpext float %443 to double
  %446 = tail call double @llvm.fmuladd.f64(double %378, double %.sink, double %444)
  %storemerge = fptrunc double %446 to float
  %447 = fptrunc double %446 to float
  store float %storemerge, ptr %285, align 4
  store float 0.000000e+00, ptr %304, align 4
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %448 = add nuw nsw i64 %307, 1
  %icmpEq810 = icmp eq i64 %indvars.iv.next94, %448
  %zext811 = zext i1 %icmpEq810 to i32
  call void @assert_ft(i32 %zext811, i32 35)
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, %147
  %449 = select i1 %exitcond96.not, i32 796918545, i32 591399937
  %450 = xor i32 745540131, %449
  br i1 %exitcond96.not, label %._crit_edge, label %306

._crit_edge:                                      ; preds = %436, %.lr.ph78
  %cfg_DestPhi156 = phi i32 [ 745540131, %436 ], [ 488637460, %.lr.ph78 ]
  %451 = phi i32 [ 745540131, %436 ], [ 488637460, %.lr.ph78 ]
  %cfg_DiffPhi157 = phi i32 [ %450, %436 ], [ %293, %.lr.ph78 ]
  %452 = phi i32 [ %450, %436 ], [ %294, %.lr.ph78 ]
  %icmpEq814 = icmp eq i32 %cfg_DiffPhi157, %452
  %zext815 = zext i1 %icmpEq814 to i32
  call void @assert_ft(i32 %zext815, i32 35)
  %icmpEq812 = icmp eq i32 %cfg_DestPhi156, %451
  %453 = icmp eq i32 %451, %451
  %icmpEq816 = icmp eq i1 %icmpEq812, %453
  %zext817 = zext i1 %icmpEq816 to i32
  call void @assert_ft(i32 %zext817, i32 35)
  %zext813 = zext i1 %icmpEq812 to i32
  call void @assert_ft(i32 %zext813, i32 35)
  %454 = xor i32 %cfg_DestPhi156, %cfg_DiffPhi157
  %cfg_icmpEq158 = icmp eq i32 %454, 796918545
  %455 = icmp eq i32 %454, 796918545
  %icmpEq818 = icmp eq i1 %cfg_icmpEq158, %455
  %zext819 = zext i1 %icmpEq818 to i32
  call void @assert_ft(i32 %zext819, i32 35)
  %cfg_zext159 = zext i1 %cfg_icmpEq158 to i32
  call void @assert_cfg_ft(i32 %cfg_zext159, i32 %454, i32 35)
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, %140
  %456 = icmp eq i64 %indvars.iv.next98, %141
  %icmpEq820 = icmp eq i1 %exitcond100.not, %456
  %zext821 = zext i1 %icmpEq820 to i32
  call void @assert_ft(i32 %zext821, i32 35)
  %457 = select i1 %exitcond100.not, i32 848298757, i32 488637460
  %458 = xor i32 796918545, %457
  br i1 %exitcond100.not, label %._crit_edge79, label %.lr.ph78

._crit_edge79:                                    ; preds = %._crit_edge
  %cfg_DestPhi160 = phi i32 [ 796918545, %._crit_edge ]
  %459 = phi i32 [ 796918545, %._crit_edge ]
  %460 = phi i32 [ 796918545, %._crit_edge ]
  %461 = phi i32 [ 796918545, %._crit_edge ]
  %462 = phi i32 [ 796918545, %._crit_edge ]
  %463 = phi i32 [ 796918545, %._crit_edge ]
  %464 = phi i32 [ 796918545, %._crit_edge ]
  %cfg_DiffPhi161 = phi i32 [ %458, %._crit_edge ]
  %465 = phi i32 [ %458, %._crit_edge ]
  %466 = phi i32 [ %458, %._crit_edge ]
  %467 = phi i32 [ %458, %._crit_edge ]
  %468 = phi i32 [ %458, %._crit_edge ]
  %469 = phi i32 [ %458, %._crit_edge ]
  %470 = phi i32 [ %458, %._crit_edge ]
  %471 = phi i32 [ %458, %._crit_edge ]
  %icmpEq870 = icmp eq i32 %470, %471
  %zext871 = zext i1 %icmpEq870 to i32
  call void @assert_ft(i32 %zext871, i32 35)
  %icmpEq868 = icmp eq i32 %468, %469
  %472 = icmp eq i32 %469, %469
  %icmpEq872 = icmp eq i1 %icmpEq868, %472
  %zext873 = zext i1 %icmpEq872 to i32
  call void @assert_ft(i32 %zext873, i32 35)
  %zext869 = zext i1 %icmpEq868 to i32
  call void @assert_ft(i32 %zext869, i32 35)
  %icmpEq866 = icmp eq i32 %466, %467
  %zext867 = zext i1 %icmpEq866 to i32
  %473 = zext i1 %icmpEq866 to i32
  %icmpEq874 = icmp eq i32 %zext867, %473
  %zext875 = zext i1 %icmpEq874 to i32
  call void @assert_ft(i32 %zext875, i32 35)
  call void @assert_ft(i32 %zext867, i32 35)
  %icmpEq864 = icmp eq i32 %cfg_DiffPhi161, %465
  %zext865 = zext i1 %icmpEq864 to i32
  call void @assert_ft(i32 %zext865, i32 35)
  %icmpEq862 = icmp eq i32 %463, %464
  %474 = icmp eq i32 %464, %464
  %icmpEq876 = icmp eq i1 %icmpEq862, %474
  %zext877 = zext i1 %icmpEq876 to i32
  call void @assert_ft(i32 %zext877, i32 35)
  %zext863 = zext i1 %icmpEq862 to i32
  call void @assert_ft(i32 %zext863, i32 35)
  %icmpEq860 = icmp eq i32 %461, %462
  %zext861 = zext i1 %icmpEq860 to i32
  %475 = zext i1 %icmpEq860 to i32
  %icmpEq878 = icmp eq i32 %zext861, %475
  %zext879 = zext i1 %icmpEq878 to i32
  call void @assert_ft(i32 %zext879, i32 35)
  call void @assert_ft(i32 %zext861, i32 35)
  %icmpEq858 = icmp eq i32 %459, %460
  %zext859 = zext i1 %icmpEq858 to i32
  call void @assert_ft(i32 %zext859, i32 35)
  %icmpEq838 = icmp eq i32 %468, %470
  %476 = icmp eq i32 %469, %471
  %icmpEq880 = icmp eq i1 %icmpEq838, %476
  %zext881 = zext i1 %icmpEq880 to i32
  call void @assert_ft(i32 %zext881, i32 35)
  %zext839 = zext i1 %icmpEq838 to i32
  call void @assert_ft(i32 %zext839, i32 35)
  %icmpEq836 = icmp eq i32 %cfg_DiffPhi161, %466
  %477 = icmp eq i32 %465, %467
  %478 = icmp eq i32 %465, %467
  %icmpEq882 = icmp eq i1 %477, %478
  %zext883 = zext i1 %icmpEq882 to i32
  call void @assert_ft(i32 %zext883, i32 35)
  %icmpEq840 = icmp eq i1 %icmpEq836, %477
  %zext841 = zext i1 %icmpEq840 to i32
  call void @assert_ft(i32 %zext841, i32 35)
  %zext837 = zext i1 %icmpEq836 to i32
  %479 = zext i1 %477 to i32
  %icmpEq884 = icmp eq i32 %zext837, %479
  %zext885 = zext i1 %icmpEq884 to i32
  call void @assert_ft(i32 %zext885, i32 35)
  call void @assert_ft(i32 %zext837, i32 35)
  %icmpEq834 = icmp eq i32 %461, %463
  %zext835 = zext i1 %icmpEq834 to i32
  %480 = zext i1 %icmpEq834 to i32
  %481 = zext i1 %icmpEq834 to i32
  %icmpEq886 = icmp eq i32 %480, %481
  %zext887 = zext i1 %icmpEq886 to i32
  call void @assert_ft(i32 %zext887, i32 35)
  %icmpEq842 = icmp eq i32 %zext835, %480
  %zext843 = zext i1 %icmpEq842 to i32
  call void @assert_ft(i32 %zext843, i32 35)
  call void @assert_ft(i32 %zext835, i32 35)
  %icmpEq832 = icmp eq i32 %cfg_DestPhi160, %459
  %482 = icmp eq i32 %459, %460
  %icmpEq888 = icmp eq i1 %icmpEq832, %482
  %zext889 = zext i1 %icmpEq888 to i32
  call void @assert_ft(i32 %zext889, i32 35)
  %zext833 = zext i1 %icmpEq832 to i32
  call void @assert_ft(i32 %zext833, i32 35)
  %icmpEq824 = icmp eq i32 %cfg_DiffPhi161, %468
  %483 = icmp eq i32 %465, %469
  %484 = icmp eq i32 %465, %469
  %icmpEq890 = icmp eq i1 %483, %484
  %zext891 = zext i1 %icmpEq890 to i32
  call void @assert_ft(i32 %zext891, i32 35)
  %icmpEq844 = icmp eq i1 %icmpEq824, %483
  %zext845 = zext i1 %icmpEq844 to i32
  call void @assert_ft(i32 %zext845, i32 35)
  %zext825 = zext i1 %icmpEq824 to i32
  %485 = zext i1 %483 to i32
  %icmpEq892 = icmp eq i32 %zext825, %485
  %zext893 = zext i1 %icmpEq892 to i32
  call void @assert_ft(i32 %zext893, i32 35)
  call void @assert_ft(i32 %zext825, i32 35)
  %icmpEq822 = icmp eq i32 %cfg_DestPhi160, %461
  %486 = icmp eq i32 %459, %462
  %487 = icmp eq i32 %459, %462
  %488 = icmp eq i32 %459, %462
  %icmpEq894 = icmp eq i1 %487, %488
  %zext895 = zext i1 %icmpEq894 to i32
  call void @assert_ft(i32 %zext895, i32 35)
  %icmpEq846 = icmp eq i1 %486, %487
  %zext847 = zext i1 %icmpEq846 to i32
  call void @assert_ft(i32 %zext847, i32 35)
  %icmpEq826 = icmp eq i1 %icmpEq822, %486
  %489 = icmp eq i1 %486, %487
  %icmpEq896 = icmp eq i1 %icmpEq826, %489
  %zext897 = zext i1 %icmpEq896 to i32
  call void @assert_ft(i32 %zext897, i32 35)
  %zext827 = zext i1 %icmpEq826 to i32
  call void @assert_ft(i32 %zext827, i32 35)
  %zext823 = zext i1 %icmpEq822 to i32
  %490 = zext i1 %486 to i32
  %491 = zext i1 %486 to i32
  %icmpEq898 = icmp eq i32 %490, %491
  %zext899 = zext i1 %icmpEq898 to i32
  call void @assert_ft(i32 %zext899, i32 35)
  %icmpEq848 = icmp eq i32 %zext823, %490
  %zext849 = zext i1 %icmpEq848 to i32
  call void @assert_ft(i32 %zext849, i32 35)
  call void @assert_ft(i32 %zext823, i32 35)
  %492 = xor i32 %cfg_DestPhi160, %cfg_DiffPhi161
  %493 = xor i32 %459, %465
  %icmpEq900 = icmp eq i32 %492, %493
  %zext901 = zext i1 %icmpEq900 to i32
  call void @assert_ft(i32 %zext901, i32 35)
  %cfg_icmpEq162 = icmp eq i32 %492, 848298757
  %494 = icmp eq i32 %493, 848298757
  %495 = icmp eq i32 %493, 848298757
  %icmpEq850 = icmp eq i1 %494, %495
  %496 = icmp eq i1 %495, %495
  %icmpEq902 = icmp eq i1 %icmpEq850, %496
  %zext903 = zext i1 %icmpEq902 to i32
  call void @assert_ft(i32 %zext903, i32 35)
  %zext851 = zext i1 %icmpEq850 to i32
  call void @assert_ft(i32 %zext851, i32 35)
  %icmpEq828 = icmp eq i1 %cfg_icmpEq162, %494
  %zext829 = zext i1 %icmpEq828 to i32
  %497 = zext i1 %icmpEq828 to i32
  %icmpEq904 = icmp eq i32 %zext829, %497
  %zext905 = zext i1 %icmpEq904 to i32
  call void @assert_ft(i32 %zext905, i32 35)
  call void @assert_ft(i32 %zext829, i32 35)
  %cfg_zext163 = zext i1 %cfg_icmpEq162 to i32
  %498 = zext i1 %494 to i32
  %icmpEq852 = icmp eq i32 %cfg_zext163, %498
  %499 = icmp eq i32 %498, %498
  %icmpEq906 = icmp eq i1 %icmpEq852, %499
  %zext907 = zext i1 %icmpEq906 to i32
  call void @assert_ft(i32 %zext907, i32 35)
  %zext853 = zext i1 %icmpEq852 to i32
  call void @assert_ft(i32 %zext853, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext163, i32 %492, i32 35)
  tail call void @fft_float(i32 noundef %134, i32 noundef %.0, ptr noundef %143, ptr noundef %144, ptr noundef %145, ptr noundef %146)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %500 = select i1 %.not89, i32 1105199891, i32 899680262
  %501 = select i1 %196, i32 1105199891, i32 899680262
  %icmpEq908 = icmp eq i32 %500, %501
  %zext909 = zext i1 %icmpEq908 to i32
  call void @assert_ft(i32 %zext909, i32 35)
  %502 = select i1 %.not89, i32 1105199891, i32 899680262
  %icmpEq854 = icmp eq i32 %500, %502
  %zext855 = zext i1 %icmpEq854 to i32
  call void @assert_ft(i32 %zext855, i32 35)
  %503 = select i1 %.not89, i32 1105199891, i32 899680262
  %504 = select i1 %196, i32 1105199891, i32 899680262
  %icmpEq910 = icmp eq i32 %503, %504
  %zext911 = zext i1 %icmpEq910 to i32
  call void @assert_ft(i32 %zext911, i32 35)
  %icmpEq830 = icmp eq i32 %500, %503
  %zext831 = zext i1 %icmpEq830 to i32
  call void @assert_ft(i32 %zext831, i32 35)
  %505 = xor i32 848298757, %500
  %506 = xor i32 848298757, %501
  %icmpEq912 = icmp eq i32 %505, %506
  %zext913 = zext i1 %icmpEq912 to i32
  call void @assert_ft(i32 %zext913, i32 35)
  %507 = xor i32 848298757, %500
  %icmpEq856 = icmp eq i32 %505, %507
  %zext857 = zext i1 %icmpEq856 to i32
  call void @assert_ft(i32 %zext857, i32 35)
  br i1 %.not89, label %._crit_edge87.critedge, label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %._crit_edge79
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.lr.ph82 ], [ 0, %._crit_edge79 ]
  %508 = phi i64 [ %520, %.lr.ph82 ], [ 0, %._crit_edge79 ]
  %cfg_DestPhi164 = phi i32 [ 848298757, %._crit_edge79 ], [ 899680262, %.lr.ph82 ]
  %509 = phi i32 [ 848298757, %._crit_edge79 ], [ 899680262, %.lr.ph82 ]
  %cfg_DiffPhi165 = phi i32 [ %505, %._crit_edge79 ], [ %522, %.lr.ph82 ]
  %510 = phi i32 [ %506, %._crit_edge79 ], [ %522, %.lr.ph82 ]
  %icmpEq918 = icmp eq i32 %cfg_DiffPhi165, %510
  %zext919 = zext i1 %icmpEq918 to i32
  call void @assert_ft(i32 %zext919, i32 35)
  %icmpEq916 = icmp eq i32 %cfg_DestPhi164, %509
  %511 = icmp eq i32 %509, %509
  %icmpEq920 = icmp eq i1 %icmpEq916, %511
  %zext921 = zext i1 %icmpEq920 to i32
  call void @assert_ft(i32 %zext921, i32 35)
  %zext917 = zext i1 %icmpEq916 to i32
  call void @assert_ft(i32 %zext917, i32 35)
  %icmpEq914 = icmp eq i64 %indvars.iv101, %508
  %zext915 = zext i1 %icmpEq914 to i32
  %512 = zext i1 %icmpEq914 to i32
  %icmpEq922 = icmp eq i32 %zext915, %512
  %zext923 = zext i1 %icmpEq922 to i32
  call void @assert_ft(i32 %zext923, i32 35)
  call void @assert_ft(i32 %zext915, i32 35)
  %513 = xor i32 %cfg_DestPhi164, %cfg_DiffPhi165
  %cfg_icmpEq166 = icmp eq i32 %513, 899680262
  %cfg_zext167 = zext i1 %cfg_icmpEq166 to i32
  %514 = zext i1 %cfg_icmpEq166 to i32
  %icmpEq924 = icmp eq i32 %cfg_zext167, %514
  %zext925 = zext i1 %icmpEq924 to i32
  call void @assert_ft(i32 %zext925, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext167, i32 %513, i32 35)
  %515 = getelementptr inbounds float, ptr %145, i64 %indvars.iv101
  %516 = load float, ptr %515, align 4
  %517 = fpext float %516 to double
  %518 = fpext float %516 to double
  %519 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %517)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %520 = add nuw nsw i64 %508, 1
  %icmpEq926 = icmp eq i64 %indvars.iv.next102, %520
  %zext927 = zext i1 %icmpEq926 to i32
  call void @assert_ft(i32 %zext927, i32 35)
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, %140
  %521 = select i1 %exitcond104.not, i32 1002439430, i32 899680262
  %522 = xor i32 899680262, %521
  br i1 %exitcond104.not, label %._crit_edge83, label %.lr.ph82

._crit_edge83.critedge:                           ; preds = %.preheader
  %cfg_DestPhi168 = phi i32 [ 385876506, %.preheader ]
  %523 = phi i32 [ 385876506, %.preheader ]
  %cfg_DiffPhi169 = phi i32 [ %202, %.preheader ]
  %524 = phi i32 [ %203, %.preheader ]
  %icmpEq930 = icmp eq i32 %cfg_DiffPhi169, %524
  %zext931 = zext i1 %icmpEq930 to i32
  call void @assert_ft(i32 %zext931, i32 35)
  %icmpEq928 = icmp eq i32 %cfg_DestPhi168, %523
  %525 = icmp eq i32 %523, %523
  %icmpEq932 = icmp eq i1 %icmpEq928, %525
  %zext933 = zext i1 %icmpEq932 to i32
  call void @assert_ft(i32 %zext933, i32 35)
  %zext929 = zext i1 %icmpEq928 to i32
  call void @assert_ft(i32 %zext929, i32 35)
  %526 = xor i32 %cfg_DestPhi168, %cfg_DiffPhi169
  %cfg_icmpEq170 = icmp eq i32 %526, 951059218
  %527 = icmp eq i32 %526, 951059218
  %icmpEq934 = icmp eq i1 %cfg_icmpEq170, %527
  %zext935 = zext i1 %icmpEq934 to i32
  call void @assert_ft(i32 %zext935, i32 35)
  %cfg_zext171 = zext i1 %cfg_icmpEq170 to i32
  call void @assert_cfg_ft(i32 %cfg_zext171, i32 %526, i32 35)
  tail call void @fft_float(i32 noundef %134, i32 noundef %.0, ptr noundef %143, ptr noundef %144, ptr noundef %145, ptr noundef %146)
  %puts.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.critedge, %.lr.ph82
  %cfg_DestPhi172 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %528 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %529 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %530 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %531 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %532 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %533 = phi i32 [ 899680262, %.lr.ph82 ], [ 951059218, %._crit_edge83.critedge ]
  %cfg_DiffPhi173 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %534 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %535 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %536 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %537 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %538 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %539 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %540 = phi i32 [ %522, %.lr.ph82 ], [ 57671700, %._crit_edge83.critedge ]
  %icmpEq984 = icmp eq i32 %539, %540
  %zext985 = zext i1 %icmpEq984 to i32
  call void @assert_ft(i32 %zext985, i32 35)
  %icmpEq982 = icmp eq i32 %537, %538
  %541 = icmp eq i32 %538, %538
  %icmpEq986 = icmp eq i1 %icmpEq982, %541
  %zext987 = zext i1 %icmpEq986 to i32
  call void @assert_ft(i32 %zext987, i32 35)
  %zext983 = zext i1 %icmpEq982 to i32
  call void @assert_ft(i32 %zext983, i32 35)
  %icmpEq980 = icmp eq i32 %535, %536
  %zext981 = zext i1 %icmpEq980 to i32
  %542 = zext i1 %icmpEq980 to i32
  %icmpEq988 = icmp eq i32 %zext981, %542
  %zext989 = zext i1 %icmpEq988 to i32
  call void @assert_ft(i32 %zext989, i32 35)
  call void @assert_ft(i32 %zext981, i32 35)
  %icmpEq978 = icmp eq i32 %cfg_DiffPhi173, %534
  %zext979 = zext i1 %icmpEq978 to i32
  call void @assert_ft(i32 %zext979, i32 35)
  %icmpEq976 = icmp eq i32 %532, %533
  %543 = icmp eq i32 %533, %533
  %icmpEq990 = icmp eq i1 %icmpEq976, %543
  %zext991 = zext i1 %icmpEq990 to i32
  call void @assert_ft(i32 %zext991, i32 35)
  %zext977 = zext i1 %icmpEq976 to i32
  call void @assert_ft(i32 %zext977, i32 35)
  %icmpEq974 = icmp eq i32 %530, %531
  %zext975 = zext i1 %icmpEq974 to i32
  %544 = zext i1 %icmpEq974 to i32
  %icmpEq992 = icmp eq i32 %zext975, %544
  %zext993 = zext i1 %icmpEq992 to i32
  call void @assert_ft(i32 %zext993, i32 35)
  call void @assert_ft(i32 %zext975, i32 35)
  %icmpEq972 = icmp eq i32 %528, %529
  %zext973 = zext i1 %icmpEq972 to i32
  call void @assert_ft(i32 %zext973, i32 35)
  %icmpEq952 = icmp eq i32 %537, %539
  %545 = icmp eq i32 %538, %540
  %icmpEq994 = icmp eq i1 %icmpEq952, %545
  %zext995 = zext i1 %icmpEq994 to i32
  call void @assert_ft(i32 %zext995, i32 35)
  %zext953 = zext i1 %icmpEq952 to i32
  call void @assert_ft(i32 %zext953, i32 35)
  %icmpEq950 = icmp eq i32 %cfg_DiffPhi173, %535
  %546 = icmp eq i32 %534, %536
  %547 = icmp eq i32 %534, %536
  %icmpEq996 = icmp eq i1 %546, %547
  %zext997 = zext i1 %icmpEq996 to i32
  call void @assert_ft(i32 %zext997, i32 35)
  %icmpEq954 = icmp eq i1 %icmpEq950, %546
  %zext955 = zext i1 %icmpEq954 to i32
  call void @assert_ft(i32 %zext955, i32 35)
  %zext951 = zext i1 %icmpEq950 to i32
  %548 = zext i1 %546 to i32
  %icmpEq998 = icmp eq i32 %zext951, %548
  %zext999 = zext i1 %icmpEq998 to i32
  call void @assert_ft(i32 %zext999, i32 35)
  call void @assert_ft(i32 %zext951, i32 35)
  %icmpEq948 = icmp eq i32 %530, %532
  %zext949 = zext i1 %icmpEq948 to i32
  %549 = zext i1 %icmpEq948 to i32
  %550 = zext i1 %icmpEq948 to i32
  %icmpEq1000 = icmp eq i32 %549, %550
  %zext1001 = zext i1 %icmpEq1000 to i32
  call void @assert_ft(i32 %zext1001, i32 35)
  %icmpEq956 = icmp eq i32 %zext949, %549
  %zext957 = zext i1 %icmpEq956 to i32
  call void @assert_ft(i32 %zext957, i32 35)
  call void @assert_ft(i32 %zext949, i32 35)
  %icmpEq946 = icmp eq i32 %cfg_DestPhi172, %528
  %551 = icmp eq i32 %528, %529
  %icmpEq1002 = icmp eq i1 %icmpEq946, %551
  %zext1003 = zext i1 %icmpEq1002 to i32
  call void @assert_ft(i32 %zext1003, i32 35)
  %zext947 = zext i1 %icmpEq946 to i32
  call void @assert_ft(i32 %zext947, i32 35)
  %icmpEq938 = icmp eq i32 %cfg_DiffPhi173, %537
  %552 = icmp eq i32 %534, %538
  %553 = icmp eq i32 %534, %538
  %icmpEq1004 = icmp eq i1 %552, %553
  %zext1005 = zext i1 %icmpEq1004 to i32
  call void @assert_ft(i32 %zext1005, i32 35)
  %icmpEq958 = icmp eq i1 %icmpEq938, %552
  %zext959 = zext i1 %icmpEq958 to i32
  call void @assert_ft(i32 %zext959, i32 35)
  %zext939 = zext i1 %icmpEq938 to i32
  %554 = zext i1 %552 to i32
  %icmpEq1006 = icmp eq i32 %zext939, %554
  %zext1007 = zext i1 %icmpEq1006 to i32
  call void @assert_ft(i32 %zext1007, i32 35)
  call void @assert_ft(i32 %zext939, i32 35)
  %icmpEq936 = icmp eq i32 %cfg_DestPhi172, %530
  %555 = icmp eq i32 %528, %531
  %556 = icmp eq i32 %528, %531
  %557 = icmp eq i32 %528, %531
  %icmpEq1008 = icmp eq i1 %556, %557
  %zext1009 = zext i1 %icmpEq1008 to i32
  call void @assert_ft(i32 %zext1009, i32 35)
  %icmpEq960 = icmp eq i1 %555, %556
  %zext961 = zext i1 %icmpEq960 to i32
  call void @assert_ft(i32 %zext961, i32 35)
  %icmpEq940 = icmp eq i1 %icmpEq936, %555
  %558 = icmp eq i1 %555, %556
  %icmpEq1010 = icmp eq i1 %icmpEq940, %558
  %zext1011 = zext i1 %icmpEq1010 to i32
  call void @assert_ft(i32 %zext1011, i32 35)
  %zext941 = zext i1 %icmpEq940 to i32
  call void @assert_ft(i32 %zext941, i32 35)
  %zext937 = zext i1 %icmpEq936 to i32
  %559 = zext i1 %555 to i32
  %560 = zext i1 %555 to i32
  %icmpEq1012 = icmp eq i32 %559, %560
  %zext1013 = zext i1 %icmpEq1012 to i32
  call void @assert_ft(i32 %zext1013, i32 35)
  %icmpEq962 = icmp eq i32 %zext937, %559
  %zext963 = zext i1 %icmpEq962 to i32
  call void @assert_ft(i32 %zext963, i32 35)
  call void @assert_ft(i32 %zext937, i32 35)
  %561 = xor i32 %cfg_DestPhi172, %cfg_DiffPhi173
  %562 = xor i32 %528, %534
  %icmpEq1014 = icmp eq i32 %561, %562
  %zext1015 = zext i1 %icmpEq1014 to i32
  call void @assert_ft(i32 %zext1015, i32 35)
  %cfg_icmpEq174 = icmp eq i32 %561, 1002439430
  %563 = icmp eq i32 %562, 1002439430
  %564 = icmp eq i32 %562, 1002439430
  %icmpEq964 = icmp eq i1 %563, %564
  %565 = icmp eq i1 %564, %564
  %icmpEq1016 = icmp eq i1 %icmpEq964, %565
  %zext1017 = zext i1 %icmpEq1016 to i32
  call void @assert_ft(i32 %zext1017, i32 35)
  %zext965 = zext i1 %icmpEq964 to i32
  call void @assert_ft(i32 %zext965, i32 35)
  %icmpEq942 = icmp eq i1 %cfg_icmpEq174, %563
  %zext943 = zext i1 %icmpEq942 to i32
  %566 = zext i1 %icmpEq942 to i32
  %icmpEq1018 = icmp eq i32 %zext943, %566
  %zext1019 = zext i1 %icmpEq1018 to i32
  call void @assert_ft(i32 %zext1019, i32 35)
  call void @assert_ft(i32 %zext943, i32 35)
  %cfg_zext175 = zext i1 %cfg_icmpEq174 to i32
  %567 = zext i1 %563 to i32
  %icmpEq966 = icmp eq i32 %cfg_zext175, %567
  %568 = icmp eq i32 %567, %567
  %icmpEq1020 = icmp eq i1 %icmpEq966, %568
  %zext1021 = zext i1 %icmpEq1020 to i32
  call void @assert_ft(i32 %zext1021, i32 35)
  %zext967 = zext i1 %icmpEq966 to i32
  call void @assert_ft(i32 %zext967, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext175, i32 %561, i32 35)
  %putchar = tail call i32 @putchar(i32 10)
  %puts68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %569 = select i1 %.not89, i32 1156581653, i32 1053820949
  %570 = select i1 %196, i32 1156581653, i32 1053820949
  %icmpEq1022 = icmp eq i32 %569, %570
  %zext1023 = zext i1 %icmpEq1022 to i32
  call void @assert_ft(i32 %zext1023, i32 35)
  %571 = select i1 %.not89, i32 1156581653, i32 1053820949
  %icmpEq968 = icmp eq i32 %569, %571
  %zext969 = zext i1 %icmpEq968 to i32
  call void @assert_ft(i32 %zext969, i32 35)
  %572 = select i1 %.not89, i32 1156581653, i32 1053820949
  %573 = select i1 %196, i32 1156581653, i32 1053820949
  %icmpEq1024 = icmp eq i32 %572, %573
  %zext1025 = zext i1 %icmpEq1024 to i32
  call void @assert_ft(i32 %zext1025, i32 35)
  %icmpEq944 = icmp eq i32 %569, %572
  %zext945 = zext i1 %icmpEq944 to i32
  call void @assert_ft(i32 %zext945, i32 35)
  %574 = xor i32 1002439430, %569
  %575 = xor i32 1002439430, %570
  %icmpEq1026 = icmp eq i32 %574, %575
  %zext1027 = zext i1 %icmpEq1026 to i32
  call void @assert_ft(i32 %zext1027, i32 35)
  %576 = xor i32 1002439430, %569
  %icmpEq970 = icmp eq i32 %574, %576
  %zext971 = zext i1 %icmpEq970 to i32
  call void @assert_ft(i32 %zext971, i32 35)
  br i1 %.not89, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %._crit_edge83
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph86 ], [ 0, %._crit_edge83 ]
  %577 = phi i64 [ %589, %.lr.ph86 ], [ 0, %._crit_edge83 ]
  %cfg_DestPhi176 = phi i32 [ 1002439430, %._crit_edge83 ], [ 1053820949, %.lr.ph86 ]
  %578 = phi i32 [ 1002439430, %._crit_edge83 ], [ 1053820949, %.lr.ph86 ]
  %cfg_DiffPhi177 = phi i32 [ %574, %._crit_edge83 ], [ %591, %.lr.ph86 ]
  %579 = phi i32 [ %575, %._crit_edge83 ], [ %591, %.lr.ph86 ]
  %icmpEq1032 = icmp eq i32 %cfg_DiffPhi177, %579
  %zext1033 = zext i1 %icmpEq1032 to i32
  call void @assert_ft(i32 %zext1033, i32 35)
  %icmpEq1030 = icmp eq i32 %cfg_DestPhi176, %578
  %580 = icmp eq i32 %578, %578
  %icmpEq1034 = icmp eq i1 %icmpEq1030, %580
  %zext1035 = zext i1 %icmpEq1034 to i32
  call void @assert_ft(i32 %zext1035, i32 35)
  %zext1031 = zext i1 %icmpEq1030 to i32
  call void @assert_ft(i32 %zext1031, i32 35)
  %icmpEq1028 = icmp eq i64 %indvars.iv105, %577
  %zext1029 = zext i1 %icmpEq1028 to i32
  %581 = zext i1 %icmpEq1028 to i32
  %icmpEq1036 = icmp eq i32 %zext1029, %581
  %zext1037 = zext i1 %icmpEq1036 to i32
  call void @assert_ft(i32 %zext1037, i32 35)
  call void @assert_ft(i32 %zext1029, i32 35)
  %582 = xor i32 %cfg_DestPhi176, %cfg_DiffPhi177
  %cfg_icmpEq178 = icmp eq i32 %582, 1053820949
  %cfg_zext179 = zext i1 %cfg_icmpEq178 to i32
  %583 = zext i1 %cfg_icmpEq178 to i32
  %icmpEq1038 = icmp eq i32 %cfg_zext179, %583
  %zext1039 = zext i1 %icmpEq1038 to i32
  call void @assert_ft(i32 %zext1039, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext179, i32 %582, i32 35)
  %584 = getelementptr inbounds float, ptr %146, i64 %indvars.iv105
  %585 = load float, ptr %584, align 4
  %586 = fpext float %585 to double
  %587 = fpext float %585 to double
  %588 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %586)
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %589 = add nuw nsw i64 %577, 1
  %icmpEq1040 = icmp eq i64 %indvars.iv.next106, %589
  %zext1041 = zext i1 %icmpEq1040 to i32
  call void @assert_ft(i32 %zext1041, i32 35)
  %exitcond108.not = icmp eq i64 %indvars.iv.next106, %140
  %590 = select i1 %exitcond108.not, i32 1156581653, i32 1053820949
  %591 = xor i32 1053820949, %590
  br i1 %exitcond108.not, label %._crit_edge87, label %.lr.ph86

._crit_edge87.critedge:                           ; preds = %._crit_edge79
  %cfg_DestPhi180 = phi i32 [ 848298757, %._crit_edge79 ]
  %592 = phi i32 [ 848298757, %._crit_edge79 ]
  %cfg_DiffPhi181 = phi i32 [ %505, %._crit_edge79 ]
  %593 = phi i32 [ %506, %._crit_edge79 ]
  %icmpEq1044 = icmp eq i32 %cfg_DiffPhi181, %593
  %zext1045 = zext i1 %icmpEq1044 to i32
  call void @assert_ft(i32 %zext1045, i32 35)
  %icmpEq1042 = icmp eq i32 %cfg_DestPhi180, %592
  %594 = icmp eq i32 %592, %592
  %icmpEq1046 = icmp eq i1 %icmpEq1042, %594
  %zext1047 = zext i1 %icmpEq1046 to i32
  call void @assert_ft(i32 %zext1047, i32 35)
  %zext1043 = zext i1 %icmpEq1042 to i32
  call void @assert_ft(i32 %zext1043, i32 35)
  %595 = xor i32 %cfg_DestPhi180, %cfg_DiffPhi181
  %cfg_icmpEq182 = icmp eq i32 %595, 1105199891
  %596 = icmp eq i32 %595, 1105199891
  %icmpEq1048 = icmp eq i1 %cfg_icmpEq182, %596
  %zext1049 = zext i1 %icmpEq1048 to i32
  call void @assert_ft(i32 %zext1049, i32 35)
  %cfg_zext183 = zext i1 %cfg_icmpEq182 to i32
  call void @assert_cfg_ft(i32 %cfg_zext183, i32 %595, i32 35)
  %putchar.c = tail call i32 @putchar(i32 10)
  %puts68.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge87.critedge, %.lr.ph86, %._crit_edge83
  %cfg_DestPhi184 = phi i32 [ 1053820949, %.lr.ph86 ], [ 1105199891, %._crit_edge87.critedge ], [ 1002439430, %._crit_edge83 ]
  %597 = phi i32 [ 1053820949, %.lr.ph86 ], [ 1105199891, %._crit_edge87.critedge ], [ 1002439430, %._crit_edge83 ]
  %cfg_DiffPhi185 = phi i32 [ %591, %.lr.ph86 ], [ 84937222, %._crit_edge87.critedge ], [ %574, %._crit_edge83 ]
  %598 = phi i32 [ %591, %.lr.ph86 ], [ 84937222, %._crit_edge87.critedge ], [ %575, %._crit_edge83 ]
  %icmpEq1052 = icmp eq i32 %cfg_DiffPhi185, %598
  %zext1053 = zext i1 %icmpEq1052 to i32
  call void @assert_ft(i32 %zext1053, i32 35)
  %icmpEq1050 = icmp eq i32 %cfg_DestPhi184, %597
  %599 = icmp eq i32 %597, %597
  %icmpEq1054 = icmp eq i1 %icmpEq1050, %599
  %zext1055 = zext i1 %icmpEq1054 to i32
  call void @assert_ft(i32 %zext1055, i32 35)
  %zext1051 = zext i1 %icmpEq1050 to i32
  call void @assert_ft(i32 %zext1051, i32 35)
  %600 = xor i32 %cfg_DestPhi184, %cfg_DiffPhi185
  %cfg_icmpEq186 = icmp eq i32 %600, 1156581653
  %601 = icmp eq i32 %600, 1156581653
  %icmpEq1056 = icmp eq i1 %cfg_icmpEq186, %601
  %zext1057 = zext i1 %icmpEq1056 to i32
  call void @assert_ft(i32 %zext1057, i32 35)
  %cfg_zext187 = zext i1 %cfg_icmpEq186 to i32
  call void @assert_cfg_ft(i32 %cfg_zext187, i32 %600, i32 35)
  %putchar69 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %143) #17
  tail call void @free(ptr noundef %144) #17
  tail call void @free(ptr noundef %145) #17
  tail call void @free(ptr noundef %146) #17
  tail call void @free(ptr noundef %150) #17
  tail call void @free(ptr noundef %151) #17
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @IsPowerOfTwo(i32 noundef %0) local_unnamed_addr #10 {
  %2 = icmp ugt i32 %0, 1
  %3 = icmp ugt i32 %0, 1
  %4 = icmp ugt i32 %0, 1
  %icmpEq7 = icmp eq i1 %3, %4
  %zext8 = zext i1 %icmpEq7 to i32
  call void @assert_ft(i32 %zext8, i32 35)
  %icmpEq = icmp eq i1 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !6
  %.not = icmp ult i32 %5, 2
  %6 = icmp ult i32 %5, 2
  %icmpEq9 = icmp eq i1 %.not, %6
  %zext10 = zext i1 %icmpEq9 to i32
  call void @assert_ft(i32 %zext10, i32 35)
  %narrow = select i1 %2, i1 %.not, i1 false
  %.0 = zext i1 %narrow to i32
  %7 = zext i1 %narrow to i32
  %icmpEq5 = icmp eq i32 %.0, %7
  %8 = icmp eq i32 %7, %7
  %icmpEq11 = icmp eq i1 %icmpEq5, %8
  %zext12 = zext i1 %icmpEq11 to i32
  call void @assert_ft(i32 %zext12, i32 35)
  %zext6 = zext i1 %icmpEq5 to i32
  call void @assert_ft(i32 %zext6, i32 35)
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 2
  %3 = icmp ult i32 %0, 2
  %icmpEq = icmp eq i1 %2, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %2, i32 180356101, i32 231736834
  %5 = xor i32 128975389, %4
  br i1 %2, label %6, label %.preheader

6:                                                ; preds = %1
  %cfg_DestPhi = phi i32 [ 128975389, %1 ]
  %7 = phi i32 [ 128975389, %1 ]
  %cfg_DiffPhi = phi i32 [ %5, %1 ]
  %8 = phi i32 [ %5, %1 ]
  %icmpEq17 = icmp eq i32 %cfg_DiffPhi, %8
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %icmpEq15 = icmp eq i32 %cfg_DestPhi, %7
  %9 = icmp eq i32 %7, %7
  %icmpEq19 = icmp eq i1 %icmpEq15, %9
  %zext20 = zext i1 %icmpEq19 to i32
  call void @assert_ft(i32 %zext20, i32 35)
  %zext16 = zext i1 %icmpEq15 to i32
  call void @assert_ft(i32 %zext16, i32 35)
  %10 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %10, 180356101
  %11 = icmp eq i32 %10, 180356101
  %icmpEq21 = icmp eq i1 %cfg_icmpEq, %11
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %10, i32 35)
  %12 = load ptr, ptr @stderr, align 8
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef %0) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

.preheader:                                       ; preds = %.preheader, %1
  %.0 = phi i32 [ %24, %.preheader ], [ 0, %1 ]
  %14 = phi i32 [ %24, %.preheader ], [ 0, %1 ]
  %cfg_DestPhi7 = phi i32 [ 128975389, %1 ], [ 231736834, %.preheader ]
  %15 = phi i32 [ 128975389, %1 ], [ 231736834, %.preheader ]
  %cfg_DiffPhi8 = phi i32 [ %5, %1 ], [ %26, %.preheader ]
  %16 = phi i32 [ %5, %1 ], [ %26, %.preheader ]
  %icmpEq27 = icmp eq i32 %cfg_DiffPhi8, %16
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  %icmpEq25 = icmp eq i32 %cfg_DestPhi7, %15
  %17 = icmp eq i32 %15, %15
  %icmpEq29 = icmp eq i1 %icmpEq25, %17
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %icmpEq23 = icmp eq i32 %.0, %14
  %zext24 = zext i1 %icmpEq23 to i32
  %18 = zext i1 %icmpEq23 to i32
  %icmpEq31 = icmp eq i32 %zext24, %18
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  call void @assert_ft(i32 %zext24, i32 35)
  %19 = xor i32 %cfg_DestPhi7, %cfg_DiffPhi8
  %cfg_icmpEq9 = icmp eq i32 %19, 231736834
  %cfg_zext10 = zext i1 %cfg_icmpEq9 to i32
  %20 = zext i1 %cfg_icmpEq9 to i32
  %icmpEq33 = icmp eq i32 %cfg_zext10, %20
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext10, i32 %19, i32 35)
  %21 = shl nuw i32 1, %.0
  %22 = and i32 %21, %0
  %.not = icmp eq i32 %22, 0
  %23 = icmp eq i32 %22, 0
  %icmpEq35 = icmp eq i1 %.not, %23
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %24 = add i32 %.0, 1
  %25 = select i1 %.not, i32 231736834, i32 283115797
  %26 = xor i32 231736834, %25
  br i1 %.not, label %.preheader, label %27

27:                                               ; preds = %.preheader
  %cfg_DestPhi11 = phi i32 [ 231736834, %.preheader ]
  %28 = phi i32 [ 231736834, %.preheader ]
  %cfg_DiffPhi12 = phi i32 [ %26, %.preheader ]
  %29 = phi i32 [ %26, %.preheader ]
  %icmpEq39 = icmp eq i32 %cfg_DiffPhi12, %29
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq37 = icmp eq i32 %cfg_DestPhi11, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq41 = icmp eq i1 %icmpEq37, %30
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %zext38 = zext i1 %icmpEq37 to i32
  call void @assert_ft(i32 %zext38, i32 35)
  %31 = xor i32 %cfg_DestPhi11, %cfg_DiffPhi12
  %cfg_icmpEq13 = icmp eq i32 %31, 283115797
  %32 = icmp eq i32 %31, 283115797
  %icmpEq43 = icmp eq i1 %cfg_icmpEq13, %32
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %cfg_zext14 = zext i1 %cfg_icmpEq13 to i32
  call void @assert_cfg_ft(i32 %cfg_zext14, i32 %31, i32 35)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %.not = icmp eq i32 %1, 0
  %3 = icmp eq i32 %1, 0
  %icmpEq = icmp eq i1 %.not, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %.not, i32 231735821, i32 180357663
  %5 = xor i32 128975389, %4
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %2
  %.011 = phi i32 [ %19, %.lr.ph ], [ 0, %2 ]
  %6 = phi i32 [ %19, %.lr.ph ], [ 0, %2 ]
  %.0710 = phi i32 [ %21, %.lr.ph ], [ 0, %2 ]
  %7 = phi i32 [ %21, %.lr.ph ], [ 0, %2 ]
  %.089 = phi i32 [ %20, %.lr.ph ], [ %0, %2 ]
  %8 = phi i32 [ %20, %.lr.ph ], [ %0, %2 ]
  %cfg_DestPhi = phi i32 [ 128975389, %2 ], [ 180357663, %.lr.ph ]
  %9 = phi i32 [ 128975389, %2 ], [ 180357663, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %5, %2 ], [ %24, %.lr.ph ]
  %10 = phi i32 [ %5, %2 ], [ %24, %.lr.ph ]
  %icmpEq24 = icmp eq i32 %cfg_DiffPhi, %10
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %icmpEq22 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq26 = icmp eq i1 %icmpEq22, %11
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %zext23 = zext i1 %icmpEq22 to i32
  call void @assert_ft(i32 %zext23, i32 35)
  %icmpEq20 = icmp eq i32 %.089, %8
  %zext21 = zext i1 %icmpEq20 to i32
  %12 = zext i1 %icmpEq20 to i32
  %icmpEq28 = icmp eq i32 %zext21, %12
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  call void @assert_ft(i32 %zext21, i32 35)
  %icmpEq18 = icmp eq i32 %.0710, %7
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %icmpEq16 = icmp eq i32 %.011, %6
  %13 = icmp eq i32 %6, %6
  %icmpEq30 = icmp eq i1 %icmpEq16, %13
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %14 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %14, 180357663
  %15 = icmp eq i32 %14, 180357663
  %icmpEq32 = icmp eq i1 %cfg_icmpEq, %15
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %14, i32 35)
  %16 = shl i32 %.011, 1
  %17 = and i32 %.089, 1
  %18 = and i32 %8, 1
  %icmpEq34 = icmp eq i32 %17, %18
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %19 = or i32 %16, %17
  %20 = lshr i32 %.089, 1
  %21 = add nuw i32 %.0710, 1
  %exitcond.not = icmp eq i32 %21, %1
  %22 = icmp eq i32 %21, %1
  %icmpEq36 = icmp eq i1 %exitcond.not, %22
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %23 = select i1 %exitcond.not, i32 231735821, i32 180357663
  %24 = xor i32 180357663, %23
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %2
  %.0.lcssa = phi i32 [ 0, %2 ], [ %19, %.lr.ph ]
  %25 = phi i32 [ 0, %2 ], [ %19, %.lr.ph ]
  %26 = phi i32 [ 0, %2 ], [ %19, %.lr.ph ]
  %27 = phi i32 [ 0, %2 ], [ %19, %.lr.ph ]
  %cfg_DestPhi12 = phi i32 [ 180357663, %.lr.ph ], [ 128975389, %2 ]
  %28 = phi i32 [ 180357663, %.lr.ph ], [ 128975389, %2 ]
  %29 = phi i32 [ 180357663, %.lr.ph ], [ 128975389, %2 ]
  %30 = phi i32 [ 180357663, %.lr.ph ], [ 128975389, %2 ]
  %cfg_DiffPhi13 = phi i32 [ %24, %.lr.ph ], [ %5, %2 ]
  %31 = phi i32 [ %24, %.lr.ph ], [ %5, %2 ]
  %32 = phi i32 [ %24, %.lr.ph ], [ %5, %2 ]
  %33 = phi i32 [ %24, %.lr.ph ], [ %5, %2 ]
  %icmpEq60 = icmp eq i32 %32, %33
  %zext61 = zext i1 %icmpEq60 to i32
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq58 = icmp eq i32 %cfg_DiffPhi13, %31
  %34 = icmp eq i32 %31, %31
  %icmpEq62 = icmp eq i1 %icmpEq58, %34
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  %icmpEq56 = icmp eq i32 %29, %30
  %zext57 = zext i1 %icmpEq56 to i32
  %35 = zext i1 %icmpEq56 to i32
  %icmpEq64 = icmp eq i32 %zext57, %35
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  call void @assert_ft(i32 %zext57, i32 35)
  %icmpEq54 = icmp eq i32 %cfg_DestPhi12, %28
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %icmpEq52 = icmp eq i32 %26, %27
  %36 = icmp eq i32 %27, %27
  %icmpEq66 = icmp eq i1 %icmpEq52, %36
  %zext67 = zext i1 %icmpEq66 to i32
  call void @assert_ft(i32 %zext67, i32 35)
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %.0.lcssa, %25
  %zext51 = zext i1 %icmpEq50 to i32
  %37 = zext i1 %icmpEq50 to i32
  %icmpEq68 = icmp eq i32 %zext51, %37
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq42 = icmp eq i32 %cfg_DiffPhi13, %32
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %cfg_DestPhi12, %29
  %38 = icmp eq i32 %28, %30
  %icmpEq70 = icmp eq i1 %icmpEq40, %38
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %39 = icmp eq i32 %cfg_DestPhi12, %29
  %icmpEq44 = icmp eq i1 %icmpEq40, %39
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %zext41 = zext i1 %icmpEq40 to i32
  %40 = zext i1 %38 to i32
  %icmpEq72 = icmp eq i32 %zext41, %40
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  call void @assert_ft(i32 %zext41, i32 35)
  %icmpEq38 = icmp eq i32 %.0.lcssa, %26
  %zext39 = zext i1 %icmpEq38 to i32
  %41 = zext i1 %icmpEq38 to i32
  %42 = zext i1 %icmpEq38 to i32
  %icmpEq74 = icmp eq i32 %41, %42
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  %icmpEq46 = icmp eq i32 %zext39, %41
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  call void @assert_ft(i32 %zext39, i32 35)
  %43 = xor i32 %cfg_DestPhi12, %cfg_DiffPhi13
  %44 = xor i32 %28, %31
  %icmpEq76 = icmp eq i32 %43, %44
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %cfg_icmpEq14 = icmp eq i32 %43, 231735821
  %cfg_zext15 = zext i1 %cfg_icmpEq14 to i32
  %45 = zext i1 %cfg_icmpEq14 to i32
  %icmpEq48 = icmp eq i32 %cfg_zext15, %45
  %46 = icmp eq i32 %45, %45
  %icmpEq78 = icmp eq i1 %icmpEq48, %46
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext15, i32 %43, i32 35)
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @Index_to_frequency(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %.not = icmp ult i32 %1, %0
  %3 = icmp ult i32 %1, %0
  %icmpEq = icmp eq i1 %.not, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %.not, i32 180355853, i32 334496290
  %5 = xor i32 128975389, %4
  br i1 %.not, label %6, label %42

6:                                                ; preds = %2
  %cfg_DestPhi = phi i32 [ 128975389, %2 ]
  %7 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi = phi i32 [ %5, %2 ]
  %8 = phi i32 [ %5, %2 ]
  %icmpEq26 = icmp eq i32 %cfg_DiffPhi, %8
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %icmpEq24 = icmp eq i32 %cfg_DestPhi, %7
  %9 = icmp eq i32 %7, %7
  %icmpEq28 = icmp eq i1 %icmpEq24, %9
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %10 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %10, 180355853
  %11 = icmp eq i32 %10, 180355853
  %icmpEq30 = icmp eq i1 %cfg_icmpEq, %11
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %10, i32 35)
  %12 = lshr i32 %0, 1
  %.not11 = icmp ult i32 %12, %1
  %13 = icmp ult i32 %12, %1
  %icmpEq32 = icmp eq i1 %.not11, %13
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %14 = select i1 %.not11, i32 283117071, i32 231736346
  %15 = xor i32 180355853, %14
  br i1 %.not11, label %27, label %16

16:                                               ; preds = %6
  %cfg_DestPhi12 = phi i32 [ 180355853, %6 ]
  %17 = phi i32 [ 180355853, %6 ]
  %cfg_DiffPhi13 = phi i32 [ %15, %6 ]
  %18 = phi i32 [ %15, %6 ]
  %icmpEq36 = icmp eq i32 %cfg_DiffPhi13, %18
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %icmpEq34 = icmp eq i32 %cfg_DestPhi12, %17
  %19 = icmp eq i32 %17, %17
  %icmpEq38 = icmp eq i1 %icmpEq34, %19
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %20 = xor i32 %cfg_DestPhi12, %cfg_DiffPhi13
  %cfg_icmpEq14 = icmp eq i32 %20, 231736346
  %21 = icmp eq i32 %20, 231736346
  %icmpEq40 = icmp eq i1 %cfg_icmpEq14, %21
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %cfg_zext15 = zext i1 %cfg_icmpEq14 to i32
  call void @assert_cfg_ft(i32 %cfg_zext15, i32 %20, i32 35)
  %22 = uitofp i32 %1 to double
  %23 = uitofp i32 %0 to double
  %24 = uitofp i32 %0 to double
  %25 = fdiv double %22, %23
  %26 = fdiv double %22, %24
  br label %42

27:                                               ; preds = %6
  %cfg_DestPhi16 = phi i32 [ 180355853, %6 ]
  %28 = phi i32 [ 180355853, %6 ]
  %cfg_DiffPhi17 = phi i32 [ %15, %6 ]
  %29 = phi i32 [ %15, %6 ]
  %icmpEq44 = icmp eq i32 %cfg_DiffPhi17, %29
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %icmpEq42 = icmp eq i32 %cfg_DestPhi16, %28
  %30 = icmp eq i32 %28, %28
  %icmpEq46 = icmp eq i1 %icmpEq42, %30
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %31 = xor i32 %cfg_DestPhi16, %cfg_DiffPhi17
  %cfg_icmpEq18 = icmp eq i32 %31, 283117071
  %32 = icmp eq i32 %31, 283117071
  %icmpEq48 = icmp eq i1 %cfg_icmpEq18, %32
  %zext49 = zext i1 %icmpEq48 to i32
  call void @assert_ft(i32 %zext49, i32 35)
  %cfg_zext19 = zext i1 %cfg_icmpEq18 to i32
  call void @assert_cfg_ft(i32 %cfg_zext19, i32 %31, i32 35)
  %33 = sub i32 %0, %1
  %34 = uitofp i32 %33 to double
  %35 = uitofp i32 %33 to double
  %36 = fneg double %34
  %37 = fneg double %35
  %38 = uitofp i32 %0 to double
  %39 = uitofp i32 %0 to double
  %40 = fdiv double %36, %38
  %41 = fdiv double %37, %39
  br label %42

42:                                               ; preds = %27, %16, %2
  %.0 = phi double [ %25, %16 ], [ %40, %27 ], [ 0.000000e+00, %2 ]
  %43 = phi double [ %26, %16 ], [ %41, %27 ], [ 0.000000e+00, %2 ]
  %cfg_DestPhi20 = phi i32 [ 128975389, %2 ], [ 283117071, %27 ], [ 231736346, %16 ]
  %44 = phi i32 [ 128975389, %2 ], [ 283117071, %27 ], [ 231736346, %16 ]
  %cfg_DiffPhi21 = phi i32 [ %5, %2 ], [ 51381293, %27 ], [ 505415224, %16 ]
  %45 = phi i32 [ %5, %2 ], [ 51381293, %27 ], [ 505415224, %16 ]
  %icmpEq52 = icmp eq i32 %cfg_DiffPhi21, %45
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %cfg_DestPhi20, %44
  %46 = icmp eq i32 %44, %44
  %icmpEq54 = icmp eq i1 %icmpEq50, %46
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %zext51 = zext i1 %icmpEq50 to i32
  call void @assert_ft(i32 %zext51, i32 35)
  %47 = xor i32 %cfg_DestPhi20, %cfg_DiffPhi21
  %cfg_icmpEq22 = icmp eq i32 %47, 334496290
  %48 = icmp eq i32 %47, 334496290
  %icmpEq56 = icmp eq i1 %cfg_icmpEq22, %48
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  %cfg_zext23 = zext i1 %cfg_icmpEq22 to i32
  call void @assert_cfg_ft(i32 %cfg_zext23, i32 %47, i32 35)
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #11 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0), !range !7
  %.not = icmp eq i32 %7, 0
  %8 = icmp eq i32 %7, 0
  %icmpEq = icmp eq i1 %.not, %8
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %9 = select i1 %.not, i32 180356101, i32 231737359
  %10 = xor i32 128975641, %9
  br i1 %.not, label %11, label %19

11:                                               ; preds = %6
  %cfg_DestPhi = phi i32 [ 128975641, %6 ]
  %12 = phi i32 [ 128975641, %6 ]
  %cfg_DiffPhi = phi i32 [ %10, %6 ]
  %13 = phi i32 [ %10, %6 ]
  %icmpEq198 = icmp eq i32 %cfg_DiffPhi, %13
  %zext199 = zext i1 %icmpEq198 to i32
  call void @assert_ft(i32 %zext199, i32 35)
  %icmpEq196 = icmp eq i32 %cfg_DestPhi, %12
  %14 = icmp eq i32 %12, %12
  %icmpEq200 = icmp eq i1 %icmpEq196, %14
  %zext201 = zext i1 %icmpEq200 to i32
  call void @assert_ft(i32 %zext201, i32 35)
  %zext197 = zext i1 %icmpEq196 to i32
  call void @assert_ft(i32 %zext197, i32 35)
  %15 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %15, 180356101
  %16 = icmp eq i32 %15, 180356101
  %icmpEq202 = icmp eq i1 %cfg_icmpEq, %16
  %zext203 = zext i1 %icmpEq202 to i32
  call void @assert_ft(i32 %zext203, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %15, i32 35)
  %17 = load ptr, ptr @stderr, align 8
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %0) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

19:                                               ; preds = %6
  %cfg_DestPhi132 = phi i32 [ 128975641, %6 ]
  %20 = phi i32 [ 128975641, %6 ]
  %cfg_DiffPhi133 = phi i32 [ %10, %6 ]
  %21 = phi i32 [ %10, %6 ]
  %icmpEq206 = icmp eq i32 %cfg_DiffPhi133, %21
  %zext207 = zext i1 %icmpEq206 to i32
  call void @assert_ft(i32 %zext207, i32 35)
  %icmpEq204 = icmp eq i32 %cfg_DestPhi132, %20
  %22 = icmp eq i32 %20, %20
  %icmpEq208 = icmp eq i1 %icmpEq204, %22
  %zext209 = zext i1 %icmpEq208 to i32
  call void @assert_ft(i32 %zext209, i32 35)
  %zext205 = zext i1 %icmpEq204 to i32
  call void @assert_ft(i32 %zext205, i32 35)
  %23 = xor i32 %cfg_DestPhi132, %cfg_DiffPhi133
  %cfg_icmpEq134 = icmp eq i32 %23, 231737359
  %24 = icmp eq i32 %23, 231737359
  %icmpEq210 = icmp eq i1 %cfg_icmpEq134, %24
  %zext211 = zext i1 %icmpEq210 to i32
  call void @assert_ft(i32 %zext211, i32 35)
  %cfg_zext135 = zext i1 %cfg_icmpEq134 to i32
  call void @assert_cfg_ft(i32 %cfg_zext135, i32 %23, i32 35)
  %.not100 = icmp eq i32 %1, 0
  %spec.select = select i1 %.not100, double 0x401921FB54442D18, double 0xC01921FB54442D18
  %25 = select i1 %.not100, double 0x401921FB54442D18, double 0xC01921FB54442D18
  tail call fastcc void @CheckPointer(ptr noundef %2, ptr noundef nonnull @.str.1.13)
  tail call fastcc void @CheckPointer(ptr noundef %4, ptr noundef nonnull @.str.2.14)
  tail call fastcc void @CheckPointer(ptr noundef %5, ptr noundef nonnull @.str.3.15)
  %26 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0)
  %.not121 = icmp eq i32 %0, 0
  %27 = icmp eq i32 %0, 0
  %icmpEq212 = icmp eq i1 %.not121, %27
  %zext213 = zext i1 %icmpEq212 to i32
  call void @assert_ft(i32 %zext213, i32 35)
  %28 = select i1 %.not121, i32 1002438914, i32 283116314
  %29 = xor i32 231737359, %28
  br i1 %.not121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %19
  %cfg_DestPhi136 = phi i32 [ 231737359, %19 ]
  %30 = phi i32 [ 231737359, %19 ]
  %31 = phi i32 [ 231737359, %19 ]
  %cfg_DiffPhi137 = phi i32 [ %29, %19 ]
  %32 = phi i32 [ %29, %19 ]
  %33 = phi i32 [ %29, %19 ]
  %34 = phi i32 [ %29, %19 ]
  %icmpEq228 = icmp eq i32 %33, %34
  %zext229 = zext i1 %icmpEq228 to i32
  call void @assert_ft(i32 %zext229, i32 35)
  %icmpEq226 = icmp eq i32 %cfg_DiffPhi137, %32
  %35 = icmp eq i32 %32, %32
  %icmpEq230 = icmp eq i1 %icmpEq226, %35
  %zext231 = zext i1 %icmpEq230 to i32
  call void @assert_ft(i32 %zext231, i32 35)
  %zext227 = zext i1 %icmpEq226 to i32
  call void @assert_ft(i32 %zext227, i32 35)
  %icmpEq224 = icmp eq i32 %30, %31
  %zext225 = zext i1 %icmpEq224 to i32
  %36 = zext i1 %icmpEq224 to i32
  %icmpEq232 = icmp eq i32 %zext225, %36
  %zext233 = zext i1 %icmpEq232 to i32
  call void @assert_ft(i32 %zext233, i32 35)
  call void @assert_ft(i32 %zext225, i32 35)
  %icmpEq216 = icmp eq i32 %cfg_DiffPhi137, %33
  %zext217 = zext i1 %icmpEq216 to i32
  call void @assert_ft(i32 %zext217, i32 35)
  %icmpEq214 = icmp eq i32 %cfg_DestPhi136, %30
  %37 = icmp eq i32 %30, %31
  %icmpEq234 = icmp eq i1 %icmpEq214, %37
  %zext235 = zext i1 %icmpEq234 to i32
  call void @assert_ft(i32 %zext235, i32 35)
  %38 = icmp eq i32 %cfg_DestPhi136, %30
  %icmpEq218 = icmp eq i1 %icmpEq214, %38
  %zext219 = zext i1 %icmpEq218 to i32
  call void @assert_ft(i32 %zext219, i32 35)
  %zext215 = zext i1 %icmpEq214 to i32
  %39 = zext i1 %37 to i32
  %icmpEq236 = icmp eq i32 %zext215, %39
  %zext237 = zext i1 %icmpEq236 to i32
  call void @assert_ft(i32 %zext237, i32 35)
  call void @assert_ft(i32 %zext215, i32 35)
  %40 = xor i32 %cfg_DestPhi136, %cfg_DiffPhi137
  %cfg_icmpEq138 = icmp eq i32 %40, 283116314
  %41 = icmp eq i32 %40, 283116314
  %42 = icmp eq i32 %40, 283116314
  %icmpEq238 = icmp eq i1 %41, %42
  %zext239 = zext i1 %icmpEq238 to i32
  call void @assert_ft(i32 %zext239, i32 35)
  %icmpEq220 = icmp eq i1 %cfg_icmpEq138, %41
  %zext221 = zext i1 %icmpEq220 to i32
  call void @assert_ft(i32 %zext221, i32 35)
  %cfg_zext139 = zext i1 %cfg_icmpEq138 to i32
  %43 = zext i1 %41 to i32
  %icmpEq240 = icmp eq i32 %cfg_zext139, %43
  %zext241 = zext i1 %icmpEq240 to i32
  call void @assert_ft(i32 %zext241, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext139, i32 %40, i32 35)
  %44 = icmp eq ptr %3, null
  %wide.trip.count = zext i32 %0 to i64
  %45 = zext i32 %0 to i64
  %46 = zext i32 %0 to i64
  %icmpEq242 = icmp eq i64 %45, %46
  %zext243 = zext i1 %icmpEq242 to i32
  call void @assert_ft(i32 %zext243, i32 35)
  %icmpEq222 = icmp eq i64 %wide.trip.count, %45
  %zext223 = zext i1 %icmpEq222 to i32
  call void @assert_ft(i32 %zext223, i32 35)
  br label %97

.preheader102:                                    ; preds = %198
  %cfg_DestPhi140 = phi i32 [ 488637982, %198 ]
  %47 = phi i32 [ 488637982, %198 ]
  %48 = phi i32 [ 488637982, %198 ]
  %49 = phi i32 [ 488637982, %198 ]
  %50 = phi i32 [ 488637982, %198 ]
  %51 = phi i32 [ 488637982, %198 ]
  %52 = phi i32 [ 488637982, %198 ]
  %cfg_DiffPhi141 = phi i32 [ %209, %198 ]
  %53 = phi i32 [ %209, %198 ]
  %54 = phi i32 [ %209, %198 ]
  %55 = phi i32 [ %209, %198 ]
  %56 = phi i32 [ %209, %198 ]
  %57 = phi i32 [ %209, %198 ]
  %58 = phi i32 [ %209, %198 ]
  %59 = phi i32 [ %209, %198 ]
  %icmpEq292 = icmp eq i32 %58, %59
  %zext293 = zext i1 %icmpEq292 to i32
  call void @assert_ft(i32 %zext293, i32 35)
  %icmpEq290 = icmp eq i32 %56, %57
  %60 = icmp eq i32 %57, %57
  %icmpEq294 = icmp eq i1 %icmpEq290, %60
  %zext295 = zext i1 %icmpEq294 to i32
  call void @assert_ft(i32 %zext295, i32 35)
  %zext291 = zext i1 %icmpEq290 to i32
  call void @assert_ft(i32 %zext291, i32 35)
  %icmpEq288 = icmp eq i32 %54, %55
  %zext289 = zext i1 %icmpEq288 to i32
  %61 = zext i1 %icmpEq288 to i32
  %icmpEq296 = icmp eq i32 %zext289, %61
  %zext297 = zext i1 %icmpEq296 to i32
  call void @assert_ft(i32 %zext297, i32 35)
  call void @assert_ft(i32 %zext289, i32 35)
  %icmpEq286 = icmp eq i32 %cfg_DiffPhi141, %53
  %zext287 = zext i1 %icmpEq286 to i32
  call void @assert_ft(i32 %zext287, i32 35)
  %icmpEq284 = icmp eq i32 %51, %52
  %62 = icmp eq i32 %52, %52
  %icmpEq298 = icmp eq i1 %icmpEq284, %62
  %zext299 = zext i1 %icmpEq298 to i32
  call void @assert_ft(i32 %zext299, i32 35)
  %zext285 = zext i1 %icmpEq284 to i32
  call void @assert_ft(i32 %zext285, i32 35)
  %icmpEq282 = icmp eq i32 %49, %50
  %zext283 = zext i1 %icmpEq282 to i32
  %63 = zext i1 %icmpEq282 to i32
  %icmpEq300 = icmp eq i32 %zext283, %63
  %zext301 = zext i1 %icmpEq300 to i32
  call void @assert_ft(i32 %zext301, i32 35)
  call void @assert_ft(i32 %zext283, i32 35)
  %icmpEq280 = icmp eq i32 %47, %48
  %zext281 = zext i1 %icmpEq280 to i32
  call void @assert_ft(i32 %zext281, i32 35)
  %icmpEq260 = icmp eq i32 %56, %58
  %64 = icmp eq i32 %57, %59
  %icmpEq302 = icmp eq i1 %icmpEq260, %64
  %zext303 = zext i1 %icmpEq302 to i32
  call void @assert_ft(i32 %zext303, i32 35)
  %zext261 = zext i1 %icmpEq260 to i32
  call void @assert_ft(i32 %zext261, i32 35)
  %icmpEq258 = icmp eq i32 %cfg_DiffPhi141, %54
  %65 = icmp eq i32 %53, %55
  %66 = icmp eq i32 %53, %55
  %icmpEq304 = icmp eq i1 %65, %66
  %zext305 = zext i1 %icmpEq304 to i32
  call void @assert_ft(i32 %zext305, i32 35)
  %icmpEq262 = icmp eq i1 %icmpEq258, %65
  %zext263 = zext i1 %icmpEq262 to i32
  call void @assert_ft(i32 %zext263, i32 35)
  %zext259 = zext i1 %icmpEq258 to i32
  %67 = zext i1 %65 to i32
  %icmpEq306 = icmp eq i32 %zext259, %67
  %zext307 = zext i1 %icmpEq306 to i32
  call void @assert_ft(i32 %zext307, i32 35)
  call void @assert_ft(i32 %zext259, i32 35)
  %icmpEq256 = icmp eq i32 %49, %51
  %zext257 = zext i1 %icmpEq256 to i32
  %68 = zext i1 %icmpEq256 to i32
  %69 = zext i1 %icmpEq256 to i32
  %icmpEq308 = icmp eq i32 %68, %69
  %zext309 = zext i1 %icmpEq308 to i32
  call void @assert_ft(i32 %zext309, i32 35)
  %icmpEq264 = icmp eq i32 %zext257, %68
  %zext265 = zext i1 %icmpEq264 to i32
  call void @assert_ft(i32 %zext265, i32 35)
  call void @assert_ft(i32 %zext257, i32 35)
  %icmpEq254 = icmp eq i32 %cfg_DestPhi140, %47
  %70 = icmp eq i32 %47, %48
  %icmpEq310 = icmp eq i1 %icmpEq254, %70
  %zext311 = zext i1 %icmpEq310 to i32
  call void @assert_ft(i32 %zext311, i32 35)
  %zext255 = zext i1 %icmpEq254 to i32
  call void @assert_ft(i32 %zext255, i32 35)
  %icmpEq246 = icmp eq i32 %cfg_DiffPhi141, %56
  %71 = icmp eq i32 %53, %57
  %72 = icmp eq i32 %53, %57
  %icmpEq312 = icmp eq i1 %71, %72
  %zext313 = zext i1 %icmpEq312 to i32
  call void @assert_ft(i32 %zext313, i32 35)
  %icmpEq266 = icmp eq i1 %icmpEq246, %71
  %zext267 = zext i1 %icmpEq266 to i32
  call void @assert_ft(i32 %zext267, i32 35)
  %zext247 = zext i1 %icmpEq246 to i32
  %73 = zext i1 %71 to i32
  %icmpEq314 = icmp eq i32 %zext247, %73
  %zext315 = zext i1 %icmpEq314 to i32
  call void @assert_ft(i32 %zext315, i32 35)
  call void @assert_ft(i32 %zext247, i32 35)
  %icmpEq244 = icmp eq i32 %cfg_DestPhi140, %49
  %74 = icmp eq i32 %47, %50
  %75 = icmp eq i32 %47, %50
  %76 = icmp eq i32 %47, %50
  %icmpEq316 = icmp eq i1 %75, %76
  %zext317 = zext i1 %icmpEq316 to i32
  call void @assert_ft(i32 %zext317, i32 35)
  %icmpEq268 = icmp eq i1 %74, %75
  %zext269 = zext i1 %icmpEq268 to i32
  call void @assert_ft(i32 %zext269, i32 35)
  %icmpEq248 = icmp eq i1 %icmpEq244, %74
  %77 = icmp eq i1 %74, %75
  %icmpEq318 = icmp eq i1 %icmpEq248, %77
  %zext319 = zext i1 %icmpEq318 to i32
  call void @assert_ft(i32 %zext319, i32 35)
  %zext249 = zext i1 %icmpEq248 to i32
  call void @assert_ft(i32 %zext249, i32 35)
  %zext245 = zext i1 %icmpEq244 to i32
  %78 = zext i1 %74 to i32
  %79 = zext i1 %74 to i32
  %icmpEq320 = icmp eq i32 %78, %79
  %zext321 = zext i1 %icmpEq320 to i32
  call void @assert_ft(i32 %zext321, i32 35)
  %icmpEq270 = icmp eq i32 %zext245, %78
  %zext271 = zext i1 %icmpEq270 to i32
  call void @assert_ft(i32 %zext271, i32 35)
  call void @assert_ft(i32 %zext245, i32 35)
  %80 = xor i32 %cfg_DestPhi140, %cfg_DiffPhi141
  %81 = xor i32 %47, %53
  %icmpEq322 = icmp eq i32 %80, %81
  %zext323 = zext i1 %icmpEq322 to i32
  call void @assert_ft(i32 %zext323, i32 35)
  %cfg_icmpEq142 = icmp eq i32 %80, 334496290
  %82 = icmp eq i32 %81, 334496290
  %83 = icmp eq i32 %81, 334496290
  %icmpEq272 = icmp eq i1 %82, %83
  %84 = icmp eq i1 %83, %83
  %icmpEq324 = icmp eq i1 %icmpEq272, %84
  %zext325 = zext i1 %icmpEq324 to i32
  call void @assert_ft(i32 %zext325, i32 35)
  %zext273 = zext i1 %icmpEq272 to i32
  call void @assert_ft(i32 %zext273, i32 35)
  %icmpEq250 = icmp eq i1 %cfg_icmpEq142, %82
  %zext251 = zext i1 %icmpEq250 to i32
  %85 = zext i1 %icmpEq250 to i32
  %icmpEq326 = icmp eq i32 %zext251, %85
  %zext327 = zext i1 %icmpEq326 to i32
  call void @assert_ft(i32 %zext327, i32 35)
  call void @assert_ft(i32 %zext251, i32 35)
  %cfg_zext143 = zext i1 %cfg_icmpEq142 to i32
  %86 = zext i1 %82 to i32
  %icmpEq274 = icmp eq i32 %cfg_zext143, %86
  %87 = icmp eq i32 %86, %86
  %icmpEq328 = icmp eq i1 %icmpEq274, %87
  %zext329 = zext i1 %icmpEq328 to i32
  call void @assert_ft(i32 %zext329, i32 35)
  %zext275 = zext i1 %icmpEq274 to i32
  call void @assert_ft(i32 %zext275, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext143, i32 %80, i32 35)
  %.not101113 = icmp ult i32 %0, 2
  %88 = icmp ult i32 %0, 2
  %icmpEq330 = icmp eq i1 %.not101113, %88
  %zext331 = zext i1 %icmpEq330 to i32
  call void @assert_ft(i32 %zext331, i32 35)
  %89 = select i1 %.not101113, i32 796918034, i32 540019981
  %90 = select i1 %88, i32 796918034, i32 540019981
  %91 = select i1 %88, i32 796918034, i32 540019981
  %icmpEq276 = icmp eq i32 %90, %91
  %92 = icmp eq i32 %91, %91
  %icmpEq332 = icmp eq i1 %icmpEq276, %92
  %zext333 = zext i1 %icmpEq332 to i32
  call void @assert_ft(i32 %zext333, i32 35)
  %zext277 = zext i1 %icmpEq276 to i32
  call void @assert_ft(i32 %zext277, i32 35)
  %icmpEq252 = icmp eq i32 %89, %90
  %zext253 = zext i1 %icmpEq252 to i32
  %93 = zext i1 %icmpEq252 to i32
  %icmpEq334 = icmp eq i32 %zext253, %93
  %zext335 = zext i1 %icmpEq334 to i32
  call void @assert_ft(i32 %zext335, i32 35)
  call void @assert_ft(i32 %zext253, i32 35)
  %94 = xor i32 334496290, %89
  %95 = xor i32 334496290, %90
  %icmpEq278 = icmp eq i32 %94, %95
  %96 = icmp eq i32 %95, %95
  %icmpEq336 = icmp eq i1 %icmpEq278, %96
  %zext337 = zext i1 %icmpEq336 to i32
  call void @assert_ft(i32 %zext337, i32 35)
  %zext279 = zext i1 %icmpEq278 to i32
  call void @assert_ft(i32 %zext279, i32 35)
  br i1 %.not101113, label %._crit_edge117, label %.preheader.lr.ph

97:                                               ; preds = %198, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %98 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %100 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %101 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %102 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %cfg_DestPhi144 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %103 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %104 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %105 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %106 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %107 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %108 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %109 = phi i32 [ 283116314, %.lr.ph ], [ 488637982, %198 ]
  %cfg_DiffPhi145 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %110 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %111 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %112 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %113 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %114 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %115 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %116 = phi i32 [ 132123164, %.lr.ph ], [ %209, %198 ]
  %icmpEq408 = icmp eq i32 %115, %116
  %zext409 = zext i1 %icmpEq408 to i32
  call void @assert_ft(i32 %zext409, i32 35)
  %icmpEq406 = icmp eq i32 %113, %114
  %117 = icmp eq i32 %114, %114
  %icmpEq410 = icmp eq i1 %icmpEq406, %117
  %zext411 = zext i1 %icmpEq410 to i32
  call void @assert_ft(i32 %zext411, i32 35)
  %zext407 = zext i1 %icmpEq406 to i32
  call void @assert_ft(i32 %zext407, i32 35)
  %icmpEq404 = icmp eq i32 %111, %112
  %zext405 = zext i1 %icmpEq404 to i32
  %118 = zext i1 %icmpEq404 to i32
  %icmpEq412 = icmp eq i32 %zext405, %118
  %zext413 = zext i1 %icmpEq412 to i32
  call void @assert_ft(i32 %zext413, i32 35)
  call void @assert_ft(i32 %zext405, i32 35)
  %icmpEq402 = icmp eq i32 %cfg_DiffPhi145, %110
  %zext403 = zext i1 %icmpEq402 to i32
  call void @assert_ft(i32 %zext403, i32 35)
  %icmpEq400 = icmp eq i32 %108, %109
  %119 = icmp eq i32 %109, %109
  %icmpEq414 = icmp eq i1 %icmpEq400, %119
  %zext415 = zext i1 %icmpEq414 to i32
  call void @assert_ft(i32 %zext415, i32 35)
  %zext401 = zext i1 %icmpEq400 to i32
  call void @assert_ft(i32 %zext401, i32 35)
  %icmpEq398 = icmp eq i32 %106, %107
  %zext399 = zext i1 %icmpEq398 to i32
  %120 = zext i1 %icmpEq398 to i32
  %icmpEq416 = icmp eq i32 %zext399, %120
  %zext417 = zext i1 %icmpEq416 to i32
  call void @assert_ft(i32 %zext417, i32 35)
  call void @assert_ft(i32 %zext399, i32 35)
  %icmpEq396 = icmp eq i32 %104, %105
  %zext397 = zext i1 %icmpEq396 to i32
  call void @assert_ft(i32 %zext397, i32 35)
  %icmpEq394 = icmp eq i32 %cfg_DestPhi144, %103
  %121 = icmp eq i32 %103, %103
  %icmpEq418 = icmp eq i1 %icmpEq394, %121
  %zext419 = zext i1 %icmpEq418 to i32
  call void @assert_ft(i32 %zext419, i32 35)
  %zext395 = zext i1 %icmpEq394 to i32
  call void @assert_ft(i32 %zext395, i32 35)
  %icmpEq392 = icmp eq i64 %101, %102
  %zext393 = zext i1 %icmpEq392 to i32
  %122 = zext i1 %icmpEq392 to i32
  %icmpEq420 = icmp eq i32 %zext393, %122
  %zext421 = zext i1 %icmpEq420 to i32
  call void @assert_ft(i32 %zext421, i32 35)
  call void @assert_ft(i32 %zext393, i32 35)
  %icmpEq390 = icmp eq i64 %99, %100
  %zext391 = zext i1 %icmpEq390 to i32
  call void @assert_ft(i32 %zext391, i32 35)
  %icmpEq388 = icmp eq i64 %indvars.iv, %98
  %123 = icmp eq i64 %98, %98
  %icmpEq422 = icmp eq i1 %icmpEq388, %123
  %zext423 = zext i1 %icmpEq422 to i32
  call void @assert_ft(i32 %zext423, i32 35)
  %zext389 = zext i1 %icmpEq388 to i32
  call void @assert_ft(i32 %zext389, i32 35)
  %icmpEq362 = icmp eq i32 %113, %115
  %zext363 = zext i1 %icmpEq362 to i32
  %124 = zext i1 %icmpEq362 to i32
  %icmpEq424 = icmp eq i32 %zext363, %124
  %zext425 = zext i1 %icmpEq424 to i32
  call void @assert_ft(i32 %zext425, i32 35)
  call void @assert_ft(i32 %zext363, i32 35)
  %icmpEq360 = icmp eq i32 %cfg_DiffPhi145, %111
  %125 = icmp eq i32 %110, %112
  %icmpEq364 = icmp eq i1 %icmpEq360, %125
  %126 = icmp eq i1 %125, %125
  %icmpEq426 = icmp eq i1 %icmpEq364, %126
  %zext427 = zext i1 %icmpEq426 to i32
  call void @assert_ft(i32 %zext427, i32 35)
  %zext365 = zext i1 %icmpEq364 to i32
  call void @assert_ft(i32 %zext365, i32 35)
  %zext361 = zext i1 %icmpEq360 to i32
  call void @assert_ft(i32 %zext361, i32 35)
  %icmpEq358 = icmp eq i32 %106, %108
  %127 = icmp eq i32 %107, %109
  %icmpEq428 = icmp eq i1 %icmpEq358, %127
  %zext429 = zext i1 %icmpEq428 to i32
  call void @assert_ft(i32 %zext429, i32 35)
  %zext359 = zext i1 %icmpEq358 to i32
  %128 = zext i1 %127 to i32
  %icmpEq366 = icmp eq i32 %zext359, %128
  %zext367 = zext i1 %icmpEq366 to i32
  %129 = zext i1 %icmpEq366 to i32
  %icmpEq430 = icmp eq i32 %zext367, %129
  %zext431 = zext i1 %icmpEq430 to i32
  call void @assert_ft(i32 %zext431, i32 35)
  call void @assert_ft(i32 %zext367, i32 35)
  call void @assert_ft(i32 %zext359, i32 35)
  %icmpEq356 = icmp eq i32 %cfg_DestPhi144, %104
  %zext357 = zext i1 %icmpEq356 to i32
  %130 = zext i1 %icmpEq356 to i32
  %icmpEq432 = icmp eq i32 %zext357, %130
  %zext433 = zext i1 %icmpEq432 to i32
  call void @assert_ft(i32 %zext433, i32 35)
  call void @assert_ft(i32 %zext357, i32 35)
  %icmpEq354 = icmp eq i64 %99, %101
  %131 = icmp eq i64 %100, %102
  %icmpEq368 = icmp eq i1 %icmpEq354, %131
  %132 = icmp eq i1 %131, %131
  %icmpEq434 = icmp eq i1 %icmpEq368, %132
  %zext435 = zext i1 %icmpEq434 to i32
  call void @assert_ft(i32 %zext435, i32 35)
  %zext369 = zext i1 %icmpEq368 to i32
  call void @assert_ft(i32 %zext369, i32 35)
  %zext355 = zext i1 %icmpEq354 to i32
  call void @assert_ft(i32 %zext355, i32 35)
  %icmpEq342 = icmp eq i32 %cfg_DiffPhi145, %113
  %133 = icmp eq i32 %110, %114
  %icmpEq436 = icmp eq i1 %icmpEq342, %133
  %zext437 = zext i1 %icmpEq436 to i32
  call void @assert_ft(i32 %zext437, i32 35)
  %zext343 = zext i1 %icmpEq342 to i32
  %134 = zext i1 %133 to i32
  %icmpEq370 = icmp eq i32 %zext343, %134
  %zext371 = zext i1 %icmpEq370 to i32
  %135 = zext i1 %icmpEq370 to i32
  %icmpEq438 = icmp eq i32 %zext371, %135
  %zext439 = zext i1 %icmpEq438 to i32
  call void @assert_ft(i32 %zext439, i32 35)
  call void @assert_ft(i32 %zext371, i32 35)
  call void @assert_ft(i32 %zext343, i32 35)
  %icmpEq340 = icmp eq i32 %cfg_DestPhi144, %106
  %136 = icmp eq i32 %103, %107
  %137 = icmp eq i32 %103, %107
  %icmpEq440 = icmp eq i1 %136, %137
  %zext441 = zext i1 %icmpEq440 to i32
  call void @assert_ft(i32 %zext441, i32 35)
  %icmpEq344 = icmp eq i1 %icmpEq340, %136
  %138 = icmp eq i1 %136, %137
  %icmpEq372 = icmp eq i1 %icmpEq344, %138
  %zext373 = zext i1 %icmpEq372 to i32
  %139 = zext i1 %icmpEq372 to i32
  %icmpEq442 = icmp eq i32 %zext373, %139
  %zext443 = zext i1 %icmpEq442 to i32
  call void @assert_ft(i32 %zext443, i32 35)
  call void @assert_ft(i32 %zext373, i32 35)
  %zext345 = zext i1 %icmpEq344 to i32
  call void @assert_ft(i32 %zext345, i32 35)
  %zext341 = zext i1 %icmpEq340 to i32
  %140 = zext i1 %136 to i32
  %icmpEq444 = icmp eq i32 %zext341, %140
  %zext445 = zext i1 %icmpEq444 to i32
  call void @assert_ft(i32 %zext445, i32 35)
  call void @assert_ft(i32 %zext341, i32 35)
  %icmpEq338 = icmp eq i64 %indvars.iv, %99
  %141 = icmp eq i64 %98, %100
  %icmpEq374 = icmp eq i1 %icmpEq338, %141
  %142 = icmp eq i1 %141, %141
  %icmpEq446 = icmp eq i1 %icmpEq374, %142
  %zext447 = zext i1 %icmpEq446 to i32
  call void @assert_ft(i32 %zext447, i32 35)
  %zext375 = zext i1 %icmpEq374 to i32
  call void @assert_ft(i32 %zext375, i32 35)
  %zext339 = zext i1 %icmpEq338 to i32
  %143 = zext i1 %141 to i32
  %144 = zext i1 %141 to i32
  %icmpEq448 = icmp eq i32 %143, %144
  %zext449 = zext i1 %icmpEq448 to i32
  call void @assert_ft(i32 %zext449, i32 35)
  %icmpEq346 = icmp eq i32 %zext339, %143
  %zext347 = zext i1 %icmpEq346 to i32
  %145 = zext i1 %icmpEq346 to i32
  %icmpEq376 = icmp eq i32 %zext347, %145
  %146 = icmp eq i32 %145, %145
  %icmpEq450 = icmp eq i1 %icmpEq376, %146
  %zext451 = zext i1 %icmpEq450 to i32
  call void @assert_ft(i32 %zext451, i32 35)
  %zext377 = zext i1 %icmpEq376 to i32
  call void @assert_ft(i32 %zext377, i32 35)
  call void @assert_ft(i32 %zext347, i32 35)
  call void @assert_ft(i32 %zext339, i32 35)
  %147 = xor i32 %cfg_DestPhi144, %cfg_DiffPhi145
  %148 = xor i32 %103, %110
  %icmpEq452 = icmp eq i32 %147, %148
  %zext453 = zext i1 %icmpEq452 to i32
  call void @assert_ft(i32 %zext453, i32 35)
  %cfg_icmpEq146 = icmp eq i32 %147, 385878278
  %149 = icmp eq i32 %148, 385878278
  %icmpEq378 = icmp eq i1 %cfg_icmpEq146, %149
  %zext379 = zext i1 %icmpEq378 to i32
  %150 = zext i1 %icmpEq378 to i32
  %icmpEq454 = icmp eq i32 %zext379, %150
  %zext455 = zext i1 %icmpEq454 to i32
  call void @assert_ft(i32 %zext455, i32 35)
  call void @assert_ft(i32 %zext379, i32 35)
  %cfg_zext147 = zext i1 %cfg_icmpEq146 to i32
  %151 = zext i1 %149 to i32
  %icmpEq348 = icmp eq i32 %cfg_zext147, %151
  %152 = icmp eq i32 %151, %151
  %icmpEq456 = icmp eq i1 %icmpEq348, %152
  %zext457 = zext i1 %icmpEq456 to i32
  call void @assert_ft(i32 %zext457, i32 35)
  %zext349 = zext i1 %icmpEq348 to i32
  %153 = zext i1 %152 to i32
  %icmpEq380 = icmp eq i32 %zext349, %153
  %zext381 = zext i1 %icmpEq380 to i32
  %154 = zext i1 %icmpEq380 to i32
  %icmpEq458 = icmp eq i32 %zext381, %154
  %zext459 = zext i1 %icmpEq458 to i32
  call void @assert_ft(i32 %zext459, i32 35)
  call void @assert_ft(i32 %zext381, i32 35)
  call void @assert_ft(i32 %zext349, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext147, i32 %147, i32 35)
  %155 = trunc i64 %indvars.iv to i32
  %156 = trunc i64 %98 to i32
  %icmpEq460 = icmp eq i32 %155, %156
  %zext461 = zext i1 %icmpEq460 to i32
  call void @assert_ft(i32 %zext461, i32 35)
  %157 = tail call i32 @ReverseBits(i32 noundef %155, i32 noundef %26)
  %158 = getelementptr inbounds float, ptr %2, i64 %indvars.iv
  %159 = getelementptr inbounds float, ptr %2, i64 %98
  %160 = getelementptr inbounds float, ptr %2, i64 %indvars.iv
  %161 = getelementptr inbounds float, ptr %2, i64 %98
  %162 = getelementptr inbounds float, ptr %2, i64 %indvars.iv
  %163 = getelementptr inbounds float, ptr %2, i64 %98
  %164 = load float, ptr %158, align 4
  %165 = load float, ptr %159, align 4
  %166 = load float, ptr %158, align 4
  %167 = load float, ptr %159, align 4
  %168 = load float, ptr %158, align 4
  %169 = load float, ptr %159, align 4
  %170 = load float, ptr %158, align 4
  %171 = load float, ptr %159, align 4
  %172 = zext i32 %157 to i64
  %173 = zext i32 %157 to i64
  %icmpEq462 = icmp eq i64 %172, %173
  %zext463 = zext i1 %icmpEq462 to i32
  call void @assert_ft(i32 %zext463, i32 35)
  %174 = zext i32 %157 to i64
  %icmpEq382 = icmp eq i64 %172, %174
  %zext383 = zext i1 %icmpEq382 to i32
  call void @assert_ft(i32 %zext383, i32 35)
  %175 = zext i32 %157 to i64
  %176 = zext i32 %157 to i64
  %icmpEq464 = icmp eq i64 %175, %176
  %zext465 = zext i1 %icmpEq464 to i32
  call void @assert_ft(i32 %zext465, i32 35)
  %icmpEq350 = icmp eq i64 %172, %175
  %zext351 = zext i1 %icmpEq350 to i32
  call void @assert_ft(i32 %zext351, i32 35)
  %177 = getelementptr inbounds float, ptr %4, i64 %172
  %178 = getelementptr inbounds float, ptr %4, i64 %173
  %179 = getelementptr inbounds float, ptr %4, i64 %172
  %180 = getelementptr inbounds float, ptr %4, i64 %173
  store float %164, ptr %177, align 4
  %181 = select i1 %44, i32 488637982, i32 437256987
  %182 = select i1 %44, i32 488637982, i32 437256987
  %icmpEq466 = icmp eq i32 %181, %182
  %zext467 = zext i1 %icmpEq466 to i32
  call void @assert_ft(i32 %zext467, i32 35)
  %183 = select i1 %44, i32 488637982, i32 437256987
  %icmpEq384 = icmp eq i32 %181, %183
  %zext385 = zext i1 %icmpEq384 to i32
  call void @assert_ft(i32 %zext385, i32 35)
  %184 = xor i32 385878278, %181
  %185 = xor i32 385878278, %182
  %icmpEq468 = icmp eq i32 %184, %185
  %zext469 = zext i1 %icmpEq468 to i32
  call void @assert_ft(i32 %zext469, i32 35)
  %186 = xor i32 385878278, %181
  %icmpEq352 = icmp eq i32 %184, %186
  %zext353 = zext i1 %icmpEq352 to i32
  %187 = zext i1 %icmpEq352 to i32
  %188 = zext i1 %icmpEq352 to i32
  %icmpEq470 = icmp eq i32 %187, %188
  %zext471 = zext i1 %icmpEq470 to i32
  call void @assert_ft(i32 %zext471, i32 35)
  %icmpEq386 = icmp eq i32 %zext353, %187
  %zext387 = zext i1 %icmpEq386 to i32
  call void @assert_ft(i32 %zext387, i32 35)
  call void @assert_ft(i32 %zext353, i32 35)
  br i1 %44, label %198, label %189

189:                                              ; preds = %97
  %cfg_DestPhi148 = phi i32 [ 385878278, %97 ]
  %190 = phi i32 [ 385878278, %97 ]
  %cfg_DiffPhi149 = phi i32 [ %184, %97 ]
  %191 = phi i32 [ %185, %97 ]
  %icmpEq474 = icmp eq i32 %cfg_DiffPhi149, %191
  %zext475 = zext i1 %icmpEq474 to i32
  call void @assert_ft(i32 %zext475, i32 35)
  %icmpEq472 = icmp eq i32 %cfg_DestPhi148, %190
  %192 = icmp eq i32 %190, %190
  %icmpEq476 = icmp eq i1 %icmpEq472, %192
  %zext477 = zext i1 %icmpEq476 to i32
  call void @assert_ft(i32 %zext477, i32 35)
  %zext473 = zext i1 %icmpEq472 to i32
  call void @assert_ft(i32 %zext473, i32 35)
  %193 = xor i32 %cfg_DestPhi148, %cfg_DiffPhi149
  %cfg_icmpEq150 = icmp eq i32 %193, 437256987
  %194 = icmp eq i32 %193, 437256987
  %icmpEq478 = icmp eq i1 %cfg_icmpEq150, %194
  %zext479 = zext i1 %icmpEq478 to i32
  call void @assert_ft(i32 %zext479, i32 35)
  %cfg_zext151 = zext i1 %cfg_icmpEq150 to i32
  call void @assert_cfg_ft(i32 %cfg_zext151, i32 %193, i32 35)
  %195 = getelementptr inbounds float, ptr %3, i64 %indvars.iv
  %196 = load float, ptr %195, align 4
  %197 = load float, ptr %195, align 4
  br label %198

198:                                              ; preds = %189, %97
  %199 = phi float [ %196, %189 ], [ 0.000000e+00, %97 ]
  %200 = phi float [ %197, %189 ], [ 0.000000e+00, %97 ]
  %cfg_DestPhi152 = phi i32 [ 385878278, %97 ], [ 437256987, %189 ]
  %201 = phi i32 [ 385878278, %97 ], [ 437256987, %189 ]
  %cfg_DiffPhi153 = phi i32 [ %184, %97 ], [ 120587525, %189 ]
  %202 = phi i32 [ %185, %97 ], [ 120587525, %189 ]
  %icmpEq482 = icmp eq i32 %cfg_DiffPhi153, %202
  %zext483 = zext i1 %icmpEq482 to i32
  call void @assert_ft(i32 %zext483, i32 35)
  %icmpEq480 = icmp eq i32 %cfg_DestPhi152, %201
  %203 = icmp eq i32 %201, %201
  %icmpEq484 = icmp eq i1 %icmpEq480, %203
  %zext485 = zext i1 %icmpEq484 to i32
  call void @assert_ft(i32 %zext485, i32 35)
  %zext481 = zext i1 %icmpEq480 to i32
  call void @assert_ft(i32 %zext481, i32 35)
  %204 = xor i32 %cfg_DestPhi152, %cfg_DiffPhi153
  %cfg_icmpEq154 = icmp eq i32 %204, 488637982
  %205 = icmp eq i32 %204, 488637982
  %icmpEq486 = icmp eq i1 %cfg_icmpEq154, %205
  %zext487 = zext i1 %icmpEq486 to i32
  call void @assert_ft(i32 %zext487, i32 35)
  %cfg_zext155 = zext i1 %cfg_icmpEq154 to i32
  call void @assert_cfg_ft(i32 %cfg_zext155, i32 %204, i32 35)
  %206 = getelementptr inbounds float, ptr %5, i64 %172
  store float %199, ptr %206, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %207 = add nuw nsw i64 %98, 1
  %icmpEq488 = icmp eq i64 %indvars.iv.next, %207
  %zext489 = zext i1 %icmpEq488 to i32
  call void @assert_ft(i32 %zext489, i32 35)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %208 = select i1 %exitcond.not, i32 334496290, i32 385878278
  %209 = xor i32 488637982, %208
  br i1 %exitcond.not, label %.preheader102, label %97

.preheader.lr.ph:                                 ; preds = %._crit_edge112, %.preheader102
  %.095115 = phi i32 [ %383, %._crit_edge112 ], [ 2, %.preheader102 ]
  %210 = phi i32 [ %383, %._crit_edge112 ], [ 2, %.preheader102 ]
  %211 = phi i32 [ %383, %._crit_edge112 ], [ 2, %.preheader102 ]
  %.096114 = phi i32 [ %.095115, %._crit_edge112 ], [ 1, %.preheader102 ]
  %212 = phi i32 [ %210, %._crit_edge112 ], [ 1, %.preheader102 ]
  %213 = phi i32 [ %.095115, %._crit_edge112 ], [ 1, %.preheader102 ]
  %214 = phi i32 [ %210, %._crit_edge112 ], [ 1, %.preheader102 ]
  %cfg_DestPhi156 = phi i32 [ 334496290, %.preheader102 ], [ 745538333, %._crit_edge112 ]
  %215 = phi i32 [ 334496290, %.preheader102 ], [ 745538333, %._crit_edge112 ]
  %216 = phi i32 [ 334496290, %.preheader102 ], [ 745538333, %._crit_edge112 ]
  %217 = phi i32 [ 334496290, %.preheader102 ], [ 745538333, %._crit_edge112 ]
  %cfg_DiffPhi157 = phi i32 [ %94, %.preheader102 ], [ %386, %._crit_edge112 ]
  %218 = phi i32 [ %95, %.preheader102 ], [ %386, %._crit_edge112 ]
  %219 = phi i32 [ %94, %.preheader102 ], [ %386, %._crit_edge112 ]
  %220 = phi i32 [ %95, %.preheader102 ], [ %386, %._crit_edge112 ]
  %icmpEq518 = icmp eq i32 %219, %220
  %zext519 = zext i1 %icmpEq518 to i32
  call void @assert_ft(i32 %zext519, i32 35)
  %icmpEq516 = icmp eq i32 %cfg_DiffPhi157, %218
  %221 = icmp eq i32 %218, %218
  %icmpEq520 = icmp eq i1 %icmpEq516, %221
  %zext521 = zext i1 %icmpEq520 to i32
  call void @assert_ft(i32 %zext521, i32 35)
  %zext517 = zext i1 %icmpEq516 to i32
  call void @assert_ft(i32 %zext517, i32 35)
  %icmpEq514 = icmp eq i32 %216, %217
  %zext515 = zext i1 %icmpEq514 to i32
  %222 = zext i1 %icmpEq514 to i32
  %icmpEq522 = icmp eq i32 %zext515, %222
  %zext523 = zext i1 %icmpEq522 to i32
  call void @assert_ft(i32 %zext523, i32 35)
  call void @assert_ft(i32 %zext515, i32 35)
  %icmpEq512 = icmp eq i32 %cfg_DestPhi156, %215
  %zext513 = zext i1 %icmpEq512 to i32
  call void @assert_ft(i32 %zext513, i32 35)
  %icmpEq510 = icmp eq i32 %213, %214
  %223 = icmp eq i32 %214, %214
  %icmpEq524 = icmp eq i1 %icmpEq510, %223
  %zext525 = zext i1 %icmpEq524 to i32
  call void @assert_ft(i32 %zext525, i32 35)
  %zext511 = zext i1 %icmpEq510 to i32
  call void @assert_ft(i32 %zext511, i32 35)
  %icmpEq508 = icmp eq i32 %.096114, %212
  %zext509 = zext i1 %icmpEq508 to i32
  %224 = zext i1 %icmpEq508 to i32
  %icmpEq526 = icmp eq i32 %zext509, %224
  %zext527 = zext i1 %icmpEq526 to i32
  call void @assert_ft(i32 %zext527, i32 35)
  call void @assert_ft(i32 %zext509, i32 35)
  %icmpEq506 = icmp eq i32 %210, %211
  %zext507 = zext i1 %icmpEq506 to i32
  call void @assert_ft(i32 %zext507, i32 35)
  %icmpEq496 = icmp eq i32 %cfg_DiffPhi157, %219
  %225 = icmp eq i32 %218, %220
  %icmpEq528 = icmp eq i1 %icmpEq496, %225
  %zext529 = zext i1 %icmpEq528 to i32
  call void @assert_ft(i32 %zext529, i32 35)
  %zext497 = zext i1 %icmpEq496 to i32
  call void @assert_ft(i32 %zext497, i32 35)
  %icmpEq494 = icmp eq i32 %cfg_DestPhi156, %216
  %226 = icmp eq i32 %215, %217
  %227 = icmp eq i32 %215, %217
  %icmpEq530 = icmp eq i1 %226, %227
  %zext531 = zext i1 %icmpEq530 to i32
  call void @assert_ft(i32 %zext531, i32 35)
  %icmpEq498 = icmp eq i1 %icmpEq494, %226
  %zext499 = zext i1 %icmpEq498 to i32
  call void @assert_ft(i32 %zext499, i32 35)
  %zext495 = zext i1 %icmpEq494 to i32
  %228 = zext i1 %226 to i32
  %icmpEq532 = icmp eq i32 %zext495, %228
  %zext533 = zext i1 %icmpEq532 to i32
  call void @assert_ft(i32 %zext533, i32 35)
  call void @assert_ft(i32 %zext495, i32 35)
  %icmpEq492 = icmp eq i32 %.096114, %213
  %zext493 = zext i1 %icmpEq492 to i32
  %229 = zext i1 %icmpEq492 to i32
  %230 = zext i1 %icmpEq492 to i32
  %icmpEq534 = icmp eq i32 %229, %230
  %zext535 = zext i1 %icmpEq534 to i32
  call void @assert_ft(i32 %zext535, i32 35)
  %icmpEq500 = icmp eq i32 %zext493, %229
  %zext501 = zext i1 %icmpEq500 to i32
  call void @assert_ft(i32 %zext501, i32 35)
  call void @assert_ft(i32 %zext493, i32 35)
  %icmpEq490 = icmp eq i32 %.095115, %210
  %231 = icmp eq i32 %210, %211
  %icmpEq536 = icmp eq i1 %icmpEq490, %231
  %zext537 = zext i1 %icmpEq536 to i32
  call void @assert_ft(i32 %zext537, i32 35)
  %zext491 = zext i1 %icmpEq490 to i32
  call void @assert_ft(i32 %zext491, i32 35)
  %232 = xor i32 %cfg_DestPhi156, %cfg_DiffPhi157
  %233 = xor i32 %215, %218
  %234 = xor i32 %215, %218
  %icmpEq538 = icmp eq i32 %233, %234
  %zext539 = zext i1 %icmpEq538 to i32
  call void @assert_ft(i32 %zext539, i32 35)
  %icmpEq502 = icmp eq i32 %232, %233
  %zext503 = zext i1 %icmpEq502 to i32
  call void @assert_ft(i32 %zext503, i32 35)
  %cfg_icmpEq158 = icmp eq i32 %232, 540019981
  %235 = icmp eq i32 %233, 540019981
  %icmpEq540 = icmp eq i1 %cfg_icmpEq158, %235
  %zext541 = zext i1 %icmpEq540 to i32
  call void @assert_ft(i32 %zext541, i32 35)
  %cfg_zext159 = zext i1 %cfg_icmpEq158 to i32
  call void @assert_cfg_ft(i32 %cfg_zext159, i32 %232, i32 35)
  %236 = uitofp i32 %.095115 to double
  %237 = uitofp i32 %210 to double
  %238 = uitofp i32 %210 to double
  %239 = fdiv double %spec.select, %236
  %240 = fdiv double %25, %237
  %241 = fdiv double %spec.select, %236
  %242 = fdiv double %25, %237
  %243 = fmul double %239, -2.000000e+00
  %244 = fmul double %240, -2.000000e+00
  %245 = fmul double %239, -2.000000e+00
  %246 = fmul double %240, -2.000000e+00
  %247 = tail call double @sin(double noundef %243) #17
  %248 = tail call double @sin(double %239)
  %249 = fneg double %248
  %250 = fneg double %248
  %251 = fneg double %248
  %252 = fneg double %248
  %253 = tail call double @cos(double noundef %243) #17
  %cos = tail call double @cos(double %239)
  %254 = fmul double %cos, 2.000000e+00
  %255 = fmul double %cos, 2.000000e+00
  %256 = fmul double %cos, 2.000000e+00
  %257 = fmul double %cos, 2.000000e+00
  %.not123 = icmp eq i32 %.096114, 0
  %258 = icmp eq i32 %212, 0
  %icmpEq542 = icmp eq i1 %.not123, %258
  %zext543 = zext i1 %icmpEq542 to i32
  call void @assert_ft(i32 %zext543, i32 35)
  %259 = icmp eq i32 %.096114, 0
  %icmpEq504 = icmp eq i1 %.not123, %259
  %zext505 = zext i1 %icmpEq504 to i32
  call void @assert_ft(i32 %zext505, i32 35)
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv124 = phi i32 [ %.096114, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge ]
  %260 = phi i32 [ %212, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge ]
  %261 = phi i32 [ %.096114, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge ]
  %262 = phi i32 [ %212, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge ]
  %.1111 = phi i32 [ 0, %.preheader.lr.ph ], [ %373, %._crit_edge ]
  %263 = phi i32 [ 0, %.preheader.lr.ph ], [ %373, %._crit_edge ]
  %264 = phi i32 [ 0, %.preheader.lr.ph ], [ %373, %._crit_edge ]
  %265 = phi i32 [ 0, %.preheader.lr.ph ], [ %373, %._crit_edge ]
  %cfg_DestPhi160 = phi i32 [ 540019981, %.preheader.lr.ph ], [ 694158366, %._crit_edge ]
  %266 = phi i32 [ 540019981, %.preheader.lr.ph ], [ 694158366, %._crit_edge ]
  %267 = phi i32 [ 540019981, %.preheader.lr.ph ], [ 694158366, %._crit_edge ]
  %268 = phi i32 [ 540019981, %.preheader.lr.ph ], [ 694158366, %._crit_edge ]
  %cfg_DiffPhi161 = phi i32 [ 57675281, %.preheader.lr.ph ], [ %377, %._crit_edge ]
  %269 = phi i32 [ 57675281, %.preheader.lr.ph ], [ %377, %._crit_edge ]
  %270 = phi i32 [ 57675281, %.preheader.lr.ph ], [ %377, %._crit_edge ]
  %271 = phi i32 [ 57675281, %.preheader.lr.ph ], [ %377, %._crit_edge ]
  %icmpEq574 = icmp eq i32 %270, %271
  %zext575 = zext i1 %icmpEq574 to i32
  call void @assert_ft(i32 %zext575, i32 35)
  %icmpEq572 = icmp eq i32 %cfg_DiffPhi161, %269
  %272 = icmp eq i32 %269, %269
  %icmpEq576 = icmp eq i1 %icmpEq572, %272
  %zext577 = zext i1 %icmpEq576 to i32
  call void @assert_ft(i32 %zext577, i32 35)
  %zext573 = zext i1 %icmpEq572 to i32
  call void @assert_ft(i32 %zext573, i32 35)
  %icmpEq570 = icmp eq i32 %267, %268
  %zext571 = zext i1 %icmpEq570 to i32
  %273 = zext i1 %icmpEq570 to i32
  %icmpEq578 = icmp eq i32 %zext571, %273
  %zext579 = zext i1 %icmpEq578 to i32
  call void @assert_ft(i32 %zext579, i32 35)
  call void @assert_ft(i32 %zext571, i32 35)
  %icmpEq568 = icmp eq i32 %cfg_DestPhi160, %266
  %zext569 = zext i1 %icmpEq568 to i32
  call void @assert_ft(i32 %zext569, i32 35)
  %icmpEq566 = icmp eq i32 %264, %265
  %274 = icmp eq i32 %265, %265
  %icmpEq580 = icmp eq i1 %icmpEq566, %274
  %zext581 = zext i1 %icmpEq580 to i32
  call void @assert_ft(i32 %zext581, i32 35)
  %zext567 = zext i1 %icmpEq566 to i32
  call void @assert_ft(i32 %zext567, i32 35)
  %icmpEq564 = icmp eq i32 %.1111, %263
  %zext565 = zext i1 %icmpEq564 to i32
  %275 = zext i1 %icmpEq564 to i32
  %icmpEq582 = icmp eq i32 %zext565, %275
  %zext583 = zext i1 %icmpEq582 to i32
  call void @assert_ft(i32 %zext583, i32 35)
  call void @assert_ft(i32 %zext565, i32 35)
  %icmpEq562 = icmp eq i32 %261, %262
  %zext563 = zext i1 %icmpEq562 to i32
  call void @assert_ft(i32 %zext563, i32 35)
  %icmpEq560 = icmp eq i32 %indvars.iv124, %260
  %276 = icmp eq i32 %260, %260
  %icmpEq584 = icmp eq i1 %icmpEq560, %276
  %zext585 = zext i1 %icmpEq584 to i32
  call void @assert_ft(i32 %zext585, i32 35)
  %zext561 = zext i1 %icmpEq560 to i32
  call void @assert_ft(i32 %zext561, i32 35)
  %icmpEq550 = icmp eq i32 %cfg_DiffPhi161, %270
  %zext551 = zext i1 %icmpEq550 to i32
  %277 = zext i1 %icmpEq550 to i32
  %icmpEq586 = icmp eq i32 %zext551, %277
  %zext587 = zext i1 %icmpEq586 to i32
  call void @assert_ft(i32 %zext587, i32 35)
  call void @assert_ft(i32 %zext551, i32 35)
  %icmpEq548 = icmp eq i32 %cfg_DestPhi160, %267
  %278 = icmp eq i32 %266, %268
  %icmpEq552 = icmp eq i1 %icmpEq548, %278
  %279 = icmp eq i1 %278, %278
  %icmpEq588 = icmp eq i1 %icmpEq552, %279
  %zext589 = zext i1 %icmpEq588 to i32
  call void @assert_ft(i32 %zext589, i32 35)
  %zext553 = zext i1 %icmpEq552 to i32
  call void @assert_ft(i32 %zext553, i32 35)
  %zext549 = zext i1 %icmpEq548 to i32
  call void @assert_ft(i32 %zext549, i32 35)
  %icmpEq546 = icmp eq i32 %.1111, %264
  %280 = icmp eq i32 %263, %265
  %icmpEq590 = icmp eq i1 %icmpEq546, %280
  %zext591 = zext i1 %icmpEq590 to i32
  call void @assert_ft(i32 %zext591, i32 35)
  %zext547 = zext i1 %icmpEq546 to i32
  %281 = zext i1 %280 to i32
  %icmpEq554 = icmp eq i32 %zext547, %281
  %zext555 = zext i1 %icmpEq554 to i32
  %282 = zext i1 %icmpEq554 to i32
  %icmpEq592 = icmp eq i32 %zext555, %282
  %zext593 = zext i1 %icmpEq592 to i32
  call void @assert_ft(i32 %zext593, i32 35)
  call void @assert_ft(i32 %zext555, i32 35)
  call void @assert_ft(i32 %zext547, i32 35)
  %icmpEq544 = icmp eq i32 %indvars.iv124, %261
  %zext545 = zext i1 %icmpEq544 to i32
  %283 = zext i1 %icmpEq544 to i32
  %icmpEq594 = icmp eq i32 %zext545, %283
  %zext595 = zext i1 %icmpEq594 to i32
  call void @assert_ft(i32 %zext595, i32 35)
  call void @assert_ft(i32 %zext545, i32 35)
  %284 = xor i32 %cfg_DestPhi160, %cfg_DiffPhi161
  %285 = xor i32 %266, %269
  %icmpEq556 = icmp eq i32 %284, %285
  %286 = icmp eq i32 %285, %285
  %icmpEq596 = icmp eq i1 %icmpEq556, %286
  %zext597 = zext i1 %icmpEq596 to i32
  call void @assert_ft(i32 %zext597, i32 35)
  %zext557 = zext i1 %icmpEq556 to i32
  call void @assert_ft(i32 %zext557, i32 35)
  %cfg_icmpEq162 = icmp eq i32 %284, 591397660
  %cfg_zext163 = zext i1 %cfg_icmpEq162 to i32
  %287 = zext i1 %cfg_icmpEq162 to i32
  %icmpEq598 = icmp eq i32 %cfg_zext163, %287
  %zext599 = zext i1 %icmpEq598 to i32
  call void @assert_ft(i32 %zext599, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext163, i32 %284, i32 35)
  %288 = select i1 %.not123, i32 694158366, i32 642789410
  %289 = select i1 %258, i32 694158366, i32 642789410
  %icmpEq558 = icmp eq i32 %288, %289
  %290 = icmp eq i32 %289, %289
  %icmpEq600 = icmp eq i1 %icmpEq558, %290
  %zext601 = zext i1 %icmpEq600 to i32
  call void @assert_ft(i32 %zext601, i32 35)
  %zext559 = zext i1 %icmpEq558 to i32
  call void @assert_ft(i32 %zext559, i32 35)
  %291 = xor i32 591397660, %288
  br i1 %.not123, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110, %.preheader
  %.093109 = phi i32 [ %364, %.lr.ph110 ], [ %.1111, %.preheader ]
  %292 = phi i32 [ %365, %.lr.ph110 ], [ %263, %.preheader ]
  %.sroa.4.0108 = phi double [ %307, %.lr.ph110 ], [ %249, %.preheader ]
  %293 = phi double [ %307, %.lr.ph110 ], [ %250, %.preheader ]
  %.sroa.8.0107 = phi double [ %.sroa.4.0108, %.lr.ph110 ], [ %247, %.preheader ]
  %294 = phi double [ %293, %.lr.ph110 ], [ %247, %.preheader ]
  %.sroa.48.0105 = phi double [ %304, %.lr.ph110 ], [ %cos, %.preheader ]
  %295 = phi double [ %304, %.lr.ph110 ], [ %cos, %.preheader ]
  %.sroa.810.0104 = phi double [ %.sroa.48.0105, %.lr.ph110 ], [ %253, %.preheader ]
  %296 = phi double [ %295, %.lr.ph110 ], [ %253, %.preheader ]
  %cfg_DestPhi164 = phi i32 [ 591397660, %.preheader ], [ 642789410, %.lr.ph110 ]
  %297 = phi i32 [ 591397660, %.preheader ], [ 642789410, %.lr.ph110 ]
  %cfg_DiffPhi165 = phi i32 [ %291, %.preheader ], [ %367, %.lr.ph110 ]
  %298 = phi i32 [ %291, %.preheader ], [ %367, %.lr.ph110 ]
  %icmpEq606 = icmp eq i32 %cfg_DiffPhi165, %298
  %zext607 = zext i1 %icmpEq606 to i32
  call void @assert_ft(i32 %zext607, i32 35)
  %icmpEq604 = icmp eq i32 %cfg_DestPhi164, %297
  %299 = icmp eq i32 %297, %297
  %icmpEq608 = icmp eq i1 %icmpEq604, %299
  %zext609 = zext i1 %icmpEq608 to i32
  call void @assert_ft(i32 %zext609, i32 35)
  %zext605 = zext i1 %icmpEq604 to i32
  call void @assert_ft(i32 %zext605, i32 35)
  %icmpEq602 = icmp eq i32 %.093109, %292
  %zext603 = zext i1 %icmpEq602 to i32
  %300 = zext i1 %icmpEq602 to i32
  %icmpEq610 = icmp eq i32 %zext603, %300
  %zext611 = zext i1 %icmpEq610 to i32
  call void @assert_ft(i32 %zext611, i32 35)
  call void @assert_ft(i32 %zext603, i32 35)
  %301 = xor i32 %cfg_DestPhi164, %cfg_DiffPhi165
  %cfg_icmpEq166 = icmp eq i32 %301, 642789410
  %cfg_zext167 = zext i1 %cfg_icmpEq166 to i32
  %302 = zext i1 %cfg_icmpEq166 to i32
  %icmpEq612 = icmp eq i32 %cfg_zext167, %302
  %zext613 = zext i1 %icmpEq612 to i32
  call void @assert_ft(i32 %zext613, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext167, i32 %301, i32 35)
  %303 = fneg double %.sroa.810.0104
  %304 = tail call double @llvm.fmuladd.f64(double %254, double %.sroa.48.0105, double %303)
  %305 = fneg double %.sroa.8.0107
  %306 = fneg double %294
  %307 = tail call double @llvm.fmuladd.f64(double %254, double %.sroa.4.0108, double %305)
  %308 = add i32 %.093109, %.096114
  %309 = add i32 %292, %212
  %icmpEq614 = icmp eq i32 %308, %309
  %zext615 = zext i1 %icmpEq614 to i32
  call void @assert_ft(i32 %zext615, i32 35)
  %310 = zext i32 %308 to i64
  %311 = getelementptr inbounds float, ptr %4, i64 %310
  %312 = load float, ptr %311, align 4
  %313 = fpext float %312 to double
  %314 = fpext float %312 to double
  %315 = getelementptr inbounds float, ptr %5, i64 %310
  %316 = getelementptr inbounds float, ptr %5, i64 %310
  %317 = load float, ptr %315, align 4
  %318 = load float, ptr %316, align 4
  %319 = fpext float %317 to double
  %320 = fpext float %318 to double
  %321 = fneg double %307
  %322 = fneg double %307
  %323 = fmul double %321, %319
  %324 = fmul double %322, %320
  %325 = tail call double @llvm.fmuladd.f64(double %304, double %313, double %323)
  %326 = fmul double %307, %313
  %327 = fmul double %307, %314
  %328 = tail call double @llvm.fmuladd.f64(double %304, double %319, double %326)
  %329 = zext i32 %.093109 to i64
  %330 = zext i32 %292 to i64
  %icmpEq616 = icmp eq i64 %329, %330
  %zext617 = zext i1 %icmpEq616 to i32
  call void @assert_ft(i32 %zext617, i32 35)
  %331 = getelementptr inbounds float, ptr %4, i64 %329
  %332 = load float, ptr %331, align 4
  %333 = fpext float %332 to double
  %334 = fsub double %333, %325
  %335 = fsub double %333, %325
  %336 = fptrunc double %334 to float
  %337 = fptrunc double %335 to float
  store float %336, ptr %311, align 4
  %338 = getelementptr inbounds float, ptr %5, i64 %329
  %339 = getelementptr inbounds float, ptr %5, i64 %330
  %340 = load float, ptr %338, align 4
  %341 = load float, ptr %339, align 4
  %342 = fpext float %340 to double
  %343 = fpext float %341 to double
  %344 = fsub double %342, %328
  %345 = fsub double %343, %328
  %346 = fptrunc double %344 to float
  %347 = fptrunc double %345 to float
  store float %346, ptr %315, align 4
  %348 = load float, ptr %331, align 4
  %349 = load float, ptr %331, align 4
  %350 = fpext float %348 to double
  %351 = fpext float %349 to double
  %352 = fadd double %325, %350
  %353 = fadd double %325, %351
  %354 = fptrunc double %352 to float
  %355 = fptrunc double %353 to float
  store float %354, ptr %331, align 4
  %356 = load float, ptr %338, align 4
  %357 = load float, ptr %339, align 4
  %358 = fpext float %356 to double
  %359 = fpext float %357 to double
  %360 = fadd double %328, %358
  %361 = fadd double %328, %359
  %362 = fptrunc double %360 to float
  %363 = fptrunc double %361 to float
  store float %362, ptr %338, align 4
  %364 = add i32 %.093109, 1
  %365 = add i32 %292, 1
  %icmpEq618 = icmp eq i32 %364, %365
  %zext619 = zext i1 %icmpEq618 to i32
  call void @assert_ft(i32 %zext619, i32 35)
  %exitcond126.not = icmp eq i32 %364, %indvars.iv124
  %366 = select i1 %exitcond126.not, i32 694158366, i32 642789410
  %367 = xor i32 642789410, %366
  br i1 %exitcond126.not, label %._crit_edge, label %.lr.ph110

._crit_edge:                                      ; preds = %.lr.ph110, %.preheader
  %cfg_DestPhi168 = phi i32 [ 642789410, %.lr.ph110 ], [ 591397660, %.preheader ]
  %368 = phi i32 [ 642789410, %.lr.ph110 ], [ 591397660, %.preheader ]
  %cfg_DiffPhi169 = phi i32 [ %367, %.lr.ph110 ], [ %291, %.preheader ]
  %369 = phi i32 [ %367, %.lr.ph110 ], [ %291, %.preheader ]
  %icmpEq622 = icmp eq i32 %cfg_DiffPhi169, %369
  %zext623 = zext i1 %icmpEq622 to i32
  call void @assert_ft(i32 %zext623, i32 35)
  %icmpEq620 = icmp eq i32 %cfg_DestPhi168, %368
  %370 = icmp eq i32 %368, %368
  %icmpEq624 = icmp eq i1 %icmpEq620, %370
  %zext625 = zext i1 %icmpEq624 to i32
  call void @assert_ft(i32 %zext625, i32 35)
  %zext621 = zext i1 %icmpEq620 to i32
  call void @assert_ft(i32 %zext621, i32 35)
  %371 = xor i32 %cfg_DestPhi168, %cfg_DiffPhi169
  %cfg_icmpEq170 = icmp eq i32 %371, 694158366
  %372 = icmp eq i32 %371, 694158366
  %icmpEq626 = icmp eq i1 %cfg_icmpEq170, %372
  %zext627 = zext i1 %icmpEq626 to i32
  call void @assert_ft(i32 %zext627, i32 35)
  %cfg_zext171 = zext i1 %cfg_icmpEq170 to i32
  call void @assert_cfg_ft(i32 %cfg_zext171, i32 %371, i32 35)
  %373 = add i32 %.1111, %.095115
  %374 = icmp ult i32 %373, %0
  %375 = icmp ult i32 %373, %0
  %icmpEq628 = icmp eq i1 %374, %375
  %zext629 = zext i1 %icmpEq628 to i32
  call void @assert_ft(i32 %zext629, i32 35)
  %indvars.iv.next125 = add i32 %indvars.iv124, %.095115
  %376 = select i1 %374, i32 591397660, i32 745538333
  %377 = xor i32 694158366, %376
  br i1 %374, label %.preheader, label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge
  %cfg_DestPhi172 = phi i32 [ 694158366, %._crit_edge ]
  %378 = phi i32 [ 694158366, %._crit_edge ]
  %cfg_DiffPhi173 = phi i32 [ %377, %._crit_edge ]
  %379 = phi i32 [ %377, %._crit_edge ]
  %icmpEq632 = icmp eq i32 %cfg_DiffPhi173, %379
  %zext633 = zext i1 %icmpEq632 to i32
  call void @assert_ft(i32 %zext633, i32 35)
  %icmpEq630 = icmp eq i32 %cfg_DestPhi172, %378
  %380 = icmp eq i32 %378, %378
  %icmpEq634 = icmp eq i1 %icmpEq630, %380
  %zext635 = zext i1 %icmpEq634 to i32
  call void @assert_ft(i32 %zext635, i32 35)
  %zext631 = zext i1 %icmpEq630 to i32
  call void @assert_ft(i32 %zext631, i32 35)
  %381 = xor i32 %cfg_DestPhi172, %cfg_DiffPhi173
  %cfg_icmpEq174 = icmp eq i32 %381, 745538333
  %382 = icmp eq i32 %381, 745538333
  %icmpEq636 = icmp eq i1 %cfg_icmpEq174, %382
  %zext637 = zext i1 %icmpEq636 to i32
  call void @assert_ft(i32 %zext637, i32 35)
  %cfg_zext175 = zext i1 %cfg_icmpEq174 to i32
  call void @assert_cfg_ft(i32 %cfg_zext175, i32 %381, i32 35)
  %383 = shl i32 %.095115, 1
  %.not101 = icmp ugt i32 %383, %0
  %384 = icmp ugt i32 %383, %0
  %icmpEq638 = icmp eq i1 %.not101, %384
  %zext639 = zext i1 %icmpEq638 to i32
  call void @assert_ft(i32 %zext639, i32 35)
  %385 = select i1 %.not101, i32 796918034, i32 540019981
  %386 = xor i32 745538333, %385
  br i1 %.not101, label %._crit_edge117, label %.preheader.lr.ph

._crit_edge117:                                   ; preds = %._crit_edge112, %.preheader102
  %cfg_DestPhi176 = phi i32 [ 745538333, %._crit_edge112 ], [ 334496290, %.preheader102 ]
  %387 = phi i32 [ 745538333, %._crit_edge112 ], [ 334496290, %.preheader102 ]
  %388 = phi i32 [ 745538333, %._crit_edge112 ], [ 334496290, %.preheader102 ]
  %cfg_DiffPhi177 = phi i32 [ %386, %._crit_edge112 ], [ %94, %.preheader102 ]
  %389 = phi i32 [ %386, %._crit_edge112 ], [ %95, %.preheader102 ]
  %390 = phi i32 [ %386, %._crit_edge112 ], [ %94, %.preheader102 ]
  %391 = phi i32 [ %386, %._crit_edge112 ], [ %95, %.preheader102 ]
  %icmpEq654 = icmp eq i32 %390, %391
  %zext655 = zext i1 %icmpEq654 to i32
  call void @assert_ft(i32 %zext655, i32 35)
  %icmpEq652 = icmp eq i32 %cfg_DiffPhi177, %389
  %392 = icmp eq i32 %389, %389
  %icmpEq656 = icmp eq i1 %icmpEq652, %392
  %zext657 = zext i1 %icmpEq656 to i32
  call void @assert_ft(i32 %zext657, i32 35)
  %zext653 = zext i1 %icmpEq652 to i32
  call void @assert_ft(i32 %zext653, i32 35)
  %icmpEq650 = icmp eq i32 %387, %388
  %zext651 = zext i1 %icmpEq650 to i32
  %393 = zext i1 %icmpEq650 to i32
  %icmpEq658 = icmp eq i32 %zext651, %393
  %zext659 = zext i1 %icmpEq658 to i32
  call void @assert_ft(i32 %zext659, i32 35)
  call void @assert_ft(i32 %zext651, i32 35)
  %icmpEq642 = icmp eq i32 %cfg_DiffPhi177, %390
  %zext643 = zext i1 %icmpEq642 to i32
  call void @assert_ft(i32 %zext643, i32 35)
  %icmpEq640 = icmp eq i32 %cfg_DestPhi176, %387
  %394 = icmp eq i32 %387, %388
  %icmpEq660 = icmp eq i1 %icmpEq640, %394
  %zext661 = zext i1 %icmpEq660 to i32
  call void @assert_ft(i32 %zext661, i32 35)
  %395 = icmp eq i32 %cfg_DestPhi176, %387
  %icmpEq644 = icmp eq i1 %icmpEq640, %395
  %zext645 = zext i1 %icmpEq644 to i32
  call void @assert_ft(i32 %zext645, i32 35)
  %zext641 = zext i1 %icmpEq640 to i32
  %396 = zext i1 %394 to i32
  %icmpEq662 = icmp eq i32 %zext641, %396
  %zext663 = zext i1 %icmpEq662 to i32
  call void @assert_ft(i32 %zext663, i32 35)
  call void @assert_ft(i32 %zext641, i32 35)
  %397 = xor i32 %cfg_DestPhi176, %cfg_DiffPhi177
  %cfg_icmpEq178 = icmp eq i32 %397, 796918034
  %398 = icmp eq i32 %397, 796918034
  %399 = icmp eq i32 %397, 796918034
  %icmpEq664 = icmp eq i1 %398, %399
  %zext665 = zext i1 %icmpEq664 to i32
  call void @assert_ft(i32 %zext665, i32 35)
  %icmpEq646 = icmp eq i1 %cfg_icmpEq178, %398
  %zext647 = zext i1 %icmpEq646 to i32
  call void @assert_ft(i32 %zext647, i32 35)
  %cfg_zext179 = zext i1 %cfg_icmpEq178 to i32
  %400 = zext i1 %398 to i32
  %icmpEq666 = icmp eq i32 %cfg_zext179, %400
  %zext667 = zext i1 %icmpEq666 to i32
  call void @assert_ft(i32 %zext667, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext179, i32 %397, i32 35)
  %401 = select i1 %.not100, i32 1002438914, i32 848298524
  %402 = xor i32 796918034, %401
  %403 = xor i32 796918034, %401
  %404 = xor i32 796918034, %401
  %icmpEq668 = icmp eq i32 %403, %404
  %zext669 = zext i1 %icmpEq668 to i32
  call void @assert_ft(i32 %zext669, i32 35)
  %icmpEq648 = icmp eq i32 %402, %403
  %zext649 = zext i1 %icmpEq648 to i32
  call void @assert_ft(i32 %zext649, i32 35)
  br i1 %.not100, label %.loopexit, label %405

405:                                              ; preds = %._crit_edge117
  %cfg_DestPhi180 = phi i32 [ 796918034, %._crit_edge117 ]
  %406 = phi i32 [ 796918034, %._crit_edge117 ]
  %407 = phi i32 [ 796918034, %._crit_edge117 ]
  %408 = phi i32 [ 796918034, %._crit_edge117 ]
  %409 = phi i32 [ 796918034, %._crit_edge117 ]
  %410 = phi i32 [ 796918034, %._crit_edge117 ]
  %411 = phi i32 [ 796918034, %._crit_edge117 ]
  %cfg_DiffPhi181 = phi i32 [ %402, %._crit_edge117 ]
  %412 = phi i32 [ %403, %._crit_edge117 ]
  %413 = phi i32 [ %402, %._crit_edge117 ]
  %414 = phi i32 [ %403, %._crit_edge117 ]
  %415 = phi i32 [ %402, %._crit_edge117 ]
  %416 = phi i32 [ %403, %._crit_edge117 ]
  %417 = phi i32 [ %402, %._crit_edge117 ]
  %418 = phi i32 [ %403, %._crit_edge117 ]
  %icmpEq718 = icmp eq i32 %417, %418
  %zext719 = zext i1 %icmpEq718 to i32
  call void @assert_ft(i32 %zext719, i32 35)
  %icmpEq716 = icmp eq i32 %415, %416
  %419 = icmp eq i32 %416, %416
  %icmpEq720 = icmp eq i1 %icmpEq716, %419
  %zext721 = zext i1 %icmpEq720 to i32
  call void @assert_ft(i32 %zext721, i32 35)
  %zext717 = zext i1 %icmpEq716 to i32
  call void @assert_ft(i32 %zext717, i32 35)
  %icmpEq714 = icmp eq i32 %413, %414
  %zext715 = zext i1 %icmpEq714 to i32
  %420 = zext i1 %icmpEq714 to i32
  %icmpEq722 = icmp eq i32 %zext715, %420
  %zext723 = zext i1 %icmpEq722 to i32
  call void @assert_ft(i32 %zext723, i32 35)
  call void @assert_ft(i32 %zext715, i32 35)
  %icmpEq712 = icmp eq i32 %cfg_DiffPhi181, %412
  %zext713 = zext i1 %icmpEq712 to i32
  call void @assert_ft(i32 %zext713, i32 35)
  %icmpEq710 = icmp eq i32 %410, %411
  %421 = icmp eq i32 %411, %411
  %icmpEq724 = icmp eq i1 %icmpEq710, %421
  %zext725 = zext i1 %icmpEq724 to i32
  call void @assert_ft(i32 %zext725, i32 35)
  %zext711 = zext i1 %icmpEq710 to i32
  call void @assert_ft(i32 %zext711, i32 35)
  %icmpEq708 = icmp eq i32 %408, %409
  %zext709 = zext i1 %icmpEq708 to i32
  %422 = zext i1 %icmpEq708 to i32
  %icmpEq726 = icmp eq i32 %zext709, %422
  %zext727 = zext i1 %icmpEq726 to i32
  call void @assert_ft(i32 %zext727, i32 35)
  call void @assert_ft(i32 %zext709, i32 35)
  %icmpEq706 = icmp eq i32 %406, %407
  %zext707 = zext i1 %icmpEq706 to i32
  call void @assert_ft(i32 %zext707, i32 35)
  %icmpEq686 = icmp eq i32 %415, %417
  %423 = icmp eq i32 %416, %418
  %icmpEq728 = icmp eq i1 %icmpEq686, %423
  %zext729 = zext i1 %icmpEq728 to i32
  call void @assert_ft(i32 %zext729, i32 35)
  %zext687 = zext i1 %icmpEq686 to i32
  call void @assert_ft(i32 %zext687, i32 35)
  %icmpEq684 = icmp eq i32 %cfg_DiffPhi181, %413
  %424 = icmp eq i32 %412, %414
  %425 = icmp eq i32 %412, %414
  %icmpEq730 = icmp eq i1 %424, %425
  %zext731 = zext i1 %icmpEq730 to i32
  call void @assert_ft(i32 %zext731, i32 35)
  %icmpEq688 = icmp eq i1 %icmpEq684, %424
  %zext689 = zext i1 %icmpEq688 to i32
  call void @assert_ft(i32 %zext689, i32 35)
  %zext685 = zext i1 %icmpEq684 to i32
  %426 = zext i1 %424 to i32
  %icmpEq732 = icmp eq i32 %zext685, %426
  %zext733 = zext i1 %icmpEq732 to i32
  call void @assert_ft(i32 %zext733, i32 35)
  call void @assert_ft(i32 %zext685, i32 35)
  %icmpEq682 = icmp eq i32 %408, %410
  %zext683 = zext i1 %icmpEq682 to i32
  %427 = zext i1 %icmpEq682 to i32
  %428 = zext i1 %icmpEq682 to i32
  %icmpEq734 = icmp eq i32 %427, %428
  %zext735 = zext i1 %icmpEq734 to i32
  call void @assert_ft(i32 %zext735, i32 35)
  %icmpEq690 = icmp eq i32 %zext683, %427
  %zext691 = zext i1 %icmpEq690 to i32
  call void @assert_ft(i32 %zext691, i32 35)
  call void @assert_ft(i32 %zext683, i32 35)
  %icmpEq680 = icmp eq i32 %cfg_DestPhi180, %406
  %429 = icmp eq i32 %406, %407
  %icmpEq736 = icmp eq i1 %icmpEq680, %429
  %zext737 = zext i1 %icmpEq736 to i32
  call void @assert_ft(i32 %zext737, i32 35)
  %zext681 = zext i1 %icmpEq680 to i32
  call void @assert_ft(i32 %zext681, i32 35)
  %icmpEq672 = icmp eq i32 %cfg_DiffPhi181, %415
  %430 = icmp eq i32 %412, %416
  %431 = icmp eq i32 %412, %416
  %icmpEq738 = icmp eq i1 %430, %431
  %zext739 = zext i1 %icmpEq738 to i32
  call void @assert_ft(i32 %zext739, i32 35)
  %icmpEq692 = icmp eq i1 %icmpEq672, %430
  %zext693 = zext i1 %icmpEq692 to i32
  call void @assert_ft(i32 %zext693, i32 35)
  %zext673 = zext i1 %icmpEq672 to i32
  %432 = zext i1 %430 to i32
  %icmpEq740 = icmp eq i32 %zext673, %432
  %zext741 = zext i1 %icmpEq740 to i32
  call void @assert_ft(i32 %zext741, i32 35)
  call void @assert_ft(i32 %zext673, i32 35)
  %icmpEq670 = icmp eq i32 %cfg_DestPhi180, %408
  %433 = icmp eq i32 %406, %409
  %434 = icmp eq i32 %406, %409
  %435 = icmp eq i32 %406, %409
  %icmpEq742 = icmp eq i1 %434, %435
  %zext743 = zext i1 %icmpEq742 to i32
  call void @assert_ft(i32 %zext743, i32 35)
  %icmpEq694 = icmp eq i1 %433, %434
  %zext695 = zext i1 %icmpEq694 to i32
  call void @assert_ft(i32 %zext695, i32 35)
  %icmpEq674 = icmp eq i1 %icmpEq670, %433
  %436 = icmp eq i1 %433, %434
  %icmpEq744 = icmp eq i1 %icmpEq674, %436
  %zext745 = zext i1 %icmpEq744 to i32
  call void @assert_ft(i32 %zext745, i32 35)
  %zext675 = zext i1 %icmpEq674 to i32
  call void @assert_ft(i32 %zext675, i32 35)
  %zext671 = zext i1 %icmpEq670 to i32
  %437 = zext i1 %433 to i32
  %438 = zext i1 %433 to i32
  %icmpEq746 = icmp eq i32 %437, %438
  %zext747 = zext i1 %icmpEq746 to i32
  call void @assert_ft(i32 %zext747, i32 35)
  %icmpEq696 = icmp eq i32 %zext671, %437
  %zext697 = zext i1 %icmpEq696 to i32
  call void @assert_ft(i32 %zext697, i32 35)
  call void @assert_ft(i32 %zext671, i32 35)
  %439 = xor i32 %cfg_DestPhi180, %cfg_DiffPhi181
  %440 = xor i32 %406, %412
  %icmpEq748 = icmp eq i32 %439, %440
  %zext749 = zext i1 %icmpEq748 to i32
  call void @assert_ft(i32 %zext749, i32 35)
  %cfg_icmpEq182 = icmp eq i32 %439, 848298524
  %441 = icmp eq i32 %440, 848298524
  %442 = icmp eq i32 %440, 848298524
  %icmpEq698 = icmp eq i1 %441, %442
  %443 = icmp eq i1 %442, %442
  %icmpEq750 = icmp eq i1 %icmpEq698, %443
  %zext751 = zext i1 %icmpEq750 to i32
  call void @assert_ft(i32 %zext751, i32 35)
  %zext699 = zext i1 %icmpEq698 to i32
  call void @assert_ft(i32 %zext699, i32 35)
  %icmpEq676 = icmp eq i1 %cfg_icmpEq182, %441
  %zext677 = zext i1 %icmpEq676 to i32
  %444 = zext i1 %icmpEq676 to i32
  %icmpEq752 = icmp eq i32 %zext677, %444
  %zext753 = zext i1 %icmpEq752 to i32
  call void @assert_ft(i32 %zext753, i32 35)
  call void @assert_ft(i32 %zext677, i32 35)
  %cfg_zext183 = zext i1 %cfg_icmpEq182 to i32
  %445 = zext i1 %441 to i32
  %icmpEq700 = icmp eq i32 %cfg_zext183, %445
  %446 = icmp eq i32 %445, %445
  %icmpEq754 = icmp eq i1 %icmpEq700, %446
  %zext755 = zext i1 %icmpEq754 to i32
  call void @assert_ft(i32 %zext755, i32 35)
  %zext701 = zext i1 %icmpEq700 to i32
  call void @assert_ft(i32 %zext701, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext183, i32 %439, i32 35)
  %447 = uitofp i32 %0 to double
  %448 = uitofp i32 %0 to double
  %449 = select i1 %.not121, i32 1002438914, i32 899678740
  %450 = select i1 %27, i32 1002438914, i32 899678740
  %icmpEq756 = icmp eq i32 %449, %450
  %zext757 = zext i1 %icmpEq756 to i32
  call void @assert_ft(i32 %zext757, i32 35)
  %451 = select i1 %.not121, i32 1002438914, i32 899678740
  %452 = select i1 %27, i32 1002438914, i32 899678740
  %icmpEq702 = icmp eq i32 %451, %452
  %zext703 = zext i1 %icmpEq702 to i32
  %453 = zext i1 %icmpEq702 to i32
  %icmpEq758 = icmp eq i32 %zext703, %453
  %zext759 = zext i1 %icmpEq758 to i32
  call void @assert_ft(i32 %zext759, i32 35)
  call void @assert_ft(i32 %zext703, i32 35)
  %icmpEq678 = icmp eq i32 %449, %451
  %zext679 = zext i1 %icmpEq678 to i32
  call void @assert_ft(i32 %zext679, i32 35)
  %454 = xor i32 848298524, %449
  %455 = xor i32 848298524, %450
  %icmpEq760 = icmp eq i32 %454, %455
  %zext761 = zext i1 %icmpEq760 to i32
  call void @assert_ft(i32 %zext761, i32 35)
  %456 = xor i32 848298524, %449
  %icmpEq704 = icmp eq i32 %454, %456
  %zext705 = zext i1 %icmpEq704 to i32
  call void @assert_ft(i32 %zext705, i32 35)
  br i1 %.not121, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %405
  %cfg_DestPhi184 = phi i32 [ 848298524, %405 ]
  %457 = phi i32 [ 848298524, %405 ]
  %cfg_DiffPhi185 = phi i32 [ %454, %405 ]
  %458 = phi i32 [ %455, %405 ]
  %icmpEq764 = icmp eq i32 %cfg_DiffPhi185, %458
  %zext765 = zext i1 %icmpEq764 to i32
  call void @assert_ft(i32 %zext765, i32 35)
  %icmpEq762 = icmp eq i32 %cfg_DestPhi184, %457
  %459 = icmp eq i32 %457, %457
  %icmpEq766 = icmp eq i1 %icmpEq762, %459
  %zext767 = zext i1 %icmpEq766 to i32
  call void @assert_ft(i32 %zext767, i32 35)
  %zext763 = zext i1 %icmpEq762 to i32
  call void @assert_ft(i32 %zext763, i32 35)
  %460 = xor i32 %cfg_DestPhi184, %cfg_DiffPhi185
  %cfg_icmpEq186 = icmp eq i32 %460, 899678740
  %461 = icmp eq i32 %460, 899678740
  %icmpEq768 = icmp eq i1 %cfg_icmpEq186, %461
  %zext769 = zext i1 %icmpEq768 to i32
  call void @assert_ft(i32 %zext769, i32 35)
  %cfg_zext187 = zext i1 %cfg_icmpEq186 to i32
  call void @assert_cfg_ft(i32 %cfg_zext187, i32 %460, i32 35)
  %wide.trip.count129 = zext i32 %0 to i64
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120, %.lr.ph120.preheader
  %indvars.iv127 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next128, %.lr.ph120 ]
  %462 = phi i64 [ 0, %.lr.ph120.preheader ], [ %487, %.lr.ph120 ]
  %cfg_DestPhi188 = phi i32 [ 899678740, %.lr.ph120.preheader ], [ 951062550, %.lr.ph120 ]
  %463 = phi i32 [ 899678740, %.lr.ph120.preheader ], [ 951062550, %.lr.ph120 ]
  %cfg_DiffPhi189 = phi i32 [ 219156994, %.lr.ph120.preheader ], [ %489, %.lr.ph120 ]
  %464 = phi i32 [ 219156994, %.lr.ph120.preheader ], [ %489, %.lr.ph120 ]
  %icmpEq774 = icmp eq i32 %cfg_DiffPhi189, %464
  %zext775 = zext i1 %icmpEq774 to i32
  call void @assert_ft(i32 %zext775, i32 35)
  %icmpEq772 = icmp eq i32 %cfg_DestPhi188, %463
  %465 = icmp eq i32 %463, %463
  %icmpEq776 = icmp eq i1 %icmpEq772, %465
  %zext777 = zext i1 %icmpEq776 to i32
  call void @assert_ft(i32 %zext777, i32 35)
  %zext773 = zext i1 %icmpEq772 to i32
  call void @assert_ft(i32 %zext773, i32 35)
  %icmpEq770 = icmp eq i64 %indvars.iv127, %462
  %zext771 = zext i1 %icmpEq770 to i32
  %466 = zext i1 %icmpEq770 to i32
  %icmpEq778 = icmp eq i32 %zext771, %466
  %zext779 = zext i1 %icmpEq778 to i32
  call void @assert_ft(i32 %zext779, i32 35)
  call void @assert_ft(i32 %zext771, i32 35)
  %467 = xor i32 %cfg_DestPhi188, %cfg_DiffPhi189
  %cfg_icmpEq190 = icmp eq i32 %467, 951062550
  %cfg_zext191 = zext i1 %cfg_icmpEq190 to i32
  %468 = zext i1 %cfg_icmpEq190 to i32
  %icmpEq780 = icmp eq i32 %cfg_zext191, %468
  %zext781 = zext i1 %icmpEq780 to i32
  call void @assert_ft(i32 %zext781, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext191, i32 %467, i32 35)
  %469 = getelementptr inbounds float, ptr %4, i64 %indvars.iv127
  %470 = load float, ptr %469, align 4
  %471 = fpext float %470 to double
  %472 = fpext float %470 to double
  %473 = fdiv double %471, %447
  %474 = fdiv double %472, %448
  %475 = fptrunc double %473 to float
  %476 = fptrunc double %474 to float
  store float %475, ptr %469, align 4
  %477 = getelementptr inbounds float, ptr %5, i64 %indvars.iv127
  %478 = getelementptr inbounds float, ptr %5, i64 %462
  %479 = load float, ptr %477, align 4
  %480 = load float, ptr %478, align 4
  %481 = fpext float %479 to double
  %482 = fpext float %480 to double
  %483 = fdiv double %481, %447
  %484 = fdiv double %482, %448
  %485 = fptrunc double %483 to float
  %486 = fptrunc double %484 to float
  store float %485, ptr %477, align 4
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %487 = add nuw nsw i64 %462, 1
  %icmpEq782 = icmp eq i64 %indvars.iv.next128, %487
  %zext783 = zext i1 %icmpEq782 to i32
  call void @assert_ft(i32 %zext783, i32 35)
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count129
  %488 = select i1 %exitcond130.not, i32 1002438914, i32 951062550
  %489 = xor i32 951062550, %488
  br i1 %exitcond130.not, label %.loopexit, label %.lr.ph120

.loopexit:                                        ; preds = %.lr.ph120, %405, %._crit_edge117, %19
  %cfg_DestPhi192 = phi i32 [ 951062550, %.lr.ph120 ], [ 231737359, %19 ], [ 848298524, %405 ], [ 796918034, %._crit_edge117 ]
  %490 = phi i32 [ 951062550, %.lr.ph120 ], [ 231737359, %19 ], [ 848298524, %405 ], [ 796918034, %._crit_edge117 ]
  %cfg_DiffPhi193 = phi i32 [ %489, %.lr.ph120 ], [ %29, %19 ], [ %454, %405 ], [ %402, %._crit_edge117 ]
  %491 = phi i32 [ %489, %.lr.ph120 ], [ %29, %19 ], [ %455, %405 ], [ %403, %._crit_edge117 ]
  %icmpEq786 = icmp eq i32 %cfg_DiffPhi193, %491
  %zext787 = zext i1 %icmpEq786 to i32
  call void @assert_ft(i32 %zext787, i32 35)
  %icmpEq784 = icmp eq i32 %cfg_DestPhi192, %490
  %492 = icmp eq i32 %490, %490
  %icmpEq788 = icmp eq i1 %icmpEq784, %492
  %zext789 = zext i1 %icmpEq788 to i32
  call void @assert_ft(i32 %zext789, i32 35)
  %zext785 = zext i1 %icmpEq784 to i32
  call void @assert_ft(i32 %zext785, i32 35)
  %493 = xor i32 %cfg_DestPhi192, %cfg_DiffPhi193
  %cfg_icmpEq194 = icmp eq i32 %493, 1002438914
  %494 = icmp eq i32 %493, 1002438914
  %icmpEq790 = icmp eq i1 %cfg_icmpEq194, %494
  %zext791 = zext i1 %icmpEq790 to i32
  call void @assert_ft(i32 %zext791, i32 35)
  %cfg_zext195 = zext i1 %cfg_icmpEq194 to i32
  call void @assert_cfg_ft(i32 %cfg_zext195, i32 %493, i32 35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @CheckPointer(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %0, null
  %icmpEq = icmp eq i1 %3, %4
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %5 = select i1 %3, i32 180356101, i32 231735577
  %6 = xor i32 128975389, %5
  br i1 %3, label %7, label %15

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
  %13 = load ptr, ptr @stderr, align 8
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.4.16, ptr noundef %1) #19
  tail call void @exit(i32 noundef 1) #15
  unreachable

15:                                               ; preds = %2
  %cfg_DestPhi2 = phi i32 [ 128975389, %2 ]
  %16 = phi i32 [ 128975389, %2 ]
  %cfg_DiffPhi3 = phi i32 [ %6, %2 ]
  %17 = phi i32 [ %6, %2 ]
  %icmpEq16 = icmp eq i32 %cfg_DiffPhi3, %17
  %zext17 = zext i1 %icmpEq16 to i32
  call void @assert_ft(i32 %zext17, i32 35)
  %icmpEq14 = icmp eq i32 %cfg_DestPhi2, %16
  %18 = icmp eq i32 %16, %16
  %icmpEq18 = icmp eq i1 %icmpEq14, %18
  %zext19 = zext i1 %icmpEq18 to i32
  call void @assert_ft(i32 %zext19, i32 35)
  %zext15 = zext i1 %icmpEq14 to i32
  call void @assert_ft(i32 %zext15, i32 35)
  %19 = xor i32 %cfg_DestPhi2, %cfg_DiffPhi3
  %cfg_icmpEq4 = icmp eq i32 %19, 231735577
  %20 = icmp eq i32 %19, 231735577
  %icmpEq20 = icmp eq i1 %cfg_icmpEq4, %20
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %cfg_zext5 = zext i1 %cfg_icmpEq4 to i32
  call void @assert_cfg_ft(i32 %cfg_zext5, i32 %19, i32 35)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

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

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 0, i32 33}
!7 = !{i32 0, i32 2}
