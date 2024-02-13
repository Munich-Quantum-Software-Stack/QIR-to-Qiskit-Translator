; ModuleID = 'circuit-2008021'
source_filename = "circuit-2008021"

%Qubit = type opaque
%Result = type opaque

define void @circuit-2008021() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__rz__body(double 0x3FEB5408B5754608, %Qubit* null)
  call void @__quantum__qis__rx__body(double 0xBFF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFF7D8716DB851DC, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFDE03D3E0D6D5C0, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFDE03D3E0D6D5C0, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC009C6C0478A1AB6, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4002D97C7F3321D2, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x400DBE968F3B5EF2, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x401799BE5B1CDE11, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__t__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4002D97C7F3321D2, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE4C1F0FB853BBC, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFC8438C2B52DA80, %Qubit* null)
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC000467DA0A9B91A, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBF571BDE9FFC3670, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x400921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFE6BB43BA636CE3, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE6BB43BA636CE3, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC008BF59E360EB3E, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFDCB128EAA8C530, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4000C6DE6CEF17EB, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rx__body(double 0xBFF921FB54442D18, %Qubit* null)
  call void @__quantum__qis__s__body(%Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFE90636098BBEBB, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FE90636098BBEBC, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FEDDF1BC0CE30C8, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFF110DFC09E9161, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFF110DFC09E9161, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC0010EB015FD35A4, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFE921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FDA957281DF7260, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFF17AA39EFAFA80, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFFFDC09A750EC0F, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FFFDC09A750EC11, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FE70CF52C9440A0, %Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__rt__array_record_output(i64 4, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 3 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__rx__body(double, %Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__t__body(%Qubit*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__ccx__body(%Qubit*, %Qubit*, %Qubit*)

declare void @__quantum__qis__s__body(%Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="4" "num_required_results"="4" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
