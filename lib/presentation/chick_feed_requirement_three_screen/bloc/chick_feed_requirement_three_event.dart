// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChickFeedRequirementThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChickFeedRequirementThreeEvent extends Equatable {}

/// Event that is dispatched when the ChickFeedRequirementThree widget is first created.
class ChickFeedRequirementThreeInitialEvent
    extends ChickFeedRequirementThreeEvent {
  @override
  List<Object?> get props => [];
}
