// ignore_for_file: must_be_immutable

part of 'egg_tray_size_bloc.dart';

/// Represents the state of EggTraySize in the application.
class EggTraySizeState extends Equatable {
  EggTraySizeState({this.eggTraySizeModelObj});

  EggTraySizeModel? eggTraySizeModelObj;

  @override
  List<Object?> get props => [
        eggTraySizeModelObj,
      ];
  EggTraySizeState copyWith({EggTraySizeModel? eggTraySizeModelObj}) {
    return EggTraySizeState(
      eggTraySizeModelObj: eggTraySizeModelObj ?? this.eggTraySizeModelObj,
    );
  }
}
