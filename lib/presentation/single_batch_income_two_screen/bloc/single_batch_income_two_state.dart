// ignore_for_file: must_be_immutable

part of 'single_batch_income_two_bloc.dart';

/// Represents the state of SingleBatchIncomeTwo in the application.
class SingleBatchIncomeTwoState extends Equatable {
  SingleBatchIncomeTwoState({
    this.addIncomeNameController,
    this.addIncomeContactValueController,
    this.addIncomeCategoryValueController,
    this.addIncomeQuantityValueController,
    this.addIncomeWeightValueController,
    this.addIncomeRateValueController,
    this.addIncomeAmountController,
    this.addIncomeAmountController1,
    this.addIncomeAmountController2,
    this.addIncomeDescriptionValueController,
    this.addIncomePaymentMethod = "",
    this.singleBatchIncomeTwoModelObj,
  });

  TextEditingController? addIncomeNameController;

  TextEditingController? addIncomeContactValueController;

  TextEditingController? addIncomeCategoryValueController;

  TextEditingController? addIncomeQuantityValueController;

  TextEditingController? addIncomeWeightValueController;

  TextEditingController? addIncomeRateValueController;

  TextEditingController? addIncomeAmountController;

  TextEditingController? addIncomeAmountController1;

  TextEditingController? addIncomeAmountController2;

  TextEditingController? addIncomeDescriptionValueController;

  SingleBatchIncomeTwoModel? singleBatchIncomeTwoModelObj;

  String addIncomePaymentMethod;

  @override
  List<Object?> get props => [
        addIncomeNameController,
        addIncomeContactValueController,
        addIncomeCategoryValueController,
        addIncomeQuantityValueController,
        addIncomeWeightValueController,
        addIncomeRateValueController,
        addIncomeAmountController,
        addIncomeAmountController1,
        addIncomeAmountController2,
        addIncomeDescriptionValueController,
        addIncomePaymentMethod,
        singleBatchIncomeTwoModelObj,
      ];
  SingleBatchIncomeTwoState copyWith({
    TextEditingController? addIncomeNameController,
    TextEditingController? addIncomeContactValueController,
    TextEditingController? addIncomeCategoryValueController,
    TextEditingController? addIncomeQuantityValueController,
    TextEditingController? addIncomeWeightValueController,
    TextEditingController? addIncomeRateValueController,
    TextEditingController? addIncomeAmountController,
    TextEditingController? addIncomeAmountController1,
    TextEditingController? addIncomeAmountController2,
    TextEditingController? addIncomeDescriptionValueController,
    String? addIncomePaymentMethod,
    SingleBatchIncomeTwoModel? singleBatchIncomeTwoModelObj,
  }) {
    return SingleBatchIncomeTwoState(
      addIncomeNameController:
          addIncomeNameController ?? this.addIncomeNameController,
      addIncomeContactValueController: addIncomeContactValueController ??
          this.addIncomeContactValueController,
      addIncomeCategoryValueController: addIncomeCategoryValueController ??
          this.addIncomeCategoryValueController,
      addIncomeQuantityValueController: addIncomeQuantityValueController ??
          this.addIncomeQuantityValueController,
      addIncomeWeightValueController:
          addIncomeWeightValueController ?? this.addIncomeWeightValueController,
      addIncomeRateValueController:
          addIncomeRateValueController ?? this.addIncomeRateValueController,
      addIncomeAmountController:
          addIncomeAmountController ?? this.addIncomeAmountController,
      addIncomeAmountController1:
          addIncomeAmountController1 ?? this.addIncomeAmountController1,
      addIncomeAmountController2:
          addIncomeAmountController2 ?? this.addIncomeAmountController2,
      addIncomeDescriptionValueController:
          addIncomeDescriptionValueController ??
              this.addIncomeDescriptionValueController,
      addIncomePaymentMethod:
          addIncomePaymentMethod ?? this.addIncomePaymentMethod,
      singleBatchIncomeTwoModelObj:
          singleBatchIncomeTwoModelObj ?? this.singleBatchIncomeTwoModelObj,
    );
  }
}
