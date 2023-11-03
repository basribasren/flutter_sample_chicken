import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_screen/models/inventory_transfer_model.dart';part 'inventory_transfer_event.dart';part 'inventory_transfer_state.dart';/// A bloc that manages the state of a InventoryTransfer according to the event that is dispatched to it.
class InventoryTransferBloc extends Bloc<InventoryTransferEvent, InventoryTransferState> {InventoryTransferBloc(InventoryTransferState initialState) : super(initialState) { on<InventoryTransferInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<InventoryTransferState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(InventoryTransferInitialEvent event, Emitter<InventoryTransferState> emit, ) async  { emit(state.copyWith(feedTypevalueController: TextEditingController(), isSelectedSwitch: false)); } 
 }
