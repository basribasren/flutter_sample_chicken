import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/vaccination_schedule_five_screen/models/vaccination_schedule_five_model.dart';part 'vaccination_schedule_five_event.dart';part 'vaccination_schedule_five_state.dart';/// A bloc that manages the state of a VaccinationScheduleFive according to the event that is dispatched to it.
class VaccinationScheduleFiveBloc extends Bloc<VaccinationScheduleFiveEvent, VaccinationScheduleFiveState> {VaccinationScheduleFiveBloc(VaccinationScheduleFiveState initialState) : super(initialState) { on<VaccinationScheduleFiveInitialEvent>(_onInitialize); }

_onInitialize(VaccinationScheduleFiveInitialEvent event, Emitter<VaccinationScheduleFiveState> emit, ) async  { emit(state.copyWith(menuThirtyEightController: TextEditingController(), menuThirtyNineController: TextEditingController(), descriptionController: TextEditingController())); } 
 }
