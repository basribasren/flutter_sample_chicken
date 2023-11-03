// ignore_for_file: must_be_immutable

part of 'inventory_transfer_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferFiveEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferFive widget is first created.
class InventoryTransferFiveInitialEvent extends InventoryTransferFiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends InventoryTransferFiveEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
