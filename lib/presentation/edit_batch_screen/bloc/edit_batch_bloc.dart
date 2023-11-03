import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/edit_batch_screen/models/edit_batch_model.dart';part 'edit_batch_event.dart';part 'edit_batch_state.dart';/// A bloc that manages the state of a EditBatch according to the event that is dispatched to it.
class EditBatchBloc extends Bloc<EditBatchEvent, EditBatchState> {EditBatchBloc(EditBatchState initialState) : super(initialState) { on<EditBatchInitialEvent>(_onInitialize); }

_onInitialize(EditBatchInitialEvent event, Emitter<EditBatchState> emit, ) async  { emit(state.copyWith(editBatchDateController: TextEditingController(), editBatchNameController: TextEditingController(), editBatchBreedController: TextEditingController(), editBatchNumberOfBirdsController: TextEditingController(), editBatchCostPerBirdController: TextEditingController(), editBatchSupplierController: TextEditingController())); } 
 }
