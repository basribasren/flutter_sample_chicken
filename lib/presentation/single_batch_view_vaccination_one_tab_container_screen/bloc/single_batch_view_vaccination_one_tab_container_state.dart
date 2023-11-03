// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_one_tab_container_bloc.dart';

/// Represents the state of SingleBatchViewVaccinationOneTabContainer in the application.
class SingleBatchViewVaccinationOneTabContainerState extends Equatable {
  SingleBatchViewVaccinationOneTabContainerState(
      {this.singleBatchViewVaccinationOneTabContainerModelObj});

  SingleBatchViewVaccinationOneTabContainerModel?
      singleBatchViewVaccinationOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        singleBatchViewVaccinationOneTabContainerModelObj,
      ];
  SingleBatchViewVaccinationOneTabContainerState copyWith(
      {SingleBatchViewVaccinationOneTabContainerModel?
          singleBatchViewVaccinationOneTabContainerModelObj}) {
    return SingleBatchViewVaccinationOneTabContainerState(
      singleBatchViewVaccinationOneTabContainerModelObj:
          singleBatchViewVaccinationOneTabContainerModelObj ??
              this.singleBatchViewVaccinationOneTabContainerModelObj,
    );
  }
}
