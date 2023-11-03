// ignore_for_file: must_be_immutable

part of 'single_batch_reports_one_bloc.dart';

/// Represents the state of SingleBatchReportsOne in the application.
class SingleBatchReportsOneState extends Equatable {
  SingleBatchReportsOneState({
    this.menuThirtyEightController,
    this.singleBatchReportsOneModelObj,
  });

  TextEditingController? menuThirtyEightController;

  SingleBatchReportsOneModel? singleBatchReportsOneModelObj;

  @override
  List<Object?> get props => [
        menuThirtyEightController,
        singleBatchReportsOneModelObj,
      ];
  SingleBatchReportsOneState copyWith({
    TextEditingController? menuThirtyEightController,
    SingleBatchReportsOneModel? singleBatchReportsOneModelObj,
  }) {
    return SingleBatchReportsOneState(
      menuThirtyEightController:
          menuThirtyEightController ?? this.menuThirtyEightController,
      singleBatchReportsOneModelObj:
          singleBatchReportsOneModelObj ?? this.singleBatchReportsOneModelObj,
    );
  }
}
