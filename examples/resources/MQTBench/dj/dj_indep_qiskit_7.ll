; ModuleID = 'circuit-1025912'
source_filename = "circuit-1025912"

%Qubit = type opaque
%Result = type opaque

define void @circuit-1025912() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Result* inttoptr (i64 5 to %Result*))
  call void @__quantum__rt__array_record_output(i64 6, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 5 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 4 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 3 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="7" "num_required_results"="6" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
