// ignore_for_file: must_be_immutable

part of 'inventory_transfer_five_bloc.dart';

/// Represents the state of InventoryTransferFive in the application.
class InventoryTransferFiveState extends Equatable {
  InventoryTransferFiveState({
    this.fromBatchController,
    this.isSelectedSwitch = false,
    this.inventoryTransferFiveModelObj,
  });

  TextEditingController? fromBatchController;

  InventoryTransferFiveModel? inventoryTransferFiveModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        fromBatchController,
        isSelectedSwitch,
        inventoryTransferFiveModelObj,
      ];
  InventoryTransferFiveState copyWith({
    TextEditingController? fromBatchController,
    bool? isSelectedSwitch,
    InventoryTransferFiveModel? inventoryTransferFiveModelObj,
  }) {
    return InventoryTransferFiveState(
      fromBatchController: fromBatchController ?? this.fromBatchController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      inventoryTransferFiveModelObj:
          inventoryTransferFiveModelObj ?? this.inventoryTransferFiveModelObj,
    );
  }
}
