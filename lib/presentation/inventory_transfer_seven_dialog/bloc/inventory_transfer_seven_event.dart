// ignore_for_file: must_be_immutable

part of 'inventory_transfer_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferSevenEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferSeven widget is first created.
class InventoryTransferSevenInitialEvent extends InventoryTransferSevenEvent {
  @override
  List<Object?> get props => [];
}
