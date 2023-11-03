// ignore_for_file: must_be_immutable

part of 'new_batch_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewBatch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewBatchEvent extends Equatable {}

/// Event that is dispatched when the NewBatch widget is first created.
class NewBatchInitialEvent extends NewBatchEvent {
  @override
  List<Object?> get props => [];
}
