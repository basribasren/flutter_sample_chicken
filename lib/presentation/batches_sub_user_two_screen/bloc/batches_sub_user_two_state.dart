// ignore_for_file: must_be_immutable

part of 'batches_sub_user_two_bloc.dart';

/// Represents the state of BatchesSubUserTwo in the application.
class BatchesSubUserTwoState extends Equatable {
  BatchesSubUserTwoState({
    this.nameEditTextController,
    this.mobileNumberEditTextController,
    this.editOnlyEditTextController,
    this.batchesSubUserTwoModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? mobileNumberEditTextController;

  TextEditingController? editOnlyEditTextController;

  BatchesSubUserTwoModel? batchesSubUserTwoModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        mobileNumberEditTextController,
        editOnlyEditTextController,
        batchesSubUserTwoModelObj,
      ];
  BatchesSubUserTwoState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? mobileNumberEditTextController,
    TextEditingController? editOnlyEditTextController,
    BatchesSubUserTwoModel? batchesSubUserTwoModelObj,
  }) {
    return BatchesSubUserTwoState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      mobileNumberEditTextController:
          mobileNumberEditTextController ?? this.mobileNumberEditTextController,
      editOnlyEditTextController:
          editOnlyEditTextController ?? this.editOnlyEditTextController,
      batchesSubUserTwoModelObj:
          batchesSubUserTwoModelObj ?? this.batchesSubUserTwoModelObj,
    );
  }
}
