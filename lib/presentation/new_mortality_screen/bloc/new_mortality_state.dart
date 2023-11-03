// ignore_for_file: must_be_immutable

part of 'new_mortality_bloc.dart';

/// Represents the state of NewMortality in the application.
class NewMortalityState extends Equatable {
  NewMortalityState({this.newMortalityModelObj});

  NewMortalityModel? newMortalityModelObj;

  @override
  List<Object?> get props => [
        newMortalityModelObj,
      ];
  NewMortalityState copyWith({NewMortalityModel? newMortalityModelObj}) {
    return NewMortalityState(
      newMortalityModelObj: newMortalityModelObj ?? this.newMortalityModelObj,
    );
  }
}
