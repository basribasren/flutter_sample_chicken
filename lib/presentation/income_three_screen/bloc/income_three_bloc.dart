import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/income_three_screen/models/income_three_model.dart';
part 'income_three_event.dart';
part 'income_three_state.dart';

/// A bloc that manages the state of a IncomeThree according to the event that is dispatched to it.
class IncomeThreeBloc extends Bloc<IncomeThreeEvent, IncomeThreeState> {
  IncomeThreeBloc(IncomeThreeState initialState) : super(initialState) {
    on<IncomeThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IncomeThreeInitialEvent event,
    Emitter<IncomeThreeState> emit,
  ) async {
    emit(state.copyWith(
      categoryController: TextEditingController(),
    ));
  }
}
