// ignore_for_file: must_be_immutable

part of 'income_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IncomeThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IncomeThreeEvent extends Equatable {}

/// Event that is dispatched when the IncomeThree widget is first created.
class IncomeThreeInitialEvent extends IncomeThreeEvent {
  @override
  List<Object?> get props => [];
}
