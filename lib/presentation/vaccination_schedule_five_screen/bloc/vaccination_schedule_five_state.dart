// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_five_bloc.dart';

/// Represents the state of VaccinationScheduleFive in the application.
class VaccinationScheduleFiveState extends Equatable {
  VaccinationScheduleFiveState({
    this.menuThirtyEightController,
    this.menuThirtyNineController,
    this.descriptionController,
    this.vaccinationScheduleFiveModelObj,
  });

  TextEditingController? menuThirtyEightController;

  TextEditingController? menuThirtyNineController;

  TextEditingController? descriptionController;

  VaccinationScheduleFiveModel? vaccinationScheduleFiveModelObj;

  @override
  List<Object?> get props => [
        menuThirtyEightController,
        menuThirtyNineController,
        descriptionController,
        vaccinationScheduleFiveModelObj,
      ];
  VaccinationScheduleFiveState copyWith({
    TextEditingController? menuThirtyEightController,
    TextEditingController? menuThirtyNineController,
    TextEditingController? descriptionController,
    VaccinationScheduleFiveModel? vaccinationScheduleFiveModelObj,
  }) {
    return VaccinationScheduleFiveState(
      menuThirtyEightController:
          menuThirtyEightController ?? this.menuThirtyEightController,
      menuThirtyNineController:
          menuThirtyNineController ?? this.menuThirtyNineController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      vaccinationScheduleFiveModelObj: vaccinationScheduleFiveModelObj ??
          this.vaccinationScheduleFiveModelObj,
    );
  }
}
