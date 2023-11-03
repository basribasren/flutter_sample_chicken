import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/chick_feed_requirement_five_screen/models/chick_feed_requirement_five_model.dart';part 'chick_feed_requirement_five_event.dart';part 'chick_feed_requirement_five_state.dart';/// A bloc that manages the state of a ChickFeedRequirementFive according to the event that is dispatched to it.
class ChickFeedRequirementFiveBloc extends Bloc<ChickFeedRequirementFiveEvent, ChickFeedRequirementFiveState> {ChickFeedRequirementFiveBloc(ChickFeedRequirementFiveState initialState) : super(initialState) { on<ChickFeedRequirementFiveInitialEvent>(_onInitialize); }

_onInitialize(ChickFeedRequirementFiveInitialEvent event, Emitter<ChickFeedRequirementFiveState> emit, ) async  { emit(state.copyWith(dayController: TextEditingController(), breedController: TextEditingController())); } 
 }
