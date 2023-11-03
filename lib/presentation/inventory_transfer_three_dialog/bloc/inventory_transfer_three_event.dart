// ignore_for_file: must_be_immutable

part of 'inventory_transfer_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryTransferThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryTransferThreeEvent extends Equatable {}

/// Event that is dispatched when the InventoryTransferThree widget is first created.
class InventoryTransferThreeInitialEvent extends InventoryTransferThreeEvent {
  @override
  List<Object?> get props => [];
}
