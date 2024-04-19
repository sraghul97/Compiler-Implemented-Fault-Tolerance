; ModuleID = 'crc32-out.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc_32_tab = internal unnamed_addr constant [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%08lX %7ld\0A\00", align 1
@0 = private unnamed_addr constant [61 x i8] c"**Possible soft-error detected due to data corruption (%d).\0A\00", align 1
@1 = private unnamed_addr constant [89 x i8] c"**Possible soft-error detected due to control flow into block %d (%d). Exiting program.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @updateCRC32(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
  %.tr = trunc i64 %1 to i8
  %3 = trunc i64 %1 to i8
  %icmpEq = icmp eq i8 %.tr, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %.narrow = xor i8 %.tr, %0
  %4 = zext i8 %.narrow to i64
  %5 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %5, align 8
  %icmpEq3 = icmp eq i64 %6, %7
  %zext4 = zext i1 %icmpEq3 to i32
  call void @assert_ft(i32 %zext4, i32 35)
  %8 = lshr i64 %1, 8
  %9 = xor i64 %6, %8
  ret i64 %9
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @crc32file(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  store i64 0, ptr %2, align 8
  %4 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %4, null
  %icmpEq = icmp eq i1 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = select i1 %5, i32 231735821, i32 180355853
  %8 = xor i32 128975893, %7
  br i1 %5, label %18, label %.preheader

.preheader:                                       ; preds = %3
  %cfg_DestPhi = phi i32 [ 128975893, %3 ]
  %9 = phi i32 [ 128975893, %3 ]
  %cfg_DiffPhi = phi i32 [ %8, %3 ]
  %10 = phi i32 [ %8, %3 ]
  %icmpEq49 = icmp eq i32 %cfg_DiffPhi, %10
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %icmpEq47 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq51 = icmp eq i1 %icmpEq47, %11
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %zext48 = zext i1 %icmpEq47 to i32
  call void @assert_ft(i32 %zext48, i32 35)
  %12 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %cfg_icmpEq = icmp eq i32 %12, 180355853
  %13 = icmp eq i32 %12, 180355853
  %icmpEq53 = icmp eq i1 %cfg_icmpEq, %13
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %12, i32 35)
  %14 = tail call i32 @getc(ptr noundef nonnull %4)
  %.not17 = icmp eq i32 %14, -1
  %15 = icmp eq i32 %14, -1
  %icmpEq55 = icmp eq i1 %.not17, %15
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  %16 = select i1 %.not17, i32 385877007, i32 283119379
  %17 = xor i32 180355853, %16
  br i1 %.not17, label %._crit_edge, label %.lr.ph

