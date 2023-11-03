// ignore_for_file: must_be_immutable

part of 'batches_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BatchesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatchesOneEvent extends Equatable {}

/// Event that is dispatched when the BatchesOne widget is first created.
class BatchesOneInitialEvent extends BatchesOneEvent {
  @override
  List<Object?> get props => [];
}
