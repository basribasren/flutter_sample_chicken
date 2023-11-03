// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_one_bloc.dart';

/// Represents the state of SingleBatchVaccinationOne in the application.
class SingleBatchVaccinationOneState extends Equatable {
  SingleBatchVaccinationOneState({
    this.addVaccinationDateController,
    this.methodValueController,
    this.descriptionValueController,
    this.singleBatchVaccinationOneModelObj,
  });

  TextEditingController? addVaccinationDateController;

  TextEditingController? methodValueController;

  TextEditingController? descriptionValueController;

  SingleBatchVaccinationOneModel? singleBatchVaccinationOneModelObj;

  @override
  List<Object?> get props => [
        addVaccinationDateController,
        methodValueController,
        descriptionValueController,
        singleBatchVaccinationOneModelObj,
      ];
  SingleBatchVaccinationOneState copyWith({
    TextEditingController? addVaccinationDateController,
    TextEditingController? methodValueController,
    TextEditingController? descriptionValueController,
    SingleBatchVaccinationOneModel? singleBatchVaccinationOneModelObj,
  }) {
    return SingleBatchVaccinationOneState(
      addVaccinationDateController:
          addVaccinationDateController ?? this.addVaccinationDateController,
      methodValueController:
          methodValueController ?? this.methodValueController,
      descriptionValueController:
          descriptionValueController ?? this.descriptionValueController,
      singleBatchVaccinationOneModelObj: singleBatchVaccinationOneModelObj ??
          this.singleBatchVaccinationOneModelObj,
    );
  }
}
