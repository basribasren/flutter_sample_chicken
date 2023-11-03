// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'currencylist_item_model.dart';/// This class defines the variables used in the [currency_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CurrencyModel extends Equatable {CurrencyModel({this.currencylistItemList = const []}) {  }

List<CurrencylistItemModel> currencylistItemList;

CurrencyModel copyWith({List<CurrencylistItemModel>? currencylistItemList}) { return CurrencyModel(
currencylistItemList : currencylistItemList ?? this.currencylistItemList,
); } 
@override List<Object?> get props => [currencylistItemList];
 }
