// ignore_for_file: must_be_immutable

part of 'batches_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Batches widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BatchesEvent extends Equatable {}

/// Event that is dispatched when the Batches widget is first created.
class BatchesInitialEvent extends BatchesEvent {
  @override
  List<Object?> get props => [];
}
