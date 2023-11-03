// ignore_for_file: must_be_immutable

part of 'expenses_three_bloc.dart';

/// Represents the state of ExpensesThree in the application.
class ExpensesThreeState extends Equatable {
  ExpensesThreeState({
    this.categoryNameController,
    this.expensesThreeModelObj,
  });

  TextEditingController? categoryNameController;

  ExpensesThreeModel? expensesThreeModelObj;

  @override
  List<Object?> get props => [
        categoryNameController,
        expensesThreeModelObj,
      ];
  ExpensesThreeState copyWith({
    TextEditingController? categoryNameController,
    ExpensesThreeModel? expensesThreeModelObj,
  }) {
    return ExpensesThreeState(
      categoryNameController:
          categoryNameController ?? this.categoryNameController,
      expensesThreeModelObj:
          expensesThreeModelObj ?? this.expensesThreeModelObj,
    );
  }
}
