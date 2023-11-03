// ignore_for_file: must_be_immutable

part of 'introduction_screen_one_bloc.dart';

/// Represents the state of IntroductionScreenOne in the application.
class IntroductionScreenOneState extends Equatable {
  IntroductionScreenOneState({this.introductionScreenOneModelObj});

  IntroductionScreenOneModel? introductionScreenOneModelObj;

  @override
  List<Object?> get props => [
        introductionScreenOneModelObj,
      ];
  IntroductionScreenOneState copyWith(
      {IntroductionScreenOneModel? introductionScreenOneModelObj}) {
    return IntroductionScreenOneState(
      introductionScreenOneModelObj:
          introductionScreenOneModelObj ?? this.introductionScreenOneModelObj,
    );
  }
}
