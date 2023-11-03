// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_six_bloc.dart';

/// Represents the state of VaccinationScheduleSix in the application.
class VaccinationScheduleSixState extends Equatable {
  VaccinationScheduleSixState({
    this.menuFortyController,
    this.dayController,
    this.menuThirtySevenController,
    this.menuThirtyEightController,
    this.vaccinationScheduleSixModelObj,
  });

  TextEditingController? menuFortyController;

  TextEditingController? dayController;

  TextEditingController? menuThirtySevenController;

  TextEditingController? menuThirtyEightController;

  VaccinationScheduleSixModel? vaccinationScheduleSixModelObj;

  @override
  List<Object?> get props => [
        menuFortyController,
        dayController,
        menuThirtySevenController,
        menuThirtyEightController,
        vaccinationScheduleSixModelObj,
      ];
  VaccinationScheduleSixState copyWith({
    TextEditingController? menuFortyController,
    TextEditingController? dayController,
    TextEditingController? menuThirtySevenController,
    TextEditingController? menuThirtyEightController,
    VaccinationScheduleSixModel? vaccinationScheduleSixModelObj,
  }) {
    return VaccinationScheduleSixState(
      menuFortyController: menuFortyController ?? this.menuFortyController,
      dayController: dayController ?? this.dayController,
      menuThirtySevenController:
          menuThirtySevenController ?? this.menuThirtySevenController,
      menuThirtyEightController:
          menuThirtyEightController ?? this.menuThirtyEightController,
      vaccinationScheduleSixModelObj:
          vaccinationScheduleSixModelObj ?? this.vaccinationScheduleSixModelObj,
    );
  }
}
