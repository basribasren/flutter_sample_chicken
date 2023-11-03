import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/reminders_two_screen/models/reminders_two_model.dart';
part 'reminders_two_event.dart';
part 'reminders_two_state.dart';

/// A bloc that manages the state of a RemindersTwo according to the event that is dispatched to it.
class RemindersTwoBloc extends Bloc<RemindersTwoEvent, RemindersTwoState> {
  RemindersTwoBloc(RemindersTwoState initialState) : super(initialState) {
    on<RemindersTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RemindersTwoInitialEvent event,
    Emitter<RemindersTwoState> emit,
  ) async {
    emit(state.copyWith(
      remindersTwoController: TextEditingController(),
      remindersTwoController1: TextEditingController(),
      remindersTwoController2: TextEditingController(),
    ));
  }
}
