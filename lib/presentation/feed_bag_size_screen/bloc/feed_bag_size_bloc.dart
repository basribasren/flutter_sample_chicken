import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/feed_bag_size_screen/models/feed_bag_size_model.dart';
part 'feed_bag_size_event.dart';
part 'feed_bag_size_state.dart';

/// A bloc that manages the state of a FeedBagSize according to the event that is dispatched to it.
class FeedBagSizeBloc extends Bloc<FeedBagSizeEvent, FeedBagSizeState> {
  FeedBagSizeBloc(FeedBagSizeState initialState) : super(initialState) {
    on<FeedBagSizeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedBagSizeInitialEvent event,
    Emitter<FeedBagSizeState> emit,
  ) async {}
}
