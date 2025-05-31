; ModuleID = 'probe5.51c8ecc133cfe598-cgu.0'
source_filename = "probe5.51c8ecc133cfe598-cgu.0"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-unknown-none-eabi"

@alloc_e6758488a51c40069ade2309416f0500 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"<anon>" }>, align 1
@alloc_a49be173fdf35812463348c571e52e40 = private unnamed_addr constant <{ ptr, [12 x i8] }> <{ ptr @alloc_e6758488a51c40069ade2309416f0500, [12 x i8] c"\06\00\00\00\02\00\00\00\1F\00\00\00" }>, align 4

; probe5::probe
; Function Attrs: nounwind
define dso_local void @_ZN6probe55probe17hc2c3cbaa42922cc2E() unnamed_addr #0 {
start:
  ret void
}

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hbdbe2f7d893babcbE(ptr align 4) unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "target-cpu"="generic" "target-features"="+strict-align,+atomics-32" }
attributes #1 = { cold noinline noreturn nounwind "frame-pointer"="all" "target-cpu"="generic" "target-features"="+strict-align,+atomics-32" }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.84.0 (9fc6b4312 2025-01-07)"}
