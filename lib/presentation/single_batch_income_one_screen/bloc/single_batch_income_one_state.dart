// ignore_for_file: must_be_immutable

part of 'single_batch_income_one_bloc.dart';

/// Represents the state of SingleBatchIncomeOne in the application.
class SingleBatchIncomeOneState extends Equatable {
  SingleBatchIncomeOneState({
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
    this.singleBatchIncomeOneModelObj,
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

  SingleBatchIncomeOneModel? singleBatchIncomeOneModelObj;

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
        singleBatchIncomeOneModelObj,
      ];
  SingleBatchIncomeOneState copyWith({
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
    SingleBatchIncomeOneModel? singleBatchIncomeOneModelObj,
  }) {
    return SingleBatchIncomeOneState(
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
      singleBatchIncomeOneModelObj:
          singleBatchIncomeOneModelObj ?? this.singleBatchIncomeOneModelObj,
    );
  }
}
