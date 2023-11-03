// ignore_for_file: must_be_immutable

part of 'inventory_transfer_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferTwoEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferTwo widget is first created.
class InventoryTransferTwoInitialEvent extends InventoryTransferTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends InventoryTransferTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
