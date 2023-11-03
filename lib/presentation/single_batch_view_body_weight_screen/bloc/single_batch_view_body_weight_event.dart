// ignore_for_file: must_be_immutable

part of 'single_batch_view_body_weight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewBodyWeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewBodyWeightEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewBodyWeight widget is first created.
class SingleBatchViewBodyWeightInitialEvent
    extends SingleBatchViewBodyWeightEvent {
  @override
  List<Object?> get props => [];
}
