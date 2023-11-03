import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_mortality_screen/models/new_mortality_model.dart';
part 'new_mortality_event.dart';
part 'new_mortality_state.dart';

/// A bloc that manages the state of a NewMortality according to the event that is dispatched to it.
class NewMortalityBloc extends Bloc<NewMortalityEvent, NewMortalityState> {
  NewMortalityBloc(NewMortalityState initialState) : super(initialState) {
    on<NewMortalityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewMortalityInitialEvent event,
    Emitter<NewMortalityState> emit,
  ) async {}
}
