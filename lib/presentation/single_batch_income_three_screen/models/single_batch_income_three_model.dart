// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [single_batch_income_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchIncomeThreeModel extends Equatable {SingleBatchIncomeThreeModel({this.radioList = const []}) {  }

List<String> radioList;

SingleBatchIncomeThreeModel copyWith({List<String>? radioList}) { return SingleBatchIncomeThreeModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
