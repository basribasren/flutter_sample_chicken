import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_income_screen/models/new_income_model.dart';
part 'new_income_event.dart';
part 'new_income_state.dart';

/// A bloc that manages the state of a NewIncome according to the event that is dispatched to it.
class NewIncomeBloc extends Bloc<NewIncomeEvent, NewIncomeState> {
  NewIncomeBloc(NewIncomeState initialState) : super(initialState) {
    on<NewIncomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewIncomeInitialEvent event,
    Emitter<NewIncomeState> emit,
  ) async {}
}
