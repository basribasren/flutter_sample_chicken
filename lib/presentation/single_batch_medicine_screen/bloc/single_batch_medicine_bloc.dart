import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_medicine_screen/models/single_batch_medicine_model.dart';
part 'single_batch_medicine_event.dart';
part 'single_batch_medicine_state.dart';

/// A bloc that manages the state of a SingleBatchMedicine according to the event that is dispatched to it.
class SingleBatchMedicineBloc
    extends Bloc<SingleBatchMedicineEvent, SingleBatchMedicineState> {
  SingleBatchMedicineBloc(SingleBatchMedicineState initialState)
      : super(initialState) {
    on<SingleBatchMedicineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchMedicineInitialEvent event,
    Emitter<SingleBatchMedicineState> emit,
  ) async {
    emit(state.copyWith(
      dateEditTextController: TextEditingController(),
      medicineEditTextController: TextEditingController(),
      descriptionEditTextController: TextEditingController(),
    ));
  }
}
