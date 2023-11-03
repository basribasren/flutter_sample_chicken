// ignore_for_file: must_be_immutable

part of 'inventory_add_one_bloc.dart';

/// Represents the state of InventoryAddOne in the application.
class InventoryAddOneState extends Equatable {
  InventoryAddOneState({
    this.orderNumberController,
    this.feedTypeController,
    this.feedCompanyController,
    this.weightController,
    this.priceController,
    this.totalController,
    this.inventoryAddOneModelObj,
  });

  TextEditingController? orderNumberController;

  TextEditingController? feedTypeController;

  TextEditingController? feedCompanyController;

  TextEditingController? weightController;

  TextEditingController? priceController;

  TextEditingController? totalController;

  InventoryAddOneModel? inventoryAddOneModelObj;

  @override
  List<Object?> get props => [
        orderNumberController,
        feedTypeController,
        feedCompanyController,
        weightController,
        priceController,
        totalController,
        inventoryAddOneModelObj,
      ];
  InventoryAddOneState copyWith({
    TextEditingController? orderNumberController,
    TextEditingController? feedTypeController,
    TextEditingController? feedCompanyController,
    TextEditingController? weightController,
    TextEditingController? priceController,
    TextEditingController? totalController,
    InventoryAddOneModel? inventoryAddOneModelObj,
  }) {
    return InventoryAddOneState(
      orderNumberController:
          orderNumberController ?? this.orderNumberController,
      feedTypeController: feedTypeController ?? this.feedTypeController,
      feedCompanyController:
          feedCompanyController ?? this.feedCompanyController,
      weightController: weightController ?? this.weightController,
      priceController: priceController ?? this.priceController,
      totalController: totalController ?? this.totalController,
      inventoryAddOneModelObj:
          inventoryAddOneModelObj ?? this.inventoryAddOneModelObj,
    );
  }
}
