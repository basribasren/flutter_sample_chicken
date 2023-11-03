// ignore_for_file: must_be_immutable

part of 'new_order_bloc.dart';

/// Represents the state of NewOrder in the application.
class NewOrderState extends Equatable {
  NewOrderState({this.newOrderModelObj});

  NewOrderModel? newOrderModelObj;

  @override
  List<Object?> get props => [
        newOrderModelObj,
      ];
  NewOrderState copyWith({NewOrderModel? newOrderModelObj}) {
    return NewOrderState(
      newOrderModelObj: newOrderModelObj ?? this.newOrderModelObj,
    );
  }
}
