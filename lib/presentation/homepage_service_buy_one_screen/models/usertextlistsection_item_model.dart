import '../../../core/app_export.dart';/// This class is used in the [usertextlistsection_item_widget] screen.
class UsertextlistsectionItemModel {UsertextlistsectionItemModel({this.userImage, this.userText, this.id, }) { userImage = userImage  ?? ImageConstant.imgBirds1;userText = userText  ?? "Birds";id = id  ?? ""; }

String? userImage;

String? userText;

String? id;

 }
