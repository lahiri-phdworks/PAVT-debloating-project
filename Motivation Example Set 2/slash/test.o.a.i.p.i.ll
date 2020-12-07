; ModuleID = 'slash/test.o.a.i.p.i.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"aflag set !\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bflag set !\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"cflag set !\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Usage: %s [-abc]\0A\00", align 1
@new_argv = private constant [5 x i8] c"test\00"
@new_argv.1 = private constant [3 x i8] c"-a\00"
@new_argv.2 = private constant [3 x i8] c"90\00"

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @process_aflag(i32 %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 90
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret void
}

declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @process_bflag(i32 %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 80, %3
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  call fastcc void @process_aflag(i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @process_cflag() unnamed_addr #0 {
  %1 = alloca i32, align 4
  store i32 30, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = shl i32 %2, 20
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  call fastcc void @process_aflag(i32 %4)
  %5 = load i32, i32* %1, align 4
  call fastcc void @process_bflag(i32 %5)
  ret void
}

declare dso_local i32 @getopt(...) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

define i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr {
entry:
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %entry1, label %incorrect_argc

entry1:                                           ; preds = %entry
  %malloccall = tail call i8* @malloc(i64 32)
  %3 = bitcast i8* %malloccall to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @new_argv, i64 0, i64 0), i8** %3, align 8
  %4 = getelementptr i8, i8* %malloccall, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @new_argv.1, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr i8, i8* %malloccall, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @new_argv.2, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds i8, i8* %malloccall, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* null, i8** %9, align 8
  br label %tail

incorrect_argc:                                   ; preds = %tail, %20, %entry
  %merge = phi i32 [ 1, %entry ], [ 2, %20 ], [ 0, %tail ]
  ret i32 %merge

tail:                                             ; preds = %tail.backedge, %entry1
  %10 = tail call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 3, i8** nonnull %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #2
  switch i32 %10, label %20 [
    i32 -1, label %incorrect_argc
    i32 97, label %11
    i32 98, label %14
    i32 99, label %17
  ]

11:                                               ; preds = %tail
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #2
  tail call fastcc void @process_aflag(i32 10) #2
  br label %tail.backedge

14:                                               ; preds = %tail
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #2
  tail call fastcc void @process_bflag(i32 20) #2
  br label %tail.backedge

17:                                               ; preds = %tail
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #2
  tail call fastcc void @process_cflag() #2
  br label %tail.backedge

tail.backedge:                                    ; preds = %17, %14, %11
  br label %tail

20:                                               ; preds = %tail
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %22) #2
  br label %incorrect_argc
}

declare noalias i8* @malloc(i64) local_unnamed_addr

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"}
!1 = !{i32 1, !"wchar_size", i32 4}
