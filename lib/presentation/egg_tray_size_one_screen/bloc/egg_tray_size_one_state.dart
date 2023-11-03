// ignore_for_file: must_be_immutable

part of 'egg_tray_size_one_bloc.dart';

/// Represents the state of EggTraySizeOne in the application.
class EggTraySizeOneState extends Equatable {
  EggTraySizeOneState({this.eggTraySizeOneModelObj});

  EggTraySizeOneModel? eggTraySizeOneModelObj;

  @override
  List<Object?> get props => [
        eggTraySizeOneModelObj,
      ];
  EggTraySizeOneState copyWith({EggTraySizeOneModel? eggTraySizeOneModelObj}) {
    return EggTraySizeOneState(
      eggTraySizeOneModelObj:
          eggTraySizeOneModelObj ?? this.eggTraySizeOneModelObj,
    );
  }
}
