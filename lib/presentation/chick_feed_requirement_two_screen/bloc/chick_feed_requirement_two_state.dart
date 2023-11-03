// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_two_bloc.dart';

/// Represents the state of ChickFeedRequirementTwo in the application.
class ChickFeedRequirementTwoState extends Equatable {
  ChickFeedRequirementTwoState({this.chickFeedRequirementTwoModelObj});

  ChickFeedRequirementTwoModel? chickFeedRequirementTwoModelObj;

  @override
  List<Object?> get props => [
        chickFeedRequirementTwoModelObj,
      ];
  ChickFeedRequirementTwoState copyWith(
      {ChickFeedRequirementTwoModel? chickFeedRequirementTwoModelObj}) {
    return ChickFeedRequirementTwoState(
      chickFeedRequirementTwoModelObj: chickFeedRequirementTwoModelObj ??
          this.chickFeedRequirementTwoModelObj,
    );
  }
}
