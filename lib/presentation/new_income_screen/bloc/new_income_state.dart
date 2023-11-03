// ignore_for_file: must_be_immutable

part of 'new_income_bloc.dart';

/// Represents the state of NewIncome in the application.
class NewIncomeState extends Equatable {
  NewIncomeState({this.newIncomeModelObj});

  NewIncomeModel? newIncomeModelObj;

  @override
  List<Object?> get props => [
        newIncomeModelObj,
      ];
  NewIncomeState copyWith({NewIncomeModel? newIncomeModelObj}) {
    return NewIncomeState(
      newIncomeModelObj: newIncomeModelObj ?? this.newIncomeModelObj,
    );
  }
}
