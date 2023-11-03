// ignore_for_file: must_be_immutable

part of 'single_batch_income_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchIncomeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchIncomeTwoEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchIncomeTwo widget is first created.
class SingleBatchIncomeTwoInitialEvent extends SingleBatchIncomeTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SingleBatchIncomeTwoEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
