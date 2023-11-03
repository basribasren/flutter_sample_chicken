// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'expenseslist_item_model.dart';/// This class defines the variables used in the [expenses_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExpensesOneModel extends Equatable {ExpensesOneModel({this.expenseslistItemList = const []}) {  }

List<ExpenseslistItemModel> expenseslistItemList;

ExpensesOneModel copyWith({List<ExpenseslistItemModel>? expenseslistItemList}) { return ExpensesOneModel(
expenseslistItemList : expenseslistItemList ?? this.expenseslistItemList,
); } 
@override List<Object?> get props => [expenseslistItemList];
 }
