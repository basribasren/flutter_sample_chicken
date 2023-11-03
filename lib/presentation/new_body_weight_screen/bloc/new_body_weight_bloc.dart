import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_body_weight_screen/models/new_body_weight_model.dart';
part 'new_body_weight_event.dart';
part 'new_body_weight_state.dart';

/// A bloc that manages the state of a NewBodyWeight according to the event that is dispatched to it.
class NewBodyWeightBloc extends Bloc<NewBodyWeightEvent, NewBodyWeightState> {
  NewBodyWeightBloc(NewBodyWeightState initialState) : super(initialState) {
    on<NewBodyWeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewBodyWeightInitialEvent event,
    Emitter<NewBodyWeightState> emit,
  ) async {}
}
