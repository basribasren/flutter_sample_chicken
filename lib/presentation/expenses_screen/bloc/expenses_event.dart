// ignore_for_file: must_be_immutable

part of 'expenses_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Expenses widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesEvent extends Equatable {}

/// Event that is dispatched when the Expenses widget is first created.
class ExpensesInitialEvent extends ExpensesEvent {
  @override
  List<Object?> get props => [];
}