18:                                               ; preds = %3
  %cfg_DestPhi19 = phi i32 [ 128975893, %3 ]
  %19 = phi i32 [ 128975893, %3 ]
  %cfg_DiffPhi20 = phi i32 [ %8, %3 ]
  %20 = phi i32 [ %8, %3 ]
  %icmpEq59 = icmp eq i32 %cfg_DiffPhi20, %20
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  %icmpEq57 = icmp eq i32 %cfg_DestPhi19, %19
  %21 = icmp eq i32 %19, %19
  %icmpEq61 = icmp eq i1 %icmpEq57, %21
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %22 = xor i32 %cfg_DestPhi19, %cfg_DiffPhi20
  %cfg_icmpEq21 = icmp eq i32 %22, 231735821
  %23 = icmp eq i32 %22, 231735821
  %icmpEq63 = icmp eq i1 %cfg_icmpEq21, %23
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  %cfg_zext22 = zext i1 %cfg_icmpEq21 to i32
  call void @assert_cfg_ft(i32 %cfg_zext22, i32 %22, i32 35)
  tail call void @perror(ptr noundef %0) #6
  br label %123

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %24 = phi i32 [ %70, %.lr.ph ], [ %14, %.preheader ]
  %25 = phi i32 [ %70, %.lr.ph ], [ %14, %.preheader ]
  %26 = phi i32 [ %70, %.lr.ph ], [ %14, %.preheader ]
  %27 = phi i32 [ %70, %.lr.ph ], [ %14, %.preheader ]
  %.01418 = phi i64 [ %69, %.lr.ph ], [ 4294967295, %.preheader ]
  %28 = phi i64 [ %69, %.lr.ph ], [ 4294967295, %.preheader ]
  %29 = phi i64 [ %69, %.lr.ph ], [ 4294967295, %.preheader ]
  %30 = phi i64 [ %69, %.lr.ph ], [ 4294967295, %.preheader ]
  %cfg_DestPhi23 = phi i32 [ 180355853, %.preheader ], [ 283119379, %.lr.ph ]
  %31 = phi i32 [ 180355853, %.preheader ], [ 283119379, %.lr.ph ]
  %32 = phi i32 [ 180355853, %.preheader ], [ 283119379, %.lr.ph ]
  %33 = phi i32 [ 180355853, %.preheader ], [ 283119379, %.lr.ph ]
  %cfg_DiffPhi24 = phi i32 [ %17, %.preheader ], [ %75, %.lr.ph ]
  %34 = phi i32 [ %17, %.preheader ], [ %75, %.lr.ph ]
  %35 = phi i32 [ %17, %.preheader ], [ %75, %.lr.ph ]
  %36 = phi i32 [ %17, %.preheader ], [ %75, %.lr.ph ]
  %icmpEq101 = icmp eq i32 %35, %36
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  %icmpEq99 = icmp eq i32 %cfg_DiffPhi24, %34
  %37 = icmp eq i32 %34, %34
  %icmpEq103 = icmp eq i1 %icmpEq99, %37
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %icmpEq97 = icmp eq i32 %32, %33
  %zext98 = zext i1 %icmpEq97 to i32
  %38 = zext i1 %icmpEq97 to i32
  %icmpEq105 = icmp eq i32 %zext98, %38
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  call void @assert_ft(i32 %zext98, i32 35)
  %icmpEq95 = icmp eq i32 %cfg_DestPhi23, %31
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %icmpEq93 = icmp eq i64 %29, %30
  %39 = icmp eq i64 %30, %30
  %icmpEq107 = icmp eq i1 %icmpEq93, %39
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  %icmpEq91 = icmp eq i64 %.01418, %28
  %zext92 = zext i1 %icmpEq91 to i32
  %40 = zext i1 %icmpEq91 to i32
  %icmpEq109 = icmp eq i32 %zext92, %40
  %zext110 = zext i1 %icmpEq109 to i32
  call void @assert_ft(i32 %zext110, i32 35)
  call void @assert_ft(i32 %zext92, i32 35)
  %icmpEq89 = icmp eq i32 %26, %27
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %icmpEq87 = icmp eq i32 %24, %25
  %41 = icmp eq i32 %25, %25
  %icmpEq111 = icmp eq i1 %icmpEq87, %41
  %zext112 = zext i1 %icmpEq111 to i32
  call void @assert_ft(i32 %zext112, i32 35)
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq71 = icmp eq i32 %cfg_DiffPhi24, %35
  %zext72 = zext i1 %icmpEq71 to i32
  %42 = zext i1 %icmpEq71 to i32
  %icmpEq113 = icmp eq i32 %zext72, %42
  %zext114 = zext i1 %icmpEq113 to i32
  call void @assert_ft(i32 %zext114, i32 35)
  call void @assert_ft(i32 %zext72, i32 35)
  %icmpEq69 = icmp eq i32 %cfg_DestPhi23, %32
  %43 = icmp eq i32 %31, %33
  %icmpEq73 = icmp eq i1 %icmpEq69, %43
  %44 = icmp eq i1 %43, %43
  %icmpEq115 = icmp eq i1 %icmpEq73, %44
  %zext116 = zext i1 %icmpEq115 to i32
  call void @assert_ft(i32 %zext116, i32 35)
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %zext70 = zext i1 %icmpEq69 to i32
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i64 %.01418, %29
  %45 = icmp eq i64 %28, %30
  %icmpEq117 = icmp eq i1 %icmpEq67, %45
  %zext118 = zext i1 %icmpEq117 to i32
  call void @assert_ft(i32 %zext118, i32 35)
  %zext68 = zext i1 %icmpEq67 to i32
  %46 = zext i1 %45 to i32
  %icmpEq75 = icmp eq i32 %zext68, %46
  %zext76 = zext i1 %icmpEq75 to i32
  %47 = zext i1 %icmpEq75 to i32
  %icmpEq119 = icmp eq i32 %zext76, %47
  %zext120 = zext i1 %icmpEq119 to i32
  call void @assert_ft(i32 %zext120, i32 35)
  call void @assert_ft(i32 %zext76, i32 35)
  call void @assert_ft(i32 %zext68, i32 35)
  %icmpEq65 = icmp eq i32 %24, %26
  %zext66 = zext i1 %icmpEq65 to i32
  %48 = zext i1 %icmpEq65 to i32
  %icmpEq121 = icmp eq i32 %zext66, %48
  %zext122 = zext i1 %icmpEq121 to i32
  call void @assert_ft(i32 %zext122, i32 35)
  call void @assert_ft(i32 %zext66, i32 35)
  %49 = xor i32 %cfg_DestPhi23, %cfg_DiffPhi24
  %50 = xor i32 %31, %34
  %icmpEq77 = icmp eq i32 %49, %50
  %51 = icmp eq i32 %50, %50
  %icmpEq123 = icmp eq i1 %icmpEq77, %51
  %zext124 = zext i1 %icmpEq123 to i32
  call void @assert_ft(i32 %zext124, i32 35)
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  %cfg_icmpEq25 = icmp eq i32 %49, 283119379
  %cfg_zext26 = zext i1 %cfg_icmpEq25 to i32
  %52 = zext i1 %cfg_icmpEq25 to i32
  %icmpEq125 = icmp eq i32 %cfg_zext26, %52
  %zext126 = zext i1 %icmpEq125 to i32
  call void @assert_ft(i32 %zext126, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext26, i32 %49, i32 35)
  %53 = load i64, ptr %2, align 8
  %54 = load i64, ptr %2, align 8
  %icmpEq79 = icmp eq i64 %53, %54
  %55 = icmp eq i64 %54, %54
  %icmpEq127 = icmp eq i1 %icmpEq79, %55
  %zext128 = zext i1 %icmpEq127 to i32
  call void @assert_ft(i32 %zext128, i32 35)
  %zext80 = zext i1 %icmpEq79 to i32
  call void @assert_ft(i32 %zext80, i32 35)
  %56 = add nsw i64 %53, 1
  store i64 %56, ptr %2, align 8
  %57 = zext i32 %24 to i64
  %58 = zext i32 %25 to i64
  %icmpEq129 = icmp eq i64 %57, %58
  %zext130 = zext i1 %icmpEq129 to i32
  call void @assert_ft(i32 %zext130, i32 35)
  %59 = xor i64 %.01418, %57
  %60 = xor i64 %28, %58
  %icmpEq81 = icmp eq i64 %59, %60
  %zext82 = zext i1 %icmpEq81 to i32
  %61 = zext i1 %icmpEq81 to i32
  %icmpEq131 = icmp eq i32 %zext82, %61
  %zext132 = zext i1 %icmpEq131 to i32
  call void @assert_ft(i32 %zext132, i32 35)
  call void @assert_ft(i32 %zext82, i32 35)
  %62 = and i64 %59, 255
  %63 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8
  %65 = load i64, ptr %63, align 8
  %icmpEq133 = icmp eq i64 %64, %65
  %zext134 = zext i1 %icmpEq133 to i32
  call void @assert_ft(i32 %zext134, i32 35)
  %66 = lshr i64 %.01418, 8
  %67 = lshr i64 %28, 8
  %icmpEq83 = icmp eq i64 %66, %67
  %zext84 = zext i1 %icmpEq83 to i32
  %68 = zext i1 %icmpEq83 to i32
  %icmpEq135 = icmp eq i32 %zext84, %68
  %zext136 = zext i1 %icmpEq135 to i32
  call void @assert_ft(i32 %zext136, i32 35)
  call void @assert_ft(i32 %zext84, i32 35)
  %69 = xor i64 %64, %66
  %70 = tail call i32 @getc(ptr noundef nonnull %4)
  %.not = icmp eq i32 %70, -1
  %71 = icmp eq i32 %70, -1
  %icmpEq137 = icmp eq i1 %.not, %71
  %zext138 = zext i1 %icmpEq137 to i32
  call void @assert_ft(i32 %zext138, i32 35)
  %72 = select i1 %.not, i32 334496290, i32 283119379
  %73 = select i1 %71, i32 334496290, i32 283119379
  %icmpEq85 = icmp eq i32 %72, %73
  %zext86 = zext i1 %icmpEq85 to i32
  %74 = zext i1 %icmpEq85 to i32
  %icmpEq139 = icmp eq i32 %zext86, %74
  %zext140 = zext i1 %icmpEq139 to i32
  call void @assert_ft(i32 %zext140, i32 35)
  call void @assert_ft(i32 %zext86, i32 35)
  %75 = xor i32 283119379, %72
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %cfg_DestPhi27 = phi i32 [ 283119379, %.lr.ph ]
  %76 = phi i32 [ 283119379, %.lr.ph ]
  %cfg_DiffPhi28 = phi i32 [ %75, %.lr.ph ]
  %77 = phi i32 [ %75, %.lr.ph ]
  %icmpEq143 = icmp eq i32 %cfg_DiffPhi28, %77
  %zext144 = zext i1 %icmpEq143 to i32
  call void @assert_ft(i32 %zext144, i32 35)
  %icmpEq141 = icmp eq i32 %cfg_DestPhi27, %76
  %78 = icmp eq i32 %76, %76
  %icmpEq145 = icmp eq i1 %icmpEq141, %78
  %zext146 = zext i1 %icmpEq145 to i32
  call void @assert_ft(i32 %zext146, i32 35)
  %zext142 = zext i1 %icmpEq141 to i32
  call void @assert_ft(i32 %zext142, i32 35)
  %79 = xor i32 %cfg_DestPhi27, %cfg_DiffPhi28
  %cfg_icmpEq29 = icmp eq i32 %79, 334496290
  %80 = icmp eq i32 %79, 334496290
  %icmpEq147 = icmp eq i1 %cfg_icmpEq29, %80
  %zext148 = zext i1 %icmpEq147 to i32
  call void @assert_ft(i32 %zext148, i32 35)
  %cfg_zext30 = zext i1 %cfg_icmpEq29 to i32
  call void @assert_cfg_ft(i32 %cfg_zext30, i32 %79, i32 35)
  %81 = xor i64 %69, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.014.lcssa = phi i64 [ -4294967296, %.preheader ], [ %81, %._crit_edge.loopexit ]
  %82 = phi i64 [ -4294967296, %.preheader ], [ %81, %._crit_edge.loopexit ]
  %83 = phi i64 [ -4294967296, %.preheader ], [ %81, %._crit_edge.loopexit ]
  %84 = phi i64 [ -4294967296, %.preheader ], [ %81, %._crit_edge.loopexit ]
  %cfg_DestPhi31 = phi i32 [ 334496290, %._crit_edge.loopexit ], [ 180355853, %.preheader ]
  %85 = phi i32 [ 334496290, %._crit_edge.loopexit ], [ 180355853, %.preheader ]
  %86 = phi i32 [ 334496290, %._crit_edge.loopexit ], [ 180355853, %.preheader ]
  %87 = phi i32 [ 334496290, %._crit_edge.loopexit ], [ 180355853, %.preheader ]
  %cfg_DiffPhi32 = phi i32 [ 82839085, %._crit_edge.loopexit ], [ %17, %.preheader ]
  %88 = phi i32 [ 82839085, %._crit_edge.loopexit ], [ %17, %.preheader ]
  %89 = phi i32 [ 82839085, %._crit_edge.loopexit ], [ %17, %.preheader ]
  %90 = phi i32 [ 82839085, %._crit_edge.loopexit ], [ %17, %.preheader ]
  %icmpEq173 = icmp eq i32 %89, %90
  %zext174 = zext i1 %icmpEq173 to i32
  call void @assert_ft(i32 %zext174, i32 35)
  %icmpEq171 = icmp eq i32 %cfg_DiffPhi32, %88
  %91 = icmp eq i32 %88, %88
  %icmpEq175 = icmp eq i1 %icmpEq171, %91
  %zext176 = zext i1 %icmpEq175 to i32
  call void @assert_ft(i32 %zext176, i32 35)
  %zext172 = zext i1 %icmpEq171 to i32
  call void @assert_ft(i32 %zext172, i32 35)
  %icmpEq169 = icmp eq i32 %86, %87
  %zext170 = zext i1 %icmpEq169 to i32
  %92 = zext i1 %icmpEq169 to i32
  %icmpEq177 = icmp eq i32 %zext170, %92
  %zext178 = zext i1 %icmpEq177 to i32
  call void @assert_ft(i32 %zext178, i32 35)
  call void @assert_ft(i32 %zext170, i32 35)
  %icmpEq167 = icmp eq i32 %cfg_DestPhi31, %85
  %zext168 = zext i1 %icmpEq167 to i32
  call void @assert_ft(i32 %zext168, i32 35)
  %icmpEq165 = icmp eq i64 %83, %84
  %93 = icmp eq i64 %84, %84
  %icmpEq179 = icmp eq i1 %icmpEq165, %93
  %zext180 = zext i1 %icmpEq179 to i32
  call void @assert_ft(i32 %zext180, i32 35)
  %zext166 = zext i1 %icmpEq165 to i32
  call void @assert_ft(i32 %zext166, i32 35)
  %icmpEq163 = icmp eq i64 %.014.lcssa, %82
  %zext164 = zext i1 %icmpEq163 to i32
  %94 = zext i1 %icmpEq163 to i32
  %icmpEq181 = icmp eq i32 %zext164, %94
  %zext182 = zext i1 %icmpEq181 to i32
  call void @assert_ft(i32 %zext182, i32 35)
  call void @assert_ft(i32 %zext164, i32 35)
  %icmpEq153 = icmp eq i32 %cfg_DiffPhi32, %89
  %zext154 = zext i1 %icmpEq153 to i32
  call void @assert_ft(i32 %zext154, i32 35)
  %icmpEq151 = icmp eq i32 %cfg_DestPhi31, %86
  %95 = icmp eq i32 %85, %87
  %icmpEq183 = icmp eq i1 %icmpEq151, %95
  %zext184 = zext i1 %icmpEq183 to i32
  call void @assert_ft(i32 %zext184, i32 35)
  %96 = icmp eq i32 %cfg_DestPhi31, %86
  %icmpEq155 = icmp eq i1 %icmpEq151, %96
  %zext156 = zext i1 %icmpEq155 to i32
  call void @assert_ft(i32 %zext156, i32 35)
  %zext152 = zext i1 %icmpEq151 to i32
  %97 = zext i1 %95 to i32
  %icmpEq185 = icmp eq i32 %zext152, %97
  %zext186 = zext i1 %icmpEq185 to i32
  call void @assert_ft(i32 %zext186, i32 35)
  call void @assert_ft(i32 %zext152, i32 35)
  %icmpEq149 = icmp eq i64 %.014.lcssa, %83
  %zext150 = zext i1 %icmpEq149 to i32
  %98 = zext i1 %icmpEq149 to i32
  %99 = zext i1 %icmpEq149 to i32
  %icmpEq187 = icmp eq i32 %98, %99
  %zext188 = zext i1 %icmpEq187 to i32
  call void @assert_ft(i32 %zext188, i32 35)
  %icmpEq157 = icmp eq i32 %zext150, %98
  %zext158 = zext i1 %icmpEq157 to i32
  call void @assert_ft(i32 %zext158, i32 35)
  call void @assert_ft(i32 %zext150, i32 35)
  %100 = xor i32 %cfg_DestPhi31, %cfg_DiffPhi32
  %101 = xor i32 %85, %88
  %icmpEq189 = icmp eq i32 %100, %101
  %zext190 = zext i1 %icmpEq189 to i32
  call void @assert_ft(i32 %zext190, i32 35)
  %cfg_icmpEq33 = icmp eq i32 %100, 385877007
  %cfg_zext34 = zext i1 %cfg_icmpEq33 to i32
  %102 = zext i1 %cfg_icmpEq33 to i32
  %icmpEq159 = icmp eq i32 %cfg_zext34, %102
  %103 = icmp eq i32 %102, %102
  %icmpEq191 = icmp eq i1 %icmpEq159, %103
  %zext192 = zext i1 %icmpEq191 to i32
  call void @assert_ft(i32 %zext192, i32 35)
  %zext160 = zext i1 %icmpEq159 to i32
  call void @assert_ft(i32 %zext160, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext34, i32 %100, i32 35)
  %104 = tail call i32 @ferror(ptr noundef nonnull %4) #7
  %.not16 = icmp eq i32 %104, 0
  %105 = icmp eq i32 %104, 0
  %icmpEq193 = icmp eq i1 %.not16, %105
  %zext194 = zext i1 %icmpEq193 to i32
  call void @assert_ft(i32 %zext194, i32 35)
  %106 = select i1 %.not16, i32 488637199, i32 437256987
  %107 = select i1 %105, i32 488637199, i32 437256987
  %icmpEq161 = icmp eq i32 %106, %107
  %zext162 = zext i1 %icmpEq161 to i32
  %108 = zext i1 %icmpEq161 to i32
  %icmpEq195 = icmp eq i32 %zext162, %108
  %zext196 = zext i1 %icmpEq195 to i32
  call void @assert_ft(i32 %zext196, i32 35)
  call void @assert_ft(i32 %zext162, i32 35)
  %109 = xor i32 385877007, %106
  br i1 %.not16, label %116, label %110

