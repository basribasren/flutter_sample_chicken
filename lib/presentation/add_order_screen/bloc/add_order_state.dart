// ignore_for_file: must_be_immutable

part of 'add_order_bloc.dart';

/// Represents the state of AddOrder in the application.
class AddOrderState extends Equatable {
  AddOrderState({
    this.orderDateController,
    this.feedTypeController,
    this.feedCompanyController,
    this.orderWeightController,
    this.bagQuantityController,
    this.orderPriceController,
    this.orderTotalController,
    this.isSelectedSwitch = false,
    this.addOrderModelObj,
  });

  TextEditingController? orderDateController;

  TextEditingController? feedTypeController;

  TextEditingController? feedCompanyController;

  TextEditingController? orderWeightController;

  TextEditingController? bagQuantityController;

  TextEditingController? orderPriceController;

  TextEditingController? orderTotalController;

  AddOrderModel? addOrderModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        orderDateController,
        feedTypeController,
        feedCompanyController,
        orderWeightController,
        bagQuantityController,
        orderPriceController,
        orderTotalController,
        isSelectedSwitch,
        addOrderModelObj,
      ];
  AddOrderState copyWith({
    TextEditingController? orderDateController,
    TextEditingController? feedTypeController,
    TextEditingController? feedCompanyController,
    TextEditingController? orderWeightController,
    TextEditingController? bagQuantityController,
    TextEditingController? orderPriceController,
    TextEditingController? orderTotalController,
    bool? isSelectedSwitch,
    AddOrderModel? addOrderModelObj,
  }) {
    return AddOrderState(
      orderDateController: orderDateController ?? this.orderDateController,
      feedTypeController: feedTypeController ?? this.feedTypeController,
      feedCompanyController:
          feedCompanyController ?? this.feedCompanyController,
      orderWeightController:
          orderWeightController ?? this.orderWeightController,
      bagQuantityController:
          bagQuantityController ?? this.bagQuantityController,
      orderPriceController: orderPriceController ?? this.orderPriceController,
      orderTotalController: orderTotalController ?? this.orderTotalController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      addOrderModelObj: addOrderModelObj ?? this.addOrderModelObj,
    );
  }
}
