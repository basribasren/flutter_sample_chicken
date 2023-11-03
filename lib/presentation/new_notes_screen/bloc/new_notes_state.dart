// ignore_for_file: must_be_immutable

part of 'new_notes_bloc.dart';

/// Represents the state of NewNotes in the application.
class NewNotesState extends Equatable {
  NewNotesState({this.newNotesModelObj});

  NewNotesModel? newNotesModelObj;

  @override
  List<Object?> get props => [
        newNotesModelObj,
      ];
  NewNotesState copyWith({NewNotesModel? newNotesModelObj}) {
    return NewNotesState(
      newNotesModelObj: newNotesModelObj ?? this.newNotesModelObj,
    );
  }
}
