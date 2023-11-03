// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'poultrymarket_item_model.dart';/// This class defines the variables used in the [subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscriptionModel extends Equatable {SubscriptionModel({this.poultrymarketItemList = const []}) {  }

List<PoultrymarketItemModel> poultrymarketItemList;

SubscriptionModel copyWith({List<PoultrymarketItemModel>? poultrymarketItemList}) { return SubscriptionModel(
poultrymarketItemList : poultrymarketItemList ?? this.poultrymarketItemList,
); } 
@override List<Object?> get props => [poultrymarketItemList];
 }
