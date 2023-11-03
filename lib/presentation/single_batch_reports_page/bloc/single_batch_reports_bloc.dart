import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_reports_page/models/single_batch_reports_model.dart';
part 'single_batch_reports_event.dart';
part 'single_batch_reports_state.dart';

/// A bloc that manages the state of a SingleBatchReports according to the event that is dispatched to it.
class SingleBatchReportsBloc
    extends Bloc<SingleBatchReportsEvent, SingleBatchReportsState> {
  SingleBatchReportsBloc(SingleBatchReportsState initialState)
      : super(initialState) {
    on<SingleBatchReportsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchReportsInitialEvent event,
    Emitter<SingleBatchReportsState> emit,
  ) async {}
}
