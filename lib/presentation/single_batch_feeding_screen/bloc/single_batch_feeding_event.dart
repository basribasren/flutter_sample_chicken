// ignore_for_file: must_be_immutable

part of 'single_batch_feeding_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchFeeding widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchFeedingEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchFeeding widget is first created.
class SingleBatchFeedingInitialEvent extends SingleBatchFeedingEvent {
  @override
  List<Object?> get props => [];
}
