// ignore_for_file: must_be_immutable

part of 'single_batch_reports_bloc.dart';

/// Represents the state of SingleBatchReports in the application.
class SingleBatchReportsState extends Equatable {
  SingleBatchReportsState({this.singleBatchReportsModelObj});

  SingleBatchReportsModel? singleBatchReportsModelObj;

  @override
  List<Object?> get props => [
        singleBatchReportsModelObj,
      ];
  SingleBatchReportsState copyWith(
      {SingleBatchReportsModel? singleBatchReportsModelObj}) {
    return SingleBatchReportsState(
      singleBatchReportsModelObj:
          singleBatchReportsModelObj ?? this.singleBatchReportsModelObj,
    );
  }
}
