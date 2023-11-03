// ignore_for_file: must_be_immutable

part of 'income_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IncomeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IncomeTwoEvent extends Equatable {}

/// Event that is dispatched when the IncomeTwo widget is first created.
class IncomeTwoInitialEvent extends IncomeTwoEvent {
  @override
  List<Object?> get props => [];
}
