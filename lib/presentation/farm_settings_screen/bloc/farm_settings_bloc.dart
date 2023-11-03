import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/farm_settings_screen/models/farm_settings_model.dart';part 'farm_settings_event.dart';part 'farm_settings_state.dart';/// A bloc that manages the state of a FarmSettings according to the event that is dispatched to it.
class FarmSettingsBloc extends Bloc<FarmSettingsEvent, FarmSettingsState> {FarmSettingsBloc(FarmSettingsState initialState) : super(initialState) { on<FarmSettingsInitialEvent>(_onInitialize); }

_onInitialize(FarmSettingsInitialEvent event, Emitter<FarmSettingsState> emit, ) async  {  } 
 }
