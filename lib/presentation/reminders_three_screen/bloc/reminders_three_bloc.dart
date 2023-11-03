import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/reminders_three_screen/models/reminders_three_model.dart';part 'reminders_three_event.dart';part 'reminders_three_state.dart';/// A bloc that manages the state of a RemindersThree according to the event that is dispatched to it.
class RemindersThreeBloc extends Bloc<RemindersThreeEvent, RemindersThreeState> {RemindersThreeBloc(RemindersThreeState initialState) : super(initialState) { on<RemindersThreeInitialEvent>(_onInitialize); }

_onInitialize(RemindersThreeInitialEvent event, Emitter<RemindersThreeState> emit, ) async  { emit(state.copyWith(dateController: TextEditingController())); } 
 }
