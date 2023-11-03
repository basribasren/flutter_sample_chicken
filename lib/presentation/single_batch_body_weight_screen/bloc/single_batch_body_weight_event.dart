// ignore_for_file: must_be_immutable

part of 'single_batch_body_weight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchBodyWeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchBodyWeightEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchBodyWeight widget is first created.
class SingleBatchBodyWeightInitialEvent extends SingleBatchBodyWeightEvent {
  @override
  List<Object?> get props => [];
}
