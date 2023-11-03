// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'textlist_item_model.dart';import 'broilerprofilegrid_item_model.dart';/// This class defines the variables used in the [homepage_service_buy_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageServiceBuyModel extends Equatable {HomepageServiceBuyModel({this.textlistItemList = const [], this.broilerprofilegridItemList = const [], }) {  }

List<TextlistItemModel> textlistItemList;

List<BroilerprofilegridItemModel> broilerprofilegridItemList;

HomepageServiceBuyModel copyWith({List<TextlistItemModel>? textlistItemList, List<BroilerprofilegridItemModel>? broilerprofilegridItemList, }) { return HomepageServiceBuyModel(
textlistItemList : textlistItemList ?? this.textlistItemList,
broilerprofilegridItemList : broilerprofilegridItemList ?? this.broilerprofilegridItemList,
); } 
@override List<Object?> get props => [textlistItemList,broilerprofilegridItemList];
 }
