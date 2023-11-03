// ignore_for_file: must_be_immutable

part of 'single_batch_income_bloc.dart';

/// Represents the state of SingleBatchIncome in the application.
class SingleBatchIncomeState extends Equatable {
  SingleBatchIncomeState({
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
    this.singleBatchIncomeModelObj,
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

  SingleBatchIncomeModel? singleBatchIncomeModelObj;

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
        singleBatchIncomeModelObj,
      ];
  SingleBatchIncomeState copyWith({
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
    SingleBatchIncomeModel? singleBatchIncomeModelObj,
  }) {
    return SingleBatchIncomeState(
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
      singleBatchIncomeModelObj:
          singleBatchIncomeModelObj ?? this.singleBatchIncomeModelObj,
    );
  }
}
