// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'prestarterlist_item_model.dart';/// This class defines the variables used in the [single_batch_stocks_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchStocksModel extends Equatable {SingleBatchStocksModel({this.prestarterlistItemList = const []}) {  }

List<PrestarterlistItemModel> prestarterlistItemList;

SingleBatchStocksModel copyWith({List<PrestarterlistItemModel>? prestarterlistItemList}) { return SingleBatchStocksModel(
prestarterlistItemList : prestarterlistItemList ?? this.prestarterlistItemList,
); } 
@override List<Object?> get props => [prestarterlistItemList];
 }
