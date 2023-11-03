// ignore_for_file: must_be_immutable

part of 'empty_batches_bloc.dart';

/// Represents the state of EmptyBatches in the application.
class EmptyBatchesState extends Equatable {
  EmptyBatchesState({this.emptyBatchesModelObj});

  EmptyBatchesModel? emptyBatchesModelObj;

  @override
  List<Object?> get props => [
        emptyBatchesModelObj,
      ];
  EmptyBatchesState copyWith({EmptyBatchesModel? emptyBatchesModelObj}) {
    return EmptyBatchesState(
      emptyBatchesModelObj: emptyBatchesModelObj ?? this.emptyBatchesModelObj,
    );
  }
}
