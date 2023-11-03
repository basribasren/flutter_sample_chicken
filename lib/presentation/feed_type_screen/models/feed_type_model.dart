// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'feedtype_item_model.dart';/// This class defines the variables used in the [feed_type_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FeedTypeModel extends Equatable {FeedTypeModel({this.feedtypeItemList = const []}) {  }

List<FeedtypeItemModel> feedtypeItemList;

FeedTypeModel copyWith({List<FeedtypeItemModel>? feedtypeItemList}) { return FeedTypeModel(
feedtypeItemList : feedtypeItemList ?? this.feedtypeItemList,
); } 
@override List<Object?> get props => [feedtypeItemList];
 }
