; ModuleID = 'circuit-245'
source_filename = "circuit-245"

%Qubit = type opaque
%Result = type opaque

define void @circuit-245() #0 {
entry:
  call void @__quantum__rt__initialize(i8* null)
  call void @__quantum__qis__x__body(%Qubit* null)
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* null)
  call void @__quantum__qis__reset__body(%Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* null)
  %0 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %0, label %then, label %else

then:                                             ; preds = %entry
  %1 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %1, label %then1, label %else2

else:                                             ; preds = %entry
  br label %continue

continue:                                         ; preds = %else, %continue3
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 1 to %Result*))
  call void @__quantum__qis__reset__body(%Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* null)
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* null)
  call void @__quantum__qis__rz__body(double 0xC002D97C7F3321D2, %Qubit* null)
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* null)
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* null, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC002D97C7F3321D2, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 1 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 3 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC002D97C7F3321D2, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__ry__body(double 0x3FF921FB54442D17, %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xBFE921FB54442D18, %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 2 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 3 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 2 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* inttoptr (i64 1 to %Qubit*))
  call void @__quantum__qis__cnot__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Qubit* null)
  %2 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %2, label %then13, label %else14

then1:                                            ; preds = %then
  br label %continue3

else2:                                            ; preds = %then
  %3 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 2 to %Result*))
  br i1 %3, label %then4, label %else5

continue3:                                        ; preds = %continue6, %then1
  br label %continue

then4:                                            ; preds = %else2
  br label %continue6

else5:                                            ; preds = %else2
  %4 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %4, label %then7, label %else8

continue6:                                        ; preds = %continue9, %then4
  br label %continue3

then7:                                            ; preds = %else5
  br label %continue9

else8:                                            ; preds = %else5
  %5 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %5, label %then10, label %else11

continue9:                                        ; preds = %continue12, %then7
  br label %continue6

then10:                                           ; preds = %else8
  br label %continue12

else11:                                           ; preds = %else8
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  br label %continue12

continue12:                                       ; preds = %else11, %then10
  br label %continue9

then13:                                           ; preds = %continue
  %6 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %6, label %then16, label %else17

else14:                                           ; preds = %continue
  br label %continue15

continue15:                                       ; preds = %else14, %continue18
  %7 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %7, label %then28, label %else29

then16:                                           ; preds = %then13
  %8 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 2 to %Result*))
  br i1 %8, label %then19, label %else20

else17:                                           ; preds = %then13
  br label %continue18

continue18:                                       ; preds = %else17, %continue21
  br label %continue15

then19:                                           ; preds = %then16
  br label %continue21

else20:                                           ; preds = %then16
  %9 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %9, label %then22, label %else23

continue21:                                       ; preds = %continue24, %then19
  br label %continue18

then22:                                           ; preds = %else20
  br label %continue24

else23:                                           ; preds = %else20
  %10 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %10, label %then25, label %else26

continue24:                                       ; preds = %continue27, %then22
  br label %continue21

then25:                                           ; preds = %else23
  br label %continue27

else26:                                           ; preds = %else23
  call void @__quantum__qis__rz__body(double 0x4002D97C7F3321D2, %Qubit* inttoptr (i64 4 to %Qubit*))
  br label %continue27

continue27:                                       ; preds = %else26, %then25
  br label %continue24

then28:                                           ; preds = %continue15
  br label %continue30

else29:                                           ; preds = %continue15
  %11 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %11, label %then31, label %else32

continue30:                                       ; preds = %continue33, %then28
  %12 = call i1 @__quantum__qis__read_result__body(%Result* null)
  br i1 %12, label %then43, label %else44

then31:                                           ; preds = %else29
  %13 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 2 to %Result*))
  br i1 %13, label %then34, label %else35

else32:                                           ; preds = %else29
  br label %continue33

continue33:                                       ; preds = %else32, %continue36
  br label %continue30

then34:                                           ; preds = %then31
  br label %continue36

else35:                                           ; preds = %then31
  %14 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %14, label %then37, label %else38

continue36:                                       ; preds = %continue39, %then34
  br label %continue33

then37:                                           ; preds = %else35
  br label %continue39

else38:                                           ; preds = %else35
  %15 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %15, label %then40, label %else41

continue39:                                       ; preds = %continue42, %then37
  br label %continue36

then40:                                           ; preds = %else38
  br label %continue42

else41:                                           ; preds = %else38
  call void @__quantum__qis__rz__body(double 0x3FF921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  br label %continue42

continue42:                                       ; preds = %else41, %then40
  br label %continue39

then43:                                           ; preds = %continue30
  %16 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 1 to %Result*))
  br i1 %16, label %then46, label %else47

else44:                                           ; preds = %continue30
  br label %continue45

continue45:                                       ; preds = %else44, %continue48
  call void @__quantum__qis__ry__body(double 0xBFF921FB54442D17, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__rz__body(double 0xC00921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  call void @__quantum__qis__mz__body(%Qubit* inttoptr (i64 4 to %Qubit*), %Result* inttoptr (i64 2 to %Result*))
  call void @__quantum__rt__array_record_output(i64 5, i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 4 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 3 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 2 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* inttoptr (i64 1 to %Result*), i8* null)
  call void @__quantum__rt__result_record_output(%Result* null, i8* null)
  ret void

then46:                                           ; preds = %then43
  br label %continue48

else47:                                           ; preds = %then43
  %17 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 2 to %Result*))
  br i1 %17, label %then49, label %else50

continue48:                                       ; preds = %continue51, %then46
  br label %continue45

then49:                                           ; preds = %else47
  br label %continue51

else50:                                           ; preds = %else47
  %18 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 3 to %Result*))
  br i1 %18, label %then52, label %else53

continue51:                                       ; preds = %continue54, %then49
  br label %continue48

then52:                                           ; preds = %else50
  br label %continue54

else53:                                           ; preds = %else50
  %19 = call i1 @__quantum__qis__read_result__body(%Result* inttoptr (i64 4 to %Result*))
  br i1 %19, label %then55, label %else56

continue54:                                       ; preds = %continue57, %then52
  br label %continue51

then55:                                           ; preds = %else53
  br label %continue57

else56:                                           ; preds = %else53
  call void @__quantum__qis__rz__body(double 0x3FE921FB54442D18, %Qubit* inttoptr (i64 4 to %Qubit*))
  br label %continue57

continue57:                                       ; preds = %else56, %then55
  br label %continue54
}

declare void @__quantum__rt__initialize(i8*)

declare void @__quantum__qis__x__body(%Qubit*)

declare void @__quantum__qis__mz__body(%Qubit*, %Result* writeonly) #1

declare void @__quantum__qis__reset__body(%Qubit*)

declare void @__quantum__qis__ry__body(double, %Qubit*)

declare void @__quantum__qis__rz__body(double, %Qubit*)

declare void @__quantum__qis__cnot__body(%Qubit*, %Qubit*)

declare i1 @__quantum__qis__read_result__body(%Result*)

declare void @__quantum__rt__array_record_output(i64, i8*)

declare void @__quantum__rt__result_record_output(%Result*, i8*)

attributes #0 = { "entry_point" "num_required_qubits"="5" "num_required_results"="5" "output_labeling_schema" "qir_profiles"="custom" }
attributes #1 = { "irreversible" }
