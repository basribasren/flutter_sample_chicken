// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productinfo_item_model.dart';/// This class defines the variables used in the [single_batch_view_body_weight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewBodyWeightModel extends Equatable {SingleBatchViewBodyWeightModel({this.productinfoItemList = const []}) {  }

List<ProductinfoItemModel> productinfoItemList;

SingleBatchViewBodyWeightModel copyWith({List<ProductinfoItemModel>? productinfoItemList}) { return SingleBatchViewBodyWeightModel(
productinfoItemList : productinfoItemList ?? this.productinfoItemList,
); } 
@override List<Object?> get props => [productinfoItemList];
 }
