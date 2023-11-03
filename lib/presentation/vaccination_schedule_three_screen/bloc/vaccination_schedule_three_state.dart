// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_three_bloc.dart';

/// Represents the state of VaccinationScheduleThree in the application.
class VaccinationScheduleThreeState extends Equatable {
  VaccinationScheduleThreeState({
    this.menuFortyController,
    this.dayController,
    this.menuThirtySevenController,
    this.group886Controller,
    this.group892Controller,
    this.group896Controller,
    this.fowPoxvalueController,
    this.avianInfectiousBronchitisvalueController,
    this.massachusettsTypeHStrainvalueController,
    this.infectiousBursalDiseaseGaumborController,
    this.vaccinationScheduleThreeModelObj,
  });

  TextEditingController? menuFortyController;

  TextEditingController? dayController;

  TextEditingController? menuThirtySevenController;

  TextEditingController? group886Controller;

  TextEditingController? group892Controller;

  TextEditingController? group896Controller;

  TextEditingController? fowPoxvalueController;

  TextEditingController? avianInfectiousBronchitisvalueController;

  TextEditingController? massachusettsTypeHStrainvalueController;

  TextEditingController? infectiousBursalDiseaseGaumborController;

  VaccinationScheduleThreeModel? vaccinationScheduleThreeModelObj;

  @override
  List<Object?> get props => [
        menuFortyController,
        dayController,
        menuThirtySevenController,
        group886Controller,
        group892Controller,
        group896Controller,
        fowPoxvalueController,
        avianInfectiousBronchitisvalueController,
        massachusettsTypeHStrainvalueController,
        infectiousBursalDiseaseGaumborController,
        vaccinationScheduleThreeModelObj,
      ];
  VaccinationScheduleThreeState copyWith({
    TextEditingController? menuFortyController,
    TextEditingController? dayController,
    TextEditingController? menuThirtySevenController,
    TextEditingController? group886Controller,
    TextEditingController? group892Controller,
    TextEditingController? group896Controller,
    TextEditingController? fowPoxvalueController,
    TextEditingController? avianInfectiousBronchitisvalueController,
    TextEditingController? massachusettsTypeHStrainvalueController,
    TextEditingController? infectiousBursalDiseaseGaumborController,
    VaccinationScheduleThreeModel? vaccinationScheduleThreeModelObj,
  }) {
    return VaccinationScheduleThreeState(
      menuFortyController: menuFortyController ?? this.menuFortyController,
      dayController: dayController ?? this.dayController,
      menuThirtySevenController:
          menuThirtySevenController ?? this.menuThirtySevenController,
      group886Controller: group886Controller ?? this.group886Controller,
      group892Controller: group892Controller ?? this.group892Controller,
      group896Controller: group896Controller ?? this.group896Controller,
      fowPoxvalueController:
          fowPoxvalueController ?? this.fowPoxvalueController,
      avianInfectiousBronchitisvalueController:
          avianInfectiousBronchitisvalueController ??
              this.avianInfectiousBronchitisvalueController,
      massachusettsTypeHStrainvalueController:
          massachusettsTypeHStrainvalueController ??
              this.massachusettsTypeHStrainvalueController,
      infectiousBursalDiseaseGaumborController:
          infectiousBursalDiseaseGaumborController ??
              this.infectiousBursalDiseaseGaumborController,
      vaccinationScheduleThreeModelObj: vaccinationScheduleThreeModelObj ??
          this.vaccinationScheduleThreeModelObj,
    );
  }
}
