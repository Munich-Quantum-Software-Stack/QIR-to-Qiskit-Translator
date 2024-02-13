; ModuleID = 'circuit-1887063'
source_filename = "circuit-1887063"

%Qubit = type opaque
%Result = type opaque

define void @circuit-1887063() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__rz__body(double 0xC00365FFD77F6814, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x40087D3660FE3F7B, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC0089577FBF7E6E6, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE44022C7B18470, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4004D23303C90573, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC004D23303C90573, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x400411F2A257CBFC, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x401775B9E1106A04, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4014C99256FEAC61, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4004587A69FEB458, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4003CFB700813B9E, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFF0B639CEAA2A60, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x4016C896E7F3B8A9, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FFE67EF5F44DA8C, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFC019F92A0723C4, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFFE67EF5F44DA8C, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFFA0778C5906206, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFA0778C5906209, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x400035974242DF80, %Qubit* inttoptr (i64 2 to %Qubit*))
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

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__ccx__body(%Qubit*, %Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="3" "num_required_results"="3" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
