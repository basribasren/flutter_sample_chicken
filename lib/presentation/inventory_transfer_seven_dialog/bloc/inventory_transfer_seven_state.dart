// ignore_for_file: must_be_immutable

part of 'inventory_transfer_seven_bloc.dart';

/// Represents the state of InventoryTransferSeven in the application.
class InventoryTransferSevenState extends Equatable {
  InventoryTransferSevenState({this.inventoryTransferSevenModelObj});

  InventoryTransferSevenModel? inventoryTransferSevenModelObj;

  @override
  List<Object?> get props => [
        inventoryTransferSevenModelObj,
      ];
  InventoryTransferSevenState copyWith(
      {InventoryTransferSevenModel? inventoryTransferSevenModelObj}) {
    return InventoryTransferSevenState(
      inventoryTransferSevenModelObj:
          inventoryTransferSevenModelObj ?? this.inventoryTransferSevenModelObj,
    );
  }
}
