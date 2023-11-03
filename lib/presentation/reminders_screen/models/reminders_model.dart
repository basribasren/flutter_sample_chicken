// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'reminderlist_item_model.dart';/// This class defines the variables used in the [reminders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RemindersModel extends Equatable {RemindersModel({this.reminderlistItemList = const []}) {  }

List<ReminderlistItemModel> reminderlistItemList;

RemindersModel copyWith({List<ReminderlistItemModel>? reminderlistItemList}) { return RemindersModel(
reminderlistItemList : reminderlistItemList ?? this.reminderlistItemList,
); } 
@override List<Object?> get props => [reminderlistItemList];
 }
