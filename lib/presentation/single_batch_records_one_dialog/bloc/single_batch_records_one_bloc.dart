import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_records_one_dialog/models/single_batch_records_one_model.dart';
part 'single_batch_records_one_event.dart';
part 'single_batch_records_one_state.dart';

/// A bloc that manages the state of a SingleBatchRecordsOne according to the event that is dispatched to it.
class SingleBatchRecordsOneBloc
    extends Bloc<SingleBatchRecordsOneEvent, SingleBatchRecordsOneState> {
  SingleBatchRecordsOneBloc(SingleBatchRecordsOneState initialState)
      : super(initialState) {
    on<SingleBatchRecordsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchRecordsOneInitialEvent event,
    Emitter<SingleBatchRecordsOneState> emit,
  ) async {}
}
