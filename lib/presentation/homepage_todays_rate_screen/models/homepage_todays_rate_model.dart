// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'list_item_model.dart';/// This class defines the variables used in the [homepage_todays_rate_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTodaysRateModel extends Equatable {HomepageTodaysRateModel({this.listItemList = const []}) {  }

List<ListItemModel> listItemList;

HomepageTodaysRateModel copyWith({List<ListItemModel>? listItemList}) { return HomepageTodaysRateModel(
listItemList : listItemList ?? this.listItemList,
); } 
@override List<Object?> get props => [listItemList];
 }
