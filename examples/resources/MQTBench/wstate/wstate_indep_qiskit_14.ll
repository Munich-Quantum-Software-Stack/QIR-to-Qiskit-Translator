; ModuleID = 'circuit-1022044'
source_filename = "circuit-1022044"

%Qubit = type opaque
%Result = type opaque

define void @circuit-1022044() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0xBFE921FB54442D18, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFEE91F42805715D, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF0C152382D7365, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF1B6E192EBBE44, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF267791E35F0C4, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF2EE62BEF09FF2, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF359D26F93B6C3, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF3B2028082E8D4, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF3FC176B7A8560, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF43B783B02C1FD, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF4727F6D4D118C, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF4A2DCE0545978, %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF4CDCF57453D63, %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__x__body(%Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 13 to %Qubit*), %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF4CDCF57453D63, %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 12 to %Qubit*), %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF4A2DCE0545978, %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 11 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF4727F6D4D118C, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 10 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 12 to %Qubit*), %Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 11 to %Qubit*), %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 10 to %Qubit*), %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF43B783B02C1FD, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 9 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF3FC176B7A8560, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF3B2028082E8D4, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF359D26F93B6C3, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF2EE62BEF09FF2, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF267791E35F0C4, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF1B6E192EBBE44, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF0C152382D7365, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FEE91F42805715D, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FE921FB54442D18, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 9 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Result* inttoptr (i64 5 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Result* inttoptr (i64 6 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Result* inttoptr (i64 7 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Result* inttoptr (i64 8 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 9 to %Qubit*), %Result* inttoptr (i64 9 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 10 to %Qubit*), %Result* inttoptr (i64 10 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 11 to %Qubit*), %Result* inttoptr (i64 11 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 12 to %Qubit*), %Result* inttoptr (i64 12 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 13 to %Qubit*), %Result* inttoptr (i64 13 to %Result*))
  call void @__quantum__rt__array_record_output(i64 14, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 13 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 12 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 11 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 10 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 9 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 8 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 7 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 6 to %Result*), i8* null)
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

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="14" "num_required_results"="14" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
