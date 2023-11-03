// ignore_for_file: must_be_immutable

part of 'single_batch_add_note_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchAddNote widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchAddNoteEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchAddNote widget is first created.
class SingleBatchAddNoteInitialEvent extends SingleBatchAddNoteEvent {
  @override
  List<Object?> get props => [];
}
