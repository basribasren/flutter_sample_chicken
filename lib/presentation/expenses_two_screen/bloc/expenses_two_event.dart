// ignore_for_file: must_be_immutable

part of 'expenses_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesTwoEvent extends Equatable {}

/// Event that is dispatched when the ExpensesTwo widget is first created.
class ExpensesTwoInitialEvent extends ExpensesTwoEvent {
  @override
  List<Object?> get props => [];
}
