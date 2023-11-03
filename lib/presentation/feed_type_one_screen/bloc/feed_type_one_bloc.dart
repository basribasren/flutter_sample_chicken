import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/feed_type_one_screen/models/feed_type_one_model.dart';
part 'feed_type_one_event.dart';
part 'feed_type_one_state.dart';

/// A bloc that manages the state of a FeedTypeOne according to the event that is dispatched to it.
class FeedTypeOneBloc extends Bloc<FeedTypeOneEvent, FeedTypeOneState> {
  FeedTypeOneBloc(FeedTypeOneState initialState) : super(initialState) {
    on<FeedTypeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedTypeOneInitialEvent event,
    Emitter<FeedTypeOneState> emit,
  ) async {}
}
