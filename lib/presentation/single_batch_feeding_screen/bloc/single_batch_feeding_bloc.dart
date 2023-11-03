import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_feeding_screen/models/single_batch_feeding_model.dart';
part 'single_batch_feeding_event.dart';
part 'single_batch_feeding_state.dart';

/// A bloc that manages the state of a SingleBatchFeeding according to the event that is dispatched to it.
class SingleBatchFeedingBloc
    extends Bloc<SingleBatchFeedingEvent, SingleBatchFeedingState> {
  SingleBatchFeedingBloc(SingleBatchFeedingState initialState)
      : super(initialState) {
    on<SingleBatchFeedingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchFeedingInitialEvent event,
    Emitter<SingleBatchFeedingState> emit,
  ) async {
    emit(state.copyWith(
      dateEditTextController: TextEditingController(),
      menuThirtySixController: TextEditingController(),
      group691Controller: TextEditingController(),
    ));
  }
}
