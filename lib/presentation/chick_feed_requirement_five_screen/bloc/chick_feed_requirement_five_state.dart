// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_five_bloc.dart';

/// Represents the state of ChickFeedRequirementFive in the application.
class ChickFeedRequirementFiveState extends Equatable {
  ChickFeedRequirementFiveState({
    this.dayController,
    this.breedController,
    this.chickFeedRequirementFiveModelObj,
  });

  TextEditingController? dayController;

  TextEditingController? breedController;

  ChickFeedRequirementFiveModel? chickFeedRequirementFiveModelObj;

  @override
  List<Object?> get props => [
        dayController,
        breedController,
        chickFeedRequirementFiveModelObj,
      ];
  ChickFeedRequirementFiveState copyWith({
    TextEditingController? dayController,
    TextEditingController? breedController,
    ChickFeedRequirementFiveModel? chickFeedRequirementFiveModelObj,
  }) {
    return ChickFeedRequirementFiveState(
      dayController: dayController ?? this.dayController,
      breedController: breedController ?? this.breedController,
      chickFeedRequirementFiveModelObj: chickFeedRequirementFiveModelObj ??
          this.chickFeedRequirementFiveModelObj,
    );
  }
}
