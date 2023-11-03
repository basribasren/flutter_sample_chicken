// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_one_bloc.dart';

/// Represents the state of SingleBatchViewVaccinationOne in the application.
class SingleBatchViewVaccinationOneState extends Equatable {
  SingleBatchViewVaccinationOneState(
      {this.singleBatchViewVaccinationOneModelObj});

  SingleBatchViewVaccinationOneModel? singleBatchViewVaccinationOneModelObj;

  @override
  List<Object?> get props => [
        singleBatchViewVaccinationOneModelObj,
      ];
  SingleBatchViewVaccinationOneState copyWith(
      {SingleBatchViewVaccinationOneModel?
          singleBatchViewVaccinationOneModelObj}) {
    return SingleBatchViewVaccinationOneState(
      singleBatchViewVaccinationOneModelObj:
          singleBatchViewVaccinationOneModelObj ??
              this.singleBatchViewVaccinationOneModelObj,
    );
  }
}
