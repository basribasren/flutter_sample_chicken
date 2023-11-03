// ignore_for_file: must_be_immutable

part of 'single_batch_notes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchNotes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchNotesEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchNotes widget is first created.
class SingleBatchNotesInitialEvent extends SingleBatchNotesEvent {
  @override
  List<Object?> get props => [];
}
