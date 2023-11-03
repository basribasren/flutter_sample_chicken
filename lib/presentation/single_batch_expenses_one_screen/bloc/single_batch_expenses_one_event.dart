// ignore_for_file: must_be_immutable

part of 'single_batch_expenses_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchExpensesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchExpensesOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchExpensesOne widget is first created.
class SingleBatchExpensesOneInitialEvent extends SingleBatchExpensesOneEvent {
  @override
  List<Object?> get props => [];
}
