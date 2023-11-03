// ignore_for_file: must_be_immutable

part of 'single_batch_view_feeding_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewFeedingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewFeedingOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewFeedingOne widget is first created.
class SingleBatchViewFeedingOneInitialEvent
    extends SingleBatchViewFeedingOneEvent {
  @override
  List<Object?> get props => [];
}
