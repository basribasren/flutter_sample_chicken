// ignore_for_file: must_be_immutable

part of 'reminders_two_bloc.dart';

/// Represents the state of RemindersTwo in the application.
class RemindersTwoState extends Equatable {
  RemindersTwoState({
    this.remindersTwoController,
    this.remindersTwoController1,
    this.remindersTwoController2,
    this.remindersTwoModelObj,
  });

  TextEditingController? remindersTwoController;

  TextEditingController? remindersTwoController1;

  TextEditingController? remindersTwoController2;

  RemindersTwoModel? remindersTwoModelObj;

  @override
  List<Object?> get props => [
        remindersTwoController,
        remindersTwoController1,
        remindersTwoController2,
        remindersTwoModelObj,
      ];
  RemindersTwoState copyWith({
    TextEditingController? remindersTwoController,
    TextEditingController? remindersTwoController1,
    TextEditingController? remindersTwoController2,
    RemindersTwoModel? remindersTwoModelObj,
  }) {
    return RemindersTwoState(
      remindersTwoController:
          remindersTwoController ?? this.remindersTwoController,
      remindersTwoController1:
          remindersTwoController1 ?? this.remindersTwoController1,
      remindersTwoController2:
          remindersTwoController2 ?? this.remindersTwoController2,
      remindersTwoModelObj: remindersTwoModelObj ?? this.remindersTwoModelObj,
    );
  }
}
