// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'eggcollection_item_model.dart';/// This class defines the variables used in the [single_batch_view_eggs_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewEggsModel extends Equatable {SingleBatchViewEggsModel({this.eggcollectionItemList = const []}) {  }

List<EggcollectionItemModel> eggcollectionItemList;

SingleBatchViewEggsModel copyWith({List<EggcollectionItemModel>? eggcollectionItemList}) { return SingleBatchViewEggsModel(
eggcollectionItemList : eggcollectionItemList ?? this.eggcollectionItemList,
); } 
@override List<Object?> get props => [eggcollectionItemList];
 }
