; ModuleID = 'circuit-210'
source_filename = "circuit-210"

%Qubit = type opaque
%Result = type opaque

define void @circuit-210() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 4 to %Result*))
  %0 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %0, label %then, label %else

then:                                             ; preds = %entry
  %1 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %1, label %then1, label %else2

else:                                             ; preds = %entry
  br label %continue

continue:                                         ; preds = %else, %continue3
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  %2 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %2, label %then4, label %else5

then1:                                            ; preds = %then
  br label %continue3

else2:                                            ; preds = %then
  call void @__quantum__qis__x__body(%Qubit* null)
  br label %continue3

continue3:                                        ; preds = %else2, %then1
  br label %continue

then4:                                            ; preds = %continue
  br label %continue6

else5:                                            ; preds = %continue
  %3 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %3, label %then7, label %else8

continue6:                                        ; preds = %continue9, %then4
  %4 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %4, label %then10, label %else11

then7:                                            ; preds = %else5
  call void @__quantum__qis__x__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  br label %continue9

else8:                                            ; preds = %else5
  br label %continue9

continue9:                                        ; preds = %else8, %then7
  br label %continue6

then10:                                           ; preds = %continue6
  %5 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %5, label %then13, label %else14

else11:                                           ; preds = %continue6
  br label %continue12

continue12:                                       ; preds = %else11, %continue15
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__rt__array_record_output(i64 3, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  call void @__quantum__rt__array_record_output(i64 2, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 4 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 3 to %Result*), i8* null)
  ret void

then13:                                           ; preds = %then10
  call void @__quantum__qis__x__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  br label %continue15

else14:                                           ; preds = %then10
  br label %continue15

continue15:                                       ; preds = %else14, %then13
  br label %continue12
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare i1 @__quantum__qis__read_result__body(%Result*)

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="5" "num_required_results"="5" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
