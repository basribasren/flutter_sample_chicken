import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/vaccinationlist_item_model.dart';
import 'package:basri_s_application4/presentation/single_batch_view_vaccination_page/models/single_batch_view_vaccination_model.dart';
part 'single_batch_view_vaccination_event.dart';
part 'single_batch_view_vaccination_state.dart';

/// A bloc that manages the state of a SingleBatchViewVaccination according to the event that is dispatched to it.
class SingleBatchViewVaccinationBloc extends Bloc<
    SingleBatchViewVaccinationEvent, SingleBatchViewVaccinationState> {
  SingleBatchViewVaccinationBloc(SingleBatchViewVaccinationState initialState)
      : super(initialState) {
    on<SingleBatchViewVaccinationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchViewVaccinationInitialEvent event,
    Emitter<SingleBatchViewVaccinationState> emit,
  ) async {
    emit(state.copyWith(
        singleBatchViewVaccinationModelObj:
            state.singleBatchViewVaccinationModelObj?.copyWith(
      vaccinationlistItemList: fillVaccinationlistItemList(),
    )));
  }

  List<VaccinationlistItemModel> fillVaccinationlistItemList() {
    return [
      VaccinationlistItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      VaccinationlistItemModel(date: "Day 1", vaccination: "Method"),
      VaccinationlistItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      VaccinationlistItemModel(date: "Day 2", vaccination: "Method"),
      VaccinationlistItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      VaccinationlistItemModel(date: "Day 3", vaccination: "Method"),
      VaccinationlistItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      VaccinationlistItemModel(date: "Day 4", vaccination: "Method")
    ];
  }
}
