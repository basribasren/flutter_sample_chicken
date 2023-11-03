import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_five_screen/models/inventory_transfer_five_model.dart';part 'inventory_transfer_five_event.dart';part 'inventory_transfer_five_state.dart';/// A bloc that manages the state of a InventoryTransferFive according to the event that is dispatched to it.
class InventoryTransferFiveBloc extends Bloc<InventoryTransferFiveEvent, InventoryTransferFiveState> {InventoryTransferFiveBloc(InventoryTransferFiveState initialState) : super(initialState) { on<InventoryTransferFiveInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<InventoryTransferFiveState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(InventoryTransferFiveInitialEvent event, Emitter<InventoryTransferFiveState> emit, ) async  { emit(state.copyWith(fromBatchController: TextEditingController(), isSelectedSwitch: false)); } 
 }
