import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_add_dialog/models/inventory_add_model.dart';part 'inventory_add_event.dart';part 'inventory_add_state.dart';/// A bloc that manages the state of a InventoryAdd according to the event that is dispatched to it.
class InventoryAddBloc extends Bloc<InventoryAddEvent, InventoryAddState> {InventoryAddBloc(InventoryAddState initialState) : super(initialState) { on<InventoryAddInitialEvent>(_onInitialize); }

_onInitialize(InventoryAddInitialEvent event, Emitter<InventoryAddState> emit, ) async  {  } 
 }
