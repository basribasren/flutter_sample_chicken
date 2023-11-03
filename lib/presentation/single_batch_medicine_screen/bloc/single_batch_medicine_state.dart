// ignore_for_file: must_be_immutable

part of 'single_batch_medicine_bloc.dart';

/// Represents the state of SingleBatchMedicine in the application.
class SingleBatchMedicineState extends Equatable {
  SingleBatchMedicineState({
    this.dateEditTextController,
    this.medicineEditTextController,
    this.descriptionEditTextController,
    this.singleBatchMedicineModelObj,
  });

  TextEditingController? dateEditTextController;

  TextEditingController? medicineEditTextController;

  TextEditingController? descriptionEditTextController;

  SingleBatchMedicineModel? singleBatchMedicineModelObj;

  @override
  List<Object?> get props => [
        dateEditTextController,
        medicineEditTextController,
        descriptionEditTextController,
        singleBatchMedicineModelObj,
      ];
  SingleBatchMedicineState copyWith({
    TextEditingController? dateEditTextController,
    TextEditingController? medicineEditTextController,
    TextEditingController? descriptionEditTextController,
    SingleBatchMedicineModel? singleBatchMedicineModelObj,
  }) {
    return SingleBatchMedicineState(
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      medicineEditTextController:
          medicineEditTextController ?? this.medicineEditTextController,
      descriptionEditTextController:
          descriptionEditTextController ?? this.descriptionEditTextController,
      singleBatchMedicineModelObj:
          singleBatchMedicineModelObj ?? this.singleBatchMedicineModelObj,
    );
  }
}
