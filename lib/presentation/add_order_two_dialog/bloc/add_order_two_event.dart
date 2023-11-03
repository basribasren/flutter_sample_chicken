// ignore_for_file: must_be_immutable

part of 'add_order_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddOrderTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddOrderTwoEvent extends Equatable {}

/// Event that is dispatched when the AddOrderTwo widget is first created.
class AddOrderTwoInitialEvent extends AddOrderTwoEvent {
  @override
  List<Object?> get props => [];
}
