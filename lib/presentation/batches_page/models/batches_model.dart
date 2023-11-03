// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilerow_item_model.dart';/// This class defines the variables used in the [batches_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BatchesModel extends Equatable {BatchesModel({this.userprofilerowItemList = const []}) {  }

List<UserprofilerowItemModel> userprofilerowItemList;

BatchesModel copyWith({List<UserprofilerowItemModel>? userprofilerowItemList}) { return BatchesModel(
userprofilerowItemList : userprofilerowItemList ?? this.userprofilerowItemList,
); } 
@override List<Object?> get props => [userprofilerowItemList];
 }
