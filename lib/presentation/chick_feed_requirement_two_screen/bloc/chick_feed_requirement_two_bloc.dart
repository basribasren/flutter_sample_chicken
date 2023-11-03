import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_two_screen/models/chick_feed_requirement_two_model.dart';
part 'chick_feed_requirement_two_event.dart';
part 'chick_feed_requirement_two_state.dart';

/// A bloc that manages the state of a ChickFeedRequirementTwo according to the event that is dispatched to it.
class ChickFeedRequirementTwoBloc
    extends Bloc<ChickFeedRequirementTwoEvent, ChickFeedRequirementTwoState> {
  ChickFeedRequirementTwoBloc(ChickFeedRequirementTwoState initialState)
      : super(initialState) {
    on<ChickFeedRequirementTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChickFeedRequirementTwoInitialEvent event,
    Emitter<ChickFeedRequirementTwoState> emit,
  ) async {}
}
