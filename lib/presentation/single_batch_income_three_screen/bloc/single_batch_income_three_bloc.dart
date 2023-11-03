import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_income_three_screen/models/single_batch_income_three_model.dart';part 'single_batch_income_three_event.dart';part 'single_batch_income_three_state.dart';/// A bloc that manages the state of a SingleBatchIncomeThree according to the event that is dispatched to it.
class SingleBatchIncomeThreeBloc extends Bloc<SingleBatchIncomeThreeEvent, SingleBatchIncomeThreeState> {SingleBatchIncomeThreeBloc(SingleBatchIncomeThreeState initialState) : super(initialState) { on<SingleBatchIncomeThreeInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<SingleBatchIncomeThreeState> emit, ) { emit(state.copyWith(addIncomePaymentMethod: event.value)); } 
List<String> fillRadioList() { return ["lbl_cash", "lbl_online", "lbl_unpaid"]; } 
_onInitialize(SingleBatchIncomeThreeInitialEvent event, Emitter<SingleBatchIncomeThreeState> emit, ) async  { emit(state.copyWith(addIncomeNameController: TextEditingController(), addIncomeContactController: TextEditingController(), addIncomeQuantityController: TextEditingController(), addIncomeAmountController: TextEditingController(), addIncomeAmount1Controller: TextEditingController(), addIncomeAmount2Controller: TextEditingController(), addIncomeDescriptionController: TextEditingController(), addIncomePaymentMethod: "")); emit(state.copyWith(singleBatchIncomeThreeModelObj: state.singleBatchIncomeThreeModelObj?.copyWith(radioList: fillRadioList()))); } 
 }
