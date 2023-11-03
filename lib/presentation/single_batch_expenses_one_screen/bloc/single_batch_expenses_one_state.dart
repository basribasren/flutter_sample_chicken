// ignore_for_file: must_be_immutable

part of 'single_batch_expenses_one_bloc.dart';

/// Represents the state of SingleBatchExpensesOne in the application.
class SingleBatchExpensesOneState extends Equatable {
  SingleBatchExpensesOneState({
    this.dateEditTextController,
    this.menuThirtySixEditTextController,
    this.amountEditTextController,
    this.descriptionValueEditTextController,
    this.singleBatchExpensesOneModelObj,
  });

  TextEditingController? dateEditTextController;

  TextEditingController? menuThirtySixEditTextController;

  TextEditingController? amountEditTextController;

  TextEditingController? descriptionValueEditTextController;

  SingleBatchExpensesOneModel? singleBatchExpensesOneModelObj;

  @override
  List<Object?> get props => [
        dateEditTextController,
        menuThirtySixEditTextController,
        amountEditTextController,
        descriptionValueEditTextController,
        singleBatchExpensesOneModelObj,
      ];
  SingleBatchExpensesOneState copyWith({
    TextEditingController? dateEditTextController,
    TextEditingController? menuThirtySixEditTextController,
    TextEditingController? amountEditTextController,
    TextEditingController? descriptionValueEditTextController,
    SingleBatchExpensesOneModel? singleBatchExpensesOneModelObj,
  }) {
    return SingleBatchExpensesOneState(
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      menuThirtySixEditTextController: menuThirtySixEditTextController ??
          this.menuThirtySixEditTextController,
      amountEditTextController:
          amountEditTextController ?? this.amountEditTextController,
      descriptionValueEditTextController: descriptionValueEditTextController ??
          this.descriptionValueEditTextController,
      singleBatchExpensesOneModelObj:
          singleBatchExpensesOneModelObj ?? this.singleBatchExpensesOneModelObj,
    );
  }
}
