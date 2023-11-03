// ignore_for_file: must_be_immutable

part of 'farm_settings_bloc.dart';

/// Represents the state of FarmSettings in the application.
class FarmSettingsState extends Equatable {
  FarmSettingsState({this.farmSettingsModelObj});

  FarmSettingsModel? farmSettingsModelObj;

  @override
  List<Object?> get props => [
        farmSettingsModelObj,
      ];
  FarmSettingsState copyWith({FarmSettingsModel? farmSettingsModelObj}) {
    return FarmSettingsState(
      farmSettingsModelObj: farmSettingsModelObj ?? this.farmSettingsModelObj,
    );
  }
}
