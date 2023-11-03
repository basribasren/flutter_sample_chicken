// ignore_for_file: must_be_immutable

part of 'single_batch_expenses_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchExpenses widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchExpensesEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchExpenses widget is first created.
class SingleBatchExpensesInitialEvent extends SingleBatchExpensesEvent {
  @override
  List<Object?> get props => [];
}
