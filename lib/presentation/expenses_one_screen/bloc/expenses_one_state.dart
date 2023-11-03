// ignore_for_file: must_be_immutable

part of 'expenses_one_bloc.dart';

/// Represents the state of ExpensesOne in the application.
class ExpensesOneState extends Equatable {
  ExpensesOneState({this.expensesOneModelObj});

  ExpensesOneModel? expensesOneModelObj;

  @override
  List<Object?> get props => [
        expensesOneModelObj,
      ];
  ExpensesOneState copyWith({ExpensesOneModel? expensesOneModelObj}) {
    return ExpensesOneState(
      expensesOneModelObj: expensesOneModelObj ?? this.expensesOneModelObj,
    );
  }
}
