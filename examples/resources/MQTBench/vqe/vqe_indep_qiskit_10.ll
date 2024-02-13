; ModuleID = 'circuit-903157'
source_filename = "circuit-903157"

%Qubit = type opaque
%Result = type opaque

define void @circuit-903157() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__ry__body(double 0x3F91E1163BD7F3BB, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FFE9ACDF033145D, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x4008C6F775073DBD, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBF1322CCAE5F9645, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF92248BCD6620A, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921D875EFB4D3, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FFB065C348, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3F16CE1377860961, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFFC5308F98C8B9E, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3F9271D295675A86, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFFB952F5E57F2D9, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF7B2FEACC155E2, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFA7D8CBFF8F5F5, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF91977C07954C5, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921B9A8F4348E, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921EB90713440, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x400921FB54442D18, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF7B541E4375066, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FFA963709EEBFEA, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF67DFB67D0D3DC, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FEBF721C141112E, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x40066859F34C06CE, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF85FD72FB7E072, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921AB8A090373, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 5 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921D843C29192, %Qubit* inttoptr (i64 6 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xC002B6E07E92C407, %Qubit* inttoptr (i64 7 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF922364B37D608, %Qubit* inttoptr (i64 8 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFC99F0846E939B2, %Qubit* inttoptr (i64 9 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 4 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 5 to %Qubit*), %Result* inttoptr (i64 5 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 6 to %Qubit*), %Result* inttoptr (i64 6 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 7 to %Qubit*), %Result* inttoptr (i64 7 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 8 to %Qubit*), %Result* inttoptr (i64 8 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 9 to %Qubit*), %Result* inttoptr (i64 9 to %Result*))
  call void @__quantum__rt__array_record_output(i64 10, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 9 to %Result*), i8* null)
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

attributes #0 = { "entry_point" "num_required_qubits"="10" "num_required_results"="10" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
