; ModuleID = 'circuit-680'
source_filename = "circuit-680"

%Qubit = type opaque
%Result = type opaque

define void @circuit-680() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__rx__body(double 0xC00D8A33B030B4D4, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x4015B777150A5340, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF5C06DAE59443F, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xC017A6331932002D, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFC0E0E1414DFE10, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xC0118C2FB92B2F59, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x4013EE99F6B6AB22, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF6B0BFF11C376E, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x400F3F3D9811035E, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x40012FBD85312CC9, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF8D613D31B9B67, %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x400C59A82CDA539E, %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xC00A56A916E51ED3, %Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 13 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 13 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x4016C0079372382C, %Qubit* inttoptr (i64 14 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 14 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 14 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 14 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF34E279067C1B0, %Qubit* inttoptr (i64 15 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 15 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 15 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 15 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xC01804339A613FB6, %Qubit* inttoptr (i64 16 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 16 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 16 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 16 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FE0163794C1C384, %Qubit* inttoptr (i64 17 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 17 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 17 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 17 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xC010781A2976F1CF, %Qubit* inttoptr (i64 18 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 18 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 18 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 18 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x40134DF6D4DE1346, %Qubit* inttoptr (i64 19 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 19 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 19 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 19 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF96AB6A7C759C6, %Qubit* inttoptr (i64 20 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 20 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 20 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 20 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x400A3989EC7D6C3C, %Qubit* inttoptr (i64 21 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 21 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 9 to %Qubit*), %Qubit* inttoptr (i64 21 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 21 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x4001B335B771F1B5, %Qubit* inttoptr (i64 22 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 22 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 10 to %Qubit*), %Qubit* inttoptr (i64 22 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 22 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xC0011232E0271CA4, %Qubit* inttoptr (i64 23 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 23 to %Qubit*), %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 11 to %Qubit*), %Qubit* inttoptr (i64 23 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 23 to %Qubit*), %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x40076F80204BCFE2, %Qubit* inttoptr (i64 24 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 24 to %Qubit*), %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 12 to %Qubit*), %Qubit* inttoptr (i64 24 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 24 to %Qubit*), %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__rt__array_record_output(i64 1, i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__ccx__body(%Qubit*, %Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="25" "num_required_results"="1" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
