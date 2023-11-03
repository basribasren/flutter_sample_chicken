// ignore_for_file: must_be_immutable

part of 'chick_feed_requirement_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChickFeedRequirementOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChickFeedRequirementOneEvent extends Equatable {}

/// Event that is dispatched when the ChickFeedRequirementOne widget is first created.
class ChickFeedRequirementOneInitialEvent extends ChickFeedRequirementOneEvent {
  @override
  List<Object?> get props => [];
}
