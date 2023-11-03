// ignore_for_file: must_be_immutable

part of 'single_batch_records_one_bloc.dart';

/// Represents the state of SingleBatchRecordsOne in the application.
class SingleBatchRecordsOneState extends Equatable {
  SingleBatchRecordsOneState({this.singleBatchRecordsOneModelObj});

  SingleBatchRecordsOneModel? singleBatchRecordsOneModelObj;

  @override
  List<Object?> get props => [
        singleBatchRecordsOneModelObj,
      ];
  SingleBatchRecordsOneState copyWith(
      {SingleBatchRecordsOneModel? singleBatchRecordsOneModelObj}) {
    return SingleBatchRecordsOneState(
      singleBatchRecordsOneModelObj:
          singleBatchRecordsOneModelObj ?? this.singleBatchRecordsOneModelObj,
    );
  }
}
