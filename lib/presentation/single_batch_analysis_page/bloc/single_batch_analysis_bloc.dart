import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_analysis_page/models/single_batch_analysis_model.dart';
part 'single_batch_analysis_event.dart';
part 'single_batch_analysis_state.dart';

/// A bloc that manages the state of a SingleBatchAnalysis according to the event that is dispatched to it.
class SingleBatchAnalysisBloc
    extends Bloc<SingleBatchAnalysisEvent, SingleBatchAnalysisState> {
  SingleBatchAnalysisBloc(SingleBatchAnalysisState initialState)
      : super(initialState) {
    on<SingleBatchAnalysisInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchAnalysisInitialEvent event,
    Emitter<SingleBatchAnalysisState> emit,
  ) async {}
}
