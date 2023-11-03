// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'vaccinationlist_item_model.dart';/// This class defines the variables used in the [single_batch_view_vaccination_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SingleBatchViewVaccinationModel extends Equatable {SingleBatchViewVaccinationModel({this.vaccinationlistItemList = const []}) {  }

List<VaccinationlistItemModel> vaccinationlistItemList;

SingleBatchViewVaccinationModel copyWith({List<VaccinationlistItemModel>? vaccinationlistItemList}) { return SingleBatchViewVaccinationModel(
vaccinationlistItemList : vaccinationlistItemList ?? this.vaccinationlistItemList,
); } 
@override List<Object?> get props => [vaccinationlistItemList];
 }
