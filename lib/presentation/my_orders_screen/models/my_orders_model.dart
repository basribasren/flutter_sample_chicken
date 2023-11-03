// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:basri_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';import 'myorderslist_item_model.dart';/// This class defines the variables used in the [my_orders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersModel extends Equatable {MyOrdersModel({this.dropdownItemList = const [], this.myorderslistItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<MyorderslistItemModel> myorderslistItemList;

MyOrdersModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<MyorderslistItemModel>? myorderslistItemList, }) { return MyOrdersModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
myorderslistItemList : myorderslistItemList ?? this.myorderslistItemList,
); } 
@override List<Object?> get props => [dropdownItemList,myorderslistItemList];
 }
