// ignore_for_file: must_be_immutable

part of 'add_customer_bloc.dart';

/// Represents the state of AddCustomer in the application.
class AddCustomerState extends Equatable {
  AddCustomerState({
    this.nameController,
    this.contactNumberController,
    this.addCustomerModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? contactNumberController;

  AddCustomerModel? addCustomerModelObj;

  @override
  List<Object?> get props => [
        nameController,
        contactNumberController,
        addCustomerModelObj,
      ];
  AddCustomerState copyWith({
    TextEditingController? nameController,
    TextEditingController? contactNumberController,
    AddCustomerModel? addCustomerModelObj,
  }) {
    return AddCustomerState(
      nameController: nameController ?? this.nameController,
      contactNumberController:
          contactNumberController ?? this.contactNumberController,
      addCustomerModelObj: addCustomerModelObj ?? this.addCustomerModelObj,
    );
  }
}
