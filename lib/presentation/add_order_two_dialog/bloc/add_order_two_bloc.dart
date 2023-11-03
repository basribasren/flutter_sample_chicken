import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/add_order_two_dialog/models/add_order_two_model.dart';part 'add_order_two_event.dart';part 'add_order_two_state.dart';/// A bloc that manages the state of a AddOrderTwo according to the event that is dispatched to it.
class AddOrderTwoBloc extends Bloc<AddOrderTwoEvent, AddOrderTwoState> {AddOrderTwoBloc(AddOrderTwoState initialState) : super(initialState) { on<AddOrderTwoInitialEvent>(_onInitialize); }

_onInitialize(AddOrderTwoInitialEvent event, Emitter<AddOrderTwoState> emit, ) async  {  } 
 }
