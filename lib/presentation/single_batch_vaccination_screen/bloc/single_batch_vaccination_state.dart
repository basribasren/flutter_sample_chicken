// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_bloc.dart';

/// Represents the state of SingleBatchVaccination in the application.
class SingleBatchVaccinationState extends Equatable {
  SingleBatchVaccinationState({
    this.addVaccinationDateController,
    this.addVaccinationVaccineValueController,
    this.addVaccinationVaccineTypeValueController,
    this.singleBatchVaccinationModelObj,
  });

  TextEditingController? addVaccinationDateController;

  TextEditingController? addVaccinationVaccineValueController;

  TextEditingController? addVaccinationVaccineTypeValueController;

  SingleBatchVaccinationModel? singleBatchVaccinationModelObj;

  @override
  List<Object?> get props => [
        addVaccinationDateController,
        addVaccinationVaccineValueController,
        addVaccinationVaccineTypeValueController,
        singleBatchVaccinationModelObj,
      ];
  SingleBatchVaccinationState copyWith({
    TextEditingController? addVaccinationDateController,
    TextEditingController? addVaccinationVaccineValueController,
    TextEditingController? addVaccinationVaccineTypeValueController,
    SingleBatchVaccinationModel? singleBatchVaccinationModelObj,
  }) {
    return SingleBatchVaccinationState(
      addVaccinationDateController:
          addVaccinationDateController ?? this.addVaccinationDateController,
      addVaccinationVaccineValueController:
          addVaccinationVaccineValueController ??
              this.addVaccinationVaccineValueController,
      addVaccinationVaccineTypeValueController:
          addVaccinationVaccineTypeValueController ??
              this.addVaccinationVaccineTypeValueController,
      singleBatchVaccinationModelObj:
          singleBatchVaccinationModelObj ?? this.singleBatchVaccinationModelObj,
    );
  }
}
