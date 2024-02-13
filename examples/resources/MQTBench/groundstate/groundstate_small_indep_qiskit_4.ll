; ModuleID = 'circuit-278871'
source_filename = "circuit-278871"

%Qubit = type opaque
%Result = type opaque

define void @circuit-278871() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__rz__body(double 0x40011DCB09D90120, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FE6EA047FE7D468, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFC71808EE74A470, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC007BBC76E2084CA, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x40077869A5E900F4, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFD8C4474025F388, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x40054811E1417F26, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FA0B58DEE9F22C0, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00704685B294194, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC0053E28980E8220, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC003B87BB821580C, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC0077EA03B7913C8, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 3 to %Qubit*))
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

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cz__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="4" "num_required_results"="4" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
