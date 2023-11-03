// ignore_for_file: must_be_immutable

part of 'single_batch_view_body_weight_bloc.dart';

/// Represents the state of SingleBatchViewBodyWeight in the application.
class SingleBatchViewBodyWeightState extends Equatable {
  SingleBatchViewBodyWeightState({
    this.timeController,
    this.singleBatchViewBodyWeightModelObj,
  });

  TextEditingController? timeController;

  SingleBatchViewBodyWeightModel? singleBatchViewBodyWeightModelObj;

  @override
  List<Object?> get props => [
        timeController,
        singleBatchViewBodyWeightModelObj,
      ];
  SingleBatchViewBodyWeightState copyWith({
    TextEditingController? timeController,
    SingleBatchViewBodyWeightModel? singleBatchViewBodyWeightModelObj,
  }) {
    return SingleBatchViewBodyWeightState(
      timeController: timeController ?? this.timeController,
      singleBatchViewBodyWeightModelObj: singleBatchViewBodyWeightModelObj ??
          this.singleBatchViewBodyWeightModelObj,
    );
  }
}
