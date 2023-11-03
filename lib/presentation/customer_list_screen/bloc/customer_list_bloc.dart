import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/customer_list_screen/models/customer_list_model.dart';
part 'customer_list_event.dart';
part 'customer_list_state.dart';

/// A bloc that manages the state of a CustomerList according to the event that is dispatched to it.
class CustomerListBloc extends Bloc<CustomerListEvent, CustomerListState> {
  CustomerListBloc(CustomerListState initialState) : super(initialState) {
    on<CustomerListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CustomerListInitialEvent event,
    Emitter<CustomerListState> emit,
  ) async {}
}
