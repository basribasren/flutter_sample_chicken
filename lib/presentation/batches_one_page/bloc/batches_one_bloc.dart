import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilerow1_item_model.dart';
import 'package:basri_s_application4/presentation/batches_one_page/models/batches_one_model.dart';
part 'batches_one_event.dart';
part 'batches_one_state.dart';

/// A bloc that manages the state of a BatchesOne according to the event that is dispatched to it.
class BatchesOneBloc extends Bloc<BatchesOneEvent, BatchesOneState> {
  BatchesOneBloc(BatchesOneState initialState) : super(initialState) {
    on<BatchesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatchesOneInitialEvent event,
    Emitter<BatchesOneState> emit,
  ) async {
    emit(state.copyWith(
        batchesOneModelObj: state.batchesOneModelObj?.copyWith(
      userprofilerow1ItemList: fillUserprofilerow1ItemList(),
    )));
  }

  List<Userprofilerow1ItemModel> fillUserprofilerow1ItemList() {
    return [
      Userprofilerow1ItemModel(
          userImage: ImageConstant.imgGroup324,
          batchName: "Batch Name",
          weeksAndDays: "6 Weeks : 5 Days"),
      Userprofilerow1ItemModel(
          userImage: ImageConstant.imgGroup327,
          batchName: "Batch Name",
          weeksAndDays: "6 Weeks : 5 Days"),
      Userprofilerow1ItemModel(
          userImage: ImageConstant.imgGroup324,
          batchName: "Batch Name",
          weeksAndDays: "6 Weeks : 5 Days")
    ];
  }
}
