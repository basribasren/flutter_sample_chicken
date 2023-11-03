// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_three_bloc.dart';

/// Represents the state of ChickFeedRequirementThree in the application.
class ChickFeedRequirementThreeState extends Equatable {
  ChickFeedRequirementThreeState({
    this.chickFeedRequirementDayController,
    this.chickFeedRequirementBreedController,
    this.chickFeedRequirementFeedTypeController,
    this.chickFeedRequirementGramsController,
    this.chickFeedRequirementThreeModelObj,
  });

  TextEditingController? chickFeedRequirementDayController;

  TextEditingController? chickFeedRequirementBreedController;

  TextEditingController? chickFeedRequirementFeedTypeController;

  TextEditingController? chickFeedRequirementGramsController;

  ChickFeedRequirementThreeModel? chickFeedRequirementThreeModelObj;

  @override
  List<Object?> get props => [
        chickFeedRequirementDayController,
        chickFeedRequirementBreedController,
        chickFeedRequirementFeedTypeController,
        chickFeedRequirementGramsController,
        chickFeedRequirementThreeModelObj,
      ];
  ChickFeedRequirementThreeState copyWith({
    TextEditingController? chickFeedRequirementDayController,
    TextEditingController? chickFeedRequirementBreedController,
    TextEditingController? chickFeedRequirementFeedTypeController,
    TextEditingController? chickFeedRequirementGramsController,
    ChickFeedRequirementThreeModel? chickFeedRequirementThreeModelObj,
  }) {
    return ChickFeedRequirementThreeState(
      chickFeedRequirementDayController: chickFeedRequirementDayController ??
          this.chickFeedRequirementDayController,
      chickFeedRequirementBreedController:
          chickFeedRequirementBreedController ??
              this.chickFeedRequirementBreedController,
      chickFeedRequirementFeedTypeController:
          chickFeedRequirementFeedTypeController ??
              this.chickFeedRequirementFeedTypeController,
      chickFeedRequirementGramsController:
          chickFeedRequirementGramsController ??
              this.chickFeedRequirementGramsController,
      chickFeedRequirementThreeModelObj: chickFeedRequirementThreeModelObj ??
          this.chickFeedRequirementThreeModelObj,
    );
  }
}
