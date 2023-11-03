// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_bloc.dart';

/// Represents the state of ChickFeedRequirement in the application.
class ChickFeedRequirementState extends Equatable {
  ChickFeedRequirementState({
    this.menuThirtyEightController,
    this.chickFeedRequirementModelObj,
  });

  TextEditingController? menuThirtyEightController;

  ChickFeedRequirementModel? chickFeedRequirementModelObj;

  @override
  List<Object?> get props => [
        menuThirtyEightController,
        chickFeedRequirementModelObj,
      ];
  ChickFeedRequirementState copyWith({
    TextEditingController? menuThirtyEightController,
    ChickFeedRequirementModel? chickFeedRequirementModelObj,
  }) {
    return ChickFeedRequirementState(
      menuThirtyEightController:
          menuThirtyEightController ?? this.menuThirtyEightController,
      chickFeedRequirementModelObj:
          chickFeedRequirementModelObj ?? this.chickFeedRequirementModelObj,
    );
  }
}
