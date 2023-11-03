import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_mortality_screen/models/single_batch_mortality_model.dart';
part 'single_batch_mortality_event.dart';
part 'single_batch_mortality_state.dart';

/// A bloc that manages the state of a SingleBatchMortality according to the event that is dispatched to it.
class SingleBatchMortalityBloc
    extends Bloc<SingleBatchMortalityEvent, SingleBatchMortalityState> {
  SingleBatchMortalityBloc(SingleBatchMortalityState initialState)
      : super(initialState) {
    on<SingleBatchMortalityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchMortalityInitialEvent event,
    Emitter<SingleBatchMortalityState> emit,
  ) async {
    emit(state.copyWith(
      dateEditTextController: TextEditingController(),
      mortalityValueEditTextController: TextEditingController(),
      descriptionValueEditTextController: TextEditingController(),
    ));
  }
}
