import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_four_screen/models/vaccination_schedule_four_model.dart';
part 'vaccination_schedule_four_event.dart';
part 'vaccination_schedule_four_state.dart';

/// A bloc that manages the state of a VaccinationScheduleFour according to the event that is dispatched to it.
class VaccinationScheduleFourBloc
    extends Bloc<VaccinationScheduleFourEvent, VaccinationScheduleFourState> {
  VaccinationScheduleFourBloc(VaccinationScheduleFourState initialState)
      : super(initialState) {
    on<VaccinationScheduleFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VaccinationScheduleFourInitialEvent event,
    Emitter<VaccinationScheduleFourState> emit,
  ) async {
    emit(state.copyWith(
      menuFortyController: TextEditingController(),
      dayController: TextEditingController(),
      menuThirtySevenController: TextEditingController(),
      menuThirtyEightController: TextEditingController(),
      menuThirtyNineController: TextEditingController(),
      descriptionController: TextEditingController(),
    ));
  }
}
