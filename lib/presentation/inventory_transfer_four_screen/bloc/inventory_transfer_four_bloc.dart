import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_four_screen/models/inventory_transfer_four_model.dart';part 'inventory_transfer_four_event.dart';part 'inventory_transfer_four_state.dart';/// A bloc that manages the state of a InventoryTransferFour according to the event that is dispatched to it.
class InventoryTransferFourBloc extends Bloc<InventoryTransferFourEvent, InventoryTransferFourState> {InventoryTransferFourBloc(InventoryTransferFourState initialState) : super(initialState) { on<InventoryTransferFourInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<InventoryTransferFourState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(InventoryTransferFourInitialEvent event, Emitter<InventoryTransferFourState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
