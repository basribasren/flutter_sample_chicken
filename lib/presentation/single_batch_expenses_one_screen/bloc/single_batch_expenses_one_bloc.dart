import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_expenses_one_screen/models/single_batch_expenses_one_model.dart';
part 'single_batch_expenses_one_event.dart';
part 'single_batch_expenses_one_state.dart';

/// A bloc that manages the state of a SingleBatchExpensesOne according to the event that is dispatched to it.
class SingleBatchExpensesOneBloc
    extends Bloc<SingleBatchExpensesOneEvent, SingleBatchExpensesOneState> {
  SingleBatchExpensesOneBloc(SingleBatchExpensesOneState initialState)
      : super(initialState) {
    on<SingleBatchExpensesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchExpensesOneInitialEvent event,
    Emitter<SingleBatchExpensesOneState> emit,
  ) async {
    emit(state.copyWith(
      dateEditTextController: TextEditingController(),
      menuThirtySixEditTextController: TextEditingController(),
      amountEditTextController: TextEditingController(),
      descriptionValueEditTextController: TextEditingController(),
    ));
  }
}
