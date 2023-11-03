import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/homepage_sell_two_dialog/models/homepage_sell_two_model.dart';part 'homepage_sell_two_event.dart';part 'homepage_sell_two_state.dart';/// A bloc that manages the state of a HomepageSellTwo according to the event that is dispatched to it.
class HomepageSellTwoBloc extends Bloc<HomepageSellTwoEvent, HomepageSellTwoState> {HomepageSellTwoBloc(HomepageSellTwoState initialState) : super(initialState) { on<HomepageSellTwoInitialEvent>(_onInitialize); }

_onInitialize(HomepageSellTwoInitialEvent event, Emitter<HomepageSellTwoState> emit, ) async  {  } 
 }
