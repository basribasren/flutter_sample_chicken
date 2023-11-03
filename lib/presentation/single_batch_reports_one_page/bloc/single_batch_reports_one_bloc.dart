import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_reports_one_page/models/single_batch_reports_one_model.dart';
part 'single_batch_reports_one_event.dart';
part 'single_batch_reports_one_state.dart';

/// A bloc that manages the state of a SingleBatchReportsOne according to the event that is dispatched to it.
class SingleBatchReportsOneBloc
    extends Bloc<SingleBatchReportsOneEvent, SingleBatchReportsOneState> {
  SingleBatchReportsOneBloc(SingleBatchReportsOneState initialState)
      : super(initialState) {
    on<SingleBatchReportsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchReportsOneInitialEvent event,
    Emitter<SingleBatchReportsOneState> emit,
  ) async {
    emit(state.copyWith(
      menuThirtyEightController: TextEditingController(),
    ));
  }
}
