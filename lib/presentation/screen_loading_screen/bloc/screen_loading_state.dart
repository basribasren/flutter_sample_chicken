// ignore_for_file: must_be_immutable

part of 'screen_loading_bloc.dart';

/// Represents the state of ScreenLoading in the application.
class ScreenLoadingState extends Equatable {
  ScreenLoadingState({this.screenLoadingModelObj});

  ScreenLoadingModel? screenLoadingModelObj;

  @override
  List<Object?> get props => [
        screenLoadingModelObj,
      ];
  ScreenLoadingState copyWith({ScreenLoadingModel? screenLoadingModelObj}) {
    return ScreenLoadingState(
      screenLoadingModelObj:
          screenLoadingModelObj ?? this.screenLoadingModelObj,
    );
  }
}
