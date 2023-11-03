import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/egg_tray_size_one_screen/models/egg_tray_size_one_model.dart';part 'egg_tray_size_one_event.dart';part 'egg_tray_size_one_state.dart';/// A bloc that manages the state of a EggTraySizeOne according to the event that is dispatched to it.
class EggTraySizeOneBloc extends Bloc<EggTraySizeOneEvent, EggTraySizeOneState> {EggTraySizeOneBloc(EggTraySizeOneState initialState) : super(initialState) { on<EggTraySizeOneInitialEvent>(_onInitialize); }

_onInitialize(EggTraySizeOneInitialEvent event, Emitter<EggTraySizeOneState> emit, ) async  {  } 
 }
