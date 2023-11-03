import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_order_tab_container_page/models/new_order_tab_container_model.dart';
part 'new_order_tab_container_event.dart';
part 'new_order_tab_container_state.dart';

/// A bloc that manages the state of a NewOrderTabContainer according to the event that is dispatched to it.
class NewOrderTabContainerBloc
    extends Bloc<NewOrderTabContainerEvent, NewOrderTabContainerState> {
  NewOrderTabContainerBloc(NewOrderTabContainerState initialState)
      : super(initialState) {
    on<NewOrderTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewOrderTabContainerInitialEvent event,
    Emitter<NewOrderTabContainerState> emit,
  ) async {}
}
