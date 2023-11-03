import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/income_two_screen/models/income_two_model.dart';
part 'income_two_event.dart';
part 'income_two_state.dart';

/// A bloc that manages the state of a IncomeTwo according to the event that is dispatched to it.
class IncomeTwoBloc extends Bloc<IncomeTwoEvent, IncomeTwoState> {
  IncomeTwoBloc(IncomeTwoState initialState) : super(initialState) {
    on<IncomeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IncomeTwoInitialEvent event,
    Emitter<IncomeTwoState> emit,
  ) async {
    emit(state.copyWith(
      categoryController: TextEditingController(),
    ));
  }
}
