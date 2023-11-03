import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/reports_one_screen/models/reports_one_model.dart';part 'reports_one_event.dart';part 'reports_one_state.dart';/// A bloc that manages the state of a ReportsOne according to the event that is dispatched to it.
class ReportsOneBloc extends Bloc<ReportsOneEvent, ReportsOneState> {ReportsOneBloc(ReportsOneState initialState) : super(initialState) { on<ReportsOneInitialEvent>(_onInitialize); }

_onInitialize(ReportsOneInitialEvent event, Emitter<ReportsOneState> emit, ) async  { emit(state.copyWith(allvalueController: TextEditingController())); } 
 }
