// ignore_for_file: must_be_immutable

part of 'single_batch_notes_bloc.dart';

/// Represents the state of SingleBatchNotes in the application.
class SingleBatchNotesState extends Equatable {
  SingleBatchNotesState({this.singleBatchNotesModelObj});

  SingleBatchNotesModel? singleBatchNotesModelObj;

  @override
  List<Object?> get props => [
        singleBatchNotesModelObj,
      ];
  SingleBatchNotesState copyWith(
      {SingleBatchNotesModel? singleBatchNotesModelObj}) {
    return SingleBatchNotesState(
      singleBatchNotesModelObj:
          singleBatchNotesModelObj ?? this.singleBatchNotesModelObj,
    );
  }
}
