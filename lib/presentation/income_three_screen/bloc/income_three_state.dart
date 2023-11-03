// ignore_for_file: must_be_immutable

part of 'income_three_bloc.dart';

/// Represents the state of IncomeThree in the application.
class IncomeThreeState extends Equatable {
  IncomeThreeState({
    this.categoryController,
    this.incomeThreeModelObj,
  });

  TextEditingController? categoryController;

  IncomeThreeModel? incomeThreeModelObj;

  @override
  List<Object?> get props => [
        categoryController,
        incomeThreeModelObj,
      ];
  IncomeThreeState copyWith({
    TextEditingController? categoryController,
    IncomeThreeModel? incomeThreeModelObj,
  }) {
    return IncomeThreeState(
      categoryController: categoryController ?? this.categoryController,
      incomeThreeModelObj: incomeThreeModelObj ?? this.incomeThreeModelObj,
    );
  }
}
