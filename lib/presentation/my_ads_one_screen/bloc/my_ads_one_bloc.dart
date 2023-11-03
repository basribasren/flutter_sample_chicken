import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/my_ads_one_screen/models/my_ads_one_model.dart';part 'my_ads_one_event.dart';part 'my_ads_one_state.dart';/// A bloc that manages the state of a MyAdsOne according to the event that is dispatched to it.
class MyAdsOneBloc extends Bloc<MyAdsOneEvent, MyAdsOneState> {MyAdsOneBloc(MyAdsOneState initialState) : super(initialState) { on<MyAdsOneInitialEvent>(_onInitialize); }

_onInitialize(MyAdsOneInitialEvent event, Emitter<MyAdsOneState> emit, ) async  {  } 
 }
