; ModuleID = 'mat.cpp'
source_filename = "mat.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define void @_Z7mat_vecPPiS_S_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %10

10:                                               ; preds = %48, %3
  %11 = load i32, ptr %7, align 4
  %12 = icmp slt i32 %11, 2048
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 0, ptr %17, align 4
  store i32 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %44, %13
  %19 = load i32, ptr %8, align 4
  %20 = icmp slt i32 %19, 2048
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = mul nsw i32 %30, %35
  store i32 %36, ptr %9, align 4
  %37 = load i32, ptr %9, align 4
  %38 = load ptr, ptr %6, align 8
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = add nsw i32 %42, %37
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %21
  %45 = load i32, ptr %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %8, align 4
  br label %18, !llvm.loop !5

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %10, !llvm.loop !7

51:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %11 = call noalias noundef nonnull ptr @_Znam(i64 noundef 16384) #5
  store ptr %11, ptr %2, align 8
  %12 = call noalias noundef nonnull ptr @_Znam(i64 noundef 8192) #5
  store ptr %12, ptr %3, align 8
  %13 = call noalias noundef nonnull ptr @_Znam(i64 noundef 8192) #5
  store ptr %13, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %14

14:                                               ; preds = %23, %0
  %15 = load i32, ptr %5, align 4
  %16 = icmp slt i32 %15, 2048
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call noalias noundef nonnull ptr @_Znam(i64 noundef 8192) #5
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  store ptr %18, ptr %22, align 8
  br label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  br label %14, !llvm.loop !8

26:                                               ; preds = %14
  call void @srand(i32 noundef 1337)
  store i32 0, ptr %6, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %28, 2048
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  store i32 0, ptr %7, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, ptr %7, align 4
  %33 = icmp slt i32 %32, 2048
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = call i32 @rand()
  %36 = load ptr, ptr %2, align 8
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  store i32 %35, ptr %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, ptr %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %31, !llvm.loop !9

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %6, align 4
  br label %27, !llvm.loop !10

51:                                               ; preds = %27
  store i32 0, ptr %8, align 4
  br label %52

52:                                               ; preds = %61, %51
  %53 = load i32, ptr %8, align 4
  %54 = icmp slt i32 %53, 2048
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = call i32 @rand()
  %57 = load ptr, ptr %3, align 8
  %58 = load i32, ptr %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  store i32 %56, ptr %60, align 4
  br label %61

61:                                               ; preds = %55
  %62 = load i32, ptr %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %8, align 4
  br label %52, !llvm.loop !11

64:                                               ; preds = %52
  %65 = load ptr, ptr %2, align 8
  %66 = load ptr, ptr %3, align 8
  %67 = load ptr, ptr %4, align 8
  call void @_Z7mat_vecPPiS_S_(ptr noundef %65, ptr noundef %66, ptr noundef %67)
  store i32 0, ptr %9, align 4
  br label %68

68:                                               ; preds = %81, %64
  %69 = load i32, ptr %9, align 4
  %70 = icmp slt i32 %69, 2048
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load ptr, ptr %4, align 8
  %73 = load i32, ptr %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %4, align 8
  %78 = load i32, ptr %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  store i32 %76, ptr %80, align 4
  br label %81

81:                                               ; preds = %71
  %82 = load i32, ptr %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %9, align 4
  br label %68, !llvm.loop !12

84:                                               ; preds = %68
  store i32 0, ptr %10, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, ptr %10, align 4
  %87 = icmp slt i32 %86, 2048
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load ptr, ptr %2, align 8
  %90 = load i32, ptr %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  call void @_ZdaPv(ptr noundef %93) #6
  br label %96

96:                                               ; preds = %95, %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %10, align 4
  br label %85, !llvm.loop !13

100:                                              ; preds = %85
  %101 = load ptr, ptr %2, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call void @_ZdaPv(ptr noundef %101) #6
  br label %104

104:                                              ; preds = %103, %100
  %105 = load ptr, ptr %3, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @_ZdaPv(ptr noundef %105) #6
  br label %108

108:                                              ; preds = %107, %104
  %109 = load ptr, ptr %4, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void @_ZdaPv(ptr noundef %109) #6
  br label %112

112:                                              ; preds = %111, %108
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #2

declare void @srand(i32 noundef) #3

declare i32 @rand() #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) #4

attributes #0 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #5 = { builtin allocsize(0) }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 17.0.6"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
