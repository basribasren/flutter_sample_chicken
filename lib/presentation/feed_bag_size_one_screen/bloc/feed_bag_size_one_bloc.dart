import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/feed_bag_size_one_screen/models/feed_bag_size_one_model.dart';part 'feed_bag_size_one_event.dart';part 'feed_bag_size_one_state.dart';/// A bloc that manages the state of a FeedBagSizeOne according to the event that is dispatched to it.
class FeedBagSizeOneBloc extends Bloc<FeedBagSizeOneEvent, FeedBagSizeOneState> {FeedBagSizeOneBloc(FeedBagSizeOneState initialState) : super(initialState) { on<FeedBagSizeOneInitialEvent>(_onInitialize); }

_onInitialize(FeedBagSizeOneInitialEvent event, Emitter<FeedBagSizeOneState> emit, ) async  {  } 
 }
