// ignore_for_file: must_be_immutable

part of 'introduction_bloc.dart';

/// Represents the state of Introduction in the application.
class IntroductionState extends Equatable {
  IntroductionState({this.introductionModelObj});

  IntroductionModel? introductionModelObj;

  @override
  List<Object?> get props => [
        introductionModelObj,
      ];
  IntroductionState copyWith({IntroductionModel? introductionModelObj}) {
    return IntroductionState(
      introductionModelObj: introductionModelObj ?? this.introductionModelObj,
    );
  }
}
