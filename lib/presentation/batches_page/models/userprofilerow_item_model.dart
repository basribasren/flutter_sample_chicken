import '../../../core/app_export.dart';/// This class is used in the [userprofilerow_item_widget] screen.
class UserprofilerowItemModel {UserprofilerowItemModel({this.userImage, this.batchName, this.weeksDays, this.id, }) { userImage = userImage  ?? ImageConstant.imgGroup324;batchName = batchName  ?? "Batch Name";weeksDays = weeksDays  ?? "6 Weeks : 5 Days";id = id  ?? ""; }

String? userImage;

String? batchName;

String? weeksDays;

String? id;

 }
