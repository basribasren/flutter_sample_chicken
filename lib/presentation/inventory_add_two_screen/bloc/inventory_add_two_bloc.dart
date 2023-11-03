import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_add_two_screen/models/inventory_add_two_model.dart';part 'inventory_add_two_event.dart';part 'inventory_add_two_state.dart';/// A bloc that manages the state of a InventoryAddTwo according to the event that is dispatched to it.
class InventoryAddTwoBloc extends Bloc<InventoryAddTwoEvent, InventoryAddTwoState> {InventoryAddTwoBloc(InventoryAddTwoState initialState) : super(initialState) { on<InventoryAddTwoInitialEvent>(_onInitialize); }

_onInitialize(InventoryAddTwoInitialEvent event, Emitter<InventoryAddTwoState> emit, ) async  { emit(state.copyWith(priceEditTextController: TextEditingController(), totalEditTextController: TextEditingController())); } 
 }
