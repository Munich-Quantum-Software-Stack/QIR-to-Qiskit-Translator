; ModuleID = 'circuit-850'
source_filename = "circuit-850"

%Qubit = type opaque
%Result = type opaque

define void @circuit-850() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__rx__body(double 0xBFF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFE4A7717F808470, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FC6AE183C8A7F60, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFD8FDB16DEAED14, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FD8FDB16DEAED16, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00247FB4A4AB394, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF07FCEA7E12FB3, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF07FCEA7E12FB3, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40088B7D6F54A798, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFF921FB54442D1A, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FDBA2ADDD228A3D, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FB7FDDC18C5F6F5, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFE763C6C816CF5B, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE763C6C816CF5B, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFF738C74F59A90, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF07FCEA7E12FB3, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF07FCEA7E12FB3, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFDC4926AE66DF40, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40012249DBD4DE22, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFFD0DE17A0DC2E0, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFD8FDB16DEAED14, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FD8FDB16DEAED16, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF14F248FA5D590, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFFE78A056E1D0F0, %Qubit* inttoptr (i64 2 to %Qubit*))
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

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="3" "num_required_results"="3" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
