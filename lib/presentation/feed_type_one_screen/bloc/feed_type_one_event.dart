// ignore_for_file: must_be_immutable

part of 'feed_type_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedTypeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedTypeOneEvent extends Equatable {}

/// Event that is dispatched when the FeedTypeOne widget is first created.
class FeedTypeOneInitialEvent extends FeedTypeOneEvent {
  @override
  List<Object?> get props => [];
}
