import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/expenses_screen/models/expenses_model.dart';
part 'expenses_event.dart';
part 'expenses_state.dart';

/// A bloc that manages the state of a Expenses according to the event that is dispatched to it.
class ExpensesBloc extends Bloc<ExpensesEvent, ExpensesState> {
  ExpensesBloc(ExpensesState initialState) : super(initialState) {
    on<ExpensesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExpensesInitialEvent event,
    Emitter<ExpensesState> emit,
  ) async {}
}
