// ignore_for_file: must_be_immutable

part of 'batches_bloc.dart';

/// Represents the state of Batches in the application.
class BatchesState extends Equatable {
  BatchesState({this.batchesModelObj});

  BatchesModel? batchesModelObj;

  @override
  List<Object?> get props => [
        batchesModelObj,
      ];
  BatchesState copyWith({BatchesModel? batchesModelObj}) {
    return BatchesState(
      batchesModelObj: batchesModelObj ?? this.batchesModelObj,
    );
  }
}
