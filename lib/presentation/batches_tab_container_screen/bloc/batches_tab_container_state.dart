// ignore_for_file: must_be_immutable

part of 'batches_tab_container_bloc.dart';

/// Represents the state of BatchesTabContainer in the application.
class BatchesTabContainerState extends Equatable {
  BatchesTabContainerState({this.batchesTabContainerModelObj});

  BatchesTabContainerModel? batchesTabContainerModelObj;

  @override
  List<Object?> get props => [
        batchesTabContainerModelObj,
      ];
  BatchesTabContainerState copyWith(
      {BatchesTabContainerModel? batchesTabContainerModelObj}) {
    return BatchesTabContainerState(
      batchesTabContainerModelObj:
          batchesTabContainerModelObj ?? this.batchesTabContainerModelObj,
    );
  }
}
