import '../../../core/app_export.dart';/// This class is used in the [broilerprofilegridsection_item_widget] screen.
class BroilerprofilegridsectionItemModel {BroilerprofilegridsectionItemModel({this.userImage, this.broilerName, this.quantity, this.location, this.id, }) { userImage = userImage  ?? ImageConstant.imgPoultryfarm111;broilerName = broilerName  ?? "Broiler";quantity = quantity  ?? "Quantity";location = location  ?? "Location";id = id  ?? ""; }

String? userImage;

String? broilerName;

String? quantity;

String? location;

String? id;

 }
