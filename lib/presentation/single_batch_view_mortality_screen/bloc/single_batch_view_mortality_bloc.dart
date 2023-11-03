import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/daytext_item_model.dart';
import 'package:basri_s_application4/presentation/single_batch_view_mortality_screen/models/single_batch_view_mortality_model.dart';
part 'single_batch_view_mortality_event.dart';
part 'single_batch_view_mortality_state.dart';

/// A bloc that manages the state of a SingleBatchViewMortality according to the event that is dispatched to it.
class SingleBatchViewMortalityBloc
    extends Bloc<SingleBatchViewMortalityEvent, SingleBatchViewMortalityState> {
  SingleBatchViewMortalityBloc(SingleBatchViewMortalityState initialState)
      : super(initialState) {
    on<SingleBatchViewMortalityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchViewMortalityInitialEvent event,
    Emitter<SingleBatchViewMortalityState> emit,
  ) async {
    emit(state.copyWith(
        singleBatchViewMortalityModelObj:
            state.singleBatchViewMortalityModelObj?.copyWith(
      daytextItemList: fillDaytextItemList(),
    )));
  }

  List<DaytextItemModel> fillDaytextItemList() {
    return [
      DaytextItemModel(dayText: "Day 4", birdsText: "Birds: 2 "),
      DaytextItemModel(dayText: "Day 7", birdsText: "Birds: 1 ")
    ];
  }
}
