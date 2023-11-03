// ignore_for_file: must_be_immutable

part of 'new_feed_served_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewFeedServed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewFeedServedEvent extends Equatable {}

/// Event that is dispatched when the NewFeedServed widget is first created.
class NewFeedServedInitialEvent extends NewFeedServedEvent {
  @override
  List<Object?> get props => [];
}
