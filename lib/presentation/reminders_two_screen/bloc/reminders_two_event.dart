// ignore_for_file: must_be_immutable

part of 'reminders_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RemindersTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RemindersTwoEvent extends Equatable {}

/// Event that is dispatched when the RemindersTwo widget is first created.
class RemindersTwoInitialEvent extends RemindersTwoEvent {
  @override
  List<Object?> get props => [];
}
