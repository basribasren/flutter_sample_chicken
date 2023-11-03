// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'animalfeedinglist_item_model.dart';/// This class defines the variables used in the [single_batch_view_feeding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewFeedingOneModel extends Equatable {SingleBatchViewFeedingOneModel({this.animalfeedinglistItemList = const []}) {  }

List<AnimalfeedinglistItemModel> animalfeedinglistItemList;

SingleBatchViewFeedingOneModel copyWith({List<AnimalfeedinglistItemModel>? animalfeedinglistItemList}) { return SingleBatchViewFeedingOneModel(
animalfeedinglistItemList : animalfeedinglistItemList ?? this.animalfeedinglistItemList,
); } 
@override List<Object?> get props => [animalfeedinglistItemList];
 }
