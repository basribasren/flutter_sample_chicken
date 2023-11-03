// ignore_for_file: must_be_immutable

part of 'single_batch_view_vaccination_tab_container_bloc.dart';

/// Represents the state of SingleBatchViewVaccinationTabContainer in the application.
class SingleBatchViewVaccinationTabContainerState extends Equatable {
  SingleBatchViewVaccinationTabContainerState(
      {this.singleBatchViewVaccinationTabContainerModelObj});

  SingleBatchViewVaccinationTabContainerModel?
      singleBatchViewVaccinationTabContainerModelObj;

  @override
  List<Object?> get props => [
        singleBatchViewVaccinationTabContainerModelObj,
      ];
  SingleBatchViewVaccinationTabContainerState copyWith(
      {SingleBatchViewVaccinationTabContainerModel?
          singleBatchViewVaccinationTabContainerModelObj}) {
    return SingleBatchViewVaccinationTabContainerState(
      singleBatchViewVaccinationTabContainerModelObj:
          singleBatchViewVaccinationTabContainerModelObj ??
              this.singleBatchViewVaccinationTabContainerModelObj,
    );
  }
}
