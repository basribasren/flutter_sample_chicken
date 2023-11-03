import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/egg_tray_size_screen/models/egg_tray_size_model.dart';
part 'egg_tray_size_event.dart';
part 'egg_tray_size_state.dart';

/// A bloc that manages the state of a EggTraySize according to the event that is dispatched to it.
class EggTraySizeBloc extends Bloc<EggTraySizeEvent, EggTraySizeState> {
  EggTraySizeBloc(EggTraySizeState initialState) : super(initialState) {
    on<EggTraySizeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EggTraySizeInitialEvent event,
    Emitter<EggTraySizeState> emit,
  ) async {}
}
