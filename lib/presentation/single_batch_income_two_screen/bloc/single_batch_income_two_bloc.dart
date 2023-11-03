import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_income_two_screen/models/single_batch_income_two_model.dart';
part 'single_batch_income_two_event.dart';
part 'single_batch_income_two_state.dart';

/// A bloc that manages the state of a SingleBatchIncomeTwo according to the event that is dispatched to it.
class SingleBatchIncomeTwoBloc
    extends Bloc<SingleBatchIncomeTwoEvent, SingleBatchIncomeTwoState> {
  SingleBatchIncomeTwoBloc(SingleBatchIncomeTwoState initialState)
      : super(initialState) {
    on<SingleBatchIncomeTwoInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SingleBatchIncomeTwoState> emit,
  ) {
    emit(state.copyWith(
      addIncomePaymentMethod: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_cash", "lbl_online", "lbl_unpaid"];
  }

  _onInitialize(
    SingleBatchIncomeTwoInitialEvent event,
    Emitter<SingleBatchIncomeTwoState> emit,
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
        singleBatchIncomeTwoModelObj:
            state.singleBatchIncomeTwoModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
