; ModuleID = 'circuit-105022'
source_filename = "circuit-105022"

%Qubit = type opaque
%Result = type opaque

define void @circuit-105022() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0xBF049F13A51E544C, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x400921DED2AB378D, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF0ADDCE515AD7F, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC005394C9E355EB9, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921DF1EB6C66C, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF9221EBCA92A30, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3EE0F2E640FD7DD5, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF54951FFFCEA8C, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF91E554FE75FDE, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFED126B8047C618, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFEEA9075512EED, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 9 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFE1A0E83F17D127, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF91B86B4729310, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921C84217E523, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF92450EB9F25E0, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF91F9919E875A8, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF922F1DC8D985B, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE0FF825602E391, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC004E247F43C7B1A, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FD48AB9BD387B7C, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921FB54442D18, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF91DE7B02B9C7D, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 9 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF2520BCA361185, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF91BA1E1C47A32, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921CBE7714942, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF9223210700B17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE0E8690D23F06C, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF150A92BC41D8A, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF92219CCA824B8, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBF0BD5C91FDC4480, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921D8CDA0FEB6, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FEB61BC85F0AA5E, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF5B2E615D3BD3A, %Qubit* inttoptr (i64 9 to %Qubit*))
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
  call void @__quantum__rt__array_record_output(i64 11, i8* null)
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

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="11" "num_required_results"="11" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
