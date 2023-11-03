import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/edit_profile_dialog/models/edit_profile_model.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';/// A bloc that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize); }

_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  {  } 
 }
