// ignore_for_file: must_be_immutable

part of 'inventory_transfer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransfer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransfer widget is first created.
class InventoryTransferInitialEvent extends InventoryTransferEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends InventoryTransferEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
