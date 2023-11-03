// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userdate_item_model.dart';/// This class defines the variables used in the [single_batch_notes_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchNotesModel extends Equatable {SingleBatchNotesModel({this.userdateItemList = const []}) {  }

List<UserdateItemModel> userdateItemList;

SingleBatchNotesModel copyWith({List<UserdateItemModel>? userdateItemList}) { return SingleBatchNotesModel(
userdateItemList : userdateItemList ?? this.userdateItemList,
); } 
@override List<Object?> get props => [userdateItemList];
 }
