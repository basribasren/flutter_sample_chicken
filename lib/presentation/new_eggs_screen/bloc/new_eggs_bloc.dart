import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_eggs_screen/models/new_eggs_model.dart';
part 'new_eggs_event.dart';
part 'new_eggs_state.dart';

/// A bloc that manages the state of a NewEggs according to the event that is dispatched to it.
class NewEggsBloc extends Bloc<NewEggsEvent, NewEggsState> {
  NewEggsBloc(NewEggsState initialState) : super(initialState) {
    on<NewEggsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewEggsInitialEvent event,
    Emitter<NewEggsState> emit,
  ) async {}
}
