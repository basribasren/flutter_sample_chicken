// ignore_for_file: must_be_immutable

part of 'add_order_two_bloc.dart';

/// Represents the state of AddOrderTwo in the application.
class AddOrderTwoState extends Equatable {
  AddOrderTwoState({this.addOrderTwoModelObj});

  AddOrderTwoModel? addOrderTwoModelObj;

  @override
  List<Object?> get props => [
        addOrderTwoModelObj,
      ];
  AddOrderTwoState copyWith({AddOrderTwoModel? addOrderTwoModelObj}) {
    return AddOrderTwoState(
      addOrderTwoModelObj: addOrderTwoModelObj ?? this.addOrderTwoModelObj,
    );
  }
}
