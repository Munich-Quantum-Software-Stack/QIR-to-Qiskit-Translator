; ModuleID = 'circuit-365127'
source_filename = "circuit-365127"

%Qubit = type opaque
%Result = type opaque

define void @circuit-365127() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0x3EF4489EF2BF4F86, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x4000DC53FAE84564, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40051D8F808E7C9E, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF278C7426FBBEF, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF56B01B78DCB86, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921FB54442D18, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0xBFF92157E034B87A, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921AF41FACC6F, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF92276270D02C5, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF92277D7D57A8A, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4007461B7F6AD79D, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921FB54442D18, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF9221A50FE4CEF, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE12DF66FFFC76F, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4000957586DA9038, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FDAA90B0A68CC3C, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF922104A2DBDFB, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Result* inttoptr (i64 5 to %Result*))
  call void @__quantum__rt__array_record_output(i64 6, i8* null)
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

attributes #0 = { "entry_point" "num_required_qubits"="6" "num_required_results"="6" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
