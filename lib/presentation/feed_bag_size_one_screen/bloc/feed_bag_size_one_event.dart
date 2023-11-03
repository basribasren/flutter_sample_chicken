// ignore_for_file: must_be_immutable

part of 'feed_bag_size_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedBagSizeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FeedBagSizeOneEvent extends Equatable {}

/// Event that is dispatched when the FeedBagSizeOne widget is first created.
class FeedBagSizeOneInitialEvent extends FeedBagSizeOneEvent {
  @override
  List<Object?> get props => [];
}
