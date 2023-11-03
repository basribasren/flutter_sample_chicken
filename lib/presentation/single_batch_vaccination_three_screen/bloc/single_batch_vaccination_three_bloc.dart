import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_vaccination_three_screen/models/single_batch_vaccination_three_model.dart';part 'single_batch_vaccination_three_event.dart';part 'single_batch_vaccination_three_state.dart';/// A bloc that manages the state of a SingleBatchVaccinationThree according to the event that is dispatched to it.
class SingleBatchVaccinationThreeBloc extends Bloc<SingleBatchVaccinationThreeEvent, SingleBatchVaccinationThreeState> {SingleBatchVaccinationThreeBloc(SingleBatchVaccinationThreeState initialState) : super(initialState) { on<SingleBatchVaccinationThreeInitialEvent>(_onInitialize); }

_onInitialize(SingleBatchVaccinationThreeInitialEvent event, Emitter<SingleBatchVaccinationThreeState> emit, ) async  { emit(state.copyWith(dateController: TextEditingController(), descriptionvalueController: TextEditingController())); } 
 }
