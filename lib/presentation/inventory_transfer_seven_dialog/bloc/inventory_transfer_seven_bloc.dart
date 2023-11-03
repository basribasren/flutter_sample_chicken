import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_seven_dialog/models/inventory_transfer_seven_model.dart';part 'inventory_transfer_seven_event.dart';part 'inventory_transfer_seven_state.dart';/// A bloc that manages the state of a InventoryTransferSeven according to the event that is dispatched to it.
class InventoryTransferSevenBloc extends Bloc<InventoryTransferSevenEvent, InventoryTransferSevenState> {InventoryTransferSevenBloc(InventoryTransferSevenState initialState) : super(initialState) { on<InventoryTransferSevenInitialEvent>(_onInitialize); }

_onInitialize(InventoryTransferSevenInitialEvent event, Emitter<InventoryTransferSevenState> emit, ) async  {  } 
 }
