import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_body_weight_screen/models/single_batch_body_weight_model.dart';
part 'single_batch_body_weight_event.dart';
part 'single_batch_body_weight_state.dart';

/// A bloc that manages the state of a SingleBatchBodyWeight according to the event that is dispatched to it.
class SingleBatchBodyWeightBloc
    extends Bloc<SingleBatchBodyWeightEvent, SingleBatchBodyWeightState> {
  SingleBatchBodyWeightBloc(SingleBatchBodyWeightState initialState)
      : super(initialState) {
    on<SingleBatchBodyWeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchBodyWeightInitialEvent event,
    Emitter<SingleBatchBodyWeightState> emit,
  ) async {
    emit(state.copyWith(
      averageBodyWeightController: TextEditingController(),
    ));
  }
}
