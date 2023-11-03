// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilerow1_item_model.dart';/// This class defines the variables used in the [batches_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BatchesOneModel extends Equatable {BatchesOneModel({this.userprofilerow1ItemList = const []}) {  }

List<Userprofilerow1ItemModel> userprofilerow1ItemList;

BatchesOneModel copyWith({List<Userprofilerow1ItemModel>? userprofilerow1ItemList}) { return BatchesOneModel(
userprofilerow1ItemList : userprofilerow1ItemList ?? this.userprofilerow1ItemList,
); } 
@override List<Object?> get props => [userprofilerow1ItemList];
 }
