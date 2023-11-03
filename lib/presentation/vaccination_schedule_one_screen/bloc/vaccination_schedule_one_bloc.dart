import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_one_screen/models/vaccination_schedule_one_model.dart';
part 'vaccination_schedule_one_event.dart';
part 'vaccination_schedule_one_state.dart';

/// A bloc that manages the state of a VaccinationScheduleOne according to the event that is dispatched to it.
class VaccinationScheduleOneBloc
    extends Bloc<VaccinationScheduleOneEvent, VaccinationScheduleOneState> {
  VaccinationScheduleOneBloc(VaccinationScheduleOneState initialState)
      : super(initialState) {
    on<VaccinationScheduleOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VaccinationScheduleOneInitialEvent event,
    Emitter<VaccinationScheduleOneState> emit,
  ) async {}
}
