import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/introduction_screen/models/introduction_model.dart';part 'introduction_event.dart';part 'introduction_state.dart';/// A bloc that manages the state of a Introduction according to the event that is dispatched to it.
class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {IntroductionBloc(IntroductionState initialState) : super(initialState) { on<IntroductionInitialEvent>(_onInitialize); }

_onInitialize(IntroductionInitialEvent event, Emitter<IntroductionState> emit, ) async  {  } 
 }
