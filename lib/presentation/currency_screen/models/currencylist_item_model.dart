import '../../../core/app_export.dart';/// This class is used in the [currencylist_item_widget] screen.
class CurrencylistItemModel {CurrencylistItemModel({this.price, this.userImage, this.id, }) { price = price  ?? "INR";userImage = userImage  ?? ImageConstant.imgIconsaxLinearTickcircle;id = id  ?? ""; }

String? price;

String? userImage;

String? id;

 }
