// ignore_for_file: must_be_immutable

part of 'new_notes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewNotes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewNotesEvent extends Equatable {}

/// Event that is dispatched when the NewNotes widget is first created.
class NewNotesInitialEvent extends NewNotesEvent {
  @override
  List<Object?> get props => [];
}
