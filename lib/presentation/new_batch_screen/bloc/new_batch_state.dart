// ignore_for_file: must_be_immutable

part of 'new_batch_bloc.dart';

/// Represents the state of NewBatch in the application.
class NewBatchState extends Equatable {
  NewBatchState({
    this.dateEditTextController,
    this.nameEditTextController,
    this.menuThirtySixEditTextController,
    this.numBirdsEditTextController,
    this.costPerBirdEditTextController,
    this.supplierEditTextController,
    this.newBatchModelObj,
  });

  TextEditingController? dateEditTextController;

  TextEditingController? nameEditTextController;

  TextEditingController? menuThirtySixEditTextController;

  TextEditingController? numBirdsEditTextController;

  TextEditingController? costPerBirdEditTextController;

  TextEditingController? supplierEditTextController;

  NewBatchModel? newBatchModelObj;

  @override
  List<Object?> get props => [
        dateEditTextController,
        nameEditTextController,
        menuThirtySixEditTextController,
        numBirdsEditTextController,
        costPerBirdEditTextController,
        supplierEditTextController,
        newBatchModelObj,
      ];
  NewBatchState copyWith({
    TextEditingController? dateEditTextController,
    TextEditingController? nameEditTextController,
    TextEditingController? menuThirtySixEditTextController,
    TextEditingController? numBirdsEditTextController,
    TextEditingController? costPerBirdEditTextController,
    TextEditingController? supplierEditTextController,
    NewBatchModel? newBatchModelObj,
  }) {
    return NewBatchState(
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      menuThirtySixEditTextController: menuThirtySixEditTextController ??
          this.menuThirtySixEditTextController,
      numBirdsEditTextController:
          numBirdsEditTextController ?? this.numBirdsEditTextController,
      costPerBirdEditTextController:
          costPerBirdEditTextController ?? this.costPerBirdEditTextController,
      supplierEditTextController:
          supplierEditTextController ?? this.supplierEditTextController,
      newBatchModelObj: newBatchModelObj ?? this.newBatchModelObj,
    );
  }
}
