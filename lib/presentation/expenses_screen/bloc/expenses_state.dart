// ignore_for_file: must_be_immutable

part of 'expenses_bloc.dart';

/// Represents the state of Expenses in the application.
class ExpensesState extends Equatable {
  ExpensesState({this.expensesModelObj});

  ExpensesModel? expensesModelObj;

  @override
  List<Object?> get props => [
        expensesModelObj,
      ];
  ExpensesState copyWith({ExpensesModel? expensesModelObj}) {
    return ExpensesState(
      expensesModelObj: expensesModelObj ?? this.expensesModelObj,
    );
  }
}
