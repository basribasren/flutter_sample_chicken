import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/feed_bag_size_two_screen/models/feed_bag_size_two_model.dart';
part 'feed_bag_size_two_event.dart';
part 'feed_bag_size_two_state.dart';

/// A bloc that manages the state of a FeedBagSizeTwo according to the event that is dispatched to it.
class FeedBagSizeTwoBloc
    extends Bloc<FeedBagSizeTwoEvent, FeedBagSizeTwoState> {
  FeedBagSizeTwoBloc(FeedBagSizeTwoState initialState) : super(initialState) {
    on<FeedBagSizeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedBagSizeTwoInitialEvent event,
    Emitter<FeedBagSizeTwoState> emit,
  ) async {
    emit(state.copyWith(
      weightController: TextEditingController(),
    ));
  }
}