110:                                              ; preds = %._crit_edge
  %cfg_DestPhi35 = phi i32 [ 385877007, %._crit_edge ]
  %111 = phi i32 [ 385877007, %._crit_edge ]
  %cfg_DiffPhi36 = phi i32 [ %109, %._crit_edge ]
  %112 = phi i32 [ %109, %._crit_edge ]
  %icmpEq199 = icmp eq i32 %cfg_DiffPhi36, %112
  %zext200 = zext i1 %icmpEq199 to i32
  call void @assert_ft(i32 %zext200, i32 35)
  %icmpEq197 = icmp eq i32 %cfg_DestPhi35, %111
  %113 = icmp eq i32 %111, %111
  %icmpEq201 = icmp eq i1 %icmpEq197, %113
  %zext202 = zext i1 %icmpEq201 to i32
  call void @assert_ft(i32 %zext202, i32 35)
  %zext198 = zext i1 %icmpEq197 to i32
  call void @assert_ft(i32 %zext198, i32 35)
  %114 = xor i32 %cfg_DestPhi35, %cfg_DiffPhi36
  %cfg_icmpEq37 = icmp eq i32 %114, 437256987
  %115 = icmp eq i32 %114, 437256987
  %icmpEq203 = icmp eq i1 %cfg_icmpEq37, %115
  %zext204 = zext i1 %icmpEq203 to i32
  call void @assert_ft(i32 %zext204, i32 35)
  %cfg_zext38 = zext i1 %cfg_icmpEq37 to i32
  call void @assert_cfg_ft(i32 %cfg_zext38, i32 %114, i32 35)
  tail call void @perror(ptr noundef %0) #6
  store i64 -1, ptr %2, align 8
  br label %116

