// ignore_for_file: must_be_immutable

part of 'vaccination_schedule_bloc.dart';

/// Represents the state of VaccinationSchedule in the application.
class VaccinationScheduleState extends Equatable {
  VaccinationScheduleState({
    this.breedvalueController,
    this.vaccinationScheduleModelObj,
  });

  TextEditingController? breedvalueController;

  VaccinationScheduleModel? vaccinationScheduleModelObj;

  @override
  List<Object?> get props => [
        breedvalueController,
        vaccinationScheduleModelObj,
      ];
  VaccinationScheduleState copyWith({
    TextEditingController? breedvalueController,
    VaccinationScheduleModel? vaccinationScheduleModelObj,
  }) {
    return VaccinationScheduleState(
      breedvalueController: breedvalueController ?? this.breedvalueController,
      vaccinationScheduleModelObj:
          vaccinationScheduleModelObj ?? this.vaccinationScheduleModelObj,
    );
  }
}
