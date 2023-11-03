import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/feed_type_three_screen/models/feed_type_three_model.dart';part 'feed_type_three_event.dart';part 'feed_type_three_state.dart';/// A bloc that manages the state of a FeedTypeThree according to the event that is dispatched to it.
class FeedTypeThreeBloc extends Bloc<FeedTypeThreeEvent, FeedTypeThreeState> {FeedTypeThreeBloc(FeedTypeThreeState initialState) : super(initialState) { on<FeedTypeThreeInitialEvent>(_onInitialize); }

_onInitialize(FeedTypeThreeInitialEvent event, Emitter<FeedTypeThreeState> emit, ) async  { emit(state.copyWith(feedTypeNameController: TextEditingController())); } 
 }
