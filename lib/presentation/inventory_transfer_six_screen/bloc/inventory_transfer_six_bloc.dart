import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_six_screen/models/inventory_transfer_six_model.dart';part 'inventory_transfer_six_event.dart';part 'inventory_transfer_six_state.dart';/// A bloc that manages the state of a InventoryTransferSix according to the event that is dispatched to it.
class InventoryTransferSixBloc extends Bloc<InventoryTransferSixEvent, InventoryTransferSixState> {InventoryTransferSixBloc(InventoryTransferSixState initialState) : super(initialState) { on<InventoryTransferSixInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<InventoryTransferSixState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(InventoryTransferSixInitialEvent event, Emitter<InventoryTransferSixState> emit, ) async  { emit(state.copyWith(fromBatchController: TextEditingController(), feedTypeController: TextEditingController(), quantityStockAvailableController: TextEditingController(), isSelectedSwitch: false)); } 
 }
