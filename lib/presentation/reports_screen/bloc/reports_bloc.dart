import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/reports_screen/models/reports_model.dart';part 'reports_event.dart';part 'reports_state.dart';/// A bloc that manages the state of a Reports according to the event that is dispatched to it.
class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {ReportsBloc(ReportsState initialState) : super(initialState) { on<ReportsInitialEvent>(_onInitialize); }

_onInitialize(ReportsInitialEvent event, Emitter<ReportsState> emit, ) async  { emit(state.copyWith(incomeValueEditTextController: TextEditingController(), expensesValueEditTextController: TextEditingController(), chickFeedRequirementValueEditTextController: TextEditingController(), feedTypeValueEditTextController: TextEditingController())); } 
 }
