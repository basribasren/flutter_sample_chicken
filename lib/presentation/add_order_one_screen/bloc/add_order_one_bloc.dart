import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/add_order_one_screen/models/add_order_one_model.dart';part 'add_order_one_event.dart';part 'add_order_one_state.dart';/// A bloc that manages the state of a AddOrderOne according to the event that is dispatched to it.
class AddOrderOneBloc extends Bloc<AddOrderOneEvent, AddOrderOneState> {AddOrderOneBloc(AddOrderOneState initialState) : super(initialState) { on<AddOrderOneInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<AddOrderOneState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(AddOrderOneInitialEvent event, Emitter<AddOrderOneState> emit, ) async  { emit(state.copyWith(orderDateController: TextEditingController(), orderWeightController: TextEditingController(), bagQuantityController: TextEditingController(), orderPriceController: TextEditingController(), orderTotalController: TextEditingController(), isSelectedSwitch: false)); } 
 }
