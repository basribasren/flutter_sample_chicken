import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/income_screen/models/income_model.dart';
part 'income_event.dart';
part 'income_state.dart';

/// A bloc that manages the state of a Income according to the event that is dispatched to it.
class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  IncomeBloc(IncomeState initialState) : super(initialState) {
    on<IncomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IncomeInitialEvent event,
    Emitter<IncomeState> emit,
  ) async {}
}
