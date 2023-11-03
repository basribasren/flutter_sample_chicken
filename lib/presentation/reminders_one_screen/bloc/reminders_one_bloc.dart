import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/reminders_one_screen/models/reminders_one_model.dart';
part 'reminders_one_event.dart';
part 'reminders_one_state.dart';

/// A bloc that manages the state of a RemindersOne according to the event that is dispatched to it.
class RemindersOneBloc extends Bloc<RemindersOneEvent, RemindersOneState> {
  RemindersOneBloc(RemindersOneState initialState) : super(initialState) {
    on<RemindersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RemindersOneInitialEvent event,
    Emitter<RemindersOneState> emit,
  ) async {}
}
