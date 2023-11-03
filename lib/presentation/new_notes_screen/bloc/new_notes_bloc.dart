import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_notes_screen/models/new_notes_model.dart';
part 'new_notes_event.dart';
part 'new_notes_state.dart';

/// A bloc that manages the state of a NewNotes according to the event that is dispatched to it.
class NewNotesBloc extends Bloc<NewNotesEvent, NewNotesState> {
  NewNotesBloc(NewNotesState initialState) : super(initialState) {
    on<NewNotesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewNotesInitialEvent event,
    Emitter<NewNotesState> emit,
  ) async {}
}
