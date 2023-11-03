// ignore_for_file: must_be_immutable

part of 'single_batch_view_income_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchViewIncome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchViewIncomeEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchViewIncome widget is first created.
class SingleBatchViewIncomeInitialEvent extends SingleBatchViewIncomeEvent {
  @override
  List<Object?> get props => [];
}
