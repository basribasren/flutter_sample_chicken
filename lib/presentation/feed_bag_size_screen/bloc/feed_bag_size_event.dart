// ignore_for_file: must_be_immutable

part of 'feed_bag_size_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedBagSize widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedBagSizeEvent extends Equatable {}

/// Event that is dispatched when the FeedBagSize widget is first created.
class FeedBagSizeInitialEvent extends FeedBagSizeEvent {
  @override
  List<Object?> get props => [];
}
