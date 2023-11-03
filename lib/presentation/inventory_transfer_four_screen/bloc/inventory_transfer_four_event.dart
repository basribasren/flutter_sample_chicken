// ignore_for_file: must_be_immutable

part of 'inventory_transfer_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferFourEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferFour widget is first created.
class InventoryTransferFourInitialEvent extends InventoryTransferFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends InventoryTransferFourEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
