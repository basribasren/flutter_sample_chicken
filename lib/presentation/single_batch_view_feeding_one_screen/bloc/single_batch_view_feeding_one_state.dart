// ignore_for_file: must_be_immutable

part of 'single_batch_view_feeding_one_bloc.dart';

/// Represents the state of SingleBatchViewFeedingOne in the application.
class SingleBatchViewFeedingOneState extends Equatable {
  SingleBatchViewFeedingOneState({
    this.timeController,
    this.weightController,
    this.singleBatchViewFeedingOneModelObj,
  });

  TextEditingController? timeController;

  TextEditingController? weightController;

  SingleBatchViewFeedingOneModel? singleBatchViewFeedingOneModelObj;

  @override
  List<Object?> get props => [
        timeController,
        weightController,
        singleBatchViewFeedingOneModelObj,
      ];
  SingleBatchViewFeedingOneState copyWith({
    TextEditingController? timeController,
    TextEditingController? weightController,
    SingleBatchViewFeedingOneModel? singleBatchViewFeedingOneModelObj,
  }) {
    return SingleBatchViewFeedingOneState(
      timeController: timeController ?? this.timeController,
      weightController: weightController ?? this.weightController,
      singleBatchViewFeedingOneModelObj: singleBatchViewFeedingOneModelObj ??
          this.singleBatchViewFeedingOneModelObj,
    );
  }
}
