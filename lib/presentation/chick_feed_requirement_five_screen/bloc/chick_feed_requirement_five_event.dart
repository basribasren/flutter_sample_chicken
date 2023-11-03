// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChickFeedRequirementFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChickFeedRequirementFiveEvent extends Equatable {}

/// Event that is dispatched when the ChickFeedRequirementFive widget is first created.
class ChickFeedRequirementFiveInitialEvent
    extends ChickFeedRequirementFiveEvent {
  @override
  List<Object?> get props => [];
}
