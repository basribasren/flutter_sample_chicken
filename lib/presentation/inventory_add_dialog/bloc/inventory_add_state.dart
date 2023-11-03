// ignore_for_file: must_be_immutable

part of 'inventory_add_bloc.dart';

/// Represents the state of InventoryAdd in the application.
class InventoryAddState extends Equatable {
  InventoryAddState({this.inventoryAddModelObj});

  InventoryAddModel? inventoryAddModelObj;

  @override
  List<Object?> get props => [
        inventoryAddModelObj,
      ];
  InventoryAddState copyWith({InventoryAddModel? inventoryAddModelObj}) {
    return InventoryAddState(
      inventoryAddModelObj: inventoryAddModelObj ?? this.inventoryAddModelObj,
    );
  }
}
