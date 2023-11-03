import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/vaccinationlist1_item_model.dart';
import 'package:basri_s_application4/presentation/single_batch_view_vaccination_one_page/models/single_batch_view_vaccination_one_model.dart';
part 'single_batch_view_vaccination_one_event.dart';
part 'single_batch_view_vaccination_one_state.dart';

/// A bloc that manages the state of a SingleBatchViewVaccinationOne according to the event that is dispatched to it.
class SingleBatchViewVaccinationOneBloc extends Bloc<
    SingleBatchViewVaccinationOneEvent, SingleBatchViewVaccinationOneState> {
  SingleBatchViewVaccinationOneBloc(
      SingleBatchViewVaccinationOneState initialState)
      : super(initialState) {
    on<SingleBatchViewVaccinationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchViewVaccinationOneInitialEvent event,
    Emitter<SingleBatchViewVaccinationOneState> emit,
  ) async {
    emit(state.copyWith(
        singleBatchViewVaccinationOneModelObj:
            state.singleBatchViewVaccinationOneModelObj?.copyWith(
      vaccinationlist1ItemList: fillVaccinationlist1ItemList(),
    )));
  }

  List<Vaccinationlist1ItemModel> fillVaccinationlist1ItemList() {
    return [
      Vaccinationlist1ItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      Vaccinationlist1ItemModel(date: "Day 1", vaccination: "Method"),
      Vaccinationlist1ItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      Vaccinationlist1ItemModel(date: "Day 2", vaccination: "Method"),
      Vaccinationlist1ItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      Vaccinationlist1ItemModel(date: "Day 3", vaccination: "Method"),
      Vaccinationlist1ItemModel(date: "17/11/2022", vaccination: "Vaccination"),
      Vaccinationlist1ItemModel(date: "Day 4", vaccination: "Method")
    ];
  }
}
