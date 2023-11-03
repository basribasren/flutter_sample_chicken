import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/myorderslist_item_model.dart';import 'package:basri_s_application4/presentation/my_orders_screen/models/my_orders_model.dart';part 'my_orders_event.dart';part 'my_orders_state.dart';/// A bloc that manages the state of a MyOrders according to the event that is dispatched to it.
class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {MyOrdersBloc(MyOrdersState initialState) : super(initialState) { on<MyOrdersInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<MyOrdersState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<MyorderslistItemModel> fillMyorderslistItemList() { return List.generate(6, (index) => MyorderslistItemModel()); } 
_onInitialize(MyOrdersInitialEvent event, Emitter<MyOrdersState> emit, ) async  { emit(state.copyWith(menuThirtyEightController: TextEditingController())); emit(state.copyWith(myOrdersModelObj: state.myOrdersModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), myorderslistItemList: fillMyorderslistItemList()))); } 
 }
