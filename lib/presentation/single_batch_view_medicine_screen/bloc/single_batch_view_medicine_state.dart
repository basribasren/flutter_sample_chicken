// ignore_for_file: must_be_immutable

part of 'single_batch_view_medicine_bloc.dart';

/// Represents the state of SingleBatchViewMedicine in the application.
class SingleBatchViewMedicineState extends Equatable {
  SingleBatchViewMedicineState({this.singleBatchViewMedicineModelObj});

  SingleBatchViewMedicineModel? singleBatchViewMedicineModelObj;

  @override
  List<Object?> get props => [
        singleBatchViewMedicineModelObj,
      ];
  SingleBatchViewMedicineState copyWith(
      {SingleBatchViewMedicineModel? singleBatchViewMedicineModelObj}) {
    return SingleBatchViewMedicineState(
      singleBatchViewMedicineModelObj: singleBatchViewMedicineModelObj ??
          this.singleBatchViewMedicineModelObj,
    );
  }
}
