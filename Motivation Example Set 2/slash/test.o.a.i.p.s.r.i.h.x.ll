; ModuleID = 'slash/test.o.a.i.p.s.r.i.h.x.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@0 = private constant [5 x i8] c"test\00"
@1 = private constant [5 x i8] c"-500\00"

; Function Attrs: noinline nounwind optnone uwtable
define internal fastcc void @2() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 -410, i32* %1, align 4
  store i32 -500, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 %3, %4
  %6 = sext i32 %5 to i64
  ret void
}

define i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call i8* @malloc(i64 24)
  %6 = bitcast i8* %5 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr i8, i8* %5, i64 8
  %8 = bitcast i8* %7 to i8**
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds i8, i8* %5, i64 16
  %10 = bitcast i8* %9 to i8**
  store i8* null, i8** %10, align 8
  tail call fastcc void @2() #1
  br label %11

11:                                               ; preds = %4, %2
  %12 = phi i32 [ 1, %2 ], [ 0, %4 ]
  ret i32 %12
}

declare noalias i8* @malloc(i64) local_unnamed_addr

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 10.0.1-++20201112101950+ef32c611aa2-1~exp1~20201112092551.202"}
!1 = !{i32 1, !"wchar_size", i32 4}
