import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_transfer_three_dialog/models/inventory_transfer_three_model.dart';part 'inventory_transfer_three_event.dart';part 'inventory_transfer_three_state.dart';/// A bloc that manages the state of a InventoryTransferThree according to the event that is dispatched to it.
class InventoryTransferThreeBloc extends Bloc<InventoryTransferThreeEvent, InventoryTransferThreeState> {InventoryTransferThreeBloc(InventoryTransferThreeState initialState) : super(initialState) { on<InventoryTransferThreeInitialEvent>(_onInitialize); }

_onInitialize(InventoryTransferThreeInitialEvent event, Emitter<InventoryTransferThreeState> emit, ) async  {  } 
 }
