; ModuleID = 'circuit-806'
source_filename = "circuit-806"

%Qubit = type opaque
%Result = type opaque

define void @circuit-806() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__h__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* null, %Result* null)
  %0 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %0, label %then, label %else

then:                                             ; preds = %entry
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  br label %continue

else:                                             ; preds = %entry
  br label %continue

continue:                                         ; preds = %else, %then
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 1 to %Qubit*))
  %1 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %1, label %then1, label %else2

then1:                                            ; preds = %continue
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  br label %continue3

else2:                                            ; preds = %continue
  br label %continue3

continue3:                                        ; preds = %else2, %then1
  %2 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %2, label %then4, label %else5

then4:                                            ; preds = %continue3
  call void @__quantum__qis__rz__body(double 0x3FD921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  br label %continue6

else5:                                            ; preds = %continue3
  br label %continue6

continue6:                                        ; preds = %else5, %then4
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  %3 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %3, label %then7, label %else8

then7:                                            ; preds = %continue6
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  br label %continue9

else8:                                            ; preds = %continue6
  br label %continue9

continue9:                                        ; preds = %else8, %then7
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 2 to %Qubit*))
  %4 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %4, label %then10, label %else11

then10:                                           ; preds = %continue9
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  br label %continue12

else11:                                           ; preds = %continue9
  br label %continue12

continue12:                                       ; preds = %else11, %then10
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  %5 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 2 to %Result*))
  br i1 %5, label %then13, label %else14

then13:                                           ; preds = %continue12
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  br label %continue15

else14:                                           ; preds = %continue12
  br label %continue15

continue15:                                       ; preds = %else14, %then13
  call void @__quantum__qis__h__body(%Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Result* inttoptr (i64 3 to %Result*))
  call void @__quantum__rt__array_record_output(i64 1, i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  call void @__quantum__rt__array_record_output(i64 1, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__array_record_output(i64 1, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*), i8* null)
  call void @__quantum__rt__array_record_output(i64 1, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 3 to %Result*), i8* null)
  ret void
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__h__body(%Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare i1 @__quantum__qis__read_result__body(%Result*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="4" "num_required_results"="4" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
