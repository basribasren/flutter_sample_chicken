// ignore_for_file: must_be_immutable

part of 'inventory_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Inventory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryEvent extends Equatable {}

/// Event that is dispatched when the Inventory widget is first created.
class InventoryInitialEvent extends InventoryEvent {
  @override
  List<Object?> get props => [];
}
