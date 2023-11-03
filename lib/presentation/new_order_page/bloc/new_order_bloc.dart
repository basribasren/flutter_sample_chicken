import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_order_page/models/new_order_model.dart';
part 'new_order_event.dart';
part 'new_order_state.dart';

/// A bloc that manages the state of a NewOrder according to the event that is dispatched to it.
class NewOrderBloc extends Bloc<NewOrderEvent, NewOrderState> {
  NewOrderBloc(NewOrderState initialState) : super(initialState) {
    on<NewOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewOrderInitialEvent event,
    Emitter<NewOrderState> emit,
  ) async {}
}
