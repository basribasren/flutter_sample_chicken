// ignore_for_file: must_be_immutable

part of 'inventory_transfer_three_bloc.dart';

/// Represents the state of InventoryTransferThree in the application.
class InventoryTransferThreeState extends Equatable {
  InventoryTransferThreeState({this.inventoryTransferThreeModelObj});

  InventoryTransferThreeModel? inventoryTransferThreeModelObj;

  @override
  List<Object?> get props => [
        inventoryTransferThreeModelObj,
      ];
  InventoryTransferThreeState copyWith(
      {InventoryTransferThreeModel? inventoryTransferThreeModelObj}) {
    return InventoryTransferThreeState(
      inventoryTransferThreeModelObj:
          inventoryTransferThreeModelObj ?? this.inventoryTransferThreeModelObj,
    );
  }
}
