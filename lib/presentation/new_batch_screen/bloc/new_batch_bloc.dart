import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/new_batch_screen/models/new_batch_model.dart';part 'new_batch_event.dart';part 'new_batch_state.dart';/// A bloc that manages the state of a NewBatch according to the event that is dispatched to it.
class NewBatchBloc extends Bloc<NewBatchEvent, NewBatchState> {NewBatchBloc(NewBatchState initialState) : super(initialState) { on<NewBatchInitialEvent>(_onInitialize); }

_onInitialize(NewBatchInitialEvent event, Emitter<NewBatchState> emit, ) async  { emit(state.copyWith(dateEditTextController: TextEditingController(), nameEditTextController: TextEditingController(), menuThirtySixEditTextController: TextEditingController(), numBirdsEditTextController: TextEditingController(), costPerBirdEditTextController: TextEditingController(), supplierEditTextController: TextEditingController())); } 
 }
