// ignore_for_file: must_be_immutable

part of 'inventory_transfer_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferOneEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferOne widget is first created.
class InventoryTransferOneInitialEvent extends InventoryTransferOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends InventoryTransferOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
