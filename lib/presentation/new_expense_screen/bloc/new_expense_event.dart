// ignore_for_file: must_be_immutable

part of 'new_expense_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewExpense widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewExpenseEvent extends Equatable {}

/// Event that is dispatched when the NewExpense widget is first created.
class NewExpenseInitialEvent extends NewExpenseEvent {
  @override
  List<Object?> get props => [];
}
