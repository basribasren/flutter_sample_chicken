// ignore_for_file: must_be_immutable

part of 'inventory_transfer_two_bloc.dart';

/// Represents the state of InventoryTransferTwo in the application.
class InventoryTransferTwoState extends Equatable {
  InventoryTransferTwoState({
    this.isSelectedSwitch = false,
    this.inventoryTransferTwoModelObj,
  });

  InventoryTransferTwoModel? inventoryTransferTwoModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        inventoryTransferTwoModelObj,
      ];
  InventoryTransferTwoState copyWith({
    bool? isSelectedSwitch,
    InventoryTransferTwoModel? inventoryTransferTwoModelObj,
  }) {
    return InventoryTransferTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      inventoryTransferTwoModelObj:
          inventoryTransferTwoModelObj ?? this.inventoryTransferTwoModelObj,
    );
  }
}
