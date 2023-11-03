// ignore_for_file: must_be_immutable

part of 'customer_list_bloc.dart';

/// Represents the state of CustomerList in the application.
class CustomerListState extends Equatable {
  CustomerListState({this.customerListModelObj});

  CustomerListModel? customerListModelObj;

  @override
  List<Object?> get props => [
        customerListModelObj,
      ];
  CustomerListState copyWith({CustomerListModel? customerListModelObj}) {
    return CustomerListState(
      customerListModelObj: customerListModelObj ?? this.customerListModelObj,
    );
  }
}
