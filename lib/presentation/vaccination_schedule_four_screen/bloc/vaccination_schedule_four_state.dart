// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_four_bloc.dart';

/// Represents the state of VaccinationScheduleFour in the application.
class VaccinationScheduleFourState extends Equatable {
  VaccinationScheduleFourState({
    this.menuFortyController,
    this.dayController,
    this.menuThirtySevenController,
    this.menuThirtyEightController,
    this.menuThirtyNineController,
    this.descriptionController,
    this.vaccinationScheduleFourModelObj,
  });

  TextEditingController? menuFortyController;

  TextEditingController? dayController;

  TextEditingController? menuThirtySevenController;

  TextEditingController? menuThirtyEightController;

  TextEditingController? menuThirtyNineController;

  TextEditingController? descriptionController;

  VaccinationScheduleFourModel? vaccinationScheduleFourModelObj;

  @override
  List<Object?> get props => [
        menuFortyController,
        dayController,
        menuThirtySevenController,
        menuThirtyEightController,
        menuThirtyNineController,
        descriptionController,
        vaccinationScheduleFourModelObj,
      ];
  VaccinationScheduleFourState copyWith({
    TextEditingController? menuFortyController,
    TextEditingController? dayController,
    TextEditingController? menuThirtySevenController,
    TextEditingController? menuThirtyEightController,
    TextEditingController? menuThirtyNineController,
    TextEditingController? descriptionController,
    VaccinationScheduleFourModel? vaccinationScheduleFourModelObj,
  }) {
    return VaccinationScheduleFourState(
      menuFortyController: menuFortyController ?? this.menuFortyController,
      dayController: dayController ?? this.dayController,
      menuThirtySevenController:
          menuThirtySevenController ?? this.menuThirtySevenController,
      menuThirtyEightController:
          menuThirtyEightController ?? this.menuThirtyEightController,
      menuThirtyNineController:
          menuThirtyNineController ?? this.menuThirtyNineController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      vaccinationScheduleFourModelObj: vaccinationScheduleFourModelObj ??
          this.vaccinationScheduleFourModelObj,
    );
  }
}
