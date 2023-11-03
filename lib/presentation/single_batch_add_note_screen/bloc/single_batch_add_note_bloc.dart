import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_add_note_screen/models/single_batch_add_note_model.dart';
part 'single_batch_add_note_event.dart';
part 'single_batch_add_note_state.dart';

/// A bloc that manages the state of a SingleBatchAddNote according to the event that is dispatched to it.
class SingleBatchAddNoteBloc
    extends Bloc<SingleBatchAddNoteEvent, SingleBatchAddNoteState> {
  SingleBatchAddNoteBloc(SingleBatchAddNoteState initialState)
      : super(initialState) {
    on<SingleBatchAddNoteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchAddNoteInitialEvent event,
    Emitter<SingleBatchAddNoteState> emit,
  ) async {
    emit(state.copyWith(
      titleController: TextEditingController(),
      descriptionController: TextEditingController(),
    ));
  }
}
