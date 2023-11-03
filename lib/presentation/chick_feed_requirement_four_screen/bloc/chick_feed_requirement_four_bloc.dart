import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/chick_feed_requirement_four_screen/models/chick_feed_requirement_four_model.dart';part 'chick_feed_requirement_four_event.dart';part 'chick_feed_requirement_four_state.dart';/// A bloc that manages the state of a ChickFeedRequirementFour according to the event that is dispatched to it.
class ChickFeedRequirementFourBloc extends Bloc<ChickFeedRequirementFourEvent, ChickFeedRequirementFourState> {ChickFeedRequirementFourBloc(ChickFeedRequirementFourState initialState) : super(initialState) { on<ChickFeedRequirementFourInitialEvent>(_onInitialize); }

_onInitialize(ChickFeedRequirementFourInitialEvent event, Emitter<ChickFeedRequirementFourState> emit, ) async  { emit(state.copyWith(dayController: TextEditingController())); } 
 }
