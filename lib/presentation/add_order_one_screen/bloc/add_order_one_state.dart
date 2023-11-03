// ignore_for_file: must_be_immutable

part of 'add_order_one_bloc.dart';

/// Represents the state of AddOrderOne in the application.
class AddOrderOneState extends Equatable {
  AddOrderOneState({
    this.orderDateController,
    this.orderWeightController,
    this.bagQuantityController,
    this.orderPriceController,
    this.orderTotalController,
    this.isSelectedSwitch = false,
    this.addOrderOneModelObj,
  });

  TextEditingController? orderDateController;

  TextEditingController? orderWeightController;

  TextEditingController? bagQuantityController;

  TextEditingController? orderPriceController;

  TextEditingController? orderTotalController;

  AddOrderOneModel? addOrderOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        orderDateController,
        orderWeightController,
        bagQuantityController,
        orderPriceController,
        orderTotalController,
        isSelectedSwitch,
        addOrderOneModelObj,
      ];
  AddOrderOneState copyWith({
    TextEditingController? orderDateController,
    TextEditingController? orderWeightController,
    TextEditingController? bagQuantityController,
    TextEditingController? orderPriceController,
    TextEditingController? orderTotalController,
    bool? isSelectedSwitch,
    AddOrderOneModel? addOrderOneModelObj,
  }) {
    return AddOrderOneState(
      orderDateController: orderDateController ?? this.orderDateController,
      orderWeightController:
          orderWeightController ?? this.orderWeightController,
      bagQuantityController:
          bagQuantityController ?? this.bagQuantityController,
      orderPriceController: orderPriceController ?? this.orderPriceController,
      orderTotalController: orderTotalController ?? this.orderTotalController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      addOrderOneModelObj: addOrderOneModelObj ?? this.addOrderOneModelObj,
    );
  }
}
