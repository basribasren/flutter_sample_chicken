// ignore_for_file: must_be_immutable

part of 'my_orders_bloc.dart';

/// Represents the state of MyOrders in the application.
class MyOrdersState extends Equatable {
  MyOrdersState({
    this.menuThirtyEightController,
    this.selectedDropDownValue,
    this.myOrdersModelObj,
  });

  TextEditingController? menuThirtyEightController;

  SelectionPopupModel? selectedDropDownValue;

  MyOrdersModel? myOrdersModelObj;

  @override
  List<Object?> get props => [
        menuThirtyEightController,
        selectedDropDownValue,
        myOrdersModelObj,
      ];
  MyOrdersState copyWith({
    TextEditingController? menuThirtyEightController,
    SelectionPopupModel? selectedDropDownValue,
    MyOrdersModel? myOrdersModelObj,
  }) {
    return MyOrdersState(
      menuThirtyEightController:
          menuThirtyEightController ?? this.menuThirtyEightController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      myOrdersModelObj: myOrdersModelObj ?? this.myOrdersModelObj,
    );
  }
}
