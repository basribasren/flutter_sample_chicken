// ignore_for_file: must_be_immutable

part of 'single_batch_records_bloc.dart';

/// Represents the state of SingleBatchRecords in the application.
class SingleBatchRecordsState extends Equatable {
  SingleBatchRecordsState({this.singleBatchRecordsModelObj});

  SingleBatchRecordsModel? singleBatchRecordsModelObj;

  @override
  List<Object?> get props => [
        singleBatchRecordsModelObj,
      ];
  SingleBatchRecordsState copyWith(
      {SingleBatchRecordsModel? singleBatchRecordsModelObj}) {
    return SingleBatchRecordsState(
      singleBatchRecordsModelObj:
          singleBatchRecordsModelObj ?? this.singleBatchRecordsModelObj,
    );
  }
}
