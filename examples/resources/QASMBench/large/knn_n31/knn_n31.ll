; ModuleID = 'circuit-177'
source_filename = "circuit-177"

%Qubit = type opaque
%Result = type opaque

define void @circuit-177() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FE7A074848C4141, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4000E8C95A51852E, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FEFBC0584A43F0F, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4003E1FDDEBD9019, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4007C8DADD30C81F, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FBDA0B541C0BFA3, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FD78D2D046FFC3C, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4007BA4D60DBE2EA, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40070548B728F699, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FA5DF7E5DDC87B3, %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFBF51A79280A0A, %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE878B46C58C3BC, %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40013974CB83F771, %Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE27A9826FDC5BE, %Qubit* inttoptr (i64 14 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FD26673C7A2EC54, %Qubit* inttoptr (i64 15 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40065D130DF9BDC7, %Qubit* inttoptr (i64 16 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 16 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 16 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 16 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40059D0D8CB07D0B, %Qubit* inttoptr (i64 17 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 17 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 17 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 17 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE65395388BE2A2, %Qubit* inttoptr (i64 18 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 18 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 18 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 18 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFD896EF9B2DEE5, %Qubit* inttoptr (i64 19 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 19 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 19 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 19 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF15BB74B5B4825, %Qubit* inttoptr (i64 20 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 20 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 20 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 20 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FE39DB3092C4E93, %Qubit* inttoptr (i64 21 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 21 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 21 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 21 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF522C84C348BF9, %Qubit* inttoptr (i64 22 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 22 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 22 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 22 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF125E1F7007CFE, %Qubit* inttoptr (i64 23 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 23 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 23 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 23 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF81409BD1823E3, %Qubit* inttoptr (i64 24 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 24 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 9 to %Qubit*), %Qubit* inttoptr (i64 24 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 24 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__ry__body(double 2.776780e+00, %Qubit* inttoptr (i64 25 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 25 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 10 to %Qubit*), %Qubit* inttoptr (i64 25 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 25 to %Qubit*), %Qubit* inttoptr (i64 10 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFFE416956DBAEE, %Qubit* inttoptr (i64 26 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 26 to %Qubit*), %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 11 to %Qubit*), %Qubit* inttoptr (i64 26 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 26 to %Qubit*), %Qubit* inttoptr (i64 11 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40070E86833C6003, %Qubit* inttoptr (i64 27 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 27 to %Qubit*), %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 12 to %Qubit*), %Qubit* inttoptr (i64 27 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 27 to %Qubit*), %Qubit* inttoptr (i64 12 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4005EF484A1BAD05, %Qubit* inttoptr (i64 28 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 28 to %Qubit*), %Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 13 to %Qubit*), %Qubit* inttoptr (i64 28 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 28 to %Qubit*), %Qubit* inttoptr (i64 13 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FEF6A09DEFBF960, %Qubit* inttoptr (i64 29 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 29 to %Qubit*), %Qubit* inttoptr (i64 14 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 14 to %Qubit*), %Qubit* inttoptr (i64 29 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 29 to %Qubit*), %Qubit* inttoptr (i64 14 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40019F7A5BE6B0A4, %Qubit* inttoptr (i64 30 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 30 to %Qubit*), %Qubit* inttoptr (i64 15 to %Qubit*))
  call void @__quantum__qis__ccx__body(%Qubit* null, %Qubit* inttoptr (i64 15 to %Qubit*), %Qubit* inttoptr (i64 30 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 30 to %Qubit*), %Qubit* inttoptr (i64 15 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__rt__array_record_output(i64 1, i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__ccx__body(%Qubit*, %Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="31" "num_required_results"="1" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
