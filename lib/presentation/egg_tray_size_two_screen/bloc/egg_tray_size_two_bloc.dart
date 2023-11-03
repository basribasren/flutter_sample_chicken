import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/egg_tray_size_two_screen/models/egg_tray_size_two_model.dart';
part 'egg_tray_size_two_event.dart';
part 'egg_tray_size_two_state.dart';

/// A bloc that manages the state of a EggTraySizeTwo according to the event that is dispatched to it.
class EggTraySizeTwoBloc
    extends Bloc<EggTraySizeTwoEvent, EggTraySizeTwoState> {
  EggTraySizeTwoBloc(EggTraySizeTwoState initialState) : super(initialState) {
    on<EggTraySizeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EggTraySizeTwoInitialEvent event,
    Emitter<EggTraySizeTwoState> emit,
  ) async {
    emit(state.copyWith(
      standardEggTraySizeLabelController: TextEditingController(),
    ));
  }
}
