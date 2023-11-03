// ignore_for_file: must_be_immutable

part of 'inventory_bloc.dart';

/// Represents the state of Inventory in the application.
class InventoryState extends Equatable {
  InventoryState({
    this.searchController,
    this.inventoryModelObj,
  });

  TextEditingController? searchController;

  InventoryModel? inventoryModelObj;

  @override
  List<Object?> get props => [
        searchController,
        inventoryModelObj,
      ];
  InventoryState copyWith({
    TextEditingController? searchController,
    InventoryModel? inventoryModelObj,
  }) {
    return InventoryState(
      searchController: searchController ?? this.searchController,
      inventoryModelObj: inventoryModelObj ?? this.inventoryModelObj,
    );
  }
}
