// ignore_for_file: must_be_immutable

part of 'reminders_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RemindersOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RemindersOneEvent extends Equatable {}

/// Event that is dispatched when the RemindersOne widget is first created.
class RemindersOneInitialEvent extends RemindersOneEvent {
  @override
  List<Object?> get props => [];
}
