; ModuleID = 'slash/test.o.a.i.p.i.h.x.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %1*, %0*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%1 = type { %1*, %0*, i32 }

@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@stdout = external dso_local local_unnamed_addr global %0*, align 8
@2 = private unnamed_addr constant [13 x i8] c"aflag set !\0A\00", align 1
@3 = private unnamed_addr constant [13 x i8] c"bflag set !\0A\00", align 1
@4 = private unnamed_addr constant [13 x i8] c"cflag set !\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %0*, align 8
@5 = private unnamed_addr constant [18 x i8] c"Usage: %s [-abc]\0A\00", align 1
@6 = private constant [5 x i8] c"test\00"
@7 = private constant [3 x i8] c"-a\00"
@8 = private constant [3 x i8] c"90\00"

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @9(i32 %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 90
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i64 0, i64 0), i32 %4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @10(i32 %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 80, %3
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  call fastcc void @9(i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @11() unnamed_addr #0 {
  %1 = alloca i32, align 4
  store i32 30, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = shl i32 %2, 20
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  call fastcc void @9(i32 %4)
  %5 = load i32, i32* %1, align 4
  call fastcc void @10(i32 %5)
  ret void
}

declare dso_local i32 @getopt(...) local_unnamed_addr #1

declare dso_local i32 @fprintf(%0*, i8*, ...) local_unnamed_addr #1

define i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = tail call i8* @malloc(i64 32)
  %6 = bitcast i8* %5 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr i8, i8* %5, i64 8
  %8 = bitcast i8* %7 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @7, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr i8, i8* %5, i64 16
  %10 = bitcast i8* %9 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @8, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds i8, i8* %5, i64 24
  %12 = bitcast i8* %11 to i8**
  store i8* null, i8** %12, align 8
  br label %15

13:                                               ; preds = %15, %27, %2
  %14 = phi i32 [ 1, %2 ], [ 2, %27 ], [ 0, %15 ]
  ret i32 %14

15:                                               ; preds = %26, %4
  %16 = tail call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 3, i8** nonnull %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i64 0, i64 0)) #2
  switch i32 %16, label %27 [
    i32 -1, label %13
    i32 97, label %17
    i32 98, label %20
    i32 99, label %23
  ]

17:                                               ; preds = %15
  %18 = load %0*, %0** @stdout, align 8
  %19 = tail call i32 (%0*, i8*, ...) @fprintf(%0* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @2, i64 0, i64 0)) #2
  tail call fastcc void @9(i32 10) #2
  br label %26

20:                                               ; preds = %15
  %21 = load %0*, %0** @stdout, align 8
  %22 = tail call i32 (%0*, i8*, ...) @fprintf(%0* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i64 0, i64 0)) #2
  tail call fastcc void @10(i32 20) #2
  br label %26

23:                                               ; preds = %15
  %24 = load %0*, %0** @stdout, align 8
  %25 = tail call i32 (%0*, i8*, ...) @fprintf(%0* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i64 0, i64 0)) #2
  tail call fastcc void @11() #2
  br label %26

26:                                               ; preds = %23, %20, %17
  br label %15

27:                                               ; preds = %15
  %28 = load %0*, %0** @stderr, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = tail call i32 (%0*, i8*, ...) @fprintf(%0* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @5, i64 0, i64 0), i8* %29) #2
  br label %13
}

declare noalias i8* @malloc(i64) local_unnamed_addr

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"}
!1 = !{i32 1, !"wchar_size", i32 4}
