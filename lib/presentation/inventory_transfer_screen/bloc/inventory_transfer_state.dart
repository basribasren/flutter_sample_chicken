// ignore_for_file: must_be_immutable

part of 'inventory_transfer_bloc.dart';

/// Represents the state of InventoryTransfer in the application.
class InventoryTransferState extends Equatable {
  InventoryTransferState({
    this.feedTypevalueController,
    this.isSelectedSwitch = false,
    this.inventoryTransferModelObj,
  });

  TextEditingController? feedTypevalueController;

  InventoryTransferModel? inventoryTransferModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        feedTypevalueController,
        isSelectedSwitch,
        inventoryTransferModelObj,
      ];
  InventoryTransferState copyWith({
    TextEditingController? feedTypevalueController,
    bool? isSelectedSwitch,
    InventoryTransferModel? inventoryTransferModelObj,
  }) {
    return InventoryTransferState(
      feedTypevalueController:
          feedTypevalueController ?? this.feedTypevalueController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      inventoryTransferModelObj:
          inventoryTransferModelObj ?? this.inventoryTransferModelObj,
    );
  }
}
