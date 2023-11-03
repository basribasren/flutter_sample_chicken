import '../../../core/app_export.dart';/// This class is used in the [userprofilerow1_item_widget] screen.
class Userprofilerow1ItemModel {Userprofilerow1ItemModel({this.userImage, this.batchName, this.weeksAndDays, this.id, }) { userImage = userImage  ?? ImageConstant.imgGroup324;batchName = batchName  ?? "Batch Name";weeksAndDays = weeksAndDays  ?? "6 Weeks : 5 Days";id = id  ?? ""; }

String? userImage;

String? batchName;

String? weeksAndDays;

String? id;

 }
