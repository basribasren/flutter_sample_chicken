import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/empty_batches_page/models/empty_batches_model.dart';
part 'empty_batches_event.dart';
part 'empty_batches_state.dart';

/// A bloc that manages the state of a EmptyBatches according to the event that is dispatched to it.
class EmptyBatchesBloc extends Bloc<EmptyBatchesEvent, EmptyBatchesState> {
  EmptyBatchesBloc(EmptyBatchesState initialState) : super(initialState) {
    on<EmptyBatchesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmptyBatchesInitialEvent event,
    Emitter<EmptyBatchesState> emit,
  ) async {}
}