116:                                              ; preds = %110, %._crit_edge
  %cfg_DestPhi39 = phi i32 [ 437256987, %110 ], [ 385877007, %._crit_edge ]
  %117 = phi i32 [ 437256987, %110 ], [ 385877007, %._crit_edge ]
  %cfg_DiffPhi40 = phi i32 [ 120586260, %110 ], [ %109, %._crit_edge ]
  %118 = phi i32 [ 120586260, %110 ], [ %109, %._crit_edge ]
  %icmpEq207 = icmp eq i32 %cfg_DiffPhi40, %118
  %zext208 = zext i1 %icmpEq207 to i32
  call void @assert_ft(i32 %zext208, i32 35)
  %icmpEq205 = icmp eq i32 %cfg_DestPhi39, %117
  %119 = icmp eq i32 %117, %117
  %icmpEq209 = icmp eq i1 %icmpEq205, %119
  %zext210 = zext i1 %icmpEq209 to i32
  call void @assert_ft(i32 %zext210, i32 35)
  %zext206 = zext i1 %icmpEq205 to i32
  call void @assert_ft(i32 %zext206, i32 35)
  %120 = xor i32 %cfg_DestPhi39, %cfg_DiffPhi40
  %cfg_icmpEq41 = icmp eq i32 %120, 488637199
  %121 = icmp eq i32 %120, 488637199
  %icmpEq211 = icmp eq i1 %cfg_icmpEq41, %121
  %zext212 = zext i1 %icmpEq211 to i32
  call void @assert_ft(i32 %zext212, i32 35)
  %cfg_zext42 = zext i1 %cfg_icmpEq41 to i32
  call void @assert_cfg_ft(i32 %cfg_zext42, i32 %120, i32 35)
  %122 = tail call i32 @fclose(ptr noundef nonnull %4)
  store i64 %.014.lcssa, ptr %1, align 8
  br label %123

