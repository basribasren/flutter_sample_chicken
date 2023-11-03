import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/feed_type_two_screen/models/feed_type_two_model.dart';
part 'feed_type_two_event.dart';
part 'feed_type_two_state.dart';

/// A bloc that manages the state of a FeedTypeTwo according to the event that is dispatched to it.
class FeedTypeTwoBloc extends Bloc<FeedTypeTwoEvent, FeedTypeTwoState> {
  FeedTypeTwoBloc(FeedTypeTwoState initialState) : super(initialState) {
    on<FeedTypeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedTypeTwoInitialEvent event,
    Emitter<FeedTypeTwoState> emit,
  ) async {
    emit(state.copyWith(
      feedTypeNameController: TextEditingController(),
    ));
  }
}
