// ignore_for_file: must_be_immutable

part of 'single_batch_feeding_bloc.dart';

/// Represents the state of SingleBatchFeeding in the application.
class SingleBatchFeedingState extends Equatable {
  SingleBatchFeedingState({
    this.dateEditTextController,
    this.menuThirtySixController,
    this.group691Controller,
    this.singleBatchFeedingModelObj,
  });

  TextEditingController? dateEditTextController;

  TextEditingController? menuThirtySixController;

  TextEditingController? group691Controller;

  SingleBatchFeedingModel? singleBatchFeedingModelObj;

  @override
  List<Object?> get props => [
        dateEditTextController,
        menuThirtySixController,
        group691Controller,
        singleBatchFeedingModelObj,
      ];
  SingleBatchFeedingState copyWith({
    TextEditingController? dateEditTextController,
    TextEditingController? menuThirtySixController,
    TextEditingController? group691Controller,
    SingleBatchFeedingModel? singleBatchFeedingModelObj,
  }) {
    return SingleBatchFeedingState(
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      menuThirtySixController:
          menuThirtySixController ?? this.menuThirtySixController,
      group691Controller: group691Controller ?? this.group691Controller,
      singleBatchFeedingModelObj:
          singleBatchFeedingModelObj ?? this.singleBatchFeedingModelObj,
    );
  }
}
