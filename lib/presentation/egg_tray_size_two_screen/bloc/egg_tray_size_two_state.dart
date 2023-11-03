// ignore_for_file: must_be_immutable

part of 'egg_tray_size_two_bloc.dart';

/// Represents the state of EggTraySizeTwo in the application.
class EggTraySizeTwoState extends Equatable {
  EggTraySizeTwoState({
    this.standardEggTraySizeLabelController,
    this.eggTraySizeTwoModelObj,
  });

  TextEditingController? standardEggTraySizeLabelController;

  EggTraySizeTwoModel? eggTraySizeTwoModelObj;

  @override
  List<Object?> get props => [
        standardEggTraySizeLabelController,
        eggTraySizeTwoModelObj,
      ];
  EggTraySizeTwoState copyWith({
    TextEditingController? standardEggTraySizeLabelController,
    EggTraySizeTwoModel? eggTraySizeTwoModelObj,
  }) {
    return EggTraySizeTwoState(
      standardEggTraySizeLabelController: standardEggTraySizeLabelController ??
          this.standardEggTraySizeLabelController,
      eggTraySizeTwoModelObj:
          eggTraySizeTwoModelObj ?? this.eggTraySizeTwoModelObj,
    );
  }
}
