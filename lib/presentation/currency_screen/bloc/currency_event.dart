// ignore_for_file: must_be_immutable

part of 'currency_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Currency widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CurrencyEvent extends Equatable {}

/// Event that is dispatched when the Currency widget is first created.
class CurrencyInitialEvent extends CurrencyEvent {
  @override
  List<Object?> get props => [];
}
