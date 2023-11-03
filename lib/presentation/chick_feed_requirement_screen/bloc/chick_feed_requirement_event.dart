// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChickFeedRequirement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChickFeedRequirementEvent extends Equatable {}

/// Event that is dispatched when the ChickFeedRequirement widget is first created.
class ChickFeedRequirementInitialEvent extends ChickFeedRequirementEvent {
  @override
  List<Object?> get props => [];
}
