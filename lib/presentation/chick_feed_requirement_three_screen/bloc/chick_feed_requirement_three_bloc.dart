import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_three_screen/models/chick_feed_requirement_three_model.dart';
part 'chick_feed_requirement_three_event.dart';
part 'chick_feed_requirement_three_state.dart';

/// A bloc that manages the state of a ChickFeedRequirementThree according to the event that is dispatched to it.
class ChickFeedRequirementThreeBloc extends Bloc<ChickFeedRequirementThreeEvent,
    ChickFeedRequirementThreeState> {
  ChickFeedRequirementThreeBloc(ChickFeedRequirementThreeState initialState)
      : super(initialState) {
    on<ChickFeedRequirementThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChickFeedRequirementThreeInitialEvent event,
    Emitter<ChickFeedRequirementThreeState> emit,
  ) async {
    emit(state.copyWith(
      chickFeedRequirementDayController: TextEditingController(),
      chickFeedRequirementBreedController: TextEditingController(),
      chickFeedRequirementFeedTypeController: TextEditingController(),
      chickFeedRequirementGramsController: TextEditingController(),
    ));
  }
}
