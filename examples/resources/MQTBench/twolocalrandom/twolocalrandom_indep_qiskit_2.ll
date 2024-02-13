; ModuleID = 'circuit-884269'
source_filename = "circuit-884269"

%Qubit = type opaque
%Result = type opaque

define void @circuit-884269() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0x401362A9B6CEFEC1, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FC0B090B3261384, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400FD9C32A543991, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x4012D1CA5F63167B, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40090EC5218F7AC8, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF699599DBFEDF9, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF3E954D8C226FB, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x40131D3DA0392E22, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__array_record_output(i64 2, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="2" "num_required_results"="2" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
