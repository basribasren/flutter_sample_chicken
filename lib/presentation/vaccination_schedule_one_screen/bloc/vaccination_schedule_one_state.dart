// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_one_bloc.dart';

/// Represents the state of VaccinationScheduleOne in the application.
class VaccinationScheduleOneState extends Equatable {
  VaccinationScheduleOneState({this.vaccinationScheduleOneModelObj});

  VaccinationScheduleOneModel? vaccinationScheduleOneModelObj;

  @override
  List<Object?> get props => [
        vaccinationScheduleOneModelObj,
      ];
  VaccinationScheduleOneState copyWith(
      {VaccinationScheduleOneModel? vaccinationScheduleOneModelObj}) {
    return VaccinationScheduleOneState(
      vaccinationScheduleOneModelObj:
          vaccinationScheduleOneModelObj ?? this.vaccinationScheduleOneModelObj,
    );
  }
}
