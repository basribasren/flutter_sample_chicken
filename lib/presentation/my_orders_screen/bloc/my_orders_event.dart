// ignore_for_file: must_be_immutable

part of 'my_orders_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrders widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersEvent extends Equatable {}

/// Event that is dispatched when the MyOrders widget is first created.
class MyOrdersInitialEvent extends MyOrdersEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends MyOrdersEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
