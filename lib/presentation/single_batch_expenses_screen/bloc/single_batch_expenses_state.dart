// ignore_for_file: must_be_immutable

part of 'single_batch_expenses_bloc.dart';

/// Represents the state of SingleBatchExpenses in the application.
class SingleBatchExpensesState extends Equatable {
  SingleBatchExpensesState({
    this.dateController,
    this.singleBatchExpensesModelObj,
  });

  TextEditingController? dateController;

  SingleBatchExpensesModel? singleBatchExpensesModelObj;

  @override
  List<Object?> get props => [
        dateController,
        singleBatchExpensesModelObj,
      ];
  SingleBatchExpensesState copyWith({
    TextEditingController? dateController,
    SingleBatchExpensesModel? singleBatchExpensesModelObj,
  }) {
    return SingleBatchExpensesState(
      dateController: dateController ?? this.dateController,
      singleBatchExpensesModelObj:
          singleBatchExpensesModelObj ?? this.singleBatchExpensesModelObj,
    );
  }
}
