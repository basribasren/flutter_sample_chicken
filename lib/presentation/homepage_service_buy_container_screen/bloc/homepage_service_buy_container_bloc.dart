import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/homepage_service_buy_container_screen/models/homepage_service_buy_container_model.dart';part 'homepage_service_buy_container_event.dart';part 'homepage_service_buy_container_state.dart';/// A bloc that manages the state of a HomepageServiceBuyContainer according to the event that is dispatched to it.
class HomepageServiceBuyContainerBloc extends Bloc<HomepageServiceBuyContainerEvent, HomepageServiceBuyContainerState> {HomepageServiceBuyContainerBloc(HomepageServiceBuyContainerState initialState) : super(initialState) { on<HomepageServiceBuyContainerInitialEvent>(_onInitialize); }

_onInitialize(HomepageServiceBuyContainerInitialEvent event, Emitter<HomepageServiceBuyContainerState> emit, ) async  {  } 
 }
