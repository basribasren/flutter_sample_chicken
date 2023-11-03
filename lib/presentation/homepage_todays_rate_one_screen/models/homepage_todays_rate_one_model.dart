// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'list1_item_model.dart';/// This class defines the variables used in the [homepage_todays_rate_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageTodaysRateOneModel extends Equatable {HomepageTodaysRateOneModel({this.list1ItemList = const []}) {  }

List<List1ItemModel> list1ItemList;

HomepageTodaysRateOneModel copyWith({List<List1ItemModel>? list1ItemList}) { return HomepageTodaysRateOneModel(
list1ItemList : list1ItemList ?? this.list1ItemList,
); } 
@override List<Object?> get props => [list1ItemList];
 }
