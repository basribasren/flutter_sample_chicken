import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_vaccination_screen/models/new_vaccination_model.dart';
part 'new_vaccination_event.dart';
part 'new_vaccination_state.dart';

/// A bloc that manages the state of a NewVaccination according to the event that is dispatched to it.
class NewVaccinationBloc
    extends Bloc<NewVaccinationEvent, NewVaccinationState> {
  NewVaccinationBloc(NewVaccinationState initialState) : super(initialState) {
    on<NewVaccinationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewVaccinationInitialEvent event,
    Emitter<NewVaccinationState> emit,
  ) async {}
}
