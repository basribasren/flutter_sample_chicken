import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/homepage_sell_one_screen/models/homepage_sell_one_model.dart';part 'homepage_sell_one_event.dart';part 'homepage_sell_one_state.dart';/// A bloc that manages the state of a HomepageSellOne according to the event that is dispatched to it.
class HomepageSellOneBloc extends Bloc<HomepageSellOneEvent, HomepageSellOneState> {HomepageSellOneBloc(HomepageSellOneState initialState) : super(initialState) { on<HomepageSellOneInitialEvent>(_onInitialize); }

_onInitialize(HomepageSellOneInitialEvent event, Emitter<HomepageSellOneState> emit, ) async  {  } 
 }
