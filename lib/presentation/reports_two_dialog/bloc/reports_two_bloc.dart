import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/reports_two_dialog/models/reports_two_model.dart';
part 'reports_two_event.dart';
part 'reports_two_state.dart';

/// A bloc that manages the state of a ReportsTwo according to the event that is dispatched to it.
class ReportsTwoBloc extends Bloc<ReportsTwoEvent, ReportsTwoState> {
  ReportsTwoBloc(ReportsTwoState initialState) : super(initialState) {
    on<ReportsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportsTwoInitialEvent event,
    Emitter<ReportsTwoState> emit,
  ) async {}
}
