import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_one_screen/models/inventory_transfer_one_model.dart';part 'inventory_transfer_one_event.dart';part 'inventory_transfer_one_state.dart';/// A bloc that manages the state of a InventoryTransferOne according to the event that is dispatched to it.
class InventoryTransferOneBloc extends Bloc<InventoryTransferOneEvent, InventoryTransferOneState> {InventoryTransferOneBloc(InventoryTransferOneState initialState) : super(initialState) { on<InventoryTransferOneInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<InventoryTransferOneState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(InventoryTransferOneInitialEvent event, Emitter<InventoryTransferOneState> emit, ) async  { emit(state.copyWith(feedTypeNameController: TextEditingController(), transferToBatchNameController: TextEditingController(), isSelectedSwitch: false)); } 
 }
