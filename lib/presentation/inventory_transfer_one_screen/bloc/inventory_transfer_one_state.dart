// ignore_for_file: must_be_immutable

part of 'inventory_transfer_one_bloc.dart';

/// Represents the state of InventoryTransferOne in the application.
class InventoryTransferOneState extends Equatable {
  InventoryTransferOneState({
    this.feedTypeNameController,
    this.transferToBatchNameController,
    this.isSelectedSwitch = false,
    this.inventoryTransferOneModelObj,
  });

  TextEditingController? feedTypeNameController;

  TextEditingController? transferToBatchNameController;

  InventoryTransferOneModel? inventoryTransferOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        feedTypeNameController,
        transferToBatchNameController,
        isSelectedSwitch,
        inventoryTransferOneModelObj,
      ];
  InventoryTransferOneState copyWith({
    TextEditingController? feedTypeNameController,
    TextEditingController? transferToBatchNameController,
    bool? isSelectedSwitch,
    InventoryTransferOneModel? inventoryTransferOneModelObj,
  }) {
    return InventoryTransferOneState(
      feedTypeNameController:
          feedTypeNameController ?? this.feedTypeNameController,
      transferToBatchNameController:
          transferToBatchNameController ?? this.transferToBatchNameController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      inventoryTransferOneModelObj:
          inventoryTransferOneModelObj ?? this.inventoryTransferOneModelObj,
    );
  }
}
