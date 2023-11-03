// ignore_for_file: must_be_immutable

part of 'inventory_transfer_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferSixEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferSix widget is first created.
class InventoryTransferSixInitialEvent extends InventoryTransferSixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends InventoryTransferSixEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
