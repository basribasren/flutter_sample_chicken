// ignore_for_file: must_be_immutable

part of 'income_one_bloc.dart';

/// Represents the state of IncomeOne in the application.
class IncomeOneState extends Equatable {
  IncomeOneState({this.incomeOneModelObj});

  IncomeOneModel? incomeOneModelObj;

  @override
  List<Object?> get props => [
        incomeOneModelObj,
      ];
  IncomeOneState copyWith({IncomeOneModel? incomeOneModelObj}) {
    return IncomeOneState(
      incomeOneModelObj: incomeOneModelObj ?? this.incomeOneModelObj,
    );
  }
}
