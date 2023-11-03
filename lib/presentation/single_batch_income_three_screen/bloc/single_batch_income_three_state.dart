// ignore_for_file: must_be_immutable

part of 'single_batch_income_three_bloc.dart';

/// Represents the state of SingleBatchIncomeThree in the application.
class SingleBatchIncomeThreeState extends Equatable {
  SingleBatchIncomeThreeState({
    this.addIncomeNameController,
    this.addIncomeContactController,
    this.addIncomeQuantityController,
    this.addIncomeAmountController,
    this.addIncomeAmount1Controller,
    this.addIncomeAmount2Controller,
    this.addIncomeDescriptionController,
    this.addIncomePaymentMethod = "",
    this.singleBatchIncomeThreeModelObj,
  });

  TextEditingController? addIncomeNameController;

  TextEditingController? addIncomeContactController;

  TextEditingController? addIncomeQuantityController;

  TextEditingController? addIncomeAmountController;

  TextEditingController? addIncomeAmount1Controller;

  TextEditingController? addIncomeAmount2Controller;

  TextEditingController? addIncomeDescriptionController;

  SingleBatchIncomeThreeModel? singleBatchIncomeThreeModelObj;

  String addIncomePaymentMethod;

  @override
  List<Object?> get props => [
        addIncomeNameController,
        addIncomeContactController,
        addIncomeQuantityController,
        addIncomeAmountController,
        addIncomeAmount1Controller,
        addIncomeAmount2Controller,
        addIncomeDescriptionController,
        addIncomePaymentMethod,
        singleBatchIncomeThreeModelObj,
      ];
  SingleBatchIncomeThreeState copyWith({
    TextEditingController? addIncomeNameController,
    TextEditingController? addIncomeContactController,
    TextEditingController? addIncomeQuantityController,
    TextEditingController? addIncomeAmountController,
    TextEditingController? addIncomeAmount1Controller,
    TextEditingController? addIncomeAmount2Controller,
    TextEditingController? addIncomeDescriptionController,
    String? addIncomePaymentMethod,
    SingleBatchIncomeThreeModel? singleBatchIncomeThreeModelObj,
  }) {
    return SingleBatchIncomeThreeState(
      addIncomeNameController:
          addIncomeNameController ?? this.addIncomeNameController,
      addIncomeContactController:
          addIncomeContactController ?? this.addIncomeContactController,
      addIncomeQuantityController:
          addIncomeQuantityController ?? this.addIncomeQuantityController,
      addIncomeAmountController:
          addIncomeAmountController ?? this.addIncomeAmountController,
      addIncomeAmount1Controller:
          addIncomeAmount1Controller ?? this.addIncomeAmount1Controller,
      addIncomeAmount2Controller:
          addIncomeAmount2Controller ?? this.addIncomeAmount2Controller,
      addIncomeDescriptionController:
          addIncomeDescriptionController ?? this.addIncomeDescriptionController,
      addIncomePaymentMethod:
          addIncomePaymentMethod ?? this.addIncomePaymentMethod,
      singleBatchIncomeThreeModelObj:
          singleBatchIncomeThreeModelObj ?? this.singleBatchIncomeThreeModelObj,
    );
  }
}
