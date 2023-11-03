// ignore_for_file: must_be_immutable

part of 'single_batch_add_note_bloc.dart';

/// Represents the state of SingleBatchAddNote in the application.
class SingleBatchAddNoteState extends Equatable {
  SingleBatchAddNoteState({
    this.titleController,
    this.descriptionController,
    this.singleBatchAddNoteModelObj,
  });

  TextEditingController? titleController;

  TextEditingController? descriptionController;

  SingleBatchAddNoteModel? singleBatchAddNoteModelObj;

  @override
  List<Object?> get props => [
        titleController,
        descriptionController,
        singleBatchAddNoteModelObj,
      ];
  SingleBatchAddNoteState copyWith({
    TextEditingController? titleController,
    TextEditingController? descriptionController,
    SingleBatchAddNoteModel? singleBatchAddNoteModelObj,
  }) {
    return SingleBatchAddNoteState(
      titleController: titleController ?? this.titleController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      singleBatchAddNoteModelObj:
          singleBatchAddNoteModelObj ?? this.singleBatchAddNoteModelObj,
    );
  }
}
