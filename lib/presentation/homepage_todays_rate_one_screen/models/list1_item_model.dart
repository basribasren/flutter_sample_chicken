import '../../../core/app_export.dart';/// This class is used in the [list1_item_widget] screen.
class List1ItemModel {List1ItemModel({this.userImage, this.text, this.id, }) { userImage = userImage  ?? ImageConstant.imgChick1;text = text  ?? "One Day Chicks- Broiler";id = id  ?? ""; }

String? userImage;

String? text;

String? id;

 }
