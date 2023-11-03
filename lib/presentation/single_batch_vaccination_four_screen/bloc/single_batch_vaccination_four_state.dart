// ignore_for_file: must_be_immutable

part of 'single_batch_vaccination_four_bloc.dart';

/// Represents the state of SingleBatchVaccinationFour in the application.
class SingleBatchVaccinationFourState extends Equatable {
  SingleBatchVaccinationFourState({
    this.addVaccinationDateController,
    this.addVaccinationMenuThirtySevenController,
    this.addVaccinationGroup1028Controller,
    this.addVaccinationGroup1034Controller,
    this.addVaccinationGroup1038Controller,
    this.addVaccinationFowPoxController,
    this.addVaccinationGroup1036Controller,
    this.addVaccinationGroup1040Controller,
    this.addVaccinationGroup1032Controller,
    this.singleBatchVaccinationFourModelObj,
  });

  TextEditingController? addVaccinationDateController;

  TextEditingController? addVaccinationMenuThirtySevenController;

  TextEditingController? addVaccinationGroup1028Controller;

  TextEditingController? addVaccinationGroup1034Controller;

  TextEditingController? addVaccinationGroup1038Controller;

  TextEditingController? addVaccinationFowPoxController;

  TextEditingController? addVaccinationGroup1036Controller;

  TextEditingController? addVaccinationGroup1040Controller;

  TextEditingController? addVaccinationGroup1032Controller;

  SingleBatchVaccinationFourModel? singleBatchVaccinationFourModelObj;

  @override
  List<Object?> get props => [
        addVaccinationDateController,
        addVaccinationMenuThirtySevenController,
        addVaccinationGroup1028Controller,
        addVaccinationGroup1034Controller,
        addVaccinationGroup1038Controller,
        addVaccinationFowPoxController,
        addVaccinationGroup1036Controller,
        addVaccinationGroup1040Controller,
        addVaccinationGroup1032Controller,
        singleBatchVaccinationFourModelObj,
      ];
  SingleBatchVaccinationFourState copyWith({
    TextEditingController? addVaccinationDateController,
    TextEditingController? addVaccinationMenuThirtySevenController,
    TextEditingController? addVaccinationGroup1028Controller,
    TextEditingController? addVaccinationGroup1034Controller,
    TextEditingController? addVaccinationGroup1038Controller,
    TextEditingController? addVaccinationFowPoxController,
    TextEditingController? addVaccinationGroup1036Controller,
    TextEditingController? addVaccinationGroup1040Controller,
    TextEditingController? addVaccinationGroup1032Controller,
    SingleBatchVaccinationFourModel? singleBatchVaccinationFourModelObj,
  }) {
    return SingleBatchVaccinationFourState(
      addVaccinationDateController:
          addVaccinationDateController ?? this.addVaccinationDateController,
      addVaccinationMenuThirtySevenController:
          addVaccinationMenuThirtySevenController ??
              this.addVaccinationMenuThirtySevenController,
      addVaccinationGroup1028Controller: addVaccinationGroup1028Controller ??
          this.addVaccinationGroup1028Controller,
      addVaccinationGroup1034Controller: addVaccinationGroup1034Controller ??
          this.addVaccinationGroup1034Controller,
      addVaccinationGroup1038Controller: addVaccinationGroup1038Controller ??
          this.addVaccinationGroup1038Controller,
      addVaccinationFowPoxController:
          addVaccinationFowPoxController ?? this.addVaccinationFowPoxController,
      addVaccinationGroup1036Controller: addVaccinationGroup1036Controller ??
          this.addVaccinationGroup1036Controller,
      addVaccinationGroup1040Controller: addVaccinationGroup1040Controller ??
          this.addVaccinationGroup1040Controller,
      addVaccinationGroup1032Controller: addVaccinationGroup1032Controller ??
          this.addVaccinationGroup1032Controller,
      singleBatchVaccinationFourModelObj: singleBatchVaccinationFourModelObj ??
          this.singleBatchVaccinationFourModelObj,
    );
  }
}
