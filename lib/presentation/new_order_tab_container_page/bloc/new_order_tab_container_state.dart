// ignore_for_file: must_be_immutable

part of 'new_order_tab_container_bloc.dart';

/// Represents the state of NewOrderTabContainer in the application.
class NewOrderTabContainerState extends Equatable {
  NewOrderTabContainerState({this.newOrderTabContainerModelObj});

  NewOrderTabContainerModel? newOrderTabContainerModelObj;

  @override
  List<Object?> get props => [
        newOrderTabContainerModelObj,
      ];
  NewOrderTabContainerState copyWith(
      {NewOrderTabContainerModel? newOrderTabContainerModelObj}) {
    return NewOrderTabContainerState(
      newOrderTabContainerModelObj:
          newOrderTabContainerModelObj ?? this.newOrderTabContainerModelObj,
    );
  }
}
