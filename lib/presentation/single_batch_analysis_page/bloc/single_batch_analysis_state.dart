// ignore_for_file: must_be_immutable

part of 'single_batch_analysis_bloc.dart';

/// Represents the state of SingleBatchAnalysis in the application.
class SingleBatchAnalysisState extends Equatable {
  SingleBatchAnalysisState({this.singleBatchAnalysisModelObj});

  SingleBatchAnalysisModel? singleBatchAnalysisModelObj;

  @override
  List<Object?> get props => [
        singleBatchAnalysisModelObj,
      ];
  SingleBatchAnalysisState copyWith(
      {SingleBatchAnalysisModel? singleBatchAnalysisModelObj}) {
    return SingleBatchAnalysisState(
      singleBatchAnalysisModelObj:
          singleBatchAnalysisModelObj ?? this.singleBatchAnalysisModelObj,
    );
  }
}
