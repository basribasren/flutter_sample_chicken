// ignore_for_file: must_be_immutable

part of 'batches_sub_user_one_bloc.dart';

/// Represents the state of BatchesSubUserOne in the application.
class BatchesSubUserOneState extends Equatable {
  BatchesSubUserOneState({
    this.nameController,
    this.mobileNumberController,
    this.viewOnlyController,
    this.batchesSubUserOneModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? mobileNumberController;

  TextEditingController? viewOnlyController;

  BatchesSubUserOneModel? batchesSubUserOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        mobileNumberController,
        viewOnlyController,
        batchesSubUserOneModelObj,
      ];
  BatchesSubUserOneState copyWith({
    TextEditingController? nameController,
    TextEditingController? mobileNumberController,
    TextEditingController? viewOnlyController,
    BatchesSubUserOneModel? batchesSubUserOneModelObj,
  }) {
    return BatchesSubUserOneState(
      nameController: nameController ?? this.nameController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      viewOnlyController: viewOnlyController ?? this.viewOnlyController,
      batchesSubUserOneModelObj:
          batchesSubUserOneModelObj ?? this.batchesSubUserOneModelObj,
    );
  }
}
