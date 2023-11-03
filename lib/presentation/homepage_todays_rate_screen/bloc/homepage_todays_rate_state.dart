// ignore_for_file: must_be_immutable

part of 'homepage_todays_rate_bloc.dart';

/// Represents the state of HomepageTodaysRate in the application.
class HomepageTodaysRateState extends Equatable {
  HomepageTodaysRateState({
    this.menuThirtySevenController,
    this.homepageTodaysRateModelObj,
  });

  TextEditingController? menuThirtySevenController;

  HomepageTodaysRateModel? homepageTodaysRateModelObj;

  @override
  List<Object?> get props => [
        menuThirtySevenController,
        homepageTodaysRateModelObj,
      ];
  HomepageTodaysRateState copyWith({
    TextEditingController? menuThirtySevenController,
    HomepageTodaysRateModel? homepageTodaysRateModelObj,
  }) {
    return HomepageTodaysRateState(
      menuThirtySevenController:
          menuThirtySevenController ?? this.menuThirtySevenController,
      homepageTodaysRateModelObj:
          homepageTodaysRateModelObj ?? this.homepageTodaysRateModelObj,
    );
  }
}
