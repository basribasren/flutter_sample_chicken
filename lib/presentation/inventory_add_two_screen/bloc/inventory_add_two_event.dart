// ignore_for_file: must_be_immutable

part of 'inventory_add_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryAddTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryAddTwoEvent extends Equatable {}

/// Event that is dispatched when the InventoryAddTwo widget is first created.
class InventoryAddTwoInitialEvent extends InventoryAddTwoEvent {
  @override
  List<Object?> get props => [];
}
