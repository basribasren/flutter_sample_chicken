// ignore_for_file: must_be_immutable

part of 'single_batch_view_expense_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewExpense widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewExpenseEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewExpense widget is first created.
class SingleBatchViewExpenseInitialEvent extends SingleBatchViewExpenseEvent {
  @override
  List<Object?> get props => [];
}
