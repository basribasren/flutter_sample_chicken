// ignore_for_file: must_be_immutable

part of 'single_batch_records_tab_container_bloc.dart';

/// Represents the state of SingleBatchRecordsTabContainer in the application.
class SingleBatchRecordsTabContainerState extends Equatable {
  SingleBatchRecordsTabContainerState(
      {this.singleBatchRecordsTabContainerModelObj});

  SingleBatchRecordsTabContainerModel? singleBatchRecordsTabContainerModelObj;

  @override
  List<Object?> get props => [
        singleBatchRecordsTabContainerModelObj,
      ];
  SingleBatchRecordsTabContainerState copyWith(
      {SingleBatchRecordsTabContainerModel?
          singleBatchRecordsTabContainerModelObj}) {
    return SingleBatchRecordsTabContainerState(
      singleBatchRecordsTabContainerModelObj:
          singleBatchRecordsTabContainerModelObj ??
              this.singleBatchRecordsTabContainerModelObj,
    );
  }
}
