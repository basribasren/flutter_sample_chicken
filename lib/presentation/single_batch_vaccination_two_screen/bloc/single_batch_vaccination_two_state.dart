// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_two_bloc.dart';

/// Represents the state of SingleBatchVaccinationTwo in the application.
class SingleBatchVaccinationTwoState extends Equatable {
  SingleBatchVaccinationTwoState({
    this.addVaccinationDateController,
    this.addVaccinationVaccineValueController,
    this.addVaccinationVaccineTypeValueController,
    this.addVaccinationMethodValueController,
    this.addVaccinationDescriptionValueController,
    this.singleBatchVaccinationTwoModelObj,
  });

  TextEditingController? addVaccinationDateController;

  TextEditingController? addVaccinationVaccineValueController;

  TextEditingController? addVaccinationVaccineTypeValueController;

  TextEditingController? addVaccinationMethodValueController;

  TextEditingController? addVaccinationDescriptionValueController;

  SingleBatchVaccinationTwoModel? singleBatchVaccinationTwoModelObj;

  @override
  List<Object?> get props => [
        addVaccinationDateController,
        addVaccinationVaccineValueController,
        addVaccinationVaccineTypeValueController,
        addVaccinationMethodValueController,
        addVaccinationDescriptionValueController,
        singleBatchVaccinationTwoModelObj,
      ];
  SingleBatchVaccinationTwoState copyWith({
    TextEditingController? addVaccinationDateController,
    TextEditingController? addVaccinationVaccineValueController,
    TextEditingController? addVaccinationVaccineTypeValueController,
    TextEditingController? addVaccinationMethodValueController,
    TextEditingController? addVaccinationDescriptionValueController,
    SingleBatchVaccinationTwoModel? singleBatchVaccinationTwoModelObj,
  }) {
    return SingleBatchVaccinationTwoState(
      addVaccinationDateController:
          addVaccinationDateController ?? this.addVaccinationDateController,
      addVaccinationVaccineValueController:
          addVaccinationVaccineValueController ??
              this.addVaccinationVaccineValueController,
      addVaccinationVaccineTypeValueController:
          addVaccinationVaccineTypeValueController ??
              this.addVaccinationVaccineTypeValueController,
      addVaccinationMethodValueController:
          addVaccinationMethodValueController ??
              this.addVaccinationMethodValueController,
      addVaccinationDescriptionValueController:
          addVaccinationDescriptionValueController ??
              this.addVaccinationDescriptionValueController,
      singleBatchVaccinationTwoModelObj: singleBatchVaccinationTwoModelObj ??
          this.singleBatchVaccinationTwoModelObj,
    );
  }
}
