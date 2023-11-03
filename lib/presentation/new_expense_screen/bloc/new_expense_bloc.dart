import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_expense_screen/models/new_expense_model.dart';
part 'new_expense_event.dart';
part 'new_expense_state.dart';

/// A bloc that manages the state of a NewExpense according to the event that is dispatched to it.
class NewExpenseBloc extends Bloc<NewExpenseEvent, NewExpenseState> {
  NewExpenseBloc(NewExpenseState initialState) : super(initialState) {
    on<NewExpenseInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewExpenseInitialEvent event,
    Emitter<NewExpenseState> emit,
  ) async {}
}
