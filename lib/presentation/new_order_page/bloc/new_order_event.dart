// ignore_for_file: must_be_immutable

part of 'new_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewOrderEvent extends Equatable {}

/// Event that is dispatched when the NewOrder widget is first created.
class NewOrderInitialEvent extends NewOrderEvent {
  @override
  List<Object?> get props => [];
}
