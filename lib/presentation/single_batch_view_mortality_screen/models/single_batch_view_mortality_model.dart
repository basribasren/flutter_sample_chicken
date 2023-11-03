// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'daytext_item_model.dart';/// This class defines the variables used in the [single_batch_view_mortality_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewMortalityModel extends Equatable {SingleBatchViewMortalityModel({this.daytextItemList = const []}) {  }

List<DaytextItemModel> daytextItemList;

SingleBatchViewMortalityModel copyWith({List<DaytextItemModel>? daytextItemList}) { return SingleBatchViewMortalityModel(
daytextItemList : daytextItemList ?? this.daytextItemList,
); } 
@override List<Object?> get props => [daytextItemList];
 }
