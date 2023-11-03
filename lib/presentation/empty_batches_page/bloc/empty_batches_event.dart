// ignore_for_file: must_be_immutable

part of 'empty_batches_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmptyBatches widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmptyBatchesEvent extends Equatable {}

/// Event that is dispatched when the EmptyBatches widget is first created.
class EmptyBatchesInitialEvent extends EmptyBatchesEvent {
  @override
  List<Object?> get props => [];
}
