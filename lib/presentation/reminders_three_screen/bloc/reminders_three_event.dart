// ignore_for_file: must_be_immutable

part of 'reminders_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RemindersThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RemindersThreeEvent extends Equatable {}

/// Event that is dispatched when the RemindersThree widget is first created.
class RemindersThreeInitialEvent extends RemindersThreeEvent {
  @override
  List<Object?> get props => [];
}
