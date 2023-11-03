import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/expenses_two_screen/models/expenses_two_model.dart';
part 'expenses_two_event.dart';
part 'expenses_two_state.dart';

/// A bloc that manages the state of a ExpensesTwo according to the event that is dispatched to it.
class ExpensesTwoBloc extends Bloc<ExpensesTwoEvent, ExpensesTwoState> {
  ExpensesTwoBloc(ExpensesTwoState initialState) : super(initialState) {
    on<ExpensesTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExpensesTwoInitialEvent event,
    Emitter<ExpensesTwoState> emit,
  ) async {
    emit(state.copyWith(
      categoryNameController: TextEditingController(),
    ));
  }
}
