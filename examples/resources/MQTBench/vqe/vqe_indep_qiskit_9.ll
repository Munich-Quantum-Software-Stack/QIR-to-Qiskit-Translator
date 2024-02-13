; ModuleID = 'circuit-681'
source_filename = "circuit-681"

%Qubit = type opaque
%Result = type opaque

define void @circuit-681() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x400921FAF06E5EAA, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF92129A185B981, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBEC8BBE90A5CC182, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF89FE45876D7CE, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF91F613899FFC5, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4008BA19C9B49778, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF9200812DD9DA1, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF92213E5ECEE56, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4000EFA0879B9ADC, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF064AE30853212, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921EBA8C3E598, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921C6CAC281A6, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE1E3F88F16A42E, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF920BE855C3EED, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921B72C108FF9, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF9221D579B682C, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF920E4E811EB84, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC0003F00CC3C0C4D, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF9237A964A9537, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4008A6FA321D5DFF, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF032F662449164, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Result* inttoptr (i64 5 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Result* inttoptr (i64 6 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Result* inttoptr (i64 7 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Result* inttoptr (i64 8 to %Result*))
  call void @__quantum__rt__array_record_output(i64 9, i8* null)
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

attributes #0 = { "entry_point" "num_required_qubits"="9" "num_required_results"="9" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
