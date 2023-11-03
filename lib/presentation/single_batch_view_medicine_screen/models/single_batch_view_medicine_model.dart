// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'day_item_model.dart';/// This class defines the variables used in the [single_batch_view_medicine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewMedicineModel extends Equatable {SingleBatchViewMedicineModel({this.dayItemList = const []}) {  }

List<DayItemModel> dayItemList;

SingleBatchViewMedicineModel copyWith({List<DayItemModel>? dayItemList}) { return SingleBatchViewMedicineModel(
dayItemList : dayItemList ?? this.dayItemList,
); } 
@override List<Object?> get props => [dayItemList];
 }
