// ignore_for_file: must_be_immutable

part of 'reminders_three_bloc.dart';

/// Represents the state of RemindersThree in the application.
class RemindersThreeState extends Equatable {
  RemindersThreeState({
    this.dateController,
    this.remindersThreeModelObj,
  });

  TextEditingController? dateController;

  RemindersThreeModel? remindersThreeModelObj;

  @override
  List<Object?> get props => [
        dateController,
        remindersThreeModelObj,
      ];
  RemindersThreeState copyWith({
    TextEditingController? dateController,
    RemindersThreeModel? remindersThreeModelObj,
  }) {
    return RemindersThreeState(
      dateController: dateController ?? this.dateController,
      remindersThreeModelObj:
          remindersThreeModelObj ?? this.remindersThreeModelObj,
    );
  }
}
