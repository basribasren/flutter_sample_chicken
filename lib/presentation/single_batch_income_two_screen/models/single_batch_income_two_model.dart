// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [single_batch_income_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchIncomeTwoModel extends Equatable {SingleBatchIncomeTwoModel({this.radioList = const []}) {  }

List<String> radioList;

SingleBatchIncomeTwoModel copyWith({List<String>? radioList}) { return SingleBatchIncomeTwoModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
