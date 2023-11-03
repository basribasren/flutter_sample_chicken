// ignore_for_file: must_be_immutable

part of 'income_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IncomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IncomeOneEvent extends Equatable {}

/// Event that is dispatched when the IncomeOne widget is first created.
class IncomeOneInitialEvent extends IncomeOneEvent {
  @override
  List<Object?> get props => [];
}
