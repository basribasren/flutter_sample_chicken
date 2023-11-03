import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_feed_served_screen/models/new_feed_served_model.dart';
part 'new_feed_served_event.dart';
part 'new_feed_served_state.dart';

/// A bloc that manages the state of a NewFeedServed according to the event that is dispatched to it.
class NewFeedServedBloc extends Bloc<NewFeedServedEvent, NewFeedServedState> {
  NewFeedServedBloc(NewFeedServedState initialState) : super(initialState) {
    on<NewFeedServedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewFeedServedInitialEvent event,
    Emitter<NewFeedServedState> emit,
  ) async {}
}
