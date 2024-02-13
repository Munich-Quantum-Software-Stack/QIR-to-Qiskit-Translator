; ModuleID = 'circuit-114'
source_filename = "circuit-114"

%Qubit = type opaque
%Result = type opaque

define void @circuit-114() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__reset__body(%Qubit* null)
  call void @__quantum__qis__reset__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__reset__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__y__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__z__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__t__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__s__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 1.570800e+00, %Qubit* null)
  call void @__quantum__qis__ry__body(double 7.854000e-01, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 3.927000e-01, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__s__adj(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__swap__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__t__adj(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__barrier__body()
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__rt__array_record_output(i64 3, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__reset__body(%Qubit*)

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__qis__y__body(%Qubit*)

declare void @__quantum__qis__z__body(%Qubit*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__t__body(%Qubit*)

declare void @__quantum__qis__s__body(%Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__ccx__body(%Qubit*, %Qubit*, %Qubit*)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__s__adj(%Qubit*)

declare void @__quantum__qis__swap__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__t__adj(%Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__barrier__body()

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="3" "num_required_results"="3" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 1}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
