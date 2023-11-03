// ignore_for_file: must_be_immutable

part of 'new_expense_bloc.dart';

/// Represents the state of NewExpense in the application.
class NewExpenseState extends Equatable {
  NewExpenseState({this.newExpenseModelObj});

  NewExpenseModel? newExpenseModelObj;

  @override
  List<Object?> get props => [
        newExpenseModelObj,
      ];
  NewExpenseState copyWith({NewExpenseModel? newExpenseModelObj}) {
    return NewExpenseState(
      newExpenseModelObj: newExpenseModelObj ?? this.newExpenseModelObj,
    );
  }
}
