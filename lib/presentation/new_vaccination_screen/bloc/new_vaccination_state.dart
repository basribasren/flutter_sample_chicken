// ignore_for_file: must_be_immutable

part of 'new_vaccination_bloc.dart';

/// Represents the state of NewVaccination in the application.
class NewVaccinationState extends Equatable {
  NewVaccinationState({this.newVaccinationModelObj});

  NewVaccinationModel? newVaccinationModelObj;

  @override
  List<Object?> get props => [
        newVaccinationModelObj,
      ];
  NewVaccinationState copyWith({NewVaccinationModel? newVaccinationModelObj}) {
    return NewVaccinationState(
      newVaccinationModelObj:
          newVaccinationModelObj ?? this.newVaccinationModelObj,
    );
  }
}
