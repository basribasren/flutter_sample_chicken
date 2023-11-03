import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_medicine_screen/models/new_medicine_model.dart';
part 'new_medicine_event.dart';
part 'new_medicine_state.dart';

/// A bloc that manages the state of a NewMedicine according to the event that is dispatched to it.
class NewMedicineBloc extends Bloc<NewMedicineEvent, NewMedicineState> {
  NewMedicineBloc(NewMedicineState initialState) : super(initialState) {
    on<NewMedicineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewMedicineInitialEvent event,
    Emitter<NewMedicineState> emit,
  ) async {}
}
