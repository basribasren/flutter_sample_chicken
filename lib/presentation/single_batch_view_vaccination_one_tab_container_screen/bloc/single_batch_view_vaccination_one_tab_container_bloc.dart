import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_view_vaccination_one_tab_container_screen/models/single_batch_view_vaccination_one_tab_container_model.dart';
part 'single_batch_view_vaccination_one_tab_container_event.dart';
part 'single_batch_view_vaccination_one_tab_container_state.dart';

/// A bloc that manages the state of a SingleBatchViewVaccinationOneTabContainer according to the event that is dispatched to it.
class SingleBatchViewVaccinationOneTabContainerBloc extends Bloc<
    SingleBatchViewVaccinationOneTabContainerEvent,
    SingleBatchViewVaccinationOneTabContainerState> {
  SingleBatchViewVaccinationOneTabContainerBloc(
      SingleBatchViewVaccinationOneTabContainerState initialState)
      : super(initialState) {
    on<SingleBatchViewVaccinationOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchViewVaccinationOneTabContainerInitialEvent event,
    Emitter<SingleBatchViewVaccinationOneTabContainerState> emit,
  ) async {}
}
