; ModuleID = 'slash/test.o.a.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"aflag set !\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bflag set !\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"cflag set !\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Usage: %s [-abc]\0A\00", align 1
@new_argv = private constant [5 x i8] c"test\00"
@new_argv.1 = private constant [3 x i8] c"-a\00"
@new_argv.2 = private constant [3 x i8] c"90\00"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_aflag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 90
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_bflag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 80, %3
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  call void @process_aflag(i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_cflag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 20
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  call void @process_aflag(i32 %5)
  %6 = load i32, i32* %2, align 4
  call void @process_bflag(i32 %6)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @0(i32 %0, i8** %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %11, i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %29 [
    i32 97, label %17
    i32 98, label %21
    i32 99, label %25
  ]

17:                                               ; preds = %15
  store i32 10, i32* %6, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  call void @process_aflag(i32 %20)
  br label %35

21:                                               ; preds = %15
  store i32 20, i32* %7, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  call void @process_bflag(i32 %24)
  br label %35

25:                                               ; preds = %15
  store i32 30, i32* %8, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  call void @process_cflag(i32 %28)
  br label %35

29:                                               ; preds = %15
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  store i32 2, i32* %3, align 4
  br label %37

35:                                               ; preds = %25, %21, %17
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @getopt(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

define i32 @main(i32 %0, i8** %1) {
entry:
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = icmp eq i32 %0, 1
  br i1 %9, label %entry1, label %incorrect_argc

entry1:                                           ; preds = %entry
  %new_argc = add i32 %0, 2
  %10 = icmp eq i32 %0, 1
  call void @llvm.assume(i1 %10)
  %11 = add i32 %new_argc, 1
  %12 = sext i32 %11 to i64
  %mallocsize = mul i64 %12, 8
  %malloccall = tail call i8* @malloc(i64 %mallocsize)
  %13 = bitcast i8* %malloccall to i8**
  %14 = getelementptr i8*, i8** %13, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @new_argv, i32 0, i32 0), i8** %14
  %15 = getelementptr i8*, i8** %13, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @new_argv.1, i32 0, i32 0), i8** %15
  %16 = getelementptr i8*, i8** %13, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @new_argv.2, i32 0, i32 0), i8** %16
  %17 = getelementptr inbounds i8*, i8** %13, i32 %new_argc
  store i8* null, i8** %17
  br label %pre_header

incorrect_argc:                                   ; preds = %entry
  ret i32 1

pre_header:                                       ; preds = %entry1
  %18 = alloca i32
  store i32 1, i32* %18
  br label %header

header:                                           ; preds = %body, %pre_header
  %19 = load i32, i32* %18
  %20 = icmp slt i32 %19, %0
  br i1 %20, label %body, label %tail

body:                                             ; preds = %header
  %21 = add i32 2, %19
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %13, i64 %22
  %24 = zext i32 %19 to i64
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24
  %26 = load i8*, i8** %25
  store i8* %26, i8** %23
  %27 = add i32 %19, 1
  store i32 %27, i32* %18
  br label %header

tail:                                             ; preds = %header
  %28 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28)
  %29 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29)
  %30 = bitcast i8*** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30)
  %31 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31)
  %32 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32)
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33)
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %34)
  store i32 0, i32* %2, align 4
  store i32 %new_argc, i32* %3, align 4
  store i8** %13, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %59, %tail
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 %36, i8** %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %54 [
    i32 97, label %42
    i32 98, label %46
    i32 99, label %50
  ]

42:                                               ; preds = %40
  store i32 10, i32* %5, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #5
  %45 = load i32, i32* %5, align 4
  call void @process_aflag(i32 %45) #5
  br label %59

46:                                               ; preds = %40
  store i32 20, i32* %6, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #5
  %49 = load i32, i32* %6, align 4
  call void @process_bflag(i32 %49) #5
  br label %59

50:                                               ; preds = %40
  store i32 30, i32* %7, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #5
  %53 = load i32, i32* %7, align 4
  call void @process_cflag(i32 %53) #5
  br label %59

54:                                               ; preds = %40
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %57) #5
  store i32 2, i32* %2, align 4
  br label %.exit

59:                                               ; preds = %50, %46, %42
  br label %35

60:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %.exit

.exit:                                            ; preds = %54, %60
  %61 = load i32, i32* %2, align 4
  %62 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62)
  %63 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63)
  %64 = bitcast i8*** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64)
  %65 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65)
  %66 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66)
  %67 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67)
  %68 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68)
  ret i32 %61
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

declare noalias i8* @malloc(i64)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"}
!1 = !{i32 1, !"wchar_size", i32 4}
