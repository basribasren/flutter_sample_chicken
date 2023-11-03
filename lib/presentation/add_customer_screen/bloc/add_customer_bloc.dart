import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/add_customer_screen/models/add_customer_model.dart';
part 'add_customer_event.dart';
part 'add_customer_state.dart';

/// A bloc that manages the state of a AddCustomer according to the event that is dispatched to it.
class AddCustomerBloc extends Bloc<AddCustomerEvent, AddCustomerState> {
  AddCustomerBloc(AddCustomerState initialState) : super(initialState) {
    on<AddCustomerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddCustomerInitialEvent event,
    Emitter<AddCustomerState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      contactNumberController: TextEditingController(),
    ));
  }
}
