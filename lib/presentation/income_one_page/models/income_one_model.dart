// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'incomelist_item_model.dart';/// This class defines the variables used in the [income_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class IncomeOneModel extends Equatable {IncomeOneModel({this.incomelistItemList = const []}) {  }

List<IncomelistItemModel> incomelistItemList;

IncomeOneModel copyWith({List<IncomelistItemModel>? incomelistItemList}) { return IncomeOneModel(
incomelistItemList : incomelistItemList ?? this.incomelistItemList,
); } 
@override List<Object?> get props => [incomelistItemList];
 }
