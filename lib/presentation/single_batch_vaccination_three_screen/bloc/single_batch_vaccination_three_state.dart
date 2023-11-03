// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_three_bloc.dart';

/// Represents the state of SingleBatchVaccinationThree in the application.
class SingleBatchVaccinationThreeState extends Equatable {
  SingleBatchVaccinationThreeState({
    this.dateController,
    this.descriptionvalueController,
    this.singleBatchVaccinationThreeModelObj,
  });

  TextEditingController? dateController;

  TextEditingController? descriptionvalueController;

  SingleBatchVaccinationThreeModel? singleBatchVaccinationThreeModelObj;

  @override
  List<Object?> get props => [
        dateController,
        descriptionvalueController,
        singleBatchVaccinationThreeModelObj,
      ];
  SingleBatchVaccinationThreeState copyWith({
    TextEditingController? dateController,
    TextEditingController? descriptionvalueController,
    SingleBatchVaccinationThreeModel? singleBatchVaccinationThreeModelObj,
  }) {
    return SingleBatchVaccinationThreeState(
      dateController: dateController ?? this.dateController,
      descriptionvalueController:
          descriptionvalueController ?? this.descriptionvalueController,
      singleBatchVaccinationThreeModelObj:
          singleBatchVaccinationThreeModelObj ??
              this.singleBatchVaccinationThreeModelObj,
    );
  }
}
