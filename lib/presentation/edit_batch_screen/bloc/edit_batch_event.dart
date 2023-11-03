// ignore_for_file: must_be_immutable

part of 'edit_batch_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditBatch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditBatchEvent extends Equatable {}

/// Event that is dispatched when the EditBatch widget is first created.
class EditBatchInitialEvent extends EditBatchEvent {
  @override
  List<Object?> get props => [];
}
