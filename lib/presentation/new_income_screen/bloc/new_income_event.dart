// ignore_for_file: must_be_immutable

part of 'new_income_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewIncome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewIncomeEvent extends Equatable {}

/// Event that is dispatched when the NewIncome widget is first created.
class NewIncomeInitialEvent extends NewIncomeEvent {
  @override
  List<Object?> get props => [];
}
