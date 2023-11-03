// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_bloc.dart';

/// Represents the state of SingleBatchViewVaccination in the application.
class SingleBatchViewVaccinationState extends Equatable {
  SingleBatchViewVaccinationState({this.singleBatchViewVaccinationModelObj});

  SingleBatchViewVaccinationModel? singleBatchViewVaccinationModelObj;

  @override
  List<Object?> get props => [
        singleBatchViewVaccinationModelObj,
      ];
  SingleBatchViewVaccinationState copyWith(
      {SingleBatchViewVaccinationModel? singleBatchViewVaccinationModelObj}) {
    return SingleBatchViewVaccinationState(
      singleBatchViewVaccinationModelObj: singleBatchViewVaccinationModelObj ??
          this.singleBatchViewVaccinationModelObj,
    );
  }
}
