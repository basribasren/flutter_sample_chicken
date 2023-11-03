import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_sub_user_screen/models/new_sub_user_model.dart';
part 'new_sub_user_event.dart';
part 'new_sub_user_state.dart';

/// A bloc that manages the state of a NewSubUser according to the event that is dispatched to it.
class NewSubUserBloc extends Bloc<NewSubUserEvent, NewSubUserState> {
  NewSubUserBloc(NewSubUserState initialState) : super(initialState) {
    on<NewSubUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewSubUserInitialEvent event,
    Emitter<NewSubUserState> emit,
  ) async {}
}
