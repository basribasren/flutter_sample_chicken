// ignore_for_file: must_be_immutable

part of 'add_order_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddOrderOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddOrderOneEvent extends Equatable {}

/// Event that is dispatched when the AddOrderOne widget is first created.
class AddOrderOneInitialEvent extends AddOrderOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AddOrderOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
