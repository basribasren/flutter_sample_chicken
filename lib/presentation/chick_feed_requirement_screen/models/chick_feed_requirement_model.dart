// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'daybreed_item_model.dart';/// This class defines the variables used in the [chick_feed_requirement_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChickFeedRequirementModel extends Equatable {ChickFeedRequirementModel({this.daybreedItemList = const []}) {  }

List<DaybreedItemModel> daybreedItemList;

ChickFeedRequirementModel copyWith({List<DaybreedItemModel>? daybreedItemList}) { return ChickFeedRequirementModel(
daybreedItemList : daybreedItemList ?? this.daybreedItemList,
); } 
@override List<Object?> get props => [daybreedItemList];
 }
