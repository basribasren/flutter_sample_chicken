// ignore_for_file: must_be_immutable

part of 'new_medicine_bloc.dart';

/// Represents the state of NewMedicine in the application.
class NewMedicineState extends Equatable {
  NewMedicineState({this.newMedicineModelObj});

  NewMedicineModel? newMedicineModelObj;

  @override
  List<Object?> get props => [
        newMedicineModelObj,
      ];
  NewMedicineState copyWith({NewMedicineModel? newMedicineModelObj}) {
    return NewMedicineState(
      newMedicineModelObj: newMedicineModelObj ?? this.newMedicineModelObj,
    );
  }
}
