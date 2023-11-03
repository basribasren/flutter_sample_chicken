import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/batches_sub_user_two_screen/models/batches_sub_user_two_model.dart';part 'batches_sub_user_two_event.dart';part 'batches_sub_user_two_state.dart';/// A bloc that manages the state of a BatchesSubUserTwo according to the event that is dispatched to it.
class BatchesSubUserTwoBloc extends Bloc<BatchesSubUserTwoEvent, BatchesSubUserTwoState> {BatchesSubUserTwoBloc(BatchesSubUserTwoState initialState) : super(initialState) { on<BatchesSubUserTwoInitialEvent>(_onInitialize); }

_onInitialize(BatchesSubUserTwoInitialEvent event, Emitter<BatchesSubUserTwoState> emit, ) async  { emit(state.copyWith(nameEditTextController: TextEditingController(), mobileNumberEditTextController: TextEditingController(), editOnlyEditTextController: TextEditingController())); } 
 }
