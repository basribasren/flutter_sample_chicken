import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/batches_tab_container_screen/models/batches_tab_container_model.dart';
part 'batches_tab_container_event.dart';
part 'batches_tab_container_state.dart';

/// A bloc that manages the state of a BatchesTabContainer according to the event that is dispatched to it.
class BatchesTabContainerBloc
    extends Bloc<BatchesTabContainerEvent, BatchesTabContainerState> {
  BatchesTabContainerBloc(BatchesTabContainerState initialState)
      : super(initialState) {
    on<BatchesTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatchesTabContainerInitialEvent event,
    Emitter<BatchesTabContainerState> emit,
  ) async {}
}
