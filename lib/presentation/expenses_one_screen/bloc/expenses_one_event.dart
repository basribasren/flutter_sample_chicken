// ignore_for_file: must_be_immutable

part of 'expenses_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExpensesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExpensesOneEvent extends Equatable {}

/// Event that is dispatched when the ExpensesOne widget is first created.
class ExpensesOneInitialEvent extends ExpensesOneEvent {
  @override
  List<Object?> get props => [];
}
