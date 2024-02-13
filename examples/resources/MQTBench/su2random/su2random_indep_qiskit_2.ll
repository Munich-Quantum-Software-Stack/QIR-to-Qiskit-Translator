; ModuleID = 'circuit-1616'
source_filename = "circuit-1616"

%Qubit = type opaque
%Result = type opaque

define void @circuit-1616() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0xBFF6FD4675D4B977, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC0026A337E342098, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FC0B090B326138C, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF940C3D3845A8B, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40090EC5218F7AC6, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FF3E954D8C2278C, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF699599DBFEDF7, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF812F6D02BFBCA, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF1003961BF68DF, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFFFA18E8743DEF9, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FE1C30396DD7703, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD2BDDC9C8962C0, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3F99672FD370BADD, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFF2D65F8DAEE23A, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xC0088517976B179C, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC0037A001C5CA5E8, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__rt__array_record_output(i64 2, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="2" "num_required_results"="2" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
