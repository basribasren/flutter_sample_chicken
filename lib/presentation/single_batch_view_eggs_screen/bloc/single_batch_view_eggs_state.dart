// ignore_for_file: must_be_immutable

part of 'single_batch_view_eggs_bloc.dart';

/// Represents the state of SingleBatchViewEggs in the application.
class SingleBatchViewEggsState extends Equatable {
  SingleBatchViewEggsState({
    this.timeController,
    this.singleBatchViewEggsModelObj,
  });

  TextEditingController? timeController;

  SingleBatchViewEggsModel? singleBatchViewEggsModelObj;

  @override
  List<Object?> get props => [
        timeController,
        singleBatchViewEggsModelObj,
      ];
  SingleBatchViewEggsState copyWith({
    TextEditingController? timeController,
    SingleBatchViewEggsModel? singleBatchViewEggsModelObj,
  }) {
    return SingleBatchViewEggsState(
      timeController: timeController ?? this.timeController,
      singleBatchViewEggsModelObj:
          singleBatchViewEggsModelObj ?? this.singleBatchViewEggsModelObj,
    );
  }
}
