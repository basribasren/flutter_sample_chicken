// ignore_for_file: must_be_immutable

part of 'feed_bag_size_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedBagSizeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedBagSizeTwoEvent extends Equatable {}

/// Event that is dispatched when the FeedBagSizeTwo widget is first created.
class FeedBagSizeTwoInitialEvent extends FeedBagSizeTwoEvent {
  @override
  List<Object?> get props => [];
}
