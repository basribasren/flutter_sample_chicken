// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_four_bloc.dart';

/// Represents the state of ChickFeedRequirementFour in the application.
class ChickFeedRequirementFourState extends Equatable {
  ChickFeedRequirementFourState({
    this.dayController,
    this.chickFeedRequirementFourModelObj,
  });

  TextEditingController? dayController;

  ChickFeedRequirementFourModel? chickFeedRequirementFourModelObj;

  @override
  List<Object?> get props => [
        dayController,
        chickFeedRequirementFourModelObj,
      ];
  ChickFeedRequirementFourState copyWith({
    TextEditingController? dayController,
    ChickFeedRequirementFourModel? chickFeedRequirementFourModelObj,
  }) {
    return ChickFeedRequirementFourState(
      dayController: dayController ?? this.dayController,
      chickFeedRequirementFourModelObj: chickFeedRequirementFourModelObj ??
          this.chickFeedRequirementFourModelObj,
    );
  }
}
