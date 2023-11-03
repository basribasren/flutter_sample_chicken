// ignore_for_file: must_be_immutable

part of 'inventory_add_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryAddOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryAddOneEvent extends Equatable {}

/// Event that is dispatched when the InventoryAddOne widget is first created.
class InventoryAddOneInitialEvent extends InventoryAddOneEvent {
  @override
  List<Object?> get props => [];
}
