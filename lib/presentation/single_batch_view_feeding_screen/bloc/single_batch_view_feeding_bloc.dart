import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_view_feeding_screen/models/single_batch_view_feeding_model.dart';part 'single_batch_view_feeding_event.dart';part 'single_batch_view_feeding_state.dart';/// A bloc that manages the state of a SingleBatchViewFeeding according to the event that is dispatched to it.
class SingleBatchViewFeedingBloc extends Bloc<SingleBatchViewFeedingEvent, SingleBatchViewFeedingState> {SingleBatchViewFeedingBloc(SingleBatchViewFeedingState initialState) : super(initialState) { on<SingleBatchViewFeedingInitialEvent>(_onInitialize); }

_onInitialize(SingleBatchViewFeedingInitialEvent event, Emitter<SingleBatchViewFeedingState> emit, ) async  { emit(state.copyWith(weightController: TextEditingController())); } 
 }
