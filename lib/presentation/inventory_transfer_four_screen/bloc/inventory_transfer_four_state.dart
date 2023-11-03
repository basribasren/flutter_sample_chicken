// ignore_for_file: must_be_immutable

part of 'inventory_transfer_four_bloc.dart';

/// Represents the state of InventoryTransferFour in the application.
class InventoryTransferFourState extends Equatable {
  InventoryTransferFourState({
    this.isSelectedSwitch = false,
    this.inventoryTransferFourModelObj,
  });

  InventoryTransferFourModel? inventoryTransferFourModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        inventoryTransferFourModelObj,
      ];
  InventoryTransferFourState copyWith({
    bool? isSelectedSwitch,
    InventoryTransferFourModel? inventoryTransferFourModelObj,
  }) {
    return InventoryTransferFourState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      inventoryTransferFourModelObj:
          inventoryTransferFourModelObj ?? this.inventoryTransferFourModelObj,
    );
  }
}
