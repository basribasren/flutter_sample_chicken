// ignore_for_file: must_be_immutable

part of 'inventory_add_two_bloc.dart';

/// Represents the state of InventoryAddTwo in the application.
class InventoryAddTwoState extends Equatable {
  InventoryAddTwoState({
    this.priceEditTextController,
    this.totalEditTextController,
    this.inventoryAddTwoModelObj,
  });

  TextEditingController? priceEditTextController;

  TextEditingController? totalEditTextController;

  InventoryAddTwoModel? inventoryAddTwoModelObj;

  @override
  List<Object?> get props => [
        priceEditTextController,
        totalEditTextController,
        inventoryAddTwoModelObj,
      ];
  InventoryAddTwoState copyWith({
    TextEditingController? priceEditTextController,
    TextEditingController? totalEditTextController,
    InventoryAddTwoModel? inventoryAddTwoModelObj,
  }) {
    return InventoryAddTwoState(
      priceEditTextController:
          priceEditTextController ?? this.priceEditTextController,
      totalEditTextController:
          totalEditTextController ?? this.totalEditTextController,
      inventoryAddTwoModelObj:
          inventoryAddTwoModelObj ?? this.inventoryAddTwoModelObj,
    );
  }
}
