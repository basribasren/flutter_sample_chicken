// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'languageoptions_item_model.dart';/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel extends Equatable {LanguageModel({this.languageoptionsItemList = const []}) {  }

List<LanguageoptionsItemModel> languageoptionsItemList;

LanguageModel copyWith({List<LanguageoptionsItemModel>? languageoptionsItemList}) { return LanguageModel(
languageoptionsItemList : languageoptionsItemList ?? this.languageoptionsItemList,
); } 
@override List<Object?> get props => [languageoptionsItemList];
 }
