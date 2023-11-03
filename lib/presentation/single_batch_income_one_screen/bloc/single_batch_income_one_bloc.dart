import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_income_one_screen/models/single_batch_income_one_model.dart';
part 'single_batch_income_one_event.dart';
part 'single_batch_income_one_state.dart';

/// A bloc that manages the state of a SingleBatchIncomeOne according to the event that is dispatched to it.
class SingleBatchIncomeOneBloc
    extends Bloc<SingleBatchIncomeOneEvent, SingleBatchIncomeOneState> {
  SingleBatchIncomeOneBloc(SingleBatchIncomeOneState initialState)
      : super(initialState) {
    on<SingleBatchIncomeOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SingleBatchIncomeOneState> emit,
  ) {
    emit(state.copyWith(
      addIncomePaymentMethod: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_cash", "lbl_online", "lbl_unpaid"];
  }

  _onInitialize(
    SingleBatchIncomeOneInitialEvent event,
    Emitter<SingleBatchIncomeOneState> emit,
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
        singleBatchIncomeOneModelObj:
            state.singleBatchIncomeOneModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
