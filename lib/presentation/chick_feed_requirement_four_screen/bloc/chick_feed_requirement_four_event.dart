// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChickFeedRequirementFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChickFeedRequirementFourEvent extends Equatable {}

/// Event that is dispatched when the ChickFeedRequirementFour widget is first created.
class ChickFeedRequirementFourInitialEvent
    extends ChickFeedRequirementFourEvent {
  @override
  List<Object?> get props => [];
}
