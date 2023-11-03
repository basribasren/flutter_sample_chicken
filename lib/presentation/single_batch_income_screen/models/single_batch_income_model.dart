// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [single_batch_income_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchIncomeModel extends Equatable {SingleBatchIncomeModel({this.radioList = const []}) {  }

List<String> radioList;

SingleBatchIncomeModel copyWith({List<String>? radioList}) { return SingleBatchIncomeModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
