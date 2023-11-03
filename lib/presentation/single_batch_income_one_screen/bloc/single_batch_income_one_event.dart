// ignore_for_file: must_be_immutable

part of 'single_batch_income_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SingleBatchIncomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SingleBatchIncomeOneEvent extends Equatable {}

/// Event that is dispatched when the SingleBatchIncomeOne widget is first created.
class SingleBatchIncomeOneInitialEvent extends SingleBatchIncomeOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SingleBatchIncomeOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
