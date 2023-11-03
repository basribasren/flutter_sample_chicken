// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist_item_model.dart';/// This class defines the variables used in the [single_batch_view_income_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewIncomeModel extends Equatable {SingleBatchViewIncomeModel({this.userprofilelistItemList = const []}) {  }

List<UserprofilelistItemModel> userprofilelistItemList;

SingleBatchViewIncomeModel copyWith({List<UserprofilelistItemModel>? userprofilelistItemList}) { return SingleBatchViewIncomeModel(
userprofilelistItemList : userprofilelistItemList ?? this.userprofilelistItemList,
); } 
@override List<Object?> get props => [userprofilelistItemList];
 }
