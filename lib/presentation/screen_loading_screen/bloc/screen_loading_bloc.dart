import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/screen_loading_screen/models/screen_loading_model.dart';
part 'screen_loading_event.dart';
part 'screen_loading_state.dart';

/// A bloc that manages the state of a ScreenLoading according to the event that is dispatched to it.
class ScreenLoadingBloc extends Bloc<ScreenLoadingEvent, ScreenLoadingState> {
  ScreenLoadingBloc(ScreenLoadingState initialState) : super(initialState) {
    on<ScreenLoadingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenLoadingInitialEvent event,
    Emitter<ScreenLoadingState> emit,
  ) async {}
}
