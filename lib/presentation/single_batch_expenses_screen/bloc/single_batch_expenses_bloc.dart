import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_expenses_screen/models/single_batch_expenses_model.dart';part 'single_batch_expenses_event.dart';part 'single_batch_expenses_state.dart';/// A bloc that manages the state of a SingleBatchExpenses according to the event that is dispatched to it.
class SingleBatchExpensesBloc extends Bloc<SingleBatchExpensesEvent, SingleBatchExpensesState> {SingleBatchExpensesBloc(SingleBatchExpensesState initialState) : super(initialState) { on<SingleBatchExpensesInitialEvent>(_onInitialize); }

_onInitialize(SingleBatchExpensesInitialEvent event, Emitter<SingleBatchExpensesState> emit, ) async  { emit(state.copyWith(dateController: TextEditingController())); } 
 }
