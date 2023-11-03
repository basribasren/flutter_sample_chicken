import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/inventory_screen/models/inventory_model.dart';part 'inventory_event.dart';part 'inventory_state.dart';/// A bloc that manages the state of a Inventory according to the event that is dispatched to it.
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {InventoryBloc(InventoryState initialState) : super(initialState) { on<InventoryInitialEvent>(_onInitialize); }

_onInitialize(InventoryInitialEvent event, Emitter<InventoryState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
