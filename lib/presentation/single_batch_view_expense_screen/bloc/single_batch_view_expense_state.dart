// ignore_for_file: must_be_immutable

part of 'single_batch_view_expense_bloc.dart';

/// Represents the state of SingleBatchViewExpense in the application.
class SingleBatchViewExpenseState extends Equatable {
  SingleBatchViewExpenseState({
    this.searchController,
    this.singleBatchViewExpenseModelObj,
  });

  TextEditingController? searchController;

  SingleBatchViewExpenseModel? singleBatchViewExpenseModelObj;

  @override
  List<Object?> get props => [
        searchController,
        singleBatchViewExpenseModelObj,
      ];
  SingleBatchViewExpenseState copyWith({
    TextEditingController? searchController,
    SingleBatchViewExpenseModel? singleBatchViewExpenseModelObj,
  }) {
    return SingleBatchViewExpenseState(
      searchController: searchController ?? this.searchController,
      singleBatchViewExpenseModelObj:
          singleBatchViewExpenseModelObj ?? this.singleBatchViewExpenseModelObj,
    );
  }
}
