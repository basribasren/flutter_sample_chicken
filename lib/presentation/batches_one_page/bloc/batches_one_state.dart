// ignore_for_file: must_be_immutable

part of 'batches_one_bloc.dart';

/// Represents the state of BatchesOne in the application.
class BatchesOneState extends Equatable {
  BatchesOneState({this.batchesOneModelObj});

  BatchesOneModel? batchesOneModelObj;

  @override
  List<Object?> get props => [
        batchesOneModelObj,
      ];
  BatchesOneState copyWith({BatchesOneModel? batchesOneModelObj}) {
    return BatchesOneState(
      batchesOneModelObj: batchesOneModelObj ?? this.batchesOneModelObj,
    );
  }
}
