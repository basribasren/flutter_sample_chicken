// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_two_bloc.dart';

/// Represents the state of VaccinationScheduleTwo in the application.
class VaccinationScheduleTwoState extends Equatable {
  VaccinationScheduleTwoState({
    this.menuFortyController,
    this.dayController,
    this.menuThirtyNineController,
    this.descriptionController,
    this.vaccinationScheduleTwoModelObj,
  });

  TextEditingController? menuFortyController;

  TextEditingController? dayController;

  TextEditingController? menuThirtyNineController;

  TextEditingController? descriptionController;

  VaccinationScheduleTwoModel? vaccinationScheduleTwoModelObj;

  @override
  List<Object?> get props => [
        menuFortyController,
        dayController,
        menuThirtyNineController,
        descriptionController,
        vaccinationScheduleTwoModelObj,
      ];
  VaccinationScheduleTwoState copyWith({
    TextEditingController? menuFortyController,
    TextEditingController? dayController,
    TextEditingController? menuThirtyNineController,
    TextEditingController? descriptionController,
    VaccinationScheduleTwoModel? vaccinationScheduleTwoModelObj,
  }) {
    return VaccinationScheduleTwoState(
      menuFortyController: menuFortyController ?? this.menuFortyController,
      dayController: dayController ?? this.dayController,
      menuThirtyNineController:
          menuThirtyNineController ?? this.menuThirtyNineController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      vaccinationScheduleTwoModelObj:
          vaccinationScheduleTwoModelObj ?? this.vaccinationScheduleTwoModelObj,
    );
  }
}
