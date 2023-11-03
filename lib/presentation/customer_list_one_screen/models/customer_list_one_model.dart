// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'customerlistone_item_model.dart';/// This class defines the variables used in the [customer_list_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CustomerListOneModel extends Equatable {CustomerListOneModel({this.customerlistoneItemList = const []}) {  }

List<CustomerlistoneItemModel> customerlistoneItemList;

CustomerListOneModel copyWith({List<CustomerlistoneItemModel>? customerlistoneItemList}) { return CustomerListOneModel(
customerlistoneItemList : customerlistoneItemList ?? this.customerlistoneItemList,
); } 
@override List<Object?> get props => [customerlistoneItemList];
 }
