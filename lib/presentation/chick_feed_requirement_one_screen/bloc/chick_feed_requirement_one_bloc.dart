import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_one_screen/models/chick_feed_requirement_one_model.dart';
part 'chick_feed_requirement_one_event.dart';
part 'chick_feed_requirement_one_state.dart';

/// A bloc that manages the state of a ChickFeedRequirementOne according to the event that is dispatched to it.
class ChickFeedRequirementOneBloc
    extends Bloc<ChickFeedRequirementOneEvent, ChickFeedRequirementOneState> {
  ChickFeedRequirementOneBloc(ChickFeedRequirementOneState initialState)
      : super(initialState) {
    on<ChickFeedRequirementOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChickFeedRequirementOneInitialEvent event,
    Emitter<ChickFeedRequirementOneState> emit,
  ) async {}
}
