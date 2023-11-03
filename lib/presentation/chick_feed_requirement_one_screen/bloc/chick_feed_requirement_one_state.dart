// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_one_bloc.dart';

/// Represents the state of ChickFeedRequirementOne in the application.
class ChickFeedRequirementOneState extends Equatable {
  ChickFeedRequirementOneState({this.chickFeedRequirementOneModelObj});

  ChickFeedRequirementOneModel? chickFeedRequirementOneModelObj;

  @override
  List<Object?> get props => [
        chickFeedRequirementOneModelObj,
      ];
  ChickFeedRequirementOneState copyWith(
      {ChickFeedRequirementOneModel? chickFeedRequirementOneModelObj}) {
    return ChickFeedRequirementOneState(
      chickFeedRequirementOneModelObj: chickFeedRequirementOneModelObj ??
          this.chickFeedRequirementOneModelObj,
    );
  }
}
