// ignore_for_file: must_be_immutable

part of 'homepage_todays_rate_one_bloc.dart';

/// Represents the state of HomepageTodaysRateOne in the application.
class HomepageTodaysRateOneState extends Equatable {
  HomepageTodaysRateOneState({
    this.menuThirtySevenController,
    this.homepageTodaysRateOneModelObj,
  });

  TextEditingController? menuThirtySevenController;

  HomepageTodaysRateOneModel? homepageTodaysRateOneModelObj;

  @override
  List<Object?> get props => [
        menuThirtySevenController,
        homepageTodaysRateOneModelObj,
      ];
  HomepageTodaysRateOneState copyWith({
    TextEditingController? menuThirtySevenController,
    HomepageTodaysRateOneModel? homepageTodaysRateOneModelObj,
  }) {
    return HomepageTodaysRateOneState(
      menuThirtySevenController:
          menuThirtySevenController ?? this.menuThirtySevenController,
      homepageTodaysRateOneModelObj:
          homepageTodaysRateOneModelObj ?? this.homepageTodaysRateOneModelObj,
    );
  }
}
