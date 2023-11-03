import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/add_order_screen/models/add_order_model.dart';part 'add_order_event.dart';part 'add_order_state.dart';/// A bloc that manages the state of a AddOrder according to the event that is dispatched to it.
class AddOrderBloc extends Bloc<AddOrderEvent, AddOrderState> {AddOrderBloc(AddOrderState initialState) : super(initialState) { on<AddOrderInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<AddOrderState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(AddOrderInitialEvent event, Emitter<AddOrderState> emit, ) async  { emit(state.copyWith(orderDateController: TextEditingController(), feedTypeController: TextEditingController(), feedCompanyController: TextEditingController(), orderWeightController: TextEditingController(), bagQuantityController: TextEditingController(), orderPriceController: TextEditingController(), orderTotalController: TextEditingController(), isSelectedSwitch: false)); } 
 }
