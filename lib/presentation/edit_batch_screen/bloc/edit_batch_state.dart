// ignore_for_file: must_be_immutable

part of 'edit_batch_bloc.dart';

/// Represents the state of EditBatch in the application.
class EditBatchState extends Equatable {
  EditBatchState({
    this.editBatchDateController,
    this.editBatchNameController,
    this.editBatchBreedController,
    this.editBatchNumberOfBirdsController,
    this.editBatchCostPerBirdController,
    this.editBatchSupplierController,
    this.editBatchModelObj,
  });

  TextEditingController? editBatchDateController;

  TextEditingController? editBatchNameController;

  TextEditingController? editBatchBreedController;

  TextEditingController? editBatchNumberOfBirdsController;

  TextEditingController? editBatchCostPerBirdController;

  TextEditingController? editBatchSupplierController;

  EditBatchModel? editBatchModelObj;

  @override
  List<Object?> get props => [
        editBatchDateController,
        editBatchNameController,
        editBatchBreedController,
        editBatchNumberOfBirdsController,
        editBatchCostPerBirdController,
        editBatchSupplierController,
        editBatchModelObj,
      ];
  EditBatchState copyWith({
    TextEditingController? editBatchDateController,
    TextEditingController? editBatchNameController,
    TextEditingController? editBatchBreedController,
    TextEditingController? editBatchNumberOfBirdsController,
    TextEditingController? editBatchCostPerBirdController,
    TextEditingController? editBatchSupplierController,
    EditBatchModel? editBatchModelObj,
  }) {
    return EditBatchState(
      editBatchDateController:
          editBatchDateController ?? this.editBatchDateController,
      editBatchNameController:
          editBatchNameController ?? this.editBatchNameController,
      editBatchBreedController:
          editBatchBreedController ?? this.editBatchBreedController,
      editBatchNumberOfBirdsController: editBatchNumberOfBirdsController ??
          this.editBatchNumberOfBirdsController,
      editBatchCostPerBirdController:
          editBatchCostPerBirdController ?? this.editBatchCostPerBirdController,
      editBatchSupplierController:
          editBatchSupplierController ?? this.editBatchSupplierController,
      editBatchModelObj: editBatchModelObj ?? this.editBatchModelObj,
    );
  }
}
