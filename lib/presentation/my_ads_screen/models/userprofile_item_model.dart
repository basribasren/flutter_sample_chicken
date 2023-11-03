import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.userName, this.posted, this.quantity, this.datePosted, this.id, }) { userImage = userImage  ?? ImageConstant.imgPremiumPhoto194x94;userName = userName  ?? "Broiler";posted = posted  ?? "Posted";quantity = quantity  ?? "Qty.: ";datePosted = datePosted  ?? "Posted On: 22/11/22";id = id  ?? ""; }

String? userImage;

String? userName;

String? posted;

String? quantity;

String? datePosted;

String? id;

 }
