// ignore_for_file: must_be_immutable

part of 'add_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddOrderEvent extends Equatable {}

/// Event that is dispatched when the AddOrder widget is first created.
class AddOrderInitialEvent extends AddOrderEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AddOrderEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
