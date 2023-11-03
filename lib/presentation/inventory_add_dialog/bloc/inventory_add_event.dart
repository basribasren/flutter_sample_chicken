// ignore_for_file: must_be_immutable

part of 'inventory_add_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InventoryAdd widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InventoryAddEvent extends Equatable {}

/// Event that is dispatched when the InventoryAdd widget is first created.
class InventoryAddInitialEvent extends InventoryAddEvent {
  @override
  List<Object?> get props => [];
}
