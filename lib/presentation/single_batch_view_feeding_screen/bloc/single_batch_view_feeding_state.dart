// ignore_for_file: must_be_immutable

part of 'single_batch_view_feeding_bloc.dart';

/// Represents the state of SingleBatchViewFeeding in the application.
class SingleBatchViewFeedingState extends Equatable {
  SingleBatchViewFeedingState({
    this.weightController,
    this.singleBatchViewFeedingModelObj,
  });

  TextEditingController? weightController;

  SingleBatchViewFeedingModel? singleBatchViewFeedingModelObj;

  @override
  List<Object?> get props => [
        weightController,
        singleBatchViewFeedingModelObj,
      ];
  SingleBatchViewFeedingState copyWith({
    TextEditingController? weightController,
    SingleBatchViewFeedingModel? singleBatchViewFeedingModelObj,
  }) {
    return SingleBatchViewFeedingState(
      weightController: weightController ?? this.weightController,
      singleBatchViewFeedingModelObj:
          singleBatchViewFeedingModelObj ?? this.singleBatchViewFeedingModelObj,
    );
  }
}
