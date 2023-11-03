import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/introduction_screen_one_screen/models/introduction_screen_one_model.dart';part 'introduction_screen_one_event.dart';part 'introduction_screen_one_state.dart';/// A bloc that manages the state of a IntroductionScreenOne according to the event that is dispatched to it.
class IntroductionScreenOneBloc extends Bloc<IntroductionScreenOneEvent, IntroductionScreenOneState> {IntroductionScreenOneBloc(IntroductionScreenOneState initialState) : super(initialState) { on<IntroductionScreenOneInitialEvent>(_onInitialize); }

_onInitialize(IntroductionScreenOneInitialEvent event, Emitter<IntroductionScreenOneState> emit, ) async  {  } 
 }
