import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_two_screen/models/inventory_transfer_two_model.dart';part 'inventory_transfer_two_event.dart';part 'inventory_transfer_two_state.dart';/// A bloc that manages the state of a InventoryTransferTwo according to the event that is dispatched to it.
class InventoryTransferTwoBloc extends Bloc<InventoryTransferTwoEvent, InventoryTransferTwoState> {InventoryTransferTwoBloc(InventoryTransferTwoState initialState) : super(initialState) { on<InventoryTransferTwoInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<InventoryTransferTwoState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(InventoryTransferTwoInitialEvent event, Emitter<InventoryTransferTwoState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
