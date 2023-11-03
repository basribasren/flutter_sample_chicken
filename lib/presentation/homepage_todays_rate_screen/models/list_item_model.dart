import '../../../core/app_export.dart';/// This class is used in the [list_item_widget] screen.
class ListItemModel {ListItemModel({this.userImage, this.text, this.id, }) { userImage = userImage  ?? ImageConstant.imgBirds1;text = text  ?? "Broiler Chicken Rates";id = id  ?? ""; }

String? userImage;

String? text;

String? id;

 }