123:                                              ; preds = %116, %18
  %.0 = phi i32 [ -1, %18 ], [ 0, %116 ]
  %124 = phi i32 [ -1, %18 ], [ 0, %116 ]
  %125 = phi i32 [ -1, %18 ], [ 0, %116 ]
  %126 = phi i32 [ -1, %18 ], [ 0, %116 ]
  %cfg_DestPhi43 = phi i32 [ 488637199, %116 ], [ 231735821, %18 ]
  %127 = phi i32 [ 488637199, %116 ], [ 231735821, %18 ]
  %128 = phi i32 [ 488637199, %116 ], [ 231735821, %18 ]
  %129 = phi i32 [ 488637199, %116 ], [ 231735821, %18 ]
  %cfg_DiffPhi44 = phi i32 [ 1024459021, %116 ], [ 769654799, %18 ]
  %130 = phi i32 [ 1024459021, %116 ], [ 769654799, %18 ]
  %131 = phi i32 [ 1024459021, %116 ], [ 769654799, %18 ]
  %132 = phi i32 [ 1024459021, %116 ], [ 769654799, %18 ]
  %icmpEq235 = icmp eq i32 %131, %132
  %zext236 = zext i1 %icmpEq235 to i32
  call void @assert_ft(i32 %zext236, i32 35)
  %icmpEq233 = icmp eq i32 %cfg_DiffPhi44, %130
  %133 = icmp eq i32 %130, %130
  %icmpEq237 = icmp eq i1 %icmpEq233, %133
  %zext238 = zext i1 %icmpEq237 to i32
  call void @assert_ft(i32 %zext238, i32 35)
  %zext234 = zext i1 %icmpEq233 to i32
  call void @assert_ft(i32 %zext234, i32 35)
  %icmpEq231 = icmp eq i32 %128, %129
  %zext232 = zext i1 %icmpEq231 to i32
  %134 = zext i1 %icmpEq231 to i32
  %icmpEq239 = icmp eq i32 %zext232, %134
  %zext240 = zext i1 %icmpEq239 to i32
  call void @assert_ft(i32 %zext240, i32 35)
  call void @assert_ft(i32 %zext232, i32 35)
  %icmpEq229 = icmp eq i32 %cfg_DestPhi43, %127
  %zext230 = zext i1 %icmpEq229 to i32
  call void @assert_ft(i32 %zext230, i32 35)
  %icmpEq227 = icmp eq i32 %125, %126
  %135 = icmp eq i32 %126, %126
  %icmpEq241 = icmp eq i1 %icmpEq227, %135
  %zext242 = zext i1 %icmpEq241 to i32
  call void @assert_ft(i32 %zext242, i32 35)
  %zext228 = zext i1 %icmpEq227 to i32
  call void @assert_ft(i32 %zext228, i32 35)
  %icmpEq225 = icmp eq i32 %.0, %124
  %zext226 = zext i1 %icmpEq225 to i32
  %136 = zext i1 %icmpEq225 to i32
  %icmpEq243 = icmp eq i32 %zext226, %136
  %zext244 = zext i1 %icmpEq243 to i32
  call void @assert_ft(i32 %zext244, i32 35)
  call void @assert_ft(i32 %zext226, i32 35)
  %icmpEq217 = icmp eq i32 %cfg_DiffPhi44, %131
  %zext218 = zext i1 %icmpEq217 to i32
  call void @assert_ft(i32 %zext218, i32 35)
  %icmpEq215 = icmp eq i32 %cfg_DestPhi43, %128
  %137 = icmp eq i32 %127, %129
  %icmpEq245 = icmp eq i1 %icmpEq215, %137
  %zext246 = zext i1 %icmpEq245 to i32
  call void @assert_ft(i32 %zext246, i32 35)
  %138 = icmp eq i32 %cfg_DestPhi43, %128
  %icmpEq219 = icmp eq i1 %icmpEq215, %138
  %zext220 = zext i1 %icmpEq219 to i32
  call void @assert_ft(i32 %zext220, i32 35)
  %zext216 = zext i1 %icmpEq215 to i32
  %139 = zext i1 %137 to i32
  %icmpEq247 = icmp eq i32 %zext216, %139
  %zext248 = zext i1 %icmpEq247 to i32
  call void @assert_ft(i32 %zext248, i32 35)
  call void @assert_ft(i32 %zext216, i32 35)
  %icmpEq213 = icmp eq i32 %.0, %125
  %zext214 = zext i1 %icmpEq213 to i32
  %140 = zext i1 %icmpEq213 to i32
  %141 = zext i1 %icmpEq213 to i32
  %icmpEq249 = icmp eq i32 %140, %141
  %zext250 = zext i1 %icmpEq249 to i32
  call void @assert_ft(i32 %zext250, i32 35)
  %icmpEq221 = icmp eq i32 %zext214, %140
  %zext222 = zext i1 %icmpEq221 to i32
  call void @assert_ft(i32 %zext222, i32 35)
  call void @assert_ft(i32 %zext214, i32 35)
  %142 = xor i32 %cfg_DestPhi43, %cfg_DiffPhi44
  %143 = xor i32 %127, %130
  %icmpEq251 = icmp eq i32 %142, %143
  %zext252 = zext i1 %icmpEq251 to i32
  call void @assert_ft(i32 %zext252, i32 35)
  %cfg_icmpEq45 = icmp eq i32 %142, 540017154
  %cfg_zext46 = zext i1 %cfg_icmpEq45 to i32
  %144 = zext i1 %cfg_icmpEq45 to i32
  %icmpEq223 = icmp eq i32 %cfg_zext46, %144
  %145 = icmp eq i32 %144, %144
  %icmpEq253 = icmp eq i1 %icmpEq223, %145
  %zext254 = zext i1 %icmpEq253 to i32
  call void @assert_ft(i32 %zext254, i32 35)
  %zext224 = zext i1 %icmpEq223 to i32
  call void @assert_ft(i32 %zext224, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext46, i32 %142, i32 35)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @crc32buf(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %.not8 = icmp eq i64 %1, 0
  %3 = icmp eq i64 %1, 0
  %icmpEq = icmp eq i1 %.not8, %3
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %4 = select i1 %.not8, i32 283116037, i32 180358940
  %5 = xor i32 128975389, %4
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %2
  %.011 = phi i64 [ %23, %.lr.ph ], [ 4294967295, %2 ]
  %6 = phi i64 [ %23, %.lr.ph ], [ 4294967295, %2 ]
  %.0610 = phi i64 [ %24, %.lr.ph ], [ %1, %2 ]
  %7 = phi i64 [ %24, %.lr.ph ], [ %1, %2 ]
  %.079 = phi ptr [ %25, %.lr.ph ], [ %0, %2 ]
  %8 = phi ptr [ %26, %.lr.ph ], [ %0, %2 ]
  %cfg_DestPhi = phi i32 [ 128975389, %2 ], [ 180358940, %.lr.ph ]
  %9 = phi i32 [ 128975389, %2 ], [ 180358940, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %5, %2 ], [ %29, %.lr.ph ]
  %10 = phi i32 [ %5, %2 ], [ %29, %.lr.ph ]
  %icmpEq26 = icmp eq i32 %cfg_DiffPhi, %10
  %zext27 = zext i1 %icmpEq26 to i32
  call void @assert_ft(i32 %zext27, i32 35)
  %icmpEq24 = icmp eq i32 %cfg_DestPhi, %9
  %11 = icmp eq i32 %9, %9
  %icmpEq28 = icmp eq i1 %icmpEq24, %11
  %zext29 = zext i1 %icmpEq28 to i32
  call void @assert_ft(i32 %zext29, i32 35)
  %zext25 = zext i1 %icmpEq24 to i32
  call void @assert_ft(i32 %zext25, i32 35)
  %icmpEq22 = icmp eq i64 %.0610, %7
  %zext23 = zext i1 %icmpEq22 to i32
  %12 = zext i1 %icmpEq22 to i32
  %icmpEq30 = icmp eq i32 %zext23, %12
  %zext31 = zext i1 %icmpEq30 to i32
  call void @assert_ft(i32 %zext31, i32 35)
  call void @assert_ft(i32 %zext23, i32 35)
  %icmpEq20 = icmp eq i64 %.011, %6
  %zext21 = zext i1 %icmpEq20 to i32
  call void @assert_ft(i32 %zext21, i32 35)
  %13 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %14 = xor i32 %9, %10
  %icmpEq32 = icmp eq i32 %13, %14
  %zext33 = zext i1 %icmpEq32 to i32
  call void @assert_ft(i32 %zext33, i32 35)
  %cfg_icmpEq = icmp eq i32 %13, 180358940
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %13, i32 35)
  %15 = load i8, ptr %.079, align 1
  %16 = load i8, ptr %8, align 1
  %icmpEq34 = icmp eq i8 %15, %16
  %zext35 = zext i1 %icmpEq34 to i32
  call void @assert_ft(i32 %zext35, i32 35)
  %.0.tr = trunc i64 %.011 to i8
  %.narrow = xor i8 %15, %.0.tr
  %17 = zext i8 %.narrow to i64
  %18 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %17
  %19 = getelementptr inbounds [256 x i64], ptr @crc_32_tab, i64 0, i64 %17
  %20 = load i64, ptr %18, align 8
  %21 = load i64, ptr %19, align 8
  %icmpEq36 = icmp eq i64 %20, %21
  %zext37 = zext i1 %icmpEq36 to i32
  call void @assert_ft(i32 %zext37, i32 35)
  %22 = lshr i64 %.011, 8
  %23 = xor i64 %20, %22
  %24 = add i64 %.0610, -1
  %25 = getelementptr inbounds i8, ptr %.079, i64 1
  %26 = getelementptr inbounds i8, ptr %8, i64 1
  %.not = icmp eq i64 %24, 0
  %27 = icmp eq i64 %24, 0
  %icmpEq38 = icmp eq i1 %.not, %27
  %zext39 = zext i1 %icmpEq38 to i32
  call void @assert_ft(i32 %zext39, i32 35)
  %28 = select i1 %.not, i32 231735821, i32 180358940
  %29 = xor i32 180358940, %28
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %cfg_DestPhi12 = phi i32 [ 180358940, %.lr.ph ]
  %30 = phi i32 [ 180358940, %.lr.ph ]
  %cfg_DiffPhi13 = phi i32 [ %29, %.lr.ph ]
  %31 = phi i32 [ %29, %.lr.ph ]
  %icmpEq42 = icmp eq i32 %cfg_DiffPhi13, %31
  %zext43 = zext i1 %icmpEq42 to i32
  call void @assert_ft(i32 %zext43, i32 35)
  %icmpEq40 = icmp eq i32 %cfg_DestPhi12, %30
  %32 = icmp eq i32 %30, %30
  %icmpEq44 = icmp eq i1 %icmpEq40, %32
  %zext45 = zext i1 %icmpEq44 to i32
  call void @assert_ft(i32 %zext45, i32 35)
  %zext41 = zext i1 %icmpEq40 to i32
  call void @assert_ft(i32 %zext41, i32 35)
  %33 = xor i32 %cfg_DestPhi12, %cfg_DiffPhi13
  %cfg_icmpEq14 = icmp eq i32 %33, 231735821
  %34 = icmp eq i32 %33, 231735821
  %icmpEq46 = icmp eq i1 %cfg_icmpEq14, %34
  %zext47 = zext i1 %icmpEq46 to i32
  call void @assert_ft(i32 %zext47, i32 35)
  %cfg_zext15 = zext i1 %cfg_icmpEq14 to i32
  call void @assert_cfg_ft(i32 %cfg_zext15, i32 %33, i32 35)
  %35 = xor i64 %23, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %.0.lcssa = phi i64 [ -4294967296, %2 ], [ %35, %._crit_edge.loopexit ]
  %36 = phi i64 [ -4294967296, %2 ], [ %35, %._crit_edge.loopexit ]
  %37 = phi i64 [ -4294967296, %2 ], [ %35, %._crit_edge.loopexit ]
  %38 = phi i64 [ -4294967296, %2 ], [ %35, %._crit_edge.loopexit ]
  %cfg_DestPhi16 = phi i32 [ 231735821, %._crit_edge.loopexit ], [ 128975389, %2 ]
  %39 = phi i32 [ 231735821, %._crit_edge.loopexit ], [ 128975389, %2 ]
  %40 = phi i32 [ 231735821, %._crit_edge.loopexit ], [ 128975389, %2 ]
  %41 = phi i32 [ 231735821, %._crit_edge.loopexit ], [ 128975389, %2 ]
  %cfg_DiffPhi17 = phi i32 [ 489685000, %._crit_edge.loopexit ], [ %5, %2 ]
  %42 = phi i32 [ 489685000, %._crit_edge.loopexit ], [ %5, %2 ]
  %43 = phi i32 [ 489685000, %._crit_edge.loopexit ], [ %5, %2 ]
  %44 = phi i32 [ 489685000, %._crit_edge.loopexit ], [ %5, %2 ]
  %icmpEq70 = icmp eq i32 %43, %44
  %zext71 = zext i1 %icmpEq70 to i32
  call void @assert_ft(i32 %zext71, i32 35)
  %icmpEq68 = icmp eq i32 %cfg_DiffPhi17, %42
  %45 = icmp eq i32 %42, %42
  %icmpEq72 = icmp eq i1 %icmpEq68, %45
  %zext73 = zext i1 %icmpEq72 to i32
  call void @assert_ft(i32 %zext73, i32 35)
  %zext69 = zext i1 %icmpEq68 to i32
  call void @assert_ft(i32 %zext69, i32 35)
  %icmpEq66 = icmp eq i32 %40, %41
  %zext67 = zext i1 %icmpEq66 to i32
  %46 = zext i1 %icmpEq66 to i32
  %icmpEq74 = icmp eq i32 %zext67, %46
  %zext75 = zext i1 %icmpEq74 to i32
  call void @assert_ft(i32 %zext75, i32 35)
  call void @assert_ft(i32 %zext67, i32 35)
  %icmpEq64 = icmp eq i32 %cfg_DestPhi16, %39
  %zext65 = zext i1 %icmpEq64 to i32
  call void @assert_ft(i32 %zext65, i32 35)
  %icmpEq62 = icmp eq i64 %37, %38
  %47 = icmp eq i64 %38, %38
  %icmpEq76 = icmp eq i1 %icmpEq62, %47
  %zext77 = zext i1 %icmpEq76 to i32
  call void @assert_ft(i32 %zext77, i32 35)
  %zext63 = zext i1 %icmpEq62 to i32
  call void @assert_ft(i32 %zext63, i32 35)
  %icmpEq60 = icmp eq i64 %.0.lcssa, %36
  %zext61 = zext i1 %icmpEq60 to i32
  %48 = zext i1 %icmpEq60 to i32
  %icmpEq78 = icmp eq i32 %zext61, %48
  %zext79 = zext i1 %icmpEq78 to i32
  call void @assert_ft(i32 %zext79, i32 35)
  call void @assert_ft(i32 %zext61, i32 35)
  %icmpEq52 = icmp eq i32 %cfg_DiffPhi17, %43
  %zext53 = zext i1 %icmpEq52 to i32
  call void @assert_ft(i32 %zext53, i32 35)
  %icmpEq50 = icmp eq i32 %cfg_DestPhi16, %40
  %49 = icmp eq i32 %39, %41
  %icmpEq80 = icmp eq i1 %icmpEq50, %49
  %zext81 = zext i1 %icmpEq80 to i32
  call void @assert_ft(i32 %zext81, i32 35)
  %50 = icmp eq i32 %cfg_DestPhi16, %40
  %icmpEq54 = icmp eq i1 %icmpEq50, %50
  %zext55 = zext i1 %icmpEq54 to i32
  call void @assert_ft(i32 %zext55, i32 35)
  %zext51 = zext i1 %icmpEq50 to i32
  %51 = zext i1 %49 to i32
  %icmpEq82 = icmp eq i32 %zext51, %51
  %zext83 = zext i1 %icmpEq82 to i32
  call void @assert_ft(i32 %zext83, i32 35)
  call void @assert_ft(i32 %zext51, i32 35)
  %icmpEq48 = icmp eq i64 %.0.lcssa, %37
  %zext49 = zext i1 %icmpEq48 to i32
  %52 = zext i1 %icmpEq48 to i32
  %53 = zext i1 %icmpEq48 to i32
  %icmpEq84 = icmp eq i32 %52, %53
  %zext85 = zext i1 %icmpEq84 to i32
  call void @assert_ft(i32 %zext85, i32 35)
  %icmpEq56 = icmp eq i32 %zext49, %52
  %zext57 = zext i1 %icmpEq56 to i32
  call void @assert_ft(i32 %zext57, i32 35)
  call void @assert_ft(i32 %zext49, i32 35)
  %54 = xor i32 %cfg_DestPhi16, %cfg_DiffPhi17
  %55 = xor i32 %39, %42
  %icmpEq86 = icmp eq i32 %54, %55
  %zext87 = zext i1 %icmpEq86 to i32
  call void @assert_ft(i32 %zext87, i32 35)
  %cfg_icmpEq18 = icmp eq i32 %54, 283116037
  %cfg_zext19 = zext i1 %cfg_icmpEq18 to i32
  %56 = zext i1 %cfg_icmpEq18 to i32
  %icmpEq58 = icmp eq i32 %cfg_zext19, %56
  %57 = icmp eq i32 %56, %56
  %icmpEq88 = icmp eq i1 %icmpEq58, %57
  %zext89 = zext i1 %icmpEq88 to i32
  call void @assert_ft(i32 %zext89, i32 35)
  %zext59 = zext i1 %icmpEq58 to i32
  call void @assert_ft(i32 %zext59, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext19, i32 %54, i32 35)
  ret i64 %.0.lcssa
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp sgt i32 %0, 1
  %6 = icmp sgt i32 %0, 1
  %icmpEq = icmp eq i1 %5, %6
  %zext = zext i1 %icmpEq to i32
  call void @assert_ft(i32 %zext, i32 35)
  %7 = select i1 %5, i32 180358407, i32 283116037
  %8 = xor i32 128975893, %7
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %2
  %.08 = phi i32 [ %23, %.lr.ph ], [ 0, %2 ]
  %9 = phi i32 [ %24, %.lr.ph ], [ 0, %2 ]
  %.037 = phi ptr [ %20, %.lr.ph ], [ %1, %2 ]
  %10 = phi ptr [ %20, %.lr.ph ], [ %1, %2 ]
  %.046 = phi i32 [ %18, %.lr.ph ], [ %0, %2 ]
  %11 = phi i32 [ %19, %.lr.ph ], [ %0, %2 ]
  %cfg_DestPhi = phi i32 [ 128975893, %2 ], [ 180358407, %.lr.ph ]
  %12 = phi i32 [ 128975893, %2 ], [ 180358407, %.lr.ph ]
  %cfg_DiffPhi = phi i32 [ %8, %2 ], [ %31, %.lr.ph ]
  %13 = phi i32 [ %8, %2 ], [ %31, %.lr.ph ]
  %icmpEq23 = icmp eq i32 %cfg_DiffPhi, %13
  %zext24 = zext i1 %icmpEq23 to i32
  call void @assert_ft(i32 %zext24, i32 35)
  %icmpEq21 = icmp eq i32 %cfg_DestPhi, %12
  %14 = icmp eq i32 %12, %12
  %icmpEq25 = icmp eq i1 %icmpEq21, %14
  %zext26 = zext i1 %icmpEq25 to i32
  call void @assert_ft(i32 %zext26, i32 35)
  %zext22 = zext i1 %icmpEq21 to i32
  call void @assert_ft(i32 %zext22, i32 35)
  %icmpEq19 = icmp eq i32 %.046, %11
  %zext20 = zext i1 %icmpEq19 to i32
  %15 = zext i1 %icmpEq19 to i32
  %icmpEq27 = icmp eq i32 %zext20, %15
  %zext28 = zext i1 %icmpEq27 to i32
  call void @assert_ft(i32 %zext28, i32 35)
  call void @assert_ft(i32 %zext20, i32 35)
  %icmpEq17 = icmp eq i32 %.08, %9
  %zext18 = zext i1 %icmpEq17 to i32
  call void @assert_ft(i32 %zext18, i32 35)
  %16 = xor i32 %cfg_DestPhi, %cfg_DiffPhi
  %17 = xor i32 %12, %13
  %icmpEq29 = icmp eq i32 %16, %17
  %zext30 = zext i1 %icmpEq29 to i32
  call void @assert_ft(i32 %zext30, i32 35)
  %cfg_icmpEq = icmp eq i32 %16, 180358407
  %cfg_zext = zext i1 %cfg_icmpEq to i32
  call void @assert_cfg_ft(i32 %cfg_zext, i32 %16, i32 35)
  %18 = add nsw i32 %.046, -1
  %19 = add nsw i32 %11, -1
  %icmpEq31 = icmp eq i32 %18, %19
  %zext32 = zext i1 %icmpEq31 to i32
  call void @assert_ft(i32 %zext32, i32 35)
  %20 = getelementptr inbounds ptr, ptr %.037, i64 1
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @crc32file(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !6
  %23 = or i32 %22, %.08
  %24 = or i32 %22, %9
  %icmpEq33 = icmp eq i32 %23, %24
  %zext34 = zext i1 %icmpEq33 to i32
  call void @assert_ft(i32 %zext34, i32 35)
  %25 = load i64, ptr %3, align 8
  %26 = load i64, ptr %4, align 8
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %25, i64 noundef %26)
  %28 = icmp ugt i32 %.046, 2
  %29 = icmp ugt i32 %11, 2
  %icmpEq35 = icmp eq i1 %28, %29
  %zext36 = zext i1 %icmpEq35 to i32
  call void @assert_ft(i32 %zext36, i32 35)
  %30 = select i1 %28, i32 180358407, i32 231736065
  %31 = xor i32 180358407, %30
  br i1 %28, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %cfg_DestPhi9 = phi i32 [ 180358407, %.lr.ph ]
  %32 = phi i32 [ 180358407, %.lr.ph ]
  %33 = phi i32 [ 180358407, %.lr.ph ]
  %cfg_DiffPhi10 = phi i32 [ %31, %.lr.ph ]
  %34 = phi i32 [ %31, %.lr.ph ]
  %35 = phi i32 [ %31, %.lr.ph ]
  %36 = phi i32 [ %31, %.lr.ph ]
  %icmpEq51 = icmp eq i32 %35, %36
  %zext52 = zext i1 %icmpEq51 to i32
  call void @assert_ft(i32 %zext52, i32 35)
  %icmpEq49 = icmp eq i32 %cfg_DiffPhi10, %34
  %37 = icmp eq i32 %34, %34
  %icmpEq53 = icmp eq i1 %icmpEq49, %37
  %zext54 = zext i1 %icmpEq53 to i32
  call void @assert_ft(i32 %zext54, i32 35)
  %zext50 = zext i1 %icmpEq49 to i32
  call void @assert_ft(i32 %zext50, i32 35)
  %icmpEq47 = icmp eq i32 %32, %33
  %zext48 = zext i1 %icmpEq47 to i32
  %38 = zext i1 %icmpEq47 to i32
  %icmpEq55 = icmp eq i32 %zext48, %38
  %zext56 = zext i1 %icmpEq55 to i32
  call void @assert_ft(i32 %zext56, i32 35)
  call void @assert_ft(i32 %zext48, i32 35)
  %icmpEq39 = icmp eq i32 %cfg_DiffPhi10, %35
  %zext40 = zext i1 %icmpEq39 to i32
  call void @assert_ft(i32 %zext40, i32 35)
  %icmpEq37 = icmp eq i32 %cfg_DestPhi9, %32
  %39 = icmp eq i32 %32, %33
  %icmpEq57 = icmp eq i1 %icmpEq37, %39
  %zext58 = zext i1 %icmpEq57 to i32
  call void @assert_ft(i32 %zext58, i32 35)
  %40 = icmp eq i32 %cfg_DestPhi9, %32
  %icmpEq41 = icmp eq i1 %icmpEq37, %40
  %zext42 = zext i1 %icmpEq41 to i32
  call void @assert_ft(i32 %zext42, i32 35)
  %zext38 = zext i1 %icmpEq37 to i32
  %41 = zext i1 %39 to i32
  %icmpEq59 = icmp eq i32 %zext38, %41
  %zext60 = zext i1 %icmpEq59 to i32
  call void @assert_ft(i32 %zext60, i32 35)
  call void @assert_ft(i32 %zext38, i32 35)
  %42 = xor i32 %cfg_DestPhi9, %cfg_DiffPhi10
  %cfg_icmpEq11 = icmp eq i32 %42, 231736065
  %43 = icmp eq i32 %42, 231736065
  %44 = icmp eq i32 %42, 231736065
  %icmpEq61 = icmp eq i1 %43, %44
  %zext62 = zext i1 %icmpEq61 to i32
  call void @assert_ft(i32 %zext62, i32 35)
  %icmpEq43 = icmp eq i1 %cfg_icmpEq11, %43
  %zext44 = zext i1 %icmpEq43 to i32
  call void @assert_ft(i32 %zext44, i32 35)
  %cfg_zext12 = zext i1 %cfg_icmpEq11 to i32
  %45 = zext i1 %43 to i32
  %icmpEq63 = icmp eq i32 %cfg_zext12, %45
  %zext64 = zext i1 %icmpEq63 to i32
  call void @assert_ft(i32 %zext64, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext12, i32 %42, i32 35)
  %46 = icmp ne i32 %23, 0
  %47 = zext i1 %46 to i32
  %48 = zext i1 %46 to i32
  %49 = zext i1 %46 to i32
  %icmpEq65 = icmp eq i32 %48, %49
  %zext66 = zext i1 %icmpEq65 to i32
  call void @assert_ft(i32 %zext66, i32 35)
  %icmpEq45 = icmp eq i32 %47, %48
  %zext46 = zext i1 %icmpEq45 to i32
  call void @assert_ft(i32 %zext46, i32 35)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %.0.lcssa = phi i32 [ 0, %2 ], [ %47, %._crit_edge.loopexit ]
  %50 = phi i32 [ 0, %2 ], [ %48, %._crit_edge.loopexit ]
  %51 = phi i32 [ 0, %2 ], [ %47, %._crit_edge.loopexit ]
  %52 = phi i32 [ 0, %2 ], [ %48, %._crit_edge.loopexit ]
  %cfg_DestPhi13 = phi i32 [ 231736065, %._crit_edge.loopexit ], [ 128975893, %2 ]
  %53 = phi i32 [ 231736065, %._crit_edge.loopexit ], [ 128975893, %2 ]
  %54 = phi i32 [ 231736065, %._crit_edge.loopexit ], [ 128975893, %2 ]
  %55 = phi i32 [ 231736065, %._crit_edge.loopexit ], [ 128975893, %2 ]
  %cfg_DiffPhi14 = phi i32 [ 489685252, %._crit_edge.loopexit ], [ %8, %2 ]
  %56 = phi i32 [ 489685252, %._crit_edge.loopexit ], [ %8, %2 ]
  %57 = phi i32 [ 489685252, %._crit_edge.loopexit ], [ %8, %2 ]
  %58 = phi i32 [ 489685252, %._crit_edge.loopexit ], [ %8, %2 ]
  %icmpEq89 = icmp eq i32 %57, %58
  %zext90 = zext i1 %icmpEq89 to i32
  call void @assert_ft(i32 %zext90, i32 35)
  %icmpEq87 = icmp eq i32 %cfg_DiffPhi14, %56
  %59 = icmp eq i32 %56, %56
  %icmpEq91 = icmp eq i1 %icmpEq87, %59
  %zext92 = zext i1 %icmpEq91 to i32
  call void @assert_ft(i32 %zext92, i32 35)
  %zext88 = zext i1 %icmpEq87 to i32
  call void @assert_ft(i32 %zext88, i32 35)
  %icmpEq85 = icmp eq i32 %54, %55
  %zext86 = zext i1 %icmpEq85 to i32
  %60 = zext i1 %icmpEq85 to i32
  %icmpEq93 = icmp eq i32 %zext86, %60
  %zext94 = zext i1 %icmpEq93 to i32
  call void @assert_ft(i32 %zext94, i32 35)
  call void @assert_ft(i32 %zext86, i32 35)
  %icmpEq83 = icmp eq i32 %cfg_DestPhi13, %53
  %zext84 = zext i1 %icmpEq83 to i32
  call void @assert_ft(i32 %zext84, i32 35)
  %icmpEq81 = icmp eq i32 %51, %52
  %61 = icmp eq i32 %52, %52
  %icmpEq95 = icmp eq i1 %icmpEq81, %61
  %zext96 = zext i1 %icmpEq95 to i32
  call void @assert_ft(i32 %zext96, i32 35)
  %zext82 = zext i1 %icmpEq81 to i32
  call void @assert_ft(i32 %zext82, i32 35)
  %icmpEq79 = icmp eq i32 %.0.lcssa, %50
  %zext80 = zext i1 %icmpEq79 to i32
  %62 = zext i1 %icmpEq79 to i32
  %icmpEq97 = icmp eq i32 %zext80, %62
  %zext98 = zext i1 %icmpEq97 to i32
  call void @assert_ft(i32 %zext98, i32 35)
  call void @assert_ft(i32 %zext80, i32 35)
  %icmpEq71 = icmp eq i32 %cfg_DiffPhi14, %57
  %zext72 = zext i1 %icmpEq71 to i32
  call void @assert_ft(i32 %zext72, i32 35)
  %icmpEq69 = icmp eq i32 %cfg_DestPhi13, %54
  %63 = icmp eq i32 %53, %55
  %icmpEq99 = icmp eq i1 %icmpEq69, %63
  %zext100 = zext i1 %icmpEq99 to i32
  call void @assert_ft(i32 %zext100, i32 35)
  %64 = icmp eq i32 %cfg_DestPhi13, %54
  %icmpEq73 = icmp eq i1 %icmpEq69, %64
  %zext74 = zext i1 %icmpEq73 to i32
  call void @assert_ft(i32 %zext74, i32 35)
  %zext70 = zext i1 %icmpEq69 to i32
  %65 = zext i1 %63 to i32
  %icmpEq101 = icmp eq i32 %zext70, %65
  %zext102 = zext i1 %icmpEq101 to i32
  call void @assert_ft(i32 %zext102, i32 35)
  call void @assert_ft(i32 %zext70, i32 35)
  %icmpEq67 = icmp eq i32 %.0.lcssa, %51
  %zext68 = zext i1 %icmpEq67 to i32
  %66 = zext i1 %icmpEq67 to i32
  %67 = zext i1 %icmpEq67 to i32
  %icmpEq103 = icmp eq i32 %66, %67
  %zext104 = zext i1 %icmpEq103 to i32
  call void @assert_ft(i32 %zext104, i32 35)
  %icmpEq75 = icmp eq i32 %zext68, %66
  %zext76 = zext i1 %icmpEq75 to i32
  call void @assert_ft(i32 %zext76, i32 35)
  call void @assert_ft(i32 %zext68, i32 35)
  %68 = xor i32 %cfg_DestPhi13, %cfg_DiffPhi14
  %69 = xor i32 %53, %56
  %icmpEq105 = icmp eq i32 %68, %69
  %zext106 = zext i1 %icmpEq105 to i32
  call void @assert_ft(i32 %zext106, i32 35)
  %cfg_icmpEq15 = icmp eq i32 %68, 283116037
  %cfg_zext16 = zext i1 %cfg_icmpEq15 to i32
  %70 = zext i1 %cfg_icmpEq15 to i32
  %icmpEq77 = icmp eq i32 %cfg_zext16, %70
  %71 = icmp eq i32 %70, %70
  %icmpEq107 = icmp eq i1 %icmpEq77, %71
  %zext108 = zext i1 %icmpEq107 to i32
  call void @assert_ft(i32 %zext108, i32 35)
  %zext78 = zext i1 %icmpEq77 to i32
  call void @assert_ft(i32 %zext78, i32 35)
  call void @assert_cfg_ft(i32 %cfg_zext16, i32 %68, i32 35)
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @exit(i32, ...)

declare i32 @printf.1(ptr, i32, ...)

define void @assert_ft(i32 %0, i32 %1) {
entry:
  %2 = icmp ne i32 %0, 1
  br i1 %2, label %fail, label %exit

fail:                                             ; preds = %entry
  %assertcheck = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
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
  %assertcheck = call i32 (ptr, ...) @printf(ptr @1, i32 %1, i32 %2)
  call void (i32, ...) @exit(i32 1099)
  br label %exit

exit:                                             ; preds = %fail, %entry
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 17.0.2 (1~exp1ubuntu2.1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 -1, i32 1}
