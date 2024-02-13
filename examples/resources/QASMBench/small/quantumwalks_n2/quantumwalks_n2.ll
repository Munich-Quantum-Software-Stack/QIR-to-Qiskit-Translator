; ModuleID = 'circuit-1154'
source_filename = "circuit-1154"

%Qubit = type opaque
%Result = type opaque

define void @circuit-1154() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__rz__body(double 0xBEF0A4E645880000, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF9211E2EA3A3AC, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x4008EE837ED00D84, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FA9B660F5157A00, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE92A99AB30EE2C, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FF7FEF4D88AE2B0, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFA9B710C6DECCAF, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFFA4501BE82BAD8, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rx__body(double 0xBEEF5DDDA4600000, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBF99BBEABA0FFC00, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF9211E2EA3A3B4, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x400921F301D10A94, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFB22E7256C7D2C0, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4002D67827A42918, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4008BB2CE10CA778, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__array_record_output(i64 2, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="2" "num_required_results"="2" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
