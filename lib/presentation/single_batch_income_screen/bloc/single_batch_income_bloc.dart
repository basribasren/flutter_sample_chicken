import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_income_screen/models/single_batch_income_model.dart';
part 'single_batch_income_event.dart';
part 'single_batch_income_state.dart';

/// A bloc that manages the state of a SingleBatchIncome according to the event that is dispatched to it.
class SingleBatchIncomeBloc
    extends Bloc<SingleBatchIncomeEvent, SingleBatchIncomeState> {
  SingleBatchIncomeBloc(SingleBatchIncomeState initialState)
      : super(initialState) {
    on<SingleBatchIncomeInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SingleBatchIncomeState> emit,
  ) {
    emit(state.copyWith(
      addIncomePaymentMethod: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_cash", "lbl_online", "lbl_unpaid"];
  }

  _onInitialize(
    SingleBatchIncomeInitialEvent event,
    Emitter<SingleBatchIncomeState> emit,
  ) async {
    emit(state.copyWith(
      addIncomeNameController: TextEditingController(),
      addIncomeContactValueController: TextEditingController(),
      addIncomeCategoryValueController: TextEditingController(),
      addIncomeQuantityValueController: TextEditingController(),
      addIncomeWeightValueController: TextEditingController(),
      addIncomeRateValueController: TextEditingController(),
      addIncomeAmountController: TextEditingController(),
      addIncomeAmountController1: TextEditingController(),
      addIncomeAmountController2: TextEditingController(),
      addIncomeDescriptionValueController: TextEditingController(),
      addIncomePaymentMethod: "",
    ));
    emit(state.copyWith(
        singleBatchIncomeModelObj: state.singleBatchIncomeModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
