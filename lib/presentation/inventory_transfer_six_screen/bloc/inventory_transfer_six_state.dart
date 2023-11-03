// ignore_for_file: must_be_immutable

part of 'inventory_transfer_six_bloc.dart';

/// Represents the state of InventoryTransferSix in the application.
class InventoryTransferSixState extends Equatable {
  InventoryTransferSixState({
    this.fromBatchController,
    this.feedTypeController,
    this.quantityStockAvailableController,
    this.isSelectedSwitch = false,
    this.inventoryTransferSixModelObj,
  });

  TextEditingController? fromBatchController;

  TextEditingController? feedTypeController;

  TextEditingController? quantityStockAvailableController;

  InventoryTransferSixModel? inventoryTransferSixModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        fromBatchController,
        feedTypeController,
        quantityStockAvailableController,
        isSelectedSwitch,
        inventoryTransferSixModelObj,
      ];
  InventoryTransferSixState copyWith({
    TextEditingController? fromBatchController,
    TextEditingController? feedTypeController,
    TextEditingController? quantityStockAvailableController,
    bool? isSelectedSwitch,
    InventoryTransferSixModel? inventoryTransferSixModelObj,
  }) {
    return InventoryTransferSixState(
      fromBatchController: fromBatchController ?? this.fromBatchController,
      feedTypeController: feedTypeController ?? this.feedTypeController,
      quantityStockAvailableController: quantityStockAvailableController ??
          this.quantityStockAvailableController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      inventoryTransferSixModelObj:
          inventoryTransferSixModelObj ?? this.inventoryTransferSixModelObj,
    );
  }
}
