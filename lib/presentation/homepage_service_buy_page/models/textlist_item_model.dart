import '../../../core/app_export.dart';/// This class is used in the [textlist_item_widget] screen.
class TextlistItemModel {TextlistItemModel({this.userImage, this.text, this.id, }) { userImage = userImage  ?? ImageConstant.imgBirds1;text = text  ?? "Birds";id = id  ?? ""; }

String? userImage;

String? text;

String? id;

 }
