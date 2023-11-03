import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:basri_s_application4/presentation/batches_sub_user_screen/models/batches_sub_user_model.dart';
part 'batches_sub_user_event.dart';
part 'batches_sub_user_state.dart';

/// A bloc that manages the state of a BatchesSubUser according to the event that is dispatched to it.
class BatchesSubUserBloc
    extends Bloc<BatchesSubUserEvent, BatchesSubUserState> {
  BatchesSubUserBloc(BatchesSubUserState initialState) : super(initialState) {
    on<BatchesSubUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BatchesSubUserInitialEvent event,
    Emitter<BatchesSubUserState> emit,
  ) async {
    emit(state.copyWith(
        batchesSubUserModelObj: state.batchesSubUserModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(userName: "Subhash Kale", canEdit: "Can Edit"),
      Userprofile2ItemModel(userName: "Rajesh Jadhav", canEdit: "Can View"),
      Userprofile2ItemModel(userName: "Anup More", canEdit: "Can Edit")
    ];
  }
}
