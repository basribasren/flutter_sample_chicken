// ignore_for_file: must_be_immutable

part of 'expenses_two_bloc.dart';

/// Represents the state of ExpensesTwo in the application.
class ExpensesTwoState extends Equatable {
  ExpensesTwoState({
    this.categoryNameController,
    this.expensesTwoModelObj,
  });

  TextEditingController? categoryNameController;

  ExpensesTwoModel? expensesTwoModelObj;

  @override
  List<Object?> get props => [
        categoryNameController,
        expensesTwoModelObj,
      ];
  ExpensesTwoState copyWith({
    TextEditingController? categoryNameController,
    ExpensesTwoModel? expensesTwoModelObj,
  }) {
    return ExpensesTwoState(
      categoryNameController:
          categoryNameController ?? this.categoryNameController,
      expensesTwoModelObj: expensesTwoModelObj ?? this.expensesTwoModelObj,
    );
  }
}
