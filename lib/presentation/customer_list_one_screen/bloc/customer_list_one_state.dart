// ignore_for_file: must_be_immutable

part of 'customer_list_one_bloc.dart';

/// Represents the state of CustomerListOne in the application.
class CustomerListOneState extends Equatable {
  CustomerListOneState({this.customerListOneModelObj});

  CustomerListOneModel? customerListOneModelObj;

  @override
  List<Object?> get props => [
        customerListOneModelObj,
      ];
  CustomerListOneState copyWith(
      {CustomerListOneModel? customerListOneModelObj}) {
    return CustomerListOneState(
      customerListOneModelObj:
          customerListOneModelObj ?? this.customerListOneModelObj,
    );
  }
}
