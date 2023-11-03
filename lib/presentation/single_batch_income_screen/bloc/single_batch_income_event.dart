// ignore_for_file: must_be_immutable

part of 'single_batch_income_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchIncome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchIncomeEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchIncome widget is first created.
class SingleBatchIncomeInitialEvent extends SingleBatchIncomeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SingleBatchIncomeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
