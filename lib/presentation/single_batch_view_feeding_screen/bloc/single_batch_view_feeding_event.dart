// ignore_for_file: must_be_immutable

part of 'single_batch_view_feeding_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewFeeding widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewFeedingEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewFeeding widget is first created.
class SingleBatchViewFeedingInitialEvent extends SingleBatchViewFeedingEvent {
  @override
  List<Object?> get props => [];
}
