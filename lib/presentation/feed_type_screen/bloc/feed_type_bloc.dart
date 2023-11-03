import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/feedtype_item_model.dart';
import 'package:basri_s_application4/presentation/feed_type_screen/models/feed_type_model.dart';
part 'feed_type_event.dart';
part 'feed_type_state.dart';

/// A bloc that manages the state of a FeedType according to the event that is dispatched to it.
class FeedTypeBloc extends Bloc<FeedTypeEvent, FeedTypeState> {
  FeedTypeBloc(FeedTypeState initialState) : super(initialState) {
    on<FeedTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedTypeInitialEvent event,
    Emitter<FeedTypeState> emit,
  ) async {
    emit(state.copyWith(
        feedTypeModelObj: state.feedTypeModelObj?.copyWith(
      feedtypeItemList: fillFeedtypeItemList(),
    )));
  }

  List<FeedtypeItemModel> fillFeedtypeItemList() {
    return List.generate(4, (index) => FeedtypeItemModel());
  }
}
