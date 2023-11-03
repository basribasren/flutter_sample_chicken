// ignore_for_file: must_be_immutable

part of 'single_batch_body_weight_bloc.dart';

/// Represents the state of SingleBatchBodyWeight in the application.
class SingleBatchBodyWeightState extends Equatable {
  SingleBatchBodyWeightState({
    this.averageBodyWeightController,
    this.singleBatchBodyWeightModelObj,
  });

  TextEditingController? averageBodyWeightController;

  SingleBatchBodyWeightModel? singleBatchBodyWeightModelObj;

  @override
  List<Object?> get props => [
        averageBodyWeightController,
        singleBatchBodyWeightModelObj,
      ];
  SingleBatchBodyWeightState copyWith({
    TextEditingController? averageBodyWeightController,
    SingleBatchBodyWeightModel? singleBatchBodyWeightModelObj,
  }) {
    return SingleBatchBodyWeightState(
      averageBodyWeightController:
          averageBodyWeightController ?? this.averageBodyWeightController,
      singleBatchBodyWeightModelObj:
          singleBatchBodyWeightModelObj ?? this.singleBatchBodyWeightModelObj,
    );
  }
}
