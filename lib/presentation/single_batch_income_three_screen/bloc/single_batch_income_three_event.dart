// ignore_for_file: must_be_immutable

part of 'single_batch_income_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchIncomeThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchIncomeThreeEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchIncomeThree widget is first created.
class SingleBatchIncomeThreeInitialEvent extends SingleBatchIncomeThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SingleBatchIncomeThreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
