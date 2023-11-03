import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/batches_sub_user_one_screen/models/batches_sub_user_one_model.dart';
part 'batches_sub_user_one_event.dart';
part 'batches_sub_user_one_state.dart';

/// A bloc that manages the state of a BatchesSubUserOne according to the event that is dispatched to it.
class BatchesSubUserOneBloc
    extends Bloc<BatchesSubUserOneEvent, BatchesSubUserOneState> {
  BatchesSubUserOneBloc(BatchesSubUserOneState initialState)
      : super(initialState) {
    on<BatchesSubUserOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatchesSubUserOneInitialEvent event,
    Emitter<BatchesSubUserOneState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      mobileNumberController: TextEditingController(),
      viewOnlyController: TextEditingController(),
    ));
  }
}
