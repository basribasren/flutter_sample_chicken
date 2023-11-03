// ignore_for_file: must_be_immutable

part of 'reminders_one_bloc.dart';

/// Represents the state of RemindersOne in the application.
class RemindersOneState extends Equatable {
  RemindersOneState({this.remindersOneModelObj});

  RemindersOneModel? remindersOneModelObj;

  @override
  List<Object?> get props => [
        remindersOneModelObj,
      ];
  RemindersOneState copyWith({RemindersOneModel? remindersOneModelObj}) {
    return RemindersOneState(
      remindersOneModelObj: remindersOneModelObj ?? this.remindersOneModelObj,
    );
  }
}
