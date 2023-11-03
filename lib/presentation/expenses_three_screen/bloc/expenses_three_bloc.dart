import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/expenses_three_screen/models/expenses_three_model.dart';
part 'expenses_three_event.dart';
part 'expenses_three_state.dart';

/// A bloc that manages the state of a ExpensesThree according to the event that is dispatched to it.
class ExpensesThreeBloc extends Bloc<ExpensesThreeEvent, ExpensesThreeState> {
  ExpensesThreeBloc(ExpensesThreeState initialState) : super(initialState) {
    on<ExpensesThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExpensesThreeInitialEvent event,
    Emitter<ExpensesThreeState> emit,
  ) async {
    emit(state.copyWith(
      categoryNameController: TextEditingController(),
    ));
  }
}
