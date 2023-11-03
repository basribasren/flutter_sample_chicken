import '../../../core/app_export.dart';/// This class is used in the [languageoptions_item_widget] screen.
class LanguageoptionsItemModel {LanguageoptionsItemModel({this.text, this.imageClass, this.id, }) { text = text  ?? "English";imageClass = imageClass  ?? ImageConstant.imgIconsaxLinearTickcircle;id = id  ?? ""; }

String? text;

String? imageClass;

String? id;

 }
