import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/vaccination_schedule_screen/models/vaccination_schedule_model.dart';part 'vaccination_schedule_event.dart';part 'vaccination_schedule_state.dart';/// A bloc that manages the state of a VaccinationSchedule according to the event that is dispatched to it.
class VaccinationScheduleBloc extends Bloc<VaccinationScheduleEvent, VaccinationScheduleState> {VaccinationScheduleBloc(VaccinationScheduleState initialState) : super(initialState) { on<VaccinationScheduleInitialEvent>(_onInitialize); }

_onInitialize(VaccinationScheduleInitialEvent event, Emitter<VaccinationScheduleState> emit, ) async  { emit(state.copyWith(breedvalueController: TextEditingController())); } 
 }
