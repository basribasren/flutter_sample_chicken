import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilerow_item_model.dart';
import 'package:basri_s_application4/presentation/batches_page/models/batches_model.dart';
part 'batches_event.dart';
part 'batches_state.dart';

/// A bloc that manages the state of a Batches according to the event that is dispatched to it.
class BatchesBloc extends Bloc<BatchesEvent, BatchesState> {
  BatchesBloc(BatchesState initialState) : super(initialState) {
    on<BatchesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatchesInitialEvent event,
    Emitter<BatchesState> emit,
  ) async {
    emit(state.copyWith(
        batchesModelObj: state.batchesModelObj?.copyWith(
      userprofilerowItemList: fillUserprofilerowItemList(),
    )));
  }

  List<UserprofilerowItemModel> fillUserprofilerowItemList() {
    return [
      UserprofilerowItemModel(
          userImage: ImageConstant.imgGroup324,
          batchName: "Batch Name",
          weeksDays: "6 Weeks : 5 Days"),
      UserprofilerowItemModel(
          userImage: ImageConstant.imgGroup327,
          batchName: "Batch Name",
          weeksDays: "6 Weeks : 5 Days"),
      UserprofilerowItemModel(
          userImage: ImageConstant.imgGroup324,
          batchName: "Batch Name",
          weeksDays: "6 Weeks : 5 Days"),
      UserprofilerowItemModel(
          userImage: ImageConstant.imgGroup324,
          batchName: "Batch Name",
          weeksDays: "6 Weeks : 5 Days"),
      UserprofilerowItemModel(
          userImage: ImageConstant.imgGroup327,
          batchName: "Batch Name",
          weeksDays: "6 Weeks : 5 Days")
    ];
  }
}
