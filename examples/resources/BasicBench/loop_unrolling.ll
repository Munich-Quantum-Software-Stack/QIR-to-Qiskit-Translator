; ModuleID = 'loop_unrolling'
source_filename = "loop_unrolling"

%Qubit = type opaque
%Result = type opaque

define internal void @loop_unrolling() #0 {
entry:
  br label %header__1

header__1:
  %0 = phi i64 [ 1, %entry ], [ %2, %body__1 ]
  %1 = icmp slt i64 %0, 6
  br i1 %1, label %body__1, label %exit__1

body__1:
  call void @__quantum__qis__h__body(%Qubit* null)
  %2 = add i64 %0, 1
  br label %header__1

exit__1:
  ret void
}

; declarations of QIS functions

declare void @__quantum__qis__h__body(%Qubit*)

attributes #0 = { "entry_point" "num_required_qubits"="1" "num_required_results"="1" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
