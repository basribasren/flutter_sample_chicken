// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChickFeedRequirementTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChickFeedRequirementTwoEvent extends Equatable {}

/// Event that is dispatched when the ChickFeedRequirementTwo widget is first created.
class ChickFeedRequirementTwoInitialEvent extends ChickFeedRequirementTwoEvent {
  @override
  List<Object?> get props => [];
}
