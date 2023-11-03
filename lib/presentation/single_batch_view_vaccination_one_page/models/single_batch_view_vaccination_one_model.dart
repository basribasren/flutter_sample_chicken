// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'vaccinationlist1_item_model.dart';/// This class defines the variables used in the [single_batch_view_vaccination_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewVaccinationOneModel extends Equatable {SingleBatchViewVaccinationOneModel({this.vaccinationlist1ItemList = const []}) {  }

List<Vaccinationlist1ItemModel> vaccinationlist1ItemList;

SingleBatchViewVaccinationOneModel copyWith({List<Vaccinationlist1ItemModel>? vaccinationlist1ItemList}) { return SingleBatchViewVaccinationOneModel(
vaccinationlist1ItemList : vaccinationlist1ItemList ?? this.vaccinationlist1ItemList,
); } 
@override List<Object?> get props => [vaccinationlist1ItemList];
 }
