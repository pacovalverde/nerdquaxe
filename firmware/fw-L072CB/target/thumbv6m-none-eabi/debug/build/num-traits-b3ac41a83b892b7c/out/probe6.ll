; ModuleID = 'probe6.b1898a42e0c4178c-cgu.0'
source_filename = "probe6.b1898a42e0c4178c-cgu.0"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-unknown-none-eabi"

; core::f64::<impl f64>::is_subnormal
; Function Attrs: inlinehint nounwind
define internal zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17h5c4c6e5a7bc120f3E"(double %self) unnamed_addr #0 {
start:
  %_2 = alloca [1 x i8], align 1
  %b = bitcast double %self to i64
  %_5 = and i64 %b, 4503599627370495
  %_6 = and i64 %b, 9218868437227405312
  %0 = icmp eq i64 %_5, 0
  br i1 %0, label %bb3, label %bb2

bb3:                                              ; preds = %start
  %1 = icmp eq i64 %_6, 9218868437227405312
  br i1 %1, label %bb9, label %bb2

bb2:                                              ; preds = %bb3, %start
  switch i64 %_6, label %bb4 [
    i64 9218868437227405312, label %bb8
    i64 0, label %bb5
  ]

bb9:                                              ; preds = %bb3
  store i8 1, ptr %_2, align 1
  br label %bb1

bb1:                                              ; preds = %bb4, %bb6, %bb7, %bb8, %bb9
  %2 = load i8, ptr %_2, align 1
  %_3 = zext i8 %2 to i32
  %_0 = icmp eq i32 %_3, 3
  ret i1 %_0

bb4:                                              ; preds = %bb2
  store i8 4, ptr %_2, align 1
  br label %bb1

bb8:                                              ; preds = %bb2
  store i8 0, ptr %_2, align 1
  br label %bb1

bb5:                                              ; preds = %bb2
  %3 = icmp eq i64 %_5, 0
  br i1 %3, label %bb7, label %bb6

bb7:                                              ; preds = %bb5
  store i8 2, ptr %_2, align 1
  br label %bb1

bb6:                                              ; preds = %bb5
  store i8 3, ptr %_2, align 1
  br label %bb1
}

; probe6::probe
; Function Attrs: nounwind
define dso_local void @_ZN6probe65probe17h3dcd397236635a00E() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::is_subnormal
  %_1 = call zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17h5c4c6e5a7bc120f3E"(double 1.000000e+00) #2
  ret void
}

attributes #0 = { inlinehint nounwind "frame-pointer"="all" "target-cpu"="generic" "target-features"="+strict-align,+atomics-32" }
attributes #1 = { nounwind "frame-pointer"="all" "target-cpu"="generic" "target-features"="+strict-align,+atomics-32" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.84.0 (9fc6b4312 2025-01-07)"}
