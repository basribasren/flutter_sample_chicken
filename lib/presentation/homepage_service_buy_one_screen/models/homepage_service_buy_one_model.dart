// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'usertextlistsection_item_model.dart';import 'broilerprofilegridsection_item_model.dart';/// This class defines the variables used in the [homepage_service_buy_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageServiceBuyOneModel extends Equatable {HomepageServiceBuyOneModel({this.usertextlistsectionItemList = const [], this.broilerprofilegridsectionItemList = const [], }) {  }

List<UsertextlistsectionItemModel> usertextlistsectionItemList;

List<BroilerprofilegridsectionItemModel> broilerprofilegridsectionItemList;

HomepageServiceBuyOneModel copyWith({List<UsertextlistsectionItemModel>? usertextlistsectionItemList, List<BroilerprofilegridsectionItemModel>? broilerprofilegridsectionItemList, }) { return HomepageServiceBuyOneModel(
usertextlistsectionItemList : usertextlistsectionItemList ?? this.usertextlistsectionItemList,
broilerprofilegridsectionItemList : broilerprofilegridsectionItemList ?? this.broilerprofilegridsectionItemList,
); } 
@override List<Object?> get props => [usertextlistsectionItemList,broilerprofilegridsectionItemList];
 }
