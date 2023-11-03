// ignore_for_file: must_be_immutable

part of 'feed_type_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedTypeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedTypeTwoEvent extends Equatable {}

/// Event that is dispatched when the FeedTypeTwo widget is first created.
class FeedTypeTwoInitialEvent extends FeedTypeTwoEvent {
  @override
  List<Object?> get props => [];
}
