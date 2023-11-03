// ignore_for_file: must_be_immutable

part of 'expenses_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesThreeEvent extends Equatable {}

/// Event that is dispatched when the ExpensesThree widget is first created.
class ExpensesThreeInitialEvent extends ExpensesThreeEvent {
  @override
  List<Object?> get props => [];
}
