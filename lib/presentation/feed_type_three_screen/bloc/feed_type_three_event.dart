// ignore_for_file: must_be_immutable

part of 'feed_type_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedTypeThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedTypeThreeEvent extends Equatable {}

/// Event that is dispatched when the FeedTypeThree widget is first created.
class FeedTypeThreeInitialEvent extends FeedTypeThreeEvent {
  @override
  List<Object?> get props => [];
}
