// ignore_for_file: must_be_immutable

part of 'feed_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedTypeEvent extends Equatable {}

/// Event that is dispatched when the FeedType widget is first created.
class FeedTypeInitialEvent extends FeedTypeEvent {
  @override
  List<Object?> get props => [];
}
