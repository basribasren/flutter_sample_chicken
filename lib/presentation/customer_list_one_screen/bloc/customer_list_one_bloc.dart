import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/customerlistone_item_model.dart';import 'package:basri_s_application4/presentation/customer_list_one_screen/models/customer_list_one_model.dart';part 'customer_list_one_event.dart';part 'customer_list_one_state.dart';/// A bloc that manages the state of a CustomerListOne according to the event that is dispatched to it.
class CustomerListOneBloc extends Bloc<CustomerListOneEvent, CustomerListOneState> {CustomerListOneBloc(CustomerListOneState initialState) : super(initialState) { on<CustomerListOneInitialEvent>(_onInitialize); }

_onInitialize(CustomerListOneInitialEvent event, Emitter<CustomerListOneState> emit, ) async  { emit(state.copyWith(customerListOneModelObj: state.customerListOneModelObj?.copyWith(customerlistoneItemList: fillCustomerlistoneItemList()))); } 
List<CustomerlistoneItemModel> fillCustomerlistoneItemList() { return List.generate(5, (index) => CustomerlistoneItemModel()); } 
 }
