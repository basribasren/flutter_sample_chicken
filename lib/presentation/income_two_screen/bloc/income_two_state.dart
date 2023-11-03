// ignore_for_file: must_be_immutable

part of 'income_two_bloc.dart';

/// Represents the state of IncomeTwo in the application.
class IncomeTwoState extends Equatable {
  IncomeTwoState({
    this.categoryController,
    this.incomeTwoModelObj,
  });

  TextEditingController? categoryController;

  IncomeTwoModel? incomeTwoModelObj;

  @override
  List<Object?> get props => [
        categoryController,
        incomeTwoModelObj,
      ];
  IncomeTwoState copyWith({
    TextEditingController? categoryController,
    IncomeTwoModel? incomeTwoModelObj,
  }) {
    return IncomeTwoState(
      categoryController: categoryController ?? this.categoryController,
      incomeTwoModelObj: incomeTwoModelObj ?? this.incomeTwoModelObj,
    );
  }
}
